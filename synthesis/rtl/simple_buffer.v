// synthesis/rtl/simple_buffer.v
// Simple memory buffer for accelerator design
// This is a basic implementation - real SRAM would be more efficient

module simple_buffer #(
    parameter DEPTH = 1024,        // Number of entries
    parameter WIDTH = 16,          // Data width (BF16 = 16 bits)
    parameter ADDR_WIDTH = 10      // $clog2(DEPTH)
)(
    input  wire clk,
    input  wire rstn,
    
    // Write port
    input  wire [ADDR_WIDTH-1:0] waddr,
    input  wire [WIDTH-1:0] wdata,
    input  wire we,                // Write enable
    
    // Read port
    input  wire [ADDR_WIDTH-1:0] raddr,
    output reg  [WIDTH-1:0] rdata
);

    // Memory array (synthesizes to flip-flops or inferred as memory)
    reg [WIDTH-1:0] mem [0:DEPTH-1];
    
    // Write operation
    always @(posedge clk) begin
        if (!rstn) begin
            // Reset (optional - can leave uninitialized)
        end else if (we) begin
            mem[waddr] <= wdata;
        end
    end
    
    // Read operation (combinational)
    always @(*) begin
        rdata = mem[raddr];
    end

endmodule
