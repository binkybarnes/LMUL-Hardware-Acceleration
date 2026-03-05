// synthesis/rtl/top_lmul_synth.v
// Clean wrapper for synthesis - no testbench code!

module top_lmul_synth (
    input  wire         clk,
    input  wire         rstn,
    input  wire         i_valid,
    input  wire         o_ready,
    input  wire [15:0]  i_a,
    input  wire [15:0]  i_b,
    output wire         i_ready,
    output wire         o_valid,
    output wire [15:0]  o_p
);

  // Just instantiate your existing L-Mul module
  lmul_bf16 u_lmul (
    .clk    (clk),
    .rstn   (rstn),
    .i_valid(i_valid),
    .i_ready(i_ready),
    .i_a    (i_a),
    .i_b    (i_b),
    .o_valid(o_valid),
    .o_ready(o_ready),
    .o_p    (o_p)
  );

endmodule

