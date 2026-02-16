# gem5 Installation and Setup Guide

Complete guide for setting up gem5 for LMUL accelerator simulation.

## Prerequisites

### System Requirements
- **RAM**: 8GB minimum, 16GB+ recommended
- **Disk**: 20GB free space for gem5 build
- **CPU**: Multi-core processor (faster builds)
- **OS**: Linux (Ubuntu 20.04/22.04 recommended)

### Software Dependencies

```bash
# Update system
sudo apt update && sudo apt upgrade -y

# Install gem5 dependencies
sudo apt install -y \
    build-essential \
    git \
    m4 \
    scons \
    zlib1g \
    zlib1g-dev \
    libprotobuf-dev \
    protobuf-compiler \
    libprotoc-dev \
    libgoogle-perftools-dev \
    python3-dev \
    python3-six \
    python-is-python3 \
    libboost-all-dev \
    pkg-config

# For optional features
sudo apt install -y \
    doxygen \
    libpng-dev \
    libelf-dev

# Python packages
pip3 install --upgrade pip
pip3 install pydot
```

## Step 1: Clone and Build gem5

### Clone gem5 Repository

```bash
cd /workspaces/LMUL-Hardware-Acceleration

# Clone gem5 (stable version)
git clone https://github.com/gem5/gem5.git
cd gem5

# Checkout stable version (v23.1)
git checkout v23.1

# Or use latest stable
git checkout stable
```

### Build gem5

**Important**: Building gem5 takes 30-60 minutes depending on your system.

```bash
# Build ARM version (recommended for ML accelerators)
scons build/ARM/gem5.opt -j$(nproc)

# Alternative: Build X86 version
# scons build/X86/gem5.opt -j$(nproc)

# Build both if needed
# scons build/ARM/gem5.opt build/X86/gem5.opt -j$(nproc)
```

**Build Options:**
- `gem5.opt`: Optimized build (recommended)
- `gem5.debug`: Debug symbols (slower, for development)
- `gem5.fast`: Fastest, no assertions (for production runs)

### Verify Installation

```bash
# Test basic gem5 functionality
./build/ARM/gem5.opt configs/example/se.py -c tests/test-progs/hello/bin/arm/linux/hello

# Expected output: "Hello world!" followed by exit statistics
```

## Step 2: Install LMUL Accelerator Model

### Option A: Automatic Installation (Recommended)

```bash
cd /workspaces/LMUL-Hardware-Acceleration
chmod +x gem5/scripts/install_model.sh
./gem5/scripts/install_model.sh
```

This script:
1. Copies LMUL model files to gem5 source tree
2. Updates gem5 build configuration
3. Rebuilds gem5 with accelerator support

### Option B: Manual Installation

```bash
# 1. Copy model files
cd /workspaces/LMUL-Hardware-Acceleration

# Create accelerator directory in gem5
mkdir -p gem5/src/dev/lmul_accel

# Copy model files
cp gem5/models/lmul_accelerator.hh gem5/src/dev/lmul_accel/
cp gem5/models/lmul_accelerator.cc gem5/src/dev/lmul_accel/
cp gem5/models/SConscript gem5/src/dev/lmul_accel/

# Copy Python wrapper
cp gem5/models/LMulAccelerator.py gem5/src/python/gem5/components/processors/

# 2. Register new device with gem5 build system
# Add to gem5/src/dev/SConscript:
# SConscript('lmul_accel/SConscript')

# 3. Rebuild gem5
cd gem5
scons build/ARM/gem5.opt -j$(nproc)
```

## Step 3: Verify Accelerator Integration

### Test Accelerator Model

```bash
cd /workspaces/LMUL-Hardware-Acceleration

# Run unit test
./gem5/scripts/run_test.sh --test unit

# Expected: "LMUL Accelerator: All tests passed"
```

### Run Simple Benchmark

```bash
# Compile test program
cd gem5/benchmarks/matrix_multiply
make clean && make

# Run simulation
../../scripts/run_simulation.sh \
    --benchmark matrix_multiply \
    --size 4 \
    --mode test

# Check output
ls -lh /workspaces/LMUL-Hardware-Acceleration/gem5/m5out/
cat /workspaces/LMUL-Hardware-Acceleration/gem5/m5out/stats.txt
```

## Step 4: Understanding gem5 Output

### Key Output Files

```
m5out/
├── stats.txt           # Performance statistics
├── config.ini          # System configuration used
├── config.json         # JSON version of config
└── simout              # Simulation stdout/stderr
```

### Important Statistics

```bash
# View key metrics
grep -E "simSeconds|simTicks|numCycles" gem5/m5out/stats.txt

# Accelerator-specific stats
grep "lmul_accel" gem5/m5out/stats.txt
```

