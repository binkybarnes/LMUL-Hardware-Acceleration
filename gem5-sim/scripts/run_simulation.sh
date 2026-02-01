#!/bin/bash
#
# Run gem5 simulation with LMUL accelerator
#

set -e

# Default configuration (auto-detect paths)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LMUL_GEM5="$(cd "$SCRIPT_DIR/.." && pwd)"                    # gem5-sim/
PROJECT_ROOT="$(dirname "$LMUL_GEM5")"                       # repo root
GEM5_ROOT="${PROJECT_ROOT}/gem5"                             # gem5 repo

# Default parameters
PE_ROWS=4
PE_COLS=4
USE_IEEE=0
MATRIX_SIZE=8
OUTPUT_DIR="${LMUL_GEM5}/m5out"
BENCHMARK="matrix_multiply"
TEST_MODE=0

# Usage function
usage() {
    echo "Usage: $0 [OPTIONS]"
    echo
    echo "Options:"
    echo "  --test              Run quick test (4x4 matrices)"
    echo "  --pe-rows N         PE array rows (default: 4)"
    echo "  --pe-cols N         PE array columns (default: 4)"
    echo "  --size N            Matrix size NxN (default: 8)"
    echo "  --ieee              Use IEEE BF16 instead of LMUL"
    echo "  --benchmark NAME    Benchmark to run (default: matrix_multiply)"
    echo "  --output-dir DIR    Output directory (default: m5out)"
    echo "  -h, --help          Show this help"
    echo
    echo "Examples:"
    echo "  $0 --test"
    echo "  $0 --size 16 --pe-rows 8 --pe-cols 8"
    echo "  $0 --size 32 --ieee"
    exit 1
}

# Parse arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        --test)
            TEST_MODE=1
            MATRIX_SIZE=4
            shift
            ;;
        --pe-rows)
            PE_ROWS="$2"
            shift 2
            ;;
        --pe-cols)
            PE_COLS="$2"
            shift 2
            ;;
        --size)
            MATRIX_SIZE="$2"
            shift 2
            ;;
        --ieee)
            USE_IEEE=1
            shift
            ;;
        --benchmark)
            BENCHMARK="$2"
            shift 2
            ;;
        --output-dir)
            OUTPUT_DIR="$2"
            shift 2
            ;;
        -h|--help)
            usage
            ;;
        *)
            echo "Unknown option: $1"
            usage
            ;;
    esac
done

# Check gem5 exists
if [ ! -f "$GEM5_ROOT/build/ARM/gem5.opt" ]; then
    echo "Error: gem5 not built. Run install_model.sh first."
    exit 1
fi

# Determine benchmark binary
BENCHMARK_BIN="${LMUL_GEM5}/benchmarks/${BENCHMARK}/${BENCHMARK}.arm"

if [ ! -f "$BENCHMARK_BIN" ]; then
    echo "Error: Benchmark binary not found: $BENCHMARK_BIN"
    echo "Build it with:"
    echo "  cd ${LMUL_GEM5}/benchmarks/${BENCHMARK}"
    echo "  make"
    exit 1
fi

# Create output directory
mkdir -p "$OUTPUT_DIR"

# Print configuration
echo "========================================"
echo "gem5 LMUL Accelerator Simulation"
echo "========================================"
echo "Configuration:"
echo "  PE Array: ${PE_ROWS}x${PE_COLS}"
echo "  Mode: $([ $USE_IEEE -eq 1 ] && echo 'IEEE BF16' || echo 'LMUL')"
echo "  Matrix Size: ${MATRIX_SIZE}x${MATRIX_SIZE}"
echo "  Benchmark: ${BENCHMARK}"
echo "  Output: ${OUTPUT_DIR}"
echo "========================================"
echo

# Build gem5 command
GEM5_CMD="${GEM5_ROOT}/build/ARM/gem5.opt"
CONFIG="${LMUL_GEM5}/configs/lmul_system.py"

GEM5_ARGS=(
    --outdir="$OUTPUT_DIR"
)

CONFIG_ARGS=(
    --pe-rows="$PE_ROWS"
    --pe-cols="$PE_COLS"
    --cmd="$BENCHMARK_BIN"
    --cmd-args
    "$MATRIX_SIZE"
    "$MATRIX_SIZE"
    "$MATRIX_SIZE"
    "1"
)

if [ $USE_IEEE -eq 1 ]; then
    CONFIG_ARGS+=(--use-ieee)
fi

# Run simulation
echo "Running simulation..."
echo "Command: $GEM5_CMD ${GEM5_ARGS[@]} $CONFIG ${CONFIG_ARGS[@]}"
echo

# Check if running in background mode (via nohup or similar)
if [ -t 0 ] && [ -t 1 ]; then
    # Interactive terminal - run normally
    "$GEM5_CMD" "${GEM5_ARGS[@]}" "$CONFIG" "${CONFIG_ARGS[@]}"
else
    # Background/non-interactive - ensure output is flushed
    "$GEM5_CMD" "${GEM5_ARGS[@]}" "$CONFIG" "${CONFIG_ARGS[@]}" 2>&1 | tee -a "$OUTPUT_DIR/simulation.log"
fi

# Check if simulation completed
if [ $? -eq 0 ]; then
    echo
    echo "========================================"
    echo "Simulation Complete!"
    echo "========================================"
    echo "Output files in: $OUTPUT_DIR"
    echo
    
    # Show key statistics
    if [ -f "$OUTPUT_DIR/stats.txt" ]; then
        echo "Key Statistics:"
        echo "---------------"
        grep -E "simSeconds|simTicks|numCycles" "$OUTPUT_DIR/stats.txt" || true
        grep "lmul_accel" "$OUTPUT_DIR/stats.txt" || true
        echo
    fi
    
    echo "View full statistics: cat $OUTPUT_DIR/stats.txt"
    echo "Extract metrics: python3 ${LMUL_GEM5}/scripts/extract_stats.py $OUTPUT_DIR/stats.txt"
else
    echo "Simulation failed!"
    exit 1
fi
