# Makefile for Matrix Multiply Benchmark

# Cross-compiler settings (adjust for your target architecture)
# For ARM (matches gem5 ARM build)
# Auto-detect available ARM compiler
CC_ARM = $(shell which arm-linux-gnueabihf-gcc 2>/dev/null || which arm-linux-gnueabi-gcc 2>/dev/null || echo "arm-linux-gnueabihf-gcc")
# Use compiler's default float ABI (hard-float for gnueabihf, soft-float for gnueabi)
# Remove -march if it causes issues, gem5 ARM supports both
CFLAGS_ARM = -static -O2

# Check if compiler exists
ARM_CC_AVAILABLE = $(shell which $(CC_ARM) 2>/dev/null)
ifeq ($(ARM_CC_AVAILABLE),)
    # ARM cross-compiler not found - provide helpful message
    ifeq ($(ARCH),arm)
        $(warning ================================================)
        $(warning ARM cross-compiler not found!)
        $(warning ================================================)
        $(warning Options:)
        $(warning   1. Request from mentor: sudo apt-get install gcc-arm-linux-gnueabihf)
        $(warning   2. Build for x86 instead: make ARCH=x86)
        $(warning   3. Check if available via modules: module avail)
        $(warning ================================================)
        $(error Cannot build ARM binary without cross-compiler. Use 'make ARCH=x86' or contact mentor.)
    endif
endif

# For X86 (if using gem5 X86 build)
CC_X86 = gcc
CFLAGS_X86 = -static -O2

# Default target
TARGET = matrix_multiply
SOURCE = matrix_multiply.c
SOURCE_NO_PRINTF = matrix_multiply_no_printf.c

# Default to ARM (change to x86 if needed)
# If ARM cross-compiler not available, will suggest using x86
ARCH ?= arm

ifeq ($(ARCH),arm)
    ifeq ($(ARM_CC_AVAILABLE),)
        $(error ARM cross-compiler not available. Use 'make ARCH=x86' or install cross-compiler.)
    endif
    CC = $(CC_ARM)
    CFLAGS = $(CFLAGS_ARM)
    BINARY = $(TARGET).arm
    ARCH_SUFFIX = arm
else
    CC = $(CC_X86)
    CFLAGS = $(CFLAGS_X86)
    BINARY = $(TARGET).x86
    ARCH_SUFFIX = x86
endif

all: $(BINARY)

# Build both versions
both: $(BINARY) $(TARGET)_no_printf.$(ARCH_SUFFIX)

$(BINARY): $(SOURCE)
	$(CC) $(CFLAGS) -o $@ $<
	@echo "Built $@ for $(ARCH)"

$(TARGET)_no_printf.$(ARCH_SUFFIX): $(SOURCE_NO_PRINTF)
	$(CC) $(CFLAGS) -o $@ $<
	@echo "Built $@ for $(ARCH) (no printf version)"

arm:
	$(MAKE) ARCH=arm

x86:
	$(MAKE) ARCH=x86

both:
	@echo "Building both ARM and X86 versions..."
	@if [ -n "$(ARM_CC_AVAILABLE)" ]; then \
		$(MAKE) ARCH=arm; \
	else \
		echo "⚠ ARM cross-compiler not available, skipping ARM build"; \
		echo "  Request from mentor: sudo apt-get install gcc-arm-linux-gnueabihf"; \
	fi
	@$(MAKE) ARCH=x86

clean:
	rm -f $(TARGET).arm $(TARGET).x86 $(TARGET)_no_printf.arm $(TARGET)_no_printf.x86 *.o

test: $(BINARY)
	@echo "Testing $(BINARY) with 4x4 matrices..."
	./$(BINARY) 4 4 4 0

.PHONY: all arm x86 both clean test
