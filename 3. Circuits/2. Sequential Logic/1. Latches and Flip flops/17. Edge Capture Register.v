module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output reg [31:0] out
);

  // Register to store the input state from the previous clock cycle
    reg [31:0] in_d;

    always @(posedge clk) begin
        if (reset) begin
         
            out <= 32'b0;
        end else begin
    
           // Bitwise OR keeps previously captured 1s active, 
            // while (in_d & ~in) detects new 1-to-0 transitions.
            out <= out | (in_d & ~in);
        end
        
        // Store the current input for comparison in the next clock cycle
        in_d <= in;
    end

endmodule
