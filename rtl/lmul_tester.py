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

class BatchLMULTesterParallel:
    """Test LMUL with batch operations in single simulation, parallelized with 4 DUTs"""

    def __init__(self, verilog_file='rtl/top_lmul.v'):
        self.verilog_file = verilog_file

    def test_batch(self, test_pairs, verbose=True):
        """
        Test multiple multiplications in one simulation run with 4 DUTs in parallel.
        Args:
            test_pairs: List of (a_bf16, b_bf16) tuples
        Returns:
            List of result_bf16 values
        """
        num_tests = len(test_pairs)
        # Pad test_pairs to be multiple of 4
        pad = (4 - (num_tests % 4)) % 4
        test_pairs += [(0,0)] * pad  # pad with zeros
        total_ops = len(test_pairs)

        # Generate test vectors for 4 DUTs in parallel
        test_vectors = ""
        for i, (a, b) in enumerate(test_pairs):
            # For each cycle, we will assign 4 input pairs
            # but here, we prepare vectors for all input pairs
            test_vectors += f"        i_a[{i}] = 16'h{a:04x};\n"
            test_vectors += f"        i_b[{i}] = 16'h{b:04x};\n"

        # Create testbench
        testbench = f'''
`timescale 1ns/1ps

module tb;
    reg clk;
    reg rstn;
    reg [3:0] i_valid;     // 4 input valid signals
    wire [3:0] i_ready;    // 4 ready signals
    reg [15:0] i_a [0:{total_ops-1}];
    reg [15:0] i_b [0:{total_ops-1}];
    wire [3:0] o_valid;    // 4 output valid signals
    reg  [3:0] o_ready;    // 4 ready signals
    wire [15:0] o_p [0:{total_ops-1}];

    integer test_idx;
    integer result_idx;

    // Instantiate 4 DUTs
    // For simplicity, instantiate 4 copies with separate signals
    // Each DUT handles one input pair per cycle, synchronized

    // DUT 0
    lmul_bf16 #(
        .E_BITS(8),
        .M_BITS(7),
        .EM_BITS(15),
        .BITW(16)
    ) dut0 (
        .clk(clk),
        .rstn(rstn),
        .i_valid(i_valid[0]),
        .i_ready(i_ready[0]),
        .i_a(i_a[0]),
        .i_b(i_b[0]),
        .o_valid(o_valid[0]),
        .o_ready(o_ready[0]),
        .o_p(o_p[0])
    );

    // DUT 1
    lmul_bf16 #(
        .E_BITS(8),
        .M_BITS(7),
        .EM_BITS(15),
        .BITW(16)
    ) dut1 (
        .clk(clk),
        .rstn(rstn),
        .i_valid(i_valid[1]),
        .i_ready(i_ready[1]),
        .i_a(i_a[1]),
        .i_b(i_b[1]),
        .o_valid(o_valid[1]),
        .o_ready(o_ready[1]),
        .o_p(o_p[1])
    );

    // DUT 2
    lmul_bf16 #(
        .E_BITS(8),
        .M_BITS(7),
        .EM_BITS(15),
        .BITW(16)
    ) dut2 (
        .clk(clk),
        .rstn(rstn),
        .i_valid(i_valid[2]),
        .i_ready(i_ready[2]),
        .i_a(i_a[2]),
        .i_b(i_b[2]),
        .o_valid(o_valid[2]),
        .o_ready(o_ready[2]),
        .o_p(o_p[2])
    );

    // DUT 3
    lmul_bf16 #(
        .E_BITS(8),
        .M_BITS(7),
        .EM_BITS(15),
        .BITW(16)
    ) dut3 (
        .clk(clk),
        .rstn(rstn),
        .i_valid(i_valid[3]),
        .i_ready(i_ready[3]),
        .i_a(i_a[3]),
        .i_b(i_b[3]),
        .o_valid(o_valid[3]),
        .o_ready(o_ready[3]),
        .o_p(o_p[3])
    );

    // Clock generation
    initial clk = 0;
    always #5 clk = ~clk;  // 10ns period

    // Capture outputs
    always @(posedge clk) begin
        for (test_idx = 0; test_idx < {total_ops}; test_idx = test_idx + 1) begin
            // For each cycle, check if output valid
            if (o_valid[test_idx % 4] && o_ready[test_idx % 4]) begin
                // Store result
                // We need a way to store all results
                // But since we are focusing on core, we can store inline or in an array
                // For simplicity, assume we process after simulation
            end
        end
    end

    initial begin
        // Initialize test vectors
{test_vectors}
        
        // Reset
        rstn = 0;
        i_valid = 4'b0000;
        o_ready = 4'b1111;  // All ready
        for (test_idx = 0; test_idx < {total_ops}; test_idx = test_idx + 1) begin
            i_a[test_idx] = 16'h0000;
            i_b[test_idx] = 16'h0000;
        end
        test_idx = 0;
        result_idx = 0;
        
        repeat(4) @(posedge clk);
        rstn = 1;
        repeat(2) @(posedge clk);
        
        // Send input pairs in chunks of 4
        for (test_idx = 0; test_idx < {total_ops}; test_idx = test_idx + 4) begin
            // Set i_valid high for all 4 inputs
            i_valid = 4'b1111;
            // Assign inputs for 4 pairs
            for (int j=0; j<4; j++) begin
                if (test_idx + j < {total_ops}) begin
                    i_a[test_idx + j] = i_a[test_idx + j];
                    i_b[test_idx + j] = i_b[test_idx + j];
                end
            end
            @(posedge clk);
        end
        // Deassert valid
        i_valid = 4'b0000;

        // Wait for all results
        // Since outputs are produced asynchronously, wait until all are valid
        // For simplicity, wait fixed number of cycles
        repeat(20) @(posedge clk);

        // Print results
        for (test_idx = 0; test_idx < {total_ops}; test_idx = test_idx + 1) begin
            $display("%04h", o_p[test_idx]);
        end

        $finish;
    end

    initial begin
        #1000;
        $display("ERROR: Timeout");
        $finish;
    end
endmodule
'''
        # Note: The above is a schematic; the main idea is to instantiate 4 DUTs, feed 4 inputs per cycle, and collect 4 outputs.

        # Write testbench
        with tempfile.NamedTemporaryFile(mode='w', suffix='.v', delete=False) as f:
            tb_file = f.name
            f.write(testbench)

        try:
            # Compile
            rtl_dir = os.path.abspath('rtl')
            top_file = os.path.join(rtl_dir, 'top_lmul.v')
            lmul_file = os.path.join(rtl_dir, 'lmul_bf16.v')
            out_file = os.path.join(tempfile.gettempdir(), 'lmul_parallel_sim.out')

            compile_result = subprocess.run(
                ['iverilog', '-o', out_file, '-g2012',
                 top_file, lmul_file, tb_file],
                capture_output=True,
                text=True
            )

            if compile_result.returncode != 0:
                raise RuntimeError(f"Compilation failed:\n{compile_result.stderr}")

            # Run simulation
            start = time.time()
            sim_result = subprocess.run(
                ['vvp', out_file],
                capture_output=True,
                text=True,
                timeout=10
            )
            end = time.time()

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

