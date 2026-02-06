#!/bin/bash
#
# Install LMUL Accelerator Model into gem5
#

set -e  # Exit on error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${GREEN}LMUL Accelerator gem5 Installation${NC}"
echo "======================================"
echo

# Get paths (works from any location)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LMUL_GEM5="$(cd "$SCRIPT_DIR/.." && pwd)"                    # gem5-sim/
PROJECT_ROOT="$(dirname "$LMUL_GEM5")"                       # repo root
GEM5_ROOT="${PROJECT_ROOT}/gem5"                             # gem5 repo

# Check if gem5 exists
if [ ! -d "$GEM5_ROOT" ]; then
    echo -e "${RED}Error: gem5 not found at $GEM5_ROOT${NC}"
    echo "Please install gem5 first:"
    echo "  cd $PROJECT_ROOT"
    echo "  git clone https://github.com/gem5/gem5.git"
    exit 1
fi

echo -e "${YELLOW}Step 0: Cleaning up any previous installation...${NC}"

cd "$GEM5_ROOT"

# Clean Python caches FIRST (before any SConscript reading)
echo "  Cleaning Python caches (critical for flag registration)..."
find . -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null || true
find . -name "*.pyc" -delete 2>/dev/null || true
find . -name "*.pyo" -delete 2>/dev/null || true
find . -name ".sconsign.dblite" -delete 2>/dev/null || true

# Remove previous installation if it exists
if [ -d "src/dev/lmul_accel" ]; then
    echo "  Removing previous lmul_accel directory..."
    rm -rf "src/dev/lmul_accel"
fi

# Remove any guard files from previous builds
find . -name "lmul_accel_registered.flag" -delete 2>/dev/null || true

# Remove registration from src/dev/SConscript if it exists
if grep -q "lmul_accel" "src/dev/SConscript" 2>/dev/null; then
    echo "  Removing previous registration from build system..."
    # Count occurrences to detect duplicates
    count=$(grep -c "lmul_accel" "src/dev/SConscript" 2>/dev/null || echo "0")
    if [ "$count" -gt 1 ]; then
        echo "  WARNING: Found $count registrations (should be 1 or 0)"
    fi
    # Restore from backup if it exists, otherwise remove the line
    if [ -f "src/dev/SConscript.bak" ]; then
        cp "src/dev/SConscript.bak" "src/dev/SConscript"
        echo "  Restored from backup"
    else
        # Remove ALL occurrences (in case of duplicates)
        sed -i "/lmul_accel/d" "src/dev/SConscript"
        echo "  Removed registration line(s)"
    fi
else
    echo "  No previous registration found"
fi

echo -e "${YELLOW}Step 1: Creating accelerator directory in gem5...${NC}"
mkdir -p "$GEM5_ROOT/src/dev/lmul_accel"
echo "  Created $GEM5_ROOT/src/dev/lmul_accel/"

echo
echo -e "${YELLOW}Step 2: Copying accelerator model files...${NC}"

# Copy C++ files
cp -v "$LMUL_GEM5/models/lmul_accelerator.hh" "$GEM5_ROOT/src/dev/lmul_accel/"
cp -v "$LMUL_GEM5/models/lmul_accelerator.cc" "$GEM5_ROOT/src/dev/lmul_accel/"
cp -v "$LMUL_GEM5/models/SConscript" "$GEM5_ROOT/src/dev/lmul_accel/"

# Copy Python wrapper (only to lmul_accel directory, not to boards/)
cp -v "$LMUL_GEM5/models/LMulAccelerator.py" "$GEM5_ROOT/src/dev/lmul_accel/"

echo "  Files copied successfully"

echo
echo -e "${YELLOW}Step 3: Registering with gem5 build system...${NC}"

