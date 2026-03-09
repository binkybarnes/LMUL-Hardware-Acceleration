// #include <hls_vector.h>



// #define MAT_SIZE 4
// #define BLOCK_SIZE 2

// void tiled_matmul(int A[MAT_SIZE][MAT_SIZE], int B[MAT_SIZE][MAT_SIZE], int C[MAT_SIZE][MAT_SIZE]) {
//     #pragma HLS INTERFACE mode=s_axilite port=return
//     #pragma HLS INTERFACE mode=m_axi port=A
//     #pragma HLS INTERFACE mode=m_axi port=B
//     #pragma HLS INTERFACE mode=m_axi port=C

//     for (int bi = 0; bi < MAT_SIZE; bi += BLOCK_SIZE) {
//         for (int bj = 0; bj < MAT_SIZE; bj += BLOCK_SIZE) {
//             for (int bk = 0; bk < MAT_SIZE; bk += BLOCK_SIZE) {
                
//                 for (int i = 0; i < BLOCK_SIZE; i++) {
//                     for (int j = 0; j < BLOCK_SIZE; j++) {
//                         #pragma HLS PIPELINE
//                         int sum = 0;
//                         for (int k = 0; k < BLOCK_SIZE; k++) {
//                             sum += A[bi + i][bk + k] * B[bk + k][bj + j];
//                         }
//                         C[bi + i][bj + j] += sum;
//                     }
//                 }
//             }
//         }
//     }
// }

// void tiled_matmul_lmul(uint16_t A[MAT_SIZE][MAT_SIZE], uint16_t B[MAT_SIZE][MAT_SIZE], uint16_t C[MAT_SIZE][MAT_SIZE]) {
//     #pragma HLS INTERFACE mode=s_axilite port=return
//     #pragma HLS INTERFACE mode=bram port=A
//     #pragma HLS INTERFACE mode=bram port=B
//     #pragma HLS INTERFACE mode=bram port=C

//     for (int bi = 0; bi < MAT_SIZE; bi += BLOCK_SIZE) {
//         for (int bj = 0; bj < MAT_SIZE; bj += BLOCK_SIZE) {
//             for (int bk = 0; bk < MAT_SIZE; bk += BLOCK_SIZE) {
//                 for (int i = 0; i < BLOCK_SIZE; i++) {
//                     for (int j = 0; j < BLOCK_SIZE; j++) {
//                         #pragma HLS PIPELINE
//                         uint16_t sum = 0;
//                         for (int k = 0; k < BLOCK_SIZE; k++) {
//                             sum += lmul(A[bi + i][bk + k], B[bk + k][bj + j]);
//                         }
//                         C[bi + i][bj + j] += sum;
//                     }
//                 }
//             }
//         }
//     }
// }

// lmul part
#include "hls_half.h"
#include <stdint.h>
#include "hls_stream.h"

#define TILE 32
#define MAX_SEQ_LEN 32      // M_PADDED
#define HIDDEN_DIM 896      // K
#define INTERMEDIATE_DIM 896 // N

// --- 1. Your Custom Multiplier (Unchanged) ---
uint16_t lmul(uint16_t a_bf16, uint16_t b_bf16) {
    #pragma HLS INLINE
    uint16_t a_fld = a_bf16 & 0x7FFF;
    uint16_t b_fld = b_bf16 & 0x7FFF;

    uint8_t a_exp = (a_fld >> 7) & 0xFF;
    uint8_t b_exp = (b_fld >> 7) & 0xFF;
    if (a_exp == 0 || b_exp == 0) return 0;

    const uint32_t OFFSET_MOD = 0x4080;
    uint32_t sum_full = (uint32_t)a_fld + b_fld + OFFSET_MOD;

    uint16_t carry2 = (sum_full >> 15) & 0x3;
    uint16_t low_bits = sum_full & 0x7FFF;
    uint16_t field_sel;

    if (carry2 == 0)      field_sel = 0;      
    else if (carry2 == 1) field_sel = low_bits; 
    else                  field_sel = 0x7FFF;   

    uint16_t out_sign = (field_sel == 0) ? 0 : ((a_bf16 ^ b_bf16) >> 15) & 0x1;
    return (out_sign << 15) | field_sel;
}



