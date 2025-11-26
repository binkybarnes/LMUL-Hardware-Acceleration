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
            // Since o_ready is always 1, o_valid is high for exactly one cycle per result
            // Use edge detection to ensure we capture each result exactly once
            // Only capture after we've started applying inputs (to avoid capturing reset state)
            reg o_valid_prev;
            reg inputs_started;
            initial begin
                o_valid_prev = 0;
                inputs_started = 0;
            end
            always @(posedge clk) begin
                if (!rstn) begin
                    o_valid_prev <= 1'b0;
                    inputs_started <= 1'b0;
                end else begin
                    // Capture on rising edge of o_valid to avoid duplicate captures
                    // Only capture after inputs have started (prevents capturing reset state 0)
                    if (inputs_started && o_valid && o_ready && !o_valid_prev && result_idx < {num_tests}) begin
                        results[result_idx] = o_p;
                        result_idx          = result_idx + 1;
                        last_output_cycle   = cycle;
                    end
                    o_valid_prev <= o_valid;
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
                repeat(2) @(posedge clk);  // Wait a bit longer after reset
                
                // Drive all test vectors
                for (test_idx = 0; test_idx < {num_tests}; test_idx = test_idx + 1) begin
                    // Wait for ready (0 cycles if DUT is always ready)
                    while (!i_ready) @(posedge clk);
                    
                    // Apply inputs and assert valid
                    i_a     = test_a[test_idx];
                    i_b     = test_b[test_idx];
                    #1;  // Small delay to ensure inputs are stable
                    i_valid = 1;

                    // Record first accept cycle at first handshake
                    if (!started && i_ready) begin
                        started            = 1;
                        first_accept_cycle = cycle;
                        inputs_started     = 1;  // Enable result capture
                    end
                    
                    // Advance one clock so DUT samples this transaction
                    @(posedge clk);
                    
                    // Wait one more cycle for result to appear (DUT has 1-cycle latency)
                    @(posedge clk);

                    // Deassert valid before next transaction
                    i_valid = 0;
                end
                
                // Wait a few cycles for the last input to propagate through the pipeline
                repeat(5) @(posedge clk);
                
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
            out_file = os.path.join(tempfile.gettempdir(), 'lmul_batch_sim.out')
            
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
    """Test LMUL with batch operations in a parallelized manner with multiple DUTs"""
    def init(self, verilog_file='rtl/top_lmul.v'):
        self.verilog_file = verilog_file

    def test_batch(self, test_pairs, degrees=4, verbose=True):
        """
        Test multiple multiplications in one simulation run with parallel DUTs.
        
        Args:
            test_pairs: List of (a_bf16, b_bf16) tuples
            degrees: Integer number of degrees of parallelism, defaults to 4
            
        Returns:
            List of result_bf16 values
        """
        num_tests = len(test_pairs)
        # Pad test_pairs to be a multiple of degrees
        pad = (degrees - (num_tests % degrees)) % degrees
        test_pairs += [(0, 0)] * pad  # pad with zeros
        total_ops = len(test_pairs)
        
        # Prepare test vectors for input signals
        test_vectors = ""
        for i in range(total_ops):
            a_val, b_val = test_pairs[i]
            test_vectors += f"        i_a[{i}] = 16'h{a_val:04x};\n"
            test_vectors += f"        i_b[{i}] = 16'h{b_val:04x};\n"
        
        # Create testbench
        testbench = f'''
`timescale 1ns/1ps

module tb;
    reg clk;
    reg rstn;
    reg [{degrees - 1}:0] i_valid;          // input valid signals array
    wire [{degrees - 1}:0] i_ready;         // input ready signals array
    reg [15:0] i_a [0:{total_ops-1}];
    reg [15:0] i_b [0:{total_ops-1}];
    wire [{degrees - 1}:0] o_valid;         // output valid signals array
    reg  [{degrees - 1}:0] o_ready;         // output ready signals array
    wire [15:0] o_p [{degrees - 1}:0]; 
    reg [15:0] results [0:{total_ops-1}];   // Array to save results

    // Additional vars for parallel junction handling
    integer result_count;
    integer current_index;
    integer j;
    integer idx;

    // Instantiate multiple DUTs in a generate loop
    genvar i;
    for (i=0; i<{degrees}; i=i+1) begin : dut_array
        lmul_bf16 #(.E_BITS(8), .M_BITS(7), .EM_BITS(15), .BITW(16)) dut (
            .clk(clk),
            .rstn(rstn),
            .i_valid(i_valid[i]),
            .i_ready(i_ready[i]),
            .i_a(i_a[i]),
            .i_b(i_b[i]),
            .o_valid(o_valid[i]),
            .o_ready(o_ready[i]),
            .o_p(o_p[i])
        );
    end

    // Clock generation
    initial clk = 0;
    always #5 clk = ~clk;  // 10ns period

    // Capture outputs
    always @(posedge clk) begin
        for (j=0; j<{degrees}; j=j+1) begin
            if (o_valid[j] && o_ready[j]) begin
                results[result_count] = o_p[j];
                result_count = result_count + 1;
            end
        end
    end

    initial begin
        // Initialize test vectors
        {test_vectors}

        // Reset
        rstn = 0;
        i_valid = {degrees}'b0000;  // array of states for each DUT
        o_ready = {degrees}'b1111;  // All ready to accept outputs
        result_count = 0;
        current_index = 0;

        repeat({degrees}) @(posedge clk);  // Wait for reset to settle
        rstn = 1;  // Release reset

        // Drive input pairs in parallel in chunks of 'degrees'
        while (current_index < {total_ops}) begin
            // Set input valid signals high
            i_valid = {degrees}'b1111;

            // Assign input signals for current batch
            for (j=0; j<{degrees}; j=j+1) begin
                idx = current_index + j;
                if (idx < {total_ops}) begin
                    i_a[j] = i_a[idx];
                    i_b[j] = i_b[idx];
                end
            end

            @(posedge clk);  // Wait for a clock cycle to latch inputs

            // Move to next batch
            current_index = current_index + {degrees};
        end

        // Deassert valid signals after all inputs are driven
        i_valid = {degrees}'b0000;

        // Wait until all results are captured
        wait (result_count >= {num_tests});
        // Print results
        for (j=0; j<{num_tests}; j=j+1) begin
            $display("%04h", results[j]);
        end

        // Finish simulation
        $finish;
    end

    initial begin
        #{num_tests * 30};  // Timeout duration
        $display("ERROR: Timeout");
        $finish;
    end
endmodule
'''

        # Write testbench to temporary file
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
            start_time = time.time()
            sim_result = subprocess.run(
                ['vvp', out_file],
                capture_output=True,
                text=True,
                timeout=20
            )
            end_time = time.time()

            # Parse stdout for results
            lines = sim_result.stdout.strip().split('\n')
            results = []
            for line in lines:
                if line.startswith("ERROR"):
                    raise RuntimeError(f"Simulation error: {line}")
                try:
                    results.append(int(line, 16))
                except ValueError:
                    continue

            # Return results and timing
            return results[:num_tests], end_time - start_time  # only return the original test size
        finally:
            # Cleanup temp files
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
