`timescale 1ns / 1ps

module Pseudo_testbench();
 
    // Inputs
    logic clk, reset;
    //output
    logic [3:0] random;

    Pseudo_random_generator dut( clk, reset, random);

    initial begin
       clk = 0;
       forever
       #10 clk = ~clk;
    end
   
    initial begin
     // Initialize Inputs
      
        reset = 0;
    
     // Wait 100 ns for global reset to finish
        #10;
        reset = 1;
        #10;
        reset = 0;
     // Add stimulus here
    
    end
   
   endmodule
