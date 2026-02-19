/*
 * Matrix Multiply Benchmark for LMUL Accelerator (No printf version)
 * 
 * This version avoids printf calls that trigger syscall 403 in gem5
 * It performs the computation silently and only uses memory-mapped I/O
 */

#include <stdint.h>
#include <fcntl.h>
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
#define CTRL_DMA_EN      0x08

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
void cpu_lmul_matrix_multiply(bf16_t *A, bf16_t *B, bf16_t *C,
                              uint32_t M, uint32_t N, uint32_t P);
void init_matrix(bf16_t *mat, uint32_t rows, uint32_t cols);
bf16_t float_to_bf16(float f);
float bf16_to_float(bf16_t bf16);
static int write_all(int fd, const void *buf, size_t bytes);
static int write_result_bin(const char *path, uint32_t M, uint32_t P, const bf16_t *C);
static int write_inputs_bin(const char *path, uint32_t M, uint32_t N, uint32_t P,
                           const bf16_t *A, const bf16_t *B);

static int write_all(int fd, const void *buf, size_t bytes)
{
    const uint8_t *ptr = (const uint8_t *)buf;
    while (bytes > 0) {
        ssize_t written = write(fd, ptr, bytes);
        if (written <= 0) {
            return -1;
        }
        ptr += (size_t)written;
        bytes -= (size_t)written;
    }
    return 0;
}

static int write_result_bin(const char *path, uint32_t M, uint32_t P, const bf16_t *C)
{
    int fd = open(path, O_CREAT | O_TRUNC | O_WRONLY, 0644);
    if (fd < 0) {
        return -1;
    }

    size_t matrix_bytes = (size_t)M * (size_t)P * sizeof(bf16_t);
    int status = 0;
    if (write_all(fd, &M, sizeof(M)) != 0 ||
        write_all(fd, &P, sizeof(P)) != 0 ||
        write_all(fd, C, matrix_bytes) != 0) {
        status = -1;
    }

    if (close(fd) != 0) {
        status = -1;
    }
    return status;
}

static int write_inputs_bin(const char *path, uint32_t M, uint32_t N, uint32_t P,
                           const bf16_t *A, const bf16_t *B)
{
    int fd = open(path, O_CREAT | O_TRUNC | O_WRONLY, 0644);
    if (fd < 0) {
        return -1;
    }

    size_t a_bytes = (size_t)M * (size_t)N * sizeof(bf16_t);
    size_t b_bytes = (size_t)N * (size_t)P * sizeof(bf16_t);
    int status = 0;
    if (write_all(fd, &M, sizeof(M)) != 0 ||
        write_all(fd, &N, sizeof(N)) != 0 ||
        write_all(fd, &P, sizeof(P)) != 0 ||
        write_all(fd, A, a_bytes) != 0 ||
        write_all(fd, B, b_bytes) != 0) {
        status = -1;
    }

    if (close(fd) != 0) {
        status = -1;
    }
    return status;
}

