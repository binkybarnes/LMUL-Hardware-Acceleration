# LMUL Accelerator Model

This directory contains the gem5 device model for the LMUL hardware accelerator.

## Files

- `lmul_accelerator.hh` - C++ header defining the accelerator device class
- `lmul_accelerator.cc` - C++ implementation with functional and timing models
- `LMulAccelerator.py` - Python parameter class for gem5 configuration
- `SConscript` - Build configuration for gem5's SCons build system

## Architecture

### Device Type
The LMUL accelerator is implemented as a `BasicPioDevice` (memory-mapped I/O device).

**Base Address**: 0x10000000 (configurable)
**Register Space**: 4KB (0x1000 bytes)

### Register Map

| Offset | Name         | Access | Description                    |
|--------|--------------|--------|--------------------------------|
| 0x00   | CONTROL      | R/W    | Control register               |
| 0x04   | STATUS       | R      | Status register                |
| 0x08   | A_ADDR       | R/W    | Input matrix A address         |
| 0x0C   | B_ADDR       | R/W    | Input matrix B address         |
| 0x10   | C_ADDR       | R/W    | Output matrix C address        |
| 0x14   | M_SIZE       | R/W    | M dimension (A rows)           |
| 0x18   | N_SIZE       | R/W    | N dimension (A cols, B rows)   |
| 0x1C   | P_SIZE       | R/W    | P dimension (B cols)           |
| 0x20   | PE_CONFIG    | R      | PE array configuration         |
| 0x24   | CYCLES       | R      | Cycle counter                  |
| 0x28   | OPS_COUNT    | R      | Operations counter             |
| 0x2C   | ERROR        | R      | Error code                     |

### Control Bits (0x00)

- Bit 0: START - Start computation
- Bit 1: RESET - Reset accelerator
- Bit 2: IRQ_EN - Enable interrupt on completion
- Bit 3: DMA_EN - Enable DMA transfers

### Status Bits (0x04)

- 0x00: IDLE - Ready for new operation
- 0x01: BUSY - Computation in progress
- 0x02: DONE - Computation complete
- 0x04: ERROR - Error occurred

## Operation Sequence

### Software Interface

```c
// 1. Configure operation
*REG_A_ADDR = (uint32_t)matrix_a;
*REG_B_ADDR = (uint32_t)matrix_b;
*REG_C_ADDR = (uint32_t)matrix_c;
*REG_M_SIZE = M;
*REG_N_SIZE = N;
*REG_P_SIZE = P;

// 2. Start computation
*REG_CONTROL = CTRL_START;

// 3. Wait for completion
while (*REG_STATUS == STAT_BUSY);

// 4. Check result
if (*REG_STATUS == STAT_DONE) {
    // Success! Read statistics
    uint32_t cycles = *REG_CYCLES;
    uint32_t ops = *REG_OPS_COUNT;
}
```

## Timing Model

### Compute Time

```
total_ops = M × N × P
parallel_ops = pe_rows × pe_cols
compute_cycles = (total_ops / parallel_ops) × compute_latency
```

### Memory Time

```
total_elements = (M×N) + (N×P) + (M×P)
total_bytes = total_elements × 2  // BF16 = 2 bytes
memory_cycles = (total_bytes / cache_line_size) × memory_latency
```

### Total Latency

```
total_time = max(compute_time, memory_time) + dma_overhead
```

## Functional Model

The functional model implements:

### LMUL BF16 Multiplication

```
// Logarithmic multiplication
result_fld = (a_exp + a_mant) + (b_exp + b_mant) - BIAS
result_sign = a_sign XOR b_sign

// Handle overflow/underflow
if (overflow) result_fld = MAX
if (underflow) result_fld = 0
```

### IEEE BF16 Multiplication (for comparison)

```
// Standard IEEE 754 BF16
result = float(a) * float(b)
```

## Configuration Parameters

Set via Python when instantiating:

```python
lmul_accel = LMulAccelerator(
    pio_addr=0x10000000,
    pe_array_rows=8,        # 8x8 = 64 PEs
    pe_array_cols=8,
    compute_latency=1,      # 1 cycle per op (LMUL)
    memory_latency=100,     # 100 cycles per cache miss
    use_lmul=True          # True=LMUL, False=IEEE
)
```

## Statistics

The model collects these statistics:

| Statistic      | Description                          |
|----------------|--------------------------------------|
| numReads       | Number of register reads             |
| numWrites      | Number of register writes            |
| numStarts      | Number of operations started         |
| numCompletions | Number of operations completed       |
| totalCycles    | Total compute cycles                 |
| totalOps       | Total operations performed           |
| opLatency      | Histogram of operation latencies     |

Access via:
```bash
grep "lmul_accel" m5out/stats.txt
```

## Development Notes

### Adding New Features

1. **Add new register**:
   - Update `Registers` enum in .hh
   - Add read/write case in .cc
   - Update register map documentation

2. **Modify timing model**:
   - Edit `estimateComputeTime()` or `estimateMemoryTime()`
   - Adjust for pipeline stages, memory bandwidth, etc.

3. **Add statistics**:
   - Add to `Stats` struct in .hh
   - Initialize in `Stats::Stats()` constructor
   - Update in appropriate methods

### Debugging

Enable debug output:
```bash
./build/ARM/gem5.opt \
    --debug-flags=LMulAccel \
    configs/lmul_system.py ...
```

Verbose mode:
```bash
./build/ARM/gem5.opt \
    --debug-flags=LMulAccelVerbose \
    configs/lmul_system.py ...
```

## Validation

Compare with RTL simulation:

```python
# gem5 functional model should match Verilog RTL
assert gem5_result == verilog_result
```

Compare timing:

```python
# Cycle counts should be within reasonable range
expected_cycles = (M * N * P) / (PE_rows * PE_cols)
assert abs(gem5_cycles - expected_cycles) / expected_cycles < 0.1
```

## Future Enhancements

- [ ] DMA engine implementation
- [ ] Interrupt support
- [ ] Cache coherence
- [ ] Pipeline modeling (more detailed)
- [ ] Power modeling
- [ ] Multiple outstanding operations
- [ ] AXI interface (instead of simple PIO)

## References

- gem5 Device Model Tutorial: http://learning.gem5.org/book/part2/memoryobject.html
- LMUL RTL: `../../rtl/lmul_bf16.v`
- System Integration: `../../synthesis/ACCELERATOR_DESIGN_GUIDE.md`
