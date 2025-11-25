`timescale 1ns/1ps

module TB_LMUL;
    reg clk = 0;
    always #5 clk = ~clk; // 100MHz clock

    reg start;
    reg [15:0] a, b;
    wire done;
    wire [31:0] result_bits;
    wire [31:0] cycles;

    LMUL dut(
        .clk(clk),
        .start(start),
        .a(a),
        .b(b),
        .done(done),
        .result_bits(result_bits),
        .cycles(cycles)
    );

    initial begin
        integer in;
        integer out;

        in = $fopen("input.txt", "r");
        out = $fopen("output.txt", "w");

        $fscanf(in, "%h %h\n", a, b);
        $fclose(in);

        start = 1;
        #10;
        start = 0;

        wait(done == 1);

        $fwrite(out, "%h %d\n", result_bits, cycles);
        $fclose(out);

        $finish;
    end
endmodule
