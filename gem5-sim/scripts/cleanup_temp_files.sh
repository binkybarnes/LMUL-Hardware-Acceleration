#!/bin/bash
#
# Clean up temporary and redundant files from scripts directory
#
# This removes:
# - Temporary workaround scripts (git fixes, etc.)
# - Redundant diagnostic scripts (functionality merged elsewhere)
# - Helper programs that should be in benchmarks/
#

set -e

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo -e "${YELLOW}=== Cleaning Up Temporary Scripts ===${NC}"
echo

# Files to remove (temporary workarounds)
# Note: These are workarounds for specific issues and can be removed once issues are resolved
TEMP_FILES=(
    "fix_git_openssl.sh"           # Git OpenSSL workaround (temporary - use git_without_conda.sh instead)
    "setup_conda_python.sh"       # Conda Python setup (functionality now in install_model.sh)
)

# Note: Keeping git_without_conda.sh as it's still useful for pulling updates
# Note: Keeping diagnostic scripts (fix_python_library.sh, check_zlib.sh) as they're useful for troubleshooting

# Files to move (helper programs)
MOVE_FILES=(
    "read_accelerator_results.c"  # Should be in benchmarks/
)

REMOVED=0
MOVED=0

# Remove temporary files
echo "Removing temporary workaround scripts..."
for file in "${TEMP_FILES[@]}"; do
    if [ -f "${SCRIPT_DIR}/${file}" ]; then
        echo -e "  ${RED}✗${NC} Removing: $file"
        rm -f "${SCRIPT_DIR}/${file}"
        REMOVED=$((REMOVED + 1))
    else
        echo -e "  ${YELLOW}⚠${NC} Not found: $file"
    fi
done

echo

# Move helper programs to appropriate location
echo "Moving helper programs..."
BENCHMARK_DIR="$(cd "${SCRIPT_DIR}/../benchmarks" && pwd)"
for file in "${MOVE_FILES[@]}"; do
    if [ -f "${SCRIPT_DIR}/${file}" ]; then
        echo -e "  ${YELLOW}→${NC} Moving: $file → benchmarks/"
        mv "${SCRIPT_DIR}/${file}" "${BENCHMARK_DIR}/${file}"
        MOVED=$((MOVED + 1))
    else
        echo -e "  ${YELLOW}⚠${NC} Not found: $file"
    fi
done

echo

# Summary
echo "=========================================="
echo -e "${GREEN}Cleanup Complete!${NC}"
echo "  Removed: $REMOVED temporary file(s)"
echo "  Moved: $MOVED helper program(s)"
echo "=========================================="
echo

# List remaining scripts
echo "Remaining scripts in ${SCRIPT_DIR}:"
ls -1 "${SCRIPT_DIR}"/*.sh "${SCRIPT_DIR}"/*.py 2>/dev/null | wc -l | xargs echo "  Total:"
echo

echo "Core scripts kept:"
echo "  - install_model.sh (main installation)"
echo "  - clean_gem5.sh (cleanup)"
echo "  - run_simulation.sh (run simulations)"
echo "  - compare_lmul_vs_ieee.sh (comparison)"
echo "  - check_*.sh (verification scripts)"
echo "  - setup_datahub.sh (automated setup)"
echo "  - *.py (analysis utilities)"
echo

echo "Diagnostic/troubleshooting scripts kept:"
echo "  - fix_python_library.sh (Python library diagnostics)"
echo "  - check_zlib.sh (zlib library diagnostics)"
echo "  - git_without_conda.sh (Git workaround for conda environments)"
echo "  (These are useful for debugging setup issues)"
echo
echo "Note: run_comparison.sh and compare_lmul_vs_ieee.sh are different:"
echo "  - run_comparison.sh: LMUL Accelerator vs Python LMUL Reference"
echo "  - compare_lmul_vs_ieee.sh: LMUL Accelerator vs Native CPU IEEE"
