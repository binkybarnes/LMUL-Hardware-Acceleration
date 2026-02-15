# Quick Start Guide

Get up and running with gem5 LMUL accelerator simulation in 30 minutes.

## Prerequisites

- Linux system (Ubuntu 20.04+ recommended)
- 8GB+ RAM
- 20GB free disk space
- Internet connection

## Step 1: Install Dependencies (5 minutes)

```bash
# Update system
sudo apt update

# Install gem5 dependencies
sudo apt install -y \
    build-essential git m4 scons \
    zlib1g zlib1g-dev \
    libprotobuf-dev protobuf-compiler \
    libgoogle-perftools-dev \
    python3-dev python-is-python3 \
    libboost-all-dev pkg-config

# Install cross-compiler for ARM benchmarks
sudo apt install -y gcc-arm-linux-gnueabi
```

## Step 2: Clone and Build gem5 (20-30 minutes)

```bash
cd /workspaces/LMUL-Hardware-Acceleration

# Clone gem5
git clone https://github.com/gem5/gem5.git
cd gem5

# Checkout stable version
git checkout stable

# Build gem5 (this takes time!)
scons build/ARM/gem5.opt -j$(nproc)
```

**Coffee break!** ☕ This will take 20-30 minutes depending on your system.

## Step 3: Install LMUL Accelerator (2 minutes)

```bash
cd /workspaces/LMUL-Hardware-Acceleration

# Run installation script
./gem5/scripts/install_model.sh
```

This will:
- Copy model files to gem5 source tree
- Update build configuration
- Rebuild gem5 with accelerator support

## Step 4: Build Benchmark (1 minute)

```bash
cd /workspaces/LMUL-Hardware-Acceleration/gem5/benchmarks/matrix_multiply

# Build for ARM
make clean && make ARCH=arm
```

Verify:
```bash
ls -lh matrix_multiply.arm
file matrix_multiply.arm
# Should show: ELF 32-bit LSB executable, ARM
```

## Step 5: Run First Simulation (2 minutes)

```bash
cd /workspaces/LMUL-Hardware-Acceleration/gem5

# Run test simulation (4x4 matrices)
./scripts/run_simulation.sh --test
```

Expected output:
```
========================================
gem5 LMUL Accelerator Simulation
========================================
Configuration:
  PE Array: 4x4
  Mode: LMUL
  Matrix Size: 4x4
  ...
========================================

... simulation output ...

Simulation Complete!
```

## Step 6: View Results (1 minute)

```bash
# Extract statistics
python3 scripts/extract_stats.py m5out/stats.txt
```

You should see:
```
============================================================
gem5 LMUL Accelerator Statistics
============================================================

System Statistics:
----------------------------------------
  sim_seconds              : 0.000123
  sim_ticks                : 123000000
  cpu_cycles               : 246000
  cpu_instructions         : 1234
  ipc                      : 5.02

LMUL Accelerator Statistics:
----------------------------------------
  numStarts                : 1
  numCompletions           : 1
  totalCycles              : 16
  totalOps                 : 128
  ops_per_cycle            : 8.00
  gops                     : 1.04

============================================================
```

## Step 7: Run Larger Simulation (5 minutes)

```bash
# 16x16 matrices with 8x8 PE array
./scripts/run_simulation.sh \
    --size 16 \
    --pe-rows 8 \
    --pe-cols 8
```

## Step 8: Compare LMUL vs IEEE (10 minutes)

```bash
# Run LMUL version
./scripts/run_simulation.sh \
    --size 32 \
    --output-dir m5out_lmul

# Run IEEE version
./scripts/run_simulation.sh \
    --size 32 \
    --ieee \
    --output-dir m5out_ieee

# Compare
python3 scripts/extract_stats.py \
    m5out_lmul/stats.txt \
    m5out_ieee/stats.txt
```

## What You've Accomplished

✅ Installed gem5 simulator  
✅ Integrated LMUL accelerator model  
✅ Built cross-compiled benchmark  
✅ Run full-system simulation  
✅ Extracted performance metrics  
✅ Compared LMUL vs IEEE BF16  

## Next Steps

### Experiment with Configurations

```bash
# Try different PE array sizes
for size in 2 4 8 16; do
    ./scripts/run_simulation.sh \
        --pe-rows $size \
        --pe-cols $size \
        --size 64 \
        --output-dir m5out_pe${size}x${size}
done
```

### Run Custom Benchmarks

```bash
# Create your own benchmark
cd benchmarks/
mkdir my_benchmark
cd my_benchmark

# Write your C code
vim my_benchmark.c

# Create Makefile (copy from matrix_multiply)
cp ../matrix_multiply/Makefile .

# Build
make ARCH=arm

# Run
../../scripts/run_simulation.sh \
    --benchmark my_benchmark \
    ...
```

### Understand the Model

Read the documentation:
```bash
cat models/README.md
cat configs/README.md
cat benchmarks/README.md
```

### Modify the Model

```bash
# Edit accelerator model
vim models/lmul_accelerator.cc

# Reinstall
./scripts/install_model.sh

# Test
./scripts/run_simulation.sh --test
```

## Troubleshooting

### Build fails with "scons: command not found"
```bash
sudo apt install scons
```

### Build fails with "Python.h not found"
```bash
sudo apt install python3-dev
```

### Cross-compiler not found
```bash
sudo apt install gcc-arm-linux-gnueabi
```

### Simulation crashes or hangs
- Check that benchmark is built for correct architecture (ARM)
- Verify gem5 build matches benchmark (ARM/ARM)
- Check memory allocation in benchmark

### No accelerator statistics
- Verify model was installed: `ls gem5/src/dev/lmul_accel/`
- Check rebuild log: `grep lmul_accel /tmp/gem5_build.log`
- Enable debug: add `--debug-flags=LMulAccel` to simulation

## Getting Help

1. **Documentation**: Read `README.md`, `SETUP.md`, and model READMEs
2. **Examples**: Look at existing benchmarks and configs
3. **gem5 Resources**: 
   - http://www.gem5.org/documentation/
   - http://learning.gem5.org/
4. **Debug Output**: Use `--debug-flags=LMulAccel` for detailed logs

## Success Criteria

You should be able to:
- [x] Build gem5 without errors
- [x] Install LMUL model successfully
- [x] Compile benchmarks for ARM
- [x] Run simulations that complete
- [x] Extract meaningful statistics
- [x] See accelerator activity in stats.txt

If all above work, you're ready to do serious research! 🚀

## Benchmark Goals

Now that it works, aim for:
1. **Characterize performance** across different matrix sizes
2. **Compare LMUL vs IEEE** quantitatively
3. **Identify bottlenecks** (compute vs memory)
4. **Optimize PE array size** for different workloads
5. **Publish results** showing system-level benefits

Happy simulating!
