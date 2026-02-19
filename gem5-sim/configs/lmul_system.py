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


class CpuPowerOn(MathExprPowerModel):
    """First-order CPU power model for ON state."""

    def __init__(
        self,
        cpu_path,
        dyn_energy_per_cycle_pj=500.0,
        dyn_energy_per_inst_pj=50.0,
        static_power_mw=200.0,
        **kwargs,
    ):
        super().__init__(**kwargs)
        cycle_energy_j = dyn_energy_per_cycle_pj * 1.0e-12
        inst_energy_j = dyn_energy_per_inst_pj * 1.0e-12
        static_power_w = static_power_mw * 1.0e-3
        # Power = rate * energy_per_event.
        self.dyn = (
            f"(({cpu_path}.numCycles / simSeconds) * {cycle_energy_j:.12e}) + "
            f"((simInsts / simSeconds) * {inst_energy_j:.12e})"
        )
        self.st = f"{static_power_w:.12e}"


class CpuPowerOff(MathExprPowerModel):
    dyn = "0"
    st = "0"


class CpuPowerModel(PowerModel):
    """Power model wrapper for CPU power states."""

    def __init__(
        self,
        cpu_path,
        dyn_energy_per_cycle_pj=500.0,
        dyn_energy_per_inst_pj=50.0,
        static_power_mw=200.0,
        **kwargs,
    ):
        super().__init__(**kwargs)
        self.pm = [
            CpuPowerOn(
                cpu_path,
                dyn_energy_per_cycle_pj=dyn_energy_per_cycle_pj,
                dyn_energy_per_inst_pj=dyn_energy_per_inst_pj,
                static_power_mw=static_power_mw,
            ),  # ON
            CpuPowerOff(),  # CLK_GATED
            CpuPowerOff(),  # SRAM_RETENTION
            CpuPowerOff(),  # OFF
        ]


