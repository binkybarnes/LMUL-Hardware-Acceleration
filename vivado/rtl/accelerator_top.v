// vivado/rtl/accelerator_top.v
// Full System Accelerator with Pipeline
// This is a prototype to understand the pipeline behavior

`timescale 1ns/1ps

module accelerator_top #(
    parameter PE_ROWS = 4,
    parameter PE_COLS = 4,
    parameter DATA_WIDTH = 16,
    parameter USE_LMUL = 1,        // 1 = L-Mul, 0 = IEEE BF16
    parameter BUFFER_DEPTH = 1024,
    parameter ADDR_WIDTH = 10        // $clog2(BUFFER_DEPTH)
)(
    input  wire clk,
    input  wire rstn,
    
    // Host Interface (Simple - can be upgraded to AXI later)
    input  wire                    host_start,
    output reg                     host_done,
    input  wire [ADDR_WIDTH-1:0]   host_addr,
    input  wire [DATA_WIDTH-1:0]   host_wdata,
    input  wire                    host_we,
    output wire [DATA_WIDTH-1:0]   host_rdata,
    
    // Control
    input  wire [15:0] matrix_size,  // Size of matrix to multiply
    output wire [31:0] cycle_count   // Performance counter
);

    // ============================================
    // Pipeline Stage 1: Memory Read
    // ============================================
    reg [ADDR_WIDTH-1:0] rd_addr_act, rd_addr_weight;
    reg rd_en_act, rd_en_weight;
    wire [DATA_WIDTH-1:0] rd_data_act, rd_data_weight;
    reg [DATA_WIDTH-1:0] rd_data_act_reg, rd_data_weight_reg;
    reg stage1_valid;
    
    // ============================================
    // Pipeline Stage 2: Data Distribution
    // ============================================
    reg [PE_ROWS-1:0][DATA_WIDTH-1:0] stage2_activations;
    reg [PE_COLS-1:0][DATA_WIDTH-1:0] stage2_weights;
    reg stage2_valid;
    
    // ============================================
    // Pipeline Stage 3: PE Array Compute
    // ============================================
    wire [PE_ROWS-1:0][PE_COLS-1:0][DATA_WIDTH-1:0] pe_products;
    wire pe_valid;
    reg [PE_ROWS-1:0][PE_COLS-1:0][DATA_WIDTH-1:0] pe_products_reg;
    reg stage3_valid;
    
    // ============================================
    // Pipeline Stage 4: Accumulation
    // ============================================
    reg [PE_ROWS-1:0][DATA_WIDTH-1:0] stage4_sums;
    reg stage4_valid;
    
    // ============================================
    // Pipeline Stage 5: Memory Write
    // ============================================
    reg [ADDR_WIDTH-1:0] wr_addr;
    reg [DATA_WIDTH-1:0] wr_data;
    reg wr_en;
    reg stage5_valid;
    
    // ============================================
    // Control State Machine
    // ============================================
    localparam IDLE = 2'b00;
    localparam RUN  = 2'b01;
    localparam DONE = 2'b10;
    
    reg [1:0] state;
    reg [15:0] row_idx, col_idx;
    reg [31:0] cycle_counter;
    
    assign cycle_count = cycle_counter;
    
    // Cycle counter
    always @(posedge clk) begin
        if (!rstn) begin
            cycle_counter <= 0;
        end else if (state == RUN) begin
            cycle_counter <= cycle_counter + 1;
        end
    end
    
    // State machine
    always @(posedge clk) begin
        if (!rstn) begin
            state <= IDLE;
            host_done <= 1'b0;
            row_idx <= 0;
            col_idx <= 0;
        end else begin
            case (state)
                IDLE: begin
                    if (host_start) begin
                        state <= RUN;
                        row_idx <= 0;
                        col_idx <= 0;
                        host_done <= 1'b0;
                    end
                end
                RUN: begin
                    // Simple matrix multiply: process one column at a time
                    if (col_idx < matrix_size) begin
                        col_idx <= col_idx + 1;
                    end else begin
                        col_idx <= 0;
                        if (row_idx < matrix_size - 1) begin
                            row_idx <= row_idx + 1;
                        end else begin
                            state <= DONE;
                        end
                    end
                end
                DONE: begin
                    host_done <= 1'b1;
                    state <= IDLE;
                end
            endcase
        end
    end
    
    // ============================================
    // Stage 1: Memory Read
    // ============================================
    always @(posedge clk) begin
        if (!rstn) begin
            rd_addr_act <= 0;
            rd_addr_weight <= 0;
            rd_en_act <= 1'b0;
            rd_en_weight <= 1'b0;
            stage1_valid <= 1'b0;
        end else if (state == RUN) begin
            // Read activation (row_idx)
            rd_addr_act <= row_idx * matrix_size + col_idx;
            rd_en_act <= 1'b1;
            
            // Read weight (col_idx)
            rd_addr_weight <= col_idx * matrix_size + row_idx;
            rd_en_weight <= 1'b1;
            
            stage1_valid <= 1'b1;
        end else begin
            rd_en_act <= 1'b0;
            rd_en_weight <= 1'b0;
            stage1_valid <= 1'b0;
        end
    end
    
    // Register memory outputs
    always @(posedge clk) begin
        if (rd_en_act) rd_data_act_reg <= rd_data_act;
        if (rd_en_weight) rd_data_weight_reg <= rd_data_weight;
    end
    
    // ============================================
    // Stage 2: Data Distribution
    // ============================================
    always @(posedge clk) begin
        if (!rstn) begin
            stage2_activations <= 0;
            stage2_weights <= 0;
            stage2_valid <= 1'b0;
        end else if (stage1_valid) begin
            // Broadcast activation to all rows (simplified - just replicate)
            for (integer i = 0; i < PE_ROWS; i = i + 1) begin
                stage2_activations[i] <= rd_data_act_reg;
            end
            
            // Broadcast weight to all columns (simplified - just replicate)
            for (integer j = 0; j < PE_COLS; j = j + 1) begin
                stage2_weights[j] <= rd_data_weight_reg;
            end
            
            stage2_valid <= stage1_valid;
        end else begin
            stage2_valid <= 1'b0;
        end
    end
    
    // ============================================
    // Stage 3: PE Array
    // ============================================
    pe_array_pipelined #(
        .ROWS(PE_ROWS),
        .COLS(PE_COLS),
        .DATA_WIDTH(DATA_WIDTH),
        .USE_LMUL(USE_LMUL)
    ) pe_array_inst (
        .clk(clk),
        .rstn(rstn),
        .i_activations(stage2_activations),
        .i_weights(stage2_weights),
        .i_valid(stage2_valid),
        .i_ready(),  // Always ready
        .o_products(pe_products),
        .o_valid(pe_valid),
        .o_ready(1'b1)
    );
    
    // Register PE outputs
    always @(posedge clk) begin
        if (pe_valid) begin
            pe_products_reg <= pe_products;
            stage3_valid <= 1'b1;
        end else begin
            stage3_valid <= 1'b0;
        end
    end
    
    // ============================================
    // Stage 4: Accumulation
    // ============================================
    genvar i;
    generate
        for (i = 0; i < PE_ROWS; i = i + 1) begin : gen_accum
            always @(posedge clk) begin
                if (!rstn) begin
                    stage4_sums[i] <= 0;
                end else if (stage3_valid) begin
                    // Sum across columns for this row
                    stage4_sums[i] <= pe_products_reg[i][0] + 
                                      pe_products_reg[i][1] + 
                                      pe_products_reg[i][2] + 
                                      pe_products_reg[i][3];
                end
            end
        end
    endgenerate
    
    always @(posedge clk) begin
        if (!rstn) begin
            stage4_valid <= 1'b0;
        end else begin
            stage4_valid <= stage3_valid;
        end
    end
    
    // ============================================
    // Stage 5: Memory Write
    // ============================================
    always @(posedge clk) begin
        if (!rstn) begin
            wr_addr <= 0;
            wr_data <= 0;
            wr_en <= 1'b0;
            stage5_valid <= 1'b0;
        end else if (stage4_valid) begin
            // Write first row's result (simplified)
            wr_addr <= row_idx * matrix_size + col_idx;
            wr_data <= stage4_sums[0];
            wr_en <= 1'b1;
            stage5_valid <= 1'b1;
        end else begin
            wr_en <= 1'b0;
            stage5_valid <= 1'b0;
        end
    end
    
    // ============================================
    // Memory Instantiations
    // ============================================
    // Activation buffer (BRAM - use Vivado IP or simple buffer)
    simple_buffer #(
        .DEPTH(BUFFER_DEPTH),
        .WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH)
    ) act_buffer (
        .clk(clk),
        .rstn(rstn),
        .waddr(host_we ? host_addr : wr_addr),
        .wdata(host_we ? host_wdata : wr_data),
        .we(host_we | wr_en),
        .raddr(rd_addr_act),
        .rdata(rd_data_act)
    );
    
    // Weight buffer
    simple_buffer #(
        .DEPTH(BUFFER_DEPTH),
        .WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH)
    ) weight_buffer (
        .clk(clk),
        .rstn(rstn),
        .waddr(host_addr),
        .wdata(host_wdata),
        .we(host_we),
        .raddr(rd_addr_weight),
        .rdata(rd_data_weight)
    );
    
    // Output buffer (for reading results)
    assign host_rdata = rd_data_act;  // Simplified

endmodule
