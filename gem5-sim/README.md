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

### 6. Run the full comparison (LMUL Accel vs IEEE)

By default this runs **two** simulations, then compares metrics and optionally checks correctness:

1. **LMUL accelerator** — BF16 matmul on the hardware accelerator  
2. **IEEE CPU** — native IEEE BF16 matmul on the CPU (no accelerator)  

Add `--include-cpu-lmul` (or `RUN_CPU_LMUL=1`) for three-way (adds CPU LMUL: same numerics as accel but on CPU only).

```bash
./gem5-sim/scripts/compare_lmul_vs_ieee.sh
```

Defaults: 4×4 matrices, 4×4 PE array. Outputs go to `gem5-sim/lmul_vs_ieee_comparison/`:

- `lmul/stats.txt`, `ieee/stats.txt` — simulation stats (and `cpu_lmul/` when `--include-cpu-lmul`)  
- `performance_comparison_4.txt` — two-way or three-way comparison  
- With output extraction on (default): `result.bin` and `inputs.bin` per run for correctness checks  
- Benchmark mode: argv[4] = 1 (accel), 2 (CPU LMUL), 0 (IEEE)

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
- `--accel-clock FREQ` — accelerator clock frequency (default: `2GHz`)  
- `--no-output-extraction` — skip writing `result.bin`/`inputs.bin` and correctness validation (faster, for performance-only)  
- `--include-cpu-lmul` — also run CPU LMUL simulation for three-way comparison (default: off)

CPU energy model knobs:
- `--cpu-dyn-energy-per-cycle-pj` — dynamic energy per CPU cycle (used by `compare_metrics.py`)
- `--cpu-dyn-energy-per-inst-pj` — dynamic energy per committed instruction (used by `compare_metrics.py`)
- `--cpu-static-power-mw` — static CPU power term (used by `compare_metrics.py`)
- `--disable-cpu-power-model` — optional: disable gem5 `system.cpu.power_model.*` stats in runs

### 7. Re-run metrics or correctness locally

```bash
# Regenerate comparison table (two-way by default)
python3 gem5-sim/scripts/compare_metrics.py \
  gem5-sim/lmul_vs_ieee_comparison/lmul/stats.txt \
  gem5-sim/lmul_vs_ieee_comparison/ieee/stats.txt \
  --cpu-dyn-energy-per-cycle-pj 500 --cpu-dyn-energy-per-inst-pj 50 --cpu-static-power-mw 200

# Three-way (add CPU LMUL stats if you ran with --include-cpu-lmul):
# python3 gem5-sim/scripts/compare_metrics.py ... --cpu-lmul gem5-sim/lmul_vs_ieee_comparison/cpu_lmul/stats.txt

# Correctness: compare simulation output to software reference (requires inputs.bin + result.bin)
python3 gem5-sim/scripts/validate_result_against_reference.py gem5-sim/lmul_vs_ieee_comparison/lmul --mode lmul
python3 gem5-sim/scripts/validate_result_against_reference.py gem5-sim/lmul_vs_ieee_comparison/ieee --mode ieee
# When using --include-cpu-lmul: python3 gem5-sim/scripts/validate_result_against_reference.py .../cpu_lmul --mode lmul
```

---

## Understanding Output

- **stats.txt** (per run): `sim_seconds`, `system.cpu.numCycles`, `system.cpu.committedInsts`, CPI, IPC, DRAM energy, and accelerator stats (e.g. `system.lmul_accel.totalcycles`, `totalops`).
- **performance_comparison_<size>.txt**: side-by-side LMUL vs IEEE and speedups (sim time, cycles, DRAM ratio, accelerator energy, modeled CPU energy, estimated total energy), plus cycle categorization.
- Correctness is reported when you run the comparison with output extraction enabled: the script compares each run’s output to the reference (`rtl.numpy_lmul.lmul_numpy_matmul` for LMUL, IEEE matmul for CPU).

CPU energy in the comparison report is a first-order model derived from cycle count, instruction count, and static power parameters. It does not require `system.cpu.power_model.dynamicPower` and avoids unit/path issues in gem5 power-model stats.

The IEEE path uses an optimized but still realistic software implementation: BF16 inputs are converted once to float32, matrix multiply is cache-friendly (tiled), and outputs are rounded back to BF16. This keeps the comparison "realistic LMUL accelerator vs realistic IEEE software."

---

## Toward a more realistic IEEE CPU baseline

The default setup uses **TimingSimpleCPU** (in-order, no caches, scalar code), so the IEEE path is intentionally conservative and the reported speedup (e.g. 100–200×) is high. To get closer to “realistic” IEEE performance (and a lower, more defensible speedup), you can apply these steps in order.

| Step | What | Impact | Effort |
|------|------|--------|--------|
| **1** | **Compiler flags** | Enables auto-vectorization of the float inner loop. | Low |
| **2** | **Add L1 (and optionally L2) caches** | Tiled IEEE code benefits from locality; fewer memory stalls. | Low–medium |
| **3** | **Vectorize the IEEE kernel (NEON)** | 4× (or more) fewer instructions in the inner loop. | Medium |
| **4** | **Switch to O3 CPU** | Out-of-order execution; much higher IPC. | Medium (slower sim) |
| **5** | **Document both baselines** | Report “conservative” vs “optimized CPU” so the story is clear. | Low |

### Step 1: Compiler flags

In `gem5-sim/benchmarks/matrix_multiply/Makefile`:

