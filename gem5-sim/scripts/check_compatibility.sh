#!/bin/bash
#
# System Compatibility Check for gem5 LMUL Accelerator Project
#
# This script checks if the system has the necessary resources and dependencies
# to build and run gem5 simulations.
#
# Usage: ./check_compatibility.sh
#

set -e

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}=== System Compatibility Check ===${NC}"
echo "Checking if this system can build and run gem5 simulations..."
echo

# Track status
COMPATIBLE=1
WARNINGS=0
INFO=()

check_pass() {
    echo -e "${GREEN}✓${NC} $1"
}

check_fail() {
    echo -e "${RED}✗${NC} $1"
    COMPATIBLE=0
}

check_warn() {
    echo -e "${YELLOW}⚠${NC} $1"
    WARNINGS=$((WARNINGS + 1))
}

check_info() {
    echo -e "${BLUE}ℹ${NC} $1"
    INFO+=("$1")
}

# Check 1: Architecture
echo "1. Checking system architecture..."
ARCH=$(uname -m)
OS=$(uname -s)
echo "   Architecture: $ARCH"
echo "   OS: $OS"

if [ "$ARCH" = "x86_64" ]; then
    check_pass "Architecture compatible (x86_64)"
elif [ "$ARCH" = "aarch64" ] || [ "$ARCH" = "arm64" ]; then
    check_warn "ARM64 architecture detected"
    echo "   Note: gem5 can build on ARM64, but ARM target builds may have issues"
else
    check_fail "Unsupported architecture: $ARCH"
fi
echo

# Check 2: Memory
echo "2. Checking system memory..."
if command -v free &> /dev/null; then
    # Get total memory in GB
    TOTAL_MEM_KB=$(free | grep "^Mem:" | awk '{print $2}')
    TOTAL_MEM_GB=$((TOTAL_MEM_KB / 1024 / 1024))
    AVAIL_MEM_KB=$(free | grep "^Mem:" | awk '{print $7}')
    AVAIL_MEM_GB=$((AVAIL_MEM_KB / 1024 / 1024))
    
    echo "   Total RAM: ${TOTAL_MEM_GB} GB"
    echo "   Available RAM: ${AVAIL_MEM_GB} GB"
    
    if [ $TOTAL_MEM_GB -ge 32 ]; then
        check_pass "Sufficient RAM (32GB+ recommended for gem5 builds)"
    elif [ $TOTAL_MEM_GB -ge 16 ]; then
        check_warn "Limited RAM (16GB) - linker may fail during gem5 build"
        echo "   Recommendation: Request 32GB+ from your mentor"
        echo "   Current: ${TOTAL_MEM_GB}GB (need 32GB+)"
    else
        check_fail "Insufficient RAM (${TOTAL_MEM_GB}GB) - need at least 16GB, 32GB+ recommended"
    fi
    
    # Check swap
    if command -v swapon &> /dev/null; then
        SWAP_KB=$(swapon --show=SIZE --noheadings --bytes 2>/dev/null | awk '{sum+=$1} END {print sum/1024}' || echo "0")
        SWAP_GB=$((SWAP_KB / 1024 / 1024))
        if [ $SWAP_GB -gt 0 ]; then
            check_info "Swap space: ${SWAP_GB}GB"
        else
            check_warn "No swap space - may help with linker memory issues"
        fi
    fi
else
    check_warn "Cannot check memory (free command not available)"
fi
echo

# Check 3: Disk space
echo "3. Checking disk space..."
if command -v df &> /dev/null; then
    AVAIL_DISK=$(df -BG . | tail -1 | awk '{print $4}' | sed 's/G//')
    echo "   Available disk space: ${AVAIL_DISK}GB"
    
    if [ $AVAIL_DISK -ge 50 ]; then
        check_pass "Sufficient disk space (50GB+ recommended)"
    elif [ $AVAIL_DISK -ge 20 ]; then
        check_warn "Limited disk space (${AVAIL_DISK}GB) - need 20GB+ for gem5 build"
    else
        check_fail "Insufficient disk space (${AVAIL_DISK}GB) - need at least 20GB"
    fi
else
    check_warn "Cannot check disk space (df command not available)"
fi
echo

# Check 4: Dependencies
echo "4. Checking required dependencies..."
MISSING_DEPS=()

for cmd in gcc g++ python3 scons git make; do
    if command -v $cmd &> /dev/null; then
        VERSION=$($cmd --version 2>&1 | head -1)
        check_pass "$cmd installed ($(echo $VERSION | cut -d' ' -f1-3))"
    else
        check_fail "$cmd not found"
        MISSING_DEPS+=("$cmd")
    fi
done

# Check Python version
if command -v python3 &> /dev/null; then
    PYTHON_VERSION=$(python3 --version 2>&1 | awk '{print $2}')
    PYTHON_MAJOR=$(echo $PYTHON_VERSION | cut -d. -f1)
    PYTHON_MINOR=$(echo $PYTHON_VERSION | cut -d. -f2)
    if [ $PYTHON_MAJOR -ge 3 ] && [ $PYTHON_MINOR -ge 6 ]; then
        check_pass "Python 3.6+ ($PYTHON_VERSION)"
    else
        check_fail "Python 3.6+ required (found $PYTHON_VERSION)"
    fi
