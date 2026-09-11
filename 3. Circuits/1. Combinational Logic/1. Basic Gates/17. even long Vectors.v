module top_module( 
    input [99:0] in,
    output [98:0] out_both,
    output [99:1] out_any,
    output [99:0] out_different );


    always @(*) begin 
        integer i; 
        

        for(i=0;i<99;i=i+1) begin 
            out_both[i]=in[i]&in[i+1]; 
        end 
        

        for(i=1;i<=99;i=i+1) begin 
            out_any[i]=in[i]|in[i-1]; 
        end 
        
     
        for(i=0;i<=99;i=i+1) begin 
            if(i==99) begin 
                out_different[i]=in[i]^in[0]; 
            end else begin
                out_different[i]=in[i]^in[i+1]; 
            end
        end 
    end
endmodule
