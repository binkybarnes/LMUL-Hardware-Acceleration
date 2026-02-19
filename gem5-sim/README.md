# LMUL Accelerator gem5 Simulation

gem5 integration for simulating the LMUL (Logarithmic Multiplication) BF16 hardware accelerator and comparing it to native IEEE BF16 on the CPU.

## Overview

This directory provides:
- A custom gem5 device model for the LMUL accelerator
- Configs and benchmarks to run matrix multiply with the accelerator or on the CPU
- Scripts to compare both runs and validate correctness

**Typical workflow (local):** install the model into gem5 → build gem5 → build the benchmark → run the comparison script → inspect performance and (optionally) correctness.

## Directory Structure

```
gem5-sim/
├── README.md                 # This file
├── docs/                     # Design and caveats
│   ├── COMPARISON_FAIRNESS.md
│   └── DEPLOYMENT_REALITY.md
├── models/                   # gem5 accelerator model (C++ + Python)
├── configs/                  # System config (lmul_system.py)
├── benchmarks/matrix_multiply/   # BF16 matrix multiply benchmark
├── datasets/                 # Optional (e.g. Fashion-MNIST)
└── scripts/                  # Setup and run scripts
    ├── install_model.sh      # Install accelerator into gem5 and build
    ├── clean_gem5.sh         # Remove accelerator from gem5
    ├── test_accelerator.sh   # Verify build
    ├── run_simulation.sh     # Single run (LMUL or IEEE)
    ├── compare_lmul_vs_ieee.sh   # Run both + compare metrics + correctness
    ├── compare_metrics.py    # Build performance_comparison_<size>.txt
    ├── validate_result_against_reference.py  # Correctness vs rtl/numpy_lmul
    ├── extract_stats.py      # Dump stats from one stats.txt
    ├── check_compatibility.sh
    ├── check_gem5_dependencies.sh
    ├── check_zlib.sh         # Zlib diagnostic
    ├── fix_git_permanently.sh
    ├── fetch_fashion_mnist.sh   # Optional dataset
    ├── scons_with_zlib.sh    # Used by install_model.sh
    └── create_zlib_symlinks.sh
```

---

## Prerequisites

- **RAM**: 32GB+ recommended (16GB minimum; linker may fail with less).
- **Disk**: 50GB+ free.
- **OS**: Linux (e.g. Ubuntu 20.04+), x86_64.
- **Software**: `git`, `python3` (3.6+), `scons` (e.g. `pip install scons`), and for building benchmarks: **ARM cross-compiler** `gcc-arm-linux-gnueabihf` (`sudo apt-get install gcc-arm-linux-gnueabihf`).

---

## Setup and Workflow (Local)

All commands assume you are in the repo root: `LMUL-Hardware-Acceleration/`.

### 1. Check system and dependencies

```bash
./gem5-sim/scripts/check_compatibility.sh
./gem5-sim/scripts/check_gem5_dependencies.sh
```

Install any missing build deps, e.g.:

```bash
sudo apt-get install zlib1g-dev python3-dev protobuf-compiler pkg-config
```

### 2. Clone gem5 (if needed)

gem5 must be at `LMUL-Hardware-Acceleration/gem5/`. If it is not there:

```bash
git clone https://github.com/gem5/gem5.git
cd gem5 && git checkout stable && pip install -r requirements.txt && cd ..
```

`install_model.sh` will not clone gem5 for you; it expects `gem5/` to already exist.

### 3. Install the LMUL model and build gem5

This copies the accelerator into gem5 and builds gem5 (can take 30–60 minutes):

```bash
./gem5-sim/scripts/install_model.sh
```

Then verify:

```bash
./gem5-sim/scripts/test_accelerator.sh
```

You should see that the accelerator object file and Python bindings exist and that the accelerator can be instantiated.

### 4. Build the benchmark

The comparison workflow uses the **no-printf** benchmark to avoid syscall 403 in gem5 ARM SE. Build it (and optionally the printf version):

```bash
cd gem5-sim/benchmarks/matrix_multiply
make matrix_multiply_no_printf.arm
cd ../../..
```

If the ARM cross-compiler is missing, install it or build for x86: `make ARCH=x86 matrix_multiply_no_printf.x86` (only if you run gem5 for X86).

### 5. Run a quick test (single simulation)

```bash
./gem5-sim/scripts/run_simulation.sh --test
```

This runs a 4×4 matrix multiply with the LMUL accelerator and writes output under `gem5-sim/m5out/`. Check:

```bash
ls -la gem5-sim/m5out/
head -50 gem5-sim/m5out/stats.txt
```

### 6. Run the full comparison (LMUL vs IEEE)

This runs **both** simulations (LMUL accelerator and native IEEE BF16 on CPU), then compares metrics and optionally checks correctness:

```bash
./gem5-sim/scripts/compare_lmul_vs_ieee.sh
```

Defaults: 4×4 matrices, 4×4 PE array. Outputs go to `gem5-sim/lmul_vs_ieee_comparison/`:

