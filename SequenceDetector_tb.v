`timescale 1ns/1ps
module SequenceDetector_tb();
    reg clk, reset, w;
    wire z;
    SequenceDetector uut (.clk(clk), .reset(reset), .w(w), .z(z));
    always #5 clk = ~clk;
    initial begin
        clk = 0; reset = 1; w = 1;
        #15 reset = 0;
        #10 w = 0; 
        #10 w = 1; 
        #10 w = 1; 
        #10 w = 1; 
        #10 w = 1; 
        #10 w = 1; 
        #10 w = 1; 
        #10 w = 0; 
        #20 w = 0; 
        #50 $stop;
    end
endmodule