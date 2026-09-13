module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum 
);

    // Concat cout and sum to capture the 101-bit result of the addition
    assign {cout, sum} = a + b + cin;

endmodule
