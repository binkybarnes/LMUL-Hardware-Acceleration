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

# Copy Python wrapper
mkdir -p "$GEM5_ROOT/src/python/gem5/components/boards"
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

# Determine which ISA to build
if [ -d "build/ARM" ]; then
    ISA="ARM"
    echo "  Detected existing ARM build"
    echo "  Cleaning build cache to remove stale flag registrations..."
    rm -rf "build/${ISA}"
    echo "  Build cache cleaned"
elif [ -d "build/X86" ]; then
    ISA="X86"
    echo "  Detected existing X86 build"
    echo "  Cleaning build cache to remove stale flag registrations..."
    rm -rf "build/${ISA}"
    echo "  Build cache cleaned"
else
    ISA="ARM"
    echo "  No existing build found, defaulting to ARM"
    echo "  (This is fine - we'll build gem5 with the model from scratch)"
fi

echo
echo -e "${YELLOW}Step 5: Rebuilding gem5...${NC}"
echo "This will take several minutes..."
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

# Build gem5 - use explicit python3 to ensure fresh process
# The -u flag ensures unbuffered output
PYTHONUNBUFFERED=1 scons build/${ISA}/gem5.opt -j$(nproc) 2>&1 | tee /tmp/gem5_build.log

if [ ${PIPESTATUS[0]} -eq 0 ]; then
    echo
    echo -e "${GREEN}✓ gem5 rebuild successful!${NC}"
else
    echo
    echo -e "${RED}✗ gem5 rebuild failed!${NC}"
    echo "Check /tmp/gem5_build.log for details"
    exit 1
fi

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
