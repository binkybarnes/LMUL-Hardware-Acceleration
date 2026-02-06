#!/bin/bash
#
# Test if zlib can be detected by scons/gem5 build system
#
# Usage: ./test_zlib_detection.sh
#

set -e

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}=== Testing zlib Detection for gem5 Build ===${NC}"
echo

# First, check if zlib exists
echo "1. Checking for zlib files..."
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
"${SCRIPT_DIR}/check_zlib.sh"
echo

# Set up conda paths if they exist
if [ -d "/opt/conda/lib" ] && [ -d "/opt/conda/include" ]; then
    echo "2. Setting up conda paths..."
    export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:/opt/conda/lib"
    export C_INCLUDE_PATH="${C_INCLUDE_PATH}:/opt/conda/include"
    export CPLUS_INCLUDE_PATH="${CPLUS_INCLUDE_PATH}:/opt/conda/include"
    export CPPFLAGS="-I/opt/conda/include ${CPPFLAGS}"
    export LDFLAGS="-L/opt/conda/lib ${LDFLAGS}"
    export PKG_CONFIG_PATH="/opt/conda/lib/pkgconfig:${PKG_CONFIG_PATH}"
    echo -e "${GREEN}✓ Environment variables set${NC}"
    echo "  LD_LIBRARY_PATH: $LD_LIBRARY_PATH"
    echo "  C_INCLUDE_PATH: $C_INCLUDE_PATH"
    echo "  CPLUS_INCLUDE_PATH: $CPLUS_INCLUDE_PATH"
    echo "  CPPFLAGS: $CPPFLAGS"
    echo "  LDFLAGS: $LDFLAGS"
    echo "  PKG_CONFIG_PATH: $PKG_CONFIG_PATH"
    echo
fi

# Test 1: Can compiler find zlib.h?
echo "3. Testing if compiler can find zlib.h..."
TEST_FILE="/tmp/test_zlib.c"
cat > "$TEST_FILE" << 'EOF'
#include <zlib.h>
int main() { return 0; }
EOF

if gcc -I/opt/conda/include -c "$TEST_FILE" -o /tmp/test_zlib.o 2>&1; then
    echo -e "${GREEN}✓ Compiler can find zlib.h with -I/opt/conda/include${NC}"
    rm -f /tmp/test_zlib.o
else
    echo -e "${YELLOW}⚠ Compiler test failed, trying with C_INCLUDE_PATH...${NC}"
    if gcc -c "$TEST_FILE" -o /tmp/test_zlib.o 2>&1; then
        echo -e "${GREEN}✓ Compiler can find zlib.h via C_INCLUDE_PATH${NC}"
        rm -f /tmp/test_zlib.o
    else
        echo -e "${RED}✗ Compiler cannot find zlib.h${NC}"
    fi
fi
rm -f "$TEST_FILE"
echo

# Test 2: Can linker find libz?
echo "4. Testing if linker can find libz..."
TEST_FILE="/tmp/test_zlib_link.c"
cat > "$TEST_FILE" << 'EOF'
#include <zlib.h>
int main() {
    z_stream strm;
    return 0;
}
EOF

if gcc -L/opt/conda/lib "$TEST_FILE" -lz -o /tmp/test_zlib_link 2>&1; then
    echo -e "${GREEN}✓ Linker can find libz with -L/opt/conda/lib${NC}"
    rm -f /tmp/test_zlib_link
else
    echo -e "${YELLOW}⚠ Linker test failed, trying with LDFLAGS...${NC}"
    if gcc "$TEST_FILE" -lz -o /tmp/test_zlib_link 2>&1; then
        echo -e "${GREEN}✓ Linker can find libz via LDFLAGS${NC}"
        rm -f /tmp/test_zlib_link
    else
        echo -e "${RED}✗ Linker cannot find libz${NC}"
    fi
fi
rm -f "$TEST_FILE"
echo

# Test 3: Can pkg-config find zlib?
echo "5. Testing pkg-config..."
if command -v pkg-config >/dev/null 2>&1; then
    if pkg-config --exists zlib 2>/dev/null; then
        echo -e "${GREEN}✓ pkg-config can find zlib${NC}"
        echo "  CFLAGS: $(pkg-config --cflags zlib)"
        echo "  LIBS: $(pkg-config --libs zlib)"
    else
        echo -e "${YELLOW}⚠ pkg-config cannot find zlib${NC}"
        if [ -n "$PKG_CONFIG_PATH" ]; then
            echo "  PKG_CONFIG_PATH is set: $PKG_CONFIG_PATH"
        fi
    fi
else
    echo -e "${YELLOW}⚠ pkg-config not available${NC}"
fi
echo

# Test 4: Check if scons can detect it (if gem5 directory exists)
if [ -d "../gem5" ] || [ -d "../../gem5" ]; then
    echo "6. Testing scons detection (if gem5 is available)..."
    GEM5_DIR=""
    if [ -d "../gem5" ]; then
        GEM5_DIR="../gem5"
    elif [ -d "../../gem5" ]; then
        GEM5_DIR="../../gem5"
    fi
    
    if [ -n "$GEM5_DIR" ] && [ -f "$GEM5_DIR/SConstruct" ]; then
        echo "  Found gem5 at: $GEM5_DIR"
        echo "  Running scons --help to check configuration..."
        cd "$GEM5_DIR"
        # Just check if scons runs, don't actually build
        if PYTHONUNBUFFERED=1 scons --help >/dev/null 2>&1; then
            echo -e "${GREEN}✓ scons is available${NC}"
        else
            echo -e "${YELLOW}⚠ scons check failed${NC}"
        fi
        cd - >/dev/null
    fi
fi

echo
echo "=========================================="
echo "Summary:"
echo "  If all tests pass, zlib should be detectable by gem5 build"
echo "  If tests fail, check the paths and environment variables above"
echo "=========================================="
