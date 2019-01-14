`timescale 1ns / 1ps

module Comperator_cont( input logic point, 
                        input logic clk,
                        input logic reset,
                        input logic key_valid,
                        output logic [3:0] in0
    );
    
        //4 numbers to keep value of any of 4 digits
    //user's hex inputs for 4 digits
    always_ff@ ( posedge clk, posedge reset)
    begin
        if ( reset)
            in0 <= 4'b0000;
        else if (in0 != 4'b1001 & key_valid & point )
            in0 <= in0 + 4'b0001;
        else if (in0 != 4'b0000 & key_valid & ~point )
            in0 <= in0 - 4'b0001;
    end
endmodule
