module top_module( 
    input [2:0] in,
    output [1:0] out );
    always @(*)begin
  
    integer i;
        out=1'b0;
        for(i=0;i<3;i=i+1)begin 
            if(in[i]==1'b1) out=out+1'b1;
        end

    end
endmodule
