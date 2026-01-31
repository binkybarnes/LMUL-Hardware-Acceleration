# Comparison Testing Framework

## Overview

This framework compares LMUL accelerator output against Python LMUL reference implementation to verify correctness before using performance metrics.

## Expected Output Files

When `run_comparison.sh` completes successfully, you should have:

### Required Files (Always Generated)
- `comparison_results/python_reference.txt` - Python LMUL reference output
- `comparison_results/accelerator/stats.txt` - gem5 statistics (main output)
- `comparison_results/accelerator/config.ini` - System configuration
- `comparison_results/accelerator/simulation.log` - Full simulation log

### Optional Files (Generated if Available)
- `comparison_results/accelerator/output.txt` - Accelerator output matrix (if benchmark outputs it)
- `comparison_results/accuracy_report.txt` - Accuracy comparison report

## Usage

### Basic Usage
```bash
./scripts/run_comparison.sh --size 4 --pe-rows 4 --pe-cols 4
```

### Check Results
```bash
# View accuracy report
cat comparison_results/accuracy_report.txt

# Extract detailed statistics
python3 scripts/extract_stats.py comparison_results/accelerator/stats.txt

# Check accuracy manually
python3 scripts/check_accuracy.py \
    comparison_results/accelerator/output.txt \
    comparison_results/python_reference.txt
```

## Troubleshooting

### Syscall 403 Error
If you see `fatal: Syscall 403 out of range`, this means the benchmark uses newer Linux syscalls that gem5 doesn't support. Options:

1. **Use simple_test benchmark** (recommended for now):
   ```bash
   # Use the simple test that avoids syscalls
   cd ../gem5
   ./build/ARM/gem5.opt \
       --outdir=../gem5-sim/m5out \
       ../gem5-sim/configs/lmul_system.py \
       --pe-rows=4 --pe-cols=4 \
       --cmd=../gem5-sim/benchmarks/simple_test/simple_test.arm
   ```

2. **Check if stats were generated anyway**:
   ```bash
   # Even if simulation fails, stats might be generated
   ls -lh comparison_results/accelerator/stats.txt
   wc -l comparison_results/accelerator/stats.txt
   ```

3. **Fix matrix_multiply benchmark** (future work):
   - Remove printf/file I/O that triggers syscalls
   - Use simpler output method
   - Or compile with older toolchain

### Process Stuck
If the script appears stuck:
```bash
# Check if gem5 is running
ps aux | grep gem5

# If stuck, kill it
pkill -f gem5

# Check the log
tail -50 comparison_results/accelerator/simulation.log
```

## Workflow

1. **Generate Python Reference** → Establishes ground truth
2. **Run Accelerator Simulation** → Produces hardware results
3. **Check Accuracy** → Verifies accelerator matches Python LMUL
4. **Extract Metrics** → Only valid if accuracy check passes

## Next Steps

Once accelerator access works:
- Benchmark will output matrices
- Accuracy check will verify correctness
- Performance metrics can be trusted
