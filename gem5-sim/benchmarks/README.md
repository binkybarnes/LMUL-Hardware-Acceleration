# LMUL Accelerator Benchmarks

Benchmarks for evaluating LMUL accelerator performance in gem5.

## Directory Structure

```
benchmarks/
├── README.md              # This file
├── matrix_multiply/       # Matrix multiplication benchmark
│   ├── matrix_multiply.c
│   ├── Makefile
│   └── README.md
├── neural_network/        # NN layer benchmarks (future)
└── microbenchmarks/       # Unit tests (future)
```

## Available Benchmarks

### 1. Matrix Multiply

**Location**: `matrix_multiply/`

Basic matrix multiplication using the LMUL accelerator.

**Features**:
- Configurable matrix dimensions (M×N × N×P)
- Can use accelerator or CPU
- Reports cycles, throughput, utilization
- BF16 precision

**Usage**:
```bash
cd matrix_multiply
make
./matrix_multiply.arm M N P [use_accel]

# Examples:
./matrix_multiply.arm 8 8 8 1      # 8×8 with accelerator
./matrix_multiply.arm 16 16 16 0   # 16×16 with CPU
```

**In gem5**:
```bash
./scripts/run_simulation.sh \
    --benchmark matrix_multiply \
    --size 32
```

## Writing Benchmarks

### Benchmark Structure

```c
#include <stdio.h>
#include <stdint.h>

// LMUL register access
#define LMUL_BASE_ADDR   0x10000000
#define LMUL_REG(offset) (*((volatile uint32_t*)(LMUL_BASE_ADDR + offset)))

int main(int argc, char *argv[]) {
    // 1. Parse arguments
    // 2. Allocate data
    // 3. Initialize inputs
    // 4. Configure accelerator
    // 5. Start computation
    // 6. Wait for completion
    // 7. Verify results
    // 8. Report statistics
    return 0;
}
```

### Using the Accelerator

```c
// Configure
LMUL_REG(REG_A_ADDR) = (uint32_t)(uintptr_t)input_a;
LMUL_REG(REG_B_ADDR) = (uint32_t)(uintptr_t)input_b;
LMUL_REG(REG_C_ADDR) = (uint32_t)(uintptr_t)output;
LMUL_REG(REG_M_SIZE) = m;
LMUL_REG(REG_N_SIZE) = n;
LMUL_REG(REG_P_SIZE) = p;

// Start
LMUL_REG(REG_CONTROL) = CTRL_START;

// Wait
while (LMUL_REG(REG_STATUS) == STAT_BUSY);

// Check result
if (LMUL_REG(REG_STATUS) == STAT_DONE) {
    uint32_t cycles = LMUL_REG(REG_CYCLES);
    uint32_t ops = LMUL_REG(REG_OPS_COUNT);
    printf("Done: %u ops in %u cycles\n", ops, cycles);
}
```

### BF16 Helper Functions

```c
typedef uint16_t bf16_t;

bf16_t float_to_bf16(float f) {
    uint32_t bits;
    memcpy(&bits, &f, sizeof(float));
    uint32_t rounding = 0x7FFF + ((bits >> 16) & 1);
    bits += rounding;
    return (bf16_t)(bits >> 16);
}

float bf16_to_float(bf16_t bf16) {
    uint32_t bits = (uint32_t)bf16 << 16;
    float result;
    memcpy(&result, &bits, sizeof(float));
    return result;
}
```

### Cross-Compiling

**Makefile template**:

```makefile
CC = arm-linux-gnueabi-gcc
CFLAGS = -static -O2 -march=armv7-a
TARGET = my_benchmark
SOURCE = my_benchmark.c

$(TARGET).arm: $(SOURCE)
	$(CC) $(CFLAGS) -o $@ $<

clean:
	rm -f $(TARGET).arm
```

**Build**:
```bash
make
file my_benchmark.arm  # Verify: should be ARM ELF
```

## Benchmark Guidelines

### Good Practices

