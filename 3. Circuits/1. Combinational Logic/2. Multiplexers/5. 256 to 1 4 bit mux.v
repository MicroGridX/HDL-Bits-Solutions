module top_module( 
    input [1023:0] in,
    input [7:0] sel,
    output [3:0] out 
);
    // Multiply sel by 4 to jump to the correct 4-bit block boundary
    assign out = in[sel*4 +: 4];   
endmodule
