# LMUL Accelerator gem5 Simulation

Complete gem5 integration for simulating the LMUL (Logarithmic Multiplication) hardware accelerator in a full system context.

## Overview

This directory contains a custom gem5 device model for the LMUL accelerator, allowing you to:
- Simulate end-to-end application performance
- Evaluate memory bandwidth requirements and bottlenecks
- Measure CPU-accelerator communication overhead
- Compare LMUL vs IEEE BF16 accelerator performance
- Analyze realistic workload behavior

## Directory Structure

```
gem5-sim/
├── README.md                    # This file
├── models/                      # gem5 accelerator model
│   ├── LMulAccelerator.py      # Python wrapper
│   ├── lmul_accelerator.hh     # C++ header
│   ├── lmul_accelerator.cc     # C++ implementation
│   ├── SConscript              # Build configuration
│   └── README.md               # Model documentation
├── configs/                     # gem5 system configurations
│   ├── lmul_system.py          # System with LMUL accelerator
│   └── README.md               # Configuration guide
├── benchmarks/                  # Test benchmarks
│   ├── matrix_multiply/        # Matrix multiplication tests
│   └── README.md               # Benchmark documentation
└── scripts/                     # Utility scripts
    ├── install_model.sh        # Install accelerator into gem5
    ├── clean_gem5.sh           # Clean gem5 installation
    ├── test_accelerator.sh     # Verify installation
    └── run_simulation.sh       # Run simulations
```

## Quick Setup

### Prerequisites

- Linux system (Ubuntu 20.04+ recommended) or GitHub Codespaces
- 8GB+ RAM, 20GB free disk space
- For ARM benchmarks: `gcc-arm-linux-gnueabi` cross-compiler

### Installation Steps

1. **Clone gem5 repository** (if not already done):
   ```bash
   cd /workspaces/LMUL-Hardware-Acceleration  # or your project root
   git clone https://github.com/gem5/gem5.git
   cd gem5
   git checkout stable
   ```

2. **Install LMUL accelerator model**:
   ```bash
   cd /workspaces/LMUL-Hardware-Acceleration
   ./gem5-sim/scripts/install_model.sh
   ```
   
   This script will:
   - Copy accelerator model files into gem5
   - Register with gem5's build system
   - Build gem5 with the accelerator integrated (takes 20-30 minutes)
   
   **Note**: If gem5 is already built, the script will remove the build directory and rebuild from scratch to ensure a clean integration.

3. **Verify installation**:
   ```bash
   ./gem5-sim/scripts/test_accelerator.sh
   ```

## Usage

### Running Simulations

#### Basic Matrix Multiply Test

```bash
cd /workspaces/LMUL-Hardware-Acceleration

# Build benchmark (if needed)
cd gem5-sim/benchmarks/matrix_multiply
make

# Run simulation
cd ../../..
./gem5-sim/scripts/run_simulation.sh --test
```

#### Custom Configuration

```bash
# Use custom PE array size
cd gem5
./build/ARM/gem5.opt \
    --outdir=m5out \
    configs/example/se.py \
    --cmd=/path/to/benchmark \
    --cpu-type=TimingSimpleCPU \
    --mem-type=DDR3_1600_8x8 \
    --mem-size=512MB
```

### Using the Accelerator in Config Scripts

```python
from m5.objects import *

# Create system
system = System()
system.clk_domain = SrcClockDomain(clock='1GHz')
system.mem_mode = 'timing'
system.mem_ranges = [AddrRange('512MB')]

# Add LMUL accelerator
system.lmul_accel = LMulAccelerator(
    pio_addr=0x10000000,      # Memory-mapped at 256MB
    pe_array_rows=4,          # 4x4 PE array
    pe_array_cols=4,
    use_lmul=True             # Use LMUL (False for IEEE BF16)
)

# Connect to memory bus
system.lmul_accel.pio = system.membus.mem_side_ports
```

## Key Commands

### Installation & Setup

```bash
# Install accelerator model into gem5
./gem5-sim/scripts/install_model.sh

# Clean gem5 installation (removes accelerator)
./gem5-sim/scripts/clean_gem5.sh

# Verify installation
./gem5-sim/scripts/test_accelerator.sh
```

### Building & Running

```bash
# Build gem5 (from gem5 directory)
# In Codespaces or low-memory environments, use:
cd gem5
scons build/ARM/gem5.debug -j1 CXXFLAGS="-O0"

# On systems with more memory, use optimized build:
cd gem5
scons build/ARM/gem5.opt -j$(nproc)

# Build benchmarks
cd gem5-sim/benchmarks/matrix_multiply
make

# Run simulation
cd ../../..
./gem5-sim/scripts/run_simulation.sh [options]
```

### Debugging

```bash
# Enable debug output
cd gem5
./build/ARM/gem5.opt \
    --debug-flags=LMulAccel \
    configs/example/se.py \
    --cmd=/path/to/benchmark

# View statistics
cat m5out/stats.txt | grep lmul_accel
```

## Troubleshooting

### Build Issues

**"Flag LMulAccel already specified"**:
```bash
# Clean everything and rebuild
./gem5-sim/scripts/clean_gem5.sh
./gem5-sim/scripts/install_model.sh
```

**"SimObject already found in importer"**:
```bash
# Remove build directory completely
cd gem5
rm -rf build/
./gem5-sim/scripts/install_model.sh
```

**Out of memory during build**:
- In Codespaces, use: `scons build/ARM/gem5.debug -j1 CXXFLAGS="-O0"`
- This builds a debug binary with no optimization, reducing linker memory usage
- The install script automatically uses this configuration in Codespaces
- On systems with more memory, you can rebuild as opt: `scons build/ARM/gem5.opt -j1`
- All scripts automatically detect and use either `gem5.opt` or `gem5.debug` if available

### Runtime Issues

**Accelerator not found**:
- Verify installation: `./gem5-sim/scripts/test_accelerator.sh`
- Check that `build/ARM/dev/lmul_accel/lmul_accelerator.o` exists

**Import errors**:
- Make sure you're running from the gem5 directory
- Check Python path includes gem5 build directory

## Model Details

The accelerator model implements:
- **Memory-mapped I/O (MMIO)**: Register-based control interface
- **Functional model**: Correct BF16 LMUL computation
- **Timing model**: Cycle-accurate performance estimation
- **Statistics**: Performance counters and metrics

See `models/README.md` for detailed documentation.

## Performance Metrics

The simulator collects:
- **Execution time**: Total cycles and wall-clock time
- **Throughput**: Operations per second (GOPS)
- **Utilization**: Accelerator busy vs idle time
- **Memory bandwidth**: Bytes transferred per second
- **Cache behavior**: Hit rates, misses, evictions

## Next Steps

1. **Read model documentation**: `models/README.md`
2. **Explore configurations**: `configs/README.md`
3. **Run benchmarks**: `benchmarks/README.md`
4. **Create custom tests**: Modify `configs/lmul_system.py`

## Resources

- **gem5 Documentation**: https://www.gem5.org/documentation/
- **Learning gem5**: http://learning.gem5.org/
- **Project Repository**: See main project README