1. **Static linking**: Use `-static` flag for gem5 SE mode
2. **Optimization**: Use `-O2` or `-O3` for realistic performance
3. **Validation**: Verify results against known-good reference
4. **Statistics**: Report operations, cycles, throughput
5. **Parameterization**: Use command-line arguments for flexibility

### What to Measure

**Application-level**:
- Total execution time
- Operations performed
- Throughput (GOPS)

**Accelerator-level** (read from registers):
- Compute cycles
- Operations count
- Ops/cycle
- PE utilization

**System-level** (from gem5 stats):
- Total simulation time
- Memory bandwidth
- Cache hit rates
- CPU cycles

### Validation

Always validate correctness:

```c
// Compute reference on CPU
cpu_matrix_multiply(A, B, C_ref, M, N, P);

// Compute on accelerator
lmul_matrix_multiply(A, B, C_accel, M, N, P);

// Compare
int errors = 0;
for (int i = 0; i < M*P; i++) {
    float ref = bf16_to_float(C_ref[i]);
    float accel = bf16_to_float(C_accel[i]);
    if (fabs(ref - accel) / ref > 0.01) {  // 1% tolerance
        errors++;
    }
}
printf("Validation: %d errors\n", errors);
```

## Future Benchmarks

### Neural Network Layers

```
benchmarks/neural_network/
├── fc_layer.c          # Fully-connected layer
├── conv2d.c            # 2D convolution
├── lstm_cell.c         # LSTM cell
└── attention.c         # Attention mechanism
```

### Microbenchmarks

```
benchmarks/microbenchmarks/
├── single_multiply.c   # Single BF16 multiply
├── vector_dot.c        # Vector dot product
├── memory_bandwidth.c  # Memory transfer test
└── pe_utilization.c    # PE array utilization
```

### Real Applications

```
benchmarks/applications/
├── mnist_inference.c   # MNIST digit classification
├── resnet_block.c      # ResNet building block
└── transformer.c       # Transformer layer
```

## Integration with Scripts

Benchmarks work with `run_simulation.sh`:

```bash
# Convention: benchmarks are in benchmarks/<name>/
# Binary is <name>.arm

./scripts/run_simulation.sh --benchmark matrix_multiply
# Runs: benchmarks/matrix_multiply/matrix_multiply.arm
```

## Debugging Benchmarks

### Test without gem5

```bash
# If running on ARM system:
./my_benchmark.arm 4 4 4 0  # CPU mode

# If running on x86 with QEMU:
qemu-arm-static my_benchmark.arm 4 4 4 0
```

### Test in gem5

```bash
# Enable debug output
./build/ARM/gem5.opt \
    --debug-flags=LMulAccel \
    configs/lmul_system.py \
    --cmd benchmarks/my_benchmark/my_benchmark.arm
```

### Check correctness

Add verbose output:
```c
printf("Input A: "); print_matrix(A, M, N);
printf("Input B: "); print_matrix(B, N, P);
printf("Output C: "); print_matrix(C, M, P);
```

## Performance Tips

### Optimize memory access

```c
// Bad: strided access
for (int i = 0; i < M; i++)
    for (int j = 0; j < N; j++)
        sum += A[j * M + i];  // Cache-unfriendly

// Good: sequential access
for (int i = 0; i < M; i++)
    for (int j = 0; j < N; j++)
        sum += A[i * N + j];  // Cache-friendly
```

### Use aligned allocations

```c
// Align to cache line (64 bytes)
#define CACHE_LINE 64
void *A = aligned_alloc(CACHE_LINE, M * N * sizeof(bf16_t));
```

### Minimize accelerator overhead

```c
// Bad: many small operations
for (int i = 0; i < 100; i++) {
    lmul_multiply_1x1(a[i], b[i]);  // 100 calls
}

// Good: one large operation
lmul_multiply_MxN(A, B, C, 10, 10);  // 1 call
```

## Resources

- Matrix Multiply Example: `matrix_multiply/`
- LMUL Accelerator API: `../models/README.md`
- gem5 SE Mode: http://learning.gem5.org/book/part1/simple_config.html
- Cross-Compilation: https://wiki.osdev.org/Cross-Compiler

Happy benchmarking! 🚀
