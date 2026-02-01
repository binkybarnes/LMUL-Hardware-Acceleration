# Makefile for Matrix Multiply Benchmark

# Cross-compiler settings (adjust for your target architecture)
# For ARM (matches gem5 ARM build)
# Auto-detect available ARM compiler
CC_ARM = $(shell which arm-linux-gnueabihf-gcc 2>/dev/null || which arm-linux-gnueabi-gcc 2>/dev/null || echo "arm-linux-gnueabihf-gcc")
# Use compiler's default float ABI (hard-float for gnueabihf, soft-float for gnueabi)
# Remove -march if it causes issues, gem5 ARM supports both
CFLAGS_ARM = -static -O2

# Check if compiler exists
ifeq ($(shell which $(CC_ARM) 2>/dev/null),)
    $(error ARM cross-compiler not found. Install with: sudo apt-get install gcc-arm-linux-gnueabihf)
endif

# For X86 (if using gem5 X86 build)
CC_X86 = gcc
CFLAGS_X86 = -static -O2

# Default target
TARGET = matrix_multiply
SOURCE = matrix_multiply.c
SOURCE_NO_PRINTF = matrix_multiply_no_printf.c

# Default to ARM (change to x86 if needed)
ARCH ?= arm

ifeq ($(ARCH),arm)
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

both: arm x86

clean:
	rm -f $(TARGET).arm $(TARGET).x86 $(TARGET)_no_printf.arm $(TARGET)_no_printf.x86 *.o

test: $(BINARY)
	@echo "Testing $(BINARY) with 4x4 matrices..."
	./$(BINARY) 4 4 4 0

.PHONY: all arm x86 both clean test
