//
// Generated by Bluespec Compiler, version 2021.07-3-g8227dc97 (build 8227dc97)
//
// On Fri Sep  3 12:08:15 PDT 2021
//
//
// Ports:
// Name                         I/O  size props
// mv_output                      O    38
// RDY_mv_output                  O     1 const
// CLK                            I     1 clock
// RST_N                          I     1 reset
// ma_inputs_in1                  I    32
// ma_inputs_in2                  I    32
// ma_inputs_funct3               I     3
// EN_ma_inputs                   I     1
//
// No combinational paths from inputs to outputs
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

module mkrestoring_div(CLK,
		       RST_N,

		       ma_inputs_in1,
		       ma_inputs_in2,
		       ma_inputs_funct3,
		       EN_ma_inputs,

		       mv_output,
		       RDY_mv_output);
  parameter [31 : 0] hartid = 32'b0;
  input  CLK;
  input  RST_N;

  // action method ma_inputs
  input  [31 : 0] ma_inputs_in1;
  input  [31 : 0] ma_inputs_in2;
  input  [2 : 0] ma_inputs_funct3;
  input  EN_ma_inputs;

  // value method mv_output
  output [37 : 0] mv_output;
  output RDY_mv_output;

  // signals for module outputs
  wire [37 : 0] mv_output;
  wire RDY_mv_output;

  // inlined wires
  wire rg_valid_1_whas;

  // register partial
  reg [64 : 0] partial;
  wire [64 : 0] partial_D_IN;
  wire partial_EN;

  // register quotient_remainder
  reg quotient_remainder;
  wire quotient_remainder_D_IN, quotient_remainder_EN;

  // register rg_complement
  reg rg_complement;
  wire rg_complement_D_IN, rg_complement_EN;

  // register rg_count
  reg [5 : 0] rg_count;
  wire [5 : 0] rg_count_D_IN;
  wire rg_count_EN;

  // register rg_in1
  reg [31 : 0] rg_in1;
  wire [31 : 0] rg_in1_D_IN;
  wire rg_in1_EN;

  // register rg_op2
  reg [31 : 0] rg_op2;
  wire [31 : 0] rg_op2_D_IN;
  wire rg_op2_EN;

  // register rg_result
  reg [31 : 0] rg_result;
  wire [31 : 0] rg_result_D_IN;
  wire rg_result_EN;

  // register rg_sign_op1
  reg rg_sign_op1;
  wire rg_sign_op1_D_IN, rg_sign_op1_EN;

  // register rg_upperbits
  reg rg_upperbits;
  wire rg_upperbits_D_IN, rg_upperbits_EN;

  // register rg_valid
  reg rg_valid;
  wire rg_valid_D_IN, rg_valid_EN;

  // rule scheduling signals
  wire CAN_FIRE_RL_rg_valid__dreg_update,
       CAN_FIRE_RL_single_step_div,
       CAN_FIRE_ma_inputs,
       WILL_FIRE_RL_rg_valid__dreg_update,
       WILL_FIRE_RL_single_step_div,
       WILL_FIRE_ma_inputs;

  // inputs to muxes for submodule ports
  wire [64 : 0] MUX_partial_write_1__VAL_1, MUX_partial_write_1__VAL_2;
  wire [5 : 0] MUX_rg_count_write_1__VAL_1;

  // declarations used by system tasks
  // synopsys translate_off
  reg TASK_testplusargs___d50;
  reg TASK_testplusargs___d51;
  reg TASK_testplusargs___d52;
  reg [63 : 0] v__h1219;
  reg TASK_testplusargs___d12;
  reg TASK_testplusargs___d13;
  reg TASK_testplusargs___d14;
  reg [63 : 0] v__h664;
  reg TASK_testplusargs___d43;
  reg TASK_testplusargs___d44;
  reg TASK_testplusargs___d45;
  reg [63 : 0] v__h846;
  reg rg_op2_0_EQ_0_9_AND_TASK_testplusargs_3_OR_TAS_ETC___d48;
  // synopsys translate_on

  // remaining internal signals
  wire [64 : 0] x__h1105;
  wire [31 : 0] op1__h1298,
		product__h1008,
		product__h1042,
		reslt___1__h1115,
		reslt__h1041,
		t1__h1340,
		t2__h1341,
		x_BITS_31_TO_0___h1106;
  wire [5 : 0] x__h775;
  wire IF_quotient_remainder_8_THEN_partial_BITS_63_T_ETC___d33,
       x__h1441,
       x__h1566;

  // action method ma_inputs
  assign CAN_FIRE_ma_inputs = 1'd1 ;
  assign WILL_FIRE_ma_inputs = EN_ma_inputs ;

  // value method mv_output
  assign mv_output = { rg_result, rg_valid, 5'd0 } ;
  assign RDY_mv_output = 1'd1 ;

  // rule RL_single_step_div
  assign CAN_FIRE_RL_single_step_div = rg_count != 6'd0 ;
  assign WILL_FIRE_RL_single_step_div = CAN_FIRE_RL_single_step_div ;

  // rule RL_rg_valid__dreg_update
  assign CAN_FIRE_RL_rg_valid__dreg_update = 1'd1 ;
  assign WILL_FIRE_RL_rg_valid__dreg_update = 1'd1 ;

  // inputs to muxes for submodule ports
  module_fn_single_div instance_fn_single_div_0(.fn_single_div_remainder(x__h1105[64:32]),
						.fn_single_div_quotient(x_BITS_31_TO_0___h1106),
						.fn_single_div_divisor(rg_op2),
						.fn_single_div(MUX_partial_write_1__VAL_1));
  assign MUX_partial_write_1__VAL_2 = { 33'd0, op1__h1298 } ;
  assign MUX_rg_count_write_1__VAL_1 =
	     (rg_op2 == 32'd0 || rg_count == 6'd33) ? 6'd0 : x__h775 ;

  // inlined wires
  assign rg_valid_1_whas =
	     WILL_FIRE_RL_single_step_div &&
	     (rg_op2 == 32'd0 || rg_count == 6'd33) ;

  // register partial
  assign partial_D_IN =
	     WILL_FIRE_RL_single_step_div ?
	       MUX_partial_write_1__VAL_1 :
	       MUX_partial_write_1__VAL_2 ;
  assign partial_EN = EN_ma_inputs || WILL_FIRE_RL_single_step_div ;

  // register quotient_remainder
  assign quotient_remainder_D_IN = ma_inputs_funct3[1] ;
  assign quotient_remainder_EN = EN_ma_inputs ;

  // register rg_complement
  assign rg_complement_D_IN =
	     (ma_inputs_funct3 == 3'd4) ?
	       ma_inputs_in1[31] ^ ma_inputs_in2[31] :
	       ma_inputs_funct3 == 3'd6 ;
  assign rg_complement_EN = EN_ma_inputs ;

  // register rg_count
  assign rg_count_D_IN =
	     WILL_FIRE_RL_single_step_div ?
	       MUX_rg_count_write_1__VAL_1 :
	       x__h775 ;
  assign rg_count_EN = EN_ma_inputs || WILL_FIRE_RL_single_step_div ;

  // register rg_in1
  assign rg_in1_D_IN = ma_inputs_in1 ;
  assign rg_in1_EN = EN_ma_inputs ;

  // register rg_op2
  assign rg_op2_D_IN = (t2__h1341 ^ ma_inputs_in2) + { 31'd0, x__h1566 } ;
  assign rg_op2_EN = EN_ma_inputs ;

  // register rg_result
  assign rg_result_D_IN =
	     (rg_op2 == 32'd0) ? product__h1008 : product__h1042 ;
  assign rg_result_EN = rg_valid_1_whas ;

  // register rg_sign_op1
  assign rg_sign_op1_D_IN = ma_inputs_in1[31] ;
  assign rg_sign_op1_EN = EN_ma_inputs ;

  // register rg_upperbits
  assign rg_upperbits_D_IN = ma_inputs_funct3[1] ;
  assign rg_upperbits_EN = EN_ma_inputs ;

  // register rg_valid
  assign rg_valid_D_IN = rg_valid_1_whas ;
  assign rg_valid_EN = 1'd1 ;

  // remaining internal signals
  assign IF_quotient_remainder_8_THEN_partial_BITS_63_T_ETC___d33 =
	     reslt__h1041[31] == rg_sign_op1 ;
  assign op1__h1298 = (t1__h1340 ^ ma_inputs_in1) + { 31'd0, x__h1441 } ;
  assign product__h1008 = quotient_remainder ? rg_in1 : 32'hFFFFFFFF ;
  assign product__h1042 =
	     (rg_upperbits && rg_complement &&
	      !IF_quotient_remainder_8_THEN_partial_BITS_63_T_ETC___d33 ||
	      rg_complement && !rg_upperbits) ?
	       reslt___1__h1115 :
	       reslt__h1041 ;
  assign reslt___1__h1115 = ~reslt__h1041 + 32'd1 ;
  assign reslt__h1041 = quotient_remainder ? partial[63:32] : partial[31:0] ;
  assign t1__h1340 = {32{x__h1441}} ;
  assign t2__h1341 = {32{x__h1566}} ;
  assign x_BITS_31_TO_0___h1106 = partial[31:0] ;
  assign x__h1105 = partial ;
  assign x__h1441 =
	     ma_inputs_funct3[2] && !ma_inputs_funct3[0] &&
	     ma_inputs_in1[31] ;
  assign x__h1566 =
	     ma_inputs_funct3[2] && !ma_inputs_funct3[0] &&
	     ma_inputs_in2[31] ;
  assign x__h775 = rg_count + 6'd1 ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        partial <= `BSV_ASSIGNMENT_DELAY 65'd0;
	quotient_remainder <= `BSV_ASSIGNMENT_DELAY 1'd0;
	rg_complement <= `BSV_ASSIGNMENT_DELAY 1'd0;
	rg_count <= `BSV_ASSIGNMENT_DELAY 6'd0;
	rg_in1 <= `BSV_ASSIGNMENT_DELAY 32'd0;
	rg_op2 <= `BSV_ASSIGNMENT_DELAY 32'd0;
	rg_result <= `BSV_ASSIGNMENT_DELAY 32'd0;
	rg_sign_op1 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	rg_upperbits <= `BSV_ASSIGNMENT_DELAY 1'd0;
	rg_valid <= `BSV_ASSIGNMENT_DELAY 1'd0;
      end
    else
      begin
        if (partial_EN) partial <= `BSV_ASSIGNMENT_DELAY partial_D_IN;
	if (quotient_remainder_EN)
	  quotient_remainder <= `BSV_ASSIGNMENT_DELAY quotient_remainder_D_IN;
	if (rg_complement_EN)
	  rg_complement <= `BSV_ASSIGNMENT_DELAY rg_complement_D_IN;
	if (rg_count_EN) rg_count <= `BSV_ASSIGNMENT_DELAY rg_count_D_IN;
	if (rg_in1_EN) rg_in1 <= `BSV_ASSIGNMENT_DELAY rg_in1_D_IN;
	if (rg_op2_EN) rg_op2 <= `BSV_ASSIGNMENT_DELAY rg_op2_D_IN;
	if (rg_result_EN) rg_result <= `BSV_ASSIGNMENT_DELAY rg_result_D_IN;
	if (rg_sign_op1_EN)
	  rg_sign_op1 <= `BSV_ASSIGNMENT_DELAY rg_sign_op1_D_IN;
	if (rg_upperbits_EN)
	  rg_upperbits <= `BSV_ASSIGNMENT_DELAY rg_upperbits_D_IN;
	if (rg_valid_EN) rg_valid <= `BSV_ASSIGNMENT_DELAY rg_valid_D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    partial = 65'h0AAAAAAAAAAAAAAAA;
    quotient_remainder = 1'h0;
    rg_complement = 1'h0;
    rg_count = 6'h2A;
    rg_in1 = 32'hAAAAAAAA;
    rg_op2 = 32'hAAAAAAAA;
    rg_result = 32'hAAAAAAAA;
    rg_sign_op1 = 1'h0;
    rg_upperbits = 1'h0;
    rg_valid = 1'h0;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on

  // handling of system tasks

  // synopsys translate_off
  always@(negedge CLK)
  begin
    #0;
    if (RST_N != `BSV_RESET_VALUE)
      if (EN_ma_inputs)
	begin
	  TASK_testplusargs___d50 = $test$plusargs("fullverbose");
	  #0;
	end
    if (RST_N != `BSV_RESET_VALUE)
      if (EN_ma_inputs)
	begin
	  TASK_testplusargs___d51 = $test$plusargs("mdivider");
	  #0;
	end
    if (RST_N != `BSV_RESET_VALUE)
      if (EN_ma_inputs)
	begin
	  TASK_testplusargs___d52 = $test$plusargs("l0");
	  #0;
	end
    if (RST_N != `BSV_RESET_VALUE)
      if (EN_ma_inputs)
	begin
	  v__h1219 = $time;
	  #0;
	end
    if (RST_N != `BSV_RESET_VALUE)
      if (EN_ma_inputs &&
	  (TASK_testplusargs___d50 ||
	   TASK_testplusargs___d51 && TASK_testplusargs___d52))
	$write("[%10d", v__h1219, "] ");
    if (RST_N != `BSV_RESET_VALUE)
      if (EN_ma_inputs &&
	  (TASK_testplusargs___d50 ||
	   TASK_testplusargs___d51 && TASK_testplusargs___d52))
	$write("core:%2d ", hartid, "DIV: Got inputs rg_count: %d", rg_count);
    if (RST_N != `BSV_RESET_VALUE)
      if (EN_ma_inputs &&
	  (TASK_testplusargs___d50 ||
	   TASK_testplusargs___d51 && TASK_testplusargs___d52))
	$write("\n");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_single_step_div)
	begin
	  TASK_testplusargs___d12 = $test$plusargs("fullverbose");
	  #0;
	end
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_single_step_div)
	begin
	  TASK_testplusargs___d13 = $test$plusargs("mdivider");
	  #0;
	end
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_single_step_div)
	begin
	  TASK_testplusargs___d14 = $test$plusargs("l0");
	  #0;
	end
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_single_step_div)
	begin
	  v__h664 = $time;
	  #0;
	end
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_single_step_div &&
	  (TASK_testplusargs___d12 ||
	   TASK_testplusargs___d13 && TASK_testplusargs___d14))
	$write("[%10d", v__h664, "] ");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_single_step_div &&
	  (TASK_testplusargs___d12 ||
	   TASK_testplusargs___d13 && TASK_testplusargs___d14))
	$write("core:%2d ",
	       hartid,
	       "DIV: RgCount:%d partial:%h QR:%b",
	       rg_count,
	       partial,
	       quotient_remainder);
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_single_step_div &&
	  (TASK_testplusargs___d12 ||
	   TASK_testplusargs___d13 && TASK_testplusargs___d14))
	$write("\n");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_single_step_div && rg_op2 == 32'd0)
	begin
	  TASK_testplusargs___d43 = $test$plusargs("fullverbose");
	  #0;
	end
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_single_step_div && rg_op2 == 32'd0)
	begin
	  TASK_testplusargs___d44 = $test$plusargs("mdivider");
	  #0;
	end
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_single_step_div && rg_op2 == 32'd0)
	begin
	  TASK_testplusargs___d45 = $test$plusargs("l0");
	  #0;
	end
    rg_op2_0_EQ_0_9_AND_TASK_testplusargs_3_OR_TAS_ETC___d48 =
	rg_op2 == 32'd0 &&
	(TASK_testplusargs___d43 ||
	 TASK_testplusargs___d44 && TASK_testplusargs___d45);
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_single_step_div && rg_op2 == 32'd0)
	begin
	  v__h846 = $time;
	  #0;
	end
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_single_step_div &&
	  rg_op2_0_EQ_0_9_AND_TASK_testplusargs_3_OR_TAS_ETC___d48)
	$write("[%10d", v__h846, "] ");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_single_step_div &&
	  rg_op2_0_EQ_0_9_AND_TASK_testplusargs_3_OR_TAS_ETC___d48)
	$write("core:%2d ",
	       hartid,
	       "DIV: Divide by zero detected. RgCount:%d",
	       rg_count);
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_single_step_div &&
	  rg_op2_0_EQ_0_9_AND_TASK_testplusargs_3_OR_TAS_ETC___d48)
	$write("\n");
  end
  // synopsys translate_on
endmodule  // mkrestoring_div
