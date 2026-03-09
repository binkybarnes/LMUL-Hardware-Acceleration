#include <iostream>
#include <vector>
#include <cmath>
#include <fstream>
#include "hls_half.h"

// Reference your NEW top function
void qwen_superblock(half *A, half *W1, half *W2, half *C, int M, int N_W1, int N_W2, int K);

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
    
    // 3. Allocate Hardware Buffers
    std::vector<half> A_hw(M_PADDED * K, (half)0.0f); 
    std::vector<half> W1_hw(K * N_W1, (half)0.0f);        
    std::vector<half> W2_hw(N_W1 * N_W2, (half)0.0f);        
    std::vector<half> C_hw(M_PADDED * N_W2, (half)0.0f); 

    std::cout << ">> Loading Superblock binary files..." << std::endl;
    // NOTE: You will need to generate these new files in Python!
    load_bin("C:/Users/Brandon/Desktop/codes/hls_bruh/hls_component/data2/qwen_in.bin", A_float, ACTUAL_M * K);
    load_bin("C:/Users/Brandon/Desktop/codes/hls_bruh/hls_component/data2/qwen_w1.bin", W1_float, K * N_W1); 
    load_bin("C:/Users/Brandon/Desktop/codes/hls_bruh/hls_component/data2/qwen_w2.bin", W2_float, N_W1 * N_W2); 
    load_bin("C:/Users/Brandon/Desktop/codes/hls_bruh/hls_component/data2/qwen_out_gold_super.bin", C_gold_float, ACTUAL_M * N_W2);

    // Cast everything to Half (BF16)
    for (int i = 0; i < ACTUAL_M; i++) 
        for (int k = 0; k < K; k++) 
            A_hw[i * K + k] = (half)A_float[i * K + k];
            
    for (int i = 0; i < K * N_W1; i++) W1_hw[i] = (half)W1_float[i];
    for (int i = 0; i < N_W1 * N_W2; i++) W2_hw[i] = (half)W2_float[i];

    std::cout << ">> Running Superblock Hardware Simulation..." << std::endl;
    // Call the NEW Top Function
    qwen_superblock(A_hw.data(), W1_hw.data(), W2_hw.data(), C_hw.data(), M_PADDED, N_W1, N_W2, K);

    // Verification Logic
    int errors = 0;
    float tolerance = 0.5f; 
    
    std::cout << ">> Verifying Results..." << std::endl;
    for (int i = 0; i < ACTUAL_M; i++) {
        for (int j = 0; j < N_W2; j++) {
            float hls_val = (float)C_hw[i * N_W2 + j];
            float gold_val = C_gold_float[i * N_W2 + j];
            float diff = std::abs(hls_val - gold_val);
            
            if (diff > tolerance && (diff / std::max(1.0f, std::abs(gold_val)) > 0.05f)) { 
                errors++;
                if (errors < 5) {
                    std::cout << "Mismatch at [" << i << "][" << j << "]: HLS=" 
                              << hls_val << " vs Gold=" << gold_val << std::endl;
                }
            }
        }
    }

    if (errors == 0) {
        std::cout << "SUPERBLOCK TEST PASSED!" << std::endl;
        return 0;
    } else {
        std::cout << "TEST FAILED with " << errors << " errors." << std::endl;
        return 1;
    }
}