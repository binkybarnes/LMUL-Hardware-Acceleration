"""
gem5 System Configuration for LMUL Accelerator

This creates a simple system with:
- ARM CPU
- Memory
- LMUL accelerator (memory-mapped)
"""

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
        self.lmul_accel = LMulAccelerator(
            pio_addr=0x10000000,  # Memory-mapped at 256MB
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
        self.mem_ctrl.dram.range = self.mem_range
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
        mem_mode='timing',
        mem_range=AddrRange('512MB')
    )
    
    # Set up process for SE mode
    if args.cmd:
        process = Process()
        process.cmd = [args.cmd] + args.cmd_args
        system.cpu.workload = process
        system.cpu.createThreads()
    
    # Set clock
    system.clk_domain = SrcClockDomain()
    system.clk_domain.clock = args.cpu_clock
    system.clk_domain.voltage_domain = VoltageDomain()
    
    return system


def main():
    parser = argparse.ArgumentParser(
        description="gem5 simulation with LMUL accelerator"
    )
    
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
    parser.add_argument('--cmd-args', nargs='*', default=[],
                       help='Arguments for benchmark')
    
    # Output configuration
    parser.add_argument('--output-dir', type=str, default='m5out',
                       help='Output directory (default: m5out)')
    
    args = parser.parse_args()
    
    # Create system
    print("Creating system...")
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
    
    print("Beginning simulation...")
    exit_event = m5.simulate()
    
    print(f"Simulation complete: {exit_event.getCause()}")
    print(f"Exit code: {exit_event.getCode()}")
    
    # Dump statistics before exiting
    # This ensures stats are written even if simulation exits early
    print("Dumping statistics...")
    try:
        m5.stats.dump()
    except Exception as e:
        print(f"Warning: Could not dump stats: {e}")
    
    # Also try to dump to the output directory explicitly
    import os
    output_dir = args.output_dir if hasattr(args, 'output_dir') else 'm5out'
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)
    
    print(f"Statistics should be in: {output_dir}/stats.txt")


if __name__ == '__main__':
    main()
