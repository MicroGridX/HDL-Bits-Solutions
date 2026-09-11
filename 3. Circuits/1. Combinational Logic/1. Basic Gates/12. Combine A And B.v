module top_module_a (input x, input y, output z);
    assign z=(x^y)&x;
endmodule
module top_module_b ( input x, input y, output z );
    assign z= ~(x^y);
endmodule
module top_module (input x, input y, output z);
    wire w1,w2,w3,w4,w5,w6;
    top_module_a IA1(.x(x),.y(y),.z(w1));
    top_module_a IA2(.x(x),.y(y),.z(w2));
    top_module_b IB1(.x(x),.y(y),.z(w3)); 
    top_module_b IB2(.x(x),.y(y),.z(w4));
    assign w5=w1|w3;
    assign w6=w2&w4;
    assign z=w5^w6;
    
    
    
endmodule