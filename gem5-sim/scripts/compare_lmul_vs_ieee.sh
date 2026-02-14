#!/bin/bash
#
# Compare LMUL Accelerator vs Native IEEE BF16 (CPU)
#
# This script:
# 1. Runs simulation with LMUL accelerator
# 2. Runs simulation with native IEEE BF16 (CPU-based)
# 3. Compares outputs (accuracy verification)
# 4. Compares performance metrics
#
# Usage:
#   ./compare_lmul_vs_ieee.sh [--size N] [--pe-rows R] [--pe-cols C]
#

# Don't use set -e - we want to continue even if simulations fail
# (they may fail due to syscall 403 but still generate stats)
# set -e

# Defaults
MATRIX_SIZE=4
PE_ROWS=4
PE_COLS=4
OUTPUT_DIR="lmul_vs_ieee_comparison"
USE_SIMPLE_TEST=0  # Use simple_test instead of matrix_multiply to avoid syscall 403
LOG_FILE=""
REQUIRE_RESULT_BIN="${REQUIRE_RESULT_BIN:-1}"  # 1: fail if result.bin missing (recommended)

# Parse arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        --size)
            MATRIX_SIZE="$2"
            shift 2
            ;;
        --pe-rows)
            PE_ROWS="$2"
            shift 2
            ;;
        --pe-cols)
            PE_COLS="$2"
            shift 2
            ;;
        --output-dir)
            OUTPUT_DIR="$2"
            shift 2
            ;;
        --log-file)
            LOG_FILE="$2"
            shift 2
            ;;
        --simple-test)
            USE_SIMPLE_TEST=1
            shift
            ;;
        -h|--help)
            echo "Usage: $0 [--size N] [--pe-rows R] [--pe-cols C] [--output-dir DIR] [--log-file FILE]"
            echo
            echo "Compares LMUL accelerator vs IEEE BF16 accelerator:"
            echo "  - Runs both simulations"
            echo "  - Verifies output accuracy"
            echo "  - Compares performance metrics"
            echo "  - --log-file FILE: save all script output to FILE (and still show on terminal)"
            echo "  - Requires matrix_multiply_no_printf.arm (set ALLOW_PRINTF_FALLBACK=1 to force printf binary)"
            echo "  - Env: REQUIRE_RESULT_BIN=0 allows continuing when result.bin is missing"
            exit 0
            ;;
        *)
            echo "Unknown option: $1"
            exit 1
            ;;
    esac
done

# Optionally tee all output to a log file
if [ -n "$LOG_FILE" ]; then
    exec > >(tee "$LOG_FILE") 2>&1
    echo "Logging all output to: $LOG_FILE"
fi

# Get script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LMUL_GEM5="$(cd "$SCRIPT_DIR/.." && pwd)"
PROJECT_ROOT="$(dirname "$LMUL_GEM5")"
GEM5_ROOT="${PROJECT_ROOT}/gem5"
# Try opt first, fall back to debug (for Codespaces)
if [ -f "${GEM5_ROOT}/build/ARM/gem5.opt" ]; then
    GEM5_BINARY="${GEM5_ROOT}/build/ARM/gem5.opt"
elif [ -f "${GEM5_ROOT}/build/ARM/gem5.debug" ]; then
    GEM5_BINARY="${GEM5_ROOT}/build/ARM/gem5.debug"
    echo "Note: Using gem5.debug (opt binary not found)"
else
    echo "Error: gem5 not built. Run install_model.sh first."
    echo "  Expected: ${GEM5_ROOT}/build/ARM/gem5.opt or gem5.debug"
    exit 1
fi

# Ensure binary is executable and valid
if [ ! -x "$GEM5_BINARY" ]; then
    echo "Making gem5 binary executable: $GEM5_BINARY"
    chmod +x "$GEM5_BINARY"
fi

# Check if binary is valid (not corrupted from incomplete build)
FILE_SIZE=$(stat -f%z "$GEM5_BINARY" 2>/dev/null || stat -c%s "$GEM5_BINARY" 2>/dev/null || echo "0")