- `lmul/stats.txt`, `ieee/stats.txt` — simulation stats
- `performance_comparison_4.txt` — comparison report (speedup, cycles, DRAM energy, etc.)
- With output extraction on (default): `lmul/result.bin`, `ieee/result.bin`, `lmul/inputs.bin`, `ieee/inputs.bin` for correctness checks

View the report:

```bash
cat gem5-sim/lmul_vs_ieee_comparison/performance_comparison_4.txt
```

**Larger runs or performance-only (no correctness files):**

```bash
./gem5-sim/scripts/compare_lmul_vs_ieee.sh --size 64 --pe-rows 4 --pe-cols 4
./gem5-sim/scripts/compare_lmul_vs_ieee.sh --size 128 --no-output-extraction
```

- `--size N` — N×N matrices  
- `--pe-rows N`, `--pe-cols N` — PE array dimensions  
- `--no-output-extraction` — skip writing `result.bin`/`inputs.bin` and correctness validation (faster, for performance-only)

CPU energy model knobs:
- `--cpu-dyn-energy-per-cycle-pj` — dynamic energy per CPU cycle (used by `compare_metrics.py`)
- `--cpu-dyn-energy-per-inst-pj` — dynamic energy per committed instruction (used by `compare_metrics.py`)
- `--cpu-static-power-mw` — static CPU power term (used by `compare_metrics.py`)
- `--disable-cpu-power-model` — optional: disable gem5 `system.cpu.power_model.*` stats in runs

### 7. Re-run metrics or correctness locally

```bash
# Regenerate comparison table from two stats files
python3 gem5-sim/scripts/compare_metrics.py \
  gem5-sim/lmul_vs_ieee_comparison/lmul/stats.txt \
  gem5-sim/lmul_vs_ieee_comparison/ieee/stats.txt \
  --cpu-dyn-energy-per-cycle-pj 500 \
  --cpu-dyn-energy-per-inst-pj 50 \
  --cpu-static-power-mw 200

# Correctness: compare simulation output to software reference (requires inputs.bin + result.bin)
python3 gem5-sim/scripts/validate_result_against_reference.py gem5-sim/lmul_vs_ieee_comparison/lmul --mode lmul
python3 gem5-sim/scripts/validate_result_against_reference.py gem5-sim/lmul_vs_ieee_comparison/ieee --mode ieee
```

---

## Understanding Output

- **stats.txt** (per run): `sim_seconds`, `system.cpu.numCycles`, `system.cpu.committedInsts`, CPI, IPC, DRAM energy, and accelerator stats (e.g. `system.lmul_accel.totalcycles`, `totalops`).
- **performance_comparison_<size>.txt**: side-by-side LMUL vs IEEE and speedups (sim time, cycles, DRAM ratio, accelerator energy, modeled CPU energy, estimated total energy), plus cycle categorization.
- Correctness is reported when you run the comparison with output extraction enabled: the script compares each run’s output to the reference (`rtl.numpy_lmul.lmul_numpy_matmul` for LMUL, IEEE matmul for CPU).

CPU energy in the comparison report is a first-order model derived from cycle count, instruction count, and static power parameters. It does not require `system.cpu.power_model.dynamicPower` and avoids unit/path issues in gem5 power-model stats.

The IEEE path uses an optimized but still realistic software implementation: BF16 inputs are converted once to float32, matrix multiply is cache-friendly (tiled), and outputs are rounded back to BF16. This keeps the comparison "realistic LMUL accelerator vs realistic IEEE software."

---

## Troubleshooting

| Problem | What to do |
|--------|------------|
| **zlib missing** | `./gem5-sim/scripts/check_zlib.sh`; install with `sudo apt-get install zlib1g-dev`. |
| **Linker OOM** | Build on a machine with 32GB+ RAM. |
| **Syscall 403** | Use the no-printf benchmark: `make matrix_multiply_no_printf.arm` in `gem5-sim/benchmarks/matrix_multiply`. |
| **Empty stats.txt** | Check `lmul_vs_ieee_comparison/lmul/simulation.log` (or `ieee/`) for errors; ensure the benchmark binary exists. |
| **Permission denied** | `chmod +x gem5-sim/scripts/*.sh` |
| **Git OpenSSL error** | `./gem5-sim/scripts/fix_git_permanently.sh` then restart shell or `source ~/.bashrc`. |

---

## Quick reference (local)

```bash
# One-time setup
./gem5-sim/scripts/check_compatibility.sh
./gem5-sim/scripts/install_model.sh
./gem5-sim/scripts/test_accelerator.sh
cd gem5-sim/benchmarks/matrix_multiply && make matrix_multiply_no_printf.arm && cd ../../..

# Single test run
./gem5-sim/scripts/run_simulation.sh --test

# Full comparison (default 4×4)
./gem5-sim/scripts/compare_lmul_vs_ieee.sh

# Custom size, then view report
./gem5-sim/scripts/compare_lmul_vs_ieee.sh --size 64 --pe-rows 4 --pe-cols 4
cat gem5-sim/lmul_vs_ieee_comparison/performance_comparison_64.txt
```
