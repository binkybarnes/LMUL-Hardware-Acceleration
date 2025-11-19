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
        
    def test_batch(self, test_pairs):
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

            // Performance counters
            reg [63:0] cycle;
            reg [63:0] first_accept_cycle;
            reg [63:0] last_output_cycle;
            reg        started;
            
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
            always #5 clk = ~clk;  // 10ns period (100 MHz nominal)

            // Global cycle counter with reset:
            // counts cycles from the moment reset is deasserted
            always @(posedge clk or negedge rstn) begin
                if (!rstn) begin
                    cycle <= 0;
                end else begin
                    cycle <= cycle + 1;
                end
            end
            
            // Capture outputs and track last output cycle
            always @(posedge clk) begin
                if (o_valid && o_ready) begin
                    results[result_idx] = o_p;
                    result_idx          = result_idx + 1;
                    last_output_cycle   = cycle;
                end
            end
            
            initial begin
                // Initialize test vectors
        {test_vectors}
                
                // Reset and init state
                rstn  = 0;
                i_valid = 0;
                i_a   = 0;
                i_b   = 0;
                o_ready = 1;  // Always ready to accept outputs
                test_idx  = 0;
                result_idx = 0;

                // Init perf counters
                cycle             = 0;
                first_accept_cycle = 0;
                last_output_cycle  = 0;
                started            = 0;
                
                // Apply reset (minimal but safe)
                repeat(2) @(posedge clk);
                rstn = 1;
                repeat(1) @(posedge clk);
                
                // Drive all test vectors
                for (test_idx = 0; test_idx < {num_tests}; test_idx = test_idx + 1) begin
                    // Wait for ready (0 cycles if DUT is always ready)
                    while (!i_ready) @(posedge clk);
                    
                    // Apply inputs and assert valid for one cycle
                    i_a     = test_a[test_idx];
                    i_b     = test_b[test_idx];
                    i_valid = 1;

                    // Record first accept cycle at first handshake
                    if (!started && i_ready) begin
                        started            = 1;
                        first_accept_cycle = cycle;
                    end
                    
                    // Advance one clock so DUT samples this transaction
                    @(posedge clk);

                    // Deassert valid before next transaction
                    i_valid = 0;
                end
                
                // Wait until all results are captured
                while (result_idx < {num_tests}) begin
                    @(posedge clk);
                end
                
                // Display results (hex outputs)
                for (test_idx = 0; test_idx < {num_tests}; test_idx = test_idx + 1) begin
                    $display("%04h", results[test_idx]);
                end

                // Display cycle window between first accepted input and last output
                $display("CYCLES_WINDOW=%0d", last_output_cycle - first_accept_cycle + 1);

                // Display total cycles since reset deassertion (overall runtime in cycles)
                $display("TOTAL_CYCLES=%0d", cycle);
                
                $finish;
            end
            
            // Timeout guard (very generous, but only used if DUT hangs)
            initial begin
                #{200000 + num_tests * 1000};
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
            start = end = sim_result = None

            start = time.time()
            sim_result = subprocess.run(
                ['vvp', out_file],
                capture_output=True,
                text=True,
                timeout=10
            )
            end = time.time()

            # print(sim_result.stdout)
                            
            lines = sim_result.stdout.strip().split('\n')
            results = []
            cycles_window = None
            total_cycles = None

            for line in lines:
                if line.startswith("ERROR"):
                    raise RuntimeError(f"Simulation error: {line}")
                if line.startswith("CYCLES_WINDOW="):
                    cycles_window = int(line.split("=", 1)[1])
                    continue
                if line.startswith("TOTAL_CYCLES="):
                    total_cycles = int(line.split("=", 1)[1])
                    continue
                try:
                    results.append(int(line, 16))
                except ValueError:
                    continue

            return results, end - start, cycles_window, total_cycles
            
        finally:
            # Cleanup
            if os.path.exists(tb_file):
                os.remove(tb_file)
            if os.path.exists(out_file):
                os.remove(out_file)