# Check if already registered and remove duplicates
if grep -q "lmul_accel" "$GEM5_ROOT/src/dev/SConscript"; then
    echo "  Found existing registration, cleaning up duplicates..."
    # Backup original
    cp "$GEM5_ROOT/src/dev/SConscript" "$GEM5_ROOT/src/dev/SConscript.bak"
    
    # Remove all existing lmul_accel entries (including variations)
    sed -i "/lmul_accel/d" "$GEM5_ROOT/src/dev/SConscript"
    
    # Verify removal
    if grep -q "lmul_accel" "$GEM5_ROOT/src/dev/SConscript"; then
        echo -e "  ${RED}ERROR: Failed to remove all registrations${NC}"
        exit 1
    fi
    
    # Add single registration (insert before the last line)
    sed -i "\$i SConscript('lmul_accel/SConscript')" "$GEM5_ROOT/src/dev/SConscript"
    
    # Verify only one registration exists
    reg_count=$(grep -c "lmul_accel" "$GEM5_ROOT/src/dev/SConscript" 2>/dev/null || echo "0")
    if [ "$reg_count" -ne 1 ]; then
        echo -e "  ${RED}ERROR: Registration count is $reg_count (should be 1)${NC}"
        exit 1
    fi
    
    echo "  Cleaned up and re-registered"
else
    echo "  Adding to $GEM5_ROOT/src/dev/SConscript"
    # Backup original
    cp "$GEM5_ROOT/src/dev/SConscript" "$GEM5_ROOT/src/dev/SConscript.bak"
    
    # Add our subdirectory (insert before the last line)
    sed -i "\$i SConscript('lmul_accel/SConscript')" "$GEM5_ROOT/src/dev/SConscript"
    
    # Verify registration was added
    if ! grep -q "lmul_accel" "$GEM5_ROOT/src/dev/SConscript"; then
        echo -e "  ${RED}ERROR: Failed to add registration${NC}"
        exit 1
    fi
    
    # Verify only one registration exists
    reg_count=$(grep -c "lmul_accel" "$GEM5_ROOT/src/dev/SConscript" 2>/dev/null || echo "0")
    if [ "$reg_count" -ne 1 ]; then
        echo -e "  ${RED}ERROR: Registration count is $reg_count (should be 1)${NC}"
        exit 1
    fi
    
    echo "  Registered successfully"
fi

echo
echo -e "${YELLOW}Step 4: Preparing build...${NC}"

cd "$GEM5_ROOT"

# Verify registration is correct before building
echo "  Verifying registration..."
reg_count=$(grep -c "lmul_accel" "src/dev/SConscript" 2>/dev/null || echo "0")
if [ "$reg_count" -gt 1 ]; then
    echo -e "  ${RED}ERROR: Found $reg_count registrations (should be exactly 1)${NC}"
    echo "  Registrations found at:"
    grep -n "lmul_accel" "src/dev/SConscript"
    exit 1
elif [ "$reg_count" -eq 0 ]; then
    echo -e "  ${RED}ERROR: No registration found (should be 1)${NC}"
    exit 1
else
    echo "  ✓ Registration verified (1 occurrence)"
fi

# CRITICAL: Remove ENTIRE build directory BEFORE building
# The "already found in importer" error happens when Python bindings
# find the SimObject already registered from a previous build attempt.
# We must completely remove the build directory to clear Python's module registry.
echo "  Removing entire build directory to prevent Python module conflicts..."
if [ -d "build" ]; then
    echo "  Removing build/ completely..."
    rm -rf "build/"
    echo "  ✓ Build directory completely removed"
else
    echo "  ✓ No build directory found (clean state)"
fi

# Determine which ISA to build (default to ARM)
ISA="ARM"
echo "  Will build for ISA: ${ISA}"

echo
echo -e "${YELLOW}Step 5: Rebuilding gem5...${NC}"
echo "This will take several minutes..."
echo
echo -e "${YELLOW}WARNING: Building gem5 in Codespaces often fails due to linker memory limits.${NC}"
echo -e "${YELLOW}If the build fails, you can:${NC}"
echo -e "${YELLOW}  1. Build gem5 locally and copy the binary${NC}"
echo -e "${YELLOW}  2. Use a pre-built gem5 binary${NC}"
echo -e "${YELLOW}  3. Build only the accelerator model for testing${NC}"
echo

