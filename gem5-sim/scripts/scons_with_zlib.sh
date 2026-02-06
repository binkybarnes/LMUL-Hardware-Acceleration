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
    export CPPFLAGS="-I/opt/conda/include ${CPPFLAGS}"
    export LDFLAGS="-L/opt/conda/lib -Wl,-rpath,/opt/conda/lib ${LDFLAGS}"
    
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

# Run scons with all environment variables
exec scons "$@"
