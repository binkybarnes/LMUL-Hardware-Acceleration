#!/bin/bash
#
# Wrapper script to run scons with conda zlib paths
# This ensures scons' configuration checks can find zlib
#
# Usage: ./scons_with_zlib.sh [scons arguments...]
#

set -e

# If conda paths exist, set up environment for zlib
if [ -d "/opt/conda/lib" ] && [ -d "/opt/conda/include" ]; then
    # First, check if user has local symlinks (created by create_zlib_symlinks.sh)
    # These are in standard locations that scons checks
    if [ -d "$HOME/.local/lib" ] && [ -f "$HOME/.local/lib/libz.so" ]; then
        # Add local lib to front of library path (checked first)
        export LD_LIBRARY_PATH="$HOME/.local/lib:${LD_LIBRARY_PATH}"
        if [ -d "$HOME/.local/include" ]; then
            export C_INCLUDE_PATH="$HOME/.local/include:${C_INCLUDE_PATH}"
            export CPLUS_INCLUDE_PATH="$HOME/.local/include:${CPLUS_INCLUDE_PATH}"
        fi
    fi
    
    # Ensure conda lib is in library path
    if ! echo "$LD_LIBRARY_PATH" | grep -q "/opt/conda/lib"; then
        export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:/opt/conda/lib"
    fi
    
    # Set include paths
    if [ -n "$C_INCLUDE_PATH" ]; then
        if ! echo "$C_INCLUDE_PATH" | grep -q "/opt/conda/include"; then
            export C_INCLUDE_PATH="${C_INCLUDE_PATH}:/opt/conda/include"
        fi
    else
        export C_INCLUDE_PATH="/opt/conda/include"
    fi
    
    if [ -n "$CPLUS_INCLUDE_PATH" ]; then
        if ! echo "$CPLUS_INCLUDE_PATH" | grep -q "/opt/conda/include"; then
            export CPLUS_INCLUDE_PATH="${CPLUS_INCLUDE_PATH}:/opt/conda/include"
        fi
    else
        export CPLUS_INCLUDE_PATH="/opt/conda/include"
    fi
    
    # Set compiler/linker flags
    # These are critical for scons' Configure checks
    export CPPFLAGS="-I/opt/conda/include ${CPPFLAGS}"
    export CFLAGS="-I/opt/conda/include ${CFLAGS}"
    export CXXFLAGS="-I/opt/conda/include ${CXXFLAGS}"
    export LDFLAGS="-L/opt/conda/lib -Wl,-rpath,/opt/conda/lib ${LDFLAGS}"
    export LIBS="-L/opt/conda/lib -lz ${LIBS}"
    
    # Set pkg-config path
    if [ -n "$PKG_CONFIG_PATH" ]; then
        if ! echo "$PKG_CONFIG_PATH" | grep -q "/opt/conda/lib/pkgconfig"; then
            export PKG_CONFIG_PATH="/opt/conda/lib/pkgconfig:${PKG_CONFIG_PATH}"
        fi
    else
        export PKG_CONFIG_PATH="/opt/conda/lib/pkgconfig"
    fi
    
    echo "Running scons with conda zlib paths:"
    echo "  LD_LIBRARY_PATH: $LD_LIBRARY_PATH"
    echo "  C_INCLUDE_PATH: $C_INCLUDE_PATH"
    echo "  CPLUS_INCLUDE_PATH: $CPLUS_INCLUDE_PATH"
    echo "  CPPFLAGS: $CPPFLAGS"
    echo "  LDFLAGS: $LDFLAGS"
    echo
fi

# Find scons - check common locations
SCONS_CMD=""
if command -v scons >/dev/null 2>&1; then
    SCONS_CMD="scons"
elif command -v scons3 >/dev/null 2>&1; then
    SCONS_CMD="scons3"
elif [ -f "/usr/bin/scons" ]; then
    SCONS_CMD="/usr/bin/scons"
elif [ -f "/usr/local/bin/scons" ]; then
    SCONS_CMD="/usr/local/bin/scons"
elif python3 -c "import scons" 2>/dev/null; then
    # scons might be installed as a Python module
    SCONS_CMD="python3 -m SCons"
else
    echo "Error: scons not found. Please install scons:" >&2
    echo "  pip3 install --user scons" >&2
    echo "  or contact your mentor to install it system-wide" >&2
    exit 1
fi

# Run scons with all environment variables
exec $SCONS_CMD "$@"