// --- Updated Conversion Helpers ---

inline int32_t bf16_to_fixed32(uint16_t bf) {
    #pragma HLS INLINE
    if ((bf & 0x7FFF) == 0) return 0;

    uint8_t sign = (bf >> 15) & 1;
    int16_t exp = ((bf >> 7) & 0xFF) - 127;
    uint32_t mantissa = (bf & 0x7F) | 0x80; // Implicit 1 + 7 bits = 8 bits

    // We use Q15.16 format. 
    // The mantissa (8 bits) is treated as having 7 fractional bits.
    // To get to 16 fractional bits, we shift left by 9.
    int shift = 16 - 7 + exp;
    
    int32_t fixed_val = 0;
    if (shift >= 0 && shift < 31) {
        fixed_val = (int32_t)mantissa << shift;
    } else if (shift < 0 && shift > -31) {
        fixed_val = (int32_t)mantissa >> (-shift);
    }

    return sign ? -fixed_val : fixed_val;
}

inline uint16_t fixed32_to_bf16(int32_t fixed_val) {
    #pragma HLS INLINE
    if (fixed_val == 0) return 0;

    uint8_t sign = (fixed_val < 0) ? 1 : 0;
    uint32_t abs_val = (fixed_val < 0) ? (uint32_t)-fixed_val : (uint32_t)fixed_val;

    // Standard BF16 conversion
    int bit_pos = 31 - __builtin_clz(abs_val);
    int16_t exp = bit_pos - 16; // 16 is our fractional offset
    int16_t biased_exp = exp + 127;

    if (biased_exp <= 0) return (sign << 15);
    if (biased_exp >= 255) return (sign << 15) | 0x7F80;

    int shift = bit_pos - 7;
    uint16_t mantissa;
    if (shift > 0) {
        uint32_t shifted = abs_val >> shift;
        // Simple truncation for brevity, or add rounding here if needed
        mantissa = shifted & 0x7F;
    } else {
        mantissa = (abs_val << (-shift)) & 0x7F;
    }

    return (sign << 15) | (biased_exp << 7) | mantissa;
}




// // --- 2. Fixed-Point Integer Accumulation Helpers ---
// // We use a 64-bit signed integer to accumulate the products to prevent overflow.
// // The decimal point is assumed to be at bit 32 (Q32.32 format).

// inline int64_t bf16_to_fixed(uint16_t bf) {
//     #pragma HLS INLINE
//     if ((bf & 0x7FFF) == 0) return 0; // Handle zero

//     uint8_t sign = (bf >> 15) & 1;
//     int16_t exp = ((bf >> 7) & 0xFF) - 127; // Unbias exponent
    
//     // Extract 7-bit mantissa and add the implicit leading 1
//     uint32_t mantissa = (bf & 0x7F) | 0x80; 

//     // Align mantissa to the Q32.32 fixed-point format based on the exponent.
//     // The mantissa starts with 7 fractional bits. We shift it up by 32 to move 
//     // it past the decimal point, down by 7 to account for the fractional bits, 
//     // and then shift by the exponent.
//     int shift = 32 - 7 + exp;
    
//     int64_t fixed_val = 0;
//     if (shift >= 0 && shift < 64) {
//         fixed_val = (int64_t)mantissa << shift;
//     } else if (shift < 0 && shift > -64) {
//         fixed_val = (int64_t)mantissa >> (-shift);
//     }

//     return sign ? -fixed_val : fixed_val;
// }

// inline uint16_t fixed_to_bf16(int64_t fixed_val) {
//     #pragma HLS INLINE
//     if (fixed_val == 0) return 0;

//     uint8_t sign = (fixed_val < 0) ? 1 : 0;
//     uint64_t abs_val = (fixed_val < 0) ? -fixed_val : fixed_val;

//     // Find the leading 1 to determine the exponent
//     int leading_zeros = __builtin_clzll(abs_val);
//     int bit_pos = 63 - leading_zeros; // Position of the highest set bit

