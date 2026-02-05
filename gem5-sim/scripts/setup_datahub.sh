#!/bin/bash
#
# Setup script for University Datahub Server
#
# This script guides you through setting up the gem5 LMUL accelerator project
# on a university datahub server.
#
# Usage: ./setup_datahub.sh
#

set -e

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}=== gem5 LMUL Accelerator Setup ===${NC}"
echo "This script will guide you through setup on a datahub server."
echo

# Get script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LMUL_GEM5="$(cd "$SCRIPT_DIR/.." && pwd)"
PROJECT_ROOT="$(dirname "$LMUL_GEM5")"

echo "Project root: $PROJECT_ROOT"
echo

# Step 1: Check compatibility
echo -e "${YELLOW}Step 1: Checking system compatibility...${NC}"
if ! "$SCRIPT_DIR/check_compatibility.sh"; then
    echo
    echo -e "${RED}Compatibility check failed.${NC}"
    echo "Please address the issues and run this script again."
    echo
    echo "If you need to request resources from your mentor, run:"
    echo "  ./gem5-sim/scripts/check_compatibility.sh"
    echo "  (Copy the 'Report for Mentor' section)"
    exit 1
fi
echo

# Step 2: Clone gem5
echo -e "${YELLOW}Step 2: Setting up gem5 repository...${NC}"
GEM5_ROOT="${PROJECT_ROOT}/gem5"

if [ -d "$GEM5_ROOT" ]; then
    echo "gem5 directory already exists at $GEM5_ROOT"
    read -p "Use existing? (y/n) " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "Please remove $GEM5_ROOT and run this script again."
        exit 1
    fi
else
    echo "Cloning gem5 repository..."
    git clone https://github.com/gem5/gem5.git "$GEM5_ROOT"
    cd "$GEM5_ROOT"
    git checkout stable
    echo "✓ gem5 cloned"
fi
echo

# Step 3: Install dependencies
echo -e "${YELLOW}Step 3: Checking dependencies...${NC}"
MISSING=()

# Check for required packages
for pkg in gcc g++ python3 scons git make; do
    if ! command -v $pkg &> /dev/null; then
        MISSING+=("$pkg")
    fi
done

if [ ${#MISSING[@]} -gt 0 ]; then
    echo "Missing dependencies: ${MISSING[*]}"
    echo
    
    # Check if sudo is available
    if command -v sudo &> /dev/null && sudo -n true 2>/dev/null; then
        echo "Install with:"
        echo "  sudo apt-get update"
        echo "  sudo apt-get install -y ${MISSING[*]}"
        echo
        read -p "Install now? (requires sudo) (y/n) " -n 1 -r
        echo
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            sudo apt-get update
            sudo apt-get install -y "${MISSING[@]}"
        else
            echo "Please install dependencies manually and run this script again."
            exit 1
        fi
    else
        echo -e "${YELLOW}⚠ No sudo access detected${NC}"
        echo
        echo "You'll need to install dependencies without sudo:"
        echo
        echo "1. For scons (Python package, no sudo needed):"
        echo "   pip3 install --user scons"
        echo
        echo "2. For system packages (gcc, g++, make, git, etc.):"
        echo "   Contact your mentor or system administrator"
        echo "   Or check if they're already installed:"
        for pkg in "${MISSING[@]}"; do
            if [ "$pkg" != "scons" ]; then
                echo "     - $pkg"
            fi
        done
        echo
        echo "3. Try installing scons now (no sudo needed):"
        read -p "Install scons with pip3? (y/n) " -n 1 -r
        echo
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            pip3 install --user scons
            # Add user bin to PATH if not already there
            if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
                export PATH="$HOME/.local/bin:$PATH"
                echo "Added ~/.local/bin to PATH for this session"
                echo "Add to ~/.bashrc: export PATH=\"\$HOME/.local/bin:\$PATH\""
            fi
        fi
        echo
        echo "After installing dependencies, run this script again."
        exit 1
    fi
else
    echo "✓ All required dependencies installed"
fi

# Check for ARM cross-compiler
if ! command -v arm-linux-gnueabihf-gcc &> /dev/null && \
   ! command -v arm-linux-gnueabi-gcc &> /dev/null; then
    echo
    echo "ARM cross-compiler not found (needed for benchmarks)"
    if command -v sudo &> /dev/null && sudo -n true 2>/dev/null; then
        read -p "Install? (y/n) " -n 1 -r
        echo
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            sudo apt-get install -y gcc-arm-linux-gnueabihf
        fi
    else
        echo -e "${YELLOW}⚠ No sudo access - cannot install cross-compiler${NC}"
        echo "   Contact your mentor to install: gcc-arm-linux-gnueabihf"
        echo "   Or check if it's already available in a different location"
    fi
fi
echo

# Step 4: Install accelerator model
echo -e "${YELLOW}Step 4: Installing LMUL accelerator model...${NC}"
echo "This will:"
echo "  1. Copy accelerator files into gem5"
echo "  2. Register with gem5 build system"
echo "  3. Build gem5 (this takes 30-60 minutes)"
echo

# Check memory before building
TOTAL_MEM_GB=$(free -g | grep "^Mem:" | awk '{print $2}')
if [ $TOTAL_MEM_GB -lt 32 ]; then
    echo -e "${YELLOW}⚠ WARNING: Only ${TOTAL_MEM_GB}GB RAM detected${NC}"
    echo "   gem5 linker may fail with < 32GB RAM"
    echo "   If build fails, report to mentor:"
    echo "     - Current RAM: ${TOTAL_MEM_GB}GB"
    echo "     - Needed: 32GB+"
    echo "     - Error: Linker killed during final linking phase"
    echo
    read -p "Continue anyway? (y/n) " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "Please request more resources from your mentor first."
        exit 1
    fi
fi

read -p "Proceed with installation? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    cd "$PROJECT_ROOT"
    "$LMUL_GEM5/scripts/install_model.sh"
else
    echo "Skipping installation. Run manually with:"
    echo "  ./gem5-sim/scripts/install_model.sh"
fi
echo

# Step 5: Build benchmarks
echo -e "${YELLOW}Step 5: Building benchmarks...${NC}"
BENCHMARK_DIR="${LMUL_GEM5}/benchmarks/matrix_multiply"
if [ -f "${BENCHMARK_DIR}/matrix_multiply.arm" ] || \
   [ -f "${BENCHMARK_DIR}/matrix_multiply_no_printf.arm" ]; then
    echo "✓ Benchmarks already built"
else
    read -p "Build benchmarks now? (y/n) " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        cd "$BENCHMARK_DIR"
        make
        echo "✓ Benchmarks built"
    else
        echo "Build later with:"
        echo "  cd $BENCHMARK_DIR && make"
    fi
fi
echo

# Step 6: Verify setup
echo -e "${YELLOW}Step 6: Verifying setup...${NC}"
if "$LMUL_GEM5/scripts/check_readiness.sh"; then
    echo
    echo -e "${GREEN}✓ Setup complete!${NC}"
    echo
    echo "Next steps:"
    echo "  1. Run a test simulation:"
    echo "     cd $LMUL_GEM5"
    echo "     ./scripts/run_simulation.sh --test"
    echo
    echo "  2. Compare LMUL vs IEEE:"
    echo "     ./scripts/compare_lmul_vs_ieee.sh"
    echo
    echo "  3. Read documentation:"
    echo "     cat $LMUL_GEM5/README.md"
else
    echo
    echo -e "${RED}Setup incomplete.${NC}"
    echo "Please address the issues above."
fi
