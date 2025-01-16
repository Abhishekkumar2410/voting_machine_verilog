`timescale 1ns / 1ps


module button_control(
input clk,
input reset,
input button,
output reg valid_press
    );
 
 reg [7:0]counter;
 
 always@(posedge clk)begin
    if(reset)
    counter<=1'b0;
    else if(button & counter<11)
        counter<=counter+1'b1;
    else if(!button)
        counter<=1'b0;    
 end
 
 always@(posedge clk)begin
    if(reset)
        valid_press<=1'b0;
    else begin
        if(counter == 10)
            valid_press<=1'b1;
        else
            valid_press<=1'b0;
      end        
 end
    
endmodule
