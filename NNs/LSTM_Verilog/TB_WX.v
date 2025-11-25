`timescale 1ns/1ps
module TB_WX;
    parameter ROWS = 10;
    parameter COLS = 10; // 100 multiplies

    reg clk;
    initial clk = 0;
    always #5 clk = ~clk; // 100 MHz

    reg [15:0] W_mem [0:ROWS*COLS-1];
    reg [15:0] x_mem [0:COLS-1];
    reg [31:0] fp32prod_mem [0:ROWS*COLS-1];

    reg [31:0] sum_mem_lmul [0:ROWS-1];
    reg [31:32] sum_mem_fp32 [0:ROWS-1];

    reg [63:0] global_cycles;
    reg [63:0] start_cycle;
    reg [63:0] end_cycle;

    real t_start_sim, t_end_sim;   // simulated time
    real t_start_host, t_end_host; // host wall-clock timestamps

    integer i, j;

    // LMUL instance
    reg start_lmul;
    wire ready_lmul;
    reg [15:0] a_in, b_in;
    wire [31:0] out_bits_lmul;

    LMUL_unit lmul0(
        .clk(clk),
        .start(start_lmul),
        .a(a_in),
        .b(b_in),
        .ready(ready_lmul),
        .out_bits(out_bits_lmul)
    );
    // FP32 instance
    // instantiate IP that reads precomputed products mem and pipelines them
    reg fp32_start;
    wire fp32_ready;
    reg [31:0] fp32_idx;
    wire [31:0] fp32_out_bits;
    
    FP32 #(.LATENCY(4), .MEM_DEPTH(80000)) fp32u (
        .clk(clk),
        .start(fp32_start),
        .idx(fp32_idx),
        .ready(fp32_ready),
        .out_bits(fp32_out_bits)
    );


    
    integer fout;

    initial begin
        $display("TB starting...");

        // ----- Host wall time start -----
        t_start_host = $realtime;

        // Load memory
        $readmemh("W_bf16.txt", W_mem);
        $readmemh("x_bf16.txt", x_mem);
        $readmemh("fp32_products.txt", fp32u.prod_mem);
        // Zero sums
        for (i=0; i<ROWS; i=i+1) begin
            sum_mem_lmul[i] = 0;
            sum_mem_fp32[i] = 0;
        end

        // ---------- LMUL run ----------
        global_cycles = 0;
        @(posedge clk);
        start_cycle = global_cycles;

        t_start_sim = $realtime; // simulated-time start

        for (i=0; i<ROWS; i=i+1) begin
            reg [31:0] accum; accum = 0;
            for (j=0; j<COLS; j=j+1) begin
                a_in = W_mem[i*COLS + j];
                b_in = x_mem[j];
                start_lmul = 1;
                @(posedge clk);
                start_lmul = 0;

                wait (ready_lmul == 1);
                accum = accum + out_bits_lmul;
            end
            sum_mem_lmul[i] = accum;
        end

        t_end_sim = $realtime; // simulated-time end
        end_cycle = global_cycles;

        $display("LMUL_cycles   = %0d", end_cycle - start_cycle);
        $display("LMUL sim-time = %0.3f ns", t_end_sim - t_start_sim);

        // ---------- FP32 run ----------
        @(posedge clk);
        start_cycle = global_cycles;
        t_start_sim = $realtime;
        
        for (i=0; i<ROWS; i=i+1) begin
            reg [31:0] accum2;
            accum2 = 0;
        
            for (j=0; j<COLS; j=j+1) begin
                fp32_idx = i*COLS + j;   // address of product
                fp32_start = 1;
                @(posedge clk);
                fp32_start = 0;
        
                // wait for pipeline latency
                wait(fp32_ready == 1);
        
                accum2 = accum2 + fp32_out_bits;
            end
        
            sum_mem_fp32[i] = accum2;
        end
        
        $display("FP32_cycles %0d (for %0d multiplications)",
                 end_cycle - start_cycle, ROWS*COLS);

        t_end_sim = $realtime;
        end_cycle = global_cycles;

        $display("FP32_cycles   = %0d", end_cycle - start_cycle);
        $display("FP32 sim-time = %0.3f ns", t_end_sim - t_start_sim);

        // ----- Host wall time end -----
        t_end_host = $realtime;

        $display("Total real host time (sim wall time) ~ %0.3f ms",
                 (t_end_host - t_start_host) / 1e6);

        // Write checksums
        fout = $fopen("verilog_checksums.txt","w");
        for (i=0; i<ROWS; i=i+1) begin
            $fwrite(fout, "%08x %08x\n", sum_mem_lmul[i], sum_mem_fp32[i]);
        end
        $fclose(fout);

        $finish;
    end

    always @(posedge clk)
        global_cycles <= global_cycles + 1;

endmodule
