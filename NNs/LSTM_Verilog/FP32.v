// FP32_pipeB.v -- pipelined FP32 "emulation" that returns precomputed products
`timescale 1ns/1ps
module FP32 #(
    parameter LATENCY = 4,
    parameter MEM_DEPTH = 8192   // set large enough; TB will $readmemh into this
)(
    input clk,
    input start,
    input [31:0] idx,            // index into precomputed product memory
    output reg ready,
    output reg [31:0] out_bits
);
    // product memory (filled by $readmemh in the TB)
    reg [31:0] prod_mem [0:MEM_DEPTH-1];

    // pipeline registers
    reg [31:0] pipe_bits [0:LATENCY-1];
    reg pipe_valid [0:LATENCY-1];

    integer i;
    initial begin
        for (i=0; i<LATENCY; i=i+1) begin
            pipe_bits[i] = 32'b0;
            pipe_valid[i] = 0;
        end
        ready = 0;
        out_bits = 0;
    end

    always @(posedge clk) begin
        // stage 0: load product from memory when start (idx valid)
        if (start) begin
            pipe_bits[0] <= prod_mem[idx];
            pipe_valid[0] <= 1;
        end else begin
            pipe_bits[0] <= 32'b0;
            pipe_valid[0] <= 0;
        end

        // shift pipeline forward
        for (i = 1; i < LATENCY; i = i + 1) begin
            pipe_bits[i] <= pipe_bits[i-1];
            pipe_valid[i] <= pipe_valid[i-1];
        end

        ready <= pipe_valid[LATENCY-1];
        out_bits <= pipe_bits[LATENCY-1];
    end

    // allow TB to initialize product memory
    // use $readmemh("fp32_products.txt", prod_mem);
endmodule