# Final check: Ensure no duplicate registrations before building
echo "  Final verification before build..."
reg_count=$(grep -c "lmul_accel" "src/dev/SConscript" 2>/dev/null || echo "0")
if [ "$reg_count" -ne 1 ]; then
    echo -e "  ${RED}ERROR: Found $reg_count registrations before build (should be 1)${NC}"
    echo "  Registrations:"
    grep -n "lmul_accel" "src/dev/SConscript"
    exit 1
fi

# Ensure we're using a fresh Python process by explicitly calling python3
# This helps avoid any cached Python state
echo "  Starting fresh build (this may take 20-30 minutes)..."

# Determine number of parallel jobs
# Use fewer jobs in Codespaces to avoid memory issues
# Check if we're in a Codespace environment
if [ -n "${CODESPACES}" ] || [ -d "/workspaces" ]; then
    # Codespace detected - use single job to avoid OOM during linking
    # Linking phase is very memory-intensive
    JOBS=1
    echo "  Detected Codespace environment - using ${JOBS} parallel job (single-threaded)"
    echo "  Note: This is slower but avoids out-of-memory errors during linking"
else
    # Use all available cores, but cap at 4 to avoid memory issues
    AVAILABLE_CORES=$(nproc)
    if [ "$AVAILABLE_CORES" -gt 4 ]; then
        JOBS=4
    else
        JOBS=$AVAILABLE_CORES
    fi
    echo "  Using ${JOBS} parallel jobs"
fi

# Build gem5 - use explicit python3 to ensure fresh process
# The -u flag ensures unbuffered output
# In Codespaces, use debug binary with -O0 to reduce memory usage during linking
# This is necessary because the linker requires significant memory
if [ -n "${CODESPACES}" ] || [ -d "/workspaces" ]; then
    echo "  Codespace detected - using memory-efficient build settings"
    echo "  Building debug binary with -O0 (no optimization) to reduce linker memory usage"
    echo "  Check available memory:"
    free -h | grep -E "Mem|Swap" || true
    echo
    
    # Check if swap is available (helps with memory pressure)
    SWAP_AVAIL=$(free -h | grep Swap | awk '{print $2}' | sed 's/[^0-9]//g')
    if [ "$SWAP_AVAIL" = "0" ] || [ -z "$SWAP_AVAIL" ]; then
        echo "  WARNING: No swap space available"
        echo "  Consider creating swap to help with linker memory usage"
        echo "  (This requires root/sudo and may not be possible in Codespaces)"
    fi
    
    echo "  Checking memory limits..."
    ulimit -a | grep -E "virtual|data|stack" || true
    echo
    echo "  Attempting to increase memory limits for linker..."
    # Remove virtual memory limit if set (ulimit -v unlimited)
    # This allows the linker to use more memory
    ulimit -v unlimited 2>/dev/null || true
    ulimit -d unlimited 2>/dev/null || true
    echo "  Memory limits after adjustment:"
    ulimit -a | grep -E "virtual|data" || true
    echo
    
    # Try to free up memory before linking
    echo "  Attempting to free memory before build..."
    # Clear page cache (requires root, may not work in Codespaces)
    sync 2>/dev/null || true
    # Drop caches if possible (requires root)
    if [ "$(id -u)" -eq 0 ]; then
        echo 3 > /proc/sys/vm/drop_caches 2>/dev/null || true
        echo "  Dropped caches (if permitted)"
    fi
    echo "  Memory after cleanup:"
    free -h | grep -E "Mem|Swap" || true
    echo
    # Try building as shared library first (uses less memory during linking)
    # If that fails, fall back to regular binary
    if command -v ld.gold >/dev/null 2>&1; then
        echo "  Gold linker available - using it for better memory efficiency"
        BUILD_TARGET="build/${ISA}/gem5.debug"
        BUILD_FLAGS="-j${JOBS} CXXFLAGS='-O0' LINKFLAGS='-fuse-ld=gold -Wl,--no-keep-memory'"
    else
        echo "  Attempting shared library build (less memory during linking)..."
        echo "  If this fails, you may need to install gold linker or build locally"
        BUILD_TARGET="build/${ISA}/libgem5_debug.so"
        BUILD_FLAGS="-j${JOBS} CXXFLAGS='-O0' LINKFLAGS='-Wl,--no-keep-memory'"
    fi
