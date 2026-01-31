# Vivado Full System Synthesis Guide

## Getting Started with Vivado

### Step 1: Install Vivado

**Option A: Full Installation (Recommended)**
1. Download Vivado from Xilinx website
2. Get free WebPack license (covers most FPGAs)
3. Install: `vivado_2023.x_webpack.bin` (or latest version)

**Option B: Docker (If Available)**
- Some Docker images include Vivado
- Check Xilinx documentation

**Option C: University License**
- Many universities have site licenses
- Check with your IT department

### Step 2: Create Vivado Project

```bash
# Launch Vivado
vivado

# Or use command line:
vivado -mode gui
```

**Create New Project:**
1. File → New Project
2. Project name: `lmul_accelerator`
3. Project location: `/workspaces/LMUL-Hardware-Acceleration/vivado/`
4. Project type: RTL Project
5. Add sources: Add all `.v` files from `rtl/` and `synthesis/rtl/`
6. Add constraints: Create new constraint file (or skip for now)
7. Default Part: Select any FPGA (e.g., `xc7a100tcsg324-1` for Artix-7)

## Project Structure

```
vivado/
├── project/              # Vivado project files
├── sources/
│   ├── rtl/              # RTL source files
│   └── constraints/       # XDC constraint files
├── ip/                    # Generated IP cores
└── results/               # Synthesis/implementation results
```

## Using Vivado IP Generators

### BRAM (Block RAM) for Memory Buffers

**In Vivado GUI:**
1. Flow Navigator → IP Catalog
2. Search: "Block Memory Generator"
3. Configure:
   - Memory Type: Simple Dual Port RAM
   - Write Width: 16 (BF16)
   - Write Depth: 1024 (or your size)
   - Read Width: 16
   - Read Depth: 1024
   - Operating Mode: Read First
4. Generate → Add to project

**This creates:**
- `ip/blk_mem_gen_0/blk_mem_gen_0.xci` (IP core)
- Verilog wrapper you can instantiate

### AXI Interface (Optional, for Host Communication)

1. IP Catalog → AXI4-Lite Slave
2. Configure for your needs
3. Connect to your accelerator control logic

## Pipeline Design

The prototype accelerator has these pipeline stages:

```
┌─────────────┐
│ Stage 1:    │  Load activations & weights from memory
│ Memory Read │
└──────┬──────┘
       │
┌──────▼──────┐
│ Stage 2:    │  Broadcast to PE array
│ Data Dist   │
└──────┬──────┘
       │
┌──────▼──────┐
│ Stage 3:    │  PE array multiplication (1 cycle)
│ Compute     │
└──────┬──────┘
       │
┌──────▼──────┐
│ Stage 4:    │  Accumulate partial products
│ Accumulate  │
└──────┬──────┘
       │
┌──────▼──────┐
│ Stage 5:    │  Write results back to memory
│ Memory Write│
└─────────────┘
```

**Pipeline depth**: 5 stages
**Throughput**: 1 result per cycle (after pipeline fill)

## Running Synthesis

### In GUI:
1. Flow Navigator → Run Synthesis
2. Wait for completion
3. Open Synthesized Design
4. View Resource Utilization

### Command Line:
```tcl
# In Vivado Tcl console
read_verilog sources/rtl/*.v
synth_design -top accelerator_top
report_utilization
report_timing
```

## Understanding Pipeline Behavior

### Key Metrics:

1. **Latency**: Cycles from input to first output
   - Pipeline depth = 5 cycles
   - Plus memory access time

2. **Throughput**: Operations per cycle
   - After pipeline fill: 1 operation/cycle
   - PE array processes 16 multiplications in parallel

3. **Utilization**: % of PEs active
   - Depends on data flow
   - Ideal: 100% (all PEs working)

### Simulation to See Pipeline:

1. Flow Navigator → Run Simulation → Run Behavioral Simulation
2. Add testbench
3. View waveforms to see pipeline stages

## Next Steps

1. ✅ Synthesize the prototype
2. ✅ Analyze resource utilization
3. ✅ Check timing (should meet 100-200 MHz)
4. ✅ Simulate to understand pipeline
5. ⏭️ Optimize based on results
