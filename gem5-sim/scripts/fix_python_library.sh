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

# Common locations
for path in /usr/lib /usr/lib/x86_64-linux-gnu /usr/local/lib; do
    if [ -f "${path}/${LIB_NAME}" ]; then
        FOUND_LIB="${path}/${LIB_NAME}"
        echo -e "${GREEN}✓ Found: ${FOUND_LIB}${NC}"
        break
    fi
done

if [ -z "$FOUND_LIB" ]; then
    echo -e "${RED}✗ ${LIB_NAME} not found in standard locations${NC}"
    echo
    echo "Searching system..."
    FOUND_LIB=$(find /usr -name "${LIB_NAME}" 2>/dev/null | head -1)
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
if [ -n "$FOUND_LIB" ] && dpkg -l | grep -q "python3-dev"; then
    echo -e "${GREEN}✓ Python setup looks good${NC}"
    echo
    echo "If build still fails, try:"
    if [ -n "$FOUND_LIB" ]; then
        LIB_DIR=$(dirname "$FOUND_LIB")
        echo "  export LD_LIBRARY_PATH=\$LD_LIBRARY_PATH:${LIB_DIR}"
    fi
elif ! dpkg -l | grep -q "python3-dev"; then
    echo -e "${RED}✗ python3-dev is missing${NC}"
    echo
    echo "Action required:"
    echo "  Contact your mentor to install:"
    echo "    sudo apt-get install python3-dev"
else
    echo -e "${YELLOW}⚠ Python library found but may need configuration${NC}"
    echo
    if [ -n "$FOUND_LIB" ]; then
        LIB_DIR=$(dirname "$FOUND_LIB")
        echo "Try setting library path:"
        echo "  export LD_LIBRARY_PATH=\$LD_LIBRARY_PATH:${LIB_DIR}"
    fi
fi
echo "=========================================="
