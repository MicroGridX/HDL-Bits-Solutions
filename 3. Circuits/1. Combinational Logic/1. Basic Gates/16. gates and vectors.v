module top_module( 
    input [3:0] in, 
    output reg [2:0] out_both, 
    output reg [3:1] out_any, 
    output reg [3:0] out_different 
); 

    always @(*) begin 
        integer i; 
        
   
        for(i=0;i<3;i=i+1) begin 
            out_both[i]=in[i]&in[i+1]; 
        end 
        
     
        for(i=1;i<4;i=i+1) begin 
            out_any[i]=in[i]|in[i-1]; 
        end 
        
 
        for(i=0;i<=3;i=i+1) begin 
            if(i==3) begin 
                out_different[i]=in[i]^in[0]; 
            end else begin
                out_different[i]=in[i]^in[i+1]; 
            end
        end 
    end 

endmodule
