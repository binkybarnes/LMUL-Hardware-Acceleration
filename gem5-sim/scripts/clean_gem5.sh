#!/bin/bash
#
# Complete cleanup script for gem5 - removes ALL traces of LMUL installation
#

set -e

GEM5_ROOT="${1:-../gem5}"

if [ ! -d "$GEM5_ROOT" ]; then
    echo "Error: gem5 directory not found at $GEM5_ROOT"
    exit 1
fi

cd "$GEM5_ROOT"

echo "=== Complete gem5 Cleanup ==="
echo "Removing ALL traces of LMUL accelerator installation..."
echo

# Step 1: Git cleanup
echo "Step 1: Git cleanup..."
git reset --hard HEAD 2>/dev/null || echo "  (Not a git repo or already clean)"
git clean -fdx 2>/dev/null || echo "  (No untracked files)"

# Step 2: Remove accelerator installation
echo ""
echo "Step 2: Removing accelerator installation..."
rm -rf src/dev/lmul_accel
rm -f src/dev/SConscript.bak

# Step 3: Remove registration from SConscript
echo ""
echo "Step 3: Cleaning SConscript registration..."
if [ -f src/dev/SConscript ]; then
    # Count how many times it's registered
    count=$(grep -c "lmul_accel" src/dev/SConscript 2>/dev/null || echo "0")
    if [ "$count" -gt 0 ]; then
        echo "  Found $count registration(s), removing..."
        # Remove all occurrences
        sed -i "/lmul_accel/d" src/dev/SConscript
        echo "  Removed"
    else
        echo "  No registration found"
    fi
else
    echo "  SConscript not found (unusual)"
fi

# Step 4: Remove ALL build artifacts
echo ""
echo "Step 4: Removing build artifacts..."
rm -rf build/

# Step 5: Clean Python caches
echo ""
echo "Step 5: Cleaning Python caches..."
find . -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null || true
find . -name "*.pyc" -delete 2>/dev/null || true
find . -name "*.pyo" -delete 2>/dev/null || true
find . -name ".sconsign.dblite" -delete 2>/dev/null || true

# Step 6: Verify
echo ""
echo "Step 6: Verification..."
echo "  lmul_accel directory: $(test -d src/dev/lmul_accel && echo 'EXISTS ✗' || echo 'removed ✓')"
echo "  Registration: $(grep -q "lmul_accel" src/dev/SConscript 2>/dev/null && echo 'EXISTS ✗' || echo 'removed ✓')"
echo "  Build directory: $(test -d build && echo 'EXISTS ✗' || echo 'removed ✓')"
echo "  Python caches: $(find . -name "__pycache__" -type d 2>/dev/null | wc -l) remaining"

echo ""
echo "=== Cleanup Complete ==="
echo "gem5 is now in a clean state"
echo ""
echo "Next steps:"
echo "1. Run install script: ./gem5-sim/scripts/install_model.sh"
echo "2. Or build gem5 first, then install model"
