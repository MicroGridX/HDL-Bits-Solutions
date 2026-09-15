// module top_module();
// 	reg clk,in;
//     reg [2:0]s;
//     wire out;
//     q7 DUT(clk,in,s,out);
//     initial begin 
//     clk=1'b0; s=3'b010; in=1'b0;
//     end
//     always begin 
//     #5 clk=~clk;
//     end
//        always begin 
//     #10 s=3'b110;
//     #10 s=3'b010; in=1'b1;
//     #10 s=3'b111; in=1'b0;
//     #10 s=3'b000; in=1'b1;
//     #30 in=1'b0;
//      $finish;       
//     end
// endmodule
module top_module();
    reg clk,in;
    reg [2:0] s;
    wire out;
    q7 DUT(clk,in,s,out);
    initial clk = 1'b0;
    always #5 clk = ~clk;
    initial begin
        in=1'b0;s=3'd2;
        #10 s=3'd6;
        #10 in=1'b1;s=3'd2;
        #10 in=1'b0;s=3'd7;
        #10 in=1'b1;s=3'd0;
        #30 in=1'b0;
    end
endmodule