fi

# Check for ARM cross-compiler (optional but recommended)
if command -v arm-linux-gnueabihf-gcc &> /dev/null; then
    check_pass "ARM cross-compiler installed (arm-linux-gnueabihf-gcc)"
elif command -v arm-linux-gnueabi-gcc &> /dev/null; then
    check_pass "ARM cross-compiler installed (arm-linux-gnueabi-gcc)"
else
    check_warn "ARM cross-compiler not found (needed for benchmarks)"
    echo "   Install: sudo apt-get install gcc-arm-linux-gnueabihf"
fi
echo

# Check 5: Build tools
echo "5. Checking build tools..."
if command -v scons &> /dev/null; then
    SCONS_VERSION=$(scons --version 2>&1 | head -1)
    check_pass "scons installed ($SCONS_VERSION)"
else
    check_fail "scons not found (required for gem5 build)"
    echo "   Install: pip3 install scons"
fi

# Check for alternative linkers (helpful for memory issues)
if command -v ld.gold &> /dev/null; then
    check_info "Gold linker available (more memory-efficient)"
elif command -v ld.lld &> /dev/null; then
    check_info "LLD linker available (more memory-efficient)"
else
    check_warn "No alternative linker found (gold/lld can help with memory issues)"
    echo "   Install: sudo apt-get install binutils-gold"
fi
echo

# Check 6: User limits
echo "6. Checking user resource limits..."
if command -v ulimit &> /dev/null; then
    MAX_VMEM=$(ulimit -v 2>/dev/null || echo "unlimited")
    MAX_DATA=$(ulimit -d 2>/dev/null || echo "unlimited")
    
    if [ "$MAX_VMEM" != "unlimited" ] && [ "$MAX_VMEM" != "-1" ]; then
        MAX_VMEM_GB=$((MAX_VMEM / 1024 / 1024))
        if [ $MAX_VMEM_GB -lt 16 ]; then
            check_warn "Virtual memory limit: ${MAX_VMEM_GB}GB (may be too low)"
        else
            check_info "Virtual memory limit: ${MAX_VMEM_GB}GB"
        fi
    else
        check_pass "Virtual memory limit: unlimited"
    fi
    
    if [ "$MAX_DATA" != "unlimited" ] && [ "$MAX_DATA" != "-1" ]; then
        MAX_DATA_GB=$((MAX_DATA / 1024 / 1024))
        check_info "Data segment limit: ${MAX_DATA_GB}GB"
    else
        check_pass "Data segment limit: unlimited"
    fi
else
    check_warn "Cannot check resource limits (ulimit not available)"
fi
echo

# Summary
echo "=========================================="
if [ $COMPATIBLE -eq 1 ]; then
    echo -e "${GREEN}✓ SYSTEM APPEARS COMPATIBLE${NC}"
    echo
    echo "You can proceed with setup:"
    echo "  1. cd /path/to/LMUL-Hardware-Acceleration"
    echo "  2. ./gem5-sim/scripts/setup_datahub.sh"
    echo
    if [ $WARNINGS -gt 0 ]; then
        echo -e "${YELLOW}Note: $WARNINGS warning(s) above (may cause issues)${NC}"
    fi
else
    echo -e "${RED}✗ SYSTEM NOT FULLY COMPATIBLE${NC}"
    echo
    echo "Issues found:"
    if [ ${#MISSING_DEPS[@]} -gt 0 ]; then
        echo "  - Missing dependencies: ${MISSING_DEPS[*]}"
        echo "    Install with: sudo apt-get install ${MISSING_DEPS[*]}"
    fi
    echo
    echo "Please address the issues above and run this script again."
fi

# Generate report for mentor
echo
echo "=========================================="
echo -e "${BLUE}Report for Mentor (if requesting resources):${NC}"
echo "=========================================="
echo "System Information:"
echo "  Architecture: $ARCH"
echo "  OS: $OS"
if command -v free &> /dev/null; then
    echo "  Total RAM: ${TOTAL_MEM_GB}GB"
    echo "  Available RAM: ${AVAIL_MEM_GB}GB"
fi
if command -v df &> /dev/null; then
    echo "  Available Disk: ${AVAIL_DISK}GB"
fi
echo
echo "Requirements for gem5 build:"
echo "  - RAM: 32GB+ recommended (16GB minimum, may fail at linker stage)"
echo "  - Disk: 20GB+ free space"
echo "  - Architecture: x86_64 (preferred) or ARM64"
echo
if [ $TOTAL_MEM_GB -lt 32 ]; then
    echo -e "${YELLOW}⚠ RECOMMENDATION: Request 32GB+ RAM${NC}"
    echo "   Current: ${TOTAL_MEM_GB}GB"
    echo "   Needed: 32GB+ (linker requires 8-12GB during final linking phase)"
fi
echo "=========================================="

exit $COMPATIBLE