# TEST CODE FOR PIPELINED LMUL HARDWARE TEST

# class BatchLMULTester:
#     """Test LMUL with batch operations in single simulation"""
    
#     def __init__(self, verilog_file='rtl/top_lmul.v'):
#         self.verilog_file = verilog_file
        
#     def test_batch(self, test_pairs, pipeline_depth=16, verbose=True):
#         """
#         Test multiple multiplications in one pipelined simulation run.
        
#         Args:
#             test_pairs: List of (a_bf16, b_bf16) tuples
#             pipeline_depth: Number of operations processed concurrently
#         Returns:
#             List of result_bf16 values
#         """
#         num_tests = len(test_pairs)
#         max_inflight = pipeline_depth
#         total_cycles = num_tests + max_inflight  # For pipeline to drain
        
#         # Generate test vectors
#         test_vectors = ""
#         for i, (a, b) in enumerate(test_pairs):
#             test_vectors += f"        test_a[{i}] = 16'h{a:04x};\n"
#             test_vectors += f"        test_b[{i}] = 16'h{b:04x};\n"

#         # Create pipelined testbench
#         testbench = f'''
#     `timescale 1ns/1ps

#     module tb;
#         reg clk;
#         reg rstn;
#         reg i_valid;
#         wire i_ready;
#         reg [15:0] i_a;
#         reg [15:0] i_b;
#         wire o_valid;
#         reg o_ready;
#         wire [15:0] o_p;
        
#         // Test vectors
#         reg [15:0] test_a [0:{num_tests + pipeline_depth -1}];
#         reg [15:0] test_b [0:{num_tests + pipeline_depth -1}];
#         reg [15:0] results [0:{num_tests -1}];
#         integer i;
#         integer result_count;
        
