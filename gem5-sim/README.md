# gem5 Full-System Simulation for LMUL Accelerator

This directory contains a complete gem5 integration for simulating the LMUL hardware accelerator in a full system context.

## Overview

**Goal**: Simulate a complete system with CPU, memory hierarchy, and LMUL accelerator to evaluate:
- End-to-end application performance
- Memory bandwidth requirements and bottlenecks
- CPU-accelerator communication overhead
- Realistic workload behavior
- System-level power/performance comparisons vs IEEE BF16

## Directory Structure

```
gem5/
├── README.md                    # This file
├── SETUP.md                     # Detailed installation guide
├── models/                      # gem5 C++ accelerator models
│   ├── LMulAccelerator.py      # Python wrapper for gem5
│   ├── lmul_accelerator.hh     # C++ header
│   ├── lmul_accelerator.cc     # C++ implementation
│   └── SConscript              # Build configuration
├── configs/                     # gem5 system configurations
│   ├── lmul_system.py          # Full system with LMUL accelerator
│   ├── lmul_se.py              # Syscall emulation mode
│   └── common_config.py        # Shared configuration utilities
├── benchmarks/                  # Accelerator benchmarks
│   ├── matrix_multiply/        # Matrix multiplication benchmarks
│   ├── neural_network/         # NN layer benchmarks
│   └── microbenchmarks/        # Unit tests
├── tests/                       # Verification tests
│   ├── unit_tests/             # Component-level tests
│   └── integration_tests/      # System-level tests
└── scripts/                     # Utility scripts
    ├── run_simulation.sh       # Main simulation runner
    ├── extract_stats.py        # Parse gem5 statistics
    └── compare_results.py      # Compare LMUL vs IEEE
```

## Quick Start

### 1. Install gem5

**🐳 Docker Users (macOS)**: See `DOCKER_SETUP.md` (recommended)  
**💻 Native Linux**: See `SETUP.md` for detailed instructions

```bash
# Docker (inside your dev container):
apt-get install -y m4 scons zlib1g-dev libprotobuf-dev \
    protobuf-compiler libgoogle-perftools-dev libboost-all-dev \
    gcc-arm-linux-gnueabi
cd /workspace
git clone https://github.com/gem5/gem5.git
cd gem5 && git checkout stable
scons build/ARM/gem5.opt -j$(nproc)

# Native Linux:
cd /workspaces/LMUL-Hardware-Acceleration
git clone https://github.com/gem5/gem5.git
cd gem5
scons build/ARM/gem5.opt -j$(nproc)
```

### 2. Install Accelerator Model

```bash
# Copy accelerator model to gem5
cd /workspaces/LMUL-Hardware-Acceleration
./gem5/scripts/install_model.sh
```

### 3. Run Simple Test

```bash
# Run matrix multiply benchmark
./gem5/scripts/run_simulation.sh \
    --benchmark matrix_multiply \
    --size 128 \
    --mode lmul

# Extract and view results
python3 gem5/scripts/extract_stats.py \
    --output m5out/stats.txt
```

## What You'll Get

### Performance Metrics
- **Execution time**: Total cycles and wall-clock time
- **Throughput**: Operations per second (GOPS)
- **Utilization**: Accelerator busy vs idle time
- **Memory bandwidth**: Bytes transferred per second

### System Metrics
- **Cache behavior**: Hit rates, misses, evictions
- **Memory latency**: Average read/write latency
- **DMA overhead**: Data transfer costs
- **CPU overhead**: Driver and scheduling costs

### Comparison Results
- LMUL accelerator vs IEEE BF16 accelerator
- Software (CPU) vs hardware (accelerator)
- Different matrix sizes and workloads
- Energy and power estimates

## Key Concepts

### gem5 Simulation Modes

**1. Syscall Emulation (SE) - Simpler, Faster**
- Runs user-space programs directly
- No OS overhead
- Good for initial testing
- **Recommended for starting**

**2. Full-System (FS) - Complete, Realistic**
- Boots actual Linux kernel
- Complete OS stack
- Realistic but slower
- Good for final evaluation

### Accelerator Integration Approaches

**Option A: Memory-Mapped I/O (MMIO)**
```
CPU → MMIO Registers → Accelerator
      ↓
      Memory (DMA)
```
- Simple interface
- Standard approach
- What we'll implement first

