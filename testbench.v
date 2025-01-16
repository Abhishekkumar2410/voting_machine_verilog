`timescale 1ns / 1ps



module testbench();
    reg  clk;
reg  reset;
reg mode;
reg  button1;
reg  button2;
reg  button3;
reg  button4;
wire [7:0]led;


make_voting_machine dut(clk,reset,mode,button1,button2,button3,button4,led);

initial begin
    clk=0;
    forever #5 clk=~clk;
    end
    
     initial begin
    reset = 1; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;
    #100;

    #100 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;
    #5 reset = 0; mode = 0; button1 = 1; button2 = 0; button3 = 0; button4 = 0;
    #10 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;
    #5 reset = 0; mode = 0; button1 = 1; button2 = 0; button3 = 0; button4 = 0;
    #200 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;
    #5 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;
    #10 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;
    #5 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;

    #5 reset = 0; mode = 0; button1 = 0; button2 = 1; button3 = 0; button4 = 0;
    #200 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;
    #5 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;
    #10 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;
    #5 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;

    #5 reset = 0; mode = 0; button1 = 0; button2 = 1; button3 = 1; button4 = 0;
    #200 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;
    #5 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;
    #10 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;
    #5 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;

    #5 reset = 0; mode = 1; button1 = 0; button2 = 1; button3 = 0; button4 = 0;
    #200 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;
    #5 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;
    #10 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;
    #5 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;

    #5 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 1; button4 = 0;
    #200 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;
    #5 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;
    #10 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;
    #5 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;

    $finish;
  end
endmodule