//     // The exponent is relative to our Q32.32 decimal point
//     int16_t exp = bit_pos - 32; 
//     int16_t biased_exp = exp + 127;

//     // Handle underflow/overflow
//     if (biased_exp <= 0) return (sign << 15); // Underflow to zero
//     if (biased_exp >= 255) return (sign << 15) | 0x7F80; // Overflow to infinity

//     // Extract the 7-bit mantissa.
//     // Shift the highest set bit down to position 7, then mask out the implicit 1.
//     int shift = bit_pos - 7;
//     uint16_t mantissa;
    
//     if (shift > 0) {
//         // Shift right, adding rounding logic (half to even)
//         uint64_t shifted = abs_val >> shift;
//         uint64_t remainder = abs_val & ((1ULL << shift) - 1);
//         uint64_t half_way = 1ULL << (shift - 1);
        
//         if (remainder > half_way || (remainder == half_way && (shifted & 1))) {
//             shifted += 1; // Round up
            
//             // Handle mantissa overflow during rounding
//             if (shifted >= 0x100) { 
//                 shifted >>= 1;
//                 biased_exp += 1;
//             }
//         }
//         mantissa = shifted & 0x7F;
//     } else {
//         mantissa = (abs_val << (-shift)) & 0x7F;
//     }

//     return (sign << 15) | (biased_exp << 7) | mantissa;
// }



// --- 3. The Linear Layer ---
void qwen_linear_layer(
    uint16_t *A,  
    uint16_t *W,  
    uint16_t *C,  
    int M, int N, int K
) {

    uint16_t bufA[TILE][TILE];
    uint16_t bufW[TILE][TILE];
    int32_t bufC[TILE][TILE]; // Change buffer C to hold fixed-point integers

    #pragma HLS ARRAY_PARTITION variable=bufA cyclic factor=16 dim=2
    #pragma HLS ARRAY_PARTITION variable=bufW cyclic factor=16 dim=1

    for (int i = 0; i < M; i += TILE) {
        #pragma HLS LOOP_TRIPCOUNT min=1 max=1
        for (int j = 0; j < N; j += TILE) {
            #pragma HLS LOOP_TRIPCOUNT min=1 max=28
            
            // Initialize integer output buffer
            for(int r=0; r<TILE; r++) {
                #pragma HLS UNROLL factor=4
                for(int c=0; c<TILE; c++) bufC[r][c] = 0;
            }

            for (int k = 0; k < K; k += TILE) {
                #pragma HLS LOOP_TRIPCOUNT min=1 max=28
                
                // 1. LOAD TILES
                for(int r=0; r<TILE; r++) {
                    #pragma HLS PIPELINE
                    for(int c=0; c<TILE; c++) {
                        bufA[r][c] = A[(i+r)*K + (k+c)];
                        bufW[r][c] = W[(k+r)*N + (j+c)];
                    }
                }

                // 2. COMPUTE 
                for (int ti = 0; ti < TILE; ti++) {
                    for (int tj = 0; tj < TILE; tj++) {
                        
                        // Use a local integer variable for fast accumulation
                        int32_t acc = bufC[ti][tj];
                        
                        for (int tk = 0; tk < TILE; tk++) {
                            #pragma HLS PIPELINE II=1

                            // Calculate product using your logic
                            uint16_t raw_prod = lmul(bufA[ti][tk], bufW[tk][tj]);
                            
                            // Convert to fixed-point integer and accumulate
                            acc += bf16_to_fixed32(raw_prod);
                        }
                        
                        // Store back to integer buffer
                        bufC[ti][tj] = acc;
                    }
                }
            }

            // 3. NORMALIZE AND STORE BACK TO DRAM
            for(int r=0; r<TILE; r++) {
                #pragma HLS PIPELINE
                for(int c=0; c<TILE; c++) {
                    // Convert the final integer sum back to Bfloat16
                    C[(i+r)*N + (j+c)] = fixed32_to_bf16(bufC[r][c]);
                }
            }
        }
    }
}



