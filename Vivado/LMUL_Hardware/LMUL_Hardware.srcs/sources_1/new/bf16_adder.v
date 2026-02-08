`timescale 1ns / 1ps
module bf16_adder (
    input  wire [15:0] a,
    input  wire [15:0] b,
    output wire [15:0] sum
);

    // Decompose inputs
    wire a_sign = a[15];
    wire [7:0] a_exp = a[14:7];
    wire [6:0] a_mant = a[6:0];

    wire b_sign = b[15];
    wire [7:0] b_exp = b[14:7];
    wire [6:0] b_mant = b[6:0];

    // Zero detection
    wire a_is_zero = (a_exp == 0) && (a_mant == 0);
    wire b_is_zero = (b_exp == 0) && (b_mant == 0);

    // Extend mantissas with implicit leading 1
    wire [8:0] a_mant_ext = (a_exp == 0) ? {1'b0, a_mant} : {1'b1, a_mant};
    wire [8:0] b_mant_ext = (b_exp == 0) ? {1'b0, b_mant} : {1'b1, b_mant};

    // Align mantissas
    wire [7:0] exp_diff = (a_exp >= b_exp) ? (a_exp - b_exp) : (b_exp - a_exp);
    wire [8:0] a_aligned = (a_exp >= b_exp) ? a_mant_ext : (a_mant_ext >> exp_diff);
    wire [8:0] b_aligned = (b_exp >= a_exp) ? b_mant_ext : (b_mant_ext >> exp_diff);

    // Result exponent is max exponent
    wire [7:0] result_exp_init = (a_exp >= b_exp) ? a_exp : b_exp;

    // Mantissa addition/subtraction with sign
    reg [9:0] mant_sum;
    reg result_sign;
    always @(*) begin
        if (a_sign == b_sign) begin
            mant_sum = a_aligned + b_aligned;
            result_sign = a_sign;
        end else if (a_aligned >= b_aligned) begin
            mant_sum = a_aligned - b_aligned;
            result_sign = a_sign;
        end else begin
            mant_sum = b_aligned - a_aligned;
            result_sign = b_sign;
        end
    end

    // Normalize
    reg [7:0] out_exp;
    reg [8:0] norm_mant;
    reg [6:0] out_mant;
    always @(*) begin
        norm_mant = mant_sum[8:0];  // take lower 9 bits
        out_exp = result_exp_init;

        // Right shift if carry out
        if (mant_sum[9]) begin
            norm_mant = norm_mant >> 1;
            out_exp = out_exp + 1;
        end

        // Left shift until leading 1 is at bit 8
        while (norm_mant[8] == 0 && out_exp > 0) begin
            norm_mant = norm_mant << 1;
            out_exp = out_exp - 1;
        end

        // Truncate to 7-bit mantissa (drop leading 1)
        out_mant = norm_mant[7:1];

        // Force +0 if result is zero
        if (norm_mant == 0) begin
            out_exp = 0;
            out_mant = 0;
            result_sign = 0;
        end
    end

    // Select zero inputs
    assign sum = a_is_zero ? b :
                 b_is_zero ? a :
                 {result_sign, out_exp, out_mant};

endmodule