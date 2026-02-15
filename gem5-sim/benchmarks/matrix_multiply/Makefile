# Makefile for Matrix Multiply Benchmark

# Cross-compiler settings (adjust for your target architecture)
# For ARM (matches gem5 ARM build)
CC_ARM = arm-linux-gnueabi-gcc
CFLAGS_ARM = -static -O2 -march=armv7-a

# For X86 (if using gem5 X86 build)
CC_X86 = gcc
CFLAGS_X86 = -static -O2

# Default target
TARGET = matrix_multiply
SOURCE = matrix_multiply.c

# Default to ARM (change to x86 if needed)
ARCH ?= arm

ifeq ($(ARCH),arm)
    CC = $(CC_ARM)
    CFLAGS = $(CFLAGS_ARM)
    BINARY = $(TARGET).arm
else
    CC = $(CC_X86)
    CFLAGS = $(CFLAGS_X86)
    BINARY = $(TARGET).x86
endif

all: $(BINARY)

$(BINARY): $(SOURCE)
	$(CC) $(CFLAGS) -o $@ $<
	@echo "Built $@ for $(ARCH)"

arm:
	$(MAKE) ARCH=arm

x86:
	$(MAKE) ARCH=x86

both: arm x86

clean:
	rm -f $(TARGET).arm $(TARGET).x86 *.o

test: $(BINARY)
	@echo "Testing $(BINARY) with 4x4 matrices..."
	./$(BINARY) 4 4 4 0

.PHONY: all arm x86 both clean test
