// vivado/tb/accelerator_tb.v
// Testbench to understand pipeline behavior

`timescale 1ns/1ps

module accelerator_tb;

    // Parameters
    parameter CLK_PERIOD = 10;  // 100 MHz
    
    // Signals
    reg clk;
    reg rstn;
    reg host_start;
    wire host_done;
    reg [9:0] host_addr;
    reg [15:0] host_wdata;
    reg host_we;
    wire [15:0] host_rdata;
    reg [15:0] matrix_size;
    wire [31:0] cycle_count;
    
    // Instantiate DUT
    accelerator_top #(
        .PE_ROWS(4),
        .PE_COLS(4),
        .DATA_WIDTH(16),
        .USE_LMUL(1),
        .BUFFER_DEPTH(1024),
        .ADDR_WIDTH(10)
    ) dut (
        .clk(clk),
        .rstn(rstn),
        .host_start(host_start),
        .host_done(host_done),
        .host_addr(host_addr),
        .host_wdata(host_wdata),
        .host_we(host_we),
        .host_rdata(host_rdata),
        .matrix_size(matrix_size),
        .cycle_count(cycle_count)
    );
    
    // Clock generation
    initial clk = 0;
    always #(CLK_PERIOD/2) clk = ~clk;
    
    // Test sequence
    initial begin
        $dumpfile("accelerator_tb.vcd");
        $dumpvars(0, accelerator_tb);
        
        // Initialize
        rstn = 0;
        host_start = 0;
        host_we = 0;
        host_addr = 0;
        host_wdata = 0;
        matrix_size = 4;  // 4x4 matrix
        
        // Reset
        #(CLK_PERIOD * 5);
        rstn = 1;
        #(CLK_PERIOD * 2);
        
        // Load test data into buffers
        $display("Loading test data...");
        host_we = 1;
        
        // Load activations (simplified - just load some test values)
        for (integer i = 0; i < 16; i = i + 1) begin
            host_addr = i;
            host_wdata = i;  // Simple test pattern
            #CLK_PERIOD;
        end
        
        // Load weights
        for (integer i = 0; i < 16; i = i + 1) begin
            host_addr = 16 + i;
            host_wdata = i + 1;  // Different test pattern
            #CLK_PERIOD;
        end
        
        host_we = 0;
        #(CLK_PERIOD * 2);
        
        // Start computation
        $display("Starting computation at time %0t", $time);
        host_start = 1;
        #CLK_PERIOD;
        host_start = 0;
        
        // Wait for completion
        wait(host_done);
        $display("Computation complete at time %0t", $time);
        $display("Total cycles: %0d", cycle_count);
        
        // Read results
        $display("Reading results...");
        for (integer i = 0; i < 16; i = i + 1) begin
            host_addr = i;
            #CLK_PERIOD;
            $display("Result[%0d] = %0d", i, host_rdata);
        end
        
        #(CLK_PERIOD * 10);
        $finish;
    end

endmodule
