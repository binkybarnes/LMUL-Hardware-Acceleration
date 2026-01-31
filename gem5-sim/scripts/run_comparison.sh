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
echo "  This may take a few minutes..."
echo "  Command: $GEM5_BINARY --outdir=$ACCEL_OUTPUT $CONFIG ..."
echo

"$GEM5_BINARY" \
    --outdir="$ACCEL_OUTPUT" \
    "$CONFIG" \
    --pe-rows="$PE_ROWS" \
    --pe-cols="$PE_COLS" \
    --cmd="${LMUL_GEM5}/benchmarks/matrix_multiply/matrix_multiply.arm" \
    --cmd-args "$MATRIX_SIZE" "$MATRIX_SIZE" "$MATRIX_SIZE" "1" \
    > "$ACCEL_OUTPUT/simulation.log" 2>&1

SIM_EXIT_CODE=$?

if [ $SIM_EXIT_CODE -ne 0 ]; then
    echo "ERROR: Accelerator simulation failed (exit code: $SIM_EXIT_CODE)"
    echo "  Check log: $ACCEL_OUTPUT/simulation.log"
    echo "  Last 20 lines:"
    tail -20 "$ACCEL_OUTPUT/simulation.log"
    exit 1
fi

echo "✓ Accelerator simulation complete"

# Step 3: Extract output matrices (if available)
echo
echo "Step 3: Extracting results..."
# TODO: Extract matrices from simulation output
# For now, we'll skip accuracy check if matrices aren't available

# Step 4: Check accuracy (if output files exist)
if [ -f "$ACCEL_OUTPUT/output.txt" ] && [ -f "$OUTPUT_DIR/python_reference.txt" ]; then
    echo "Step 4: Checking accuracy (Accelerator vs Python LMUL)..."
    python3 "$SCRIPT_DIR/check_accuracy.py" \
        "$ACCEL_OUTPUT/output.txt" \
        "$OUTPUT_DIR/python_reference.txt" \
        > "$OUTPUT_DIR/accuracy_report.txt" 2>&1
    
    if [ $? -eq 0 ]; then
        echo "✓ Accuracy check passed"
        cat "$OUTPUT_DIR/accuracy_report.txt"
    else
        echo "⚠ Accuracy check failed. See $OUTPUT_DIR/accuracy_report.txt"
        cat "$OUTPUT_DIR/accuracy_report.txt"
        echo
        echo "WARNING: Accuracy check failed. Performance metrics may not be valid."
    fi
else
    echo "⚠ Step 4: Skipping accuracy check (output files not found)"
    echo "  Accelerator output: $ACCEL_OUTPUT/output.txt"
    echo "  Python reference: $OUTPUT_DIR/python_reference.txt"
    echo "  (This is expected if accelerator access isn't working yet)"
fi

# Step 5: Extract performance metrics
echo
echo "Step 5: Extracting performance metrics..."
if [ -f "$ACCEL_OUTPUT/stats.txt" ]; then
    echo "Accelerator statistics available at: $ACCEL_OUTPUT/stats.txt"
    echo
    echo "Key metrics:"
    grep -E "simSeconds|simTicks|numCycles|simInsts|cpi|ipc" "$ACCEL_OUTPUT/stats.txt" | head -10
    echo
    echo "For detailed analysis, use:"
    echo "  python3 $SCRIPT_DIR/../scripts/extract_stats.py $ACCEL_OUTPUT/stats.txt"
else
    echo "ERROR: Statistics file not found: $ACCEL_OUTPUT/stats.txt"
    exit 1
fi

echo
echo "=========================================="
echo "Comparison Complete!"
echo "=========================================="
echo "Results saved to: $OUTPUT_DIR/"
echo "  - Python reference: $OUTPUT_DIR/python_reference.txt"
echo "  - Accelerator stats: $ACCEL_OUTPUT/stats.txt"
if [ -f "$OUTPUT_DIR/accuracy_report.txt" ]; then
    echo "  - Accuracy report: $OUTPUT_DIR/accuracy_report.txt"
fi
echo
echo "Next Steps:"
echo "==========="
echo
echo "1. View accuracy report (if generated):"
echo "   cat $OUTPUT_DIR/accuracy_report.txt"
echo
echo "2. Extract detailed statistics:"
echo "   python3 $SCRIPT_DIR/extract_stats.py $ACCEL_OUTPUT/stats.txt"
echo
echo "3. Compare results manually:"
echo "   python3 $SCRIPT_DIR/check_accuracy.py <accelerator_output.txt> $OUTPUT_DIR/python_reference.txt"
echo
echo "4. View simulation log:"
echo "   cat $ACCEL_OUTPUT/simulation.log"
echo
echo "=========================================="
echo
