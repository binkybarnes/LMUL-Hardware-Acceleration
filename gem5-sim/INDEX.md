# gem5 LMUL Accelerator - Complete Index

## What Was Created

A complete gem5 simulation framework for evaluating LMUL hardware accelerators in full-system context.

### Directory Structure

```
gem5/
├── README.md                      # Overview and roadmap
├── GETTING_STARTED.md            # Step-by-step setup guide (START HERE!)
├── QUICKSTART.md                 # Quick reference after setup
├── SETUP.md                      # Detailed installation instructions
├── INDEX.md                      # This file
│
├── models/                       # Accelerator device model
│   ├── README.md                # Model documentation
│   ├── lmul_accelerator.hh      # C++ header
│   ├── lmul_accelerator.cc      # C++ implementation
│   ├── LMulAccelerator.py       # Python wrapper
│   └── SConscript               # Build configuration
│
├── configs/                      # System configurations
│   ├── README.md                # Configuration guide
│   └── lmul_system.py           # Complete system with LMUL
│
├── benchmarks/                   # Test programs
│   ├── README.md                # Benchmark writing guide
│   └── matrix_multiply/         # Matrix multiply benchmark
│       ├── matrix_multiply.c    # Source code
│       └── Makefile            # Build system
│
└── scripts/                      # Automation tools
    ├── install_model.sh         # Install accelerator into gem5
    ├── run_simulation.sh        # Run simulations
    ├── verify_setup.sh          # Verify installation
    └── extract_stats.py         # Parse statistics
```

## Documentation Flow

### For First-Time Users

**Read in this order:**

1. **`DOCKER_SETUP.md`** ⭐ START HERE (macOS/Docker users)
   - Docker-based installation (recommended)
   - Avoids macOS conflicts
   - Uses your existing Docker setup
   
   **OR**
   
   **`GETTING_STARTED.md`** (Linux users)
   - Native Linux installation
   - Direct on Ubuntu/Linux systems

2. Continue with remaining docs...

2. **`SETUP.md`**
   - Referenced by GETTING_STARTED
   - Detailed installation instructions
   - Dependency information

3. **`models/README.md`**
   - After first successful run
   - Understand how the model works
   - Register map and API

4. **`configs/README.md`**
   - When you want to modify system
   - System configuration options
   - Creating custom configs

5. **`benchmarks/README.md`**
   - When writing new benchmarks
   - API examples
   - Best practices

### For Quick Reference

**`QUICKSTART.md`** - Command cheat sheet after initial setup

### For Understanding Scope

**`README.md`** - Project overview, features, roadmap

## Installation Workflow

```
┌─────────────────────────────────────────────────────┐
│ 1. Install Dependencies                            │
│    sudo apt install build-essential scons ...      │
└────────────────┬────────────────────────────────────┘
                 │
                 ▼
┌─────────────────────────────────────────────────────┐
│ 2. Clone & Build gem5 (20-30 min)                  │
│    git clone https://github.com/gem5/gem5.git      │
│    scons build/ARM/gem5.opt -j$(nproc)             │
└────────────────┬────────────────────────────────────┘
                 │
                 ▼
┌─────────────────────────────────────────────────────┐
│ 3. Install LMUL Model (5-10 min)                   │
│    ./scripts/install_model.sh                      │
└────────────────┬────────────────────────────────────┘
                 │
                 ▼
┌─────────────────────────────────────────────────────┐
│ 4. Build Benchmarks (2 min)                        │
│    cd benchmarks/matrix_multiply && make           │
└────────────────┬────────────────────────────────────┘
                 │
                 ▼
┌─────────────────────────────────────────────────────┐
│ 5. Run Test (3-5 min)                              │
│    ./scripts/run_simulation.sh --test              │
└────────────────┬────────────────────────────────────┘
                 │
                 ▼
┌─────────────────────────────────────────────────────┐
│ 6. Analyze Results                                  │
│    python3 scripts/extract_stats.py m5out/stats.txt│
└─────────────────────────────────────────────────────┘
```

## Usage Workflow

### Basic Simulation

```bash
# 1. Run simulation
./scripts/run_simulation.sh \
    --size 16 \
    --pe-rows 4 \
    --pe-cols 4

# 2. Extract results
python3 scripts/extract_stats.py m5out/stats.txt
```

### Comparison Study

```bash
# Run LMUL version
./scripts/run_simulation.sh --size 32 --output-dir m5out_lmul

# Run IEEE version
./scripts/run_simulation.sh --size 32 --ieee --output-dir m5out_ieee

# Compare
python3 scripts/extract_stats.py m5out_lmul/stats.txt m5out_ieee/stats.txt
```

### Parameter Sweep

```bash
# Test different PE arrays
for size in 2 4 8 16; do
    ./scripts/run_simulation.sh \
        --pe-rows $size --pe-cols $size \
        --size 64 \
        --output-dir results/pe_${size}x${size}
done
```

## Key Features

### 1. Memory-Mapped Accelerator
- Base address: 0x10000000
- Register-based control interface
- Status polling or interrupt-based

