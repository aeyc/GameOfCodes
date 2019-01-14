`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Ayca Begum Tascioglu
// 
// Create Date: 12/16/2017 08:10:44 PM
// Design Name: 
// Module Name: top
//////////////////////////////////////////////////////////////////////////////////


module top(
    //7-segment signals
	output logic a, b, c, d, e, f, g, dp, 
    output logic [3:0] an,
    output logic [3:0] phases,	
	
	//matrix  4x4 keypad
	output logic [3:0] keyb_row,
	input  logic [3:0] keyb_col,
	input logic start,
	input logic clk,
	input logic reset
    );
    logic [3:0] in0;
    logic [3:0] in1 = 0; 
    logic [3:0] in2 = 0;
    logic [3:0] in3 = 0;
    logic [3:0] out;
    logic [3:0] key_value;
    
    logic [1:0] rotation_duration;
    logic [1:0] direction; 
    logic [3:0] random_value;
    
    logic key_valid_cont;
    
    logic  point;
    
    keypad4X4 keypad4X4_inst0(
                          clk,
                          keyb_row, // just connect them to FPGA pins, row scanner
                          keyb_col, // just connect them to FPGA pins, column scanner
                          key_value, //user's output code for detected pressed key: row[1:0]_col[1:0]
                          key_valid  // user's output valid: if the key is pressed long enough (more than 20~40 ms), key_valid becomes '1' for just one clock cycle.
    );    
    
    //press_control
    press_control press_cont_inst0( 
                          clk, 
                          key_valid,
                          reset, 
                          key_valid_cont );
                         
    //Pseudo random generator
    //logic [3:0] random_value;
    Pseudo_random_generator pseduo_inst0( clk, reset, 
                                          random_value
    );
                                    
    //Random register
    randomRegister randomReg_inst0( clk,
                           reset,
                           random_value,
                           key_valid_cont ,
                           rotation_duration,
                           direction, 
                           out 
    );        
                           
    //steppermotor_wrapper
     steppermotor_wrapper steppermotor_wrapper_inst0( 
                            clk, 
                            direction, 
                            rotation_duration, 
                            phases, 
                            start 
    );                      
    
                            
    //comperator
    Comperator comp_inst0(
                       clk,          
                       key_value,
                       out,
                       point
     );
      
      
    //comperator_control             
    Comperator_cont comp_cont_inst0( point, 
                        clk,
                        reset,
                        key_valid_cont,
                        in0
        );
                       
    //SevSeg_4digit                  
    SevSeg_4digit SevSeg_4digit_inst0(
                        clk,
                        in0, in1, in2, in3, //user inputs for each digit (hexadecimal)
                        a, b, c, d, e, f, g, dp, // just connect them to FPGA pins (individual LEDs).
                        an   // just connect them to FPGA pins (enable vector for 4 digits active low) 
    );
endmodule
