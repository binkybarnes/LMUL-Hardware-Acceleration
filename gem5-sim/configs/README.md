# gem5 System Configurations

This directory contains gem5 system configuration files for LMUL accelerator simulation.

## Files

- `lmul_system.py` - Main system configuration with LMUL accelerator
- `common_config.py` - Shared configuration utilities (future)

## lmul_system.py

Complete system configuration for syscall emulation (SE) mode.

### System Components

```
┌─────────────────────────────────────────┐
│          LMulSystem                     │
├─────────────────────────────────────────┤
│                                         │
│  ┌──────────┐                          │
│  │   CPU    │                          │
│  │ (Timing) │                          │
│  └────┬─────┘                          │
│       │                                 │
│       ├──────────┐                     │
│       │          │                     │
│   ┌───▼───┐  ┌──▼──────────────┐     │
│   │I-Cache│  │D-Cache          │     │
│   └───┬───┘  └──┬──────────────┘     │
│       │         │                     │
│   ┌───▼─────────▼───┐                │
│   │   Memory Bus    │                │
│   └────┬───────┬────┘                │
│        │       │                      │
│   ┌────▼───┐ ┌▼──────────────┐      │
│   │ Memory │ │LMUL Accelerator│      │
│   │  Ctrl  │ │  @ 0x10000000  │      │
│   └────┬───┘ └────────────────┘      │
│        │                              │
│   ┌────▼────┐                        │
│   │  DRAM   │                        │
│   │(512 MB) │                        │
│   └─────────┘                        │
│                                       │
└───────────────────────────────────────┘
```

### Usage

```bash
# Basic usage
./build/ARM/gem5.opt \
    configs/lmul_system.py \
    --cmd benchmarks/matrix_multiply/matrix_multiply.arm

# With configuration
./build/ARM/gem5.opt \
    configs/lmul_system.py \
    --pe-rows 8 \
    --pe-cols 8 \
    --cmd benchmark.arm \
    --cmd-args arg1 arg2
```

### Parameters

#### System Configuration

| Parameter      | Default | Description                  |
|----------------|---------|------------------------------|
| `--cpu-clock`  | 2GHz    | CPU clock frequency          |
| `--cpu-type`   | Timing  | CPU model (future)           |
| `--mem-size`   | 512MB   | Total memory size            |

#### Accelerator Configuration

| Parameter      | Default | Description                  |
|----------------|---------|------------------------------|
| `--pe-rows`    | 4       | PE array rows                |
| `--pe-cols`    | 4       | PE array columns             |
| `--use-ieee`   | False   | Use IEEE BF16 (not LMUL)     |

#### Benchmark Configuration

| Parameter      | Default | Description                  |
|----------------|---------|------------------------------|
| `--cmd`        | None    | Benchmark binary path        |
| `--cmd-args`   | []      | Arguments for benchmark      |
| `--output-dir` | m5out   | Statistics output directory  |

### Memory Map

| Address Range          | Device              |
|------------------------|---------------------|
| 0x00000000-0x1FFFFFFF | DRAM (512MB)        |
| 0x10000000-0x10000FFF | LMUL Accelerator    |

## Creating Custom Configurations

### Minimal Example

```python
import m5
from m5.objects import *

# Create system
system = System()
system.clk_domain = SrcClockDomain()
system.clk_domain.clock = '2GHz'
system.clk_domain.voltage_domain = VoltageDomain()
system.mem_mode = 'timing'
system.mem_range = AddrRange('512MB')

# Add CPU
system.cpu = TimingSimpleCPU()

# Add memory bus
system.membus = SystemXBar()
system.cpu.icache_port = system.membus.cpu_side_ports
system.cpu.dcache_port = system.membus.cpu_side_ports

# Add LMUL accelerator
system.lmul_accel = LMulAccelerator(
    pio_addr=0x10000000,
    pe_array_rows=4,
    pe_array_cols=4,
    use_lmul=True
)
system.lmul_accel.pio = system.membus.mem_side_ports

# Add memory
system.mem_ctrl = MemCtrl()
system.mem_ctrl.dram = DDR3_1600_8x8()
system.mem_ctrl.dram.range = system.mem_range
system.mem_ctrl.port = system.membus.mem_side_ports

# Set up process
process = Process()
process.cmd = ['benchmark.arm']
system.cpu.workload = process
system.cpu.createThreads()
system.cpu.createInterruptController()
system.system_port = system.membus.cpu_side_ports

# Create root and run
root = Root(full_system=False, system=system)
m5.instantiate()
exit_event = m5.simulate()
```

