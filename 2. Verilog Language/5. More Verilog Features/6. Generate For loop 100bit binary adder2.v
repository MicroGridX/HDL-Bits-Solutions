module fadd(
    input a, 
    input b, 
    input cin,
    output sum,
    output cout
);
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (cin & (a ^ b));
endmodule

module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum 
);

   
    genvar i;
    
    generate
        for (i = 0; i <= 99; i = i + 1) begin : adder_instances
            if (i == 0) begin
                
                fadd inst(
                    .a(a[i]), 
                    .b(b[i]), 
                    .cin(cin), 
                    .sum(sum[i]), 
                    .cout(cout[i])
                );
            end else begin
             
                fadd inst(
                    .a(a[i]), 
                    .b(b[i]), 
                    .cin(cout[i-1]), 
                    .sum(sum[i]), 
                    .cout(cout[i])
                );
            end
        end
    endgenerate

endmodule
