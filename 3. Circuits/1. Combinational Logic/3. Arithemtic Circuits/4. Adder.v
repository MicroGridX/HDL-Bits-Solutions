module f_add( 
    input a, b, cin,
    output cout, sum );
assign sum = a^b^cin;
    assign cout=a&b|b&cin|a&cin;
endmodule

module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    wire cin=1'b0;
    wire c1,c2,c3;
    f_add a1(x[0],y[0],cin,c1,sum[0]);
    f_add a2(x[1],y[1],c1,c2,sum[1]);
    f_add a3(x[2],y[2],c2,c3,sum[2]);
    f_add a4(x[3],y[3],c3,sum[4],sum[3]);
endmodule
