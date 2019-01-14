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
       #100 clk = ~clk;
    end
   
    initial begin
     // Initialize Inputs
      
        reset = 0;
    
     // Wait 100 ns for global reset to finish
        #100;
        reset = 1;
        #200;
        reset = 0;
     // Add stimulus here
    
    end
   
   endmodule