# Check if file is empty or very small (corrupted)
if [ "$FILE_SIZE" -eq 0 ]; then
    echo "Error: $GEM5_BINARY is empty (0 bytes)"
    echo "  Build was killed during linking - file was created but never written"
    echo "  Remove it and try a different build approach"
    exit 1
elif [ "$FILE_SIZE" -lt 1000000 ]; then
    echo "Error: $GEM5_BINARY is too small ($FILE_SIZE bytes)"
    echo "  File size: $(ls -lh "$GEM5_BINARY" | awk '{print $5}')"
    echo "  Likely corrupted/incomplete from failed build"
    exit 1
fi

# Check ELF magic number (7f 45 4c 46 = ELF)
ELF_MAGIC=$(head -c 4 "$GEM5_BINARY" 2>/dev/null | od -An -tx1 2>/dev/null | tr -d ' \n' || echo "")
if [ "$ELF_MAGIC" != "7f454c46" ]; then
    echo "Error: $GEM5_BINARY is not a valid ELF executable"
    echo "  ELF magic: $ELF_MAGIC (expected: 7f454c46)"
    echo "  File size: $(ls -lh "$GEM5_BINARY" | awk '{print $5}')"
    echo ""
    echo "  This usually means the build failed during linking"
    echo "  The linker was killed (signal 15) before completing"
    echo ""
    echo "  Solutions:"
    echo "  1. Remove corrupted binary and rebuild:"
    echo "     rm -f $GEM5_BINARY"
    echo "     cd gem5 && scons build/ARM/gem5.debug -j1 CXXFLAGS='-O0'"
    echo ""
    echo "  2. Build locally on a machine with 32GB+ RAM"
    echo ""
    echo "  3. Use a pre-built gem5 binary with accelerator integrated"
    exit 1
fi

# Try to verify it's executable by checking if we can read the ELF header
# This is a basic sanity check
if ! head -c 16 "$GEM5_BINARY" >/dev/null 2>&1; then
    echo "Error: Cannot read $GEM5_BINARY"
    echo "  File may be corrupted or inaccessible"
    exit 1
fi

CONFIG="${LMUL_GEM5}/configs/lmul_system.py"

# Determine which benchmark to use
if [ $USE_SIMPLE_TEST -eq 1 ]; then
    BENCHMARK_BIN="${LMUL_GEM5}/benchmarks/simple_test/simple_test.arm"
    BENCHMARK_ARGS=()  # simple_test takes no arguments
    echo "Using simple_test benchmark (avoids syscall 403)"
else
    # Try no-printf version first (avoids syscall 403)
    NO_PRINTF_BIN="${LMUL_GEM5}/benchmarks/matrix_multiply/matrix_multiply_no_printf.arm"
    if [ -f "$NO_PRINTF_BIN" ]; then
        BENCHMARK_BIN="$NO_PRINTF_BIN"
        BENCHMARK_ARGS=("$MATRIX_SIZE" "$MATRIX_SIZE" "$MATRIX_SIZE")
        RESULT_FILE_ARGS=("result.bin")   # for correctness validation (writes C to outdir)
        echo "Using matrix_multiply_no_printf benchmark (avoids syscall 403)"
    else
        if [ "${ALLOW_PRINTF_FALLBACK:-0}" -eq 1 ]; then
            BENCHMARK_BIN="${LMUL_GEM5}/benchmarks/matrix_multiply/matrix_multiply.arm"
            BENCHMARK_ARGS=("$MATRIX_SIZE" "$MATRIX_SIZE" "$MATRIX_SIZE")
            RESULT_FILE_ARGS=("result.bin")
            echo "WARNING: Falling back to matrix_multiply.arm (ALLOW_PRINTF_FALLBACK=1)"
            echo "  This may fail with fatal syscall 403 in gem5 ARM SE."
        else
            echo "Error: matrix_multiply_no_printf.arm not found."
            echo "  Refusing to run matrix_multiply.arm by default (can trigger fatal syscall 403)."
            echo "  Build no-printf benchmark first:"
            echo "    cd ${LMUL_GEM5}/benchmarks/matrix_multiply"
            echo "    make matrix_multiply_no_printf.arm"
            echo "  If you really want fallback, set: ALLOW_PRINTF_FALLBACK=1"
            exit 1
        fi
    fi
