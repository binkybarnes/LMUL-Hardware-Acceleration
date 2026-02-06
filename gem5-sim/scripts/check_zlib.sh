#!/bin/bash
#
# Check for zlib library (needed for gem5 build)
#
# Usage: ./check_zlib.sh
#

set -e

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}=== zlib Library Check ===${NC}"
echo

# Check for zlib library
echo "1. Checking for zlib library..."
FOUND_LIB=""

# Check conda first
if [ -d "/opt/conda" ]; then
    CONDA_LIB=$(find /opt/conda/lib -name "libz.so*" 2>/dev/null | head -1)
    if [ -n "$CONDA_LIB" ]; then
        FOUND_LIB="$CONDA_LIB"
        echo -e "${GREEN}✓ Found in conda: ${FOUND_LIB}${NC}"
    fi
fi

# Check system locations
if [ -z "$FOUND_LIB" ]; then
    for path in /usr/lib /usr/lib/x86_64-linux-gnu /usr/local/lib; do
        if [ -f "${path}/libz.so" ] || [ -f "${path}/libz.so.1" ]; then
            FOUND_LIB=$(find "${path}" -name "libz.so*" 2>/dev/null | head -1)
            echo -e "${GREEN}✓ Found in system: ${FOUND_LIB}${NC}"
            break
        fi
    done
fi

if [ -z "$FOUND_LIB" ]; then
    echo -e "${RED}✗ libz.so not found${NC}"
    FOUND_LIB=$(find /usr /opt -name "libz.so*" 2>/dev/null | head -1)
    if [ -n "$FOUND_LIB" ]; then
        echo -e "${YELLOW}⚠ Found at: ${FOUND_LIB}${NC}"
    fi
fi
echo

# Check for zlib.h header
echo "2. Checking for zlib.h header..."
FOUND_HEADER=""

# Check conda first
if [ -d "/opt/conda" ]; then
    CONDA_HEADER=$(find /opt/conda/include -name "zlib.h" 2>/dev/null | head -1)
    if [ -n "$CONDA_HEADER" ]; then
        FOUND_HEADER="$CONDA_HEADER"
        echo -e "${GREEN}✓ Found in conda: ${FOUND_HEADER}${NC}"
    fi
fi

# Check system locations
if [ -z "$FOUND_HEADER" ]; then
    for path in /usr/include /usr/local/include; do
        if [ -f "${path}/zlib.h" ]; then
            FOUND_HEADER="${path}/zlib.h"
            echo -e "${GREEN}✓ Found in system: ${FOUND_HEADER}${NC}"
            break
        fi
    done
fi

if [ -z "$FOUND_HEADER" ]; then
    echo -e "${RED}✗ zlib.h not found${NC}"
    FOUND_HEADER=$(find /usr /opt -name "zlib.h" 2>/dev/null | head -1)
    if [ -n "$FOUND_HEADER" ]; then
        echo -e "${YELLOW}⚠ Found at: ${FOUND_HEADER}${NC}"
    fi
fi
echo

# Summary
echo "=========================================="
if [ -n "$FOUND_LIB" ] && [ -n "$FOUND_HEADER" ]; then
    LIB_DIR=$(dirname "$FOUND_LIB")
    HEADER_DIR=$(dirname "$FOUND_HEADER")
    
    echo -e "${GREEN}✓ zlib found!${NC}"
    echo "  Library: $FOUND_LIB"
    echo "  Header: $FOUND_HEADER"
    echo
    
    # Check if in standard paths
    if echo "$LIB_DIR" | grep -q "/usr/lib\|/usr/local/lib"; then
        if echo "$HEADER_DIR" | grep -q "/usr/include\|/usr/local/include"; then
            echo "zlib is in standard system paths - should work automatically"
        else
            echo "Add to include path:"
            echo "  export C_INCLUDE_PATH=\$C_INCLUDE_PATH:${HEADER_DIR}"
            echo "  export CPLUS_INCLUDE_PATH=\$CPLUS_INCLUDE_PATH:${HEADER_DIR}"
        fi
    elif echo "$LIB_DIR" | grep -q "/opt/conda"; then
        echo "zlib is in conda - add to paths:"
        echo "  export LD_LIBRARY_PATH=\$LD_LIBRARY_PATH:${LIB_DIR}"
        echo "  export C_INCLUDE_PATH=\$C_INCLUDE_PATH:${HEADER_DIR}"
        echo "  export CPLUS_INCLUDE_PATH=\$CPLUS_INCLUDE_PATH:${HEADER_DIR}"
        echo
        echo "Or add to ~/.bashrc:"
        echo "  echo 'export LD_LIBRARY_PATH=\$LD_LIBRARY_PATH:${LIB_DIR}' >> ~/.bashrc"
        echo "  echo 'export C_INCLUDE_PATH=\$C_INCLUDE_PATH:${HEADER_DIR}' >> ~/.bashrc"
        echo "  echo 'export CPLUS_INCLUDE_PATH=\$CPLUS_INCLUDE_PATH:${HEADER_DIR}' >> ~/.bashrc"
    else
        echo "Add to paths:"
        echo "  export LD_LIBRARY_PATH=\$LD_LIBRARY_PATH:${LIB_DIR}"
        echo "  export C_INCLUDE_PATH=\$C_INCLUDE_PATH:${HEADER_DIR}"
        echo "  export CPLUS_INCLUDE_PATH=\$CPLUS_INCLUDE_PATH:${HEADER_DIR}"
    fi
elif [ -n "$FOUND_LIB" ] || [ -n "$FOUND_HEADER" ]; then
    echo -e "${YELLOW}⚠ zlib partially found${NC}"
    if [ -n "$FOUND_LIB" ]; then
        echo "  Library: $FOUND_LIB"
    fi
    if [ -n "$FOUND_HEADER" ]; then
        echo "  Header: $FOUND_HEADER"
    fi
    echo
    echo "Missing component - contact mentor to install:"
    echo "  sudo apt-get install zlib1g-dev"
else
    echo -e "${RED}✗ zlib not found${NC}"
    echo
    echo "Contact your mentor to install:"
    echo "  sudo apt-get install zlib1g-dev"
fi
echo "=========================================="
