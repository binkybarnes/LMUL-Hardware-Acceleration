#!/bin/bash
#
# Verify gem5 LMUL Accelerator Setup
#

set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

# Auto-detect paths (run from gem5-sim/ or repo root)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LMUL_GEM5="$(cd "$SCRIPT_DIR/.." && pwd)"
PROJECT_ROOT="$(dirname "$LMUL_GEM5")"
GEM5_ROOT="${PROJECT_ROOT}/gem5"

echo -e "${GREEN}gem5 LMUL Accelerator Setup Verification${NC}"
echo "=========================================="
echo

# Track status
ALL_GOOD=1

check_pass() {
    echo -e "${GREEN}✓${NC} $1"
}

check_fail() {
    echo -e "${RED}✗${NC} $1"
    ALL_GOOD=0
}

check_warn() {
    echo -e "${YELLOW}⚠${NC} $1"
}

# Check 1: Dependencies
echo "Checking dependencies..."
for cmd in gcc scons python3 git; do
    if command -v $cmd &> /dev/null; then
        check_pass "$cmd installed"
    else
        check_fail "$cmd not found"
    fi
done
echo

# Check 2: gem5 repository
echo "Checking gem5 repository..."
if [ -d "$GEM5_ROOT" ]; then
    check_pass "gem5 directory exists"
    
    if [ -d "$GEM5_ROOT/.git" ]; then
        check_pass "gem5 is a git repository"
    else
        check_warn "gem5 directory exists but is not a git repo"
    fi
else
    check_fail "gem5 not found at $GEM5_ROOT"
    echo "  Run: git clone https://github.com/gem5/gem5.git $GEM5_ROOT"
fi
echo

# Check 3: gem5 build
echo "Checking gem5 build..."
if [ -f "$GEM5_ROOT/build/ARM/gem5.opt" ]; then
    check_pass "gem5.opt (ARM) built"
elif [ -f "$GEM5_ROOT/build/X86/gem5.opt" ]; then
    check_pass "gem5.opt (X86) built"
else
    check_fail "gem5 not built"
    echo "  Run: cd $GEM5_ROOT && scons build/ARM/gem5.opt -j\$(nproc)"
fi
echo

# Check 4: LMUL model files
echo "Checking LMUL accelerator model..."
if [ -d "$GEM5_ROOT/src/dev/lmul_accel" ]; then
    check_pass "LMUL accelerator directory exists"
    
    if [ -f "$GEM5_ROOT/src/dev/lmul_accel/lmul_accelerator.hh" ]; then
        check_pass "lmul_accelerator.hh present"
    else
        check_fail "lmul_accelerator.hh missing"
    fi
    
    if [ -f "$GEM5_ROOT/src/dev/lmul_accel/lmul_accelerator.cc" ]; then
        check_pass "lmul_accelerator.cc present"
    else
        check_fail "lmul_accelerator.cc missing"
    fi
    
    if [ -f "$GEM5_ROOT/src/dev/lmul_accel/SConscript" ]; then
        check_pass "SConscript present"
    else
        check_fail "SConscript missing"
    fi
else
    check_fail "LMUL accelerator not installed"
    echo "  Run: ${PROJECT_ROOT}/gem5/scripts/install_model.sh"
fi
echo

# Check 5: Model compiled
echo "Checking if model is compiled..."
if [ -f "$GEM5_ROOT/build/ARM/dev/lmul_accel/lmul_accelerator.o" ]; then
    check_pass "LMUL accelerator compiled (ARM)"
elif [ -f "$GEM5_ROOT/build/X86/dev/lmul_accel/lmul_accelerator.o" ]; then
    check_pass "LMUL accelerator compiled (X86)"
else
    check_warn "LMUL accelerator not compiled yet"
    echo "  This is normal if you haven't run install_model.sh"
fi
echo

# Check 6: Benchmarks
echo "Checking benchmarks..."
BENCHMARK_DIR="${LMUL_GEM5}/benchmarks/matrix_multiply"
if [ -f "$BENCHMARK_DIR/matrix_multiply.c" ]; then
    check_pass "matrix_multiply.c source present"
else
    check_fail "matrix_multiply.c source missing"
fi

if [ -f "$BENCHMARK_DIR/Makefile" ]; then
    check_pass "Makefile present"
else
    check_fail "Makefile missing"
fi

if [ -f "$BENCHMARK_DIR/matrix_multiply.arm" ]; then
    check_pass "matrix_multiply.arm binary built"
elif [ -f "$BENCHMARK_DIR/matrix_multiply.x86" ]; then
    check_pass "matrix_multiply.x86 binary built"
else
    check_warn "Benchmark not compiled yet"
    echo "  Run: cd $BENCHMARK_DIR && make"
fi
echo

# Check 7: Cross compiler
echo "Checking cross compiler..."
if command -v arm-linux-gnueabi-gcc &> /dev/null; then
    check_pass "ARM cross compiler installed"
else
    check_warn "ARM cross compiler not found"
    echo "  Install: sudo apt install gcc-arm-linux-gnueabi"
fi
echo

# Check 8: Configuration files
echo "Checking configuration files..."
if [ -f "${PROJECT_ROOT}/gem5/configs/lmul_system.py" ]; then
    check_pass "lmul_system.py configuration present"
else
    check_fail "lmul_system.py missing"
fi
echo

# Check 9: Scripts
echo "Checking helper scripts..."
for script in install_model.sh run_simulation.sh; do
    if [ -f "${PROJECT_ROOT}/gem5/scripts/$script" ]; then
        check_pass "$script present"
        if [ -x "${PROJECT_ROOT}/gem5/scripts/$script" ]; then
            check_pass "$script is executable"
        else
            check_warn "$script not executable (run: chmod +x ...)"
        fi
    else
        check_fail "$script missing"
    fi
done
echo

# Summary
echo "=========================================="
if [ $ALL_GOOD -eq 1 ]; then
    echo -e "${GREEN}All checks passed! ✓${NC}"
    echo
    echo "You're ready to run simulations!"
    echo
    echo "Next steps:"
    echo "1. If gem5 not built yet:"
    echo "   cd $GEM5_ROOT && scons build/ARM/gem5.opt -j\$(nproc)"
    echo
    echo "2. Install LMUL model (if not done):"
    echo "   ${PROJECT_ROOT}/gem5/scripts/install_model.sh"
    echo
    echo "3. Build benchmark:"
    echo "   cd ${PROJECT_ROOT}/gem5/benchmarks/matrix_multiply && make"
    echo
    echo "4. Run test simulation:"
    echo "   cd ${PROJECT_ROOT}/gem5 && ./scripts/run_simulation.sh --test"
else
    echo -e "${RED}Some checks failed ✗${NC}"
    echo
    echo "Please address the issues above and run this script again."
    echo
    echo "Quick fix guide:"
    echo "- Missing dependencies: sudo apt install <package>"
    echo "- gem5 not cloned: git clone https://github.com/gem5/gem5.git $GEM5_ROOT"
    echo "- gem5 not built: cd $GEM5_ROOT && scons build/ARM/gem5.opt -j\$(nproc)"
    echo "- Model not installed: ${PROJECT_ROOT}/gem5/scripts/install_model.sh"
fi
echo "=========================================="
