//
// Generated by Bluespec Compiler, version 2021.07-3-g8227dc97 (build 8227dc97)
//
// On Fri Sep  3 12:08:36 PDT 2021
//
//
// Ports:
// Name                         I/O  size props
// RDY_ma_core_req                O     1 const
// mv_core_resp                   O    33 reg
// RDY_mv_core_resp               O     1 const
// mv_counter_interrupt           O     8
// RDY_mv_counter_interrupt       O     1 const
// RDY_ma_events                  O     1 const
// CLK                            I     1 clock
// RST_N                          I     1 reset
// ma_core_req_req                I    48
// ma_mcountinhibit_mcountinhibit_val  I     8
// ma_mhpminterrupten_v           I     8
// ma_events_e                    I    30
// EN_ma_core_req                 I     1
// EN_ma_events                   I     1
//
// Combinational paths from inputs to outputs:
//   (ma_mcountinhibit_mcountinhibit_val,
//    ma_mhpminterrupten_v) -> mv_counter_interrupt
//
//
// module : implementing read and write methods for group - 5 csrs and related side band            access
//
// Comments on the inlined module `wr_events':
//   wire : whenever an event described in the Events_grp4 occurs, the corresponding bit in             this wire is set for the corresponding counter assigned to be incremented
//
// Comments on the inlined module `wr_mcountinhibit':
//   wire : to hold the current derived value of mcountinhibit
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
  `define BSV_ASSIGNMENT_DELAY
`endif

`ifdef BSV_POSITIVE_RESET
  `define BSV_RESET_VALUE 1'b1
  `define BSV_RESET_EDGE posedge
`else
  `define BSV_RESET_VALUE 1'b0
  `define BSV_RESET_EDGE negedge
