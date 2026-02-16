// synthesis/rtl/simple_accumulator.v
// Simple accumulator tree for summing partial products
// This accumulates results from a PE array row

module simple_accumulator #(
    parameter WIDTH = 16,          // Data width (BF16)
    parameter DEPTH = 4            // Number of inputs to accumulate
)(
    input  wire clk,
    input  wire rstn,
    
    // Input partial products
    input  wire [DEPTH-1:0][WIDTH-1:0] i_products,
    input  wire i_valid,
    output wire i_ready,
    
    // Output sum
    output reg  [WIDTH-1:0] o_sum,
    output reg  o_valid,
    input  wire o_ready
);

    // Simple tree reduction (combinational)
    // For DEPTH=4: sum = ((a+b) + (c+d))
    wire [WIDTH-1:0] sum_intermediate [0:DEPTH/2-1];
    
    genvar i;
    generate
        // First level: pairwise additions
        for (i = 0; i < DEPTH/2; i = i + 1) begin : gen_first_level
            assign sum_intermediate[i] = i_products[2*i] + i_products[2*i+1];
        end
        
        // Second level: sum intermediate results
        // (For DEPTH=4, this is just one addition)
        if (DEPTH == 4) begin
            always @(*) begin
                o_sum = sum_intermediate[0] + sum_intermediate[1];
            end
        end else if (DEPTH == 2) begin
            always @(*) begin
                o_sum = sum_intermediate[0];
            end
        end
    endgenerate
    
    // Simple handshaking
    assign i_ready = o_ready | ~o_valid;
    
    always @(posedge clk) begin
        if (!rstn) begin
            o_valid <= 1'b0;
        end else if (i_valid && i_ready) begin
            o_valid <= 1'b1;
        end else if (o_ready) begin
            o_valid <= 1'b0;
        end
    end

endmodule
