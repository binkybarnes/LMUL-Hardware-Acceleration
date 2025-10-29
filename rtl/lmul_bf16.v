// rtl/lmul_bf16.v
// LMUL (default: BF16 = 1+8+7 bits)

`timescale 1ns/1ps
module lmul_bf16 #(
  parameter E_BITS = 8,
  parameter M_BITS = 7,
  parameter EM_BITS = 15,  // E_BITS + M_BITS
  parameter BITW   = 16    // 1 + E_BITS + M_BITS
)
(
  input  wire              clk,
  input  wire              rstn,

  // Ready/valid handshake (one-deep output buffer)
  input  wire              i_valid,
  output wire              i_ready,
  input  wire [BITW-1:0]   i_a,
  input  wire [BITW-1:0]   i_b,

  output reg               o_valid,
  input  wire              o_ready,
  output reg  [BITW-1:0]   o_p
);

  // Ready if the output slot is free or being consumed
  assign i_ready = o_ready | ~o_valid;

  // Unpack
  wire                a_sign = i_a[BITW-1];
  wire                b_sign = i_b[BITW-1];
  wire [EM_BITS-1:0]  a_fld  = i_a[EM_BITS-1:0];      // {exp||mant}
  wire [EM_BITS-1:0]  b_fld  = i_b[EM_BITS-1:0];
  wire [E_BITS-1:0]   a_exp  = a_fld[EM_BITS-1:M_BITS];
  wire [E_BITS-1:0]   b_exp  = b_fld[EM_BITS-1:M_BITS];

  wire zero_or_sub = (a_exp == {E_BITS{1'b0}}) | (b_exp == {E_BITS{1'b0}});

  localparam BIAS       = 127;  // (1<<7) - 1 for 8-bit exponent
  localparam [EM_BITS-1:0] FIELD_MASK = {EM_BITS{1'b1}};
  localparam [EM_BITS-1:0] OFFSET_MOD = ((1<<EM_BITS) - (BIAS<<M_BITS)) & FIELD_MASK;
  localparam [EM_BITS-1:0] FIELD_MAX  = FIELD_MASK;

  // Add three (E+M)-bit operands with TWO extra bits to classify properly
  wire [EM_BITS+1:0] sum_full =
      {2'b00, a_fld} + {2'b00, b_fld} + {2'b00, OFFSET_MOD};
  // Top two carry bits:
  //   2'b00 -> underflow
  //   2'b01 -> normal
  //   2'b1x -> overflow
  wire [1:0] carry2   = sum_full[EM_BITS+1:EM_BITS];
  wire [EM_BITS-1:0] low_bits = sum_full[EM_BITS-1:0];

  // Select result field
  wire [EM_BITS-1:0] field_sel =
      (zero_or_sub)        ? {EM_BITS{1'b0}} :
      (carry2 == 2'b00)    ? {EM_BITS{1'b0}} :   // underflow -> 0
      (carry2 == 2'b01)    ? low_bits        :   // normal
                             FIELD_MAX;          // overflow -> saturate

  // Sign: XOR for normal/sat; force +0 when field is zero
  wire out_sign_raw = a_sign ^ b_sign;
  wire result_is_zero = (field_sel == {EM_BITS{1'b0}});
  wire out_sign = result_is_zero ? 1'b0 : out_sign_raw;

  // Output register
  always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
      o_valid <= 1'b0;
      o_p     <= {BITW{1'b0}};
    end else begin
      if (i_valid && i_ready) begin
        o_valid <= 1'b1;
        o_p     <= {out_sign, field_sel};
      end else if (o_valid && o_ready) begin
        o_valid <= 1'b0;
      end
    end
  end

endmodule