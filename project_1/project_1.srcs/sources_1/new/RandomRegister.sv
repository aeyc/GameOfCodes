`timescale 1ns / 1ps
module randomRegister( input logic clk,
                       input logic reset,
                       input [3:0] random_value,
                       input key_valid,
                       output logic [1:0] rotation_duration,
                       output logic [1:0] direction, 
                       output logic [3:0] out);

                       always_ff @( posedge clk ) //clk
                       begin
                            if (key_valid | reset) 
                            begin
                                out <= random_value;
                                rotation_duration <= random_value[3:2];
                                direction <= random_value[1:0];
                            end
                       end
endmodule
