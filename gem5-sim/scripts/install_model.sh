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

# Get project root
PROJECT_ROOT="/workspaces/LMUL-Hardware-Acceleration"
GEM5_ROOT="${PROJECT_ROOT}/gem5"           # Actual gem5 repository
LMUL_GEM5="${PROJECT_ROOT}/gem5-sim"       # Our LMUL project files

# Check if gem5 exists
if [ ! -d "$GEM5_ROOT" ]; then
    echo -e "${RED}Error: gem5 not found at $GEM5_ROOT${NC}"
    echo "Please install gem5 first:"
    echo "  cd $PROJECT_ROOT"
    echo "  git clone https://github.com/gem5/gem5.git"
    exit 1
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

# Check if already registered
if grep -q "lmul_accel" "$GEM5_ROOT/src/dev/SConscript"; then
    echo "  Already registered in build system"
else
    echo "  Adding to $GEM5_ROOT/src/dev/SConscript"
    # Backup original
    cp "$GEM5_ROOT/src/dev/SConscript" "$GEM5_ROOT/src/dev/SConscript.bak"
    
    # Add our subdirectory (insert before the last line)
    sed -i "\$i SConscript('lmul_accel/SConscript')" "$GEM5_ROOT/src/dev/SConscript"
    echo "  Registered successfully"
fi

echo
echo -e "${YELLOW}Step 4: Rebuilding gem5...${NC}"
echo "This will take several minutes..."
echo

cd "$GEM5_ROOT"

# Determine which ISA to build
if [ -d "build/ARM" ]; then
    ISA="ARM"
    echo "  Detected existing ARM build"
elif [ -d "build/X86" ]; then
    ISA="X86"
    echo "  Detected existing X86 build"
else
    ISA="ARM"
    echo "  No existing build found, defaulting to ARM"
fi

# Build gem5
scons build/${ISA}/gem5.opt -j$(nproc) 2>&1 | tee /tmp/gem5_build.log

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
echo -e "${YELLOW}Step 5: Verifying installation...${NC}"

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