else
    BUILD_TARGET="build/${ISA}/gem5.opt"
    BUILD_FLAGS="-j${JOBS}"
fi

# Add conda paths if they exist (for Python and zlib)
if [ -d "/opt/conda/lib" ] && [ -d "/opt/conda/include" ]; then
    echo "  Detected conda environment - adding conda paths to build"
    # Set environment variables for scons (it uses these)
    export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:/opt/conda/lib"
    # Clean up C_INCLUDE_PATH (remove leading/trailing colons)
    if [ -n "$C_INCLUDE_PATH" ]; then
        C_INCLUDE_PATH=$(echo "$C_INCLUDE_PATH" | sed 's/^:*//;s/:*$//')
        export C_INCLUDE_PATH="${C_INCLUDE_PATH}:/opt/conda/include"
    else
        export C_INCLUDE_PATH="/opt/conda/include"
    fi
    if [ -n "$CPLUS_INCLUDE_PATH" ]; then
        CPLUS_INCLUDE_PATH=$(echo "$CPLUS_INCLUDE_PATH" | sed 's/^:*//;s/:*$//')
        export CPLUS_INCLUDE_PATH="${CPLUS_INCLUDE_PATH}:/opt/conda/include"
    else
        export CPLUS_INCLUDE_PATH="/opt/conda/include"
    fi
    # Add to compiler flags for scons
    # Use CPPPATH and LIBPATH for scons (these are scons-specific variables)
    # Also add to CXXFLAGS and LINKFLAGS for compiler
    if echo "$BUILD_FLAGS" | grep -q "CXXFLAGS"; then
        # If CXXFLAGS already exists, append to it
        BUILD_FLAGS=$(echo "$BUILD_FLAGS" | sed "s/CXXFLAGS='\([^']*\)'/CXXFLAGS='\1 -I\/opt\/conda\/include'/")
        BUILD_FLAGS=$(echo "$BUILD_FLAGS" | sed "s/LINKFLAGS='\([^']*\)'/LINKFLAGS='\1 -L\/opt\/conda\/lib -Wl,-rpath,\/opt\/conda\/lib'/")
    else
        # Add new flags
        BUILD_FLAGS="${BUILD_FLAGS} CXXFLAGS='-I/opt/conda/include' LINKFLAGS='-L/opt/conda/lib -Wl,-rpath,/opt/conda/lib'"
    fi
    # Also set scons-specific paths
    # CPPPATH and LIBPATH are scons variables for include and library paths
    BUILD_FLAGS="${BUILD_FLAGS} CPPPATH=/opt/conda/include LIBPATH=/opt/conda/lib"
    
    # For zlib specifically, we may need to pass it as a build variable
    # Some scons configurations check for libraries using specific variable names
    # Try passing zlib paths explicitly
    BUILD_FLAGS="${BUILD_FLAGS} ZLIB_CPPPATH=/opt/conda/include ZLIB_LIBPATH=/opt/conda/lib"
    
    echo "  Added conda paths to compiler flags and scons paths"
    echo "  DEBUG: Updated BUILD_FLAGS includes conda paths"
fi

echo "  Build command: scons ${BUILD_TARGET} ${BUILD_FLAGS}"
echo "  This may take 30-60 minutes..."
echo "  DEBUG: BUILD_TARGET=${BUILD_TARGET}"
echo "  DEBUG: BUILD_FLAGS=${BUILD_FLAGS}"

# Execute the build - expand variables properly
BUILD_LOG="/tmp/gem5_build.log"

