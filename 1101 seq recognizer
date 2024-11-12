module top_module (
    input clk,
    input reset,      // Synchronous reset
    input data,
    output start_shifting);
    parameter init=0,A=1,B=2,C=3,D=4;
    reg [2:0] cs,ns;
    
    always@(posedge clk)
        if(reset) cs<=init;
    else  cs<=ns;
    
    always@(*) begin 
        case(cs) 
            init: begin 
                ns=data? A:init;
                start_shifting=0;
            end
            A: begin
                ns= data? B:init;
                start_shifting=0;
            end
            B: begin
                ns= data? B:C;
                start_shifting=0;
            end
            C: begin
                ns=data ?D:init;
                start_shifting=0;
            end
            D: begin 
                ns=D;
                start_shifting=1;
            end
        endcase
           
            
    end    

endmodule
