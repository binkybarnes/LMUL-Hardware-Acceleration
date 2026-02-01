"""
gem5 System Configuration for LMUL Accelerator

This creates a simple system with:
- ARM CPU
- Memory
- LMUL accelerator (memory-mapped)
"""

import sys
import argparse
import os

import m5
from m5.objects import *
from m5.util import addToPath

# Add common config paths
addToPath('../')

class LMulSystem(System):
    """
    Simple system with LMUL accelerator attached
    """
    
    def __init__(self, pe_rows=4, pe_cols=4, use_lmul=True, **kwargs):
        super().__init__(**kwargs)
        
        # CPU
        self.cpu = TimingSimpleCPU()
        
        # Memory
        self.membus = SystemXBar()
        self.cpu.icache_port = self.membus.cpu_side_ports
        self.cpu.dcache_port = self.membus.cpu_side_ports
        
        # LMUL Accelerator
        # Use a lower address to avoid page table issues in SE mode
        # 0x40000000 (1GB) is a common MMIO region in many systems
        self.lmul_accel = LMulAccelerator(
            pio_addr=0x40000000,  # Memory-mapped at 1GB (common MMIO region)
            pio_size=0x1000,
            pe_array_rows=pe_rows,
            pe_array_cols=pe_cols,
            use_lmul=use_lmul
        )
        
        # Connect accelerator to memory bus
        self.lmul_accel.pio = self.membus.mem_side_ports
        
        # Interrupt controller
        self.cpu.createInterruptController()
        
        # Memory controller
        self.mem_ctrl = MemCtrl()
        self.mem_ctrl.dram = DDR3_1600_8x8()
        # mem_ranges will be set in createSystem, so we'll set range later
        self.mem_ctrl.port = self.membus.mem_side_ports
        
        # System port
        self.system_port = self.membus.cpu_side_ports


def createSystem(args):
    """
    Create and configure the system
    """
    
    # Create system
    system = LMulSystem(
        pe_rows=args.pe_rows,
        pe_cols=args.pe_cols,
        use_lmul=not args.use_ieee,
        mem_mode='timing'
    )
    
    # Set memory ranges (must be set after creation, not in constructor)
    # Accelerator is at 0x40000000 (1GB), which is outside normal memory
    # This is fine - MMIO devices can be at any address
    system.mem_ranges = [AddrRange('512MB')]
    
    # Set memory controller range to match system memory range
    system.mem_ctrl.dram.range = system.mem_ranges[0]
    
    # Set clock domain (must be set before creating processes)
    system.clk_domain = SrcClockDomain(clock=args.cpu_clock, voltage_domain=VoltageDomain())
    
    # Set up process for SE mode
    if args.cmd:
        # Set workload first (required for SE mode)
        # This must be done before creating the process
        system.workload = SEWorkload.init_compatible(args.cmd)
        
        # Create process with command and arguments
        # Pass executable explicitly to ensure proper initialization
        process = Process(
            executable=args.cmd,
            cmd=[args.cmd] + args.cmd_args
        )
        
        # Assign process to CPU workload
        # This must be done before createThreads()
        system.cpu.workload = process
        
        # Create threads (this properly attaches the process to the system hierarchy)
        system.cpu.createThreads()
        
        # Map accelerator MMIO region into process address space
        # In SE mode, MMIO addresses must be explicitly mapped for user processes
        # The accelerator is at 0x40000000 (1GB), which needs to be mapped
        accel_addr = system.lmul_accel.pio_addr
        accel_size = system.lmul_accel.pio_size
        
        # Explicitly map the MMIO region so the benchmark can access it
        # This is necessary in SE mode - MMIO addresses aren't automatically mapped
        # Note: In real systems, MMIO is kernel-space only, but for simulation
        # we allow user-space access
        # Use the process from the CPU workload (it's now properly attached)
        try:
            # Map the MMIO region: virtual_addr, physical_addr, size, cacheable
            system.cpu.workload.map(accel_addr, accel_addr, accel_size, False)
            print(f"DEBUG: Mapped accelerator MMIO region 0x{accel_addr:x} (size 0x{accel_size:x})", file=sys.stderr, flush=True)
        except Exception as e:
            print(f"WARNING: Could not map MMIO region: {e}", file=sys.stderr, flush=True)
            # Continue anyway - gem5 might handle it automatically
    
    return system


