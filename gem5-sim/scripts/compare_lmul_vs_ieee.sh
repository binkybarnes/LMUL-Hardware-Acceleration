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
        -h|--help)
            echo "Usage: $0 [--size N] [--pe-rows R] [--pe-cols C] [--output-dir DIR]"
            echo
            echo "Compares LMUL accelerator vs IEEE BF16 accelerator:"
            echo "  - Runs both simulations"
            echo "  - Verifies output accuracy"
            echo "  - Compares performance metrics"
            exit 0
            ;;
        *)
            echo "Unknown option: $1"
            exit 1
            ;;
    esac
done

# Get script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LMUL_GEM5="$(cd "$SCRIPT_DIR/.." && pwd)"
PROJECT_ROOT="$(dirname "$LMUL_GEM5")"
GEM5_ROOT="${PROJECT_ROOT}/gem5"
GEM5_BINARY="${GEM5_ROOT}/build/ARM/gem5.opt"
CONFIG="${LMUL_GEM5}/configs/lmul_system.py"

# Check prerequisites
if [ ! -f "$GEM5_BINARY" ]; then
    echo "Error: gem5 not built. Run install_model.sh first."
    echo "  Expected: $GEM5_BINARY"
    exit 1
fi

# Check benchmark binary exists
BENCHMARK_BIN="${LMUL_GEM5}/benchmarks/matrix_multiply/matrix_multiply.arm"
if [ ! -f "$BENCHMARK_BIN" ]; then
    echo "Error: Benchmark binary not found: $BENCHMARK_BIN"
    echo "Build it with:"
    echo "  cd ${LMUL_GEM5}/benchmarks/matrix_multiply"
    echo "  make"
    exit 1
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
echo "PE Array: ${PE_ROWS}x${PE_COLS}"
echo "Output: ${OUTPUT_DIR}"
echo "=========================================="
echo

# Step 1: Run LMUL accelerator simulation
echo "Step 1: Running LMUL accelerator simulation..."
echo "  This may take a few minutes..."
echo "  Command: $GEM5_BINARY --outdir=$LMUL_OUTPUT $CONFIG ..."
echo

if ! "$GEM5_BINARY" \
    --outdir="$LMUL_OUTPUT" \
    "$CONFIG" \
    --pe-rows="$PE_ROWS" \
    --pe-cols="$PE_COLS" \
    --cmd="$BENCHMARK_BIN" \
    --cmd-args "$MATRIX_SIZE" "$MATRIX_SIZE" "$MATRIX_SIZE" "1" \
    > "$LMUL_OUTPUT/simulation.log" 2>&1; then
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
else
    LMUL_EXIT_CODE=0
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

if ! "$GEM5_BINARY" \
    --outdir="$IEEE_OUTPUT" \
    "$CONFIG" \
    --pe-rows="$PE_ROWS" \
    --pe-cols="$PE_COLS" \
    --cmd="$BENCHMARK_BIN" \
    --cmd-args "$MATRIX_SIZE" "$MATRIX_SIZE" "$MATRIX_SIZE" "0" \
    > "$IEEE_OUTPUT/simulation.log" 2>&1; then
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
else
    IEEE_EXIT_CODE=0
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

# Step 3: Extract output matrices (if available via result readback)
echo
echo "Step 3: Extracting output matrices..."
echo "  (Note: Currently using test pattern data in accelerator)"
echo "  (DMA implementation needed for actual matrix data)"

# TODO: Extract matrices using result readback registers
# For now, we'll note that both use the same test pattern
# so outputs should be comparable once DMA is implemented

# Step 4: Compare performance metrics
echo
echo "Step 4: Comparing performance metrics..."
if [ $LMUL_STATS_OK -eq 1 ] && [ $IEEE_STATS_OK -eq 1 ]; then
    echo "  Running comparison..."
    python3 "$SCRIPT_DIR/compare_metrics.py" \
        "$LMUL_OUTPUT/stats.txt" \
        "$IEEE_OUTPUT/stats.txt" \
        > "$OUTPUT_DIR/performance_comparison.txt" 2>&1
    
    if [ $? -eq 0 ]; then
        echo "✓ Performance comparison complete"
        echo
        cat "$OUTPUT_DIR/performance_comparison.txt"
    else
        echo "⚠ Performance comparison failed"
        cat "$OUTPUT_DIR/performance_comparison.txt"
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
if [ -f "$OUTPUT_DIR/performance_comparison.txt" ]; then
    echo "  - Performance comparison: $OUTPUT_DIR/performance_comparison.txt"
fi
echo
echo "Next Steps:"
echo "==========="
echo
echo "1. View performance comparison:"
echo "   cat $OUTPUT_DIR/performance_comparison.txt"
echo
echo "2. Compare stats manually:"
echo "   python3 $SCRIPT_DIR/compare_metrics.py $LMUL_OUTPUT/stats.txt $IEEE_OUTPUT/stats.txt"
echo
echo "3. View simulation logs:"
echo "   tail -50 $LMUL_OUTPUT/simulation.log"
echo "   tail -50 $IEEE_OUTPUT/simulation.log"
echo
echo "4. Extract detailed metrics:"
echo "   python3 $SCRIPT_DIR/extract_stats.py $LMUL_OUTPUT/stats.txt"
echo "   python3 $SCRIPT_DIR/extract_stats.py $IEEE_OUTPUT/stats.txt"
echo
echo "=========================================="
echo
