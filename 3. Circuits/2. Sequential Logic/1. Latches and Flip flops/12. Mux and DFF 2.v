module top_module (
    input clk,
    input w, R, E, L,
    output reg Q
);

    always @(posedge clk) begin
        if (L) begin
            Q <= R;
        end else if (E) begin
            Q <= w;
        end else begin
            Q <= Q; 
        end
    end

endmodule
