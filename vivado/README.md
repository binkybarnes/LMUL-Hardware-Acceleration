# Vivado Full System Accelerator

This directory contains a complete pipeline accelerator design for Vivado synthesis.

## Quick Start

### Option 1: Create Project with Tcl Script (Recommended)

```bash
cd /workspaces/LMUL-Hardware-Acceleration
vivado -mode batch -source vivado/scripts/create_project.tcl
vivado vivado/lmul_accelerator/lmul_accelerator.xpr
```

### Option 2: Manual Setup

```bash
# Launch Vivado
vivado

# Create new project:
# 1. File → New Project
# 2. Name: lmul_accelerator
# 3. Location: /workspaces/LMUL-Hardware-Acceleration/vivado/
# 4. Type: RTL Project
# 5. Add sources: Add all .v files from:
#    - vivado/rtl/*.v
#    - rtl/lmul_bf16.v (or copy it here)
#    - synthesis/rtl/bf16_mul.v (for IEEE version)
# 6. Default Part: xc7a100tcsg324-1 (Artix-7, or any FPGA)
```

### 2. Add Memory IP (Optional but Recommended)

**For better memory implementation:**

1. Flow Navigator → IP Catalog
2. Search: "Block Memory Generator"
3. Configure:
   - Memory Type: Simple Dual Port RAM
   - Write Width: 16
   - Write Depth: 1024
   - Read Width: 16
   - Read Depth: 1024
4. Generate → Add to project
5. Replace `simple_buffer` instantiation with BRAM IP

### 3. Run Synthesis

**In GUI:**
- Flow Navigator → Run Synthesis

**Or Tcl console:**
```tcl
synth_design -top accelerator_top
report_utilization
report_timing
```

### 4. Simulate Pipeline

**In GUI:**
- Flow Navigator → Run Simulation → Run Behavioral Simulation
- Add `vivado/tb/accelerator_tb.v` as testbench
- View waveforms to see pipeline stages

**Or command line:**
```bash
xvlog vivado/tb/accelerator_tb.v vivado/rtl/*.v rtl/lmul_bf16.v
xelab accelerator_tb
xsim accelerator_tb -runall
```

## Understanding the Pipeline

The accelerator has **5 pipeline stages**:

1. **Memory Read**: Load activations and weights
2. **Data Distribution**: Broadcast to PE array
3. **Compute**: PE array multiplication
4. **Accumulation**: Sum partial products
5. **Memory Write**: Store results

**Key Metrics:**
- **Latency**: ~5 cycles (pipeline depth)
- **Throughput**: 1 operation/cycle (after pipeline fill)
- **PE Array**: 4×4 = 16 multipliers in parallel

## Files

- `vivado/rtl/accelerator_top.v` - Top-level with full pipeline
- `vivado/rtl/pe_array_pipelined.v` - Pipelined PE array
- `vivado/rtl/simple_buffer.v` - Memory buffer (replace with BRAM IP)
- `vivado/tb/accelerator_tb.v` - Testbench

## Next Steps

1. ✅ Synthesize and check resource utilization
2. ✅ Replace `simple_buffer` with Vivado BRAM IP
3. ✅ Add AXI interface (optional)
4. ✅ Optimize pipeline based on timing results
5. ✅ Compare L-Mul vs IEEE BF16 at system level
