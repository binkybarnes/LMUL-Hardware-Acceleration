#!/bin/bash
#
# Diagnose and fix Python library issues for gem5 build
#
# Usage: ./fix_python_library.sh
#

set -e

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}=== Python Library Diagnostic ===${NC}"
echo

# Get Python version
PYTHON_VERSION=$(python3 --version 2>&1 | awk '{print $2}' | cut -d. -f1,2)
PYTHON_MAJOR=$(echo $PYTHON_VERSION | cut -d. -f1)
PYTHON_MINOR=$(echo $PYTHON_VERSION | cut -d. -f2)

echo "Python version: $PYTHON_VERSION"
echo

# Check for Python shared library
echo "1. Checking for Python shared library..."
LIB_NAME="libpython${PYTHON_VERSION}.so.1.0"
FOUND_LIB=""

# Check conda first (since python3-config points to conda)
CONDA_PREFIX=$(python3 -c "import sys; print(sys.prefix)" 2>/dev/null || echo "")
if [ -n "$CONDA_PREFIX" ] && [ "$CONDA_PREFIX" != "/usr" ]; then
    echo "   Detected conda Python at: $CONDA_PREFIX"
    # Check conda lib directory
    CONDA_LIB="${CONDA_PREFIX}/lib"
    if [ -f "${CONDA_LIB}/${LIB_NAME}" ]; then
        FOUND_LIB="${CONDA_LIB}/${LIB_NAME}"
        echo -e "${GREEN}✓ Found in conda: ${FOUND_LIB}${NC}"
    else
        # Try alternative names
        ALT_LIB=$(find "${CONDA_LIB}" -name "libpython${PYTHON_VERSION}*.so*" 2>/dev/null | head -1)
        if [ -n "$ALT_LIB" ]; then
            FOUND_LIB="$ALT_LIB"
            echo -e "${YELLOW}⚠ Found similar in conda: ${FOUND_LIB}${NC}"
        fi
    fi
fi

# Common system locations
if [ -z "$FOUND_LIB" ]; then
    for path in /usr/lib /usr/lib/x86_64-linux-gnu /usr/local/lib; do
        if [ -f "${path}/${LIB_NAME}" ]; then
            FOUND_LIB="${path}/${LIB_NAME}"
            echo -e "${GREEN}✓ Found in system: ${FOUND_LIB}${NC}"
            break
        fi
    done
fi

if [ -z "$FOUND_LIB" ]; then
    echo -e "${RED}✗ ${LIB_NAME} not found in standard locations${NC}"
    echo
    echo "Searching system..."
    FOUND_LIB=$(find /usr /opt -name "${LIB_NAME}" 2>/dev/null | head -1)
    if [ -n "$FOUND_LIB" ]; then
        echo -e "${YELLOW}⚠ Found at: ${FOUND_LIB}${NC}"
        echo "   (not in standard library path)"
    else
        echo -e "${RED}✗ Not found anywhere${NC}"
    fi
fi
echo

# Check for python3-dev
echo "2. Checking for python3-dev package..."
if dpkg -l | grep -q "python3-dev"; then
    echo -e "${GREEN}✓ python3-dev installed${NC}"
else
    echo -e "${RED}✗ python3-dev not installed${NC}"
    echo
    echo "This is likely the problem!"
    echo "Contact your mentor to install:"
    echo "  sudo apt-get install python3-dev"
fi
echo

# Check LD_LIBRARY_PATH
echo "3. Checking library path..."
if [ -n "$LD_LIBRARY_PATH" ]; then
    echo "LD_LIBRARY_PATH is set: $LD_LIBRARY_PATH"
else
    echo "LD_LIBRARY_PATH is not set"
fi

if [ -n "$FOUND_LIB" ] && [ -z "$(echo $LD_LIBRARY_PATH | grep -o $(dirname $FOUND_LIB))" ]; then
    LIB_DIR=$(dirname "$FOUND_LIB")
    echo
    echo -e "${YELLOW}⚠ Library found but not in LD_LIBRARY_PATH${NC}"
    echo "Try adding to your environment:"
    echo "  export LD_LIBRARY_PATH=\$LD_LIBRARY_PATH:${LIB_DIR}"
    echo
    echo "Or add to ~/.bashrc:"
    echo "  echo 'export LD_LIBRARY_PATH=\$LD_LIBRARY_PATH:${LIB_DIR}' >> ~/.bashrc"
    echo "  source ~/.bashrc"
fi
echo

# Check Python config
echo "4. Checking Python configuration..."
if python3-config --ldflags &>/dev/null; then
    echo -e "${GREEN}✓ python3-config works${NC}"
    PYTHON_LDFLAGS=$(python3-config --ldflags 2>/dev/null || echo "")
    echo "  LDFLAGS: $PYTHON_LDFLAGS"
else
    echo -e "${RED}✗ python3-config not working${NC}"
    echo "  This suggests python3-dev is missing"
fi
echo

# Summary
echo "=========================================="
if [ -n "$FOUND_LIB" ]; then
    LIB_DIR=$(dirname "$FOUND_LIB")
    if echo "$LD_LIBRARY_PATH" | grep -q "$LIB_DIR"; then
        echo -e "${GREEN}✓ Python library found and in LD_LIBRARY_PATH${NC}"
        echo "  Library: $FOUND_LIB"
        echo
        echo "Python setup should work. Try building gem5:"
        echo "  ./gem5-sim/scripts/install_model.sh"
    else
        echo -e "${YELLOW}⚠ Python library found but not in LD_LIBRARY_PATH${NC}"
        echo "  Library: $FOUND_LIB"
        echo
        echo "Add to library path:"
        echo "  export LD_LIBRARY_PATH=\$LD_LIBRARY_PATH:${LIB_DIR}"
        echo
        echo "Or add to ~/.bashrc:"
        echo "  echo 'export LD_LIBRARY_PATH=\$LD_LIBRARY_PATH:${LIB_DIR}' >> ~/.bashrc"
        echo "  source ~/.bashrc"
        echo
        echo "Then try building gem5:"
        echo "  ./gem5-sim/scripts/install_model.sh"
    fi
elif ! dpkg -l | grep -q "python3-dev" 2>/dev/null; then
    echo -e "${RED}✗ python3-dev is missing and Python library not found${NC}"
    echo
    echo "Action required:"
    if [ -n "$CONDA_PREFIX" ] && [ "$CONDA_PREFIX" != "/usr" ]; then
        echo "  Option 1: Try using conda Python library (if available):"
        echo "    find $CONDA_PREFIX/lib -name 'libpython*.so*'"
        echo "    export LD_LIBRARY_PATH=\$LD_LIBRARY_PATH:$CONDA_PREFIX/lib"
        echo
    fi
    echo "  Option 2: Contact your mentor to install:"
    echo "    sudo apt-get install python3-dev"
else
    echo -e "${YELLOW}⚠ Python library not found but python3-dev is installed${NC}"
    echo "  This is unusual. Check if Python was installed via conda."
    if [ -n "$CONDA_PREFIX" ] && [ "$CONDA_PREFIX" != "/usr" ]; then
        echo "  Conda Python detected at: $CONDA_PREFIX"
        echo "  Try: export LD_LIBRARY_PATH=\$LD_LIBRARY_PATH:$CONDA_PREFIX/lib"
    fi
fi
echo "=========================================="
