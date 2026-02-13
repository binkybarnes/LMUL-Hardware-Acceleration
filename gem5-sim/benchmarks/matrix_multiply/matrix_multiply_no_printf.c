/*
 * Matrix Multiply Benchmark for LMUL Accelerator (No printf version)
 * 
 * This version avoids printf calls that trigger syscall 403 in gem5
 * It performs the computation silently and only uses memory-mapped I/O
 */

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

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
#define REG_RESULT_IDX   0x30
#define REG_RESULT_DATA  0x34
#define REG_A_STREAM     0x38
#define REG_B_STREAM     0x3C

// Control bits
#define CTRL_START       0x01
#define CTRL_RESET       0x02

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
    
    // Allocate matrices
    bf16_t *A = (bf16_t*)malloc(M * N * sizeof(bf16_t));
    bf16_t *B = (bf16_t*)malloc(N * P * sizeof(bf16_t));
    bf16_t *C = (bf16_t*)malloc(M * P * sizeof(bf16_t));
    
    if (!A || !B || !C) {
        return 1;  // Error - no printf
    }
    
    // Initialize matrices
    init_matrix(A, M, N);
    init_matrix(B, N, P);
    memset(C, 0, M * P * sizeof(bf16_t));
    
    // Perform multiplication
    if (use_accel) {
        lmul_matrix_multiply(A, B, C, M, N, P);
    } else {
        cpu_matrix_multiply(A, B, C, M, N, P);
    }
    
    // Optional: write result matrix C to file for correctness validation (argv[5] = filename)
    if (argc >= 6 && argv[5] && argv[5][0] != '\0') {
        FILE *fp = fopen(argv[5], "wb");
        if (fp) {
            (void)fwrite(&M, sizeof(M), 1, fp);
            (void)fwrite(&P, sizeof(P), 1, fp);
            (void)fwrite(C, sizeof(bf16_t), (size_t)M * P, fp);
            fclose(fp);
        }
    }
    
    // Signal completion for validation (write() avoids printf/syscall 403 in gem5)
    {
        const char msg[] = "COMPLETE mode=";
        const char acc[] = "accel\n";
        const char cpu[] = "cpu\n";
        (void)write(1, msg, sizeof(msg) - 1);
        (void)write(1, use_accel ? acc : cpu, use_accel ? 6 : 4);
    }
    
    // Cleanup
    free(A);
    free(B);
    free(C);
    
    return 0;
}

void lmul_matrix_multiply(bf16_t *A, bf16_t *B, bf16_t *C,
                         uint32_t M, uint32_t N, uint32_t P)
{
    // Reset accelerator
    LMUL_REG(REG_CONTROL) = CTRL_RESET;
    
    // Configure operation
    LMUL_REG(REG_A_ADDR) = (uint32_t)(uintptr_t)A;
    LMUL_REG(REG_B_ADDR) = (uint32_t)(uintptr_t)B;
    LMUL_REG(REG_C_ADDR) = (uint32_t)(uintptr_t)C;
    LMUL_REG(REG_M_SIZE) = M;
    LMUL_REG(REG_N_SIZE) = N;
    LMUL_REG(REG_P_SIZE) = P;

    // Stream real benchmark inputs into accelerator staging buffers.
    for (uint32_t idx = 0; idx < M * N; idx++) {
        LMUL_REG(REG_A_STREAM) = A[idx];
    }
    for (uint32_t idx = 0; idx < N * P; idx++) {
        LMUL_REG(REG_B_STREAM) = B[idx];
    }
    
    // Start computation
    LMUL_REG(REG_CONTROL) = CTRL_START;
    
    // Poll for completion
    uint32_t status;
    do {
        status = LMUL_REG(REG_STATUS);
    } while (status == STAT_BUSY);

    // Read results back into C so LMUL output is comparable to CPU output.
    if (status == STAT_DONE) {
        uint32_t total = M * P;
        for (uint32_t idx = 0; idx < total; idx++) {
            LMUL_REG(REG_RESULT_IDX) = idx;
            C[idx] = (bf16_t)(LMUL_REG(REG_RESULT_DATA) & 0xFFFFu);
        }
    }
}

void cpu_matrix_multiply(bf16_t *A, bf16_t *B, bf16_t *C,
                        uint32_t M, uint32_t N, uint32_t P)
{
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
