`timescale 1ns / 1ps

module mode_checck(
input clk,
input reset,
input mode,
input any_valid_vote,
input candidate1,
input candidate2,
input candidate3,
input candidate4,
input  [7:0]recev_can1,
input [7:0]recev_can2,
input [7:0]recev_can3,
input [7:0]recev_can4,
output reg [7:0]led    );

reg [7:0]counter;

always@(posedge clk)begin
    if(reset)
        counter<=1'b0;
    else begin
     if(any_valid_vote)
        counter<=counter+1'b1;
    else if(counter!=0 & counter<10)
        counter<=counter+1'b1;
    else
        counter<=1'b0;
  end
  end
  
  always@(posedge clk)begin
  if(reset)begin
    led<=8'h0;
    end
  else begin
     if(mode==0 & counter >0)
        led<=8'hff;
     else if(mode==0)
        led<=8'h00;   
        
     else if(mode==1)begin
        if(candidate1)
            led<= recev_can1;
        else if(candidate2)
            led<= recev_can2; 
        else if(candidate3)
            led<= recev_can3; 
        else if(candidate4)
            led<= recev_can4;
            end             
            
            end
     end     

endmodule
