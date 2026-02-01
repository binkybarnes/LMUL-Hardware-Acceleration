/*
 * Matrix Multiply Benchmark for LMUL Accelerator
 * 
 * Performs matrix multiplication using memory-mapped LMUL accelerator
 */

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

// LMUL Accelerator Register Offsets
#define LMUL_BASE_ADDR   0x40000000  // MMIO at 1GB (common MMIO region)

#define REG_CONTROL      0x00
#define REG_STATUS       0x04
#define REG_A_ADDR       0x08
#define REG_B_ADDR       0x0C
#define REG_C_ADDR       0x10
#define REG_M_SIZE       0x14
#define REG_N_SIZE       0x18
#define REG_P_SIZE       0x1C
#define REG_PE_CONFIG    0x20
#define REG_CYCLES       0x24
#define REG_OPS_COUNT    0x28

// Control bits
#define CTRL_START       0x01
#define CTRL_RESET       0x02
#define CTRL_IRQ_EN      0x04

// Status bits
#define STAT_IDLE        0x00
#define STAT_BUSY        0x01
#define STAT_DONE        0x02
#define STAT_ERROR       0x04

// Register access macros
#define LMUL_REG(offset) (*((volatile uint32_t*)(LMUL_BASE_ADDR + offset)))

// BF16 type (16-bit)
typedef uint16_t bf16_t;

// Function prototypes
void lmul_matrix_multiply(bf16_t *A, bf16_t *B, bf16_t *C,
                         uint32_t M, uint32_t N, uint32_t P);
void cpu_matrix_multiply(bf16_t *A, bf16_t *B, bf16_t *C,
                        uint32_t M, uint32_t N, uint32_t P);
void init_matrix(bf16_t *mat, uint32_t rows, uint32_t cols);
void print_matrix(bf16_t *mat, uint32_t rows, uint32_t cols, const char *name);
bf16_t float_to_bf16(float f);
float bf16_to_float(bf16_t bf16);

int main(int argc, char *argv[])
{
    uint32_t M = 8, N = 8, P = 8;
    int use_accel = 1;
    
    // Parse arguments
    if (argc > 1) M = atoi(argv[1]);
    if (argc > 2) N = atoi(argv[2]);
    if (argc > 3) P = atoi(argv[3]);
    if (argc > 4) use_accel = atoi(argv[4]);
    
    printf("Matrix Multiply Benchmark\n");
    printf("=========================\n");
    printf("Dimensions: A(%dx%d) * B(%dx%d) = C(%dx%d)\n", M, N, N, P, M, P);
    printf("Mode: %s\n", use_accel ? "LMUL Accelerator" : "CPU");
    printf("\n");
    
    // Allocate matrices
    bf16_t *A = (bf16_t*)malloc(M * N * sizeof(bf16_t));
    bf16_t *B = (bf16_t*)malloc(N * P * sizeof(bf16_t));
    bf16_t *C = (bf16_t*)malloc(M * P * sizeof(bf16_t));
    
    if (!A || !B || !C) {
        printf("Error: Memory allocation failed\n");
        return 1;
    }
    
    // Initialize matrices
    init_matrix(A, M, N);
    init_matrix(B, N, P);
    memset(C, 0, M * P * sizeof(bf16_t));
    
    // Print small matrices
    if (M <= 4 && N <= 4 && P <= 4) {
        print_matrix(A, M, N, "A");
        print_matrix(B, N, P, "B");
    }
    
    // Perform multiplication
    clock_t start = clock();
    
    if (use_accel) {
        lmul_matrix_multiply(A, B, C, M, N, P);
    } else {
        cpu_matrix_multiply(A, B, C, M, N, P);
    }
    
    clock_t end = clock();
    double elapsed = ((double)(end - start)) / CLOCKS_PER_SEC;
    
    // Print result
    if (M <= 4 && P <= 4) {
        print_matrix(C, M, P, "C");
    }
    
    // Print statistics
    uint64_t ops = (uint64_t)M * N * P * 2; // multiply-add
    printf("\nResults:\n");
    printf("--------\n");
    printf("Time: %.6f seconds\n", elapsed);
    printf("Operations: %llu\n", (unsigned long long)ops);
    
    if (use_accel) {
        uint32_t cycles = LMUL_REG(REG_CYCLES);
        uint32_t ops_count = LMUL_REG(REG_OPS_COUNT);
        uint32_t pe_config = LMUL_REG(REG_PE_CONFIG);
        uint32_t pe_rows = pe_config >> 16;
        uint32_t pe_cols = pe_config & 0xFFFF;
        
        printf("Accelerator cycles: %u\n", cycles);
        printf("Accelerator ops: %u\n", ops_count);
        printf("PE Array: %ux%u\n", pe_rows, pe_cols);
        if (cycles > 0) {
            printf("Throughput: %.2f ops/cycle\n", (double)ops_count / cycles);
        }
    }
    
    // Cleanup
    free(A);
    free(B);
    free(C);
    
    printf("\nBenchmark complete!\n");
    return 0;
}