## Step 5: Development Workflow

### Typical Development Cycle

```bash
# 1. Modify accelerator model
vim gem5/models/lmul_accelerator.cc

# 2. Reinstall model
./gem5/scripts/install_model.sh

# 3. Run test
./gem5/scripts/run_test.sh --test unit

# 4. Run benchmark
./gem5/scripts/run_simulation.sh --benchmark matrix_multiply --size 8

# 5. Analyze results
python3 gem5/scripts/extract_stats.py
```

## Docker Integration (Optional)

### Add gem5 to Docker Container

Update `Dockerfile`:

```dockerfile
# Add gem5 dependencies
RUN apt-get update && apt-get install -y \
    build-essential git m4 scons \
    zlib1g zlib1g-dev \
    libprotobuf-dev protobuf-compiler \
    libgoogle-perftools-dev \
    python3-dev python-is-python3 \
    libboost-all-dev pkg-config

# Clone and build gem5 (add to Dockerfile or run interactively)
# RUN git clone https://github.com/gem5/gem5.git /opt/gem5 && \
#     cd /opt/gem5 && \
#     git checkout v23.1 && \
#     scons build/ARM/gem5.opt -j4
```

### Or Use Pre-built gem5 Image

```bash
# Pull gem5 Docker image
docker pull gcr.io/gem5-test/ubuntu-22.04_all-dependencies

# Run with your workspace mounted
docker run -it --rm \
    -v /workspaces/LMUL-Hardware-Acceleration:/workspace \
    gcr.io/gem5-test/ubuntu-22.04_all-dependencies \
    /bin/bash
```

## Troubleshooting

### Build Errors

**Error: "Python.h not found"**
```bash
sudo apt install python3-dev
```

**Error: "scons: command not found"**
```bash
sudo apt install scons
```

**Error: "protobuf errors"**
```bash
sudo apt install libprotobuf-dev protobuf-compiler libprotoc-dev
```

### Runtime Errors

**Error: "Simulation terminated with signal"**
- Check benchmark compiled correctly
- Verify system configuration
- Check memory allocation

**Error: "Unknown CPU type"**
- Ensure correct ISA build (ARM vs X86)
- Check configuration file

### Performance Issues

**Slow build times**
```bash
# Use more cores
scons build/ARM/gem5.opt -j$(nproc)

# Or specific number
scons build/ARM/gem5.opt -j8
```

**Slow simulations**
- Use gem5.opt or gem5.fast (not gem5.debug)
- Start with small workloads
- Use syscall emulation before full-system

## Environment Setup

### Add to `.bashrc` or `.zshrc`

```bash
# gem5 environment
export GEM5_ROOT=/workspaces/LMUL-Hardware-Acceleration/gem5
export GEM5_BUILD=$GEM5_ROOT/build/ARM
export PATH=$GEM5_ROOT:$PATH

# LMUL accelerator
export LMUL_GEM5=/workspaces/LMUL-Hardware-Acceleration/gem5
export LMUL_BENCHMARKS=$LMUL_GEM5/benchmarks
```

```bash
# Apply changes
source ~/.bashrc  # or source ~/.zshrc
```

## Next Steps

1. ✅ gem5 installed and verified
2. ✅ LMUL accelerator model integrated
3. ✅ Test simulation runs successfully
4. ⬜ Read `models/README.md` to understand accelerator implementation
5. ⬜ Read `configs/README.md` to understand system configuration
6. ⬜ Run first real benchmark from `benchmarks/`
7. ⬜ Analyze results with `scripts/extract_stats.py`

## Additional Resources

### Official Documentation
- gem5 Documentation: https://www.gem5.org/documentation/
- Learning gem5: http://learning.gem5.org/
- gem5 Book: http://www.gem5.org/documentation/learning_gem5/introduction/

### Community
- gem5 Users Mailing List: https://www.gem5.org/mailing_lists/
- gem5 Slack: https://gem5-workspace.slack.com/
- Stack Overflow: Tag `gem5`

### Tutorials
- Adding Custom Devices: http://learning.gem5.org/book/part2/memoryobject.html
- Creating Configurations: http://learning.gem5.org/book/part1/simple_config.html
- Understanding Statistics: http://learning.gem5.org/book/part1/example_configs.html

## Verification Checklist

Before proceeding, verify:

- [ ] gem5 builds without errors
- [ ] `./build/ARM/gem5.opt configs/example/se.py` runs successfully
- [ ] LMUL accelerator model files are in `gem5/src/dev/lmul_accel/`
- [ ] gem5 rebuilds successfully with accelerator
- [ ] Test simulation produces output in `m5out/`
- [ ] Can parse statistics from `m5out/stats.txt`

If all checked, you're ready to start developing and running simulations!
