# Matrix Size Analysis for gem5 Simulation

## Constraints

### 1. Memory Constraints
- **System Memory**: 512MB
- **BF16 element size**: 2 bytes
- **Memory needed for N×N matrices**:
  - Matrix A: N × N × 2 bytes
  - Matrix B: N × N × 2 bytes  
  - Matrix C: N × N × 2 bytes
  - **Total: 6 × N² bytes**

| Matrix Size | Memory Required | % of 512MB |
|-------------|----------------|------------|
| 4×4         | 96 bytes       | 0.00002%   |
| 8×8         | 384 bytes      | 0.00007%   |
| 16×16       | 1.5 KB         | 0.0003%    |
| 32×32       | 6 KB           | 0.001%     |
| 64×64       | 24 KB          | 0.005%     |
| 128×128     | 96 KB          | 0.02%      |
| 256×256     | 384 KB         | 0.07%      |
| 512×512     | 1.5 MB         | 0.3%       |
| 1024×1024   | 6 MB           | 1.2%       |
| 2048×2048   | 24 MB          | 4.7%       |
| 4096×4096   | 96 MB          | 18.8%      |
| 8192×8192   | 384 MB         | 75%        |

**Memory limit**: ~9,460×9,460 (theoretical maximum)

### 2. Simulation Time Constraints (The Real Limiter)

gem5 detailed timing simulation is **slow**. Based on our test:
- **simple_test** (1000 iterations): ~0.000390 seconds simulated, took real time to run
- **Matrix multiply** will be much slower due to:
  - More instructions
  - Memory accesses
  - Accelerator timing model

**Estimated simulation times** (rough estimates):

| Matrix Size | Operations | Estimated Real Time | Notes |
|-------------|------------|-------------------|-------|
| 4×4         | 64 ops     | 1-5 minutes        | Quick test |
| 8×8         | 512 ops    | 5-15 minutes       | Default |
| 16×16       | 4,096 ops  | 30-60 minutes      | Moderate |
| 32×32       | 32,768 ops | 2-4 hours          | Long |
| 64×64       | 262,144 ops| 8-16 hours         | Very long |
| 128×128     | 2M ops     | Days               | Impractical |

### 3. Accelerator Timing Model

With 4×4 PE array (16 parallel ops):
- **4×4 matrix**: 64 ops / 16 = 4 cycles (very fast)
- **8×8 matrix**: 512 ops / 16 = 32 cycles
- **16×16 matrix**: 4,096 ops / 16 = 256 cycles
- **32×32 matrix**: 32,768 ops / 16 = 2,048 cycles

The accelerator timing scales well, but gem5 simulation time doesn't.

## Recommended Matrix Sizes

### For Quick Verification (Accuracy Testing)
- **4×4**: Best for rapid iteration, verify correctness
- **8×8**: Good balance, default size

### For Performance Evaluation
- **16×16**: Reasonable for meaningful metrics
- **32×32**: Maximum practical size (expect 2-4 hour runs)

### For Comprehensive Testing
- **64×64+**: Only if you have hours/days and need large-scale data
- **Not recommended** for regular testing

## Current Defaults

- **Test mode**: 4×4 (quick verification)
- **Default**: 8×8 (balanced)
- **Scripts support**: Up to any size, but practical limit is ~32×32

## Recommendations

1. **Start with 4×4** for initial verification
2. **Use 8×8** for standard testing
3. **Use 16×16** for performance analysis
4. **Avoid 32×32+** unless absolutely necessary (very long simulation times)

## Notes

- Memory is **not** the constraint (we have 512MB)
- **Simulation time** is the real limiter
- gem5 detailed timing is inherently slow
- Consider using `gem5.fast` build for larger tests (less accurate but faster)