# For conda environments, set environment variables that scons uses during configuration
# scons checks for libraries during config phase, so these must be set before scons runs
if [ -d "/opt/conda/lib" ] && [ -d "/opt/conda/include" ]; then
    echo "  Setting environment variables for scons configuration checks..."
    
    # Ensure conda paths are in library path
    if ! echo "$LD_LIBRARY_PATH" | grep -q "/opt/conda/lib"; then
        export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:/opt/conda/lib"
    fi
    
    # Set include paths (scons uses these during config checks)
    if [ -n "$C_INCLUDE_PATH" ]; then
        C_INCLUDE_PATH=$(echo "$C_INCLUDE_PATH" | sed 's/^:*//;s/:*$//')
        if ! echo "$C_INCLUDE_PATH" | grep -q "/opt/conda/include"; then
            export C_INCLUDE_PATH="${C_INCLUDE_PATH}:/opt/conda/include"
        fi
    else
        export C_INCLUDE_PATH="/opt/conda/include"
    fi
    
    if [ -n "$CPLUS_INCLUDE_PATH" ]; then
        CPLUS_INCLUDE_PATH=$(echo "$CPLUS_INCLUDE_PATH" | sed 's/^:*//;s/:*$//')
        if ! echo "$CPLUS_INCLUDE_PATH" | grep -q "/opt/conda/include"; then
            export CPLUS_INCLUDE_PATH="${CPLUS_INCLUDE_PATH}:/opt/conda/include"
        fi
    else
        export CPLUS_INCLUDE_PATH="/opt/conda/include"
    fi
    
    # Set compiler/linker flags (scons may use these)
    export CPPFLAGS="-I/opt/conda/include ${CPPFLAGS}"
    export LDFLAGS="-L/opt/conda/lib -Wl,-rpath,/opt/conda/lib ${LDFLAGS}"
    
    # Set pkg-config path (scons may use pkg-config to find libraries)
    if [ -n "$PKG_CONFIG_PATH" ]; then
        if ! echo "$PKG_CONFIG_PATH" | grep -q "/opt/conda/lib/pkgconfig"; then
            export PKG_CONFIG_PATH="/opt/conda/lib/pkgconfig:${PKG_CONFIG_PATH}"
        fi
    else
        export PKG_CONFIG_PATH="/opt/conda/lib/pkgconfig"
    fi
    
    echo "  Environment variables set:"
    echo "    LD_LIBRARY_PATH: $LD_LIBRARY_PATH"
    echo "    C_INCLUDE_PATH: $C_INCLUDE_PATH"
    echo "    CPLUS_INCLUDE_PATH: $CPLUS_INCLUDE_PATH"
    echo "    CPPFLAGS: $CPPFLAGS"
    echo "    LDFLAGS: $LDFLAGS"
    echo "    PKG_CONFIG_PATH: $PKG_CONFIG_PATH"
    echo
fi

# Build with all environment variables available to scons
# Use env to ensure all variables are passed to scons process
# For conda zlib, we need to ensure the library can be found during config checks
# The key is that scons' config checks compile test programs that need to find zlib
if [ -d "/opt/conda/lib" ] && [ -d "/opt/conda/include" ]; then
    echo "  Running scons with conda zlib paths..."
    # Explicitly pass all environment variables to scons
    # This ensures scons' configuration checks can find zlib
    eval "PYTHONUNBUFFERED=1 env \
        LD_LIBRARY_PATH=\"${LD_LIBRARY_PATH}\" \
        C_INCLUDE_PATH=\"${C_INCLUDE_PATH}\" \
        CPLUS_INCLUDE_PATH=\"${CPLUS_INCLUDE_PATH}\" \
        CPPFLAGS=\"${CPPFLAGS}\" \
        LDFLAGS=\"${LDFLAGS}\" \
        PKG_CONFIG_PATH=\"${PKG_CONFIG_PATH}\" \
        scons ${BUILD_TARGET} ${BUILD_FLAGS} 2>&1 | tee ${BUILD_LOG}"
else
    eval "PYTHONUNBUFFERED=1 env scons ${BUILD_TARGET} ${BUILD_FLAGS} 2>&1 | tee ${BUILD_LOG}"
fi
BUILD_EXIT_CODE=${PIPESTATUS[0]}