int main(int argc, char *argv[])
{
    uint32_t M = 8, N = 8, P = 8;
    int use_accel = 1;
    const char *result_path = NULL;
    const char *inputs_path = NULL;
    
    // Parse arguments
    if (argc > 1) M = atoi(argv[1]);
    if (argc > 2) N = atoi(argv[2]);
    if (argc > 3) P = atoi(argv[3]);
    if (argc > 4) use_accel = atoi(argv[4]);
    if (argc > 5 && argv[5] && argv[5][0] != '\0') {
        result_path = argv[5];
        if (argc > 6 && argv[6] && argv[6][0] != '\0') {
            inputs_path = argv[6];
        } else {
            inputs_path = "inputs.bin";
        }
    }
    
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
    
    // Perform multiplication: 0 = IEEE CPU, 1 = LMUL accelerator, 2 = LMUL on CPU
    if (use_accel == 1) {
        lmul_matrix_multiply(A, B, C, M, N, P);
    } else if (use_accel == 2) {
        cpu_lmul_matrix_multiply(A, B, C, M, N, P);
    } else {
        cpu_matrix_multiply(A, B, C, M, N, P);
    }
    
    // Optional: write result matrix C (argv[5]) and inputs A/B (argv[6] or inputs.bin).
    if (result_path) {
        if (write_result_bin(result_path, M, P, C) == 0) {
            const char ok_msg[] = "RESULT_WRITE_OK\n";
            (void)write(1, ok_msg, sizeof(ok_msg) - 1);
        } else {
            const char fail_msg[] = "RESULT_WRITE_FAILED\n";
            (void)write(2, fail_msg, sizeof(fail_msg) - 1);
        }

        if (inputs_path && write_inputs_bin(inputs_path, M, N, P, A, B) == 0) {
            const char ok_msg[] = "INPUTS_WRITE_OK\n";
            (void)write(1, ok_msg, sizeof(ok_msg) - 1);
        } else if (inputs_path) {
            const char fail_msg[] = "INPUTS_WRITE_FAILED\n";
            (void)write(2, fail_msg, sizeof(fail_msg) - 1);
        }
    }
    
    // Signal completion for validation (write() avoids printf/syscall 403 in gem5)
    {
        const char msg[] = "COMPLETE mode=";
        const char acc[] = "accel\n";
        const char cpu[] = "cpu\n";
        const char cpu_lmul[] = "cpu_lmul\n";
        (void)write(1, msg, sizeof(msg) - 1);
        if (use_accel == 1) {
            (void)write(1, acc, sizeof(acc) - 1);
        } else if (use_accel == 2) {
            (void)write(1, cpu_lmul, sizeof(cpu_lmul) - 1);
        } else {
            (void)write(1, cpu, sizeof(cpu) - 1);
        }
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

    // Start DMA-backed computation (A/B read by DMA, C written back by DMA).
    LMUL_REG(REG_CONTROL) = CTRL_START | CTRL_DMA_EN;
    
    // Poll for completion
    uint32_t status;
    do {
        status = LMUL_REG(REG_STATUS);
    } while (status == STAT_BUSY);

    // In DMA mode, result matrix C has already been written to memory.
}

void cpu_matrix_multiply(bf16_t *A, bf16_t *B, bf16_t *C,
                        uint32_t M, uint32_t N, uint32_t P)
{
    const size_t a_elems = (size_t)M * (size_t)N;
    const size_t b_elems = (size_t)N * (size_t)P;
    const size_t c_elems = (size_t)M * (size_t)P;
    float *A_f32 = (float *)malloc(a_elems * sizeof(float));
    float *B_t = (float *)malloc(b_elems * sizeof(float));    // B transposed: P x N
    float *C_f32 = (float *)calloc(c_elems, sizeof(float));   // Accumulate in float32

    // Fallback keeps behavior correct if scratch allocation fails.
    if (!A_f32 || !B_t || !C_f32) {
        if (A_f32) free(A_f32);
        if (B_t) free(B_t);
        if (C_f32) free(C_f32);
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
        return;
    }

    for (size_t idx = 0; idx < a_elems; idx++) {
        A_f32[idx] = bf16_to_float(A[idx]);
    }
    for (uint32_t k = 0; k < N; k++) {
        for (uint32_t j = 0; j < P; j++) {
            B_t[(size_t)j * N + k] = bf16_to_float(B[(size_t)k * P + j]);
        }
    }

    // Tiled matmul for better cache locality while preserving IEEE math.
    const uint32_t tile = 32;
    for (uint32_t ii = 0; ii < M; ii += tile) {
        const uint32_t i_end = (ii + tile < M) ? (ii + tile) : M;
        for (uint32_t jj = 0; jj < P; jj += tile) {
            const uint32_t j_end = (jj + tile < P) ? (jj + tile) : P;
            for (uint32_t kk = 0; kk < N; kk += tile) {
                const uint32_t k_end = (kk + tile < N) ? (kk + tile) : N;
                for (uint32_t i = ii; i < i_end; i++) {
                    float *c_row = &C_f32[(size_t)i * P];
                    const float *a_row = &A_f32[(size_t)i * N];
                    for (uint32_t j = jj; j < j_end; j++) {
                        const float *b_row = &B_t[(size_t)j * N];
                        float sum = c_row[j];
                        for (uint32_t k = kk; k < k_end; k++) {
                            sum += a_row[k] * b_row[k];
                        }
                        c_row[j] = sum;
                    }
                }
            }
        }
    }

    for (size_t idx = 0; idx < c_elems; idx++) {
        C[idx] = float_to_bf16(C_f32[idx]);
    }

    free(A_f32);
    free(B_t);
    free(C_f32);
}

/* BF16 matmul on CPU: same numerics as the LMUL accelerator (per-element
 * convert-multiply-accumulate, BF16 output). Tiled for cache like IEEE path.
 * Models realistic CPU-only LMUL path for algorithm vs hardware comparison. */
void cpu_lmul_matrix_multiply(bf16_t *A, bf16_t *B, bf16_t *C,
                              uint32_t M, uint32_t N, uint32_t P)
{
    const uint32_t tile = 32;
    for (uint32_t ii = 0; ii < M; ii += tile) {
        const uint32_t i_end = (ii + tile < M) ? (ii + tile) : M;
        for (uint32_t jj = 0; jj < P; jj += tile) {
            const uint32_t j_end = (jj + tile < P) ? (jj + tile) : P;
            for (uint32_t kk = 0; kk < N; kk += tile) {
                const uint32_t k_end = (kk + tile < N) ? (kk + tile) : N;
                for (uint32_t i = ii; i < i_end; i++) {
                    for (uint32_t j = jj; j < j_end; j++) {
                        float sum = 0.0f;
                        for (uint32_t k = kk; k < k_end; k++) {
                            float a = bf16_to_float(A[(size_t)i * N + k]);
                            float b = bf16_to_float(B[(size_t)k * P + j]);
                            sum += a * b;
                        }
                        float prev = bf16_to_float(C[(size_t)i * P + j]);
                        C[(size_t)i * P + j] = float_to_bf16(prev + sum);
                    }
                }
            }
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