class LMulSystem(System):
    """
    Simple system with LMUL accelerator attached
    """
    
    def __init__(
        self,
        pe_rows=4,
        pe_cols=4,
        use_accelerator=True,
        enable_cpu_power_model=True,
        cpu_dyn_energy_per_cycle_pj=500.0,
        cpu_dyn_energy_per_inst_pj=50.0,
        cpu_static_power_mw=200.0,
        **kwargs,
    ):
        super().__init__(**kwargs)
        
        # CPU - must be created as a child of System (not an attribute)
        # This ensures proper parenting in the SimObject hierarchy
        self.cpu = TimingSimpleCPU()

        # Optional first-order CPU power model (emits system.cpu.power_model.* stats).
        if enable_cpu_power_model:
            # PowerModel requires an attached SubSystem. In this simple SE setup
            # there is no CPU cluster SubSystem, so create a local one.
            self.cpu_power_subsystem = SubSystem()
            self.cpu.power_state.default_state = "ON"
            self.cpu.power_model = CpuPowerModel(
                self.cpu.path(),
                dyn_energy_per_cycle_pj=cpu_dyn_energy_per_cycle_pj,
                dyn_energy_per_inst_pj=cpu_dyn_energy_per_inst_pj,
                static_power_mw=cpu_static_power_mw,
                subsystem=self.cpu_power_subsystem,
            )
        
        # Memory
        self.membus = SystemXBar()
        self.cpu.icache_port = self.membus.cpu_side_ports
        self.cpu.dcache_port = self.membus.cpu_side_ports
        
        # LMUL Accelerator (only create if use_accelerator=True)
        # For IEEE comparison, we don't create the accelerator - CPU does it natively
        if use_accelerator:
            # Use 0x40000000 (1GB) as MMIO region (common MMIO region)
            self.lmul_accel = LMulAccelerator(
                pio_addr=0x40000000,
                pio_size=0x1000,
                pe_array_rows=pe_rows,
                pe_array_cols=pe_cols
            )
            # Connect accelerator to memory bus
            self.lmul_accel.pio = self.membus.mem_side_ports
            self.lmul_accel.dma = self.membus.cpu_side_ports
        else:
            self.lmul_accel = None
        
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
    # For IEEE, don't create accelerator (CPU does it natively)
    # For LMUL, create accelerator
    system = LMulSystem(
        pe_rows=args.pe_rows,
        pe_cols=args.pe_cols,
        use_accelerator=not args.use_ieee,
        enable_cpu_power_model=not args.disable_cpu_power_model,
        cpu_dyn_energy_per_cycle_pj=args.cpu_dyn_energy_per_cycle_pj,
        cpu_dyn_energy_per_inst_pj=args.cpu_dyn_energy_per_inst_pj,
        cpu_static_power_mw=args.cpu_static_power_mw,
        mem_mode='timing'
    )
    
    # Set memory ranges (must be set after creation, not in constructor)
    # Use 1GB so guest stack/high addresses (e.g. 0x3ffdf008) are mapped; 512MB caused
    # "Unable to find destination for [0x3ffdf008:...] on system.membus" (syscall 403).
    # Accelerator MMIO is at 0x40000000, outside this range.
    system.mem_ranges = [AddrRange('1GB')]
    
    # Set memory controller range to match system memory range
    system.mem_ctrl.dram.range = system.mem_ranges[0]
    
    # Set clock domain (must be set before creating processes)
    system.clk_domain = SrcClockDomain(clock=args.cpu_clock, voltage_domain=VoltageDomain())
    
    # Note: Process creation and workload setup will be done in main()
    # after the system is created but before Root is created
    # This matches hmc_hello.py pattern exactly
    
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
    parser.add_argument('--disable-cpu-power-model', action='store_true',
                       help='Disable first-order CPU power model stats')
    parser.add_argument('--cpu-dyn-energy-per-cycle-pj', type=float, default=500.0,
                       help='CPU dynamic energy per cycle (pJ), default: 500')
    parser.add_argument('--cpu-dyn-energy-per-inst-pj', type=float, default=50.0,
                       help='CPU dynamic energy per committed instruction (pJ), default: 50')
    parser.add_argument('--cpu-static-power-mw', type=float, default=200.0,
                       help='CPU static/leakage power (mW), default: 200')
    
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

    # Prefer gem5's effective --outdir over config-local --output-dir.
    # This keeps guest file outputs (e.g., result.bin) in the per-run outdir.
    gem5_outdir = getattr(getattr(m5, "options", None), "outdir", None)
    run_output_dir = os.path.abspath(gem5_outdir if gem5_outdir else args.output_dir)
    os.makedirs(run_output_dir, exist_ok=True)
    print(f"DEBUG: Using run output directory: {run_output_dir}", file=sys.stderr, flush=True)
    
    # Create system
    print("DEBUG: About to create system", file=sys.stderr, flush=True)
    print("Creating system...", flush=True)
    system = createSystem(args)
    print("System created")
    
    # Create Process AFTER system is created but BEFORE Root
    # Following hmc_hello.py pattern exactly - must match the exact order
    if args.cmd:
        # Step 1: Create process (following hmc_hello.py pattern exactly)
        process = Process()
        # Step 2: Set cmd (following hmc_hello.py)
        process.cmd = [args.cmd] + args.cmd_args
        # Step 2b: Set cwd to effective gem5 outdir so benchmark writes into run directory.
        process.cwd = run_output_dir
        # Step 3: Set system workload (following hmc_hello.py - must be before cpu.workload)
        system.workload = SEWorkload.init_compatible(args.cmd)
        # Step 4: Set cpu workload (following hmc_hello.py)
        system.cpu.workload = process
        # Step 5: Create thread contexts (following hmc_hello.py)
        system.cpu.createThreads()
    
    # Create root object
    print("Creating root object...")
    root = Root(full_system=False, system=system)
    
    # Instantiate configuration
    print("Instantiating configuration...")
    try:
        m5.instantiate()
        print("Configuration instantiated successfully")
        
        # Map accelerator MMIO region AFTER instantiation (only if accelerator exists)
        # The process is now fully instantiated and we can safely access it
        if args.cmd and system.lmul_accel is not None:
            accel_addr = system.lmul_accel.pio_addr
            accel_size = system.lmul_accel.pio_size
            try:
                # Map the MMIO region: virtual_addr, physical_addr, size, cacheable
                # workload is a vector, so access the first (and only) process
                if hasattr(system.cpu.workload, '__getitem__') and len(system.cpu.workload) > 0:
                    workload = system.cpu.workload[0]
                else:
                    workload = system.cpu.workload
                workload.map(accel_addr, accel_addr, accel_size, False)
                # Convert Addr to int for formatting
                accel_addr_int = int(accel_addr)
                accel_size_int = int(accel_size)
                print(f"DEBUG: Mapped accelerator MMIO region 0x{accel_addr_int:x} (size 0x{accel_size_int:x})", file=sys.stderr, flush=True)
            except Exception as e:
                print(f"WARNING: Could not map MMIO region: {e}", file=sys.stderr, flush=True)
    except Exception as e:
        print(f"ERROR: Failed to instantiate: {e}")
        import traceback
        traceback.print_exc()
        return 1
    
    # Run simulation
    if system.lmul_accel is not None:
        print(f"Starting simulation with {args.pe_rows}x{args.pe_cols} PE array (LMUL Accelerator)")
    else:
        print(f"Starting simulation (Native CPU IEEE BF16 - no accelerator)")
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
    
    print(f"Output directory: {run_output_dir}", flush=True)
    print(f"Stats file should be at: {run_output_dir}/stats.txt", flush=True)
    
    # Verify stats file exists
    stats_file = os.path.join(run_output_dir, 'stats.txt')
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