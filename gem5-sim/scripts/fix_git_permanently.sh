#!/bin/bash
#
# Permanently fix git OpenSSL issue in conda environments
#
# This creates a git wrapper that excludes conda from LD_LIBRARY_PATH
# so git can use system OpenSSL libraries it was compiled against.
#
# Usage: ./fix_git_permanently.sh
#

set -e

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

echo -e "${YELLOW}=== Fixing Git OpenSSL Issue Permanently ===${NC}"
echo

# Find system git
SYSTEM_GIT=$(which -a git | grep -v -E "conda|anaconda" | head -1)

if [ -z "$SYSTEM_GIT" ]; then
    echo -e "${RED}✗ System git not found${NC}"
    exit 1
fi

echo "System git found: $SYSTEM_GIT"
echo

# Create git wrapper in ~/bin
BIN_DIR="$HOME/bin"
mkdir -p "$BIN_DIR"

WRAPPER="$BIN_DIR/git"

cat > "$WRAPPER" << 'EOF'
#!/bin/bash
# Git wrapper that excludes conda from LD_LIBRARY_PATH
# This fixes OpenSSL version mismatch issues

# Save original LD_LIBRARY_PATH
ORIG_LD_PATH="$LD_LIBRARY_PATH"

# Remove conda/anaconda paths
CLEAN_LD_PATH=$(echo "$LD_LIBRARY_PATH" | tr ':' '\n' | grep -v -E "conda|anaconda" | tr '\n' ':' | sed 's/:$//')

# Use system git with clean library path
if [ -z "$CLEAN_LD_PATH" ]; then
    LD_LIBRARY_PATH="" /usr/bin/git "$@"
else
    LD_LIBRARY_PATH="$CLEAN_LD_PATH" /usr/bin/git "$@"
fi

EXIT_CODE=$?

# Restore original (though it won't affect parent shell)
export LD_LIBRARY_PATH="$ORIG_LD_PATH"

exit $EXIT_CODE
EOF

chmod +x "$WRAPPER"

echo -e "${GREEN}✓ Created git wrapper at: $WRAPPER${NC}"
echo

# Add ~/bin to PATH if not already there
if [[ ":$PATH:" != *":$BIN_DIR:"* ]]; then
    echo "Adding ~/bin to PATH in ~/.bashrc..."
    echo '' >> ~/.bashrc
    echo '# Git wrapper (fixes conda OpenSSL issue)' >> ~/.bashrc
    echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc
    echo -e "${GREEN}✓ Added to ~/.bashrc${NC}"
    echo
    echo "To apply immediately, run:"
    echo "  export PATH=\"\$HOME/bin:\$PATH\""
    echo "  source ~/.bashrc"
else
    echo -e "${YELLOW}⚠ ~/bin already in PATH${NC}"
fi

echo
echo "=========================================="
echo -e "${GREEN}Fix Complete!${NC}"
echo
echo "The git wrapper will:"
echo "  1. Temporarily remove conda from LD_LIBRARY_PATH"
echo "  2. Run system git with clean library path"
echo "  3. Restore original LD_LIBRARY_PATH"
echo
echo "Test it:"
echo "  git --version"
echo "  git pull"
echo "=========================================="
