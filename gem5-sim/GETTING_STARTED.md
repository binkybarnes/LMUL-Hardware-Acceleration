# Getting Started with gem5 LMUL Accelerator Simulation

Complete guide to get from zero to running full-system simulations in ~1 hour.

## What You'll Build

A complete gem5 simulation environment for evaluating LMUL (Logarithmic Multiplication) hardware accelerators in realistic system contexts.

```
┌─────────────────────────────────────────────────────┐
│  gem5 Full-System Simulator                        │
│                                                     │
│  ┌──────────────┐         ┌──────────────────┐    │
│  │   ARM CPU    │◄───────►│ LMUL Accelerator │    │
│  │              │         │  • 4x4 PE Array   │    │
│  └──────┬───────┘         │  • BF16 LMUL      │    │
│         │                 │  • Memory-mapped  │    │
│         │                 └──────────────────┘    │
│  ┌──────▼──────────────────────────────────────┐  │
│  │         Memory System (DDR3)                │  │
│  │         • Caches                            │  │
│  │         • DRAM Controller                   │  │
│  └─────────────────────────────────────────────┘  │
│                                                     │
│  Running: Matrix Multiply Benchmark                │
│  Output:  Performance Statistics                   │
└─────────────────────────────────────────────────────┘
```

## Time Breakdown

- **Setup & Install** (30-45 min):
  - Dependencies: 5 min
  - gem5 clone & build: 20-30 min
  - Model install: 5-10 min

- **First Simulation** (5-10 min):
  - Build benchmark: 2 min
  - Run test: 3-5 min
  - Analyze results: 2 min

- **Experimentation** (ongoing):
  - Different configurations
  - Custom benchmarks
  - Performance analysis

## Quick Start (TL;DR)

**🐳 Using Docker (Recommended for macOS):**
See `DOCKER_SETUP.md` for full Docker installation guide.

**💻 Native Linux Installation:**

```bash
cd /workspaces/LMUL-Hardware-Acceleration

# 1. Install dependencies
sudo apt install -y build-essential git m4 scons zlib1g-dev \
    libprotobuf-dev protobuf-compiler libgoogle-perftools-dev \
    python3-dev python-is-python3 libboost-all-dev \
    gcc-arm-linux-gnueabi

# 2. Clone & build gem5 (20-30 minutes!)
git clone https://github.com/gem5/gem5.git
cd gem5 && git checkout stable
scons build/ARM/gem5.opt -j$(nproc)
cd ..

# 3. Install LMUL model (5 minutes)
./gem5/scripts/install_model.sh

# 4. Build benchmark
cd gem5/benchmarks/matrix_multiply
make ARCH=arm
cd ../..

# 5. Run test
./scripts/run_simulation.sh --test

# 6. View results
python3 scripts/extract_stats.py m5out/stats.txt
```

## Detailed Step-by-Step

### Step 1: Prerequisites (5 minutes)

Check your environment:

```bash
# Verify system
lsb_release -a     # Ubuntu 20.04+ recommended
free -h            # Should have 8GB+ RAM
df -h              # Should have 20GB+ free

# Verify tools
which gcc python3 git make
```

Install dependencies:

```bash
sudo apt update
sudo apt install -y \
    build-essential git m4 scons \
    zlib1g zlib1g-dev \
    libprotobuf-dev protobuf-compiler libprotoc-dev \
    libgoogle-perftools-dev \
    python3-dev python-is-python3 \
    libboost-all-dev pkg-config \
    gcc-arm-linux-gnueabi

# Verify installation
scons --version     # Should show 4.x
arm-linux-gnueabi-gcc --version
```

### Step 2: Clone gem5 (2 minutes)

```bash
cd /workspaces/LMUL-Hardware-Acceleration

# Clone stable version
git clone https://github.com/gem5/gem5.git
cd gem5

# Use stable branch
git checkout stable

# Check status
git log -1
```

### Step 3: Build gem5 (20-30 minutes ☕)

This is the longest step. Perfect time for a coffee break!

```bash
# Still in gem5/
scons build/ARM/gem5.opt -j$(nproc)

# This will:
# - Compile ~1000+ source files
# - Link gem5 binary
# - Take 20-30 minutes depending on CPU

# Successful completion shows:
# scons: done building targets.
```

