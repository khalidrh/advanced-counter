// instead of using a FSM solution , i used a 4 bit shift reg. when reset is on , the shift reg is loaded of 4'b1111
// and when reset is off it starts shifting 
module top_module (
    input clk,
    input reset,      // Synchronous reset
    output shift_ena);
    reg [3:0] q=0;
    always@(posedge clk) begin 
        if(reset)
            q<=4'b1111;
        else 
            q<={1'b0,q[3:1]};
    
    end
    assign shift_ena=q[0];
    
endmodule
