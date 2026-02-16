# Pipeline Explanation

## Pipeline Stages Overview

The accelerator implements a **5-stage pipeline** to process matrix multiplications:

```
Cycle:  0    1    2    3    4    5    6    7    8    9   10
        │    │    │    │    │    │    │    │    │    │    │
Stage1: [R1] [R2] [R3] [R4] [R5] [R6] [R7] [R8] ...
        │    │    │    │    │    │    │    │
Stage2:      [D1] [D2] [D3] [D4] [D5] [D6] [D7] ...
        │    │    │    │    │    │    │    │
Stage3:           [C1] [C2] [C3] [C4] [C5] [C6] ...
        │    │    │    │    │    │    │    │
Stage4:                [A1] [A2] [A3] [A4] [A5] ...
        │    │    │    │    │    │    │    │
Stage5:                     [W1] [W2] [W3] [W4] ...
```

**Legend:**
- R = Memory Read
- D = Data Distribution
- C = Compute (PE Array)
- A = Accumulation
- W = Memory Write

## Stage Details

### Stage 1: Memory Read
- **Function**: Load activation and weight from buffers
- **Latency**: 1 cycle (combinational read)
- **Throughput**: 1 read per cycle
- **Key Signals**: `rd_addr_act`, `rd_addr_weight`, `rd_data_act`, `rd_data_weight`

### Stage 2: Data Distribution
- **Function**: Broadcast data to PE array
- **Latency**: 1 cycle (register stage)
- **Throughput**: Broadcasts to all 16 PEs simultaneously
- **Key Signals**: `stage2_activations[4]`, `stage2_weights[4]`

### Stage 3: PE Array Compute
- **Function**: Multiply activations × weights in parallel
- **Latency**: 1 cycle (PE has registered output)
- **Throughput**: 16 multiplications per cycle (4×4 array)
- **Key Signals**: `pe_products[4][4]`, `pe_valid`

### Stage 4: Accumulation
- **Function**: Sum partial products across columns
- **Latency**: 1 cycle (combinational tree)
- **Throughput**: 4 sums per cycle (one per row)
- **Key Signals**: `stage4_sums[4]`

### Stage 5: Memory Write
- **Function**: Store results back to buffer
- **Latency**: 1 cycle (write operation)
- **Throughput**: 1 write per cycle
- **Key Signals**: `wr_addr`, `wr_data`, `wr_en`

## Pipeline Behavior

### Initial Latency (Pipeline Fill)
- **First result**: Available after 5 cycles
- This is the **pipeline depth**

### Steady State (Pipeline Full)
- **Throughput**: 1 operation per cycle
- All stages working in parallel
- **Efficiency**: 100% (all stages busy)

### Example Timeline

For a 4×4 matrix multiply:

```
Cycle 0: Start, Stage1 reads (0,0)
Cycle 1: Stage1 reads (0,1), Stage2 distributes (0,0)
Cycle 2: Stage1 reads (0,2), Stage2 distributes (0,1), Stage3 computes (0,0)
Cycle 3: Stage1 reads (0,3), Stage2 distributes (0,2), Stage3 computes (0,1), Stage4 accumulates (0,0)
Cycle 4: Stage1 reads (1,0), Stage2 distributes (0,3), Stage3 computes (0,2), Stage4 accumulates (0,1), Stage5 writes (0,0)
Cycle 5: First result written! Pipeline now full
...
```

## Performance Metrics

### Latency
- **Pipeline depth**: 5 cycles
- **First result**: Cycle 5
- **Total for 4×4 matrix**: ~20 cycles (4×4 + pipeline overhead)

### Throughput
- **Peak**: 1 operation/cycle (after pipeline fill)
- **PE Array**: 16 multiplications in parallel
- **Effective**: 16 ops/cycle when pipeline is full

### Utilization
- **After pipeline fill**: 100% (all stages busy)
- **During fill**: Lower (stages filling up)
- **Overall**: High for large matrices

## Viewing Pipeline in Simulation

### Vivado Simulation

1. Run simulation
2. Add these signals to waveform:
   - `stage1_valid`
   - `stage2_valid`
   - `stage3_valid` (or `pe_valid`)
   - `stage4_valid`
   - `stage5_valid` (or `wr_en`)
   - `cycle_count`

3. You'll see:
   - Valid signals staggered by 1 cycle
   - Pipeline filling up over first 5 cycles
   - All stages active after cycle 5

### Key Observations

- **Pipeline fill**: First 5 cycles show stages activating sequentially
- **Steady state**: After cycle 5, all valid signals high simultaneously
- **Backpressure**: If `o_ready` goes low, pipeline stalls (all stages)

## Optimizations

### Current Design
- Simple pipeline, easy to understand
- Good for learning pipeline behavior

### Potential Improvements
1. **Deeper pipeline**: Add more stages for higher frequency
2. **Parallel memory ports**: Multiple reads/writes per cycle
3. **PE array tiling**: Process larger matrices
4. **Double buffering**: Overlap computation and memory access
