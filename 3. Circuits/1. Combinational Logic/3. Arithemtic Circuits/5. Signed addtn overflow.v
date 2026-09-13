module top_module (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); 
 
    // 1. Perform standard 8-bit addition
    assign s = a + b;
    
    // 2. Detect overflow using the sign rule:
    // Overflow happens if 'a' and 'b' have the same sign (both positive or both negative), 
    // but the sum 's' has a different sign.
    assign overflow = (a[7] == b[7]) && (s[7] != a[7]);

endmodule
