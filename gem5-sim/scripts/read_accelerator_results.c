/*
 * Helper program to read accelerator results via result readback registers
 * 
 * This reads the computed matrix C from the accelerator using the
 * result readback interface (REG_RESULT_IDX and REG_RESULT_DATA)
 * 
 * Compile: arm-linux-gnueabihf-gcc -static -O2 -o read_results.arm read_accelerator_results.c
 */

#include <stdio.h>
#include <stdint.h>

#define LMUL_BASE_ADDR   0x10000000  // Changed to 256MB (within 512MB memory range)

#define REG_STATUS       0x04
#define REG_RESULT_IDX   0x30
#define REG_RESULT_DATA  0x34

#define STAT_DONE        0x02

#define LMUL_REG(offset) (*((volatile uint32_t*)(LMUL_BASE_ADDR + offset)))

int main(int argc, char *argv[]) {
    uint32_t M = 4, P = 4;
    
    if (argc > 1) M = atoi(argv[1]);
    if (argc > 2) P = atoi(argv[2]);
    
    // Check if computation is done
    uint32_t status = LMUL_REG(REG_STATUS);
    if ((status & STAT_DONE) == 0) {
        printf("ERROR: Accelerator not done (status=0x%x)\n", status);
        return 1;
    }
    
    printf("# Accelerator Results (read via result readback)\n");
    printf("# Matrix C: %dx%d\n", M, P);
    printf("\n");
    
    // Read results element by element
    for (uint32_t i = 0; i < M; i++) {
        for (uint32_t j = 0; j < P; j++) {
            uint32_t idx = i * P + j;
            
            // Set index
            LMUL_REG(REG_RESULT_IDX) = idx;
            
            // Read data
            uint16_t bf16_val = LMUL_REG(REG_RESULT_DATA) & 0xFFFF;
            
            // Convert BF16 to float for output
            // Simple conversion (matches bf16_to_float in benchmark)
            uint32_t bits = (uint32_t)bf16_val << 16;
            float result;
            memcpy(&result, &bits, sizeof(float));
            
            printf("%.6f ", result);
        }
        printf("\n");
    }
    
    return 0;
}