**Troubleshooting**:
- Error "Python.h not found" → `sudo apt install python3-dev`
- Error "scons: command not found" → `sudo apt install scons`
- Out of memory → Reduce jobs: `scons -j2` instead of `-j$(nproc)`

**Verify build**:
```bash
ls -lh build/ARM/gem5.opt
./build/ARM/gem5.opt --version
```

### Step 4: Install LMUL Model (5-10 minutes)

```bash
cd /workspaces/LMUL-Hardware-Acceleration

# Run automated installer
./gem5/scripts/install_model.sh

# This will:
# - Copy model files to gem5/src/dev/lmul_accel/
# - Update build configuration
# - Rebuild gem5 with accelerator (~5 min)
```

**Verify installation**:
```bash
ls gem5/src/dev/lmul_accel/
# Should show: lmul_accelerator.hh, lmul_accelerator.cc, SConscript

ls gem5/build/ARM/dev/lmul_accel/
# Should show: lmul_accelerator.o (compiled)
```

### Step 5: Build Benchmark (2 minutes)

```bash
cd /workspaces/LMUL-Hardware-Acceleration/gem5/benchmarks/matrix_multiply

# Build for ARM
make clean
make ARCH=arm

# Verify
ls -lh matrix_multiply.arm
file matrix_multiply.arm
# Should show: ELF 32-bit LSB executable, ARM
```

**Troubleshooting**:
- "arm-linux-gnueabi-gcc: not found" → `sudo apt install gcc-arm-linux-gnueabi`
- Build successful if you see: `Built matrix_multiply.arm for arm`

### Step 6: Run Test Simulation (3-5 minutes)

```bash
cd /workspaces/LMUL-Hardware-Acceleration/gem5

# Run quick test (4x4 matrix)
./scripts/run_simulation.sh --test
```

**Expected output**:
```
========================================
gem5 LMUL Accelerator Simulation
========================================
Configuration:
  PE Array: 4x4
  Mode: LMUL
  Matrix Size: 4x4
  Benchmark: matrix_multiply
  Output: m5out
========================================

Running simulation...
...
Simulation Complete!
```

### Step 7: Analyze Results (2 minutes)

```bash
# Extract statistics
python3 scripts/extract_stats.py m5out/stats.txt
```

**Expected output**:
```
============================================================
gem5 LMUL Accelerator Statistics
============================================================

System Statistics:
  sim_seconds              : 0.000123
  cpu_cycles               : 246000
  cpu_instructions         : 1234
  ipc                      : 5.02

LMUL Accelerator Statistics:
  numStarts                : 1
  numCompletions           : 1
  totalCycles              : 16
  totalOps                 : 128
  ops_per_cycle            : 8.00

============================================================
```

### Step 8: Verify Everything Works

```bash
cd /workspaces/LMUL-Hardware-Acceleration/gem5

# Run verification script
./scripts/verify_setup.sh
```

**All checks should pass**:
```
✓ gcc installed
✓ scons installed
✓ gem5.opt (ARM) built
✓ LMUL accelerator compiled (ARM)
✓ matrix_multiply.arm binary built
...
All checks passed! ✓
```

## What You Can Do Now

### 1. Run Different Configurations

```bash
# Larger matrices
./scripts/run_simulation.sh --size 16

# Different PE array sizes
./scripts/run_simulation.sh --pe-rows 8 --pe-cols 8 --size 32

# Compare LMUL vs IEEE BF16
./scripts/run_simulation.sh --size 32 --output-dir m5out_lmul
./scripts/run_simulation.sh --size 32 --ieee --output-dir m5out_ieee
python3 scripts/extract_stats.py m5out_lmul/stats.txt m5out_ieee/stats.txt
```

### 2. Sweep Parameters

```bash
# Test different PE array sizes
for size in 2 4 8 16; do
    echo "Testing ${size}x${size} PE array..."
    ./scripts/run_simulation.sh \
        --pe-rows $size --pe-cols $size \
        --size 64 \
        --output-dir results/pe_${size}x${size}
done

# Analyze
for dir in results/pe_*; do
    echo "$dir:"
    python3 scripts/extract_stats.py $dir/stats.txt | grep "ops_per_cycle"
done
```

### 3. Create Custom Benchmarks