void lmul_matrix_multiply(bf16_t *A, bf16_t *B, bf16_t *C,
                         uint32_t M, uint32_t N, uint32_t P)
{
    printf("Using LMUL accelerator...\n");
    
    // Reset accelerator
    LMUL_REG(REG_CONTROL) = CTRL_RESET;
    
    // Configure operation
    LMUL_REG(REG_A_ADDR) = (uint32_t)(uintptr_t)A;
    LMUL_REG(REG_B_ADDR) = (uint32_t)(uintptr_t)B;
    LMUL_REG(REG_C_ADDR) = (uint32_t)(uintptr_t)C;
    LMUL_REG(REG_M_SIZE) = M;
    LMUL_REG(REG_N_SIZE) = N;
    LMUL_REG(REG_P_SIZE) = P;
    
    // Start computation
    LMUL_REG(REG_CONTROL) = CTRL_START;
    
    // Poll for completion
    uint32_t status;
    do {
        status = LMUL_REG(REG_STATUS);
    } while (status == STAT_BUSY);
    
    if (status == STAT_ERROR) {
        printf("Error: Accelerator reported error\n");
    } else if (status == STAT_DONE) {
        printf("Accelerator computation complete\n");
    }
}

void cpu_matrix_multiply(bf16_t *A, bf16_t *B, bf16_t *C,
                        uint32_t M, uint32_t N, uint32_t P)
{
    printf("Using CPU...\n");
    
    for (uint32_t i = 0; i < M; i++) {
        for (uint32_t j = 0; j < P; j++) {
            float sum = 0.0f;
            for (uint32_t k = 0; k < N; k++) {
                float a = bf16_to_float(A[i * N + k]);
                float b = bf16_to_float(B[k * P + j]);
                sum += a * b;
            }
            C[i * P + j] = float_to_bf16(sum);
        }
    }
}

void init_matrix(bf16_t *mat, uint32_t rows, uint32_t cols)
{
    for (uint32_t i = 0; i < rows * cols; i++) {
        // Initialize with simple values (1.0, 2.0, etc.)
        mat[i] = float_to_bf16((float)(i % 10) / 10.0f + 0.5f);
    }
}

void print_matrix(bf16_t *mat, uint32_t rows, uint32_t cols, const char *name)
{
    printf("\nMatrix %s (%ux%u):\n", name, rows, cols);
    for (uint32_t i = 0; i < rows; i++) {
        printf("  ");
        for (uint32_t j = 0; j < cols; j++) {
            printf("%.3f ", bf16_to_float(mat[i * cols + j]));
        }
        printf("\n");
    }
}

bf16_t float_to_bf16(float f)
{
    uint32_t bits;
    memcpy(&bits, &f, sizeof(float));
    
    // Round to nearest even
    uint32_t rounding = 0x7FFF + ((bits >> 16) & 1);
    bits += rounding;
    
    return (bf16_t)(bits >> 16);
}

float bf16_to_float(bf16_t bf16)
{
    uint32_t bits = (uint32_t)bf16 << 16;
    float result;
    memcpy(&result, &bits, sizeof(float));
    return result;
}