// --- 4. Superblock (Unchanged) ---
void qwen_superblock(
    uint16_t *A,   
    uint16_t *W1,  
    uint16_t *W2,  
    uint16_t *C,   
    int M, int N_W1, int N_W2, int K
) {
    #pragma HLS INTERFACE m_axi port=A offset=slave bundle=gmem0
    #pragma HLS INTERFACE m_axi port=W1 offset=slave bundle=gmem1
    #pragma HLS INTERFACE m_axi port=W2 offset=slave bundle=gmem2
    #pragma HLS INTERFACE m_axi port=C offset=slave bundle=gmem0
    #pragma HLS INTERFACE s_axilite port=return

    #pragma HLS DATAFLOW
    
    uint16_t temp[MAX_SEQ_LEN * INTERMEDIATE_DIM]; 

    qwen_linear_layer(A, W1, temp, M, N_W1, K);
    qwen_linear_layer(temp, W2, C, M, N_W2, N_W1);
}

// #include "hls_half.h"
// #include <stdint.h>

// #define TILE 32
// #define MAX_SEQ_LEN 32
// #define INTERMEDIATE_DIM 896 

// void qwen_linear_layer(
//     half *A,  
//     half *W,  
//     half *C,  
//     int M, int N, int K
// ) {
//     half bufA[TILE][TILE];
//     half bufW[TILE][TILE];
//     half bufC[TILE][TILE]; 

//     #pragma HLS ARRAY_PARTITION variable=bufA cyclic factor=16 dim=2
//     #pragma HLS ARRAY_PARTITION variable=bufW cyclic factor=16 dim=1

//     for (int i = 0; i < M; i += TILE) {
//         #pragma HLS LOOP_TRIPCOUNT min=1 max=1
//         for (int j = 0; j < N; j += TILE) {
//             #pragma HLS LOOP_TRIPCOUNT min=1 max=28
            
//             // Initialize tile
//             for(int r=0; r<TILE; r++)
//                 for(int c=0; c<TILE; c++) bufC[r][c] = 0;

//             for (int k = 0; k < K; k += TILE) {
//                 #pragma HLS LOOP_TRIPCOUNT min=1 max=28
                
//                 // 1. LOAD TILES
//                 for(int r=0; r<TILE; r++) {
//                     #pragma HLS PIPELINE
//                     for(int c=0; c<TILE; c++) {
//                         bufA[r][c] = A[(i+r)*K + (k+c)];
//                         bufW[r][c] = W[(k+r)*N + (j+c)];
//                     }
//                 }

//                 // 2. COMPUTE (Standard FP16 Baseline)
//                 for (int ti = 0; ti < TILE; ti++) {
//                     for (int tj = 0; tj < TILE; tj++) {
//                         half acc = bufC[ti][tj];
//                         for (int tk = 0; tk < TILE; tk++) {
//                              #pragma HLS PIPELINE II=1
//                             // Standard * operator (Uses DSPs)
//                             acc += bufA[ti][tk] * bufW[tk][tj];
//                         }
//                         bufC[ti][tj] = acc;
//                     }
//                 }
//             }

//             // 3. STORE TILES
//             for(int r=0; r<TILE; r++) {
//                 #pragma HLS PIPELINE
//                 for(int c=0; c<TILE; c++) {
//                     C[(i+r)*N + (j+c)] = bufC[r][c];
//                 }
//             }
//         }
//     }
// }

// void qwen_superblock(
//     half *A, half *W1, half *W2, half *C, 
//     int M, int N_W1, int N_W2, int K
// ) {
//     #pragma HLS INTERFACE m_axi port=A offset=slave bundle=gmem0
//     #pragma HLS INTERFACE m_axi port=W1 offset=slave bundle=gmem1
//     #pragma HLS INTERFACE m_axi port=W2 offset=slave bundle=gmem2
//     #pragma HLS INTERFACE m_axi port=C offset=slave bundle=gmem0
//     #pragma HLS INTERFACE s_axilite port=return

//     #pragma HLS DATAFLOW
//     half temp[MAX_SEQ_LEN * INTERMEDIATE_DIM]; 

//     qwen_linear_layer(A, W1, temp, M, N_W1, K);
//     qwen_linear_layer(temp, W2, C, M, N_W2, N_W1);
// }