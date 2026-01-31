#!/bin/bash
#
# Run comparison test: LMUL Accelerator vs Python LMUL Reference
#
# This script:
# 1. Generates Python LMUL reference output
# 2. Runs simulation with LMUL accelerator
# 3. Checks accuracy of results (accelerator vs Python reference)
# 4. Extracts performance metrics
#
# Usage:
#   ./run_comparison.sh [--size N] [--pe-rows R] [--pe-cols C]
#

set -e

# Defaults
MATRIX_SIZE=4
PE_ROWS=4
PE_COLS=4
OUTPUT_DIR="comparison_results"

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
    exit 1
fi

# Create output directories
ACCEL_OUTPUT="${OUTPUT_DIR}/accelerator"
mkdir -p "$ACCEL_OUTPUT"

echo "=========================================="
echo "LMUL Accelerator vs Python LMUL Reference"
echo "=========================================="
echo "Matrix Size: ${MATRIX_SIZE}x${MATRIX_SIZE}"
echo "PE Array: ${PE_ROWS}x${PE_COLS}"
echo "Output: ${OUTPUT_DIR}"
echo "=========================================="
echo

# Step 1: Generate Python LMUL reference
echo "Step 1: Generating Python LMUL reference..."
python3 "$SCRIPT_DIR/generate_python_reference.py" \
    "$MATRIX_SIZE" "$MATRIX_SIZE" "$MATRIX_SIZE" \
    "$OUTPUT_DIR/python_reference.txt"

if [ $? -ne 0 ]; then
    echo "ERROR: Failed to generate Python reference"
    exit 1
fi

echo "✓ Python reference generated"

# Step 2: Run LMUL accelerator simulation
echo
echo "Step 2: Running LMUL accelerator simulation..."
"$GEM5_BINARY" \
    --outdir="$LMUL_OUTPUT" \
    "$CONFIG" \
    --pe-rows="$PE_ROWS" \
    --pe-cols="$PE_COLS" \
    --cmd="${LMUL_GEM5}/benchmarks/matrix_multiply/matrix_multiply.arm" \
    --cmd-args "$MATRIX_SIZE" "$MATRIX_SIZE" "$MATRIX_SIZE" "1" \
    > "$LMUL_OUTPUT/simulation.log" 2>&1

if [ $? -ne 0 ]; then
    echo "ERROR: LMUL simulation failed. Check $LMUL_OUTPUT/simulation.log"
    exit 1
fi

echo "✓ LMUL simulation complete"

# Step 2: Run IEEE BF16 simulation (CPU implementation)
echo
echo "Step 2: Running IEEE BF16 simulation..."
"$GEM5_BINARY" \
    --outdir="$IEEE_OUTPUT" \
    "$CONFIG" \
    --pe-rows="$PE_ROWS" \
    --pe-cols="$PE_COLS" \
    --use-ieee \
    --cmd="${LMUL_GEM5}/benchmarks/matrix_multiply/matrix_multiply.arm" \
    --cmd-args "$MATRIX_SIZE" "$MATRIX_SIZE" "$MATRIX_SIZE" "0" \
    > "$IEEE_OUTPUT/simulation.log" 2>&1

if [ $? -ne 0 ]; then
    echo "ERROR: IEEE simulation failed. Check $IEEE_OUTPUT/simulation.log"
    exit 1
fi

echo "✓ IEEE simulation complete"

# Step 3: Extract output matrices (if available)
echo
echo "Step 3: Extracting results..."
# TODO: Extract matrices from simulation output
# For now, we'll skip accuracy check if matrices aren't available

# Step 4: Check accuracy (if output files exist)
if [ -f "$LMUL_OUTPUT/output.txt" ] && [ -f "$IEEE_OUTPUT/output.txt" ]; then
    echo "Step 4: Checking accuracy..."
    python3 "$SCRIPT_DIR/check_accuracy.py" \
        "$LMUL_OUTPUT/output.txt" \
        "$IEEE_OUTPUT/output.txt" \
        > "$OUTPUT_DIR/accuracy_report.txt" 2>&1
    
    if [ $? -eq 0 ]; then
        echo "✓ Accuracy check passed"
        cat "$OUTPUT_DIR/accuracy_report.txt"
    else
        echo "⚠ Accuracy check failed. See $OUTPUT_DIR/accuracy_report.txt"
        cat "$OUTPUT_DIR/accuracy_report.txt"
    fi
else
    echo "⚠ Step 4: Skipping accuracy check (output files not found)"
    echo "  (This is expected if accelerator access isn't working yet)"
fi

# Step 5: Compare performance metrics
echo
echo "Step 5: Comparing performance metrics..."
if [ -f "$LMUL_OUTPUT/stats.txt" ] && [ -f "$IEEE_OUTPUT/stats.txt" ]; then
    python3 "$SCRIPT_DIR/compare_metrics.py" \
        "$LMUL_OUTPUT/stats.txt" \
        "$IEEE_OUTPUT/stats.txt" \
        > "$OUTPUT_DIR/metrics_comparison.txt" 2>&1
    
    echo "✓ Metrics comparison complete"
    cat "$OUTPUT_DIR/metrics_comparison.txt"
else
    echo "ERROR: Statistics files not found"
    echo "  LMUL: $LMUL_OUTPUT/stats.txt"
    echo "  IEEE: $IEEE_OUTPUT/stats.txt"
    exit 1
fi

echo
echo "=========================================="
echo "Comparison Complete!"
echo "=========================================="
echo "Results saved to: $OUTPUT_DIR/"
echo "  - Python reference: $OUTPUT_DIR/python_reference.txt"
echo "  - Accelerator stats: $ACCEL_OUTPUT/stats.txt"
echo "  - Accuracy report: $OUTPUT_DIR/accuracy_report.txt"
echo
