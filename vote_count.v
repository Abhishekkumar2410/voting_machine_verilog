`timescale 1ns / 1ps

module vote_count(
input clk,
input reset,
input mode,
input can1,
input can2,
input can3,
input can4,
output reg [7:0]can_recev_1,
output reg [7:0]can_recev_2,
output reg [7:0]can_recev_3,
output reg [7:0]can_recev_4
 );
 
 always@(posedge clk)begin
    if(reset)begin
        can_recev_1<=0;
        can_recev_2<=0;
        can_recev_3<=0;
        can_recev_4<=0;
        end
    else begin
        if(mode==0&can1)
            can_recev_1<=can_recev_1+1'b1;
        else if(mode==0&can2)  
            can_recev_2<=can_recev_2+1'b1;  
        else if(mode==0&can3)  
            can_recev_3<=can_recev_3+1'b1;
        else if(mode==0&can4)  
            can_recev_4<=can_recev_4+1'b1; 
            end
         end       
endmodule
