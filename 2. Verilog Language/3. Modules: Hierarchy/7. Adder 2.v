module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0]sum1,sum2;
    wire [15:0]a_lo=a[15:0];
    wire [15:0]a_hi=a[31:16];
    wire [15:0]b_lo=b[15:0];
    wire [15:0]b_hi=b[31:16];
    wire cout,coutf;
    wire cin=1'b0;
    add16 a1(.a(a_lo),.b(b_lo),.cin(cin),.cout(cout),.sum(sum1));
    add16 a2(.a(a_hi),.b(b_hi),.cin(cout),.cout(coutf),.sum(sum2));
    assign sum ={sum2,sum1};
    

endmodule


module add1 ( input a, input b, input cin,   output sum, output cout );

assign sum=a^b^cin;
assign cout=a&b|b&cin|cin&a;

endmodule
