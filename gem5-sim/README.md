# LMUL Accelerator gem5 Simulation

Complete gem5 integration for simulating the LMUL (Logarithmic Multiplication) hardware accelerator in a full system context.

## Overview

This directory contains a custom gem5 device model for the LMUL accelerator, allowing you to:
- Simulate end-to-end application performance
- Evaluate memory bandwidth requirements and bottlenecks
- Measure CPU-accelerator communication overhead
- Compare LMUL accelerator vs native CPU IEEE BF16 performance
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

# Onboarding Guide: gem5 LMUL Accelerator Project

This guide will help you get up and running with the gem5 simulator and LMUL accelerator model, from initial setup to running simulations and analyzing results.

## Table of Contents

1. [Prerequisites](#prerequisites)
2. [Initial Setup](#initial-setup)
3. [Building gem5 with LMUL Accelerator](#building-gem5-with-lmul-accelerator)
4. [Running Simulations](#running-simulations)
5. [Comparing Results](#comparing-results)
6. [Understanding Output](#understanding-output)
7. [Troubleshooting](#troubleshooting)

---

## Prerequisites

### System Requirements
- **RAM**: 32GB+ recommended (16GB minimum, but linker may fail)
- **Disk**: 50GB+ free space
- **OS**: Linux (Ubuntu 20.04+ recommended) or access to NSF Singularity container
- **Architecture**: x86_64 (preferred)

### Required Software
- `git` - Version control
- `python3` (3.6+) - Python interpreter
- `scons` - Build system (can be installed via pip)
- ARM cross-compiler (for benchmarks): `gcc-arm-linux-gnueabihf`

---

## Initial Setup

### Step 1: Check System Compatibility

First, verify your system can build and run gem5:

```bash
cd /path/to/LMUL-Hardware-Acceleration
./gem5-sim/scripts/check_compatibility.sh
```

This will check:
- Architecture compatibility
- Available RAM and disk space
- Required dependencies
- Build tools

**Expected output**: Should show ✓ for most checks. If there are warnings, address them before proceeding.

### Step 2: Check Dependencies

Check for all required libraries:

```bash
./gem5-sim/scripts/check_gem5_dependencies.sh
```

This verifies:
- zlib (required)
- Python development headers (required)
- Optional libraries (libpng, HDF5, protobuf)

**If dependencies are missing**, install:
```bash
sudo apt-get install zlib1g-dev python3-dev protobuf-compiler pkg-config
```

### Step 3: Clone gem5 Repository

If you haven't already cloned gem5:

```bash
cd /path/to/LMUL-Hardware-Acceleration
git clone https://github.com/gem5/gem5.git
cd gem5
git checkout stable
pip install -r requirements.txt
cd ..
```

**Note**: The `install_model.sh` script will handle this automatically if gem5 doesn't exist.

---

## Building gem5 with LMUL Accelerator

### Step 1: Install the LMUL Accelerator Model

This script will:
- Copy accelerator model files into gem5
- Register with gem5's build system
- Build gem5 with the accelerator integrated

```bash
cd /path/to/LMUL-Hardware-Acceleration
./gem5-sim/scripts/install_model.sh
```

**What it does:**
1. Cleans up any previous installation
2. Creates `gem5/src/dev/lmul_accel/` directory
3. Copies accelerator model files (C++, Python, build config)
4. Registers with gem5's build system
5. **Builds gem5** (takes 30-60 minutes)

**Expected output**: 
- Should complete with "✓ gem5 rebuild successful!"
- If it fails, check the error messages (common issues: missing zlib, linker OOM)

### Step 2: Verify Installation

Check that the accelerator was installed correctly:

```bash
./gem5-sim/scripts/test_accelerator.sh
```

**Expected output**: Should show:
- ✓ Accelerator object file exists
- ✓ Python bindings generated
- ✓ Accelerator can be instantiated

---

## Running Simulations

### Step 1: Build Benchmarks

First, compile the matrix multiplication benchmark:

```bash
cd gem5-sim/benchmarks/matrix_multiply
make
```

This creates `matrix_multiply.arm` (ARM binary) or `matrix_multiply_no_printf.arm` (no printf version, avoids syscall 403 errors).

**If ARM cross-compiler is missing:**
- Contact mentor to install: `sudo apt-get install gcc-arm-linux-gnueabihf`
- Or build for x86: `make x86` (if supported)

### Step 2: Run a Simple Simulation

Run a basic test simulation:

```bash
cd /path/to/LMUL-Hardware-Acceleration
./gem5-sim/scripts/run_simulation.sh --test
```

**What this does:**
- Runs a 4x4 matrix multiplication
- Uses the LMUL accelerator
- Outputs results to `gem5-sim/m5out/`

**Check results:**
```bash
ls -lh gem5-sim/m5out/
cat gem5-sim/m5out/stats.txt | head -50
```

### Step 3: Run Custom Simulation

Run with custom parameters:

```bash
./gem5-sim/scripts/run_simulation.sh \
    --pe-rows 8 \
    --pe-cols 8 \
    --matrix-size 16
```

**Parameters:**
- `--pe-rows N`: Processing element array rows (default: 4)
- `--pe-cols N`: Processing element array columns (default: 4)
- `--matrix-size N`: Matrix dimension (default: 8)

---

## Comparing Results

### Compare LMUL Accelerator vs Native IEEE (CPU)

This is the main comparison workflow - it runs two simulations (one with accelerator, one with CPU) and compares performance:

```bash
cd /path/to/LMUL-Hardware-Acceleration
./gem5-sim/scripts/compare_lmul_vs_ieee.sh
```

**What it does:**
1. Runs LMUL accelerator simulation
2. Runs native IEEE BF16 (CPU) simulation
3. Extracts performance metrics from both
4. Compares and generates a report

**Output files:**
- `lmul_vs_ieee_comparison/lmul/stats.txt` - LMUL accelerator stats
- `lmul_vs_ieee_comparison/ieee/stats.txt` - Native IEEE stats
- `lmul_vs_ieee_comparison/performance_comparison.txt` - Comparison report

**View results:**
```bash
cat lmul_vs_ieee_comparison/performance_comparison.txt
```

### Custom Comparison

Run comparison with specific parameters:

```bash
# Set matrix size and PE array size
MATRIX_SIZE=16
PE_ROWS=8
PE_COLS=8

./gem5-sim/scripts/compare_lmul_vs_ieee.sh \
    --matrix-size $MATRIX_SIZE \
    --pe-rows $PE_ROWS \
    --pe-cols $PE_COLS
```

### Manual Metric Extraction

Extract metrics from a specific stats file:

```bash
python3 gem5-sim/scripts/compare_metrics.py \
    lmul_vs_ieee_comparison/lmul/stats.txt \
    lmul_vs_ieee_comparison/ieee/stats.txt
```

This prints a formatted comparison table with:
- Simulation time
- CPU cycles
- Instructions
- CPI (Cycles Per Instruction)
- IPC (Instructions Per Cycle)
- Accelerator-specific metrics (if using accelerator)

---

## Understanding Output

### Key Files

**Simulation Output Directory**: `gem5-sim/m5out/` (or custom output dir)

- `stats.txt` - Detailed simulation statistics
- `config.ini` - Complete system configuration
- `config.json` - JSON version of configuration

### Important Statistics

**From `stats.txt`:**

```
sim_seconds                    # Total simulation time (seconds)
system.cpu.numCycles          # Total CPU cycles
system.cpu.committedInsts     # Committed instructions
system.cpu.cpi                # Cycles per instruction
system.cpu.ipc                # Instructions per cycle
```

**LMUL Accelerator Statistics** (if using accelerator):
```
system.lmul_accel.numcompletions    # Number of completed operations
system.lmul_accel.totalcycles       # Total accelerator cycles
system.lmul_accel.totalops          # Total operations
system.lmul_accel.oplatency::Mean   # Average operation latency
```

### Performance Metrics

**Speedup Calculation:**
```
Speedup = (IEEE simulation time) / (LMUL simulation time)
```

**Energy Efficiency** (if available):
- Look for power/energy statistics in `stats.txt`
- Compare total energy consumption between LMUL and IEEE

---

## Common Workflows

### Workflow 1: Quick Test

```bash
# 1. Check system
./gem5-sim/scripts/check_compatibility.sh

# 2. Install model (if not done)
./gem5-sim/scripts/install_model.sh

# 3. Run test simulation
./gem5-sim/scripts/run_simulation.sh --test

# 4. Check results
cat gem5-sim/m5out/stats.txt | head -30
```

### Workflow 2: Full Comparison

```bash
# 1. Ensure gem5 is built with accelerator
./gem5-sim/scripts/test_accelerator.sh

# 2. Build benchmarks
cd gem5-sim/benchmarks/matrix_multiply && make && cd ../../..

# 3. Run comparison
./gem5-sim/scripts/compare_lmul_vs_ieee.sh

# 4. View results
cat lmul_vs_ieee_comparison/performance_comparison.txt

# 5. Extract detailed metrics
python3 gem5-sim/scripts/compare_metrics.py \
    lmul_vs_ieee_comparison/lmul/stats.txt \
    lmul_vs_ieee_comparison/ieee/stats.txt
```

### Workflow 3: Parameter Sweep

Test different PE array sizes:

```bash
for pe_size in 4 8 16; do
    echo "Testing PE array: ${pe_size}x${pe_size}"
    ./gem5-sim/scripts/compare_lmul_vs_ieee.sh \
        --pe-rows $pe_size \
        --pe-cols $pe_size \
        --matrix-size $((pe_size * 2))
done
```

---

## Troubleshooting

### Issue: "zlib library missing"

**Symptom**: Build fails with "Error: Did not find needed zlib compression library"

**Solution**:
```bash
# Check if zlib exists
./gem5-sim/scripts/check_zlib.sh

# If missing, contact mentor to install:
# sudo apt-get install zlib1g-dev
```

### Issue: "Linker OOM" or build fails during linking

**Symptom**: Build fails with "ld terminated" or "out of memory"

**Solution**:
- Need more RAM (32GB+ recommended)
- Or build on a machine with more memory
- Or use Singularity container on NSF machine

### Issue: "Syscall 403 out of range"

**Symptom**: Simulation fails early with syscall error

**Solution**:
```bash
# Use the no-printf version of the benchmark
cd gem5-sim/benchmarks/matrix_multiply
make matrix_multiply_no_printf.arm
```

### Issue: "stats.txt is empty"

**Symptom**: Simulation completes but no statistics generated

**Possible causes**:
- Simulation failed before completion
- Check simulation log for errors
- Verify benchmark binary exists and is ARM format

**Check**:
```bash
# Check if binary exists
ls -lh gem5-sim/benchmarks/matrix_multiply/*.arm

# Check simulation log
tail -50 lmul_vs_ieee_comparison/lmul/simulation.log
```

### Issue: "Permission denied" when running scripts

**Solution**:
```bash
chmod +x gem5-sim/scripts/*.sh
```

### Issue: "git pull" fails with OpenSSL error

**Symptom**: "OpenSSL version mismatch" when using git

**Solution**:
```bash
# Use the git wrapper
./gem5-sim/scripts/fix_git_permanently.sh
# Then restart your shell or: source ~/.bashrc
```

---

## Next Steps

Once you're comfortable with the basics:

1. **Experiment with parameters**: Try different PE array sizes, matrix sizes
2. **Analyze results**: Look at the detailed statistics in `stats.txt`
3. **Compare configurations**: Run multiple comparisons with different settings
4. **Extract insights**: Look for trends in performance vs. configuration

## Getting Help

- **Check logs**: Most scripts output detailed logs
- **Read documentation**: See `gem5-sim/README.md` for more details
- **Check compatibility**: Run `check_compatibility.sh` if something doesn't work
- **Contact team**: Share error messages and logs for debugging

---

## Quick Reference

```bash
# Setup
./gem5-sim/scripts/check_compatibility.sh
./gem5-sim/scripts/install_model.sh

# Verify
./gem5-sim/scripts/test_accelerator.sh

# Build benchmarks
cd gem5-sim/benchmarks/matrix_multiply && make

# Run simulation
./gem5-sim/scripts/run_simulation.sh --test

# Compare
./gem5-sim/scripts/compare_lmul_vs_ieee.sh

# View results
cat lmul_vs_ieee_comparison/performance_comparison.txt
```
