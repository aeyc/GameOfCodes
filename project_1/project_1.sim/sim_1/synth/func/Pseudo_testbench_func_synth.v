// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
// Date        : Sun Dec 17 22:18:51 2017
// Host        : EALAB01 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/Users/TEMP.PCLABS.000/Desktop/project_1/project_1.sim/sim_1/synth/func/Pseudo_testbench_func_synth.v
// Design      : top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Comperator
   (point,
    key_value,
    CLK);
  output point;
  input [3:0]key_value;
  input CLK;

  wire CLK;
  wire [3:0]key_value;
  wire point;
  wire \result_to_compare[0]_i_1_n_0 ;
  wire \result_to_compare[1]_i_1_n_0 ;
  wire \result_to_compare[2]_i_1_n_0 ;
  wire \result_to_compare[3]_i_1_n_0 ;
  wire \result_to_compare_reg_n_0_[0] ;
  wire \result_to_compare_reg_n_0_[1] ;
  wire \result_to_compare_reg_n_0_[2] ;
  wire \result_to_compare_reg_n_0_[3] ;

  LUT4 #(
    .INIT(16'h0001)) 
    \in0[3]_i_3 
       (.I0(\result_to_compare_reg_n_0_[1] ),
        .I1(\result_to_compare_reg_n_0_[0] ),
        .I2(\result_to_compare_reg_n_0_[3] ),
        .I3(\result_to_compare_reg_n_0_[2] ),
        .O(point));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \result_to_compare[0]_i_1 
       (.I0(key_value[0]),
        .I1(key_value[2]),
        .I2(key_value[3]),
        .O(\result_to_compare[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h664D)) 
    \result_to_compare[1]_i_1 
       (.I0(key_value[1]),
        .I1(key_value[0]),
        .I2(key_value[3]),
        .I3(key_value[2]),
        .O(\result_to_compare[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hCD62)) 
    \result_to_compare[2]_i_1 
       (.I0(key_value[2]),
        .I1(key_value[0]),
        .I2(key_value[1]),
        .I3(key_value[3]),
        .O(\result_to_compare[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h30FA)) 
    \result_to_compare[3]_i_1 
       (.I0(key_value[2]),
        .I1(key_value[0]),
        .I2(key_value[3]),
        .I3(key_value[1]),
        .O(\result_to_compare[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \result_to_compare_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_to_compare[0]_i_1_n_0 ),
        .Q(\result_to_compare_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_to_compare_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_to_compare[1]_i_1_n_0 ),
        .Q(\result_to_compare_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_to_compare_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_to_compare[2]_i_1_n_0 ),
        .Q(\result_to_compare_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_to_compare_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_to_compare[3]_i_1_n_0 ),
        .Q(\result_to_compare_reg_n_0_[3] ),
        .R(1'b0));
endmodule

module Comperator_cont
   (Q,
    point,
    \state_reg[0][1] ,
    CLK,
    AR);
  output [3:0]Q;
  input point;
  input \state_reg[0][1] ;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [3:0]Q;
  wire \in0[0]_i_1_n_0 ;
  wire \in0[1]_i_1_n_0 ;
  wire \in0[2]_i_1_n_0 ;
  wire \in0[3]_i_1_n_0 ;
  wire \in0[3]_i_2_n_0 ;
  wire point;
  wire \state_reg[0][1] ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \in0[0]_i_1 
       (.I0(Q[0]),
        .O(\in0[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDD22DD2222DD02DD)) 
    \in0[1]_i_1 
       (.I0(point),
        .I1(\state_reg[0][1] ),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\in0[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hDF20F20D)) 
    \in0[2]_i_1 
       (.I0(point),
        .I1(\state_reg[0][1] ),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(\in0[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EFFFFFFE)) 
    \in0[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(point),
        .I5(\state_reg[0][1] ),
        .O(\in0[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7F0080FCFE0301)) 
    \in0[3]_i_2 
       (.I0(point),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\state_reg[0][1] ),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\in0[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \in0_reg[0] 
       (.C(CLK),
        .CE(\in0[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\in0[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \in0_reg[1] 
       (.C(CLK),
        .CE(\in0[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\in0[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \in0_reg[2] 
       (.C(CLK),
        .CE(\in0[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\in0[2]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \in0_reg[3] 
       (.C(CLK),
        .CE(\in0[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\in0[3]_i_2_n_0 ),
        .Q(Q[3]));
endmodule

(* N = "18" *) 
module SevSeg_4digit
   (clk,
    in0,
    in1,
    in2,
    in3,
    a,
    b,
    c,
    d,
    e,
    f,
    g,
    dp,
    an);
  input clk;
  input [3:0]in0;
  input [3:0]in1;
  input [3:0]in2;
  input [3:0]in3;
  output a;
  output b;
  output c;
  output d;
  output e;
  output f;
  output g;
  output dp;
  output [3:0]an;

  wire a;
  wire [3:0]an;
  wire b;
  wire c;
  wire clk;
  wire \count[0]_i_2_n_0 ;
  wire \count_reg[0]_i_1_n_0 ;
  wire \count_reg[0]_i_1_n_4 ;
  wire \count_reg[0]_i_1_n_5 ;
  wire \count_reg[0]_i_1_n_6 ;
  wire \count_reg[0]_i_1_n_7 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[10] ;
  wire \count_reg_n_0_[11] ;
  wire \count_reg_n_0_[12] ;
  wire \count_reg_n_0_[13] ;
  wire \count_reg_n_0_[14] ;
  wire \count_reg_n_0_[15] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire \count_reg_n_0_[9] ;
  wire d;
  wire [3:0]digit_val;
  wire dp;
  wire e;
  wire f;
  wire g;
  wire [3:0]in0;
  wire [3:0]in1;
  wire [3:0]in2;
  wire [3:0]in3;
  wire [1:0]p_0_in;
  wire [2:0]\NLW_count_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_count_reg[16]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[8]_i_1_CO_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  GND GND
       (.G(dp));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2094)) 
    a_INST_0
       (.I0(digit_val[3]),
        .I1(digit_val[2]),
        .I2(digit_val[0]),
        .I3(digit_val[1]),
        .O(a));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    a_INST_0_i_1
       (.I0(in1[3]),
        .I1(in0[3]),
        .I2(in3[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(in2[3]),
        .O(digit_val[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    a_INST_0_i_2
       (.I0(in1[2]),
        .I1(in0[2]),
        .I2(in3[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(in2[2]),
        .O(digit_val[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    a_INST_0_i_3
       (.I0(in1[0]),
        .I1(in0[0]),
        .I2(in3[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(in2[0]),
        .O(digit_val[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    a_INST_0_i_4
       (.I0(in1[1]),
        .I1(in0[1]),
        .I2(in3[1]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(in2[1]),
        .O(digit_val[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \an[0]_INST_0 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .O(an[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \an[1]_INST_0 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .O(an[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \an[2]_INST_0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .O(an[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \an[3]_INST_0 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .O(an[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hAC48)) 
    b_INST_0
       (.I0(digit_val[3]),
        .I1(digit_val[2]),
        .I2(digit_val[0]),
        .I3(digit_val[1]),
        .O(b));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    c_INST_0
       (.I0(digit_val[3]),
        .I1(digit_val[0]),
        .I2(digit_val[1]),
        .I3(digit_val[2]),
        .O(c));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_2 
       (.I0(\count_reg_n_0_[0] ),
        .O(\count[0]_i_2_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_7 ),
        .Q(\count_reg_n_0_[0] ),
        .R(dp));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \count_reg[0]_i_1 
       (.CI(dp),
        .CO({\count_reg[0]_i_1_n_0 ,\NLW_count_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(dp),
        .DI({dp,dp,dp,1'b1}),
        .O({\count_reg[0]_i_1_n_4 ,\count_reg[0]_i_1_n_5 ,\count_reg[0]_i_1_n_6 ,\count_reg[0]_i_1_n_7 }),
        .S({\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] ,\count[0]_i_2_n_0 }));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(\count_reg_n_0_[10] ),
        .R(dp));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(\count_reg_n_0_[11] ),
        .R(dp));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(\count_reg_n_0_[12] ),
        .R(dp));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\NLW_count_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(dp),
        .DI({dp,dp,dp,dp}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S({\count_reg_n_0_[15] ,\count_reg_n_0_[14] ,\count_reg_n_0_[13] ,\count_reg_n_0_[12] }));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(\count_reg_n_0_[13] ),
        .R(dp));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(\count_reg_n_0_[14] ),
        .R(dp));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(\count_reg_n_0_[15] ),
        .R(dp));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(p_0_in[0]),
        .R(dp));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO(\NLW_count_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(dp),
        .DI({dp,dp,dp,dp}),
        .O({\NLW_count_reg[16]_i_1_O_UNCONNECTED [3:2],\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S({dp,dp,p_0_in}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(p_0_in[1]),
        .R(dp));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_6 ),
        .Q(\count_reg_n_0_[1] ),
        .R(dp));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_5 ),
        .Q(\count_reg_n_0_[2] ),
        .R(dp));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_4 ),
        .Q(\count_reg_n_0_[3] ),
        .R(dp));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(\count_reg_n_0_[4] ),
        .R(dp));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_1_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\NLW_count_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(dp),
        .DI({dp,dp,dp,dp}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S({\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] ,\count_reg_n_0_[4] }));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(\count_reg_n_0_[5] ),
        .R(dp));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(\count_reg_n_0_[6] ),
        .R(dp));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(\count_reg_n_0_[7] ),
        .R(dp));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(\count_reg_n_0_[8] ),
        .R(dp));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\NLW_count_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(dp),
        .DI({dp,dp,dp,dp}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S({\count_reg_n_0_[11] ,\count_reg_n_0_[10] ,\count_reg_n_0_[9] ,\count_reg_n_0_[8] }));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(\count_reg_n_0_[9] ),
        .R(dp));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hC214)) 
    d_INST_0
       (.I0(digit_val[3]),
        .I1(digit_val[2]),
        .I2(digit_val[0]),
        .I3(digit_val[1]),
        .O(d));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h5710)) 
    e_INST_0
       (.I0(digit_val[3]),
        .I1(digit_val[1]),
        .I2(digit_val[2]),
        .I3(digit_val[0]),
        .O(e));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h5190)) 
    f_INST_0
       (.I0(digit_val[3]),
        .I1(digit_val[2]),
        .I2(digit_val[0]),
        .I3(digit_val[1]),
        .O(f));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h4025)) 
    g_INST_0
       (.I0(digit_val[3]),
        .I1(digit_val[0]),
        .I2(digit_val[2]),
        .I3(digit_val[1]),
        .O(g));
endmodule

(* M = "6" *) (* N = "17" *) 
module keypad4X4
   (clk,
    keyb_row,
    keyb_col,
    key_value,
    key_valid);
  input clk;
  output [3:0]keyb_row;
  input [3:0]keyb_col;
  output [3:0]key_value;
  output key_valid;

  wire \FSM_onehot_row[1]_i_1_n_0 ;
  wire \FSM_onehot_row[4]_i_1_n_0 ;
  wire \FSM_onehot_row_reg_n_0_[1] ;
  wire \FSM_onehot_row_reg_n_0_[2] ;
  wire \FSM_onehot_row_reg_n_0_[3] ;
  wire \FSM_onehot_row_reg_n_0_[4] ;
  wire clk;
  wire clk_en;
  wire clk_en2;
  wire clk_en2_i_2_n_0;
  wire clk_en2_i_3_n_0;
  wire clk_en2_i_4_n_0;
  wire clk_en_i_1_n_0;
  wire clk_en_i_2_n_0;
  wire clk_en_i_3_n_0;
  wire clk_en_i_4_n_0;
  wire [3:0]col;
  wire \count[0]_i_2_n_0 ;
  wire count_deb;
  wire \count_deb[5]_i_1_n_0 ;
  wire \count_deb[5]_i_4_n_0 ;
  wire \count_deb[5]_i_5_n_0 ;
  wire [5:0]count_deb_reg__0;
  wire [16:0]count_reg;
  wire \count_reg[0]_i_1_n_0 ;
  wire \count_reg[0]_i_1_n_4 ;
  wire \count_reg[0]_i_1_n_5 ;
  wire \count_reg[0]_i_1_n_6 ;
  wire \count_reg[0]_i_1_n_7 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire finish;
  wire finish_del;
  wire finish_i_1_n_0;
  wire key_valid;
  wire key_valid_pre_i_1_n_0;
  wire [3:0]key_value;
  wire [3:0]keyb_col;
  wire [3:0]keyb_row;
  wire p_0_in;
  wire [5:0]p_0_in__0;
  wire [1:0]p_0_out;
  wire [1:0]row_encoded;
  wire valid_col;
  wire valid_col_reg;
  wire [3:0]value;
  wire \NLW_FSM_onehot_row_reg[0]_Q_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_count_reg[16]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[8]_i_1_CO_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'hAAAB)) 
    \FSM_onehot_row[1]_i_1 
       (.I0(\FSM_onehot_row_reg_n_0_[4] ),
        .I1(\FSM_onehot_row_reg_n_0_[3] ),
        .I2(\FSM_onehot_row_reg_n_0_[1] ),
        .I3(\FSM_onehot_row_reg_n_0_[2] ),
        .O(\FSM_onehot_row[1]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_row[4]_i_1 
       (.I0(clk_en),
        .I1(valid_col_reg),
        .O(\FSM_onehot_row[4]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* FSM_ENCODED_STATES = "iSTATE:00010,iSTATE0:00100,iSTATE1:01000,iSTATE2:10000,iSTATE3:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \FSM_onehot_row_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_row[4]_i_1_n_0 ),
        .D(1'b0),
        .Q(\NLW_FSM_onehot_row_reg[0]_Q_UNCONNECTED ),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* FSM_ENCODED_STATES = "iSTATE:00010,iSTATE0:00100,iSTATE1:01000,iSTATE2:10000,iSTATE3:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \FSM_onehot_row_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_row[4]_i_1_n_0 ),
        .D(\FSM_onehot_row[1]_i_1_n_0 ),
        .Q(\FSM_onehot_row_reg_n_0_[1] ),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* FSM_ENCODED_STATES = "iSTATE:00010,iSTATE0:00100,iSTATE1:01000,iSTATE2:10000,iSTATE3:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \FSM_onehot_row_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_row[4]_i_1_n_0 ),
        .D(\FSM_onehot_row_reg_n_0_[1] ),
        .Q(\FSM_onehot_row_reg_n_0_[2] ),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* FSM_ENCODED_STATES = "iSTATE:00010,iSTATE0:00100,iSTATE1:01000,iSTATE2:10000,iSTATE3:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \FSM_onehot_row_reg[3] 
       (.C(clk),
        .CE(\FSM_onehot_row[4]_i_1_n_0 ),
        .D(\FSM_onehot_row_reg_n_0_[2] ),
        .Q(\FSM_onehot_row_reg_n_0_[3] ),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* FSM_ENCODED_STATES = "iSTATE:00010,iSTATE0:00100,iSTATE1:01000,iSTATE2:10000,iSTATE3:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \FSM_onehot_row_reg[4] 
       (.C(clk),
        .CE(\FSM_onehot_row[4]_i_1_n_0 ),
        .D(\FSM_onehot_row_reg_n_0_[3] ),
        .Q(\FSM_onehot_row_reg_n_0_[4] ),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'h80)) 
    clk_en2_i_1
       (.I0(clk_en2_i_2_n_0),
        .I1(clk_en2_i_3_n_0),
        .I2(clk_en2_i_4_n_0),
        .O(p_0_in));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    clk_en2_i_2
       (.I0(count_reg[7]),
        .I1(count_reg[8]),
        .I2(count_reg[5]),
        .I3(count_reg[6]),
        .I4(count_reg[10]),
        .I5(count_reg[9]),
        .O(clk_en2_i_2_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    clk_en2_i_3
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .I2(count_reg[2]),
        .I3(count_reg[4]),
        .I4(count_reg[3]),
        .O(clk_en2_i_3_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    clk_en2_i_4
       (.I0(count_reg[13]),
        .I1(count_reg[14]),
        .I2(count_reg[11]),
        .I3(count_reg[12]),
        .I4(count_reg[16]),
        .I5(count_reg[15]),
        .O(clk_en2_i_4_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    clk_en2_reg
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(clk_en2),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'h80)) 
    clk_en_i_1
       (.I0(clk_en_i_2_n_0),
        .I1(clk_en_i_3_n_0),
        .I2(clk_en_i_4_n_0),
        .O(clk_en_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    clk_en_i_2
       (.I0(count_reg[7]),
        .I1(count_reg[8]),
        .I2(count_reg[5]),
        .I3(count_reg[6]),
        .I4(count_reg[10]),
        .I5(count_reg[9]),
        .O(clk_en_i_2_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    clk_en_i_3
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .I2(count_reg[2]),
        .I3(count_reg[4]),
        .I4(count_reg[3]),
        .O(clk_en_i_3_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    clk_en_i_4
       (.I0(count_reg[13]),
        .I1(count_reg[14]),
        .I2(count_reg[11]),
        .I3(count_reg[12]),
        .I4(count_reg[16]),
        .I5(count_reg[15]),
        .O(clk_en_i_4_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    clk_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(clk_en_i_1_n_0),
        .Q(clk_en),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \col_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(keyb_col[0]),
        .Q(col[0]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \col_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(keyb_col[1]),
        .Q(col[1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \col_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(keyb_col[2]),
        .Q(col[2]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \col_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(keyb_col[3]),
        .Q(col[3]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_2 
       (.I0(count_reg[0]),
        .O(\count[0]_i_2_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_deb[0]_i_1 
       (.I0(count_deb_reg__0[0]),
        .O(p_0_in__0[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_deb[1]_i_1 
       (.I0(count_deb_reg__0[0]),
        .I1(count_deb_reg__0[1]),
        .O(p_0_in__0[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_deb[2]_i_1 
       (.I0(count_deb_reg__0[1]),
        .I1(count_deb_reg__0[0]),
        .I2(count_deb_reg__0[2]),
        .O(p_0_in__0[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_deb[3]_i_1 
       (.I0(count_deb_reg__0[2]),
        .I1(count_deb_reg__0[0]),
        .I2(count_deb_reg__0[1]),
        .I3(count_deb_reg__0[3]),
        .O(p_0_in__0[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_deb[4]_i_1 
       (.I0(count_deb_reg__0[3]),
        .I1(count_deb_reg__0[1]),
        .I2(count_deb_reg__0[0]),
        .I3(count_deb_reg__0[2]),
        .I4(count_deb_reg__0[4]),
        .O(p_0_in__0[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF6FFFFF6F0F0F0F0)) 
    \count_deb[5]_i_1 
       (.I0(key_value[0]),
        .I1(value[0]),
        .I2(\count_deb[5]_i_4_n_0 ),
        .I3(value[1]),
        .I4(key_value[1]),
        .I5(clk_en2),
        .O(\count_deb[5]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_deb[5]_i_2 
       (.I0(\count_deb[5]_i_5_n_0 ),
        .I1(clk_en2),
        .O(count_deb));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_deb[5]_i_3 
       (.I0(count_deb_reg__0[4]),
        .I1(count_deb_reg__0[2]),
        .I2(count_deb_reg__0[0]),
        .I3(count_deb_reg__0[1]),
        .I4(count_deb_reg__0[3]),
        .I5(count_deb_reg__0[5]),
        .O(p_0_in__0[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h7DFFFF7D00000000)) 
    \count_deb[5]_i_4 
       (.I0(valid_col_reg),
        .I1(key_value[3]),
        .I2(value[3]),
        .I3(value[2]),
        .I4(key_value[2]),
        .I5(clk_en2),
        .O(\count_deb[5]_i_4_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \count_deb[5]_i_5 
       (.I0(count_deb_reg__0[4]),
        .I1(count_deb_reg__0[2]),
        .I2(count_deb_reg__0[0]),
        .I3(count_deb_reg__0[1]),
        .I4(count_deb_reg__0[3]),
        .I5(count_deb_reg__0[5]),
        .O(\count_deb[5]_i_5_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_deb_reg[0] 
       (.C(clk),
        .CE(count_deb),
        .D(p_0_in__0[0]),
        .Q(count_deb_reg__0[0]),
        .R(\count_deb[5]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_deb_reg[1] 
       (.C(clk),
        .CE(count_deb),
        .D(p_0_in__0[1]),
        .Q(count_deb_reg__0[1]),
        .R(\count_deb[5]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_deb_reg[2] 
       (.C(clk),
        .CE(count_deb),
        .D(p_0_in__0[2]),
        .Q(count_deb_reg__0[2]),
        .R(\count_deb[5]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_deb_reg[3] 
       (.C(clk),
        .CE(count_deb),
        .D(p_0_in__0[3]),
        .Q(count_deb_reg__0[3]),
        .R(\count_deb[5]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_deb_reg[4] 
       (.C(clk),
        .CE(count_deb),
        .D(p_0_in__0[4]),
        .Q(count_deb_reg__0[4]),
        .R(\count_deb[5]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_deb_reg[5] 
       (.C(clk),
        .CE(count_deb),
        .D(p_0_in__0[5]),
        .Q(count_deb_reg__0[5]),
        .R(\count_deb[5]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_7 ),
        .Q(count_reg[0]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \count_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_1_n_0 ,\NLW_count_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_1_n_4 ,\count_reg[0]_i_1_n_5 ,\count_reg[0]_i_1_n_6 ,\count_reg[0]_i_1_n_7 }),
        .S({count_reg[3:1],\count[0]_i_2_n_0 }));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\NLW_count_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S(count_reg[15:12]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count_reg[15]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(count_reg[16]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO(\NLW_count_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[16]_i_1_O_UNCONNECTED [3:1],\count_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,count_reg[16]}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_6 ),
        .Q(count_reg[1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_5 ),
        .Q(count_reg[2]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_4 ),
        .Q(count_reg[3]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count_reg[4]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_1_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\NLW_count_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S(count_reg[7:4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[5]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\NLW_count_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S(count_reg[11:8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    finish_del_reg
       (.C(clk),
        .CE(1'b1),
        .D(finish),
        .Q(finish_del),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    finish_i_1
       (.I0(count_deb_reg__0[5]),
        .I1(count_deb_reg__0[3]),
        .I2(count_deb_reg__0[1]),
        .I3(count_deb_reg__0[0]),
        .I4(count_deb_reg__0[2]),
        .I5(count_deb_reg__0[4]),
        .O(finish_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    finish_reg
       (.C(clk),
        .CE(1'b1),
        .D(finish_i_1_n_0),
        .Q(finish),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h2)) 
    key_valid_pre_i_1
       (.I0(finish),
        .I1(finish_del),
        .O(key_valid_pre_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    key_valid_pre_reg
       (.C(clk),
        .CE(1'b1),
        .D(key_valid_pre_i_1_n_0),
        .Q(key_valid),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \keyb_row[0]_INST_0 
       (.I0(\FSM_onehot_row_reg_n_0_[2] ),
        .I1(\FSM_onehot_row_reg_n_0_[1] ),
        .I2(\FSM_onehot_row_reg_n_0_[3] ),
        .O(keyb_row[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \keyb_row[1]_INST_0 
       (.I0(\FSM_onehot_row_reg_n_0_[2] ),
        .I1(\FSM_onehot_row_reg_n_0_[1] ),
        .I2(\FSM_onehot_row_reg_n_0_[4] ),
        .O(keyb_row[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \keyb_row[2]_INST_0 
       (.I0(\FSM_onehot_row_reg_n_0_[3] ),
        .I1(\FSM_onehot_row_reg_n_0_[1] ),
        .I2(\FSM_onehot_row_reg_n_0_[4] ),
        .O(keyb_row[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \keyb_row[3]_INST_0 
       (.I0(\FSM_onehot_row_reg_n_0_[3] ),
        .I1(\FSM_onehot_row_reg_n_0_[2] ),
        .I2(\FSM_onehot_row_reg_n_0_[4] ),
        .O(keyb_row[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    valid_col_reg_i_1
       (.I0(col[3]),
        .I1(col[2]),
        .I2(col[0]),
        .I3(col[1]),
        .O(valid_col));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    valid_col_reg_reg
       (.C(clk),
        .CE(clk_en2),
        .D(valid_col),
        .Q(valid_col_reg),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h20AA)) 
    \value[0]_i_1 
       (.I0(col[3]),
        .I1(col[0]),
        .I2(col[1]),
        .I3(col[2]),
        .O(p_0_out[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h2A00)) 
    \value[1]_i_1 
       (.I0(col[3]),
        .I1(col[0]),
        .I2(col[1]),
        .I3(col[2]),
        .O(p_0_out[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \value[2]_i_1 
       (.I0(\FSM_onehot_row_reg_n_0_[2] ),
        .I1(\FSM_onehot_row_reg_n_0_[4] ),
        .O(row_encoded[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \value[3]_i_1 
       (.I0(\FSM_onehot_row_reg_n_0_[3] ),
        .I1(\FSM_onehot_row_reg_n_0_[4] ),
        .O(row_encoded[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \value_del_reg[0] 
       (.C(clk),
        .CE(clk_en2),
        .D(value[0]),
        .Q(key_value[0]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \value_del_reg[1] 
       (.C(clk),
        .CE(clk_en2),
        .D(value[1]),
        .Q(key_value[1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \value_del_reg[2] 
       (.C(clk),
        .CE(clk_en2),
        .D(value[2]),
        .Q(key_value[2]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \value_del_reg[3] 
       (.C(clk),
        .CE(clk_en2),
        .D(value[3]),
        .Q(key_value[3]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \value_reg[0] 
       (.C(clk),
        .CE(clk_en2),
        .D(p_0_out[0]),
        .Q(value[0]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \value_reg[1] 
       (.C(clk),
        .CE(clk_en2),
        .D(p_0_out[1]),
        .Q(value[1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \value_reg[2] 
       (.C(clk),
        .CE(clk_en2),
        .D(row_encoded[0]),
        .Q(value[2]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \value_reg[3] 
       (.C(clk),
        .CE(clk_en2),
        .D(row_encoded[1]),
        .Q(value[3]),
        .R(1'b0));
endmodule

module press_control
   (\in0_reg[3] ,
    key_valid,
    CLK,
    AR);
  output \in0_reg[3] ;
  input key_valid;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire \in0_reg[3] ;
  wire key_valid;
  wire [1:0]p_0_in;
  wire \state[0][0]_i_1_n_0 ;
  wire \state[0][1]_i_1_n_0 ;

  LUT2 #(
    .INIT(4'hB)) 
    \in0[3]_i_4 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .O(\in0_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \state[0][0]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(key_valid),
        .O(\state[0][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \state[0][1]_i_1 
       (.I0(key_valid),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .O(\state[0][1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[0][0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\state[0][0]_i_1_n_0 ),
        .Q(p_0_in[0]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[0][1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\state[0][1]_i_1_n_0 ),
        .Q(p_0_in[1]));
endmodule

module stepmotor
   (clk,
    direction,
    speed,
    phases,
    stop);
  input clk;
  input direction;
  input [1:0]speed;
  output [3:0]phases;
  input stop;

  wire [19:17]D;
  wire \FSM_sequential_st[0]_i_1_n_0 ;
  wire \FSM_sequential_st[1]_i_1_n_0 ;
  wire clear;
  wire clk;
  wire clk_en_i_1_n_0;
  wire clk_en_i_2_n_0;
  wire clk_en_i_3_n_0;
  wire clk_en_i_4_n_0;
  wire clk_en_reg_n_0;
  wire \count[0]_i_10_n_0 ;
  wire \count[0]_i_11_n_0 ;
  wire \count[0]_i_12_n_0 ;
  wire \count[0]_i_5_n_0 ;
  wire \count[0]_i_6_n_0 ;
  wire \count[0]_i_7_n_0 ;
  wire \count[0]_i_8_n_0 ;
  wire \count[0]_i_9_n_0 ;
  wire [19:0]count_reg;
  wire \count_reg[0]_i_3_n_0 ;
  wire \count_reg[0]_i_3_n_4 ;
  wire \count_reg[0]_i_3_n_5 ;
  wire \count_reg[0]_i_3_n_6 ;
  wire \count_reg[0]_i_3_n_7 ;
  wire \count_reg[0]_i_4_n_0 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire direction;
  wire [19:17]p_0_in;
  wire [3:0]phases;
  wire sel;
  wire [1:0]speed;
  wire st;
  wire stop;
  wire [3:0]\NLW_count_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[0]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[0]_i_3_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[0]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[0]_i_4_O_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[8]_i_1_CO_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \D[17]_i_1 
       (.I0(speed[1]),
        .I1(speed[0]),
        .O(p_0_in[17]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \D[18]_i_1 
       (.I0(speed[0]),
        .I1(speed[1]),
        .O(p_0_in[18]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \D[19]_i_1 
       (.I0(speed[0]),
        .I1(speed[1]),
        .O(p_0_in[19]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \D_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[17]),
        .Q(D[17]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \D_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[18]),
        .Q(D[18]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \D_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[19]),
        .Q(D[19]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \FSM_sequential_st[0]_i_1 
       (.I0(st),
        .I1(clk_en_reg_n_0),
        .I2(st),
        .O(\FSM_sequential_st[0]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \FSM_sequential_st[1]_i_1 
       (.I0(direction),
        .I1(phases[1]),
        .I2(st),
        .I3(clk_en_reg_n_0),
        .I4(phases[1]),
        .O(\FSM_sequential_st[1]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* FSM_ENCODED_STATES = "st_0:00,st_1:11,st_2:10,st_3:01" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \FSM_sequential_st_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_st[0]_i_1_n_0 ),
        .Q(st),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* FSM_ENCODED_STATES = "st_0:00,st_1:11,st_2:10,st_3:01" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \FSM_sequential_st_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_st[1]_i_1_n_0 ),
        .Q(phases[1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    clk_en_i_1
       (.I0(clk_en_i_2_n_0),
        .I1(clk_en_i_3_n_0),
        .I2(clk_en_i_4_n_0),
        .I3(count_reg[0]),
        .I4(count_reg[1]),
        .O(clk_en_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    clk_en_i_2
       (.I0(count_reg[16]),
        .I1(count_reg[17]),
        .I2(count_reg[14]),
        .I3(count_reg[15]),
        .I4(count_reg[19]),
        .I5(count_reg[18]),
        .O(clk_en_i_2_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    clk_en_i_3
       (.I0(count_reg[4]),
        .I1(count_reg[5]),
        .I2(count_reg[2]),
        .I3(count_reg[3]),
        .I4(count_reg[7]),
        .I5(count_reg[6]),
        .O(clk_en_i_3_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    clk_en_i_4
       (.I0(count_reg[10]),
        .I1(count_reg[11]),
        .I2(count_reg[8]),
        .I3(count_reg[9]),
        .I4(count_reg[13]),
        .I5(count_reg[12]),
        .O(clk_en_i_4_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    clk_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(clk_en_i_1_n_0),
        .Q(clk_en_reg_n_0),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h8001)) 
    \count[0]_i_10 
       (.I0(count_reg[7]),
        .I1(count_reg[8]),
        .I2(D[17]),
        .I3(count_reg[6]),
        .O(\count[0]_i_10_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h8001)) 
    \count[0]_i_11 
       (.I0(count_reg[4]),
        .I1(count_reg[5]),
        .I2(D[17]),
        .I3(count_reg[3]),
        .O(\count[0]_i_11_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h8001)) 
    \count[0]_i_12 
       (.I0(count_reg[1]),
        .I1(count_reg[2]),
        .I2(D[17]),
        .I3(count_reg[0]),
        .O(\count[0]_i_12_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_2 
       (.I0(stop),
        .O(sel));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \count[0]_i_5 
       (.I0(D[19]),
        .I1(count_reg[19]),
        .I2(D[18]),
        .I3(count_reg[18]),
        .O(\count[0]_i_5_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h8001)) 
    \count[0]_i_6 
       (.I0(count_reg[16]),
        .I1(count_reg[17]),
        .I2(D[17]),
        .I3(count_reg[15]),
        .O(\count[0]_i_6_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h8001)) 
    \count[0]_i_7 
       (.I0(count_reg[13]),
        .I1(count_reg[14]),
        .I2(D[17]),
        .I3(count_reg[12]),
        .O(\count[0]_i_7_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_8 
       (.I0(count_reg[0]),
        .O(\count[0]_i_8_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h8001)) 
    \count[0]_i_9 
       (.I0(count_reg[10]),
        .I1(count_reg[11]),
        .I2(D[17]),
        .I3(count_reg[9]),
        .O(\count[0]_i_9_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[0]_i_3_n_7 ),
        .Q(count_reg[0]),
        .R(clear));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \count_reg[0]_i_1 
       (.CI(\count_reg[0]_i_4_n_0 ),
        .CO({\NLW_count_reg[0]_i_1_CO_UNCONNECTED [3],clear,\NLW_count_reg[0]_i_1_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_count_reg[0]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,\count[0]_i_5_n_0 ,\count[0]_i_6_n_0 ,\count[0]_i_7_n_0 }));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \count_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_3_n_0 ,\NLW_count_reg[0]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_3_n_4 ,\count_reg[0]_i_3_n_5 ,\count_reg[0]_i_3_n_6 ,\count_reg[0]_i_3_n_7 }),
        .S({count_reg[3:1],\count[0]_i_8_n_0 }));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \count_reg[0]_i_4 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_4_n_0 ,\NLW_count_reg[0]_i_4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_count_reg[0]_i_4_O_UNCONNECTED [3:0]),
        .S({\count[0]_i_9_n_0 ,\count[0]_i_10_n_0 ,\count[0]_i_11_n_0 ,\count[0]_i_12_n_0 }));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[10] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]),
        .R(clear));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[11] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]),
        .R(clear));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[12] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]),
        .R(clear));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\NLW_count_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S(count_reg[15:12]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[13] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]),
        .R(clear));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[14] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]),
        .R(clear));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[15] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count_reg[15]),
        .R(clear));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[16] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(count_reg[16]),
        .R(clear));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO(\NLW_count_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S(count_reg[19:16]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[17] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(count_reg[17]),
        .R(clear));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[18] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(count_reg[18]),
        .R(clear));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[19] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(count_reg[19]),
        .R(clear));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[0]_i_3_n_6 ),
        .Q(count_reg[1]),
        .R(clear));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[0]_i_3_n_5 ),
        .Q(count_reg[2]),
        .R(clear));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[0]_i_3_n_4 ),
        .Q(count_reg[3]),
        .R(clear));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count_reg[4]),
        .R(clear));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_3_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\NLW_count_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S(count_reg[7:4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[5]),
        .R(clear));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]),
        .R(clear));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[7] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]),
        .R(clear));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[8] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]),
        .R(clear));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\NLW_count_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S(count_reg[11:8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[9] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]),
        .R(clear));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phases[0]_INST_0 
       (.I0(st),
        .I1(phases[1]),
        .O(phases[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \phases[2]_INST_0 
       (.I0(phases[1]),
        .I1(st),
        .O(phases[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \phases[3]_INST_0 
       (.I0(phases[1]),
        .O(phases[3]));
endmodule

module steppermotor_wrapper
   (clk,
    direction,
    rotation_duration,
    phases,
    start);
  input clk;
  input [1:0]direction;
  input [1:0]rotation_duration;
  output [3:0]phases;
  input start;

  wire clk;
  wire \count[28]_i_10_n_0 ;
  wire \count[28]_i_12_n_0 ;
  wire \count[28]_i_13_n_0 ;
  wire \count[28]_i_15_n_0 ;
  wire \count[28]_i_16_n_0 ;
  wire \count[28]_i_17_n_0 ;
  wire \count[28]_i_18_n_0 ;
  wire \count[28]_i_19_n_0 ;
  wire \count[28]_i_1_n_0 ;
  wire \count[28]_i_21_n_0 ;
  wire \count[28]_i_22_n_0 ;
  wire \count[28]_i_23_n_0 ;
  wire \count[28]_i_24_n_0 ;
  wire \count[28]_i_26_n_0 ;
  wire \count[28]_i_27_n_0 ;
  wire \count[28]_i_28_n_0 ;
  wire \count[28]_i_29_n_0 ;
  wire \count[28]_i_30_n_0 ;
  wire \count[28]_i_31_n_0 ;
  wire \count[28]_i_32_n_0 ;
  wire \count[28]_i_33_n_0 ;
  wire \count[28]_i_34_n_0 ;
  wire \count[28]_i_35_n_0 ;
  wire \count[28]_i_36_n_0 ;
  wire \count[28]_i_37_n_0 ;
  wire \count[28]_i_3_n_0 ;
  wire \count[28]_i_6_n_0 ;
  wire \count[28]_i_7_n_0 ;
  wire \count[28]_i_8_n_0 ;
  wire \count[28]_i_9_n_0 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[16]_i_1_n_0 ;
  wire \count_reg[20]_i_1_n_0 ;
  wire \count_reg[24]_i_1_n_0 ;
  wire \count_reg[28]_i_11_n_0 ;
  wire \count_reg[28]_i_14_n_0 ;
  wire \count_reg[28]_i_20_n_0 ;
  wire \count_reg[28]_i_25_n_0 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire [28:1]data0;
  wire data0__0;
  wire data1;
  wire data2;
  wire [1:0]direction;
  wire direction_motor;
  wire direction_motor_i_1_n_0;
  wire [1:0]direction_saved;
  wire init;
  wire init_i_1_n_0;
  wire [3:0]phases;
  wire [1:0]rotation_duration;
  wire rotation_duration_saved;
  wire \rotation_duration_saved_reg_n_0_[0] ;
  wire \rotation_duration_saved_reg_n_0_[1] ;
  wire [28:0]sel0;
  wire start;
  wire start_del;
  wire [1:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire stop_motor;
  wire stop_motor_i_1_n_0;
  wire [2:0]\NLW_count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[24]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[28]_i_11_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[28]_i_11_O_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[28]_i_14_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[28]_i_14_O_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[28]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[28]_i_20_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[28]_i_20_O_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[28]_i_25_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[28]_i_25_O_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[28]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[28]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[28]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[28]_i_5_O_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[8]_i_1_CO_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(sel0[0]),
        .O(data0__0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hCCF300F3DDF311F3)) 
    \count[28]_i_1 
       (.I0(\count[28]_i_3_n_0 ),
        .I1(state[0]),
        .I2(data1),
        .I3(state[1]),
        .I4(data2),
        .I5(sel0[28]),
        .O(\count[28]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count[28]_i_10 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(sel0[4]),
        .I5(sel0[5]),
        .O(\count[28]_i_10_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \count[28]_i_12 
       (.I0(sel0[27]),
        .I1(sel0[28]),
        .O(\count[28]_i_12_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    \count[28]_i_13 
       (.I0(sel0[24]),
        .I1(sel0[25]),
        .I2(\rotation_duration_saved_reg_n_0_[0] ),
        .I3(sel0[26]),
        .O(\count[28]_i_13_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \count[28]_i_15 
       (.I0(sel0[27]),
        .I1(sel0[28]),
        .O(\count[28]_i_15_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    \count[28]_i_16 
       (.I0(sel0[24]),
        .I1(sel0[25]),
        .I2(\rotation_duration_saved_reg_n_0_[1] ),
        .I3(sel0[26]),
        .O(\count[28]_i_16_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \count[28]_i_17 
       (.I0(sel0[18]),
        .I1(sel0[20]),
        .O(\count[28]_i_17_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \count[28]_i_18 
       (.I0(sel0[6]),
        .I1(sel0[8]),
        .O(\count[28]_i_18_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \count[28]_i_19 
       (.I0(sel0[19]),
        .I1(sel0[17]),
        .I2(sel0[25]),
        .I3(sel0[24]),
        .O(\count[28]_i_19_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h1004)) 
    \count[28]_i_21 
       (.I0(sel0[22]),
        .I1(sel0[23]),
        .I2(\rotation_duration_saved_reg_n_0_[0] ),
        .I3(sel0[21]),
        .O(\count[28]_i_21_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h0024)) 
    \count[28]_i_22 
       (.I0(sel0[18]),
        .I1(sel0[20]),
        .I2(\rotation_duration_saved_reg_n_0_[0] ),
        .I3(sel0[19]),
        .O(\count[28]_i_22_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h0880)) 
    \count[28]_i_23 
       (.I0(sel0[16]),
        .I1(sel0[17]),
        .I2(\rotation_duration_saved_reg_n_0_[0] ),
        .I3(sel0[15]),
        .O(\count[28]_i_23_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \count[28]_i_24 
       (.I0(sel0[14]),
        .I1(sel0[13]),
        .I2(sel0[12]),
        .O(\count[28]_i_24_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h1004)) 
    \count[28]_i_26 
       (.I0(sel0[22]),
        .I1(sel0[23]),
        .I2(\rotation_duration_saved_reg_n_0_[1] ),
        .I3(sel0[21]),
        .O(\count[28]_i_26_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h0024)) 
    \count[28]_i_27 
       (.I0(sel0[18]),
        .I1(sel0[20]),
        .I2(\rotation_duration_saved_reg_n_0_[1] ),
        .I3(sel0[19]),
        .O(\count[28]_i_27_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h0880)) 
    \count[28]_i_28 
       (.I0(sel0[16]),
        .I1(sel0[17]),
        .I2(\rotation_duration_saved_reg_n_0_[1] ),
        .I3(sel0[15]),
        .O(\count[28]_i_28_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \count[28]_i_29 
       (.I0(sel0[14]),
        .I1(sel0[13]),
        .I2(sel0[12]),
        .O(\count[28]_i_29_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count[28]_i_3 
       (.I0(\count[28]_i_6_n_0 ),
        .I1(\count[28]_i_7_n_0 ),
        .I2(\count[28]_i_8_n_0 ),
        .I3(\count[28]_i_9_n_0 ),
        .I4(\count[28]_i_10_n_0 ),
        .O(\count[28]_i_3_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h8040)) 
    \count[28]_i_30 
       (.I0(\rotation_duration_saved_reg_n_0_[0] ),
        .I1(sel0[10]),
        .I2(sel0[9]),
        .I3(sel0[11]),
        .O(\count[28]_i_30_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \count[28]_i_31 
       (.I0(sel0[6]),
        .I1(sel0[8]),
        .I2(\rotation_duration_saved_reg_n_0_[0] ),
        .I3(sel0[7]),
        .O(\count[28]_i_31_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \count[28]_i_32 
       (.I0(sel0[3]),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .O(\count[28]_i_32_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \count[28]_i_33 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .O(\count[28]_i_33_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h8040)) 
    \count[28]_i_34 
       (.I0(\rotation_duration_saved_reg_n_0_[1] ),
        .I1(sel0[10]),
        .I2(sel0[9]),
        .I3(sel0[11]),
        .O(\count[28]_i_34_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \count[28]_i_35 
       (.I0(sel0[6]),
        .I1(sel0[8]),
        .I2(\rotation_duration_saved_reg_n_0_[1] ),
        .I3(sel0[7]),
        .O(\count[28]_i_35_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \count[28]_i_36 
       (.I0(sel0[3]),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .O(\count[28]_i_36_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \count[28]_i_37 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .O(\count[28]_i_37_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count[28]_i_6 
       (.I0(sel0[13]),
        .I1(sel0[14]),
        .I2(sel0[26]),
        .I3(sel0[27]),
        .I4(\count[28]_i_17_n_0 ),
        .I5(\count[28]_i_18_n_0 ),
        .O(\count[28]_i_6_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \count[28]_i_7 
       (.I0(sel0[16]),
        .I1(sel0[15]),
        .I2(sel0[7]),
        .I3(sel0[12]),
        .I4(\count[28]_i_19_n_0 ),
        .O(\count[28]_i_7_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \count[28]_i_8 
       (.I0(sel0[10]),
        .I1(sel0[9]),
        .I2(sel0[11]),
        .O(\count[28]_i_8_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \count[28]_i_9 
       (.I0(sel0[23]),
        .I1(sel0[22]),
        .I2(sel0[21]),
        .O(\count[28]_i_9_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(data0__0),
        .Q(sel0[0]),
        .R(\count[28]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[10]),
        .Q(sel0[10]),
        .R(\count[28]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[11]),
        .Q(sel0[11]),
        .R(\count[28]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[12]),
        .Q(sel0[12]),
        .R(\count[28]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\NLW_count_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(sel0[12:9]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[13]),
        .Q(sel0[13]),
        .R(\count[28]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[14]),
        .Q(sel0[14]),
        .R(\count[28]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[15]),
        .Q(sel0[15]),
        .R(\count[28]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[16]),
        .Q(sel0[16]),
        .R(\count[28]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_0 ,\NLW_count_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(sel0[16:13]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[17]),
        .Q(sel0[17]),
        .R(\count[28]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[18]),
        .Q(sel0[18]),
        .R(\count[28]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[19]),
        .Q(sel0[19]),
        .R(\count[28]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[1]),
        .Q(sel0[1]),
        .R(\count[28]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[20]),
        .Q(sel0[20]),
        .R(\count[28]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \count_reg[20]_i_1 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CO({\count_reg[20]_i_1_n_0 ,\NLW_count_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(sel0[20:17]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[21]),
        .Q(sel0[21]),
        .R(\count[28]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[22]),
        .Q(sel0[22]),
        .R(\count[28]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[23]),
        .Q(sel0[23]),
        .R(\count[28]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[24]),
        .Q(sel0[24]),
        .R(\count[28]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \count_reg[24]_i_1 
       (.CI(\count_reg[20]_i_1_n_0 ),
        .CO({\count_reg[24]_i_1_n_0 ,\NLW_count_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(sel0[24:21]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[25]),
        .Q(sel0[25]),
        .R(\count[28]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[26]),
        .Q(sel0[26]),
        .R(\count[28]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[27]),
        .Q(sel0[27]),
        .R(\count[28]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[28]),
        .Q(sel0[28]),
        .R(\count[28]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \count_reg[28]_i_11 
       (.CI(\count_reg[28]_i_20_n_0 ),
        .CO({\count_reg[28]_i_11_n_0 ,\NLW_count_reg[28]_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_count_reg[28]_i_11_O_UNCONNECTED [3:0]),
        .S({\count[28]_i_21_n_0 ,\count[28]_i_22_n_0 ,\count[28]_i_23_n_0 ,\count[28]_i_24_n_0 }));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \count_reg[28]_i_14 
       (.CI(\count_reg[28]_i_25_n_0 ),
        .CO({\count_reg[28]_i_14_n_0 ,\NLW_count_reg[28]_i_14_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_count_reg[28]_i_14_O_UNCONNECTED [3:0]),
        .S({\count[28]_i_26_n_0 ,\count[28]_i_27_n_0 ,\count[28]_i_28_n_0 ,\count[28]_i_29_n_0 }));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \count_reg[28]_i_2 
       (.CI(\count_reg[24]_i_1_n_0 ),
        .CO(\NLW_count_reg[28]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(sel0[28:25]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \count_reg[28]_i_20 
       (.CI(1'b0),
        .CO({\count_reg[28]_i_20_n_0 ,\NLW_count_reg[28]_i_20_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_count_reg[28]_i_20_O_UNCONNECTED [3:0]),
        .S({\count[28]_i_30_n_0 ,\count[28]_i_31_n_0 ,\count[28]_i_32_n_0 ,\count[28]_i_33_n_0 }));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \count_reg[28]_i_25 
       (.CI(1'b0),
        .CO({\count_reg[28]_i_25_n_0 ,\NLW_count_reg[28]_i_25_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_count_reg[28]_i_25_O_UNCONNECTED [3:0]),
        .S({\count[28]_i_34_n_0 ,\count[28]_i_35_n_0 ,\count[28]_i_36_n_0 ,\count[28]_i_37_n_0 }));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \count_reg[28]_i_4 
       (.CI(\count_reg[28]_i_11_n_0 ),
        .CO({\NLW_count_reg[28]_i_4_CO_UNCONNECTED [3:2],data1,\NLW_count_reg[28]_i_4_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_count_reg[28]_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\count[28]_i_12_n_0 ,\count[28]_i_13_n_0 }));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \count_reg[28]_i_5 
       (.CI(\count_reg[28]_i_14_n_0 ),
        .CO({\NLW_count_reg[28]_i_5_CO_UNCONNECTED [3:2],data2,\NLW_count_reg[28]_i_5_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_count_reg[28]_i_5_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\count[28]_i_15_n_0 ,\count[28]_i_16_n_0 }));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[2]),
        .Q(sel0[2]),
        .R(\count[28]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[3]),
        .Q(sel0[3]),
        .R(\count[28]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[4]),
        .Q(sel0[4]),
        .R(\count[28]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \count_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[4]_i_1_n_0 ,\NLW_count_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(sel0[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(sel0[4:1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[5]),
        .Q(sel0[5]),
        .R(\count[28]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[6]),
        .Q(sel0[6]),
        .R(\count[28]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[7]),
        .Q(sel0[7]),
        .R(\count[28]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[8]),
        .Q(sel0[8]),
        .R(\count[28]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\NLW_count_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(sel0[8:5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[9]),
        .Q(sel0[9]),
        .R(\count[28]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    direction_motor_i_1
       (.I0(direction_saved[1]),
        .I1(state[1]),
        .I2(direction_saved[0]),
        .I3(state[0]),
        .I4(direction_motor),
        .O(direction_motor_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    direction_motor_reg
       (.C(clk),
        .CE(1'b1),
        .D(direction_motor_i_1_n_0),
        .Q(direction_motor),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \direction_saved_reg[0] 
       (.C(clk),
        .CE(rotation_duration_saved),
        .D(direction[0]),
        .Q(direction_saved[0]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \direction_saved_reg[1] 
       (.C(clk),
        .CE(rotation_duration_saved),
        .D(direction[1]),
        .Q(direction_saved[1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h2)) 
    init_i_1
       (.I0(start),
        .I1(start_del),
        .O(init_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    init_reg
       (.C(clk),
        .CE(1'b1),
        .D(init_i_1_n_0),
        .Q(init),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \rotation_duration_saved[1]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(rotation_duration_saved));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \rotation_duration_saved_reg[0] 
       (.C(clk),
        .CE(rotation_duration_saved),
        .D(rotation_duration[0]),
        .Q(\rotation_duration_saved_reg_n_0_[0] ),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \rotation_duration_saved_reg[1] 
       (.C(clk),
        .CE(rotation_duration_saved),
        .D(rotation_duration[1]),
        .Q(\rotation_duration_saved_reg_n_0_[1] ),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    start_del_reg
       (.C(clk),
        .CE(1'b1),
        .D(start),
        .Q(start_del),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h0000FFFF11F011F0)) 
    \state[0]_i_1 
       (.I0(\count[28]_i_3_n_0 ),
        .I1(sel0[28]),
        .I2(init),
        .I3(state[1]),
        .I4(\state[1]_i_2_n_0 ),
        .I5(state[0]),
        .O(\state[0]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \state[1]_i_1 
       (.I0(\state[1]_i_2_n_0 ),
        .I1(state[1]),
        .I2(state[0]),
        .O(\state[1]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[1]_i_2 
       (.I0(data2),
        .I1(state[1]),
        .I2(data1),
        .O(\state[1]_i_2_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  stepmotor stepmotor_inst0
       (.clk(clk),
        .direction(direction_motor),
        .phases(phases),
        .speed({1'b1,1'b1}),
        .stop(stop_motor));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    stop_motor_i_1
       (.I0(state[0]),
        .O(stop_motor_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    stop_motor_reg
       (.C(clk),
        .CE(1'b1),
        .D(stop_motor_i_1_n_0),
        .Q(stop_motor),
        .R(1'b0));
endmodule

(* NotValidForBitStream *)
module top
   (a,
    b,
    c,
    d,
    e,
    f,
    g,
    dp,
    an,
    phases,
    keyb_row,
    out,
    keyb_col,
    start,
    clk,
    reset);
  output a;
  output b;
  output c;
  output d;
  output e;
  output f;
  output g;
  output dp;
  output [3:0]an;
  output [3:0]phases;
  output [3:0]keyb_row;
  output [3:0]out;
  input [3:0]keyb_col;
  input start;
  input clk;
  input reset;

  wire a;
  wire a_OBUF;
  wire [3:0]an;
  wire [3:0]an_OBUF;
  wire b;
  wire b_OBUF;
  wire c;
  wire c_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire d;
  wire d_OBUF;
  wire dp;
  wire dp_OBUF;
  wire e;
  wire e_OBUF;
  wire f;
  wire f_OBUF;
  wire g;
  wire g_OBUF;
  wire [3:0]in0;
  wire key_valid;
  wire [3:0]key_value;
  wire [3:0]keyb_col;
  wire [3:0]keyb_col_IBUF;
  wire [3:0]keyb_row;
  wire [3:0]keyb_row_OBUF;
  wire [3:0]out;
  wire [3:0]phases;
  wire [3:0]phases_OBUF;
  wire point;
  wire press_cont_inst0_n_0;
  wire reset;
  wire reset_IBUF;
  wire start;
  wire start_IBUF;

  (* N = "18" *) 
  SevSeg_4digit SevSeg_4digit_inst0
       (.a(a_OBUF),
        .an(an_OBUF),
        .b(b_OBUF),
        .c(c_OBUF),
        .clk(clk_IBUF_BUFG),
        .d(d_OBUF),
        .dp(dp_OBUF),
        .e(e_OBUF),
        .f(f_OBUF),
        .g(g_OBUF),
        .in0({1'b0,1'b0,1'b0,1'b0}),
        .in1({1'b0,1'b0,1'b0,1'b0}),
        .in2({1'b0,1'b0,1'b0,1'b0}),
        .in3(in0));
  OBUF a_OBUF_inst
       (.I(a_OBUF),
        .O(a));
  OBUF \an_OBUF[0]_inst 
       (.I(an_OBUF[0]),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(an_OBUF[1]),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(an_OBUF[2]),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(an_OBUF[3]),
        .O(an[3]));
  OBUF b_OBUF_inst
       (.I(b_OBUF),
        .O(b));
  OBUF c_OBUF_inst
       (.I(c_OBUF),
        .O(c));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  Comperator_cont comp_cont_inst0
       (.AR(reset_IBUF),
        .CLK(clk_IBUF_BUFG),
        .Q(in0),
        .point(point),
        .\state_reg[0][1] (press_cont_inst0_n_0));
  Comperator comp_inst0
       (.CLK(clk_IBUF_BUFG),
        .key_value(key_value),
        .point(point));
  OBUF d_OBUF_inst
       (.I(d_OBUF),
        .O(d));
  OBUF dp_OBUF_inst
       (.I(dp_OBUF),
        .O(dp));
  OBUF e_OBUF_inst
       (.I(e_OBUF),
        .O(e));
  OBUF f_OBUF_inst
       (.I(f_OBUF),
        .O(f));
  OBUF g_OBUF_inst
       (.I(g_OBUF),
        .O(g));
  IBUF \keyb_col_IBUF[0]_inst 
       (.I(keyb_col[0]),
        .O(keyb_col_IBUF[0]));
  IBUF \keyb_col_IBUF[1]_inst 
       (.I(keyb_col[1]),
        .O(keyb_col_IBUF[1]));
  IBUF \keyb_col_IBUF[2]_inst 
       (.I(keyb_col[2]),
        .O(keyb_col_IBUF[2]));
  IBUF \keyb_col_IBUF[3]_inst 
       (.I(keyb_col[3]),
        .O(keyb_col_IBUF[3]));
  OBUF \keyb_row_OBUF[0]_inst 
       (.I(keyb_row_OBUF[0]),
        .O(keyb_row[0]));
  OBUF \keyb_row_OBUF[1]_inst 
       (.I(keyb_row_OBUF[1]),
        .O(keyb_row[1]));
  OBUF \keyb_row_OBUF[2]_inst 
       (.I(keyb_row_OBUF[2]),
        .O(keyb_row[2]));
  OBUF \keyb_row_OBUF[3]_inst 
       (.I(keyb_row_OBUF[3]),
        .O(keyb_row[3]));
  (* M = "6" *) 
  (* N = "17" *) 
  keypad4X4 keypad4X4_inst0
       (.clk(clk_IBUF_BUFG),
        .key_valid(key_valid),
        .key_value(key_value),
        .keyb_col(keyb_col_IBUF),
        .keyb_row(keyb_row_OBUF));
  OBUF \out_OBUF[0]_inst 
       (.I(1'b0),
        .O(out[0]));
  OBUF \out_OBUF[1]_inst 
       (.I(1'b0),
        .O(out[1]));
  OBUF \out_OBUF[2]_inst 
       (.I(1'b0),
        .O(out[2]));
  OBUF \out_OBUF[3]_inst 
       (.I(1'b0),
        .O(out[3]));
  OBUF \phases_OBUF[0]_inst 
       (.I(phases_OBUF[0]),
        .O(phases[0]));
  OBUF \phases_OBUF[1]_inst 
       (.I(phases_OBUF[1]),
        .O(phases[1]));
  OBUF \phases_OBUF[2]_inst 
       (.I(phases_OBUF[2]),
        .O(phases[2]));
  OBUF \phases_OBUF[3]_inst 
       (.I(phases_OBUF[3]),
        .O(phases[3]));
  press_control press_cont_inst0
       (.AR(reset_IBUF),
        .CLK(clk_IBUF_BUFG),
        .\in0_reg[3] (press_cont_inst0_n_0),
        .key_valid(key_valid));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF start_IBUF_inst
       (.I(start),
        .O(start_IBUF));
  steppermotor_wrapper steppermotor_wrapper_inst0
       (.clk(clk_IBUF_BUFG),
        .direction({1'b0,1'b0}),
        .phases(phases_OBUF),
        .rotation_duration({1'b0,1'b0}),
        .start(start_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
