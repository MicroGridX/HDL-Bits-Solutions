// synthesis verilog_input_version verilog_2001
module top_module (
    input [3:0] in,
    output reg [1:0] pos  );
    always @(*)begin
        if(in==4'b000)begin pos=4'b0000; end
        else if(in[0]==1'b1)begin pos=2'd00; end
        else if(in[1]==1'b1)begin pos=2'd01; end
        else if(in[2]==1'b1)begin pos=2'd02; end
        else if(in[3]==1'b1)begin pos=2'd03; end
        else pos=2'b00;
    end
endmodule
