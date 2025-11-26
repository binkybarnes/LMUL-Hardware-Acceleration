// synthesis/rtl/top_bf16_synth.v
module top_bf16_synth (
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

  bf16_mul u_bf16 (
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

