module top_module (
    input a, b, c, d, e,
    output [24:0] out );//

    // The output is XNOR of two vectors created by 
    // concatenating and replicating the five inputs.
    // assign out = ~{ ... } ^ { ... };
    assign out= {~{a,a,a,a,a}^{a,b,c,d,e},~{b,b,b,b,b}^{a,b,c,d,e},~{c,c,c,c,c}^{a,b,c,d,e},~{d,d,d,d,d}^{a,b,c,d,e},~{e,e,e,e,e}^{a,b,c,d,e}};
endmodule
