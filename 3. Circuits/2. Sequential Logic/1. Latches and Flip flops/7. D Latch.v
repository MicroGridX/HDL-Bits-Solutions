module top_module (
    input d, 
    input ena,
    output q);
    always @(*)
        if(ena)begin q<=d; end

endmodule
