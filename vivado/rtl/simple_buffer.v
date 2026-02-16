// vivado/rtl/simple_buffer.v
// Simple memory buffer (will be replaced with BRAM IP in Vivado)
// This is a placeholder - use Vivado Block Memory Generator for production

`timescale 1ns/1ps

module simple_buffer #(
    parameter DEPTH = 1024,
    parameter WIDTH = 16,
    parameter ADDR_WIDTH = 10
)(
    input  wire clk,
    input  wire rstn,
    
    // Write port
    input  wire [ADDR_WIDTH-1:0] waddr,
    input  wire [WIDTH-1:0] wdata,
    input  wire we,
    
    // Read port
    input  wire [ADDR_WIDTH-1:0] raddr,
    output reg  [WIDTH-1:0] rdata
);

    // Memory array
    // Note: In Vivado, this will infer BRAM if properly configured
    // For now, it's a simple register array
    (* ram_style = "block" *)  // Hint to Vivado to use BRAM
    reg [WIDTH-1:0] mem [0:DEPTH-1];
    
    // Write operation
    always @(posedge clk) begin
        if (we) begin
            mem[waddr] <= wdata;
        end
    end
    
    // Read operation (combinational)
    always @(*) begin
        rdata = mem[raddr];
    end

endmodule