**Option B: Cache-Coherent Interconnect**
```
CPU ← Coherent Bus → Accelerator
      ↑
      Shared Cache
```
- More complex
- Better performance
- Future enhancement

### Performance Model Fidelity

**Functional Model (Phase 1)**
- Correct results, approximate timing
- Fast simulation
- Good for initial validation

**Timing Model (Phase 2)**
- Cycle-accurate accelerator
- Realistic memory modeling
- Slower but accurate

## Usage Examples

### Example 1: Basic Matrix Multiply

```bash
# 128x128 matrix multiply with LMUL
./gem5/scripts/run_simulation.sh \
    --benchmark matrix_multiply \
    --size 128 \
    --accelerator lmul \
    --output results/lmul_128.txt

# Compare with IEEE BF16
./gem5/scripts/run_simulation.sh \
    --benchmark matrix_multiply \
    --size 128 \
    --accelerator ieee \
    --output results/ieee_128.txt

# Compare results
python3 gem5/scripts/compare_results.py \
    results/lmul_128.txt \
    results/ieee_128.txt
```

### Example 2: Neural Network Layer

```bash
# Simulate fully-connected layer
./gem5/scripts/run_simulation.sh \
    --benchmark fc_layer \
    --input_size 784 \
    --output_size 128 \
    --batch_size 32 \
    --accelerator lmul
```

### Example 3: Sweep Different Configurations

```bash
# Test various PE array sizes
for size in 4 8 16; do
    ./gem5/scripts/run_simulation.sh \
        --benchmark matrix_multiply \
        --pe_array_size $size \
        --accelerator lmul \
        --output results/pe_${size}x${size}.txt
done
```

## Implementation Roadmap

### Phase 1: Basic Integration (Week 1-2)
- ✅ Set up gem5 environment
- ✅ Create functional LMUL accelerator model
- ✅ MMIO register interface
- ✅ Simple matrix multiply test
- ✅ Extract basic performance metrics

### Phase 2: System Integration (Week 2-3)
- ⬜ DMA engine for data transfers
- ⬜ Memory buffer management
- ⬜ Interrupt-based completion
- ⬜ Driver software for Linux

### Phase 3: Realistic Workloads (Week 3-4)
- ⬜ Neural network layer benchmarks
- ⬜ MNIST inference
- ⬜ LSTM operations
- ⬜ Batch processing

### Phase 4: Comparison & Optimization (Week 4-5)
- ⬜ LMUL vs IEEE accelerator comparison
- ⬜ Different PE array configurations
- ⬜ Memory bandwidth sensitivity analysis
- ⬜ Power/performance trade-offs
- ⬜ Publication-quality results

## Expected Results

### LMUL Accelerator Benefits:
1. **Higher throughput**: 3× more PEs in same area → 3× peak GOPS
2. **Better energy efficiency**: 3× less power per operation
3. **Memory bandwidth bound**: Actual speedup depends on memory system

### Key Questions Answered:
- What is the **actual speedup** for end-to-end applications?
- Is the accelerator **compute-bound or memory-bound**?
- How much overhead is there from **CPU-accelerator communication**?
- What is the optimal **PE array size** for realistic workloads?
- How does **memory bandwidth** affect utilization?

## Validation Strategy

### Correctness Validation:
1. Compare gem5 results with Verilog RTL simulation
2. Verify against software LMUL implementation
3. Check edge cases (overflow, underflow, zeros)

### Performance Validation:
1. Verify cycle counts match timing estimates
2. Check memory bandwidth utilization
3. Compare against analytical models

## Resources

### gem5 Documentation
- Official: https://www.gem5.org/documentation/
- Learning gem5: http://learning.gem5.org/
- Examples: gem5/configs/example/

### Related Projects
- GPU integration examples
- Custom accelerator tutorials
- Memory-mapped device examples

## Next Steps

1. **Start here**: Follow `SETUP.md` to install gem5
2. **Understand models**: Read `models/README.md`
3. **Run first test**: Execute simple matrix multiply
4. **Iterate**: Gradually add complexity

## Troubleshooting

See individual component READMEs and:
- `SETUP.md` - Installation issues
- `models/README.md` - Model implementation
- `configs/README.md` - Configuration problems
- `benchmarks/README.md` - Benchmark issues

## Contact & Contribution

This is part of the LMUL Hardware Acceleration project for evaluating logarithmic multiplication in neural network accelerators.
