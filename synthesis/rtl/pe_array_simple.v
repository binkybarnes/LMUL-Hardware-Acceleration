// synthesis/rtl/pe_array_simple.v
// Simple PE Array for accelerator design
// This is a starting point - can be expanded
//
// Usage:
//   For L-Mul:  instantiate with USE_LMUL=1
//   For IEEE:   instantiate with USE_LMUL=0

module pe_array_simple #(
    parameter ROWS = 4,        // Number of PE rows
    parameter COLS = 4,        // Number of PE columns
    parameter DATA_WIDTH = 16, // BF16 data width
    parameter USE_LMUL = 1     // 1 = L-Mul, 0 = IEEE BF16
)(
    input  wire clk,
    input  wire rstn,
    
    // Input activations (one per row)
    input  wire [ROWS-1:0][DATA_WIDTH-1:0] i_activations,
    // Input weights (one per column)
    input  wire [COLS-1:0][DATA_WIDTH-1:0] i_weights,
    input  wire i_valid,
    output wire i_ready,
    
    // Output partial products (ROWS × COLS)
    output wire [ROWS-1:0][COLS-1:0][DATA_WIDTH-1:0] o_products,
    output wire o_valid,
    input  wire o_ready
);

    // Generate PE array
    genvar i, j;
    generate
        for (i = 0; i < ROWS; i = i + 1) begin : gen_rows
            for (j = 0; j < COLS; j = j + 1) begin : gen_cols
                if (USE_LMUL) begin
                    // Instantiate L-Mul multiplier
                    lmul_bf16 #(
                        .E_BITS(8),
                        .M_BITS(7),
                        .EM_BITS(15),
                        .BITW(16)
                    ) pe (
                        .clk(clk),
                        .rstn(rstn),
                        .i_valid(i_valid),
                        .i_ready(),  // Individual PEs always ready (simplified)
                        .i_a(i_activations[i]),
                        .i_b(i_weights[j]),
                        .o_valid(),  // Not used in simple version
                        .o_ready(1'b1),
                        .o_p(o_products[i][j])
                    );
                end else begin
                    // Instantiate IEEE BF16 multiplier
                    bf16_mul #(
                        .E_BITS(8),
                        .M_BITS(7),
                        .BITW(16)
                    ) pe (
                        .clk(clk),
                        .rstn(rstn),
                        .i_valid(i_valid),
                        .i_ready(),  // Individual PEs always ready (simplified)
                        .i_a(i_activations[i]),
                        .i_b(i_weights[j]),
                        .o_valid(),  // Not used in simple version
                        .o_ready(1'b1),
                        .o_p(o_products[i][j])
                    );
                end
            end
        end
    endgenerate
    
    // Simple ready/valid - all PEs must be ready
    assign i_ready = 1'b1;  // Simplified - assumes PEs are always ready
    assign o_valid = i_valid;  // Pass through (simplified)

endmodule
