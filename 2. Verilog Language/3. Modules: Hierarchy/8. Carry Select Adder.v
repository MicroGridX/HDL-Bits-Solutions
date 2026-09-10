module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0]sum1,sum2,sum3;
    wire [15:0]a_lo=a[15:0];
    wire [15:0]a_hi=a[31:16];
    wire [15:0]b_lo=b[15:0];
    wire [15:0]b_hi=b[31:16];
    wire cout,coutf,coutf1;
    wire cin=1'b0;
    add16 a1(.a(a_lo),.b(b_lo),.cin(cin),.cout(cout),.sum(sum1));
    add16 a2(.a(a_hi),.b(b_hi),.cin(1'b0),.cout(coutf),.sum(sum2));
    add16 a3(.a(a_hi),.b(b_hi),.cin(1'b1),.cout(coutf1),.sum(sum3));
    
    always @(*) begin
        if(cout)  sum ={sum3,sum1};
        else sum ={sum2,sum1};
    end

endmodule

