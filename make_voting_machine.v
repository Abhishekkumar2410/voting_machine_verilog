`timescale 1ns / 1ps

module make_voting_machine(
input clk,
input reset,
input mode,
input button1,
input button2,
input button3,
input button4,
output [7:0]led

    );

wire valid_vote1;
wire valid_vote2;
wire valid_vote3;
wire valid_vote4;
wire any_valid_vote;
wire [7:0]recev_can1;
wire [7:0]recev_can2;
wire [7:0]recev_can3;
wire [7:0]recev_can4;  
  
 assign any_valid_vote =  valid_vote1|valid_vote2|valid_vote3|valid_vote4;
 
button_control b1(clk,reset,button1,valid_vote1);
button_control b2(clk,reset,button2,valid_vote2);
button_control b3(clk,reset,button3,valid_vote3);
button_control b4(clk,reset,button4,valid_vote4);



mode_checck c1(clk,reset,mode,
 any_valid_vote,
 valid_vote1,
 valid_vote2,valid_vote3,valid_vote4,
 recev_can1,recev_can2,recev_can3,recev_can4,led);
 


vote_count v1(clk,reset,mode,valid_vote1,
                valid_vote2,valid_vote3,
                valid_vote4,recev_can1,
                recev_can2,recev_can3,
                recev_can4);
    
endmodule
