/*
 * Minimal test program for gem5 that avoids newer syscalls
 * This just does basic computation without file I/O or memory-mapped I/O
 * This verifies the simulation works and generates statistics
 */

#include <stdint.h>

int main() {
    // Basic computation - no I/O, no memory-mapped devices
    int sum = 0;
    for (int i = 0; i < 1000; i++) {
        sum += i;
    }
    
    // Some more computation to generate meaningful stats
    int product = 1;
    for (int i = 1; i < 100; i++) {
        product *= i;
        if (product > 1000000) product = product / 1000; // Prevent overflow
    }
    
    // Return success if computation completed
    return (sum == 499500 && product > 0) ? 0 : 1;
}
