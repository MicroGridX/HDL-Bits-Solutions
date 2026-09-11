module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum 
);

    wire [99:0] carry;
   
    genvar i;
    
    generate
        for (i = 0; i < 100; i = i + 1) begin : bcd_adder_instances
            if (i == 0) begin
               
                bcd_fadd inst(
                    .a(a[3:0]), 
                    .b(b[3:0]), 
                    .cin(cin), 
                    .cout(carry[i]), 
                    .sum(sum[3:0])
                );
            end else begin
                
                bcd_fadd inst(
                    .a(a[i*4 +: 4]), 
                    .b(b[i*4 +: 4]), 
                    .cin(carry[i-1]), 
                    .cout(carry[i]), 
                    .sum(sum[i*4 +: 4])
                );
            end
        end
    endgenerate

   
    assign cout = carry[99];

endmodule