### Advanced: Multiple Accelerators

```python
# Add multiple accelerators
system.lmul_accel_0 = LMulAccelerator(
    pio_addr=0x10000000,
    pe_array_rows=4,
    pe_array_cols=4
)

system.lmul_accel_1 = LMulAccelerator(
    pio_addr=0x10001000,
    pe_array_rows=8,
    pe_array_cols=8
)

# Connect both
system.lmul_accel_0.pio = system.membus.mem_side_ports
system.lmul_accel_1.pio = system.membus.mem_side_ports
```

### Advanced: Custom CPU Model

```python
# Use out-of-order CPU
from m5.objects import O3CPU

system.cpu = O3CPU()
system.cpu.numThreads = 1

# Configure caches
from m5.objects import Cache

class L1ICache(Cache):
    size = '32kB'
    assoc = 2
    tag_latency = 1
    data_latency = 1
    response_latency = 1

class L1DCache(Cache):
    size = '64kB'
    assoc = 2
    tag_latency = 2
    data_latency = 2
    response_latency = 1

system.cpu.icache = L1ICache()
system.cpu.dcache = L1DCache()
```

## Full-System Mode (Future)

For complete OS simulation:

```python
# Boot Linux kernel
system.kernel = '/path/to/vmlinux'
system.disk = '/path/to/disk.img'
system.readfile = '/path/to/script.rcS'

# Use full-system mode
root = Root(full_system=True, system=system)
```

This allows:
- Real driver software
- OS overhead measurement
- Realistic interrupt handling
- Multi-process workloads

## Configuration Best Practices

1. **Start simple**: Use SE mode and simple CPU
2. **Add complexity gradually**: Cache → O3 CPU → Full System
3. **Validate at each step**: Compare results with simpler configs
4. **Document changes**: Comment your custom configs
5. **Parameterize**: Use command-line args, not hardcoded values

## Debugging Configurations

### Check instantiated system

```bash
# View system structure
./build/ARM/gem5.opt \
    --debug-flags=Config \
    configs/lmul_system.py \
    --cmd test.arm

# Output files
cat m5out/config.ini   # Human-readable config
cat m5out/config.json  # Machine-readable config
```

### Verify accelerator

```bash
# Check accelerator is instantiated
grep "lmul_accel" m5out/config.ini

# Should show:
# [system.lmul_accel]
# type=LMulAccelerator
# pio_addr=268435456  # 0x10000000
# pe_array_rows=4
# ...
```

## Performance Tuning

### Fast simulation
- Use `gem5.fast` build
- Disable stats collection: `--stats-file=''`
- Use `AtomicSimpleCPU` for functional-only

### Accurate simulation
- Use `gem5.opt` build
- Enable detailed stats
- Use `O3CPU` with caches
- Model memory latency accurately

## Examples

See also:
- gem5 examples: `gem5/configs/example/`
- Learning gem5: http://learning.gem5.org/book/part1/simple_config.html

## References

- gem5 Configuration: http://www.gem5.org/documentation/learning_gem5/part1/simple_config/
- SimObjects: http://www.gem5.org/documentation/learning_gem5/part2/simobject/
- Memory System: http://www.gem5.org/documentation/learning_gem5/part1/cache_config/
