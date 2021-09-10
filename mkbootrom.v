//
// Generated by Bluespec Compiler, version 2021.07-3-g8227dc97 (build 8227dc97)
//
// On Fri Sep  3 12:09:53 PDT 2021
//
//
// Ports:
// Name                         I/O  size props
// slave_AWREADY                  O     1
// slave_WREADY                   O     1
// slave_BVALID                   O     1
// slave_BID                      O     1 reg
// slave_BRESP                    O     2 reg
// slave_ARREADY                  O     1
// slave_RVALID                   O     1
// slave_RID                      O     1 reg
// slave_RDATA                    O    32 reg
// slave_RRESP                    O     2 reg
// slave_RLAST                    O     1 reg
// CLK                            I     1 clock
// RST_N                          I     1 reset
// slave_AWVALID                  I     1
// slave_AWID                     I     1 reg
// slave_AWADDR                   I    32 reg
// slave_AWLEN                    I     8 reg
// slave_AWSIZE                   I     3 reg
// slave_AWBURST                  I     2 reg
// slave_AWLOCK                   I     1 reg
// slave_AWCACHE                  I     4 reg
// slave_AWPROT                   I     3 reg
// slave_AWQOS                    I     4 reg
// slave_AWREGION                 I     4 reg
// slave_WVALID                   I     1
// slave_WDATA                    I    32 reg
// slave_WSTRB                    I     4 reg
// slave_WLAST                    I     1 reg
// slave_BREADY                   I     1
// slave_ARVALID                  I     1
// slave_ARID                     I     1 reg
// slave_ARADDR                   I    32 reg
// slave_ARLEN                    I     8 reg
// slave_ARSIZE                   I     3 reg
// slave_ARBURST                  I     2 reg
// slave_ARLOCK                   I     1 reg
// slave_ARCACHE                  I     4 reg
// slave_ARPROT                   I     3 reg
// slave_ARQOS                    I     4 reg
// slave_ARREGION                 I     4 reg
// slave_RREADY                   I     1
//
// Combinational paths from inputs to outputs:
//   slave_BREADY -> slave_AWREADY
//   slave_BREADY -> slave_WREADY
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