```bash
# Copy template
cd benchmarks/
cp -r matrix_multiply my_benchmark
cd my_benchmark

# Modify code
vim my_benchmark.c

# Build
make clean && make ARCH=arm

# Run
cd ../..
./scripts/run_simulation.sh --benchmark my_benchmark
```

### 4. Deep Dive into Results

```bash
# View full statistics
cat m5out/stats.txt

# View system configuration
cat m5out/config.ini

# View simulation output
cat m5out/simout

# Enable debug output
./gem5/build/ARM/gem5.opt \
    --debug-flags=LMulAccel \
    configs/lmul_system.py --cmd benchmarks/matrix_multiply/matrix_multiply.arm
```

## Learning Path

### Beginner (Week 1)
1. ✅ Follow this getting started guide
2. ✅ Run test simulations successfully
3. ✅ Understand basic statistics
4. ✅ Read `README.md` and `QUICKSTART.md`

### Intermediate (Week 2-3)
1. Modify accelerator parameters
2. Run systematic experiments
3. Read `models/README.md` - understand model implementation
4. Read `configs/README.md` - understand system configuration
5. Create custom benchmarks

### Advanced (Week 4+)
1. Modify accelerator model (C++)
2. Implement new features (DMA, interrupts)
3. Full-system mode with Linux
4. Publish results

## Documentation Index

| Document | Purpose | Read When |
|----------|---------|-----------|
| `GETTING_STARTED.md` | This file | Start here |
| `QUICKSTART.md` | Quick reference | After initial setup |
| `README.md` | Overview & roadmap | Understanding scope |
| `SETUP.md` | Detailed installation | Troubleshooting |
| `models/README.md` | Model implementation | Modifying accelerator |
| `configs/README.md` | System configuration | Changing system |
| `benchmarks/README.md` | Writing benchmarks | Creating tests |

## Common Issues & Solutions

### "gem5 build failed"
- Check dependencies: `./scripts/verify_setup.sh`
- Reduce parallel jobs: `scons -j2 build/ARM/gem5.opt`
- Check logs for specific errors

### "Simulation hangs"
- Check benchmark is statically linked (`-static`)
- Verify benchmark is for correct architecture (ARM)
- Try smaller problem size first

### "No accelerator statistics"
- Verify model installed: `ls gem5/src/dev/lmul_accel/`
- Check it's compiled: `ls gem5/build/ARM/dev/lmul_accel/*.o`
- Enable debug: `--debug-flags=LMulAccel`

### "Cross-compiler not found"
- Install: `sudo apt install gcc-arm-linux-gnueabi`
- Verify: `arm-linux-gnueabi-gcc --version`

## Next Steps After Success

1. **Characterize Performance**:
   - Run matrix multiply across different sizes
   - Plot throughput vs matrix size
   - Identify compute vs memory bound regions

2. **Compare LMUL vs IEEE**:
   - Run identical workloads with both
   - Compare cycles, throughput, energy
   - Quantify LMUL benefits

3. **Optimize Configuration**:
   - Find optimal PE array size
   - Analyze memory bandwidth requirements
   - Trade-off area vs performance

4. **Real Applications**:
   - Implement neural network layers
   - Run MNIST inference
   - Benchmark realistic workloads

5. **Publish Results**:
   - Document methodology
   - Create plots and tables
   - Write paper/report

## Support Resources

- **Project Docs**: All READMEs in `gem5/`
- **gem5 Official**: https://www.gem5.org/documentation/
- **Learning gem5**: http://learning.gem5.org/
- **LMUL RTL**: `rtl/lmul_bf16.v` for hardware details

## Success Checklist

Before moving on, ensure you can:

- [ ] Run `./scripts/verify_setup.sh` with all checks passing
- [ ] Execute `./scripts/run_simulation.sh --test` successfully
- [ ] See accelerator statistics in `m5out/stats.txt`
- [ ] Parse statistics with `scripts/extract_stats.py`
- [ ] Understand what the statistics mean
- [ ] Run simulations with different parameters
- [ ] Know where to find documentation for next steps

**If all checked: Congratulations! You're ready to do serious research! 🎉**

---

**Ready to begin?** Start with Step 1 above, or jump straight to the Quick Start if you're experienced with similar tools.

**Questions?** Check the documentation index above or run `./scripts/verify_setup.sh` for troubleshooting.
