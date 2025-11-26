# Synthesis Directory

This folder contains all files related to hardware synthesis and comparison of L-Mul vs IEEE BF16 multipliers.

## Directory Structure

```
synthesis/
├── rtl/              # Synthesis-specific RTL files
│   ├── top_lmul_synth.v    # L-Mul synthesis wrapper
│   └── bf16_mul.v          # IEEE BF16 multiplier
├── scripts/         # All synthesis-related scripts
│   ├── synth_lmul.ys       # Yosys script for L-Mul
│   ├── synth_bf16.ys       # Yosys script for IEEE multiplier
│   ├── sta_lmul.tcl        # OpenSTA script for L-Mul
│   ├── sta_bf16.tcl        # OpenSTA script for IEEE multiplier
│   ├── extract_final_metrics.py # Metrics extraction script
│   └── test_bf16_mul.py    # IEEE multiplier test script
├── out/             # Synthesis outputs (netlists, logs, visualizations)
│   ├── README.md           # Explains what's in this folder
│   ├── .gitkeep            # Preserves folder structure in git
│   ├── *.log               # Synthesis and timing logs (gitignored)
│   ├── *.v                 # Gate-level netlists (gitignored)
│   └── *.png               # Visualization images (gitignored)
├── synthesis_results.ipynb # ⭐ Jupyter notebook with complete analysis
└── README.md        # This file
```

## Status

- ✅ **Step 1**: Docker setup with Yosys, OpenSTA, and Nangate 45nm library
- ✅ **Step 2**: Synthesis wrapper for L-Mul created
- ✅ **Step 3**: IEEE BF16 multiplier created
- ✅ **Step 4**: Synthesis scripts created and working
- ✅ **Step 5**: Area metrics extracted (66.8% reduction!)
- ✅ **Step 6**: Timing analysis completed (both meet timing)
- ✅ **Step 7**: Comparison report created
- ⏳ **Step 8**: Power estimation (optional)

## Quick Start

**For a complete walkthrough with visualizations, see:**
- `synthesis_results.ipynb` - Jupyter notebook with full analysis

**To run synthesis:**
```bash
# Synthesize L-Mul
yosys -s synthesis/scripts/synth_lmul.ys | tee synthesis/out/lmul_yosys.log

# Synthesize IEEE BF16
yosys -s synthesis/scripts/synth_bf16.ys | tee synthesis/out/bf16_yosys.log

# Run timing analysis
sta synthesis/scripts/sta_lmul.tcl | tee synthesis/out/lmul_sta.log
sta synthesis/scripts/sta_bf16.tcl | tee synthesis/out/bf16_sta.log

# Extract metrics
python3 synthesis/scripts/extract_final_metrics.py
```

## Key Results

- **66.8% area reduction** (L-Mul vs IEEE)
- **63.0% cell reduction** (simpler design)
- **Both designs meet timing** (2.0 ns clock constraint)

## Files Reference

**Synthesis Scripts:**
- `synthesis/scripts/synth_lmul.ys` - L-Mul synthesis
- `synthesis/scripts/synth_bf16.ys` - IEEE synthesis

**Timing Scripts:**
- `synthesis/scripts/sta_lmul.tcl` - L-Mul timing
- `synthesis/scripts/sta_bf16.tcl` - IEEE timing

**Results:**
- All logs and netlists in `synthesis/out/`

**Analysis:**
- `synthesis_results.ipynb` - Complete Jupyter notebook ⭐ (run this for full analysis!)
- `scripts/extract_final_metrics.py` - Metrics extraction script
- `scripts/test_bf16_mul.py` - IEEE multiplier test script

## Library Path

The Nangate 45nm library is located at:
- `../lib/NangateOpenCellLibrary_typical.lib`

