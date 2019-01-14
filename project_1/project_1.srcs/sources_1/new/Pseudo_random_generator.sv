`timescale 1ns / 1ps

module Pseudo_random_generator( 
                                input logic clk, 
                                input logic reset,
                                output logic [3:0] random_value);
                                
    logic [15:0] random;
    wire leastSig = random[14]^random[8]^random[7]^random[4];

    always_ff @(posedge clk or posedge reset) 

    begin
    if (reset)  
        random <= 16'b1111010110010010;
    else 
        random <= { random[14:0], leastSig};
    end
    assign random_value = random[3:0];

endmodule
