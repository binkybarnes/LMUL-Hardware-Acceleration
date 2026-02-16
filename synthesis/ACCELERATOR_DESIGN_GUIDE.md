# Full Accelerator Design Guide

This guide outlines how to design, synthesize, and analyze a complete hardware accelerator system (not just a single multiplier unit).

## 1. Accelerator Architecture Components

### Core Components Needed:

1. **Processing Element (PE) Array**
   - Multiple multiplier units (L-Mul or IEEE BF16)
   - Arranged in systolic array or parallel configuration
   - Example: 8×8 PE array = 64 multipliers

2. **Memory System**
   - Weight buffer (SRAM/BRAM)
   - Activation buffer (SRAM/BRAM)
   - Memory controller
   - DMA for data movement

3. **Control Logic**
   - State machine for matrix multiplication
   - Address generation
   - Data flow orchestration

4. **Accumulation Tree**
   - Adders to sum partial products
   - Reduction tree for dot products

5. **Pipeline Stages**
   - Input pipeline
   - Compute pipeline
   - Output pipeline

## 2. Design Steps

### Step 1: Create PE Array Module

```verilog
// rtl/pe_array.v
module pe_array #(
    parameter ROWS = 8,
    parameter COLS = 8,
    parameter DATA_WIDTH = 16
)(
    input  wire clk,
    input  wire rstn,
    // Input data streams
    input  wire [ROWS-1:0][DATA_WIDTH-1:0] i_activations,
    input  wire [COLS-1:0][DATA_WIDTH-1:0] i_weights,
    input  wire i_valid,
    output wire i_ready,
    // Output results
    output wire [ROWS-1:0][COLS-1:0][DATA_WIDTH-1:0] o_results,
    output wire o_valid,
    input  wire o_ready
);
    // Instantiate ROWS × COLS multiplier units
    // Connect in systolic or parallel fashion
    // Add accumulation logic
endmodule
```

### Step 2: Create Memory Interface

```verilog
// rtl/memory_controller.v
module memory_controller #(
    parameter ADDR_WIDTH = 16,
    parameter DATA_WIDTH = 16,
    parameter BUFFER_SIZE = 1024
)(
    input  wire clk,
    input  wire rstn,
    // External memory interface
    output wire [ADDR_WIDTH-1:0] mem_addr,
    output wire mem_we,
    output wire [DATA_WIDTH-1:0] mem_wdata,
    input  wire [DATA_WIDTH-1:0] mem_rdata,
    // Buffer interface
    output wire [DATA_WIDTH-1:0] buffer_data,
    output wire buffer_valid,
    input  wire buffer_ready
);
    // Implement buffer (SRAM/BRAM)
    // Handle memory transactions
    // Manage data flow
endmodule
```

### Step 3: Create Matrix Multiplication Controller

```verilog
// rtl/matmul_controller.v
module matmul_controller #(
    parameter M = 128,  // Input rows
    parameter N = 128,  // Input cols / Weight rows
    parameter P = 64,   // Weight cols / Output cols
    parameter TILE_SIZE = 8
)(
    input  wire clk,
    input  wire rstn,
    // Control
    input  wire start,
    output wire done,
    // Memory interfaces
    // ... connect to memory controllers
    // PE array interface
    // ... connect to PE array
);
    // State machine for tiled matrix multiplication
    // Address generation
    // Data flow control
endmodule
```

### Step 4: Create Top-Level Accelerator

```verilog
// rtl/accelerator_top.v
module accelerator_top (
    input  wire clk,
    input  wire rstn,
    // Host interface (AXI, AHB, or simple)
    input  wire [31:0] host_addr,
    input  wire [31:0] host_wdata,
    output wire [31:0] host_rdata,
    input  wire host_we,
    input  wire host_valid,
    output wire host_ready
);
    // Instantiate all components
    // Connect memory, PE array, controller
endmodule
```

## 3. Synthesis Strategy

### Option A: Full System Synthesis
- Synthesize entire accelerator
- Extract total area, power, timing
- Compare L-Mul vs IEEE BF16 accelerators

### Option B: Hierarchical Synthesis
1. Synthesize PE array separately
2. Synthesize memory controllers separately
3. Synthesize control logic separately
4. Combine metrics with interconnect estimates

### Option C: Tiled Approach (Recommended)
- Design a "tile" (e.g., 8×8 PE array + local buffers)
- Synthesize the tile
- Scale metrics for full system

## 4. Key Metrics to Extract

### Area Metrics:
- **Total area** (all components)
- **PE array area** (compute units)
- **Memory area** (buffers, controllers)
- **Control area** (FSM, address gen)
- **Interconnect area** (routing)

### Performance Metrics:
- **Throughput** (GOPS - Giga Operations Per Second)
  - = (PE_count × frequency) / cycles_per_op
- **Latency** (cycles to complete matrix multiply)
- **Utilization** (% of PEs active)
- **Memory bandwidth** (bytes/cycle)

