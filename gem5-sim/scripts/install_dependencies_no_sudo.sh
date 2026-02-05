#!/bin/bash
#
# Install dependencies without sudo access
#
# This script installs what can be installed without root privileges:
# - Python packages (scons) via pip3 --user
# - Checks for system packages that may already be installed
#
# Usage: ./install_dependencies_no_sudo.sh
#

set -e

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}=== Installing Dependencies (No Sudo) ===${NC}"
echo

# Check what's already installed
echo "Checking installed dependencies..."

MISSING_SYSTEM=()
MISSING_PYTHON=()

for cmd in gcc g++ python3 git make; do
    if command -v $cmd &> /dev/null; then
        echo -e "${GREEN}✓${NC} $cmd installed"
    else
        echo -e "${RED}✗${NC} $cmd not found"
        MISSING_SYSTEM+=("$cmd")
    fi
done

# Check for scons
if command -v scons &> /dev/null; then
    echo -e "${GREEN}✓${NC} scons installed"
else
    echo -e "${RED}✗${NC} scons not found"
    MISSING_PYTHON+=("scons")
fi

echo

# Install Python packages (no sudo needed)
if [ ${#MISSING_PYTHON[@]} -gt 0 ]; then
    echo "Installing Python packages (no sudo needed)..."
    
    for pkg in "${MISSING_PYTHON[@]}"; do
        echo "Installing $pkg..."
        pip3 install --user "$pkg"
    done
    
    # Add user bin to PATH
    if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
        export PATH="$HOME/.local/bin:$PATH"
        echo
        echo -e "${YELLOW}⚠ Added ~/.local/bin to PATH for this session${NC}"
        echo "To make it permanent, add this to your ~/.bashrc:"
        echo "  export PATH=\"\$HOME/.local/bin:\$PATH\""
        echo
        echo "Or run:"
        echo "  echo 'export PATH=\"\$HOME/.local/bin:\$PATH\"' >> ~/.bashrc"
        echo "  source ~/.bashrc"
    fi
    
    # Verify installation
    if command -v scons &> /dev/null; then
        echo -e "${GREEN}✓${NC} scons installed successfully"
    else
        echo -e "${RED}✗${NC} scons installation failed"
        echo "Try: pip3 install --user scons"
        exit 1
    fi
else
    echo -e "${GREEN}✓${NC} All Python packages installed"
fi

echo

# System packages (need sudo or admin)
if [ ${#MISSING_SYSTEM[@]} -gt 0 ]; then
    echo -e "${YELLOW}⚠ Missing system packages (require sudo/admin):${NC}"
    for pkg in "${MISSING_SYSTEM[@]}"; do
        echo "  - $pkg"
    done
    echo
    echo "Options:"
    echo "1. Contact your mentor/system administrator to install:"
    echo "   sudo apt-get install -y ${MISSING_SYSTEM[*]}"
    echo
    echo "2. Check if packages are installed in non-standard locations:"
    echo "   which gcc"
    echo "   which g++"
    echo
    echo "3. Some packages might be available via modules (if using module system):"
    echo "   module avail"
    echo "   module load gcc"
fi

echo
echo "=========================================="
if [ ${#MISSING_SYSTEM[@]} -eq 0 ] && [ ${#MISSING_PYTHON[@]} -eq 0 ]; then
    echo -e "${GREEN}✓ All dependencies installed!${NC}"
else
    echo -e "${YELLOW}⚠ Some dependencies still missing${NC}"
    echo "   See above for installation instructions"
fi
echo "=========================================="