### 2. Configurable PE Array
- Sizes: 2x2, 4x4, 8x8, 16x16, etc.
- Cycle-accurate timing
- Realistic throughput modeling

### 3. Two Operation Modes
- **LMUL**: Logarithmic multiplication (fast, low power)
- **IEEE BF16**: Standard BF16 (for comparison)

### 4. Complete System Model
- ARM CPU (TimingSimpleCPU)
- Memory hierarchy (caches, DRAM)
- System bus
- Realistic timing

### 5. Comprehensive Statistics
- System: CPU cycles, IPC, simulation time
- Accelerator: Operations, cycles, throughput
- Memory: Bandwidth, latency, cache hits

## What You Can Simulate

### Current
- ✅ Matrix multiplication (any size)
- ✅ Different PE array configurations
- ✅ LMUL vs IEEE comparison
- ✅ Memory bandwidth analysis

### Future Extensions
- ⬜ Neural network layers (FC, Conv2D)
- ⬜ LSTM cells
- ⬜ Full network inference (MNIST, ResNet)
- ⬜ Multi-accelerator systems
- ⬜ Full-system mode with Linux

## Common Commands

### Installation
```bash
./scripts/install_model.sh              # Install model
./scripts/verify_setup.sh               # Verify setup
```

### Simulation
```bash
./scripts/run_simulation.sh --test      # Quick test
./scripts/run_simulation.sh --size 16   # 16x16 matrix
./scripts/run_simulation.sh --ieee      # Use IEEE BF16
```

### Analysis
```bash
python3 scripts/extract_stats.py m5out/stats.txt         # Single run
python3 scripts/extract_stats.py m5out_*/stats.txt       # Compare multiple
cat m5out/stats.txt                                      # Raw stats
cat m5out/config.ini                                     # System config
```

### Building
```bash
cd benchmarks/matrix_multiply
make clean && make ARCH=arm             # Build ARM binary
make ARCH=x86                          # Build x86 binary
```

## Integration with Existing Project

This gem5 integration complements your existing work:

| Component | Purpose | Validates |
|-----------|---------|-----------|
| RTL (`rtl/lmul_bf16.v`) | Hardware design | Logic correctness |
| Synthesis (`synthesis/`) | ASIC metrics | Area, power, timing |
| Vivado (`vivado/`) | FPGA implementation | Real hardware |
| **gem5 (new)** | **System-level** | **End-to-end performance** |

gem5 answers questions like:
- What is the **actual application speedup**?
- Is the accelerator **compute or memory bound**?
- What is the optimal **PE array size** for real workloads?
- How much **memory bandwidth** is needed?

## Research Applications

### Performance Characterization
1. Sweep matrix sizes → find compute/memory bound transition
2. Sweep PE array sizes → find optimal configuration
3. Plot throughput vs size → characterize scaling

### Comparative Analysis
1. LMUL vs IEEE BF16 → quantify benefits
2. Accelerator vs CPU → measure speedup
3. Different workloads → understand generalization

### System Design
1. Memory bandwidth requirements → inform system design
2. PE array utilization → optimize architecture
3. Cache behavior → guide memory hierarchy

### Publication Material
1. Performance plots (throughput, latency, efficiency)
2. Comparison tables (LMUL vs IEEE, various configs)
3. System-level analysis (not just unit-level)

## Support & Help

### Documentation
- Start: `GETTING_STARTED.md`
- Problems: `SETUP.md` troubleshooting section
- Verification: `./scripts/verify_setup.sh`
- Details: Component READMEs

### gem5 Resources
- Official: https://www.gem5.org/documentation/
- Learning: http://learning.gem5.org/
- Examples: `gem5/configs/example/`

### Project Resources
- RTL reference: `rtl/lmul_bf16.v`
- Synthesis results: `synthesis/`
- Design guide: `synthesis/ACCELERATOR_DESIGN_GUIDE.md`

## Quick Troubleshooting

| Problem | Solution |
|---------|----------|
| gem5 won't build | Check dependencies: `./scripts/verify_setup.sh` |
| Model not found | Run `./scripts/install_model.sh` |
| Benchmark fails | Check architecture: `file benchmark.arm` |
| No stats | Enable debug: `--debug-flags=LMulAccel` |
| Simulation hangs | Use smaller test first: `--test` |

## Success Metrics

You know it's working when:
- ✅ `./scripts/verify_setup.sh` passes all checks
- ✅ `./scripts/run_simulation.sh --test` completes
- ✅ `m5out/stats.txt` contains `lmul_accel` statistics
- ✅ `extract_stats.py` shows ops_per_cycle > 0
- ✅ Can run different configurations successfully

## Next Steps After Setup

1. **Experiment** with different configurations
2. **Compare** LMUL vs IEEE systematically  
3. **Analyze** results and identify bottlenecks
4. **Optimize** based on findings
5. **Publish** your results!

---

**Ready?** Start with **`GETTING_STARTED.md`** now! 🚀
