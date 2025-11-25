`timescale 1ns/1ps
module LMUL_unit(
    input clk,
    input start,
    input [15:0] a,   // BF16 upper 16 bits
    input [15:0] b,
    output reg ready,
    output reg [31:0] out_bits
);
    parameter LATENCY = 5;
    reg [2:0] counter;
    reg [15:0] a_reg, b_reg;

    always @(posedge clk) begin
        if (start) begin
            a_reg <= a;
            b_reg <= b;
            counter <= LATENCY;
            ready <= 0;
        end else if (counter != 0) begin
            counter <= counter - 1;
            ready <= 0;
        end else begin
            // Compute LMUL output (simple bit manipulation like your Python version)
            reg s;
            reg [14:0] fa, fb;
            reg [16:0] sum_full;
            reg [14:0] field_sel;
            reg [15:0] bfresult;

            s = a_reg[15] ^ b_reg[15];
            fa = a_reg[14:0];
            fb = b_reg[14:0];
            sum_full = fa + fb + 16'h4080;

            if (sum_full[16:15] == 2'b00) field_sel = 0;
            else if (sum_full[16:15] == 2'b01) field_sel = sum_full[14:0];
            else field_sel = 15'h7FFF;

            bfresult = {s, field_sel};
            out_bits <= {bfresult, 16'h0000};
            ready <= 1;
        end
    end
endmodule