### Power Metrics:
- **Static power** (leakage)
- **Dynamic power** (switching)
- **Power efficiency** (GOPS/Watt)

### Efficiency Metrics:
- **Area efficiency** (GOPS/mm²)
- **Energy per operation** (pJ/op)
- **Throughput per area** (GOPS/area_unit)

## 5. Simulation Approach

### Functional Simulation:
```python
# sim/accelerator_simulator.py
class AcceleratorSimulator:
    def __init__(self, pe_array_size=(8,8), use_lmul=True):
        self.pe_array = PEArray(pe_array_size, use_lmul)
        self.memory = MemoryController()
        self.controller = MatMulController()
    
    def run_matrix_multiply(self, A, B):
        # Load matrices into memory
        # Configure controller
        # Run simulation
        # Collect results
        pass
    
    def extract_metrics(self):
        return {
            'cycles': self.cycle_count,
            'throughput': self.ops_per_cycle,
            'utilization': self.pe_utilization,
            'memory_accesses': self.mem_access_count
        }
```

### Cycle-Accurate Simulation:
- Use Verilog testbench
- Feed real matrix data
- Measure cycle counts
- Track memory accesses
- Calculate throughput

## 6. Implementation Plan

### Phase 1: PE Array (Week 1-2)
1. Design 4×4 PE array
2. Synthesize and compare L-Mul vs IEEE
3. Extract area, timing, power

### Phase 2: Memory System (Week 2-3)
1. Design weight/activation buffers
2. Implement memory controller
3. Synthesize and measure

### Phase 3: Control Logic (Week 3-4)
1. Design matrix multiply controller
2. Implement tiling logic
3. Synthesize and measure

### Phase 4: Integration (Week 4-5)
1. Integrate all components
2. Full system synthesis
3. Performance simulation
4. Compare L-Mul vs IEEE accelerators

## 7. Expected Results

### L-Mul Accelerator Advantages:
- **3× more PEs** in same area → 3× higher peak throughput
- **3× less power** per PE → 3× better energy efficiency
- **Better utilization** (more parallelism)

### Key Comparisons:
- Peak GOPS (L-Mul should be 3× higher)
- Energy per operation (L-Mul should be 3× better)
- Area efficiency (L-Mul should be 3× better)
- Actual throughput (depends on memory bandwidth)

## 8. Tools Needed

- **Synthesis**: Yosys (already have)
- **Timing**: OpenSTA (already have)
- **Power**: Power estimation tools (or use area as proxy)
- **Simulation**: Icarus Verilog (already have)
- **Analysis**: Python scripts for metrics extraction

## 9. Quick Start: Simple PE Array

A basic PE array has been created as a starting point:

**Files Created:**
- `synthesis/rtl/pe_array_simple.v` - Simple 4×4 PE array (parameterized)
- `synthesis/scripts/synth_pe_array_lmul.ys` - L-Mul PE array synthesis
- `synthesis/scripts/synth_pe_array_ieee.ys` - IEEE BF16 PE array synthesis
- `synthesis/scripts/extract_accelerator_metrics.py` - Metrics extraction

**To synthesize and compare:**

```bash
# Synthesize L-Mul PE array (4×4 = 16 PEs)
cd /workspaces/LMUL-Hardware-Acceleration
yosys -s synthesis/scripts/synth_pe_array_lmul.ys | tee synthesis/out/pe_array_lmul.log

# Synthesize IEEE BF16 PE array (4×4 = 16 PEs)
yosys -s synthesis/scripts/synth_pe_array_ieee.ys | tee synthesis/out/pe_array_ieee.log

# Extract and compare metrics
python3 synthesis/scripts/extract_accelerator_metrics.py \
    synthesis/out/pe_array_lmul.log \
    synthesis/out/pe_array_ieee.log \
    16 16
```

**Expected Results:**
- L-Mul PE array: ~16 × 180.88 = **~2,894 units** (16 PEs)
- IEEE PE array: ~16 × 545.03 = **~8,720 units** (16 PEs)
- **Same area** → L-Mul can fit **3× more PEs** (48 vs 16)
- **3× higher throughput** potential at system level!

## 10. Metrics Extraction Script

```python
# synthesis/scripts/extract_accelerator_metrics.py
def extract_accelerator_metrics(log_file):
    """Extract metrics from full accelerator synthesis"""
    metrics = {
        'total_area': extract_total_area(log_file),
        'pe_array_area': extract_pe_area(log_file),
        'memory_area': extract_memory_area(log_file),
        'control_area': extract_control_area(log_file),
        'total_cells': extract_cell_count(log_file),
        'max_frequency': extract_max_freq(log_file),
        'critical_path': extract_critical_path(log_file)
    }
    
    # Calculate derived metrics
    metrics['area_efficiency'] = calculate_area_efficiency(metrics)
    metrics['power_estimate'] = estimate_power(metrics)
    
    return metrics
```
