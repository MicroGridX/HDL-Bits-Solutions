module top_module (
    input clk,
    input [7:0] d,
    input [1:0] sel,
    output reg [7:0] q
);
    wire [7:0] w1, w2, w3;

    my_dff8 inst1 (.d(d),  .clk(clk), .q(w1));
    my_dff8 inst2 (.d(w1), .clk(clk), .q(w2));
    my_dff8 inst3 (.d(w2), .clk(clk), .q(w3));

    always @(*) begin
        case (sel)
            2'b00: q = d;
            2'b01: q = w1;
            2'b10: q = w2;
            2'b11: q = w3;
            default: q = 8'b0;
        endcase
    end

endmodule
