#!/bin/bash
#
# Create symlinks to conda zlib in user-writable location
# This helps scons find zlib during configuration checks
#
# Usage: ./create_zlib_symlinks.sh
#

set -e

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

echo "Creating zlib symlinks for gem5 build..."

# Create local lib directory in home
LOCAL_LIB="$HOME/.local/lib"
mkdir -p "$LOCAL_LIB"

# Check if conda zlib exists
if [ ! -f "/opt/conda/lib/libz.so.1.3.1" ]; then
    echo -e "${RED}✗ Conda zlib not found at /opt/conda/lib/libz.so.1.3.1${NC}"
    exit 1
fi

# Create symlinks
echo "Creating symlinks in $LOCAL_LIB..."
ln -sf /opt/conda/lib/libz.so.1.3.1 "$LOCAL_LIB/libz.so.1.3.1"
ln -sf "$LOCAL_LIB/libz.so.1.3.1" "$LOCAL_LIB/libz.so.1"
ln -sf "$LOCAL_LIB/libz.so.1" "$LOCAL_LIB/libz.so"

# Create include directory and symlink
LOCAL_INCLUDE="$HOME/.local/include"
mkdir -p "$LOCAL_INCLUDE"

if [ -f "/opt/conda/include/zlib.h" ]; then
    ln -sf /opt/conda/include/zlib.h "$LOCAL_INCLUDE/zlib.h"
    echo -e "${GREEN}✓ Created symlink: $LOCAL_INCLUDE/zlib.h${NC}"
else
    echo -e "${YELLOW}⚠ zlib.h not found in conda${NC}"
fi

echo -e "${GREEN}✓ Created symlinks:${NC}"
ls -la "$LOCAL_LIB"/libz.so* 2>/dev/null || true

echo
echo "Add to your environment:"
echo "  export LD_LIBRARY_PATH=\"\$HOME/.local/lib:\$LD_LIBRARY_PATH\""
echo "  export C_INCLUDE_PATH=\"\$HOME/.local/include:\$C_INCLUDE_PATH\""
echo "  export CPLUS_INCLUDE_PATH=\"\$HOME/.local/include:\$CPLUS_INCLUDE_PATH\""
echo
echo "Or add to ~/.bashrc:"
echo "  echo 'export LD_LIBRARY_PATH=\"\$HOME/.local/lib:\$LD_LIBRARY_PATH\"' >> ~/.bashrc"
echo "  echo 'export C_INCLUDE_PATH=\"\$HOME/.local/include:\$C_INCLUDE_PATH\"' >> ~/.bashrc"
echo "  echo 'export CPLUS_INCLUDE_PATH=\"\$HOME/.local/include:\$CPLUS_INCLUDE_PATH\"' >> ~/.bashrc"
