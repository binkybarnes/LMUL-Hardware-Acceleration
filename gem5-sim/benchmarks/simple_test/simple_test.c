/*
 * Minimal test program for gem5 that avoids newer syscalls
 * This just does basic computation without file I/O
 */

#include <stdint.h>

#define LMUL_BASE_ADDR   0x20000000

// Simple memory-mapped register access
static inline void write_reg(volatile uint32_t *addr, uint32_t value) {
    *addr = value;
}

static inline uint32_t read_reg(volatile uint32_t *addr) {
    return *addr;
}

int main() {
    volatile uint32_t *lmul_base = (volatile uint32_t *)LMUL_BASE_ADDR;
    
    // Simple test: write and read back
    write_reg(lmul_base, 0x12345678);
    uint32_t val = read_reg(lmul_base);
    
    // Basic computation
    int sum = 0;
    for (int i = 0; i < 100; i++) {
        sum += i;
    }
    
    return (val == 0x12345678 && sum == 4950) ? 0 : 1;
}
