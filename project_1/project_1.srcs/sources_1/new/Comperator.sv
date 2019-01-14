`timescale 1ns / 1ps

module Comperator( 
                   input clk,
                   input logic [3:0] key_value,
                   input logic [3:0] random_toControl,
                   output logic point);
                   
                   logic [3:0] result_to_compare;
                   
                   always_ff@ (posedge clk)
                   begin
                       case(key_value) 
                       4'b00_00:   //D
                        result_to_compare = 4'b00_10;
  
                       4'b00_01:  //#
                        result_to_compare = 4'b00_11;
                                          
                       4'b00_10:  //0
                        result_to_compare = 4'b00_00;
                                          
                       4'b00_11:  //*
                        result_to_compare = 4'b01_11;        
                                          
                       4'b01_00:  //c
                        result_to_compare = 4'b11_00;    
                                                  
                       4'b01_01:  //9
                         result_to_compare = 4'b10_11;
                                                  
                       4'b01_10:  //8
                         result_to_compare = 4'b01_10;
                                                  
                       4'b01_11:  //7
                         result_to_compare = 4'b00_01;        
                                                  
                       4'b10_00:  //B
                         result_to_compare = 4'b11_01;
                                          
                       4'b10_01:  //6
                         result_to_compare = 4'b11_10;
                                          
                       4'b10_10: //5
                         result_to_compare = 4'b10_01;
                                          
                       4'b10_11:  //4
                         result_to_compare = 4'b01_00;    
                                                  
                       4'b11_00:  //A
                         result_to_compare = 4'b10_00;
                                          
                       4'b11_01:  //3
                         result_to_compare = 4'b11_11;    
                                          
                       4'b11_10:  //2
                         result_to_compare  = 4'b10_10;
                                          
                       4'b11_11:  //1
                         result_to_compare = 4'b01_01;         

                       //default:
                           //nothing
                           
                       endcase
                  end
                  
                 always_comb begin
                       if ( result_to_compare == random_toControl )
                            point = 1;
                       else 
                            point = 0 ;
                             
                 end//if
                   
                       
                       
                   endmodule