fi
# simple_test has no result file
if [ "${USE_SIMPLE_TEST:-0}" -eq 1 ]; then
    RESULT_FILE_ARGS=()
fi

# Check benchmark binary exists
if [ ! -f "$BENCHMARK_BIN" ]; then
    echo "Error: Benchmark binary not found: $BENCHMARK_BIN"
    echo "Build it with:"
    if [ $USE_SIMPLE_TEST -eq 1 ]; then
        echo "  cd ${LMUL_GEM5}/benchmarks/simple_test"
    else
        echo "  cd ${LMUL_GEM5}/benchmarks/matrix_multiply"
    fi
    echo "  make"
    exit 1
fi

# Ensure matrix_multiply_no_printf binary includes result extraction support.
# We key off a log marker string embedded by the benchmark source.
if [ "${#RESULT_FILE_ARGS[@]}" -gt 0 ]; then
    if command -v strings >/dev/null 2>&1; then
        if ! strings "$BENCHMARK_BIN" 2>/dev/null | grep -q "RESULT_WRITE_OK"; then
            echo "Error: benchmark binary appears stale (missing RESULT_WRITE_OK marker)."
            echo "  Rebuild benchmark before running comparisons:"
            echo "    cd ${LMUL_GEM5}/benchmarks/matrix_multiply"
            echo "    make matrix_multiply_no_printf.arm"
            exit 1
        fi
    else
        echo "Warning: 'strings' not found; cannot verify benchmark freshness."
    fi
fi

# Create output directories
LMUL_OUTPUT="${OUTPUT_DIR}/lmul"
IEEE_OUTPUT="${OUTPUT_DIR}/ieee"
mkdir -p "$LMUL_OUTPUT" "$IEEE_OUTPUT"

echo "Debug: Output directories created"
echo "  LMUL: $LMUL_OUTPUT"
echo "  IEEE: $IEEE_OUTPUT"

echo "=========================================="
echo "LMUL Accelerator vs Native IEEE BF16 (CPU)"
echo "=========================================="
echo "Matrix Size: ${MATRIX_SIZE}x${MATRIX_SIZE}"
PERF_COMPARISON_FILE="$OUTPUT_DIR/performance_comparison_${MATRIX_SIZE}.txt"
rm -f "$LMUL_OUTPUT/stats.txt" "$IEEE_OUTPUT/stats.txt" \
      "$LMUL_OUTPUT/result.bin" "$IEEE_OUTPUT/result.bin" \
      "$PERF_COMPARISON_FILE"
echo "PE Array: ${PE_ROWS}x${PE_COLS}"
echo "Output: ${OUTPUT_DIR}"
echo "=========================================="
echo

# Step 1: Run LMUL accelerator simulation
echo "Step 1: Running LMUL accelerator simulation..."
echo "  This may take a few minutes..."
echo "  Command: $GEM5_BINARY --outdir=$LMUL_OUTPUT $CONFIG ..."
echo

if "$GEM5_BINARY" \
    --outdir="$LMUL_OUTPUT" \
    "$CONFIG" \
    --output-dir="$LMUL_OUTPUT" \
    --pe-rows="$PE_ROWS" \
    --pe-cols="$PE_COLS" \
    --cmd="$BENCHMARK_BIN" \
    --cmd-args "${BENCHMARK_ARGS[@]}" "1" "${RESULT_FILE_ARGS[@]}" \
    > "$LMUL_OUTPUT/simulation.log" 2>&1; then
    LMUL_EXIT_CODE=0
else
    LMUL_EXIT_CODE=$?
    echo "⚠ LMUL simulation failed (exit code: $LMUL_EXIT_CODE)"
    echo "  Check log: $LMUL_OUTPUT/simulation.log"
    if [ -f "$LMUL_OUTPUT/simulation.log" ]; then
        echo "  Last 30 lines:"
        tail -30 "$LMUL_OUTPUT/simulation.log"
    fi
    echo
    echo "  This may be due to syscall 403. Consider using simple_test benchmark."
    # Don't exit here - continue to check if stats were generated
fi

