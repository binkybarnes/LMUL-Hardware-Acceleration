`timescale 1ns / 1ps
module tb_lmul;

    // ---------------------------------------------
    // Parameters
    // ---------------------------------------------
    parameter NUM_IMAGES = 1000; 
    parameter N = 28;
    parameter M = 128;
    parameter IMG_SIZE = N*N;
    parameter OUT = 10;
    parameter BF16_WIDTH = 16;

    // ---------------------------------------------
    // Clock / Reset
    // ---------------------------------------------
    reg clk;
    reg rstn;

    // ---------------------------------------------
    // Multiplier inputs / outputs
    // ---------------------------------------------
    reg  [BF16_WIDTH-1:0] i_a;
    reg  [BF16_WIDTH-1:0] i_b;
    wire [BF16_WIDTH-1:0] o_p;
    
    reg  i_valid;
    wire i_ready;
    wire o_valid;
    reg  o_ready;

    lmul_bf16 dut (
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

    // ---------------------------------------------
    // BF16 adder
    // ---------------------------------------------
    reg  [BF16_WIDTH-1:0] sum_in_a, sum_in_b;
    wire [BF16_WIDTH-1:0] sum_out;

    bf16_adder adder (
        .a(sum_in_a),
        .b(sum_in_b),
        .sum(sum_out)
    );

    // ---------------------------------------------
    // Memories
    // ---------------------------------------------
    reg [BF16_WIDTH-1:0] input_image [0:NUM_IMAGES*IMG_SIZE-1];
    reg [BF16_WIDTH-1:0] fc1_weights [0:M-1][0:N*N-1];
    reg [BF16_WIDTH-1:0] fc2_weights [0:OUT-1][0:M-1];
    reg [BF16_WIDTH-1:0] fc1_bias [0:M-1];
    reg [BF16_WIDTH-1:0] fc2_bias [0:OUT-1];

    // ---------------------------------------------
    // Accumulators
    // ---------------------------------------------
    reg [BF16_WIDTH-1:0] fc1_acc [0:M-1];
    reg [BF16_WIDTH-1:0] relu_out [0:M-1];
    reg [BF16_WIDTH-1:0] fc2_acc [0:OUT-1];

    // ---------------------------------------------
    // File handles
    // ---------------------------------------------
    integer f_img, f_fc1, f_fc2, f_out;
    integer r;
    integer i, k;
    reg [15:0] word_buf;    
    
    // ---------------------------------------------
    // Image handles
    // ---------------------------------------------
    integer img;
    integer img_base;
    
    // ---------------------------------------------
    // Clock generation
    // ---------------------------------------------
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // ---------------------------------------------
    // Reset
    // ---------------------------------------------
    initial begin
        rstn    = 0;
        i_valid = 0;
        o_ready = 1;
        #20 rstn = 1;
    end

    // ---------------------------------------------
    // Load input image
    // ---------------------------------------------
    initial begin
        f_img = $fopen("test_x.mem", "r");
        if (f_img == 0) begin
            $display("ERROR: cannot open test images");
            $finish;
        end
        for (i = 0; i < NUM_IMAGES*IMG_SIZE; i = i + 1) begin
            r = $fscanf(f_img, "%h", word_buf);
            if (r != 1) begin
                $display("ERROR reading image at %0d", i);
                $finish;
            end
            input_image[i] = word_buf;
        end
        $fclose(f_img);
    end

    // ---------------------------------------------
    // Load FC1 weights
    // ---------------------------------------------
    initial begin
        f_fc1 = $fopen("fc1_weights.mem", "r");
        if (f_fc1 == 0) begin
            $display("ERROR: cannot open fc1_weights.mem");
            $finish;
        end
        for (k = 0; k < M; k = k + 1)
            for (i = 0; i < N*N; i = i + 1) begin
                r = $fscanf(f_fc1, "%h", word_buf);
                if (r != 1) begin
                    $display("ERROR reading fc1 weight %0d %0d", k, i);
                    $finish;
                end
                fc1_weights[k][i] = word_buf;
            end
        $fclose(f_fc1);
    end

    // ---------------------------------------------
    // Load FC2 weights
    // ---------------------------------------------
    initial begin
        f_fc2 = $fopen("fc2_weights.mem", "r");
        if (f_fc2 == 0) begin
            $display("ERROR: cannot open fc2_weights.mem");
            $finish;
        end
        for (k = 0; k < OUT; k = k + 1)
            for (i = 0; i < M; i = i + 1) begin
                r = $fscanf(f_fc2, "%h", word_buf);
                if (r != 1) begin
                    $display("ERROR reading fc2 weight %0d %0d", k, i);
                    $finish;
                end
                fc2_weights[k][i] = word_buf;
            end
        $fclose(f_fc2);
    end
    
    // ---------------------------------------------
    // Load FC1 biases
    // ---------------------------------------------
    initial begin
        f_fc1 = $fopen("fc1_biases.mem", "r");
        if (f_fc1 == 0) begin
            $display("ERROR: cannot open fc1_biases.mem");
            $finish;
        end
    
        for (k = 0; k < M; k = k + 1) begin
            r = $fscanf(f_fc1, "%h", word_buf);
            if (r != 1) begin
                $display("ERROR reading fc1 bias %0d", k);
                $finish;
            end
            fc1_bias[k] = word_buf;
        end
        $fclose(f_fc1);
    end
    
    // ---------------------------------------------
    // Load FC2 biases
    // ---------------------------------------------
    initial begin
        f_fc2 = $fopen("fc2_biases.mem", "r");
        if (f_fc2 == 0) begin
            $display("ERROR: cannot open fc2_biases.mem");
            $finish;
        end
    
        for (k = 0; k < OUT; k = k + 1) begin
            r = $fscanf(f_fc2, "%h", word_buf);
            if (r != 1) begin
                $display("ERROR reading fc2 bias %0d", k);
                $finish;
            end
            fc2_bias[k] = word_buf;
        end
        $fclose(f_fc2);
    end

    // ---------------------------------------------
    // Main computation
    // ---------------------------------------------
    initial begin
        @(posedge rstn);
    
        f_out = $fopen("results.mem", "w");
        if (f_out == 0) begin
            $display("ERROR: cannot open results.mem");
            $finish;
        end
    
        // ---------------------------------------------
        // Loop over images
        // ---------------------------------------------
        for (img = 0; img < NUM_IMAGES; img = img + 1) begin
            img_base = img * IMG_SIZE;
    
            // -----------------------------
            // FC1 = Linear(784 → 128)
            // -----------------------------
            for (k = 0; k < M; k = k + 1)
                fc1_acc[k] = 16'h0000;
    
            for (i = 0; i < IMG_SIZE; i = i + 1) begin
                for (k = 0; k < M; k = k + 1) begin
            
                    // Launch multiply
                    while (!i_ready) @(posedge clk);
            
                    i_a     <= input_image[img_base + i];
                    i_b     <= fc1_weights[k][i];
                    i_valid <= 1'b1;
            
                    @(posedge clk); // This can be changed to #10
                    i_valid <= 1'b0;
            
                    // Wait for result
                    while (!o_valid) @(posedge clk);
            
                    sum_in_a = fc1_acc[k];
                    sum_in_b = o_p;
                    #1 fc1_acc[k] = sum_out;
                end
            end
 
            // -----------------------------
            // Add FC1 bias
            // -----------------------------
            for (k = 0; k < M; k = k + 1) begin
                sum_in_a = fc1_acc[k];
                sum_in_b = fc1_bias[k];
                #1 fc1_acc[k] = sum_out;
            end
    
            // -----------------------------
            // ReLU
            // -----------------------------
            for (k = 0; k < M; k = k + 1)
                relu_out[k] = fc1_acc[k][15] ? 16'h0000 : fc1_acc[k];
    
            // -----------------------------
            // FC2 = Linear(128 → 10)
            // -----------------------------
            for (k = 0; k < OUT; k = k + 1)
                fc2_acc[k] = 16'h0000;
    
            for (i = 0; i < M; i = i + 1) begin
                for (k = 0; k < OUT; k = k + 1) begin
            
                    @(posedge clk);
                    while (!i_ready) @(posedge clk);
            
                    i_a     <= relu_out[i];
                    i_b     <= fc2_weights[k][i];
                    i_valid <= 1'b1;
            
                    @(posedge clk);
                    i_valid <= 1'b0;
            
                    while (!o_valid) @(posedge clk);
            
                    sum_in_a = fc2_acc[k];
                    sum_in_b = o_p;
                    #1 fc2_acc[k] = sum_out;
                end
            end

            // -----------------------------
            // Add FC2 bias
            // -----------------------------
            for (k = 0; k < OUT; k = k + 1) begin
                sum_in_a = fc2_acc[k];
                sum_in_b = fc2_bias[k];
                #1 fc2_acc[k] = sum_out;
            end
            
            // -----------------------------
            // Write logits for this image
            // -----------------------------
            for (k = 0; k < OUT; k = k + 1)
                $fwrite(f_out, "%04h\n", fc2_acc[k]);
    
            $display("Image %0d done", img);
        end
        
        $fclose(f_out);
        $display("Inference complete for %0d images", NUM_IMAGES);
        $finish;
    end

endmodule