#         // Instantiate DUT
#         top_lmul dut (
#             .clk(clk),
#             .rstn(rstn),
#             .i_valid(i_valid),
#             .i_ready(i_ready),
#             .i_a(i_a),
#             .i_b(i_b),
#             .o_valid(o_valid),
#             .o_ready(o_ready),
#             .o_p(o_p)
#         );
        
#         // Clock generation
#         initial clk = 0;
#         always #5 clk = ~clk;  // 10ns period
        
#         reg [15:0] a_queue [0:{num_tests + pipeline_depth -1}];
#         reg [15:0] b_queue [0:{num_tests + pipeline_depth -1}];

#         initial begin
#             // Initialize test vectors
#     {test_vectors}
#         end
        
#         // Apply inputs in a pipelined manner
#         initial begin
#             rstn = 0;
#             i_valid = 0;
#             i_a = 0;
#             i_b = 0;
#             o_ready = 1; // Always ready to accept output
#             result_count = 0;
#             repeat(4) @(posedge clk);
#             rstn = 1;
#             repeat(2) @(posedge clk);

#             // Feed the pipeline
#             for (i = 0; i < {num_tests + pipeline_depth}; i = i + 1) begin
#                 @(posedge clk);
#                 // Apply new input if within test range
#                 if (i < {num_tests}) begin
#                     // Wait until ready
#                     while (!i_ready) @(posedge clk);
#                     i_a <= test_a[i];
#                     i_b <= test_b[i];
#                     i_valid <= 1;
#                 end else begin
#                     // No new input, deassert valid
#                     i_valid <= 0;
#                 end
#             end

#             // Finish applying inputs
#             i_valid = 0;

#             // Collect results as they come
#             while (result_count < {num_tests}) begin
#                 @(posedge clk);
#                 if (o_valid && o_ready) begin
#                     results[result_count] = o_p;
#                     result_count = result_count + 1;
#                 end
#             end

#             // Wait for pipeline to drain
#             repeat({pipeline_depth}) @(posedge clk);
#             $display("Results:");
#             for (i = 0; i < {num_tests}; i = i + 1) begin
#                 $display("%04h", results[i]);
#             end
#             $finish;
#         end

#         initial begin
#             #{200 + num_tests * 100};
#             $display("ERROR: Timeout");
#             $finish;
#         end
#     endmodule
#     '''
        
#         # Write testbench
#         with tempfile.NamedTemporaryFile(mode='w', suffix='.v', delete=False) as f:
#             tb_file = f.name
#             f.write(testbench)
        
#         try:
#             # Compile
#             rtl_dir = os.path.abspath('rtl')
#             top_file = os.path.join(rtl_dir, 'top_lmul.v')
#             lmul_file = os.path.join(rtl_dir, 'lmul_bf16.v')
#             out_file = os.path.join(tempfile.gettempdir(), 'lmul_batch_sim.out')
            
#             compile_result = subprocess.run(
#                 ['iverilog', '-o', out_file, '-g2012',
#                  top_file, lmul_file, tb_file],
#                 capture_output=True,
#                 text=True
#             )
            
#             if compile_result.returncode != 0:
#                 raise RuntimeError(f"Compilation failed:\n{compile_result.stderr}")
            
#             # Run simulation
#             # time this section
            
#             start = end = sim_result = None
#             if not verbose:
#                 with open(os.devnull, "w") as devnull:
#                     start = time.time()
#                     subprocess.run(['vvp', out_file], stdout=devnull, stderr=devnull)
#                     end = time.time()
#                 return [], end - start

#             start = time.time()
#             sim_result = subprocess.run(
#                 ['vvp', out_file],
#                 capture_output=True,
#                 text=True,
#                 timeout=10
#             )
#             end = time.time()
                            
#             # Parse results
#             lines = sim_result.stdout.strip().split('\n')
#             results = []
#             for line in lines:
#                 if line.startswith("ERROR"):
#                     raise RuntimeError(f"Simulation error: {line}")
#                 try:
#                     results.append(int(line, 16))
#                 except ValueError:
#                     continue
            
#             return results, end - start
            
#         finally:
#             # Cleanup
#             if os.path.exists(tb_file):
#                 os.remove(tb_file)
#             if os.path.exists(out_file):
#                 os.remove(out_file)