module mkbootrom(CLK,
		 RST_N,

		 slave_AWVALID,
		 slave_AWID,
		 slave_AWADDR,
		 slave_AWLEN,
		 slave_AWSIZE,
		 slave_AWBURST,
		 slave_AWLOCK,
		 slave_AWCACHE,
		 slave_AWPROT,
		 slave_AWQOS,
		 slave_AWREGION,

		 slave_AWREADY,

		 slave_WVALID,
		 slave_WDATA,
		 slave_WSTRB,
		 slave_WLAST,

		 slave_WREADY,

		 slave_BVALID,

		 slave_BID,

		 slave_BRESP,

		 slave_BREADY,

		 slave_ARVALID,
		 slave_ARID,
		 slave_ARADDR,
		 slave_ARLEN,
		 slave_ARSIZE,
		 slave_ARBURST,
		 slave_ARLOCK,
		 slave_ARCACHE,
		 slave_ARPROT,
		 slave_ARQOS,
		 slave_ARREGION,

		 slave_ARREADY,

		 slave_RVALID,

		 slave_RID,

		 slave_RDATA,

		 slave_RRESP,

		 slave_RLAST,

		 slave_RREADY);
  input  CLK;
  input  RST_N;

  // action method slave_m_awvalid
  input  slave_AWVALID;
  input  slave_AWID;
  input  [31 : 0] slave_AWADDR;
  input  [7 : 0] slave_AWLEN;
  input  [2 : 0] slave_AWSIZE;
  input  [1 : 0] slave_AWBURST;
  input  slave_AWLOCK;
  input  [3 : 0] slave_AWCACHE;
  input  [2 : 0] slave_AWPROT;
  input  [3 : 0] slave_AWQOS;
  input  [3 : 0] slave_AWREGION;

  // value method slave_m_awready
  output slave_AWREADY;

  // action method slave_m_wvalid
  input  slave_WVALID;
  input  [31 : 0] slave_WDATA;
  input  [3 : 0] slave_WSTRB;
  input  slave_WLAST;

  // value method slave_m_wready
  output slave_WREADY;

  // value method slave_m_bvalid
  output slave_BVALID;

  // value method slave_m_bid
  output slave_BID;

  // value method slave_m_bresp
  output [1 : 0] slave_BRESP;

  // value method slave_m_buser

  // action method slave_m_bready
  input  slave_BREADY;

  // action method slave_m_arvalid
  input  slave_ARVALID;
  input  slave_ARID;
  input  [31 : 0] slave_ARADDR;
  input  [7 : 0] slave_ARLEN;
  input  [2 : 0] slave_ARSIZE;
  input  [1 : 0] slave_ARBURST;
  input  slave_ARLOCK;
  input  [3 : 0] slave_ARCACHE;
  input  [2 : 0] slave_ARPROT;
  input  [3 : 0] slave_ARQOS;
  input  [3 : 0] slave_ARREGION;

  // value method slave_m_arready
  output slave_ARREADY;

  // value method slave_m_rvalid
  output slave_RVALID;

  // value method slave_m_rid
  output slave_RID;

  // value method slave_m_rdata
  output [31 : 0] slave_RDATA;

  // value method slave_m_rresp
  output [1 : 0] slave_RRESP;

  // value method slave_m_rlast
  output slave_RLAST;

  // value method slave_m_ruser

  // action method slave_m_rready
  input  slave_RREADY;

  // signals for module outputs
  wire [31 : 0] slave_RDATA;
  wire [1 : 0] slave_BRESP, slave_RRESP;
  wire slave_ARREADY,
       slave_AWREADY,
       slave_BID,
       slave_BVALID,
       slave_RID,
       slave_RLAST,
       slave_RVALID,
       slave_WREADY;

  // inlined wires
  wire rg_capture_response_1_whas,
       s_xactor_crg_rd_addr_full_EN_port1__write,
       s_xactor_crg_rd_addr_full_port1__read,
       s_xactor_crg_rd_addr_full_port2__read,
       s_xactor_crg_rd_data_full_EN_port0__write,
       s_xactor_crg_rd_data_full_port1__read,
       s_xactor_crg_rd_data_full_port2__read,
       s_xactor_crg_wr_addr_full_EN_port1__write,
       s_xactor_crg_wr_addr_full_port1__read,
       s_xactor_crg_wr_addr_full_port2__read,
       s_xactor_crg_wr_data_full_EN_port0__write,
       s_xactor_crg_wr_data_full_EN_port1__write,
       s_xactor_crg_wr_data_full_port1__read,
       s_xactor_crg_wr_data_full_port2__read,
       s_xactor_crg_wr_resp_full_EN_port0__write,
       s_xactor_crg_wr_resp_full_EN_port1__write,
       s_xactor_crg_wr_resp_full_port1__read,
       s_xactor_crg_wr_resp_full_port2__read;

  // register rg_capture_response
  reg rg_capture_response;
  wire rg_capture_response_D_IN, rg_capture_response_EN;

  // register rg_rd_req
  reg [61 : 0] rg_rd_req;
  wire [61 : 0] rg_rd_req_D_IN;
  wire rg_rd_req_EN;

  // register rg_rd_state
  reg rg_rd_state;
  wire rg_rd_state_D_IN, rg_rd_state_EN;

  // register rg_readreq_count
  reg [7 : 0] rg_readreq_count;
  wire [7 : 0] rg_readreq_count_D_IN;
  wire rg_readreq_count_EN;

  // register rg_readresp_count
  reg [7 : 0] rg_readresp_count;
  wire [7 : 0] rg_readresp_count_D_IN;
  wire rg_readresp_count_EN;

  // register rg_wr_state
  reg rg_wr_state;
  wire rg_wr_state_D_IN, rg_wr_state_EN;

  // register rg_write_response
  reg [2 : 0] rg_write_response;
  wire [2 : 0] rg_write_response_D_IN;
  wire rg_write_response_EN;

  // register s_xactor_crg_rd_addr_full
  reg s_xactor_crg_rd_addr_full;
  wire s_xactor_crg_rd_addr_full_D_IN, s_xactor_crg_rd_addr_full_EN;

  // register s_xactor_crg_rd_data_full
  reg s_xactor_crg_rd_data_full;
  wire s_xactor_crg_rd_data_full_D_IN, s_xactor_crg_rd_data_full_EN;

  // register s_xactor_crg_wr_addr_full
  reg s_xactor_crg_wr_addr_full;
  wire s_xactor_crg_wr_addr_full_D_IN, s_xactor_crg_wr_addr_full_EN;

  // register s_xactor_crg_wr_data_full
  reg s_xactor_crg_wr_data_full;
  wire s_xactor_crg_wr_data_full_D_IN, s_xactor_crg_wr_data_full_EN;

  // register s_xactor_crg_wr_resp_full
  reg s_xactor_crg_wr_resp_full;
  wire s_xactor_crg_wr_resp_full_D_IN, s_xactor_crg_wr_resp_full_EN;

  // register s_xactor_rg_rd_addr
  reg [61 : 0] s_xactor_rg_rd_addr;
  wire [61 : 0] s_xactor_rg_rd_addr_D_IN;
  wire s_xactor_rg_rd_addr_EN;

  // register s_xactor_rg_rd_data
  reg [35 : 0] s_xactor_rg_rd_data;
  wire [35 : 0] s_xactor_rg_rd_data_D_IN;
  wire s_xactor_rg_rd_data_EN;

  // register s_xactor_rg_wr_addr
  reg [61 : 0] s_xactor_rg_wr_addr;
  wire [61 : 0] s_xactor_rg_wr_addr_D_IN;
  wire s_xactor_rg_wr_addr_EN;

  // register s_xactor_rg_wr_data
  reg [36 : 0] s_xactor_rg_wr_data;
  wire [36 : 0] s_xactor_rg_wr_data_D_IN;
  wire s_xactor_rg_wr_data_EN;

  // register s_xactor_rg_wr_resp
  reg [2 : 0] s_xactor_rg_wr_resp;
  wire [2 : 0] s_xactor_rg_wr_resp_D_IN;
  wire s_xactor_rg_wr_resp_EN;

  // ports of submodule rom_v_mem_0
  wire [31 : 0] rom_v_mem_0_DI, rom_v_mem_0_DO;
  wire [12 : 0] rom_v_mem_0_ADDR;
  wire rom_v_mem_0_EN, rom_v_mem_0_WE;

  // rule scheduling signals
  wire CAN_FIRE_RL_rg_capture_response__dreg_update,
       CAN_FIRE_RL_rl_read_request,
       CAN_FIRE_RL_rl_read_request_burst,
       CAN_FIRE_RL_rl_read_response,
       CAN_FIRE_RL_rl_write_request,
       CAN_FIRE_RL_rl_write_response,
       CAN_FIRE_slave_m_arvalid,
       CAN_FIRE_slave_m_awvalid,
       CAN_FIRE_slave_m_bready,
       CAN_FIRE_slave_m_rready,
       CAN_FIRE_slave_m_wvalid,
       WILL_FIRE_RL_rg_capture_response__dreg_update,
       WILL_FIRE_RL_rl_read_request,
       WILL_FIRE_RL_rl_read_request_burst,
       WILL_FIRE_RL_rl_read_response,
       WILL_FIRE_RL_rl_write_request,
       WILL_FIRE_RL_rl_write_response,
       WILL_FIRE_slave_m_arvalid,
       WILL_FIRE_slave_m_awvalid,
       WILL_FIRE_slave_m_bready,
       WILL_FIRE_slave_m_rready,
       WILL_FIRE_slave_m_wvalid;

  // inputs to muxes for submodule ports
  wire [61 : 0] MUX_rg_rd_req_write_1__VAL_2;
  wire [7 : 0] MUX_rg_readreq_count_write_1__VAL_1,
	       MUX_rg_readresp_count_write_1__VAL_1;
  wire [2 : 0] MUX_s_xactor_rg_wr_resp_write_1__VAL_1;
  wire MUX_rg_rd_state_write_1__SEL_1,
       MUX_rg_wr_state_write_1__SEL_1,
       MUX_s_xactor_rg_wr_resp_write_1__SEL_1;

  // declarations used by system tasks
  // synopsys translate_off
  reg TASK_testplusargs___d18;
  reg TASK_testplusargs___d19;
  reg TASK_testplusargs___d20;
  reg [63 : 0] v__h2188;
  reg TASK_testplusargs___d72;
  reg TASK_testplusargs___d73;
  reg TASK_testplusargs___d74;
  reg [63 : 0] v__h2924;
  reg TASK_testplusargs_2_OR_TASK_testplusargs_3_AND_ETC___d78;
  reg TASK_testplusargs_2_OR_TASK_testplusargs_3_AND_ETC___d80;
  // synopsys translate_on

  // remaining internal signals
  reg [31 : 0] address__h2313;
  reg [2 : 0] CASE_rg_rd_req_BITS_28_TO_21_3_2_7_3_15_4_1__q1;
  wire [31 : 0] mask__h2385,
		new_address__h2383,
		rel_addr__h1756,
		rel_addr__h2519,
		temp1__h2386,
		temp2__h2387,
		y__h2487;
  wire [2 : 0] x__h2428;
  wire _dor1s_xactor_crg_wr_resp_full_EN_port1__write;

  // action method slave_m_awvalid
  assign CAN_FIRE_slave_m_awvalid = 1'd1 ;
  assign WILL_FIRE_slave_m_awvalid = 1'd1 ;

  // value method slave_m_awready
  assign slave_AWREADY = !s_xactor_crg_wr_addr_full_port1__read ;

  // action method slave_m_wvalid
  assign CAN_FIRE_slave_m_wvalid = 1'd1 ;
  assign WILL_FIRE_slave_m_wvalid = 1'd1 ;

  // value method slave_m_wready
  assign slave_WREADY = !s_xactor_crg_wr_data_full_port1__read ;

  // value method slave_m_bvalid
  assign slave_BVALID = s_xactor_crg_wr_resp_full ;

  // value method slave_m_bid
  assign slave_BID = s_xactor_rg_wr_resp[2] ;

  // value method slave_m_bresp
  assign slave_BRESP = s_xactor_rg_wr_resp[1:0] ;

  // action method slave_m_bready
  assign CAN_FIRE_slave_m_bready = 1'd1 ;
  assign WILL_FIRE_slave_m_bready = 1'd1 ;

  // action method slave_m_arvalid
  assign CAN_FIRE_slave_m_arvalid = 1'd1 ;
  assign WILL_FIRE_slave_m_arvalid = 1'd1 ;

  // value method slave_m_arready
  assign slave_ARREADY = !s_xactor_crg_rd_addr_full_port1__read ;

  // value method slave_m_rvalid
  assign slave_RVALID = s_xactor_crg_rd_data_full ;

  // value method slave_m_rid
  assign slave_RID = s_xactor_rg_rd_data[35] ;

  // value method slave_m_rdata
  assign slave_RDATA = s_xactor_rg_rd_data[34:3] ;

  // value method slave_m_rresp
  assign slave_RRESP = s_xactor_rg_rd_data[2:1] ;

  // value method slave_m_rlast
  assign slave_RLAST = s_xactor_rg_rd_data[0] ;

  // action method slave_m_rready
  assign CAN_FIRE_slave_m_rready = 1'd1 ;
  assign WILL_FIRE_slave_m_rready = 1'd1 ;

  // submodule rom_v_mem_0
  BRAM1Load #(.FILENAME("boot.mem"),
	      .PIPELINED(1'd0),
	      .ADDR_WIDTH(32'd13),
	      .DATA_WIDTH(32'd32),
	      .MEMSIZE(14'd8192),
	      .BINARY(1'd0)) rom_v_mem_0(.CLK(CLK),
					 .ADDR(rom_v_mem_0_ADDR),
					 .DI(rom_v_mem_0_DI),
					 .WE(rom_v_mem_0_WE),
					 .EN(rom_v_mem_0_EN),
					 .DO(rom_v_mem_0_DO));

  // rule RL_rl_read_request
  assign CAN_FIRE_RL_rl_read_request =
	     s_xactor_crg_rd_addr_full && !rg_rd_state &&
	     !rg_capture_response ;
  assign WILL_FIRE_RL_rl_read_request = CAN_FIRE_RL_rl_read_request ;

  // rule RL_rl_read_response
  assign CAN_FIRE_RL_rl_read_response =
	     !s_xactor_crg_rd_data_full_port1__read && rg_capture_response ;
  assign WILL_FIRE_RL_rl_read_response = CAN_FIRE_RL_rl_read_response ;

  // rule RL_rl_read_request_burst
  assign CAN_FIRE_RL_rl_read_request_burst = rg_rd_state ;
  assign WILL_FIRE_RL_rl_read_request_burst = rg_rd_state ;

  // rule RL_rl_write_request
  assign CAN_FIRE_RL_rl_write_request =
	     s_xactor_crg_wr_addr_full && s_xactor_crg_wr_data_full &&
	     !s_xactor_crg_wr_resp_full_port1__read &&
	     !rg_wr_state ;
  assign WILL_FIRE_RL_rl_write_request = CAN_FIRE_RL_rl_write_request ;

  // rule RL_rl_write_response
  assign CAN_FIRE_RL_rl_write_response =
	     s_xactor_crg_wr_data_full &&
	     !s_xactor_crg_wr_resp_full_port1__read &&
	     rg_wr_state ;
  assign WILL_FIRE_RL_rl_write_response = CAN_FIRE_RL_rl_write_response ;

  // rule RL_rg_capture_response__dreg_update
  assign CAN_FIRE_RL_rg_capture_response__dreg_update = 1'd1 ;
  assign WILL_FIRE_RL_rg_capture_response__dreg_update = 1'd1 ;

  // inputs to muxes for submodule ports
  assign MUX_rg_rd_state_write_1__SEL_1 =
	     WILL_FIRE_RL_rl_read_request &&
	     s_xactor_rg_rd_addr[28:21] != 8'd0 ;
  assign MUX_rg_wr_state_write_1__SEL_1 =
	     WILL_FIRE_RL_rl_write_response && s_xactor_rg_wr_data[0] ;
  assign MUX_s_xactor_rg_wr_resp_write_1__SEL_1 =
	     WILL_FIRE_RL_rl_write_request && s_xactor_rg_wr_data[0] ;
  assign MUX_rg_rd_req_write_1__VAL_2 =
	     { rg_rd_req[61], address__h2313, rg_rd_req[28:0] } ;
  assign MUX_rg_readreq_count_write_1__VAL_1 = rg_readreq_count - 8'd1 ;
  assign MUX_rg_readresp_count_write_1__VAL_1 = rg_readresp_count - 8'd1 ;
  assign MUX_s_xactor_rg_wr_resp_write_1__VAL_1 =
	     { s_xactor_rg_wr_addr[61], 2'd2 } ;

  // inlined wires
  assign rg_capture_response_1_whas =
	     rg_rd_state || WILL_FIRE_RL_rl_read_request ;
  assign s_xactor_crg_wr_addr_full_port1__read =
	     !CAN_FIRE_RL_rl_write_request && s_xactor_crg_wr_addr_full ;
  assign s_xactor_crg_wr_addr_full_EN_port1__write =
	     slave_AWVALID && !s_xactor_crg_wr_addr_full_port1__read ;
  assign s_xactor_crg_wr_addr_full_port2__read =
	     s_xactor_crg_wr_addr_full_EN_port1__write ||
	     s_xactor_crg_wr_addr_full_port1__read ;
  assign s_xactor_crg_wr_data_full_EN_port0__write =
	     WILL_FIRE_RL_rl_write_response || WILL_FIRE_RL_rl_write_request ;
  assign s_xactor_crg_wr_data_full_port1__read =
	     !s_xactor_crg_wr_data_full_EN_port0__write &&
	     s_xactor_crg_wr_data_full ;
  assign s_xactor_crg_wr_data_full_EN_port1__write =
	     slave_WVALID && !s_xactor_crg_wr_data_full_port1__read ;
  assign s_xactor_crg_wr_data_full_port2__read =
	     s_xactor_crg_wr_data_full_EN_port1__write ||
	     s_xactor_crg_wr_data_full_port1__read ;
  assign s_xactor_crg_wr_resp_full_EN_port0__write =
	     slave_BREADY && s_xactor_crg_wr_resp_full ;
  assign s_xactor_crg_wr_resp_full_port1__read =
	     !s_xactor_crg_wr_resp_full_EN_port0__write &&
	     s_xactor_crg_wr_resp_full ;
  assign s_xactor_crg_wr_resp_full_EN_port1__write =
	     _dor1s_xactor_crg_wr_resp_full_EN_port1__write &&
	     s_xactor_rg_wr_data[0] ;
  assign s_xactor_crg_wr_resp_full_port2__read =
	     s_xactor_crg_wr_resp_full_EN_port1__write ||
	     s_xactor_crg_wr_resp_full_port1__read ;
  assign s_xactor_crg_rd_addr_full_port1__read =
	     !CAN_FIRE_RL_rl_read_request && s_xactor_crg_rd_addr_full ;
  assign s_xactor_crg_rd_addr_full_EN_port1__write =
	     slave_ARVALID && !s_xactor_crg_rd_addr_full_port1__read ;
  assign s_xactor_crg_rd_addr_full_port2__read =
	     s_xactor_crg_rd_addr_full_EN_port1__write ||
	     s_xactor_crg_rd_addr_full_port1__read ;
  assign s_xactor_crg_rd_data_full_EN_port0__write =
	     slave_RREADY && s_xactor_crg_rd_data_full ;
  assign s_xactor_crg_rd_data_full_port1__read =
	     !s_xactor_crg_rd_data_full_EN_port0__write &&
	     s_xactor_crg_rd_data_full ;
  assign s_xactor_crg_rd_data_full_port2__read =
	     CAN_FIRE_RL_rl_read_response ||
	     s_xactor_crg_rd_data_full_port1__read ;

  // register rg_capture_response
  assign rg_capture_response_D_IN = rg_capture_response_1_whas ;
  assign rg_capture_response_EN = 1'd1 ;

  // register rg_rd_req
  assign rg_rd_req_D_IN =
	     WILL_FIRE_RL_rl_read_request ?
	       s_xactor_rg_rd_addr :
	       MUX_rg_rd_req_write_1__VAL_2 ;
  assign rg_rd_req_EN = WILL_FIRE_RL_rl_read_request || rg_rd_state ;

  // register rg_rd_state
  assign rg_rd_state_D_IN = MUX_rg_rd_state_write_1__SEL_1 ;
  assign rg_rd_state_EN =
	     WILL_FIRE_RL_rl_read_request &&
	     s_xactor_rg_rd_addr[28:21] != 8'd0 ||
	     rg_rd_state && rg_readreq_count == 8'd0 ;

  // register rg_readreq_count
  assign rg_readreq_count_D_IN =
	     rg_rd_state ?
	       MUX_rg_readreq_count_write_1__VAL_1 :
	       s_xactor_rg_rd_addr[28:21] ;
  assign rg_readreq_count_EN = rg_capture_response_1_whas ;

  // register rg_readresp_count
  assign rg_readresp_count_D_IN =
	     WILL_FIRE_RL_rl_read_response ?
	       MUX_rg_readresp_count_write_1__VAL_1 :
	       s_xactor_rg_rd_addr[28:21] ;
  assign rg_readresp_count_EN =
	     WILL_FIRE_RL_rl_read_response || WILL_FIRE_RL_rl_read_request ;

  // register rg_wr_state
  assign rg_wr_state_D_IN = !MUX_rg_wr_state_write_1__SEL_1 ;
  assign rg_wr_state_EN =
	     WILL_FIRE_RL_rl_write_response && s_xactor_rg_wr_data[0] ||
	     WILL_FIRE_RL_rl_write_request && !s_xactor_rg_wr_data[0] ;

  // register rg_write_response
  assign rg_write_response_D_IN = MUX_s_xactor_rg_wr_resp_write_1__VAL_1 ;
  assign rg_write_response_EN = CAN_FIRE_RL_rl_write_request ;

  // register s_xactor_crg_rd_addr_full
  assign s_xactor_crg_rd_addr_full_D_IN =
	     s_xactor_crg_rd_addr_full_port2__read ;
  assign s_xactor_crg_rd_addr_full_EN = 1'b1 ;

  // register s_xactor_crg_rd_data_full
  assign s_xactor_crg_rd_data_full_D_IN =
	     s_xactor_crg_rd_data_full_port2__read ;
  assign s_xactor_crg_rd_data_full_EN = 1'b1 ;

  // register s_xactor_crg_wr_addr_full
  assign s_xactor_crg_wr_addr_full_D_IN =
	     s_xactor_crg_wr_addr_full_port2__read ;
  assign s_xactor_crg_wr_addr_full_EN = 1'b1 ;

  // register s_xactor_crg_wr_data_full
  assign s_xactor_crg_wr_data_full_D_IN =
	     s_xactor_crg_wr_data_full_port2__read ;
  assign s_xactor_crg_wr_data_full_EN = 1'b1 ;

  // register s_xactor_crg_wr_resp_full
  assign s_xactor_crg_wr_resp_full_D_IN =
	     s_xactor_crg_wr_resp_full_port2__read ;
  assign s_xactor_crg_wr_resp_full_EN = 1'b1 ;

  // register s_xactor_rg_rd_addr
  assign s_xactor_rg_rd_addr_D_IN =
	     { slave_ARID,
	       slave_ARADDR,
	       slave_ARLEN,
	       slave_ARSIZE,
	       slave_ARBURST,
	       slave_ARLOCK,
	       slave_ARCACHE,
	       slave_ARPROT,
	       slave_ARQOS,
	       slave_ARREGION } ;
  assign s_xactor_rg_rd_addr_EN =
	     slave_ARVALID && !s_xactor_crg_rd_addr_full_port1__read ;

  // register s_xactor_rg_rd_data
  assign s_xactor_rg_rd_data_D_IN =
	     { rg_rd_req[61],
	       rom_v_mem_0_DO,
	       2'b0,
	       rg_readresp_count == 8'd0 } ;
  assign s_xactor_rg_rd_data_EN = CAN_FIRE_RL_rl_read_response ;

  // register s_xactor_rg_wr_addr
  assign s_xactor_rg_wr_addr_D_IN =
	     { slave_AWID,
	       slave_AWADDR,
	       slave_AWLEN,
	       slave_AWSIZE,
	       slave_AWBURST,
	       slave_AWLOCK,
	       slave_AWCACHE,
	       slave_AWPROT,
	       slave_AWQOS,
	       slave_AWREGION } ;
  assign s_xactor_rg_wr_addr_EN =
	     slave_AWVALID && !s_xactor_crg_wr_addr_full_port1__read ;

  // register s_xactor_rg_wr_data
  assign s_xactor_rg_wr_data_D_IN =
	     { slave_WDATA, slave_WSTRB, slave_WLAST } ;
  assign s_xactor_rg_wr_data_EN =
	     slave_WVALID && !s_xactor_crg_wr_data_full_port1__read ;

  // register s_xactor_rg_wr_resp
  assign s_xactor_rg_wr_resp_D_IN =
	     MUX_s_xactor_rg_wr_resp_write_1__SEL_1 ?
	       MUX_s_xactor_rg_wr_resp_write_1__VAL_1 :
	       rg_write_response ;
  assign s_xactor_rg_wr_resp_EN =
	     WILL_FIRE_RL_rl_write_request && s_xactor_rg_wr_data[0] ||
	     WILL_FIRE_RL_rl_write_response && s_xactor_rg_wr_data[0] ;

  // submodule rom_v_mem_0
  assign rom_v_mem_0_ADDR =
	     WILL_FIRE_RL_rl_read_request ?
	       rel_addr__h1756[14:2] :
	       rel_addr__h2519[14:2] ;
  assign rom_v_mem_0_DI =
	     WILL_FIRE_RL_rl_read_request ?
	       32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx /* unspecified value */  :
	       32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx /* unspecified value */  ;
  assign rom_v_mem_0_WE = 1'd0 ;
  assign rom_v_mem_0_EN = WILL_FIRE_RL_rl_read_request || rg_rd_state ;

  // remaining internal signals
  assign _dor1s_xactor_crg_wr_resp_full_EN_port1__write =
	     WILL_FIRE_RL_rl_write_response || WILL_FIRE_RL_rl_write_request ;
  assign mask__h2385 = 32'hFFFFFFFF << x__h2428 ;
  assign new_address__h2383 =
	     rg_rd_req[60:29] +
	     (32'b00000000000000000000000000000001 << rg_rd_req[20:18]) ;
  assign rel_addr__h1756 = s_xactor_rg_rd_addr[60:29] - 32'h00001000 ;
  assign rel_addr__h2519 = address__h2313 - 32'h00001000 ;
  assign temp1__h2386 = rg_rd_req[60:29] & mask__h2385 ;
  assign temp2__h2387 = new_address__h2383 & y__h2487 ;
  assign x__h2428 =
	     rg_rd_req[20:18] +
	     CASE_rg_rd_req_BITS_28_TO_21_3_2_7_3_15_4_1__q1 ;
  assign y__h2487 = ~mask__h2385 ;
  always@(rg_rd_req)
  begin
    case (rg_rd_req[28:21])
      8'd3: CASE_rg_rd_req_BITS_28_TO_21_3_2_7_3_15_4_1__q1 = 3'd2;
      8'd7: CASE_rg_rd_req_BITS_28_TO_21_3_2_7_3_15_4_1__q1 = 3'd3;
      8'd15: CASE_rg_rd_req_BITS_28_TO_21_3_2_7_3_15_4_1__q1 = 3'd4;
      default: CASE_rg_rd_req_BITS_28_TO_21_3_2_7_3_15_4_1__q1 = 3'd1;
    endcase
  end
  always@(rg_rd_req or temp1__h2386 or temp2__h2387 or new_address__h2383)
  begin
    case (rg_rd_req[17:16])
      2'b0: address__h2313 = rg_rd_req[60:29];
      2'b01: address__h2313 = new_address__h2383;
      default: address__h2313 = temp1__h2386 | temp2__h2387;
    endcase
  end

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        rg_capture_response <= `BSV_ASSIGNMENT_DELAY 1'd0;
	rg_rd_req <= `BSV_ASSIGNMENT_DELAY 62'd0;
	rg_rd_state <= `BSV_ASSIGNMENT_DELAY 1'd0;
	rg_readreq_count <= `BSV_ASSIGNMENT_DELAY 8'd0;
	rg_readresp_count <= `BSV_ASSIGNMENT_DELAY 8'd0;
	rg_wr_state <= `BSV_ASSIGNMENT_DELAY 1'd0;
	rg_write_response <= `BSV_ASSIGNMENT_DELAY 3'd0;
	s_xactor_crg_rd_addr_full <= `BSV_ASSIGNMENT_DELAY 1'd0;
	s_xactor_crg_rd_data_full <= `BSV_ASSIGNMENT_DELAY 1'd0;
	s_xactor_crg_wr_addr_full <= `BSV_ASSIGNMENT_DELAY 1'd0;
	s_xactor_crg_wr_data_full <= `BSV_ASSIGNMENT_DELAY 1'd0;
	s_xactor_crg_wr_resp_full <= `BSV_ASSIGNMENT_DELAY 1'd0;
      end
    else
      begin
        if (rg_capture_response_EN)
	  rg_capture_response <= `BSV_ASSIGNMENT_DELAY
	      rg_capture_response_D_IN;
	if (rg_rd_req_EN) rg_rd_req <= `BSV_ASSIGNMENT_DELAY rg_rd_req_D_IN;
	if (rg_rd_state_EN)
	  rg_rd_state <= `BSV_ASSIGNMENT_DELAY rg_rd_state_D_IN;
	if (rg_readreq_count_EN)
	  rg_readreq_count <= `BSV_ASSIGNMENT_DELAY rg_readreq_count_D_IN;
	if (rg_readresp_count_EN)
	  rg_readresp_count <= `BSV_ASSIGNMENT_DELAY rg_readresp_count_D_IN;
	if (rg_wr_state_EN)
	  rg_wr_state <= `BSV_ASSIGNMENT_DELAY rg_wr_state_D_IN;
	if (rg_write_response_EN)
	  rg_write_response <= `BSV_ASSIGNMENT_DELAY rg_write_response_D_IN;
	if (s_xactor_crg_rd_addr_full_EN)
	  s_xactor_crg_rd_addr_full <= `BSV_ASSIGNMENT_DELAY
	      s_xactor_crg_rd_addr_full_D_IN;
	if (s_xactor_crg_rd_data_full_EN)
	  s_xactor_crg_rd_data_full <= `BSV_ASSIGNMENT_DELAY
	      s_xactor_crg_rd_data_full_D_IN;
	if (s_xactor_crg_wr_addr_full_EN)
	  s_xactor_crg_wr_addr_full <= `BSV_ASSIGNMENT_DELAY
	      s_xactor_crg_wr_addr_full_D_IN;
	if (s_xactor_crg_wr_data_full_EN)
	  s_xactor_crg_wr_data_full <= `BSV_ASSIGNMENT_DELAY
	      s_xactor_crg_wr_data_full_D_IN;
	if (s_xactor_crg_wr_resp_full_EN)
	  s_xactor_crg_wr_resp_full <= `BSV_ASSIGNMENT_DELAY
	      s_xactor_crg_wr_resp_full_D_IN;
      end
    if (s_xactor_rg_rd_addr_EN)
      s_xactor_rg_rd_addr <= `BSV_ASSIGNMENT_DELAY s_xactor_rg_rd_addr_D_IN;
    if (s_xactor_rg_rd_data_EN)
      s_xactor_rg_rd_data <= `BSV_ASSIGNMENT_DELAY s_xactor_rg_rd_data_D_IN;
    if (s_xactor_rg_wr_addr_EN)
      s_xactor_rg_wr_addr <= `BSV_ASSIGNMENT_DELAY s_xactor_rg_wr_addr_D_IN;
    if (s_xactor_rg_wr_data_EN)
      s_xactor_rg_wr_data <= `BSV_ASSIGNMENT_DELAY s_xactor_rg_wr_data_D_IN;
    if (s_xactor_rg_wr_resp_EN)
      s_xactor_rg_wr_resp <= `BSV_ASSIGNMENT_DELAY s_xactor_rg_wr_resp_D_IN;
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    rg_capture_response = 1'h0;
    rg_rd_req = 62'h2AAAAAAAAAAAAAAA;
    rg_rd_state = 1'h0;
    rg_readreq_count = 8'hAA;
    rg_readresp_count = 8'hAA;
    rg_wr_state = 1'h0;
    rg_write_response = 3'h2;
    s_xactor_crg_rd_addr_full = 1'h0;
    s_xactor_crg_rd_data_full = 1'h0;
    s_xactor_crg_wr_addr_full = 1'h0;
    s_xactor_crg_wr_data_full = 1'h0;
    s_xactor_crg_wr_resp_full = 1'h0;
    s_xactor_rg_rd_addr = 62'h2AAAAAAAAAAAAAAA;
    s_xactor_rg_rd_data = 36'hAAAAAAAAA;
    s_xactor_rg_wr_addr = 62'h2AAAAAAAAAAAAAAA;
    s_xactor_rg_wr_data = 37'h0AAAAAAAAA;
    s_xactor_rg_wr_resp = 3'h2;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on

  // handling of system tasks

  // synopsys translate_off
  always@(negedge CLK)
  begin
    #0;
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_request)
	begin
	  TASK_testplusargs___d18 = $test$plusargs("fullverbose");
	  #0;
	end
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_request)
	begin
	  TASK_testplusargs___d19 = $test$plusargs("mrom");
	  #0;
	end
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_request)
	begin
	  TASK_testplusargs___d20 = $test$plusargs("l0");
	  #0;
	end
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_request)
	begin
	  v__h2188 = $time;
	  #0;
	end
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_request &&
	  (TASK_testplusargs___d18 ||
	   TASK_testplusargs___d19 && TASK_testplusargs___d20))
	$write("[%10d", v__h2188, "] ");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_request &&
	  (TASK_testplusargs___d18 ||
	   TASK_testplusargs___d19 && TASK_testplusargs___d20))
	$write("ROM: RdReq: ");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_request &&
	  (TASK_testplusargs___d18 ||
	   TASK_testplusargs___d19 && TASK_testplusargs___d20))
	$write("Axi4_rd_addr { ", "arid: ");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_request &&
	  (TASK_testplusargs___d18 ||
	   TASK_testplusargs___d19 && TASK_testplusargs___d20))
	$write("'h%h", s_xactor_rg_rd_addr[61]);
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_request &&
	  (TASK_testplusargs___d18 ||
	   TASK_testplusargs___d19 && TASK_testplusargs___d20))
	$write(", ", "araddr: ");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_request &&
	  (TASK_testplusargs___d18 ||
	   TASK_testplusargs___d19 && TASK_testplusargs___d20))
	$write("'h%h", s_xactor_rg_rd_addr[60:29]);
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_request &&
	  (TASK_testplusargs___d18 ||
	   TASK_testplusargs___d19 && TASK_testplusargs___d20))
	$write(", ", "arlen: ");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_request &&
	  (TASK_testplusargs___d18 ||
	   TASK_testplusargs___d19 && TASK_testplusargs___d20))
	$write("'h%h", s_xactor_rg_rd_addr[28:21]);
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_request &&
	  (TASK_testplusargs___d18 ||
	   TASK_testplusargs___d19 && TASK_testplusargs___d20))
	$write(", ", "arsize: ");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_request &&
	  (TASK_testplusargs___d18 ||
	   TASK_testplusargs___d19 && TASK_testplusargs___d20))
	$write("'h%h", s_xactor_rg_rd_addr[20:18]);
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_request &&
	  (TASK_testplusargs___d18 ||
	   TASK_testplusargs___d19 && TASK_testplusargs___d20))
	$write(", ", "arburst: ");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_request &&
	  (TASK_testplusargs___d18 ||
	   TASK_testplusargs___d19 && TASK_testplusargs___d20))
	$write("'h%h", s_xactor_rg_rd_addr[17:16]);
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_request &&
	  (TASK_testplusargs___d18 ||
	   TASK_testplusargs___d19 && TASK_testplusargs___d20))
	$write(", ", "arlock: ");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_request &&
	  (TASK_testplusargs___d18 ||
	   TASK_testplusargs___d19 && TASK_testplusargs___d20))
	$write("'h%h", s_xactor_rg_rd_addr[15]);
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_request &&
	  (TASK_testplusargs___d18 ||
	   TASK_testplusargs___d19 && TASK_testplusargs___d20))
	$write(", ", "arcache: ");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_request &&
	  (TASK_testplusargs___d18 ||
	   TASK_testplusargs___d19 && TASK_testplusargs___d20))
	$write("'h%h", s_xactor_rg_rd_addr[14:11]);
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_request &&
	  (TASK_testplusargs___d18 ||
	   TASK_testplusargs___d19 && TASK_testplusargs___d20))
	$write(", ", "arprot: ");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_request &&
	  (TASK_testplusargs___d18 ||
	   TASK_testplusargs___d19 && TASK_testplusargs___d20))
	$write("'h%h", s_xactor_rg_rd_addr[10:8]);
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_request &&
	  (TASK_testplusargs___d18 ||
	   TASK_testplusargs___d19 && TASK_testplusargs___d20))
	$write(", ", "arqos: ");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_request &&
	  (TASK_testplusargs___d18 ||
	   TASK_testplusargs___d19 && TASK_testplusargs___d20))
	$write("'h%h", s_xactor_rg_rd_addr[7:4]);
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_request &&
	  (TASK_testplusargs___d18 ||
	   TASK_testplusargs___d19 && TASK_testplusargs___d20))
	$write(", ", "arregion: ");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_request &&
	  (TASK_testplusargs___d18 ||
	   TASK_testplusargs___d19 && TASK_testplusargs___d20))
	$write("'h%h", s_xactor_rg_rd_addr[3:0]);
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_request &&
	  (TASK_testplusargs___d18 ||
	   TASK_testplusargs___d19 && TASK_testplusargs___d20))
	$write(", ", "aruser: ");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_request &&
	  (TASK_testplusargs___d18 ||
	   TASK_testplusargs___d19 && TASK_testplusargs___d20))
	$write("'h%h", 1'd0, " }");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_request &&
	  (TASK_testplusargs___d18 ||
	   TASK_testplusargs___d19 && TASK_testplusargs___d20))
	$write("\n");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_response)
	begin
	  TASK_testplusargs___d72 = $test$plusargs("fullverbose");
	  #0;
	end
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_response)
	begin
	  TASK_testplusargs___d73 = $test$plusargs("mrom");
	  #0;
	end
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_response)
	begin
	  TASK_testplusargs___d74 = $test$plusargs("l1");
	  #0;
	end
    TASK_testplusargs_2_OR_TASK_testplusargs_3_AND_ETC___d78 =
	(TASK_testplusargs___d72 ||
	 TASK_testplusargs___d73 && TASK_testplusargs___d74) &&
	rg_readresp_count == 8'd0;
    TASK_testplusargs_2_OR_TASK_testplusargs_3_AND_ETC___d80 =
	(TASK_testplusargs___d72 ||
	 TASK_testplusargs___d73 && TASK_testplusargs___d74) &&
	rg_readresp_count != 8'd0;
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_response)
	begin
	  v__h2924 = $time;
	  #0;
	end
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_response &&
	  (TASK_testplusargs___d72 ||
	   TASK_testplusargs___d73 && TASK_testplusargs___d74))
	$write("[%10d", v__h2924, "] ");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_response &&
	  (TASK_testplusargs___d72 ||
	   TASK_testplusargs___d73 && TASK_testplusargs___d74))
	$write("ROM : RdResp: ");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_response &&
	  (TASK_testplusargs___d72 ||
	   TASK_testplusargs___d73 && TASK_testplusargs___d74))
	$write("Axi4_rd_data { ", "rid: ");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_response &&
	  (TASK_testplusargs___d72 ||
	   TASK_testplusargs___d73 && TASK_testplusargs___d74))
	$write("'h%h", rg_rd_req[61]);
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_response &&
	  (TASK_testplusargs___d72 ||
	   TASK_testplusargs___d73 && TASK_testplusargs___d74))
	$write(", ", "rdata: ");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_response &&
	  (TASK_testplusargs___d72 ||
	   TASK_testplusargs___d73 && TASK_testplusargs___d74))
	$write("'h%h", rom_v_mem_0_DO);
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_response &&
	  (TASK_testplusargs___d72 ||
	   TASK_testplusargs___d73 && TASK_testplusargs___d74))
	$write(", ", "rresp: ");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_response &&
	  (TASK_testplusargs___d72 ||
	   TASK_testplusargs___d73 && TASK_testplusargs___d74))
	$write("'h%h", 2'b0);
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_response &&
	  (TASK_testplusargs___d72 ||
	   TASK_testplusargs___d73 && TASK_testplusargs___d74))
	$write(", ", "rlast: ");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_response &&
	  TASK_testplusargs_2_OR_TASK_testplusargs_3_AND_ETC___d78)
	$write("True");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_response &&
	  TASK_testplusargs_2_OR_TASK_testplusargs_3_AND_ETC___d80)
	$write("False");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_response &&
	  (TASK_testplusargs___d72 ||
	   TASK_testplusargs___d73 && TASK_testplusargs___d74))
	$write(", ", "ruser: ");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_response &&
	  (TASK_testplusargs___d72 ||
	   TASK_testplusargs___d73 && TASK_testplusargs___d74))
	$write("'h%h", 1'd0, " }");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_read_response &&
	  (TASK_testplusargs___d72 ||
	   TASK_testplusargs___d73 && TASK_testplusargs___d74))
	$write("\n");
  end
  // synopsys translate_on
endmodule  // mkbootrom

