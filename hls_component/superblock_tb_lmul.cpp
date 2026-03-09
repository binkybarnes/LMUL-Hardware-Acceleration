#include <iostream>
#include <vector>
#include <cmath>
#include <fstream>
#include <cstdint> // Replaced hls_half.h with cstdint for uint16_t

// 1. Host-side Bit-Casting Helpers
// Converts a standard 32-bit float into a raw 16-bit Bfloat16
inline uint16_t float_to_bf16(float f) {
    union { float flt; uint32_t u32; } u;
    u.flt = f;
    return (uint16_t)(u.u32 >> 16); // Truncate lower 16 bits of mantissa
}

// Converts a raw 16-bit Bfloat16 back into a standard 32-bit float
inline float bf16_to_float(uint16_t bf) {
    union { uint32_t u32; float flt; } u;
    u.u32 = ((uint32_t)bf) << 16; // Shift back to upper 16 bits, lower bits become 0
    return u.flt;
}

// 2. Reference your NEW top function using uint16_t
void qwen_superblock(uint16_t *A, uint16_t *W1, uint16_t *W2, uint16_t *C, int M, int N_W1, int N_W2, int K);

void load_bin(const char* filename, std::vector<float>& vec, int size) {
    std::ifstream file(filename, std::ios::binary);
    if (!file) {
        std::cerr << "ERROR: Could not open " << filename << std::endl;
        exit(1);
    }
    file.read(reinterpret_cast<char*>(vec.data()), size * sizeof(float));
    file.close();
}

int main() {
    // 1. Define dimensions (Using the Qwen 0.5B sizes we tested)
    const int ACTUAL_M = 2;   
    const int K = 896;        // Input dim
    const int N_W1 = 896;     // Output dim of first matmul (temp buffer size)
    const int N_W2 = 896;     // Output dim of second matmul
    
    const int M_PADDED = 32;  

    // 2. Allocate Float buffers for reading
    std::vector<float> A_float(ACTUAL_M * K, 0.0f);
    std::vector<float> W1_float(K * N_W1, 0.0f);
    std::vector<float> W2_float(N_W1 * N_W2, 0.0f);
    std::vector<float> C_gold_float(ACTUAL_M * N_W2, 0.0f);
    
    // 3. Allocate Hardware Buffers (Now uint16_t)
    std::vector<uint16_t> A_hw(M_PADDED * K, 0); 
    std::vector<uint16_t> W1_hw(K * N_W1, 0);        
    std::vector<uint16_t> W2_hw(N_W1 * N_W2, 0);        
    std::vector<uint16_t> C_hw(M_PADDED * N_W2, 0); 

    std::cout << ">> Loading Superblock binary files..." << std::endl;
    load_bin("C:/Users/Brandon/Desktop/codes/hls_bruh/hls_component/data2/qwen_in.bin", A_float, ACTUAL_M * K);
    load_bin("C:/Users/Brandon/Desktop/codes/hls_bruh/hls_component/data2/qwen_w1.bin", W1_float, K * N_W1); 
    load_bin("C:/Users/Brandon/Desktop/codes/hls_bruh/hls_component/data2/qwen_w2.bin", W2_float, N_W1 * N_W2); 
    load_bin("C:/Users/Brandon/Desktop/codes/hls_bruh/hls_component/data2/qwen_out_gold_super.bin", C_gold_float, ACTUAL_M * N_W2);

    // Cast everything to uint16_t (BF16) using our helper function
    for (int i = 0; i < ACTUAL_M; i++) 
        for (int k = 0; k < K; k++) 
            A_hw[i * K + k] = float_to_bf16(A_float[i * K + k]);
            
    for (int i = 0; i < K * N_W1; i++) W1_hw[i] = float_to_bf16(W1_float[i]);
    for (int i = 0; i < N_W1 * N_W2; i++) W2_hw[i] = float_to_bf16(W2_float[i]);

    std::cout << ">> Running Superblock Hardware Simulation..." << std::endl;
    // Call the NEW Top Function
    qwen_superblock(A_hw.data(), W1_hw.data(), W2_hw.data(), C_hw.data(), M_PADDED, N_W1, N_W2, K);

    // Verification Logic
    double total_sq_error = 0;
    int sample_count = ACTUAL_M * N_W2;

    std::cout << ">> Verifying Results with LMUL Tolerance..." << std::endl;
    for (int i = 0; i < ACTUAL_M; i++) {
        for (int j = 0; j < N_W2; j++) {
            // Convert the hardware output back to float for comparison
            float hls_val = bf16_to_float(C_hw[i * N_W2 + j]);
            float gold_val = C_gold_float[i * N_W2 + j];
            float diff = hls_val - gold_val;
            
            total_sq_error += (diff * diff);

            // Print the first few to see the "drift"
            if (i == 0 && j < 5) {
                std::cout << "Sample [" << j << "]: HLS=" << hls_val 
                          << " (LMUL) vs Gold=" << gold_val << " (Float)" << std::endl;
            }
        }
    }

    double mse = total_sq_error / sample_count;
    std::cout << "\n>> STATS FOR POSTER:" << std::endl;
    std::cout << ">> Mean Squared Error (MSE): " << mse << std::endl;

    if (mse < 10.0) { 
        std::cout << "LMUL ACCURACY TEST PASSED (within approximation bounds)!" << std::endl;
        return 0;
    } else {
        std::cout << "ACCURACY TOO LOW: MSE = " << mse << std::endl;
        return 1;
    }
}