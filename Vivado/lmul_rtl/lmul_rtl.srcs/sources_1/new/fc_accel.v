module fc_accel #(
    parameter N  = 28,
    parameter M  = 128,
    parameter OUT = 10,
    parameter BF16_WIDTH = 16,
    parameter IMG_SIZE = N*N
)(
    input  wire clk,
    input  wire rstn,
    input  wire start,
    output reg  done
);

    // -----------------------------------
    // Memories (BRAM inferred)
    // -----------------------------------
    reg [15:0] input_image [0:IMG_SIZE-1];
    reg [15:0] fc1_weights [0:M*IMG_SIZE-1];
    reg [15:0] fc2_weights [0:OUT*M-1];
    reg [15:0] fc1_bias [0:M-1];
    reg [15:0] fc2_bias [0:OUT-1];

    reg [15:0] fc1_acc [0:M-1];
    reg [15:0] relu_out [0:M-1];
    reg [15:0] fc2_acc [0:OUT-1];

    // -----------------------------------
    // Memory initialization
    // -----------------------------------    
    initial begin
        $readmemh("test_x.mem", input_image);
        $readmemh("fc1_weights.mem", fc1_weights);
        $readmemh("fc2_weights.mem", fc2_weights);
        $readmemh("fc1_biases.mem", fc1_bias);
        $readmemh("fc2_biases.mem", fc2_bias);
    end

    // -----------------------------------
    // Multiplier
    // -----------------------------------
    reg  i_valid;
    wire i_ready;
    wire o_valid;
    reg  o_ready;
    reg  [15:0] i_a, i_b;
    wire [15:0] o_p;

    lmul_bf16 mul (
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

    // -----------------------------------
    // Adder
    // -----------------------------------
    reg  [15:0] sum_a, sum_b;
    wire [15:0] sum_out;

    bf16_adder add (
        .a(sum_a),
        .b(sum_b),
        .sum(sum_out)
    );

    // -----------------------------------
    // FSM
    // -----------------------------------
    localparam
        IDLE       = 0,
        FC1_INIT   = 1,
        FC1_MUL    = 2,
        FC1_WAIT   = 3,
        FC1_ADD    = 4,
        FC1_NEXT   = 5,
        FC1_BIAS   = 6,
        RELU       = 7,
        FC2_INIT   = 8,
        FC2_MUL    = 9,
        FC2_WAIT   = 10,
        FC2_ADD    = 11,
        FC2_NEXT   = 12,
        FC2_BIAS   = 13,
        DONE       = 14;

    reg [3:0] state;
    integer i, k;

    always @(posedge clk or negedge rstn) begin
        if (!rstn) begin
            state   <= IDLE;
            done    <= 0;
            i_valid <= 0;
            o_ready <= 1;
            i <= 0;
            k <= 0;
        end else begin
            case (state)

            IDLE: begin
                done <= 0;
                if (start) begin
                    i <= 0;
                    k <= 0;
                    state <= FC1_INIT;
                end
            end

            FC1_INIT: begin
                fc1_acc[k] <= 16'h0000;
                if (k == M-1) begin
                    k <= 0;
                    state <= FC1_MUL;
                end else
                    k <= k + 1;
            end

            FC1_MUL: begin
                if (i_ready) begin
                    i_a <= input_image[i];
                    i_b <= fc1_weights[k*IMG_SIZE + i];
                    i_valid <= 1;
                    state <= FC1_WAIT;
                end
            end

            FC1_WAIT: begin
                i_valid <= 0;
                if (o_valid)
                    state <= FC1_ADD;
            end

            FC1_ADD: begin
                sum_a <= fc1_acc[k];
                sum_b <= o_p;
                fc1_acc[k] <= sum_out;
                state <= FC1_NEXT;
            end

            FC1_NEXT: begin
                if (k == M-1) begin
                    k <= 0;
                    i <= i + 1;
                    if (i == IMG_SIZE-1)
                        state <= FC1_BIAS;
                    else
                        state <= FC1_MUL;
                end else begin
                    k <= k + 1;
                    state <= FC1_MUL;
                end
            end

            FC1_BIAS: begin
                sum_a <= fc1_acc[k];
                sum_b <= fc1_bias[k];
                fc1_acc[k] <= sum_out;
                if (k == M-1) begin
                    k <= 0;
                    state <= RELU;
                end else
                    k <= k + 1;
            end

            RELU: begin
                relu_out[k] <= fc1_acc[k][15] ? 16'h0000 : fc1_acc[k];
                if (k == M-1) begin
                    k <= 0;
                    i <= 0;
                    state <= FC2_INIT;
                end else
                    k <= k + 1;
            end

            FC2_INIT: begin
                fc2_acc[k] <= 16'h0000;
                if (k == OUT-1) begin
                    k <= 0;
                    state <= FC2_MUL;
                end else
                    k <= k + 1;
            end

            FC2_MUL: begin
                if (i_ready) begin
                    i_a <= relu_out[i];
                    i_b <= fc2_weights[k*M + i];
                    i_valid <= 1;
                    state <= FC2_WAIT;
                end
            end

            FC2_WAIT: begin
                i_valid <= 0;
                if (o_valid)
                    state <= FC2_ADD;
            end

            FC2_ADD: begin
                sum_a <= fc2_acc[k];
                sum_b <= o_p;
                fc2_acc[k] <= sum_out;
                state <= FC2_NEXT;
            end

            FC2_NEXT: begin
                if (k == OUT-1) begin
                    k <= 0;
                    i <= i + 1;
                    if (i == M-1)
                        state <= FC2_BIAS;
                    else
                        state <= FC2_MUL;
                end else begin
                    k <= k + 1;
                    state <= FC2_MUL;
                end
            end

            FC2_BIAS: begin
                sum_a <= fc2_acc[k];
                sum_b <= fc2_bias[k];
                fc2_acc[k] <= sum_out;
                if (k == OUT-1)
                    state <= DONE;
                else
                    k <= k + 1;
            end

            DONE: begin
                done <= 1;
            end

            endcase
        end
    end
endmodule