// synthesis verilog_input_version verilog_2001
module top_module (
    input [7:0] in,
    output reg [2:0] pos );
always @(*) begin
    casez (in[7:0])
        8'bzzzzzzz1: pos = 3'd000; 
        8'bzzzzzz1z: pos = 3'd001;
        8'bzzzzz1zz: pos = 3'd002;
        8'bzzzz1zzz: pos = 3'd003;
        8'bzzz1zzzz: pos = 3'd004; 
        8'bzz1zzzzz: pos = 3'd005;
        8'bz1zzzzzz: pos = 3'd006;
        8'b1zzzzzzz: pos = 3'd007;
        default:pos = 3'd000;
    endcase
end
endmodule