`endif

module mk_csr_grp7(CLK,
		   RST_N,

		   ma_core_req_req,
		   EN_ma_core_req,
		   RDY_ma_core_req,

		   mv_core_resp,
		   RDY_mv_core_resp,

		   ma_mcountinhibit_mcountinhibit_val,

		   ma_mhpminterrupten_v,

		   mv_counter_interrupt,
		   RDY_mv_counter_interrupt,

		   ma_events_e,
		   EN_ma_events,
		   RDY_ma_events);
  input  CLK;
  input  RST_N;

  // action method ma_core_req
  input  [47 : 0] ma_core_req_req;
  input  EN_ma_core_req;
  output RDY_ma_core_req;

  // value method mv_core_resp
  output [32 : 0] mv_core_resp;
  output RDY_mv_core_resp;

  // action method ma_mcountinhibit
  input  [7 : 0] ma_mcountinhibit_mcountinhibit_val;

  // action method ma_mhpminterrupten
  input  [7 : 0] ma_mhpminterrupten_v;

  // value method mv_counter_interrupt
  output [7 : 0] mv_counter_interrupt;
  output RDY_mv_counter_interrupt;

  // action method ma_events
  input  [29 : 0] ma_events_e;
  input  EN_ma_events;
  output RDY_ma_events;

  // signals for module outputs
  wire [32 : 0] mv_core_resp;
  wire [7 : 0] mv_counter_interrupt;
  wire RDY_ma_core_req,
       RDY_ma_events,
       RDY_mv_core_resp,
       RDY_mv_counter_interrupt;

  // inlined wires
  reg [32 : 0] rg_resp_to_core_1_wget;
  wire [65 : 0] csr_op_arg_wget;

  // register mhpmcounter_0
  reg [63 : 0] mhpmcounter_0;
  wire [63 : 0] mhpmcounter_0_D_IN;
  wire mhpmcounter_0_EN;

  // register mhpmcounter_1
  reg [63 : 0] mhpmcounter_1;
  wire [63 : 0] mhpmcounter_1_D_IN;
  wire mhpmcounter_1_EN;

  // register mhpmcounter_2
  reg [63 : 0] mhpmcounter_2;
  wire [63 : 0] mhpmcounter_2_D_IN;
  wire mhpmcounter_2_EN;

  // register mhpmcounter_3
  reg [63 : 0] mhpmcounter_3;
  wire [63 : 0] mhpmcounter_3_D_IN;
  wire mhpmcounter_3_EN;

  // register mhpmcounter_4
  reg [63 : 0] mhpmcounter_4;
  wire [63 : 0] mhpmcounter_4_D_IN;
  wire mhpmcounter_4_EN;

  // register mhpmcounter_5
  reg [63 : 0] mhpmcounter_5;
  wire [63 : 0] mhpmcounter_5_D_IN;
  wire mhpmcounter_5_EN;

  // register mhpmcounter_6
  reg [63 : 0] mhpmcounter_6;
  wire [63 : 0] mhpmcounter_6_D_IN;
  wire mhpmcounter_6_EN;

  // register mhpmcounter_7
  reg [63 : 0] mhpmcounter_7;
  wire [63 : 0] mhpmcounter_7_D_IN;
  wire mhpmcounter_7_EN;

  // register mhpmevent_0
  reg [31 : 0] mhpmevent_0;
  wire [31 : 0] mhpmevent_0_D_IN;
  wire mhpmevent_0_EN;

  // register mhpmevent_1
  reg [31 : 0] mhpmevent_1;
  wire [31 : 0] mhpmevent_1_D_IN;
  wire mhpmevent_1_EN;

  // register mhpmevent_2
  reg [31 : 0] mhpmevent_2;
  wire [31 : 0] mhpmevent_2_D_IN;
  wire mhpmevent_2_EN;

  // register mhpmevent_3
  reg [31 : 0] mhpmevent_3;
  wire [31 : 0] mhpmevent_3_D_IN;
  wire mhpmevent_3_EN;

  // register mhpmevent_4
  reg [31 : 0] mhpmevent_4;
  wire [31 : 0] mhpmevent_4_D_IN;
  wire mhpmevent_4_EN;

  // register mhpmevent_5
  reg [31 : 0] mhpmevent_5;
  wire [31 : 0] mhpmevent_5_D_IN;
  wire mhpmevent_5_EN;

  // register mhpmevent_6
  reg [31 : 0] mhpmevent_6;
  wire [31 : 0] mhpmevent_6_D_IN;
  wire mhpmevent_6_EN;

  // register mhpmevent_7
  reg [31 : 0] mhpmevent_7;
  wire [31 : 0] mhpmevent_7_D_IN;
  wire mhpmevent_7_EN;

  // register rg_resp_to_core
  // reg : register to hold the response of this group for a csr operation request
  reg [32 : 0] rg_resp_to_core;
  wire [32 : 0] rg_resp_to_core_D_IN;
  wire rg_resp_to_core_EN;

  // rule scheduling signals
  wire CAN_FIRE_RL_increment_perfmonitors,
       CAN_FIRE_RL_rg_resp_to_core__dreg_update,
       CAN_FIRE_ma_core_req,
       CAN_FIRE_ma_events,
       CAN_FIRE_ma_mcountinhibit,
       CAN_FIRE_ma_mhpminterrupten,
       WILL_FIRE_RL_increment_perfmonitors,
       WILL_FIRE_RL_rg_resp_to_core__dreg_update,
       WILL_FIRE_ma_core_req,
       WILL_FIRE_ma_events,
       WILL_FIRE_ma_mcountinhibit,
       WILL_FIRE_ma_mhpminterrupten;

  // inputs to muxes for submodule ports
  wire [63 : 0] MUX_mhpmcounter_0_write_1__VAL_1,
		MUX_mhpmcounter_0_write_1__VAL_2,
		MUX_mhpmcounter_1_write_1__VAL_1,
		MUX_mhpmcounter_1_write_1__VAL_2,
		MUX_mhpmcounter_2_write_1__VAL_1,
		MUX_mhpmcounter_2_write_1__VAL_2,
		MUX_mhpmcounter_3_write_1__VAL_1,
		MUX_mhpmcounter_3_write_1__VAL_2,
		MUX_mhpmcounter_4_write_1__VAL_1,
		MUX_mhpmcounter_4_write_1__VAL_2,
		MUX_mhpmcounter_5_write_1__VAL_1,
		MUX_mhpmcounter_5_write_1__VAL_2,
		MUX_mhpmcounter_6_write_1__VAL_1,
		MUX_mhpmcounter_6_write_1__VAL_2,
		MUX_mhpmcounter_7_write_1__VAL_1,
		MUX_mhpmcounter_7_write_1__VAL_2;
  wire MUX_mhpmcounter_0_write_1__SEL_1,
       MUX_mhpmcounter_1_write_1__SEL_1,
       MUX_mhpmcounter_2_write_1__SEL_1,
       MUX_mhpmcounter_3_write_1__SEL_1,
       MUX_mhpmcounter_4_write_1__SEL_1,
       MUX_mhpmcounter_5_write_1__SEL_1,
       MUX_mhpmcounter_6_write_1__SEL_1,
       MUX_mhpmcounter_7_write_1__SEL_1;

  // remaining internal signals
  reg [31 : 0] IF_ma_core_req_req_BITS_47_TO_36_38_EQ_0xB18_3_ETC___d273,
	       x_wget__h411;
  wire [63 : 0] x__h10123,
		x__h10461,
		x__h10799,
		x__h5728,
		x__h6067,
		x__h6405,
		x__h6743,
		x__h7081,
		x__h7419,
		x__h7757,
		x__h8095,
		x__h8433,
		x__h8771,
		x__h9109,
		x__h9447,
		x__h9785;
  wire [31 : 0] x__h12903, x_wget_fst__h5542, x_wget_snd_fst__h5627;
  wire [30 : 0] bs__h3354;
  wire [7 : 0] IF_NOT_mhpmevent_0_EQ_0_0_1_AND_mhpmcounter_0__ETC__q1;
  wire [1 : 0] x_wget_snd_snd__h5628;
  wire NOT_mhpmevent_0_EQ_0_0_1_AND_mhpmcounter_0_2_E_ETC___d23,
       mhpmevent_1_3_EQ_0_4_OR_NOT_mhpmcounter_1_5_EQ_ETC___d43,
       mhpmevent_2_8_EQ_0_9_OR_NOT_mhpmcounter_2_0_EQ_ETC___d58,
       mhpmevent_3_3_EQ_0_4_OR_NOT_mhpmcounter_3_5_EQ_ETC___d73,
       mhpmevent_4_8_EQ_0_9_OR_NOT_mhpmcounter_4_0_EQ_ETC___d88,
       mhpmevent_5_3_EQ_0_4_OR_NOT_mhpmcounter_5_5_EQ_ETC___d103,
       mhpmevent_6_08_EQ_0_09_OR_NOT_mhpmcounter_6_10_ETC___d118,
       mhpmevent_7_23_EQ_0_24_OR_NOT_mhpmcounter_7_25_ETC___d133,
       x__h3351,
       x__h3494,
       x__h3630,
       x__h3766,
       x__h3902,
       x__h4038,
       x__h4174,
       x__h4309;

  // action method ma_core_req
  assign RDY_ma_core_req = 1'd1 ;
  assign CAN_FIRE_ma_core_req = 1'd1 ;
  assign WILL_FIRE_ma_core_req = EN_ma_core_req ;

  // value method mv_core_resp
  assign mv_core_resp = rg_resp_to_core ;
  assign RDY_mv_core_resp = 1'd1 ;

  // action method ma_mcountinhibit
  assign CAN_FIRE_ma_mcountinhibit = 1'd1 ;
  assign WILL_FIRE_ma_mcountinhibit = 1'd1 ;

  // action method ma_mhpminterrupten
  assign CAN_FIRE_ma_mhpminterrupten = 1'd1 ;
  assign WILL_FIRE_ma_mhpminterrupten = 1'd1 ;

  // value method mv_counter_interrupt
  assign mv_counter_interrupt =
	     { mhpmevent_7 != 32'd0 && mhpmcounter_7 == 64'd0 &&
	       !ma_mcountinhibit_mcountinhibit_val[7] &&
	       ma_mhpminterrupten_v[7],
	       mhpmevent_6 != 32'd0 && mhpmcounter_6 == 64'd0 &&
	       !ma_mcountinhibit_mcountinhibit_val[6] &&
	       ma_mhpminterrupten_v[6],
	       mhpmevent_5 != 32'd0 && mhpmcounter_5 == 64'd0 &&
	       !ma_mcountinhibit_mcountinhibit_val[5] &&
	       ma_mhpminterrupten_v[5],
	       mhpmevent_4 != 32'd0 && mhpmcounter_4 == 64'd0 &&
	       !ma_mcountinhibit_mcountinhibit_val[4] &&
	       ma_mhpminterrupten_v[4],
	       mhpmevent_3 != 32'd0 && mhpmcounter_3 == 64'd0 &&
	       !ma_mcountinhibit_mcountinhibit_val[3] &&
	       ma_mhpminterrupten_v[3],
	       mhpmevent_2 != 32'd0 && mhpmcounter_2 == 64'd0 &&
	       !ma_mcountinhibit_mcountinhibit_val[2] &&
	       ma_mhpminterrupten_v[2],
	       mhpmevent_1 != 32'd0 && mhpmcounter_1 == 64'd0 &&
	       !ma_mcountinhibit_mcountinhibit_val[1] &&
	       ma_mhpminterrupten_v[1],
	       IF_NOT_mhpmevent_0_EQ_0_0_1_AND_mhpmcounter_0__ETC__q1[0] } ;
  assign RDY_mv_counter_interrupt = 1'b1 ;

  // action method ma_events
  assign RDY_ma_events = 1'd1 ;
  assign CAN_FIRE_ma_events = 1'd1 ;
  assign WILL_FIRE_ma_events = EN_ma_events ;

  // rule RL_increment_perfmonitors
  //   rule : the rule increments the performance monitoring counters
  assign CAN_FIRE_RL_increment_perfmonitors = EN_ma_events ;
  assign WILL_FIRE_RL_increment_perfmonitors =
	     EN_ma_events && !EN_ma_core_req ;

  // rule RL_rg_resp_to_core__dreg_update
  assign CAN_FIRE_RL_rg_resp_to_core__dreg_update = 1'd1 ;
  assign WILL_FIRE_RL_rg_resp_to_core__dreg_update = 1'd1 ;

  // inputs to muxes for submodule ports
  assign MUX_mhpmcounter_0_write_1__SEL_1 =
	     WILL_FIRE_RL_increment_perfmonitors &&
	     !IF_NOT_mhpmevent_0_EQ_0_0_1_AND_mhpmcounter_0__ETC__q1[0] ;
  assign MUX_mhpmcounter_1_write_1__SEL_1 =
	     WILL_FIRE_RL_increment_perfmonitors &&
	     mhpmevent_1_3_EQ_0_4_OR_NOT_mhpmcounter_1_5_EQ_ETC___d43 ;
  assign MUX_mhpmcounter_2_write_1__SEL_1 =
	     WILL_FIRE_RL_increment_perfmonitors &&
	     mhpmevent_2_8_EQ_0_9_OR_NOT_mhpmcounter_2_0_EQ_ETC___d58 ;
  assign MUX_mhpmcounter_3_write_1__SEL_1 =
	     WILL_FIRE_RL_increment_perfmonitors &&
	     mhpmevent_3_3_EQ_0_4_OR_NOT_mhpmcounter_3_5_EQ_ETC___d73 ;
  assign MUX_mhpmcounter_4_write_1__SEL_1 =
	     WILL_FIRE_RL_increment_perfmonitors &&
	     mhpmevent_4_8_EQ_0_9_OR_NOT_mhpmcounter_4_0_EQ_ETC___d88 ;
  assign MUX_mhpmcounter_5_write_1__SEL_1 =
	     WILL_FIRE_RL_increment_perfmonitors &&
	     mhpmevent_5_3_EQ_0_4_OR_NOT_mhpmcounter_5_5_EQ_ETC___d103 ;
  assign MUX_mhpmcounter_6_write_1__SEL_1 =
	     WILL_FIRE_RL_increment_perfmonitors &&
	     mhpmevent_6_08_EQ_0_09_OR_NOT_mhpmcounter_6_10_ETC___d118 ;
  assign MUX_mhpmcounter_7_write_1__SEL_1 =
	     WILL_FIRE_RL_increment_perfmonitors &&
	     mhpmevent_7_23_EQ_0_24_OR_NOT_mhpmcounter_7_25_ETC___d133 ;
  assign MUX_mhpmcounter_0_write_1__VAL_1 =
	     mhpmcounter_0 + { 63'd0, x__h3351 } ;
  assign MUX_mhpmcounter_0_write_1__VAL_2 =
	     (ma_core_req_req[47:36] == 12'hB18) ? x__h5728 : x__h8433 ;
  assign MUX_mhpmcounter_1_write_1__VAL_1 =
	     mhpmcounter_1 + { 63'd0, x__h3494 } ;
  assign MUX_mhpmcounter_1_write_1__VAL_2 =
	     (ma_core_req_req[47:36] == 12'hB19) ? x__h6067 : x__h8771 ;
  assign MUX_mhpmcounter_2_write_1__VAL_1 =
	     mhpmcounter_2 + { 63'd0, x__h3630 } ;
  assign MUX_mhpmcounter_2_write_1__VAL_2 =
	     (ma_core_req_req[47:36] == 12'hB1A) ? x__h6405 : x__h9109 ;
  assign MUX_mhpmcounter_3_write_1__VAL_1 =
	     mhpmcounter_3 + { 63'd0, x__h3766 } ;
  assign MUX_mhpmcounter_3_write_1__VAL_2 =
	     (ma_core_req_req[47:36] == 12'hB1B) ? x__h6743 : x__h9447 ;
  assign MUX_mhpmcounter_4_write_1__VAL_1 =
	     mhpmcounter_4 + { 63'd0, x__h3902 } ;
  assign MUX_mhpmcounter_4_write_1__VAL_2 =
	     (ma_core_req_req[47:36] == 12'hB1C) ? x__h7081 : x__h9785 ;
  assign MUX_mhpmcounter_5_write_1__VAL_1 =
	     mhpmcounter_5 + { 63'd0, x__h4038 } ;
  assign MUX_mhpmcounter_5_write_1__VAL_2 =
	     (ma_core_req_req[47:36] == 12'hB1D) ? x__h7419 : x__h10123 ;
  assign MUX_mhpmcounter_6_write_1__VAL_1 =
	     mhpmcounter_6 + { 63'd0, x__h4174 } ;
  assign MUX_mhpmcounter_6_write_1__VAL_2 =
	     (ma_core_req_req[47:36] == 12'hB1E) ? x__h7757 : x__h10461 ;
  assign MUX_mhpmcounter_7_write_1__VAL_1 =
	     mhpmcounter_7 + { 63'd0, x__h4309 } ;
  assign MUX_mhpmcounter_7_write_1__VAL_2 =
	     (ma_core_req_req[47:36] == 12'hB1F) ? x__h8095 : x__h10799 ;

  // inlined wires
  always@(ma_core_req_req or
	  mhpmevent_0 or
	  mhpmevent_1 or
	  mhpmevent_2 or
	  mhpmevent_3 or
	  mhpmevent_4 or
	  mhpmevent_5 or
	  mhpmevent_6 or
	  mhpmevent_7 or
	  mhpmcounter_0 or
	  mhpmcounter_1 or
	  mhpmcounter_2 or
	  mhpmcounter_3 or
	  mhpmcounter_4 or mhpmcounter_5 or mhpmcounter_6 or mhpmcounter_7)
  begin
    case (ma_core_req_req[47:36])
      12'h338: rg_resp_to_core_1_wget = { 1'd1, mhpmevent_0 };
      12'h339: rg_resp_to_core_1_wget = { 1'd1, mhpmevent_1 };
      12'h33A: rg_resp_to_core_1_wget = { 1'd1, mhpmevent_2 };
      12'h33B: rg_resp_to_core_1_wget = { 1'd1, mhpmevent_3 };
      12'h33C: rg_resp_to_core_1_wget = { 1'd1, mhpmevent_4 };
      12'h33D: rg_resp_to_core_1_wget = { 1'd1, mhpmevent_5 };
      12'h33E: rg_resp_to_core_1_wget = { 1'd1, mhpmevent_6 };
      12'h33F: rg_resp_to_core_1_wget = { 1'd1, mhpmevent_7 };
      12'hB18: rg_resp_to_core_1_wget = { 1'd1, mhpmcounter_0[31:0] };
      12'hB19: rg_resp_to_core_1_wget = { 1'd1, mhpmcounter_1[31:0] };
      12'hB1A: rg_resp_to_core_1_wget = { 1'd1, mhpmcounter_2[31:0] };
      12'hB1B: rg_resp_to_core_1_wget = { 1'd1, mhpmcounter_3[31:0] };
      12'hB1C: rg_resp_to_core_1_wget = { 1'd1, mhpmcounter_4[31:0] };
      12'hB1D: rg_resp_to_core_1_wget = { 1'd1, mhpmcounter_5[31:0] };
      12'hB1E: rg_resp_to_core_1_wget = { 1'd1, mhpmcounter_6[31:0] };
      12'hB1F: rg_resp_to_core_1_wget = { 1'd1, mhpmcounter_7[31:0] };
      12'hB98: rg_resp_to_core_1_wget = { 1'd1, mhpmcounter_0[63:32] };
      12'hB99: rg_resp_to_core_1_wget = { 1'd1, mhpmcounter_1[63:32] };
      12'hB9A: rg_resp_to_core_1_wget = { 1'd1, mhpmcounter_2[63:32] };
      12'hB9B: rg_resp_to_core_1_wget = { 1'd1, mhpmcounter_3[63:32] };
      12'hB9C: rg_resp_to_core_1_wget = { 1'd1, mhpmcounter_4[63:32] };
      12'hB9D: rg_resp_to_core_1_wget = { 1'd1, mhpmcounter_5[63:32] };
      12'hB9E: rg_resp_to_core_1_wget = { 1'd1, mhpmcounter_6[63:32] };
      12'hB9F: rg_resp_to_core_1_wget = { 1'd1, mhpmcounter_7[63:32] };
      default: rg_resp_to_core_1_wget = 33'h100000000;
    endcase
  end
  assign csr_op_arg_wget =
	     { ma_core_req_req[35:4],
	       IF_ma_core_req_req_BITS_47_TO_36_38_EQ_0xB18_3_ETC___d273,
	       ma_core_req_req[3:2] } ;

  // register mhpmcounter_0
  assign mhpmcounter_0_D_IN =
	     MUX_mhpmcounter_0_write_1__SEL_1 ?
	       MUX_mhpmcounter_0_write_1__VAL_1 :
	       MUX_mhpmcounter_0_write_1__VAL_2 ;
  assign mhpmcounter_0_EN =
	     WILL_FIRE_RL_increment_perfmonitors &&
	     !IF_NOT_mhpmevent_0_EQ_0_0_1_AND_mhpmcounter_0__ETC__q1[0] ||
	     EN_ma_core_req &&
	     (ma_core_req_req[47:36] == 12'hB18 ||
	      ma_core_req_req[47:36] == 12'hB98) ;

  // register mhpmcounter_1
  assign mhpmcounter_1_D_IN =
	     MUX_mhpmcounter_1_write_1__SEL_1 ?
	       MUX_mhpmcounter_1_write_1__VAL_1 :
	       MUX_mhpmcounter_1_write_1__VAL_2 ;
  assign mhpmcounter_1_EN =
	     WILL_FIRE_RL_increment_perfmonitors &&
	     mhpmevent_1_3_EQ_0_4_OR_NOT_mhpmcounter_1_5_EQ_ETC___d43 ||
	     EN_ma_core_req &&
	     (ma_core_req_req[47:36] == 12'hB19 ||
	      ma_core_req_req[47:36] == 12'hB99) ;

  // register mhpmcounter_2
  assign mhpmcounter_2_D_IN =
	     MUX_mhpmcounter_2_write_1__SEL_1 ?
	       MUX_mhpmcounter_2_write_1__VAL_1 :
	       MUX_mhpmcounter_2_write_1__VAL_2 ;
  assign mhpmcounter_2_EN =
	     WILL_FIRE_RL_increment_perfmonitors &&
	     mhpmevent_2_8_EQ_0_9_OR_NOT_mhpmcounter_2_0_EQ_ETC___d58 ||
	     EN_ma_core_req &&
	     (ma_core_req_req[47:36] == 12'hB1A ||
	      ma_core_req_req[47:36] == 12'hB9A) ;

  // register mhpmcounter_3
  assign mhpmcounter_3_D_IN =
	     MUX_mhpmcounter_3_write_1__SEL_1 ?
	       MUX_mhpmcounter_3_write_1__VAL_1 :
	       MUX_mhpmcounter_3_write_1__VAL_2 ;
  assign mhpmcounter_3_EN =
	     WILL_FIRE_RL_increment_perfmonitors &&
	     mhpmevent_3_3_EQ_0_4_OR_NOT_mhpmcounter_3_5_EQ_ETC___d73 ||
	     EN_ma_core_req &&
	     (ma_core_req_req[47:36] == 12'hB1B ||
	      ma_core_req_req[47:36] == 12'hB9B) ;

  // register mhpmcounter_4
  assign mhpmcounter_4_D_IN =
	     MUX_mhpmcounter_4_write_1__SEL_1 ?
	       MUX_mhpmcounter_4_write_1__VAL_1 :
	       MUX_mhpmcounter_4_write_1__VAL_2 ;
  assign mhpmcounter_4_EN =
	     WILL_FIRE_RL_increment_perfmonitors &&
	     mhpmevent_4_8_EQ_0_9_OR_NOT_mhpmcounter_4_0_EQ_ETC___d88 ||
	     EN_ma_core_req &&
	     (ma_core_req_req[47:36] == 12'hB1C ||
	      ma_core_req_req[47:36] == 12'hB9C) ;

  // register mhpmcounter_5
  assign mhpmcounter_5_D_IN =
	     MUX_mhpmcounter_5_write_1__SEL_1 ?
	       MUX_mhpmcounter_5_write_1__VAL_1 :
	       MUX_mhpmcounter_5_write_1__VAL_2 ;
  assign mhpmcounter_5_EN =
	     WILL_FIRE_RL_increment_perfmonitors &&
	     mhpmevent_5_3_EQ_0_4_OR_NOT_mhpmcounter_5_5_EQ_ETC___d103 ||
	     EN_ma_core_req &&
	     (ma_core_req_req[47:36] == 12'hB1D ||
	      ma_core_req_req[47:36] == 12'hB9D) ;

  // register mhpmcounter_6
  assign mhpmcounter_6_D_IN =
	     MUX_mhpmcounter_6_write_1__SEL_1 ?
	       MUX_mhpmcounter_6_write_1__VAL_1 :
	       MUX_mhpmcounter_6_write_1__VAL_2 ;
  assign mhpmcounter_6_EN =
	     WILL_FIRE_RL_increment_perfmonitors &&
	     mhpmevent_6_08_EQ_0_09_OR_NOT_mhpmcounter_6_10_ETC___d118 ||
	     EN_ma_core_req &&
	     (ma_core_req_req[47:36] == 12'hB1E ||
	      ma_core_req_req[47:36] == 12'hB9E) ;

  // register mhpmcounter_7
  assign mhpmcounter_7_D_IN =
	     MUX_mhpmcounter_7_write_1__SEL_1 ?
	       MUX_mhpmcounter_7_write_1__VAL_1 :
	       MUX_mhpmcounter_7_write_1__VAL_2 ;
  assign mhpmcounter_7_EN =
	     WILL_FIRE_RL_increment_perfmonitors &&
	     mhpmevent_7_23_EQ_0_24_OR_NOT_mhpmcounter_7_25_ETC___d133 ||
	     EN_ma_core_req &&
	     (ma_core_req_req[47:36] == 12'hB1F ||
	      ma_core_req_req[47:36] == 12'hB9F) ;

  // register mhpmevent_0
  assign mhpmevent_0_D_IN = x_wget__h411 ;
  assign mhpmevent_0_EN =
	     EN_ma_core_req && ma_core_req_req[47:36] == 12'h338 ;

  // register mhpmevent_1
  assign mhpmevent_1_D_IN = x_wget__h411 ;
  assign mhpmevent_1_EN =
	     EN_ma_core_req && ma_core_req_req[47:36] == 12'h339 ;

  // register mhpmevent_2
  assign mhpmevent_2_D_IN = x_wget__h411 ;
  assign mhpmevent_2_EN =
	     EN_ma_core_req && ma_core_req_req[47:36] == 12'h33A ;

  // register mhpmevent_3
  assign mhpmevent_3_D_IN = x_wget__h411 ;
  assign mhpmevent_3_EN =
	     EN_ma_core_req && ma_core_req_req[47:36] == 12'h33B ;

  // register mhpmevent_4
  assign mhpmevent_4_D_IN = x_wget__h411 ;
  assign mhpmevent_4_EN =
	     EN_ma_core_req && ma_core_req_req[47:36] == 12'h33C ;

  // register mhpmevent_5
  assign mhpmevent_5_D_IN = x_wget__h411 ;
  assign mhpmevent_5_EN =
	     EN_ma_core_req && ma_core_req_req[47:36] == 12'h33D ;

  // register mhpmevent_6
  assign mhpmevent_6_D_IN = x_wget__h411 ;
  assign mhpmevent_6_EN =
	     EN_ma_core_req && ma_core_req_req[47:36] == 12'h33E ;

  // register mhpmevent_7
  assign mhpmevent_7_D_IN = x_wget__h411 ;
  assign mhpmevent_7_EN =
	     EN_ma_core_req && ma_core_req_req[47:36] == 12'h33F ;

  // register rg_resp_to_core
  assign rg_resp_to_core_D_IN =
	     EN_ma_core_req ? rg_resp_to_core_1_wget : 33'd0 ;
  assign rg_resp_to_core_EN = 1'd1 ;

  // remaining internal signals
  module_fn_csr_op instance_fn_csr_op_0(.fn_csr_op_writedata(x_wget_fst__h5542),
					.fn_csr_op_readdata(x_wget_snd_fst__h5627),
					.fn_csr_op_op(x_wget_snd_snd__h5628),
					.fn_csr_op(x__h12903));
  assign IF_NOT_mhpmevent_0_EQ_0_0_1_AND_mhpmcounter_0__ETC__q1 =
	     NOT_mhpmevent_0_EQ_0_0_1_AND_mhpmcounter_0_2_E_ETC___d23 ?
	       8'd1 :
	       8'd0 ;
  assign NOT_mhpmevent_0_EQ_0_0_1_AND_mhpmcounter_0_2_E_ETC___d23 =
	     mhpmevent_0 != 32'd0 && mhpmcounter_0 == 64'd0 &&
	     !ma_mcountinhibit_mcountinhibit_val[0] &&
	     ma_mhpminterrupten_v[0] ;
  assign bs__h3354 = { ma_events_e, 1'b0 } ;
  assign mhpmevent_1_3_EQ_0_4_OR_NOT_mhpmcounter_1_5_EQ_ETC___d43 =
	     mhpmevent_1 == 32'd0 || mhpmcounter_1 != 64'd0 ||
	     ma_mcountinhibit_mcountinhibit_val[1] ||
	     !ma_mhpminterrupten_v[1] ;
  assign mhpmevent_2_8_EQ_0_9_OR_NOT_mhpmcounter_2_0_EQ_ETC___d58 =
	     mhpmevent_2 == 32'd0 || mhpmcounter_2 != 64'd0 ||
	     ma_mcountinhibit_mcountinhibit_val[2] ||
	     !ma_mhpminterrupten_v[2] ;
  assign mhpmevent_3_3_EQ_0_4_OR_NOT_mhpmcounter_3_5_EQ_ETC___d73 =
	     mhpmevent_3 == 32'd0 || mhpmcounter_3 != 64'd0 ||
	     ma_mcountinhibit_mcountinhibit_val[3] ||
	     !ma_mhpminterrupten_v[3] ;
  assign mhpmevent_4_8_EQ_0_9_OR_NOT_mhpmcounter_4_0_EQ_ETC___d88 =
	     mhpmevent_4 == 32'd0 || mhpmcounter_4 != 64'd0 ||
	     ma_mcountinhibit_mcountinhibit_val[4] ||
	     !ma_mhpminterrupten_v[4] ;
  assign mhpmevent_5_3_EQ_0_4_OR_NOT_mhpmcounter_5_5_EQ_ETC___d103 =
	     mhpmevent_5 == 32'd0 || mhpmcounter_5 != 64'd0 ||
	     ma_mcountinhibit_mcountinhibit_val[5] ||
	     !ma_mhpminterrupten_v[5] ;
  assign mhpmevent_6_08_EQ_0_09_OR_NOT_mhpmcounter_6_10_ETC___d118 =
	     mhpmevent_6 == 32'd0 || mhpmcounter_6 != 64'd0 ||
	     ma_mcountinhibit_mcountinhibit_val[6] ||
	     !ma_mhpminterrupten_v[6] ;
  assign mhpmevent_7_23_EQ_0_24_OR_NOT_mhpmcounter_7_25_ETC___d133 =
	     mhpmevent_7 == 32'd0 || mhpmcounter_7 != 64'd0 ||
	     ma_mcountinhibit_mcountinhibit_val[7] ||
	     !ma_mhpminterrupten_v[7] ;
  assign x__h10123 = { x_wget__h411, mhpmcounter_5[31:0] } ;
  assign x__h10461 = { x_wget__h411, mhpmcounter_6[31:0] } ;
  assign x__h10799 = { x_wget__h411, mhpmcounter_7[31:0] } ;
  assign x__h3351 = bs__h3354[mhpmevent_0[4:0]] ;
  assign x__h3494 = bs__h3354[mhpmevent_1[4:0]] ;
  assign x__h3630 = bs__h3354[mhpmevent_2[4:0]] ;
  assign x__h3766 = bs__h3354[mhpmevent_3[4:0]] ;
  assign x__h3902 = bs__h3354[mhpmevent_4[4:0]] ;
  assign x__h4038 = bs__h3354[mhpmevent_5[4:0]] ;
  assign x__h4174 = bs__h3354[mhpmevent_6[4:0]] ;
  assign x__h4309 = bs__h3354[mhpmevent_7[4:0]] ;
  assign x__h5728 = { mhpmcounter_0[63:32], x_wget__h411 } ;
  assign x__h6067 = { mhpmcounter_1[63:32], x_wget__h411 } ;
  assign x__h6405 = { mhpmcounter_2[63:32], x_wget__h411 } ;
  assign x__h6743 = { mhpmcounter_3[63:32], x_wget__h411 } ;
  assign x__h7081 = { mhpmcounter_4[63:32], x_wget__h411 } ;
  assign x__h7419 = { mhpmcounter_5[63:32], x_wget__h411 } ;
  assign x__h7757 = { mhpmcounter_6[63:32], x_wget__h411 } ;
  assign x__h8095 = { mhpmcounter_7[63:32], x_wget__h411 } ;
  assign x__h8433 = { x_wget__h411, mhpmcounter_0[31:0] } ;
  assign x__h8771 = { x_wget__h411, mhpmcounter_1[31:0] } ;
  assign x__h9109 = { x_wget__h411, mhpmcounter_2[31:0] } ;
  assign x__h9447 = { x_wget__h411, mhpmcounter_3[31:0] } ;
  assign x__h9785 = { x_wget__h411, mhpmcounter_4[31:0] } ;
  assign x_wget_fst__h5542 = csr_op_arg_wget[65:34] ;
  assign x_wget_snd_fst__h5627 = csr_op_arg_wget[33:2] ;
  assign x_wget_snd_snd__h5628 = csr_op_arg_wget[1:0] ;
  always@(ma_core_req_req or
	  mhpmevent_7 or
	  mhpmevent_0 or
	  mhpmevent_1 or
	  mhpmevent_2 or
	  mhpmevent_3 or
	  mhpmevent_4 or
	  mhpmevent_5 or
	  mhpmevent_6 or
	  mhpmcounter_0 or
	  mhpmcounter_1 or
	  mhpmcounter_2 or
	  mhpmcounter_3 or
	  mhpmcounter_4 or mhpmcounter_5 or mhpmcounter_6 or mhpmcounter_7)
  begin
    case (ma_core_req_req[47:36])
      12'h338:
	  IF_ma_core_req_req_BITS_47_TO_36_38_EQ_0xB18_3_ETC___d273 =
	      mhpmevent_0;
      12'h339:
	  IF_ma_core_req_req_BITS_47_TO_36_38_EQ_0xB18_3_ETC___d273 =
	      mhpmevent_1;
      12'h33A:
	  IF_ma_core_req_req_BITS_47_TO_36_38_EQ_0xB18_3_ETC___d273 =
	      mhpmevent_2;
      12'h33B:
	  IF_ma_core_req_req_BITS_47_TO_36_38_EQ_0xB18_3_ETC___d273 =
	      mhpmevent_3;
      12'h33C:
	  IF_ma_core_req_req_BITS_47_TO_36_38_EQ_0xB18_3_ETC___d273 =
	      mhpmevent_4;
      12'h33D:
	  IF_ma_core_req_req_BITS_47_TO_36_38_EQ_0xB18_3_ETC___d273 =
	      mhpmevent_5;
      12'h33E:
	  IF_ma_core_req_req_BITS_47_TO_36_38_EQ_0xB18_3_ETC___d273 =
	      mhpmevent_6;
      12'hB18:
	  IF_ma_core_req_req_BITS_47_TO_36_38_EQ_0xB18_3_ETC___d273 =
	      mhpmcounter_0[31:0];
      12'hB19:
	  IF_ma_core_req_req_BITS_47_TO_36_38_EQ_0xB18_3_ETC___d273 =
	      mhpmcounter_1[31:0];
      12'hB1A:
	  IF_ma_core_req_req_BITS_47_TO_36_38_EQ_0xB18_3_ETC___d273 =
	      mhpmcounter_2[31:0];
      12'hB1B:
	  IF_ma_core_req_req_BITS_47_TO_36_38_EQ_0xB18_3_ETC___d273 =
	      mhpmcounter_3[31:0];
      12'hB1C:
	  IF_ma_core_req_req_BITS_47_TO_36_38_EQ_0xB18_3_ETC___d273 =
	      mhpmcounter_4[31:0];
      12'hB1D:
	  IF_ma_core_req_req_BITS_47_TO_36_38_EQ_0xB18_3_ETC___d273 =
	      mhpmcounter_5[31:0];
      12'hB1E:
	  IF_ma_core_req_req_BITS_47_TO_36_38_EQ_0xB18_3_ETC___d273 =
	      mhpmcounter_6[31:0];
      12'hB1F:
	  IF_ma_core_req_req_BITS_47_TO_36_38_EQ_0xB18_3_ETC___d273 =
	      mhpmcounter_7[31:0];
      12'hB98:
	  IF_ma_core_req_req_BITS_47_TO_36_38_EQ_0xB18_3_ETC___d273 =
	      mhpmcounter_0[63:32];
      12'hB99:
	  IF_ma_core_req_req_BITS_47_TO_36_38_EQ_0xB18_3_ETC___d273 =
	      mhpmcounter_1[63:32];
      12'hB9A:
	  IF_ma_core_req_req_BITS_47_TO_36_38_EQ_0xB18_3_ETC___d273 =
	      mhpmcounter_2[63:32];
      12'hB9B:
	  IF_ma_core_req_req_BITS_47_TO_36_38_EQ_0xB18_3_ETC___d273 =
	      mhpmcounter_3[63:32];
      12'hB9C:
	  IF_ma_core_req_req_BITS_47_TO_36_38_EQ_0xB18_3_ETC___d273 =
	      mhpmcounter_4[63:32];
      12'hB9D:
	  IF_ma_core_req_req_BITS_47_TO_36_38_EQ_0xB18_3_ETC___d273 =
	      mhpmcounter_5[63:32];
      12'hB9E:
	  IF_ma_core_req_req_BITS_47_TO_36_38_EQ_0xB18_3_ETC___d273 =
	      mhpmcounter_6[63:32];
      12'hB9F:
	  IF_ma_core_req_req_BITS_47_TO_36_38_EQ_0xB18_3_ETC___d273 =
	      mhpmcounter_7[63:32];
      default: IF_ma_core_req_req_BITS_47_TO_36_38_EQ_0xB18_3_ETC___d273 =
		   mhpmevent_7;
    endcase
  end
  always@(ma_core_req_req or x__h12903)
  begin
    case (ma_core_req_req[47:36])
      12'h338,
      12'h339,
      12'h33A,
      12'h33B,
      12'h33C,
      12'h33D,
      12'hB18,
      12'hB19,
      12'hB1A,
      12'hB1B,
      12'hB1C,
      12'hB1D,
      12'hB1E,
      12'hB1F,
      12'hB98,
      12'hB99,
      12'hB9A,
      12'hB9B,
      12'hB9C,
      12'hB9D,
      12'hB9E,
      12'hB9F:
	  x_wget__h411 = x__h12903;
      default: x_wget__h411 = x__h12903;
    endcase
  end

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        mhpmcounter_0 <= `BSV_ASSIGNMENT_DELAY 64'd0;
	mhpmcounter_1 <= `BSV_ASSIGNMENT_DELAY 64'd0;
	mhpmcounter_2 <= `BSV_ASSIGNMENT_DELAY 64'd0;
	mhpmcounter_3 <= `BSV_ASSIGNMENT_DELAY 64'd0;
	mhpmcounter_4 <= `BSV_ASSIGNMENT_DELAY 64'd0;
	mhpmcounter_5 <= `BSV_ASSIGNMENT_DELAY 64'd0;
	mhpmcounter_6 <= `BSV_ASSIGNMENT_DELAY 64'd0;
	mhpmcounter_7 <= `BSV_ASSIGNMENT_DELAY 64'd0;
	mhpmevent_0 <= `BSV_ASSIGNMENT_DELAY 32'd0;
	mhpmevent_1 <= `BSV_ASSIGNMENT_DELAY 32'd0;
	mhpmevent_2 <= `BSV_ASSIGNMENT_DELAY 32'd0;
	mhpmevent_3 <= `BSV_ASSIGNMENT_DELAY 32'd0;
	mhpmevent_4 <= `BSV_ASSIGNMENT_DELAY 32'd0;
	mhpmevent_5 <= `BSV_ASSIGNMENT_DELAY 32'd0;
	mhpmevent_6 <= `BSV_ASSIGNMENT_DELAY 32'd0;
	mhpmevent_7 <= `BSV_ASSIGNMENT_DELAY 32'd0;
	rg_resp_to_core <= `BSV_ASSIGNMENT_DELAY 33'd0;
      end
    else
      begin
        if (mhpmcounter_0_EN)
	  mhpmcounter_0 <= `BSV_ASSIGNMENT_DELAY mhpmcounter_0_D_IN;
	if (mhpmcounter_1_EN)
	  mhpmcounter_1 <= `BSV_ASSIGNMENT_DELAY mhpmcounter_1_D_IN;
	if (mhpmcounter_2_EN)
	  mhpmcounter_2 <= `BSV_ASSIGNMENT_DELAY mhpmcounter_2_D_IN;
	if (mhpmcounter_3_EN)
	  mhpmcounter_3 <= `BSV_ASSIGNMENT_DELAY mhpmcounter_3_D_IN;
	if (mhpmcounter_4_EN)
	  mhpmcounter_4 <= `BSV_ASSIGNMENT_DELAY mhpmcounter_4_D_IN;
	if (mhpmcounter_5_EN)
	  mhpmcounter_5 <= `BSV_ASSIGNMENT_DELAY mhpmcounter_5_D_IN;
	if (mhpmcounter_6_EN)
	  mhpmcounter_6 <= `BSV_ASSIGNMENT_DELAY mhpmcounter_6_D_IN;
	if (mhpmcounter_7_EN)
	  mhpmcounter_7 <= `BSV_ASSIGNMENT_DELAY mhpmcounter_7_D_IN;
	if (mhpmevent_0_EN)
	  mhpmevent_0 <= `BSV_ASSIGNMENT_DELAY mhpmevent_0_D_IN;
	if (mhpmevent_1_EN)
	  mhpmevent_1 <= `BSV_ASSIGNMENT_DELAY mhpmevent_1_D_IN;
	if (mhpmevent_2_EN)
	  mhpmevent_2 <= `BSV_ASSIGNMENT_DELAY mhpmevent_2_D_IN;
	if (mhpmevent_3_EN)
	  mhpmevent_3 <= `BSV_ASSIGNMENT_DELAY mhpmevent_3_D_IN;
	if (mhpmevent_4_EN)
	  mhpmevent_4 <= `BSV_ASSIGNMENT_DELAY mhpmevent_4_D_IN;
	if (mhpmevent_5_EN)
	  mhpmevent_5 <= `BSV_ASSIGNMENT_DELAY mhpmevent_5_D_IN;
	if (mhpmevent_6_EN)
	  mhpmevent_6 <= `BSV_ASSIGNMENT_DELAY mhpmevent_6_D_IN;
	if (mhpmevent_7_EN)
	  mhpmevent_7 <= `BSV_ASSIGNMENT_DELAY mhpmevent_7_D_IN;
	if (rg_resp_to_core_EN)
	  rg_resp_to_core <= `BSV_ASSIGNMENT_DELAY rg_resp_to_core_D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    mhpmcounter_0 = 64'hAAAAAAAAAAAAAAAA;
    mhpmcounter_1 = 64'hAAAAAAAAAAAAAAAA;
    mhpmcounter_2 = 64'hAAAAAAAAAAAAAAAA;
    mhpmcounter_3 = 64'hAAAAAAAAAAAAAAAA;
    mhpmcounter_4 = 64'hAAAAAAAAAAAAAAAA;
    mhpmcounter_5 = 64'hAAAAAAAAAAAAAAAA;
    mhpmcounter_6 = 64'hAAAAAAAAAAAAAAAA;
    mhpmcounter_7 = 64'hAAAAAAAAAAAAAAAA;
    mhpmevent_0 = 32'hAAAAAAAA;
    mhpmevent_1 = 32'hAAAAAAAA;
    mhpmevent_2 = 32'hAAAAAAAA;
    mhpmevent_3 = 32'hAAAAAAAA;
    mhpmevent_4 = 32'hAAAAAAAA;
    mhpmevent_5 = 32'hAAAAAAAA;
    mhpmevent_6 = 32'hAAAAAAAA;
    mhpmevent_7 = 32'hAAAAAAAA;
    rg_resp_to_core = 33'h0AAAAAAAA;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on
endmodule  // mk_csr_grp7

