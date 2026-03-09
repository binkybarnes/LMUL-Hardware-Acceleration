


#include <iostream>
#include <vector>
#include <cmath>
#include <fstream>
#include "hls_half.h"

// Reference the function from your HLS file
void qwen_linear_layer(half *A, half *W, half *C, int M, int N, int K);

// Helper function to load binary files dumped from Python
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
    // 1. Define dimensions from your Python output
    const int ACTUAL_M = 2;   // "The cat" = 2 tokens
    const int K = 896;        // Qwen 0.5B Hidden Dim
    const int N = 896;        // Assuming square weight matrix for now
    
    // Pad M to be a multiple of TILE (32)
    const int M_PADDED = 32;  

    // 2. Allocate memory (Using float for reading, half for hardware)
    std::vector<float> A_float(ACTUAL_M * K, 0.0f);
    std::vector<float> W_float(K * N, 0.0f);              // NEW: Float buffer for weights
    std::vector<float> C_gold_float(ACTUAL_M * N, 0.0f);
    
    std::vector<half> A_hw(M_PADDED * K, (half)0.0f); // Padded to 32
    std::vector<half> W_hw(K * N, (half)0.0f);        // Will hold real weights now
    std::vector<half> C_hw(M_PADDED * N, (half)0.0f); 

    std::cout << ">> Loading binary files..." << std::endl;
    // 3. Load the data 
    load_bin("C:/Users/Brandon/Desktop/codes/hls_bruh/hls_component/data/qwen_in.bin", A_float, ACTUAL_M * K);
    load_bin("C:/Users/Brandon/Desktop/codes/hls_bruh/hls_component/data/qwen_w.bin", W_float, K * N); // NEW: Load the weights!
    load_bin("C:/Users/Brandon/Desktop/codes/hls_bruh/hls_component/data/qwen_out_gold.bin", C_gold_float, ACTUAL_M * N);

    // 4. Cast Float32 to BF16/Half and apply Padding
    for (int i = 0; i < ACTUAL_M; i++) {
        for (int k = 0; k < K; k++) {
            A_hw[i * K + k] = (half)A_float[i * K + k];
        }
    }
    
    // NEW: Cast Float32 Weights to Half for the hardware
    for (int i = 0; i < K * N; i++) {
        W_hw[i] = (half)W_float[i];
    }

    std::cout << ">> Running HLS Kernel (with padded M=32)..." << std::endl;
    // 5. Call your HLS function with the PADDED dimensions
    qwen_linear_layer(A_hw.data(), W_hw.data(), C_hw.data(), M_PADDED, N, K);

    // 6. Verification logic (Only check the ACTUAL_M rows, ignore the padded garbage)
    int errors = 0;
    float tolerance = 0.5f; 
    
    std::cout << ">> Verifying Results..." << std::endl;
    for (int i = 0; i < ACTUAL_M; i++) {
        for (int j = 0; j < N; j++) {
            float hls_val = (float)C_hw[i * N + j];
            float gold_val = C_gold_float[i * N + j];
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
        std::cout << "\n===================================" << std::endl;
        std::cout << "   TEST PASSED! hooray   " << std::endl;
        std::cout << "===================================" << std::endl;
        return 0;
    } else {
        std::cout << "TEST FAILED with " << errors << " errors." << std::endl;
        return 1;
    }
}