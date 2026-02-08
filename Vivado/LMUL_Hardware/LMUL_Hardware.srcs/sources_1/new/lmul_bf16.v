`timescale 1ns/1ps
module lmul_bf16 #(
    parameter E_BITS = 8,
    parameter M_BITS = 7,
    parameter EM_BITS = 15,
    parameter BITW   = 16
)(
    input  wire            clk,
    input  wire            rstn,

    // Handshake input
    input  wire            i_valid,
    output wire            i_ready,
    input  wire [BITW-1:0] i_a,
    input  wire [BITW-1:0] i_b,

    // Handshake output
    output reg             o_valid,
    input  wire            o_ready,
    output reg  [BITW-1:0] o_p
);

    // Single-entry pipeline
    assign i_ready = ~o_valid | o_ready;

    // -----------------------------
    // Input registers
    // -----------------------------
    reg [BITW-1:0] a_reg, b_reg;

    always @(posedge clk or negedge rstn) begin
        if (!rstn) begin
            a_reg <= 0;
            b_reg <= 0;
        end else if (i_valid && i_ready) begin
            a_reg <= i_a;
            b_reg <= i_b;
        end
    end

    // -----------------------------
    // Combinational BF16 multiply
    // -----------------------------
    wire a_sign = a_reg[BITW-1];
    wire b_sign = b_reg[BITW-1];

    wire [EM_BITS-1:0] a_fld = a_reg[EM_BITS-1:0];
    wire [EM_BITS-1:0] b_fld = b_reg[EM_BITS-1:0];

    wire [E_BITS-1:0] a_exp = a_fld[EM_BITS-1:M_BITS];
    wire [E_BITS-1:0] b_exp = b_fld[EM_BITS-1:M_BITS];

    wire zero_or_sub = (a_exp == 0) | (b_exp == 0);

    localparam integer BIAS = 127;
    localparam [EM_BITS-1:0] FIELD_MAX = {EM_BITS{1'b1}};
    localparam [EM_BITS-1:0] OFFSET_MOD =
        ((1 << EM_BITS) - (BIAS << M_BITS)) & FIELD_MAX;

    wire [EM_BITS+1:0] sum_full =
        {2'b00, a_fld} + {2'b00, b_fld} + {2'b00, OFFSET_MOD};

    wire [1:0] carry2 = sum_full[EM_BITS+1:EM_BITS];
    wire [EM_BITS-1:0] low_bits = sum_full[EM_BITS-1:0];

    wire [EM_BITS-1:0] field_sel =
        zero_or_sub       ? 0 :
        carry2 == 2'b01   ? low_bits :
        carry2 == 2'b10   ? FIELD_MAX :
                            0;

    wire out_sign = (field_sel == 0) ? 1'b0 : (a_sign ^ b_sign);
    wire [BITW-1:0] result = {out_sign, field_sel};

    // -----------------------------
    // Output register
    // -----------------------------
    always @(posedge clk or negedge rstn) begin
        if (!rstn) begin
            o_valid <= 1'b0;
            o_p     <= 0;
        end else if (i_valid && i_ready) begin
            o_p     <= result;
            o_valid <= 1'b1;
        end else if (o_valid && o_ready) begin
            o_valid <= 1'b0;
        end
    end

endmodule