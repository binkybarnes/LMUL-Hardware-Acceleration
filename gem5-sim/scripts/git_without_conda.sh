#!/bin/bash
#
# Run git without conda OpenSSL interference
#
# Usage: ./git_without_conda.sh <git-command>
# Example: ./git_without_conda.sh pull
#

# Save original LD_LIBRARY_PATH
ORIG_LD_PATH="$LD_LIBRARY_PATH"

# Remove conda paths from LD_LIBRARY_PATH
CLEAN_LD_PATH=$(echo "$LD_LIBRARY_PATH" | tr ':' '\n' | grep -v -E "conda|anaconda" | tr '\n' ':' | sed 's/:$//')

# Use system git with clean library path
if [ -z "$CLEAN_LD_PATH" ]; then
    # No library path needed
    LD_LIBRARY_PATH="" /usr/bin/git "$@"
else
    LD_LIBRARY_PATH="$CLEAN_LD_PATH" /usr/bin/git "$@"
fi

EXIT_CODE=$?

# Restore original (though it won't affect parent shell)
export LD_LIBRARY_PATH="$ORIG_LD_PATH"

exit $EXIT_CODE