# Check if stats were generated
LMUL_STATS_OK=0
if [ -f "$LMUL_OUTPUT/stats.txt" ] && [ -s "$LMUL_OUTPUT/stats.txt" ]; then
    LMUL_STATS_OK=1
fi

if [ $LMUL_EXIT_CODE -ne 0 ] && [ $LMUL_STATS_OK -eq 0 ]; then
    echo "⚠ LMUL simulation failed (exit code: $LMUL_EXIT_CODE)"
    echo "  Check log: $LMUL_OUTPUT/simulation.log"
    tail -20 "$LMUL_OUTPUT/simulation.log"
    echo
    echo "  This may be due to syscall 403. Consider using simple_test benchmark."
    exit 1
fi

if [ $LMUL_STATS_OK -eq 1 ]; then
    echo "✓ LMUL simulation complete (stats generated)"
else
    echo "⚠ LMUL simulation completed but no stats generated"
fi

# Step 2: Run Native IEEE BF16 (CPU-based) simulation
echo
echo "Step 2: Running Native IEEE BF16 (CPU) simulation..."
echo "  This uses CPU for standard IEEE multiplication (not accelerator)"
echo "  This may take a few minutes..."
echo

if "$GEM5_BINARY" \
    --outdir="$IEEE_OUTPUT" \
    "$CONFIG" \
    --output-dir="$IEEE_OUTPUT" \
    --pe-rows="$PE_ROWS" \
    --pe-cols="$PE_COLS" \
    --cmd="$BENCHMARK_BIN" \
    --cmd-args "${BENCHMARK_ARGS[@]}" "0" "${RESULT_FILE_ARGS[@]}" \
    > "$IEEE_OUTPUT/simulation.log" 2>&1; then
    IEEE_EXIT_CODE=0
else
    IEEE_EXIT_CODE=$?
    echo "⚠ IEEE simulation failed (exit code: $IEEE_EXIT_CODE)"
    echo "  Check log: $IEEE_OUTPUT/simulation.log"
    if [ -f "$IEEE_OUTPUT/simulation.log" ]; then
        echo "  Last 30 lines:"
        tail -30 "$IEEE_OUTPUT/simulation.log"
    fi
    echo
    echo "  This may be due to syscall 403. Consider using simple_test benchmark."
    # Don't exit here - continue to check if stats were generated
fi

# Check if stats were generated
IEEE_STATS_OK=0
if [ -f "$IEEE_OUTPUT/stats.txt" ] && [ -s "$IEEE_OUTPUT/stats.txt" ]; then
    IEEE_STATS_OK=1
fi

if [ $IEEE_EXIT_CODE -ne 0 ] && [ $IEEE_STATS_OK -eq 0 ]; then
    echo "⚠ IEEE simulation failed (exit code: $IEEE_EXIT_CODE)"
    echo "  Check log: $IEEE_OUTPUT/simulation.log"
    tail -20 "$IEEE_OUTPUT/simulation.log"
    echo
    echo "  This may be due to syscall 403. Consider using simple_test benchmark."
    exit 1
fi

if [ $IEEE_STATS_OK -eq 1 ]; then
    echo "✓ IEEE simulation complete (stats generated)"
else
    echo "⚠ IEEE simulation completed but no stats generated"
fi

# Step 3: Correctness validation (compare result matrices if written)
echo
echo "Step 3: Correctness validation (LMUL vs IEEE result matrices)..."
LMUL_RESULT_FILE="$LMUL_OUTPUT/result.bin"
IEEE_RESULT_FILE="$IEEE_OUTPUT/result.bin"
if [ "${#RESULT_FILE_ARGS[@]}" -eq 0 ]; then
    echo "  Skipped (current benchmark mode does not emit result.bin)"
elif [ -f "$LMUL_RESULT_FILE" ] && [ -f "$IEEE_RESULT_FILE" ]; then
    if python3 "$SCRIPT_DIR/compare_result_binaries.py" "$LMUL_OUTPUT" "$IEEE_OUTPUT"; then
        echo "✓ Correctness check passed"
    else
        echo "⚠ Correctness check reported differences (see above)"
    fi
