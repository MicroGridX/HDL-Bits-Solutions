module top_module (
    input clk,
    input [7:0] in,
    output reg [7:0] anyedge  // Added 'reg' here
);
    reg [7:0] q1;             // Only need one pipeline register

    always @(posedge clk) begin 
        q1 <= in;             
        anyedge <= in ^ q1;   
    end

endmodule
