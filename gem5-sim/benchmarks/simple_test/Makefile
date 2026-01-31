# Makefile for simple_test benchmark

# Auto-detect ARM cross-compiler
ARM_CC := $(shell which arm-linux-gnueabihf-gcc 2>/dev/null || which arm-linux-gnueabi-gcc 2>/dev/null)

ifndef ARM_CC
$(error No ARM cross-compiler found. Install arm-linux-gnueabihf-gcc or arm-linux-gnueabi-gcc)
endif

CFLAGS = -static -O2
TARGET_ARM = simple_test.arm
TARGET_X86 = simple_test.x86

SRC = simple_test.c

.PHONY: all clean arm x86

all: arm

arm: $(TARGET_ARM)

x86: $(TARGET_X86)

$(TARGET_ARM): $(SRC)
	$(ARM_CC) $(CFLAGS) -o $(TARGET_ARM) $(SRC)

$(TARGET_X86): $(SRC)
	gcc $(CFLAGS) -o $(TARGET_X86) $(SRC)

clean:
	rm -f $(TARGET_ARM) $(TARGET_X86) *.o
