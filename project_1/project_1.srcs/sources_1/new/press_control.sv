`timescale 1 ps / 1 ps
//Refer: chapter 4 slides
module press_control(input  logic clk, 
                     input  logic key_valid,
                     input  logic reset, 
                     output logic control );
                     
   typedef enum logic [1:0] {S0, S1, S2} statetype;
   statetype [1:0] state, nextstate;  
 
   // state register
   always_ff @ (posedge clk, posedge reset)
      if (reset) state <= S0;
      else       state <= nextstate;

   // next state logic
   always_comb
      case (state)
         S0:      if ( key_valid == 0 ) nextstate = S0;
                  else  nextstate = S1;
                  
         S1:      if ( key_valid == 0 ) nextstate = S0;
                  else  nextstate = S2;
                  
         S2:     if ( key_valid == 0 ) nextstate = S0;
                 else  nextstate = S2;
         default: nextstate = S0;
      endcase

      // output logic
      assign control = (state == S1);
endmodule 