else
    echo "⚠ Missing result.bin from one or both runs"
    echo "  Expected LMUL result: $LMUL_RESULT_FILE"
    echo "  Expected IEEE result: $IEEE_RESULT_FILE"
    [ -f "$LMUL_RESULT_FILE" ] || echo "  - LMUL result missing"
    [ -f "$IEEE_RESULT_FILE" ] || echo "  - IEEE result missing"
    echo
    echo "  Common causes:"
    echo "  - old matrix_multiply_no_printf.arm binary (without result writing support)"
    echo "  - guest cwd not pointing to run outdir (fixed in latest lmul_system.py)"
    echo
    echo "  Suggested fix:"
    echo "    cd ${LMUL_GEM5}/benchmarks/matrix_multiply"
    echo "    make matrix_multiply_no_printf.arm"
    echo
    echo "  Log markers (should show RESULT_WRITE_OK):"
    echo "    LMUL log: $LMUL_OUTPUT/simulation.log"
    echo "    IEEE log: $IEEE_OUTPUT/simulation.log"
    if [ "$REQUIRE_RESULT_BIN" -eq 1 ]; then
        echo
        echo "Error: correctness validation requires both result.bin files."
        echo "Set REQUIRE_RESULT_BIN=0 only if you want performance-only runs."
        exit 1
    fi
fi

# Step 4: Compare performance metrics
echo
echo "Step 4: Comparing performance metrics..."
if [ $LMUL_STATS_OK -eq 1 ] && [ $IEEE_STATS_OK -eq 1 ]; then
    echo "  Running comparison..."
    python3 "$SCRIPT_DIR/compare_metrics.py" \
        "$LMUL_OUTPUT/stats.txt" \
        "$IEEE_OUTPUT/stats.txt" \
        > "$PERF_COMPARISON_FILE" 2>&1
    
    if [ $? -eq 0 ]; then
        echo "✓ Performance comparison complete"
        echo
        cat "$PERF_COMPARISON_FILE"
    else
        echo "⚠ Performance comparison failed"
        cat "$PERF_COMPARISON_FILE"
    fi
else
    echo "⚠ Cannot compare metrics - missing stats files"
    echo "  LMUL stats: $([ $LMUL_STATS_OK -eq 1 ] && echo 'OK' || echo 'MISSING')"
    echo "  IEEE stats: $([ $IEEE_STATS_OK -eq 1 ] && echo 'OK' || echo 'MISSING')"
fi

# Step 5: Summary
echo
echo "=========================================="
echo "Comparison Complete!"
echo "=========================================="
echo "Results saved to: $OUTPUT_DIR/"
echo
echo "Files:"
echo "  - LMUL stats: $LMUL_OUTPUT/stats.txt"
echo "  - IEEE stats: $IEEE_OUTPUT/stats.txt"
if [ -f "$PERF_COMPARISON_FILE" ]; then
    echo "  - Performance comparison: $PERF_COMPARISON_FILE"
fi
if [ -f "$LMUL_OUTPUT/result.bin" ] && [ -f "$IEEE_OUTPUT/result.bin" ]; then
    echo "  - LMUL result matrix: $LMUL_OUTPUT/result.bin"
    echo "  - IEEE result matrix: $IEEE_OUTPUT/result.bin"
fi
echo
echo "Next Steps:"
echo "==========="
echo
echo "1. View performance comparison:"
echo "   cat $PERF_COMPARISON_FILE"
echo
echo "2. Re-run correctness check (if result.bin present):"
echo "   python3 $SCRIPT_DIR/compare_result_binaries.py $LMUL_OUTPUT $IEEE_OUTPUT"
echo
echo "3. Compare stats manually:"
echo "   python3 $SCRIPT_DIR/compare_metrics.py $LMUL_OUTPUT/stats.txt $IEEE_OUTPUT/stats.txt"
echo
echo "4. View simulation logs:"
echo "   tail -50 $LMUL_OUTPUT/simulation.log"
echo "   tail -50 $IEEE_OUTPUT/simulation.log"
echo
echo "5. Extract detailed metrics:"
echo "   python3 $SCRIPT_DIR/extract_stats.py $LMUL_OUTPUT/stats.txt"
echo "   python3 $SCRIPT_DIR/extract_stats.py $IEEE_OUTPUT/stats.txt"
echo
echo "=========================================="
echo
