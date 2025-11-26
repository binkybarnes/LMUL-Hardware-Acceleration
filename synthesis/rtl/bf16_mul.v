// synthesis/rtl/bf16_mul.v
// IEEE-754 BF16 multiplier

module bf16_mul #(
  parameter E_BITS = 8,
  parameter M_BITS = 7,
  parameter BITW   = 16
)(
  input  wire              clk,
  input  wire              rstn,
  input  wire              i_valid,
  output wire              i_ready,
  input  wire [BITW-1:0]   i_a,
  input  wire [BITW-1:0]   i_b,
  output reg               o_valid,
  input  wire              o_ready,
  output reg  [BITW-1:0]   o_p
);

  // Ready/valid handshake (same as L-Mul)
  assign i_ready = o_ready | ~o_valid;

  // Unpack fields
  wire sign_a = i_a[15];
  wire sign_b = i_b[15];
  wire [7:0] exp_a = i_a[14:7];
  wire [7:0] exp_b = i_b[14:7];
  wire [6:0] man_a = i_a[6:0];
  wire [6:0] man_b = i_b[6:0];

  // Handle zeros/subnormals (exp == 0)
  wire is_zero = (exp_a == 0) || (exp_b == 0);

  // Build implicit mantissa (1.m format)
  wire [7:0] mant_a_implicit = (exp_a == 0) ? 8'b0 : {1'b1, man_a};
  wire [7:0] mant_b_implicit = (exp_b == 0) ? 8'b0 : {1'b1, man_b};

  // Multiply mantissas (8-bit × 8-bit = 16-bit)
  wire [15:0] mant_prod = mant_a_implicit * mant_b_implicit;

  // Add exponents and subtract bias
  localparam integer BIAS = 127;
  wire [8:0] exp_sum_raw = exp_a + exp_b;  // 9 bits: 0-510
  wire [9:0] exp_sum = exp_sum_raw - BIAS;  // 10 bits: -127 to 383 (signed interpretation)

  // Normalize mantissa product
  wire mant_prod_ge_2 = mant_prod[15];  // Product >= 2.0?
  wire [9:0] exp_result_temp = mant_prod_ge_2 ? (exp_sum + 1) : exp_sum;
  wire [7:0] exp_result = exp_result_temp[7:0];
  wire [6:0] mant_result = mant_prod_ge_2 ? mant_prod[14:8] : mant_prod[13:7];

  // Handle overflow/underflow
  // Underflow: exp_sum_raw < BIAS, or after normalization exp_result_temp < 0 (MSB set)
  wire exp_underflow = (exp_sum_raw < BIAS) || exp_result_temp[9];
  // Overflow: exp_result_temp > 255 (after normalization)
  wire exp_overflow = (exp_result_temp > 255) || (exp_result == 8'hFF);

  // Calculate result sign
  wire result_sign = sign_a ^ sign_b;

  // Pack result
  wire [BITW-1:0] result_comb;
  assign result_comb = is_zero || exp_underflow ? {BITW{1'b0}} :
                       exp_overflow ? {result_sign, 8'hFF, 7'h7F} :
                       {result_sign, exp_result, mant_result};

  // Register output (1-cycle latency, same as L-Mul)
  always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
      o_valid <= 1'b0;
      o_p     <= {BITW{1'b0}};
    end else begin
      if (i_valid && i_ready) begin
        o_valid <= 1'b1;
        o_p     <= result_comb;
      end else if (o_valid && o_ready) begin
        o_valid <= 1'b0;
      end
    end
  end

endmodule

