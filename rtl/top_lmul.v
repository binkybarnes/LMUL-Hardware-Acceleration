module top_lmul (
    input  wire        clk,
    input  wire        rstn,
    input  wire        i_valid,
    output wire        i_ready,
    input  wire [15:0] i_a,
    input  wire [15:0] i_b,
    output wire        o_valid,
    input  wire        o_ready,
    output wire [15:0] o_p
);

    // Instantiate lmul_bf16
    lmul_bf16 #(
        .E_BITS(8),
        .M_BITS(7),
        .EM_BITS(15),
        .BITW(16)
    ) dut (
        .clk(clk),
        .rstn(rstn),
        .i_valid(i_valid),
        .i_ready(i_ready),
        .i_a(i_a),
        .i_b(i_b),
        .o_valid(o_valid),
        .o_ready(o_ready),
        .o_p(o_p)
    );

endmodule