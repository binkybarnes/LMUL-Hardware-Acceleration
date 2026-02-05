#!/bin/bash
#
# Quick readiness check: Is the simulation ready to run?
#
# This script checks:
# 1. gem5 binary exists and is valid
# 2. Accelerator model is installed and compiled
# 3. Benchmarks are built
# 4. Config files exist
#
# Usage: ./check_readiness.sh
#

set -e

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Auto-detect paths
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LMUL_GEM5="$(cd "$SCRIPT_DIR/.." && pwd)"
PROJECT_ROOT="$(dirname "$LMUL_GEM5")"
GEM5_ROOT="${PROJECT_ROOT}/gem5"

echo -e "${GREEN}=== Simulation Readiness Check ===${NC}"
echo

# Track status
READY=1
WARNINGS=0

check_pass() {
    echo -e "${GREEN}✓${NC} $1"
}

check_fail() {
    echo -e "${RED}✗${NC} $1"
    READY=0
}

check_warn() {
    echo -e "${YELLOW}⚠${NC} $1"
    WARNINGS=$((WARNINGS + 1))
}

# Check 1: gem5 binary
echo "1. Checking gem5 binary..."
if [ -f "${GEM5_ROOT}/build/ARM/gem5.opt" ]; then
    GEM5_BINARY="${GEM5_ROOT}/build/ARM/gem5.opt"
    # Check if it's a valid ELF file (not corrupted)
    if file "$GEM5_BINARY" 2>/dev/null | grep -q "ELF" || \
       head -c 4 "$GEM5_BINARY" 2>/dev/null | od -An -tx1 | grep -q "7f 45 4c 46"; then
        check_pass "gem5.opt binary exists and is valid"
    else
        check_fail "gem5.opt exists but appears corrupted (empty or invalid ELF)"
        echo "   Rebuild with: cd $GEM5_ROOT && ./gem5-sim/scripts/install_model.sh"
    fi
elif [ -f "${GEM5_ROOT}/build/ARM/gem5.debug" ]; then
    GEM5_BINARY="${GEM5_ROOT}/build/ARM/gem5.debug"
    if file "$GEM5_BINARY" 2>/dev/null | grep -q "ELF" || \
       head -c 4 "$GEM5_BINARY" 2>/dev/null | od -An -tx1 | grep -q "7f 45 4c 46"; then
        check_pass "gem5.debug binary exists and is valid"
    else
        check_fail "gem5.debug exists but appears corrupted"
        echo "   Rebuild with: cd $GEM5_ROOT && ./gem5-sim/scripts/install_model.sh"
    fi
else
    check_fail "gem5 binary not found"
    echo "   Build with: cd $GEM5_ROOT && ./gem5-sim/scripts/install_model.sh"
fi
echo

# Check 2: Accelerator model installed
echo "2. Checking accelerator model installation..."
if [ -d "${GEM5_ROOT}/src/dev/lmul_accel" ]; then
    check_pass "Accelerator source files installed"
    
    # Check if compiled
    if [ -f "${GEM5_ROOT}/build/ARM/dev/lmul_accel/lmul_accelerator.o" ]; then
        check_pass "Accelerator compiled (object file exists)"
    else
        check_fail "Accelerator not compiled"
        echo "   Rebuild with: cd $GEM5_ROOT && ./gem5-sim/scripts/install_model.sh"
    fi
    
    # Check Python bindings
    if [ -f "${GEM5_ROOT}/build/ARM/python/_m5/param_LMulAccelerator.cc" ]; then
        check_pass "Python bindings generated"
    else
        check_warn "Python bindings not found (may need rebuild)"
    fi
else
    check_fail "Accelerator not installed"
    echo "   Install with: cd $GEM5_ROOT && ./gem5-sim/scripts/install_model.sh"
fi
echo

# Check 3: Benchmarks
echo "3. Checking benchmarks..."
BENCHMARK_DIR="${LMUL_GEM5}/benchmarks/matrix_multiply"
if [ -f "${BENCHMARK_DIR}/matrix_multiply_no_printf.arm" ]; then
    check_pass "Benchmark binary exists (matrix_multiply_no_printf.arm)"
elif [ -f "${BENCHMARK_DIR}/matrix_multiply.arm" ]; then
    check_pass "Benchmark binary exists (matrix_multiply.arm)"
    check_warn "Consider using matrix_multiply_no_printf.arm to avoid syscall 403"
else
    check_fail "Benchmark not built"
    echo "   Build with: cd ${BENCHMARK_DIR} && make"
fi
echo

# Check 4: Config files
echo "4. Checking configuration files..."
if [ -f "${LMUL_GEM5}/configs/lmul_system.py" ]; then
    check_pass "System configuration exists (lmul_system.py)"
else
    check_fail "System configuration missing"
fi
echo

# Check 5: Helper scripts
echo "5. Checking helper scripts..."
if [ -f "${LMUL_GEM5}/scripts/run_simulation.sh" ]; then
    check_pass "run_simulation.sh exists"
    if [ -x "${LMUL_GEM5}/scripts/run_simulation.sh" ]; then
        check_pass "run_simulation.sh is executable"
    else
        check_warn "run_simulation.sh not executable (run: chmod +x ...)"
    fi
else
    check_fail "run_simulation.sh missing"
fi
echo

# Summary
echo "=========================================="
if [ $READY -eq 1 ]; then
    echo -e "${GREEN}✓ READY TO RUN!${NC}"
    echo
    echo "You can run a simulation with:"
    echo "  cd $LMUL_GEM5"
    echo "  ./scripts/run_simulation.sh --test"
    echo
    if [ $WARNINGS -gt 0 ]; then
        echo -e "${YELLOW}Note: $WARNINGS warning(s) above (non-critical)${NC}"
    fi
else
    echo -e "${RED}✗ NOT READY${NC}"
    echo
    echo "Please fix the issues above and run this script again."
    echo
    echo "Quick fixes:"
    echo "  - Build gem5: cd $GEM5_ROOT && ./gem5-sim/scripts/install_model.sh"
    echo "  - Build benchmark: cd ${BENCHMARK_DIR} && make"
fi
echo "=========================================="

exit $READY
