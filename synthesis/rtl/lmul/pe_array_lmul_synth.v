// synthesis/rtl/lmul/pe_array_lmul_synth.v
// 4×4 PE array using L-Mul multipliers — synthesis-friendly flat port version
// Yosys 0.9 does not support multi-dimensional packed array ports (SystemVerilog),
// so this wrapper flattens all ports to 1D and instantiates 16 lmul_bf16 PEs.
//
// Port encoding:
//   i_activations[63:0]    : 4 rows   × 16-bit BF16  (row r at bits [r*16 +: 16])
//   i_weights[63:0]        : 4 cols   × 16-bit BF16  (col c at bits [c*16 +: 16])
//   o_products[1023:0]     : 4×4=16   × 16-bit BF16  (element [r][c] at [(r*4+c)*16 +: 16])

module pe_array_lmul_synth (
    input  wire         clk,
    input  wire         rstn,
    input  wire [63:0]  i_activations,
    input  wire [63:0]  i_weights,
    input  wire         i_valid,
    output wire         i_ready,
    output wire [1023:0] o_products,
    output wire         o_valid,
    input  wire         o_ready
);

    assign i_ready = 1'b1;
    assign o_valid = i_valid;

    genvar r, c;
    generate
        for (r = 0; r < 4; r = r + 1) begin : gen_row
            for (c = 0; c < 4; c = c + 1) begin : gen_col
                lmul_bf16 #(
                    .E_BITS(8),
                    .M_BITS(7),
                    .EM_BITS(15),
                    .BITW(16)
                ) pe (
                    .clk     (clk),
                    .rstn    (rstn),
                    .i_valid (i_valid),
                    .i_ready (),
                    .i_a     (i_activations[r*16 +: 16]),
                    .i_b     (i_weights[c*16 +: 16]),
                    .o_valid (),
                    .o_ready (1'b1),
                    .o_p     (o_products[(r*4+c)*16 +: 16])
                );
            end
        end
    endgenerate

endmodule
