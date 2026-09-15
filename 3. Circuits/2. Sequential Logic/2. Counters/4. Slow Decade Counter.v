module top_module (
    input clk,
    input slowena,
    input reset,
    output [3:0] q);
    
    reg [3:0] cnt;

    always @ (posedge clk)
        begin
            if(reset)
                cnt <= 4'b0;
            else if(slowena == 1'b1)
                begin
                    if(cnt == 4'd9)
                        cnt <= 4'b0;
                    else 
                        cnt <= cnt + 4'd1;
                end
        end
    
    assign q = cnt;

endmodule