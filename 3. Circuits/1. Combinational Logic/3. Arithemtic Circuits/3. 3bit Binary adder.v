module f_add( 
    input a, b, cin,
    output cout, sum );
assign sum = a^b^cin;
    assign cout=a&b|b&cin|a&cin;
endmodule
module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );
    wire s1,c1,c2,s2,s3;
    f_add a1(a[0],b[0],cin,cout[0],s1);
    f_add a2(a[1],b[1],cout[0],cout[1],s2);
    f_add a3(a[2],b[2],cout[1],cout[2],s3);
    assign sum={s3,s2,s1};
endmodule
