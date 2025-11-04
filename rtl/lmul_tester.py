import subprocess
import tempfile
import os
import struct
import numpy as np
import matplotlib.pyplot as plt
import time


class BatchLMULTester:
    """Test LMUL with batch operations in single simulation"""
    
    def __init__(self, verilog_file='rtl/top_lmul.v'):
        self.verilog_file = verilog_file
        
    def test_batch(self, test_pairs, verbose=True):
        """
        Test multiple multiplications in one simulation run
        
        Args:
            test_pairs: List of (a_bf16, b_bf16) tuples
            
        Returns:
            List of result_bf16 values
        """
        num_tests = len(test_pairs)
        
        # Generate test vectors
        test_vectors = ""
        for i, (a, b) in enumerate(test_pairs):
            test_vectors += f"        test_a[{i}] = 16'h{a:04x};\n"
            test_vectors += f"        test_b[{i}] = 16'h{b:04x};\n"
        
        # Create testbench
        testbench = f'''
`timescale 1ns/1ps

module tb;
    reg clk;
    reg rstn;
    reg i_valid;
    wire i_ready;
    reg [15:0] i_a;
    reg [15:0] i_b;
    wire o_valid;
    reg o_ready;
    wire [15:0] o_p;
    
    // Test vectors
    reg [15:0] test_a [0:{num_tests-1}];
    reg [15:0] test_b [0:{num_tests-1}];
    reg [15:0] results [0:{num_tests-1}];
    integer test_idx;
    integer result_idx;
    
    // Instantiate DUT
    top_lmul dut (
        .clk(clk),
        .rstn(rstn),
        .i_valid(i_valid),
        .i_ready(i_ready),
        .i_a(i_a),
        .i_b(i_b),
        .o_valid(o_valid),
        .o_ready(o_ready),
        .o_p(o_p)
    );
    
    // Clock generation
    initial clk = 0;
    always #5 clk = ~clk;  // 10ns period
    
    // Capture outputs when they become valid
    // Simple approach: capture when o_valid is true and we haven't captured enough results yet
    always @(posedge clk) begin
        if (o_valid && o_ready && (result_idx < {num_tests})) begin
            results[result_idx] = o_p;
            result_idx = result_idx + 1;
        end
    end
    
    initial begin
        // Initialize test vectors
{test_vectors}
        
        // Reset
        rstn = 0;
        i_valid = 0;
        i_a = 0;
        i_b = 0;
        o_ready = 1;  // Always ready to accept outputs
        test_idx = 0;
        result_idx = 0;
        
        repeat(4) @(posedge clk);
        rstn = 1;
        repeat(3) @(posedge clk);  // Extra cycle after reset
        
        for (test_idx = 0; test_idx < {num_tests}; test_idx = test_idx + 1) begin
            // Wait for ready signal
            while (!i_ready) @(posedge clk);
            
            // Set inputs with proper setup time before the clock edge
            // The inputs need to be stable BEFORE the posedge when DUT samples them
            i_a = test_a[test_idx];
            i_b = test_b[test_idx];
            #1;  // Small delay to ensure inputs are stable
            i_valid = 1;
            
            // Clock edge - DUT samples inputs here and starts computation
            @(posedge clk);
            // On this edge, DUT sees i_valid=1, i_ready=1, so it captures i_a, i_b
            // The combinational logic computes the result immediately
            // But o_valid and o_p are updated on the NEXT posedge (registered output)
            
            // Wait for output to appear (one cycle latency)
            @(posedge clk);
            // On this edge, o_valid becomes 1, o_p has the result
            
            // Deassert valid after output is registered
            i_valid = 0;
        end
        
        // Wait for all remaining results to be captured
        // Each input produces output one cycle after it's applied
        // We've already waited for outputs after each input, but we need to
        // wait for the last input's output to be captured
        repeat(10) @(posedge clk);  // Wait for any remaining outputs
        
        // Additional wait to ensure all results are captured
        while (result_idx < {num_tests}) begin
            @(posedge clk);
        end
        
        // Extra cycles for safety
        repeat(5) @(posedge clk);
        
        // Display results
        for (test_idx = 0; test_idx < {num_tests}; test_idx = test_idx + 1) begin
            $display("%04h", results[test_idx]);
        end
        
        $finish;
    end
    
    initial begin
        #{200 + num_tests * 100};
        $display("ERROR: Timeout");
        $finish;
    end
endmodule
'''
        
        # Write testbench
        with tempfile.NamedTemporaryFile(mode='w', suffix='.v', delete=False) as f:
            tb_file = f.name
            f.write(testbench)
        
        try:
            # Compile
            rtl_dir = os.path.abspath('rtl')
            top_file = os.path.join(rtl_dir, 'top_lmul.v')
            lmul_file = os.path.join(rtl_dir, 'lmul_bf16.v')
            out_file = '/tmp/lmul_batch_sim.out'
            
            compile_result = subprocess.run(
                ['iverilog', '-o', out_file, '-g2012',
                 top_file, lmul_file, tb_file],
                capture_output=True,
                text=True
            )
            
            if compile_result.returncode != 0:
                raise RuntimeError(f"Compilation failed:\n{compile_result.stderr}")
            
            # Run simulation
            # time this section
            
            start = time.time()
            # Always capture output to parse results, even if not verbose
            sim_result = subprocess.run(
                ['vvp', out_file],
                capture_output=True,
                text=True,
                timeout=10
            )
            end = time.time()
            
            if verbose:
                print(sim_result.stdout)
                            
            # Parse results
            lines = sim_result.stdout.strip().split('\n')
            results = []
            for line in lines:
                if line.startswith("ERROR"):
                    raise RuntimeError(f"Simulation error: {line}")
                try:
                    results.append(int(line, 16))
                except ValueError:
                    continue
            
            return results, end - start
            
        finally:
            # Cleanup
            if os.path.exists(tb_file):
                os.remove(tb_file)
            if os.path.exists(out_file):
                os.remove(out_file)

batch_tester = BatchLMULTester()
print("✓ Batch tester ready")