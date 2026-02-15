#!/bin/bash
#
# Check for all gem5 build dependencies
# This helps identify what packages might be needed before building
#
# Usage: ./check_gem5_dependencies.sh
#

set -e

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}=== gem5 Build Dependencies Check ===${NC}"
echo

MISSING=()
WARNINGS=()

check_lib() {
    local name=$1
    local lib_file=$2
    local header_file=$3
    local pkg_name=$4
    
    echo "Checking for $name..."
    
    # If no lib/header specified, check for an executable (e.g. protoc)
    if [ -z "$lib_file" ] && [ -z "$header_file" ]; then
        if command -v "$name" >/dev/null 2>&1; then
            echo -e "  ${GREEN}✓${NC} Found: $(command -v "$name")"
        else
            echo -e "  ${RED}✗${NC} Not found"
            if [ -n "$pkg_name" ]; then
                echo "    Install: sudo apt-get install $pkg_name"
                MISSING+=("$pkg_name")
            fi
        fi
        echo
        return
    fi
    
    # Check library
    FOUND_LIB=""
    if [ -n "$lib_file" ]; then
        # Check conda
        if [ -d "/opt/conda/lib" ]; then
            FOUND_LIB=$(find /opt/conda/lib -name "$lib_file" 2>/dev/null | head -1)
        fi
        # Check system
        if [ -z "$FOUND_LIB" ]; then
            for path in /usr/lib /usr/lib/x86_64-linux-gnu /usr/local/lib; do
                if [ -f "${path}/${lib_file}" ] || find "${path}" -name "${lib_file}" 2>/dev/null | head -1 | grep -q .; then
                    FOUND_LIB=$(find "${path}" -name "${lib_file}" 2>/dev/null | head -1)
                    break
                fi
            done
        fi
    fi
    
    # Check header
    FOUND_HEADER=""
    if [ -n "$header_file" ]; then
        # Check conda
        if [ -d "/opt/conda/include" ]; then
            FOUND_HEADER=$(find /opt/conda/include -name "$header_file" 2>/dev/null | head -1)
        fi
        # Check system
        if [ -z "$FOUND_HEADER" ]; then
            for path in /usr/include /usr/local/include; do
                if [ -f "${path}/${header_file}" ]; then
                    FOUND_HEADER="${path}/${header_file}"
                    break
                fi
            done
        fi
    fi
    
    # Report
    if [ -n "$FOUND_LIB" ] && [ -n "$FOUND_HEADER" ]; then
        echo -e "  ${GREEN}✓${NC} Found: $FOUND_LIB, $FOUND_HEADER"
    elif [ -n "$FOUND_LIB" ] || [ -n "$FOUND_HEADER" ]; then
        echo -e "  ${YELLOW}⚠${NC} Partially found"
        if [ -n "$FOUND_LIB" ]; then
            echo "    Library: $FOUND_LIB"
        fi
        if [ -n "$FOUND_HEADER" ]; then
            echo "    Header: $FOUND_HEADER"
        fi
        WARNINGS+=("$name (partial)")
    else
        echo -e "  ${RED}✗${NC} Not found"
        if [ -n "$pkg_name" ]; then
            echo "    Install: sudo apt-get install $pkg_name"
            MISSING+=("$pkg_name")
        fi
    fi
    echo
}

# Core dependencies
echo -e "${BLUE}Core Build Dependencies:${NC}"
check_lib "zlib" "libz.so*" "zlib.h" "zlib1g-dev"
check_lib "Python development headers" "libpython*.so*" "Python.h" "python3-dev"

# Optional but commonly used
echo -e "${BLUE}Optional Dependencies (may be needed):${NC}"
check_lib "libpng" "libpng.so*" "png.h" "libpng-dev"
check_lib "HDF5" "libhdf5.so*" "hdf5.h" "libhdf5-dev"
check_lib "protobuf" "libprotobuf.so*" "google/protobuf/message.h" "libprotobuf-dev protobuf-compiler"
check_lib "protoc" "" "" "protobuf-compiler"

# Check for pkg-config (helps with library detection)
echo "Checking for pkg-config..."
if command -v pkg-config >/dev/null 2>&1; then
    echo -e "  ${GREEN}✓${NC} pkg-config found"
else
    echo -e "  ${YELLOW}⚠${NC} pkg-config not found (helps with library detection)"
    echo "    Install: sudo apt-get install pkg-config"
    WARNINGS+=("pkg-config")
fi
echo

# Check Python packages
echo -e "${BLUE}Python Dependencies:${NC}"
echo "Checking for scons..."
if command -v scons >/dev/null 2>&1 || python3 -c "import SCons" 2>/dev/null; then
    echo -e "  ${GREEN}✓${NC} scons found"
else
    echo -e "  ${RED}✗${NC} scons not found"
    echo "    Install: pip3 install scons (or sudo apt-get install scons)"
    MISSING+=("scons")
fi
echo

# Summary
echo "=========================================="
if [ ${#MISSING[@]} -eq 0 ] && [ ${#WARNINGS[@]} -eq 0 ]; then
    echo -e "${GREEN}✓ All dependencies found!${NC}"
elif [ ${#MISSING[@]} -eq 0 ]; then
    echo -e "${YELLOW}⚠ Some optional dependencies missing or partial${NC}"
    echo "Warnings: ${WARNINGS[*]}"
else
    echo -e "${RED}✗ Missing required dependencies${NC}"
    echo
    echo "Missing packages:"
    printf "  - %s\n" "${MISSING[@]}"
    echo
    echo "Install with:"
    echo "  sudo apt-get install ${MISSING[*]}"
    if [ ${#WARNINGS[@]} -gt 0 ]; then
        echo
        echo "Warnings: ${WARNINGS[*]}"
    fi
fi
echo "=========================================="