def main():
    print("DEBUG: main() called", file=sys.stderr, flush=True)
    
    parser = argparse.ArgumentParser(
        description="gem5 simulation with LMUL accelerator"
    )
    
    print("DEBUG: Parser created", file=sys.stderr, flush=True)
    
    # System configuration
    parser.add_argument('--pe-rows', type=int, default=4,
                       help='PE array rows (default: 4)')
    parser.add_argument('--pe-cols', type=int, default=4,
                       help='PE array columns (default: 4)')
    parser.add_argument('--use-ieee', action='store_true',
                       help='Use IEEE BF16 instead of LMUL')
    parser.add_argument('--cpu-clock', type=str, default='2GHz',
                       help='CPU clock frequency (default: 2GHz)')
    
    # Benchmark configuration
    parser.add_argument('--cmd', type=str, default=None,
                       help='Benchmark binary to run')
    # Use nargs='+' to require at least one argument, or handle it as a list
    # The issue is that --cmd-args="4" "4" "4" "1" gets parsed incorrectly
    # So we'll accept it as a space-separated string or multiple arguments
    parser.add_argument('--cmd-args', nargs='*', default=[],
                       help='Arguments for benchmark (can be space-separated or multiple args)')
    
    # Output configuration
    parser.add_argument('--output-dir', type=str, default='m5out',
                       help='Output directory (default: m5out)')
    
    print("DEBUG: About to parse args", file=sys.stderr, flush=True)
    try:
        args = parser.parse_args()
        print(f"DEBUG: Args parsed successfully: cmd={args.cmd}, pe_rows={args.pe_rows}, pe_cols={args.pe_cols}", file=sys.stderr, flush=True)
    except Exception as e:
        print(f"DEBUG: Error parsing args: {e}", file=sys.stderr, flush=True)
        import traceback
        traceback.print_exc()
        raise
    
    # Create system
    print("DEBUG: About to create system", file=sys.stderr, flush=True)
    print("Creating system...", flush=True)
    system = createSystem(args)
    print("System created")
    
    # Create root object
    print("Creating root object...")
    root = Root(full_system=False, system=system)
    
    # Instantiate configuration
    print("Instantiating configuration...")
    try:
        m5.instantiate()
        print("Configuration instantiated successfully")
    except Exception as e:
        print(f"ERROR: Failed to instantiate: {e}")
        import traceback
        traceback.print_exc()
        return 1
    
    # Run simulation
    print(f"Starting simulation with {args.pe_rows}x{args.pe_cols} PE array")
    print(f"Mode: {'IEEE BF16' if args.use_ieee else 'LMUL'}")
    if args.cmd:
        print(f"Running: {args.cmd} {' '.join(args.cmd_args)}")
    
    print("Beginning simulation...", flush=True)
    
    # Wrap simulate in try/except to ensure stats are dumped even on fatal errors
    exit_event = None
    try:
        exit_event = m5.simulate()
        print(f"Simulation complete: {exit_event.getCause()}", flush=True)
        print(f"Exit code: {exit_event.getCode()}", flush=True)
    except Exception as e:
        print(f"Simulation exited with exception: {e}", flush=True)
        print("Attempting to dump statistics despite error...", flush=True)
    finally:
        # ALWAYS dump stats, even if simulation failed
        # This is critical - we want stats even if there was a fatal error
        try:
            print("Dumping statistics...", flush=True)
            m5.stats.dump()
            print("Statistics dumped successfully", flush=True)
        except Exception as e:
            print(f"WARNING: Failed to dump statistics: {e}", flush=True)
    
    # Also ensure we're in the right directory
    import os
    output_dir = args.output_dir if hasattr(args, 'output_dir') else 'm5out'
    print(f"Output directory: {os.path.abspath(output_dir)}", flush=True)
    print(f"Stats file should be at: {os.path.abspath(output_dir)}/stats.txt", flush=True)
    
    # Verify stats file exists
    stats_file = os.path.join(output_dir, 'stats.txt')
    if os.path.exists(stats_file):
        size = os.path.getsize(stats_file)
        print(f"Stats file exists: {stats_file} ({size} bytes)", flush=True)
    else:
        print(f"WARNING: Stats file not found at {stats_file}", flush=True)


# gem5 executes config scripts by setting __name__ to "__m5_main__"
# However, when --help is used, argparse exits before we get here
# So we check for both execution contexts
# Debug: print what __name__ is set to
print(f"DEBUG: __name__ = '{__name__}'", file=sys.stderr)

if __name__ == "__m5_main__":
    print("DEBUG: Entering __m5_main__ block", file=sys.stderr)
    try:
        main()
    except SystemExit:
        # argparse --help causes SystemExit, which is normal
        raise
    except Exception as e:
        print(f"ERROR in main(): {e}", file=sys.stderr)
        import traceback
        traceback.print_exc()
        sys.exit(1)
elif __name__ == "__main__":
    # Allow direct execution for testing
    print("DEBUG: Entering __main__ block", file=sys.stderr)
    main()
else:
    print(f"DEBUG: __name__ is '{__name__}', not executing main()", file=sys.stderr)