// simple_function.v
// Defines f(x,y) = x + y + 1

module simple_function #(
    parameter WIDTH = 8
)(
    input  [WIDTH-1:0] x,
    input  [WIDTH-1:0] y,
    output [WIDTH-1:0] result
);

    assign result = x + y + 1;

endmodule

// Note: This is pure combinational logic
// Result is available immediately after inputs change