# Check for common error patterns in output
if grep -q "Error: Can't find a working Python installation" "${BUILD_LOG}" 2>/dev/null; then
    echo
    echo -e "${RED}✗ gem5 build failed: Python installation issue${NC}"
    echo
    echo "The build system can't find Python shared libraries."
    echo "This usually means python3-dev is not installed."
    echo
    echo "Solution:"
    echo "  1. Contact your mentor to install:"
    echo "     sudo apt-get install python3-dev"
    echo
    echo "  2. Or check if Python library path needs to be set:"
    echo "     find /usr -name 'libpython3.11.so*' 2>/dev/null"
    echo "     export LD_LIBRARY_PATH=\$LD_LIBRARY_PATH:/path/to/python/lib"
    echo
    echo "  3. Check build log for details:"
    echo "     tail -50 ${BUILD_LOG}"
    exit 1
elif grep -qi "Error.*zlib\|zlib.*not found\|zlib.h.*not found" "${BUILD_LOG}" 2>/dev/null; then
    echo
    echo -e "${RED}✗ gem5 build failed: zlib library missing${NC}"
    echo
    echo "The build system can't find zlib compression library."
    echo
    echo "Solution:"
    echo "  1. Check if zlib is available via conda:"
    echo "     find /opt/conda -name 'libz.so*' 2>/dev/null"
    echo "     find /opt/conda -name 'zlib.h' 2>/dev/null"
    echo
    echo "  2. If found in conda, add to library/include paths:"
    echo "     export LD_LIBRARY_PATH=\$LD_LIBRARY_PATH:/opt/conda/lib"
    echo "     export C_INCLUDE_PATH=\$C_INCLUDE_PATH:/opt/conda/include"
    echo "     export CPLUS_INCLUDE_PATH=\$CPLUS_INCLUDE_PATH:/opt/conda/include"
    echo
    echo "  3. Or contact your mentor to install:"
    echo "     sudo apt-get install zlib1g-dev"
    echo
    echo "  4. Check build log for details:"
    echo "     tail -50 ${BUILD_LOG}"
    exit 1
elif [ ${BUILD_EXIT_CODE} -ne 0 ]; then
    echo
    echo -e "${RED}✗ gem5 rebuild failed!${NC}"
    echo "Exit code: ${BUILD_EXIT_CODE}"
    echo "Check ${BUILD_LOG} for details"
    echo
    echo "Common issues:"
    echo "  - Missing dependencies (check error messages above)"
    echo "  - Linker memory issues (need 32GB+ RAM)"
    echo "  - Python library issues (install python3-dev)"
    exit 1
elif grep -qi "error\|fatal\|failed" "${BUILD_LOG}" 2>/dev/null; then
    # Check if there are errors even if exit code is 0
    ERROR_COUNT=$(grep -ci "error\|fatal" "${BUILD_LOG}" 2>/dev/null || echo "0")
    if [ "${ERROR_COUNT}" -gt 5 ]; then
        echo
        echo -e "${RED}✗ Build completed but contains errors!${NC}"
        echo "Found ${ERROR_COUNT} error messages in build log"
        echo "Check ${BUILD_LOG} for details"
        exit 1
    fi
fi

echo
echo -e "${GREEN}✓ gem5 rebuild successful!${NC}"

echo
echo -e "${YELLOW}Step 6: Verifying installation...${NC}"

# Check if compiled object exists
if [ -f "build/${ISA}/dev/lmul_accel/lmul_accelerator.o" ]; then
    echo -e "${GREEN}✓ Accelerator model compiled successfully${NC}"
else
    echo -e "${RED}✗ Accelerator model not found${NC}"
    exit 1
fi

echo
echo -e "${GREEN}======================================"
echo "Installation Complete!"
echo "======================================${NC}"
echo
echo "Next steps:"
echo "1. Build benchmarks:"
echo "   cd $LMUL_GEM5/benchmarks/matrix_multiply"
echo "   make"
echo
echo "2. Run test simulation:"
echo "   cd $LMUL_GEM5"
echo "   ./scripts/run_simulation.sh --test"
echo
echo "3. Read documentation:"
echo "   cat $LMUL_GEM5/README.md"
echo
