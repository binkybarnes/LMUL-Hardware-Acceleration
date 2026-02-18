// ---------------------------------------------
// Main computation (FIXED)
// ---------------------------------------------
reg [BF16_WIDTH-1:0] mul_result;

initial begin
    @(posedge rstn);

    f_out = $fopen("results.mem", "w");
    if (f_out == 0) begin
        $display("ERROR: cannot open results.mem");
        $finish;
    end

    for (img = 0; img < NUM_IMAGES; img = img + 1) begin
        img_base = img * IMG_SIZE;

        // -----------------------------
        // FC1 = Linear(784 → 128)
        // -----------------------------
        for (k = 0; k < M; k = k + 1)
            fc1_acc[k] = 16'h0000;

        for (i = 0; i < IMG_SIZE; i = i + 1) begin
            for (k = 0; k < M; k = k + 1) begin

                // handshake launch
                @(posedge clk);
                while (!i_ready) @(posedge clk);

                i_a     <= input_image[img_base + i];
                i_b     <= fc1_weights[k][i];
                i_valid <= 1'b1;

                @(posedge clk);
                i_valid <= 1'b0;

                // wait for product
                while (!o_valid) @(posedge clk);
                mul_result = o_p;   // register output

                // accumulate
                sum_in_a = fc1_acc[k];
                sum_in_b = mul_result;
                @(posedge clk);
                fc1_acc[k] = sum_out;
            end
        end

        // -----------------------------
        // Add FC1 bias
        // -----------------------------
        for (k = 0; k < M; k = k + 1) begin
            sum_in_a = fc1_acc[k];
            sum_in_b = fc1_bias[k];
            @(posedge clk);
            fc1_acc[k] = sum_out;
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
                mul_result = o_p;

                sum_in_a = fc2_acc[k];
                sum_in_b = mul_result;
                @(posedge clk);
                fc2_acc[k] = sum_out;
            end
        end

        // -----------------------------
        // Add FC2 bias
        // -----------------------------
        for (k = 0; k < OUT; k = k + 1) begin
            sum_in_a = fc2_acc[k];
            sum_in_b = fc2_bias[k];
            @(posedge clk);
            fc2_acc[k] = sum_out;
        end

        // -----------------------------
        // Write logits
        // -----------------------------
        for (k = 0; k < OUT; k = k + 1)
            $fwrite(f_out, "%04h\n", fc2_acc[k]);

        $display("Image %0d done", img);
    end

    $fclose(f_out);
    $display("Inference complete for %0d images", NUM_IMAGES);
    $finish;
end
