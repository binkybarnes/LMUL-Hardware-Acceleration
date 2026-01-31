// vivado/rtl/pe_array_pipelined.v
// Pipelined PE Array with proper handshaking
// This version properly handles pipeline stages

`timescale 1ns/1ps

module pe_array_pipelined #(
    parameter ROWS = 4,
    parameter COLS = 4,
    parameter DATA_WIDTH = 16,
    parameter USE_LMUL = 1
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

    // Pipeline registers
    reg [ROWS-1:0][COLS-1:0][DATA_WIDTH-1:0] pe_products_pipe;
    reg pipe_valid;
    
    // Generate PE array
    genvar i, j;
    generate
        for (i = 0; i < ROWS; i = i + 1) begin : gen_rows
            for (j = 0; j < COLS; j = j + 1) begin : gen_cols
                wire [DATA_WIDTH-1:0] pe_result;
                wire pe_valid_local;
                
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
                        .i_ready(),  // Individual PEs always ready
                        .i_a(i_activations[i]),
                        .i_b(i_weights[j]),
                        .o_valid(pe_valid_local),
                        .o_ready(1'b1),
                        .o_p(pe_result)
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
                        .i_ready(),
                        .i_a(i_activations[i]),
                        .i_b(i_weights[j]),
                        .o_valid(pe_valid_local),
                        .o_ready(1'b1),
                        .o_p(pe_result)
                    );
                end
                
                // Register PE outputs (pipeline stage)
                // Note: PEs already have registered outputs, this adds another stage
                always @(posedge clk) begin
                    if (!rstn) begin
                        pe_products_pipe[i][j] <= 0;
                    end else if (pe_valid_local) begin
                        pe_products_pipe[i][j] <= pe_result;
                    end
                end
            end
        end
    endgenerate
    
    // Pipeline valid signal
    // Since all PEs have the same latency, we can use a simple delay
    // L-Mul and IEEE both have 1-cycle latency (registered output)
    reg [1:0] valid_pipe;
    
    always @(posedge clk) begin
        if (!rstn) begin
            valid_pipe <= 2'b00;
            pipe_valid <= 1'b0;
        end else begin
            valid_pipe <= {valid_pipe[0], i_valid};
            pipe_valid <= valid_pipe[0];  // 1 cycle delay for PE computation
        end
    end
    
    // Outputs
    assign o_products = pe_products_pipe;
    assign o_valid = pipe_valid;
    assign i_ready = o_ready | ~o_valid;  // Backpressure

endmodule