- Use **`-O3`** instead of `-O2`.
- Add an architecture flag so the compiler can use SIMD:
  - For **ARM 64-bit** (gem5 ARMv8): e.g. `-march=armv8-a+simd` (or whatever your cross-compiler supports).
  - For **ARM 32-bit** (gem5 ARMv7): e.g. `-march=armv7-a -mfpu=neon -mfloat-abi=hard`.

Rebuild the benchmark and re-run the IEEE path; check `simInsts` and `numCycles` — they should drop if the inner loop is vectorized.

### Step 2: Add L1 (and optionally L2) caches

Currently the CPU is wired directly to the memory bus (no cache objects). Add an L1 I-cache and L1 D-cache between the CPU and the bus (standard gem5 pattern: create `Cache` objects, connect `cpu.icache_port` → `l1_icache.cpu_side`, `l1_icache.mem_side` → `membus`, and similarly for D-cache). Optionally add an L2. The tiled IEEE matmul will benefit from locality; the accelerator path is mostly DMA so its behavior stays similar. Re-run and compare cycles.

### Step 3: Vectorize the IEEE kernel (NEON)

In `cpu_matrix_multiply`, the inner loop over `k` is scalar (`sum += a_row[k] * b_row[k]`). Implement a NEON version (e.g. `float32x4_t`, `vld1q_f32`, `vmlaq_f32`, `vaddvq_f32` / horizontal add) so each iteration does 4 float multiply-adds. Keep the same tiling and BF16↔float conversion; only the inner dot product is vectorized. This gives a substantial reduction in instructions and cycles for the IEEE path.

### Step 4: Switch to O3 CPU

In `gem5-sim/configs/lmul_system.py`, replace `TimingSimpleCPU()` with `DerivO3CPU()` (or the appropriate O3 class for your gem5 version). Out-of-order execution will increase IPC (e.g. from ~0.01 to 0.5 or higher), so the same instruction stream will complete in fewer cycles. Note: O3 simulation is slower and uses more memory; large sizes (e.g. 1024) may require more host RAM and time.

### Step 5: Document both baselines

When reporting results, you can:

- Keep the current setup as the **“conservative CPU baseline”** (simple core, scalar or lightly optimized code) and report that the speedup is relative to that.
- Add an **“optimized CPU baseline”** (O3 + caches + NEON, or a subset) and report speedup vs both, so the audience sees that the accelerator still wins by a large margin even when the CPU is more realistic.

---

## Energy and Clock Parameters (References)

Energy- and speed-related hyperparameters and their grounding in literature or the lack thereof:

### Accelerator (LMulAccelerator)

| Parameter | Default | Source / Notes |
|-----------|---------|----------------|
| `energy_per_op_pj` | 0.5 pJ | **Referenced.** State-of-the-art DNN accelerators report ~0.1 pJ/op (NVIDIA 16nm multi-chip DNN accelerator, 8-bit: 0.11 pJ/op; DiP systolic array: ~0.1 pJ/op). Our 0.5 pJ is a conservative estimate for BF16 matmul (higher precision than 8-bit). See [NVIDIA DNN accelerator (0.11 pJ/op, 16nm)](https://research.nvidia.com/publication/2019-06_011-pjop-032-128-tops-scalable-multi-chip-module-based-deep-neural-network), [DiP systolic array (arXiv:2412.09709)](https://arxiv.org/abs/2412.09709). |
| `dma_energy_per_byte_pj` | 0.05 pJ | **No reliable source found.** Literature reports DRAM access energy per byte as highly variable (bank activation dominates). On-chip SRAM access is on the order of 0.1 pJ/byte. Our value is a placeholder; consider calibrating to hardware if available. |
| `leakage_power_mw` | 1.0 mW | **No reliable source found.** Small systolic array (e.g. 4×4 PE); leakage scales with area. Placeholder for relative comparison. |
| `--accel-clock` | 2 GHz | **Referenced.** TPU systolic arrays operate around 1.5 GHz; modern systolic/GEMM accelerators often run 1–2+ GHz. 2 GHz is a reasonable default for a small PE array. See [TPU v1 (Jouppi et al.)](https://dl.acm.org/doi/10.1145/3079856.3080246), [DiP (arXiv:2412.09709)](https://arxiv.org/abs/2412.09709). |

### CPU (first-order model)

| Parameter | Default | Source / Notes |
|-----------|---------|----------------|
| `--cpu-dyn-energy-per-cycle-pj` | 500 pJ | **No specific hardware source.** First-order model for gem5 TimingSimpleCPU. ARM Cortex-M0 studies report ~170 µW/MHz; at 2 GHz that implies order-of-magnitude hundreds of pJ per effective cycle depending on activity. 500 pJ is a plausible placeholder for a simple in-order core. |
| `--cpu-dyn-energy-per-inst-pj` | 50 pJ | **No specific hardware source.** Extra energy attributed per committed instruction (e.g. pipeline overhead). Calibrate to target CPU if needed. |
| `--cpu-static-power-mw` | 200 mW | **No specific hardware source.** Placeholder for static/leakage power of a small CPU core. |

### Summary

- **With references:** `energy_per_op_pj`, `--accel-clock`
- **Without references (placeholder):** `dma_energy_per_byte_pj`, `leakage_power_mw`, all CPU power parameters

To calibrate parameters for a specific target, consult vendor datasheets or measured power/energy studies for your CPU and accelerator.

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
