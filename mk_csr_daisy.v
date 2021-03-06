//
// Generated by Bluespec Compiler, version 2021.07-3-g8227dc97 (build 8227dc97)
//
// On Fri Sep  3 12:08:47 PDT 2021
//
//
// Ports:
// Name                         I/O  size props
// RDY_ma_core_req                O     1 reg
// mv_resp_to_core                O    33
// RDY_mv_resp_to_core            O     1 const
// mav_upd_on_ret                 O    32
// RDY_mav_upd_on_ret             O     1 const
// mav_upd_on_trap                O    32
// RDY_mav_upd_on_trap            O     1 const
// RDY_ma_clint_msip              O     1 const
// RDY_ma_clint_mtip              O     1 const
// RDY_ma_set_meip                O     1 const
// mv_csr_mstatus                 O    32
// RDY_mv_csr_mstatus             O     1 const
// mv_csrs_to_decode              O   101
// RDY_mv_csrs_to_decode          O     1 const
// mv_curr_priv                   O     2 reg
// RDY_mv_curr_priv               O     1 const
// mv_resume_wfi                  O     1
// RDY_mv_resume_wfi              O     1 const
// RDY_ma_update_fflags           O     1 const
// mv_cacheenable                 O     3 reg
// RDY_mv_cacheenable             O     1 const
// mv_csr_misa_c                  O     1 reg
// RDY_mv_csr_misa_c              O     1 const
// mv_pmp_cfg                     O    32 reg
// RDY_mv_pmp_cfg                 O     1 const
// mv_pmp_addr                    O   116 reg
// RDY_mv_pmp_addr                O     1 const
// RDY_ma_clint_mtime             O     1 const
// RDY_ma_incr_minstret           O     1 const
// mv_mcounteren                  O    32 reg
// RDY_mv_mcounteren              O     1 const
// RDY_ma_events_grp4             O     1 const
// RDY_ma_events_grp5             O     1 const
// RDY_ma_events_grp6             O     1 const
// RDY_ma_events_grp7             O     1 const
// CLK                            I     1 clock
// RST_N                          I     1 reset
// ma_core_req_req                I    48
// mav_upd_on_trap_c              I     6
// mav_upd_on_trap_pc             I    32
// mav_upd_on_trap_tval           I    32
// ma_clint_msip_intrpt           I     1 reg
// ma_clint_mtip_intrpt           I     1 reg
// ma_set_meip_ex_i               I     1 reg
// ma_update_fflags_flags         I     5
// ma_clint_mtime_c_mtime         I    64 reg
// ma_events_grp4_e               I    30
// ma_events_grp5_e               I    30
// ma_events_grp6_e               I    30
// ma_events_grp7_e               I    30
// EN_ma_core_req                 I     1
// EN_ma_clint_msip               I     1
// EN_ma_clint_mtip               I     1
// EN_ma_set_meip                 I     1
// EN_ma_update_fflags            I     1
// EN_ma_clint_mtime              I     1
// EN_ma_incr_minstret            I     1
// EN_ma_events_grp4              I     1
// EN_ma_events_grp5              I     1
// EN_ma_events_grp6              I     1
// EN_ma_events_grp7              I     1
// EN_mav_upd_on_ret              I     1
// EN_mav_upd_on_trap             I     1
//
// Combinational paths from inputs to outputs:
//   (mav_upd_on_trap_c, EN_mav_upd_on_trap) -> mav_upd_on_trap
//
//
// module : provides interface for all core-to-CSRs side-band accesses and a method to            perform regular CSR read-write operations, with access to registers being in a            daisy-chain manner.
//
// Comments on the inlined module `wr_core_resp':
//   wire : the wire captures the repsonse from the groups and is used to send the   	         data to core
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

module mk_csr_daisy(CLK,
		    RST_N,

		    ma_core_req_req,
		    EN_ma_core_req,
		    RDY_ma_core_req,

		    mv_resp_to_core,
		    RDY_mv_resp_to_core,

		    EN_mav_upd_on_ret,
		    mav_upd_on_ret,
		    RDY_mav_upd_on_ret,

		    mav_upd_on_trap_c,
		    mav_upd_on_trap_pc,
		    mav_upd_on_trap_tval,
		    EN_mav_upd_on_trap,
		    mav_upd_on_trap,
		    RDY_mav_upd_on_trap,

		    ma_clint_msip_intrpt,
		    EN_ma_clint_msip,
		    RDY_ma_clint_msip,

		    ma_clint_mtip_intrpt,
		    EN_ma_clint_mtip,
		    RDY_ma_clint_mtip,

		    ma_set_meip_ex_i,
		    EN_ma_set_meip,
		    RDY_ma_set_meip,

		    mv_csr_mstatus,
		    RDY_mv_csr_mstatus,

		    mv_csrs_to_decode,
		    RDY_mv_csrs_to_decode,

		    mv_curr_priv,
		    RDY_mv_curr_priv,

		    mv_resume_wfi,
		    RDY_mv_resume_wfi,

		    ma_update_fflags_flags,
		    EN_ma_update_fflags,
		    RDY_ma_update_fflags,

		    mv_cacheenable,
		    RDY_mv_cacheenable,

		    mv_csr_misa_c,
		    RDY_mv_csr_misa_c,

		    mv_pmp_cfg,
		    RDY_mv_pmp_cfg,

		    mv_pmp_addr,
		    RDY_mv_pmp_addr,

		    ma_clint_mtime_c_mtime,
		    EN_ma_clint_mtime,
		    RDY_ma_clint_mtime,

		    EN_ma_incr_minstret,
		    RDY_ma_incr_minstret,

		    mv_mcounteren,
		    RDY_mv_mcounteren,

		    ma_events_grp4_e,
		    EN_ma_events_grp4,
		    RDY_ma_events_grp4,

		    ma_events_grp5_e,
		    EN_ma_events_grp5,
		    RDY_ma_events_grp5,

		    ma_events_grp6_e,
		    EN_ma_events_grp6,
		    RDY_ma_events_grp6,

		    ma_events_grp7_e,
		    EN_ma_events_grp7,
		    RDY_ma_events_grp7);
  input  CLK;
  input  RST_N;

  // action method ma_core_req
  input  [47 : 0] ma_core_req_req;
  input  EN_ma_core_req;
  output RDY_ma_core_req;

  // value method mv_resp_to_core
  output [32 : 0] mv_resp_to_core;
  output RDY_mv_resp_to_core;

  // actionvalue method mav_upd_on_ret
  input  EN_mav_upd_on_ret;
  output [31 : 0] mav_upd_on_ret;
  output RDY_mav_upd_on_ret;

  // actionvalue method mav_upd_on_trap
  input  [5 : 0] mav_upd_on_trap_c;
  input  [31 : 0] mav_upd_on_trap_pc;
  input  [31 : 0] mav_upd_on_trap_tval;
  input  EN_mav_upd_on_trap;
  output [31 : 0] mav_upd_on_trap;
  output RDY_mav_upd_on_trap;

  // action method ma_clint_msip
  input  ma_clint_msip_intrpt;
  input  EN_ma_clint_msip;
  output RDY_ma_clint_msip;

  // action method ma_clint_mtip
  input  ma_clint_mtip_intrpt;
  input  EN_ma_clint_mtip;
  output RDY_ma_clint_mtip;

  // action method ma_set_meip
  input  ma_set_meip_ex_i;
  input  EN_ma_set_meip;
  output RDY_ma_set_meip;

  // value method mv_csr_mstatus
  output [31 : 0] mv_csr_mstatus;
  output RDY_mv_csr_mstatus;

  // value method mv_csrs_to_decode
  output [100 : 0] mv_csrs_to_decode;
  output RDY_mv_csrs_to_decode;

  // value method mv_curr_priv
  output [1 : 0] mv_curr_priv;
  output RDY_mv_curr_priv;

  // value method mv_resume_wfi
  output mv_resume_wfi;
  output RDY_mv_resume_wfi;

  // action method ma_update_fflags
  input  [4 : 0] ma_update_fflags_flags;
  input  EN_ma_update_fflags;
  output RDY_ma_update_fflags;

  // value method mv_cacheenable
  output [2 : 0] mv_cacheenable;
  output RDY_mv_cacheenable;

  // value method mv_csr_misa_c
  output mv_csr_misa_c;
  output RDY_mv_csr_misa_c;

  // value method mv_pmp_cfg
  output [31 : 0] mv_pmp_cfg;
  output RDY_mv_pmp_cfg;

  // value method mv_pmp_addr
  output [115 : 0] mv_pmp_addr;
  output RDY_mv_pmp_addr;

  // action method ma_clint_mtime
  input  [63 : 0] ma_clint_mtime_c_mtime;
  input  EN_ma_clint_mtime;
  output RDY_ma_clint_mtime;

  // action method ma_incr_minstret
  input  EN_ma_incr_minstret;
  output RDY_ma_incr_minstret;

  // value method mv_mcounteren
  output [31 : 0] mv_mcounteren;
  output RDY_mv_mcounteren;

  // action method ma_events_grp4
  input  [29 : 0] ma_events_grp4_e;
  input  EN_ma_events_grp4;
  output RDY_ma_events_grp4;

  // action method ma_events_grp5
  input  [29 : 0] ma_events_grp5_e;
  input  EN_ma_events_grp5;
  output RDY_ma_events_grp5;

  // action method ma_events_grp6
  input  [29 : 0] ma_events_grp6_e;
  input  EN_ma_events_grp6;
  output RDY_ma_events_grp6;

  // action method ma_events_grp7
  input  [29 : 0] ma_events_grp7_e;
  input  EN_ma_events_grp7;
  output RDY_ma_events_grp7;

  // signals for module outputs
  wire [115 : 0] mv_pmp_addr;
  wire [100 : 0] mv_csrs_to_decode;
  wire [32 : 0] mv_resp_to_core;
  wire [31 : 0] mav_upd_on_ret,
		mav_upd_on_trap,
		mv_csr_mstatus,
		mv_mcounteren,
		mv_pmp_cfg;
  wire [2 : 0] mv_cacheenable;
  wire [1 : 0] mv_curr_priv;
  wire RDY_ma_clint_msip,
       RDY_ma_clint_mtime,
       RDY_ma_clint_mtip,
       RDY_ma_core_req,
       RDY_ma_events_grp4,
       RDY_ma_events_grp5,
       RDY_ma_events_grp6,
       RDY_ma_events_grp7,
       RDY_ma_incr_minstret,
       RDY_ma_set_meip,
       RDY_ma_update_fflags,
       RDY_mav_upd_on_ret,
       RDY_mav_upd_on_trap,
       RDY_mv_cacheenable,
       RDY_mv_csr_misa_c,
       RDY_mv_csr_mstatus,
       RDY_mv_csrs_to_decode,
       RDY_mv_curr_priv,
       RDY_mv_mcounteren,
       RDY_mv_pmp_addr,
       RDY_mv_pmp_cfg,
       RDY_mv_resp_to_core,
       RDY_mv_resume_wfi,
       mv_csr_misa_c,
       mv_resume_wfi;

  // register rg_prv
  // reg : holds the current privilege level and provides this information to groups 1,3
  reg [1 : 0] rg_prv;
  wire [1 : 0] rg_prv_D_IN;
  wire rg_prv_EN;

  // ports of submodule mk_grp1
  wire [100 : 0] mk_grp1_mv_csrs_to_decode;
  wire [47 : 0] mk_grp1_ma_core_req_req, mk_grp1_mav_fwd_req;
  wire [32 : 0] mk_grp1_mv_core_resp;
  wire [31 : 0] mk_grp1_ma_csr_misa_m,
		mk_grp1_mav_upd_on_ret,
		mk_grp1_mav_upd_on_trap,
		mk_grp1_mav_upd_on_trap_pc,
		mk_grp1_mav_upd_on_trap_tval,
		mk_grp1_mv_csr_mstatus;
  wire [28 : 0] mk_grp1_ma_counter_interrupts_i;
  wire [5 : 0] mk_grp1_mav_upd_on_trap_c;
  wire [2 : 0] mk_grp1_ma_frm_frm_val;
  wire [1 : 0] mk_grp1_ma_upd_privilege_prv,
	       mk_grp1_mav_upd_on_trap_prv,
	       mk_grp1_mv_mpp;
  wire mk_grp1_EN_ma_clint_msip,
       mk_grp1_EN_ma_clint_mtip,
       mk_grp1_EN_ma_core_req,
       mk_grp1_EN_ma_counter_interrupts,
       mk_grp1_EN_ma_set_meip,
       mk_grp1_EN_mav_fwd_req,
       mk_grp1_EN_mav_upd_on_ret,
       mk_grp1_EN_mav_upd_on_trap,
       mk_grp1_RDY_ma_core_req,
       mk_grp1_RDY_mav_fwd_req,
       mk_grp1_RDY_mav_upd_on_ret,
       mk_grp1_RDY_mav_upd_on_trap,
       mk_grp1_RDY_mv_csrs_to_decode,
       mk_grp1_ma_clint_msip_intrpt,
       mk_grp1_ma_clint_mtip_intrpt,
       mk_grp1_ma_set_meip_ex_i,
       mk_grp1_mv_resume_wfi;

  // ports of submodule mk_grp2
  wire [115 : 0] mk_grp2_mv_pmp_addr;
  wire [47 : 0] mk_grp2_ma_core_req_req, mk_grp2_mav_fwd_req;
  wire [32 : 0] mk_grp2_mv_core_resp;
  wire [31 : 0] mk_grp2_mv_csr_misa, mk_grp2_mv_pmp_cfg;
  wire [4 : 0] mk_grp2_ma_update_fflags_flags;
  wire [2 : 0] mk_grp2_mv_cacheenable, mk_grp2_mv_frm;
  wire mk_grp2_EN_ma_core_req,
       mk_grp2_EN_ma_update_fflags,
       mk_grp2_EN_mav_fwd_req,
       mk_grp2_RDY_ma_core_req,
       mk_grp2_RDY_mav_fwd_req,
       mk_grp2_mv_csr_misa_c;

  // ports of submodule mk_grp3
  wire [63 : 0] mk_grp3_ma_clint_mtime_c_mtime;
  wire [47 : 0] mk_grp3_ma_core_req_req, mk_grp3_mav_fwd_req;
  wire [32 : 0] mk_grp3_mv_core_resp;
  wire [31 : 0] mk_grp3_mv_mcounteren;
  wire [7 : 0] mk_grp3_mv_mcountinhibit_grp7, mk_grp3_mv_mhpminterrupten_grp7;
  wire [6 : 0] mk_grp3_mv_mcountinhibit_grp4,
	       mk_grp3_mv_mcountinhibit_grp5,
	       mk_grp3_mv_mcountinhibit_grp6,
	       mk_grp3_mv_mhpminterrupten_grp4,
	       mk_grp3_mv_mhpminterrupten_grp5,
	       mk_grp3_mv_mhpminterrupten_grp6;
  wire [1 : 0] mk_grp3_ma_upd_privilege_prv;
  wire mk_grp3_EN_ma_clint_mtime,
       mk_grp3_EN_ma_core_req,
       mk_grp3_EN_ma_incr_minstret,
       mk_grp3_EN_mav_fwd_req,
       mk_grp3_RDY_ma_core_req,
       mk_grp3_RDY_mav_fwd_req;

  // ports of submodule mk_grp4
  wire [47 : 0] mk_grp4_ma_core_req_req, mk_grp4_mav_fwd_req;
  wire [32 : 0] mk_grp4_mv_core_resp;
  wire [29 : 0] mk_grp4_ma_events_e;
  wire [6 : 0] mk_grp4_ma_mcountinhibit_mcountinhibit_val,
	       mk_grp4_ma_mhpminterrupten_v,
	       mk_grp4_mv_counter_interrupt;
  wire mk_grp4_EN_ma_core_req,
       mk_grp4_EN_ma_events,
       mk_grp4_EN_mav_fwd_req,
       mk_grp4_RDY_ma_core_req,
       mk_grp4_RDY_mav_fwd_req,
       mk_grp4_RDY_mv_counter_interrupt;

  // ports of submodule mk_grp5
  wire [47 : 0] mk_grp5_ma_core_req_req, mk_grp5_mav_fwd_req;
  wire [32 : 0] mk_grp5_mv_core_resp;
  wire [29 : 0] mk_grp5_ma_events_e;
  wire [6 : 0] mk_grp5_ma_mcountinhibit_mcountinhibit_val,
	       mk_grp5_ma_mhpminterrupten_v,
	       mk_grp5_mv_counter_interrupt;
  wire mk_grp5_EN_ma_core_req,
       mk_grp5_EN_ma_events,
       mk_grp5_EN_mav_fwd_req,
       mk_grp5_RDY_ma_core_req,
       mk_grp5_RDY_mav_fwd_req,
       mk_grp5_RDY_mv_counter_interrupt;

  // ports of submodule mk_grp6
  wire [47 : 0] mk_grp6_ma_core_req_req, mk_grp6_mav_fwd_req;
  wire [32 : 0] mk_grp6_mv_core_resp;
  wire [29 : 0] mk_grp6_ma_events_e;
  wire [6 : 0] mk_grp6_ma_mcountinhibit_mcountinhibit_val,
	       mk_grp6_ma_mhpminterrupten_v,
	       mk_grp6_mv_counter_interrupt;
  wire mk_grp6_EN_ma_core_req,
       mk_grp6_EN_ma_events,
       mk_grp6_EN_mav_fwd_req,
       mk_grp6_RDY_ma_core_req,
       mk_grp6_RDY_mav_fwd_req,
       mk_grp6_RDY_mv_counter_interrupt;

  // ports of submodule mk_grp7
  wire [47 : 0] mk_grp7_ma_core_req_req;
  wire [32 : 0] mk_grp7_mv_core_resp;
  wire [29 : 0] mk_grp7_ma_events_e;
  wire [7 : 0] mk_grp7_ma_mcountinhibit_mcountinhibit_val,
	       mk_grp7_ma_mhpminterrupten_v,
	       mk_grp7_mv_counter_interrupt;
  wire mk_grp7_EN_ma_core_req,
       mk_grp7_EN_ma_events,
       mk_grp7_RDY_mv_counter_interrupt;

  // rule scheduling signals
  wire CAN_FIRE_RL_m1_mkConnectionAVtoAf,
       CAN_FIRE_RL_m2_mkConnectionAVtoAf,
       CAN_FIRE_RL_mkConnectionAVtoAf,
       CAN_FIRE_RL_mkConnectionAVtoAf_1,
       CAN_FIRE_RL_mkConnectionAVtoAf_2,
       CAN_FIRE_RL_mkConnectionAVtoAf_3,
       CAN_FIRE_RL_mkConnectionVtoAf,
       CAN_FIRE_RL_mkConnectionVtoAf_1,
       CAN_FIRE_RL_mkConnectionVtoAf_2,
       CAN_FIRE_RL_mkConnectionVtoAf_3,
       CAN_FIRE_RL_mkConnectionVtoAf_4,
       CAN_FIRE_RL_mkConnectionVtoAf_5,
       CAN_FIRE_RL_mkConnectionVtoAf_6,
       CAN_FIRE_RL_mkConnectionVtoAf_7,
       CAN_FIRE_RL_mkConnectionVtoAf_8,
       CAN_FIRE_RL_mkConnectionVtoAf_9,
       CAN_FIRE_RL_rl_send_counter_interrupts,
       CAN_FIRE_RL_rl_upd_grp_privilege,
       CAN_FIRE_ma_clint_msip,
       CAN_FIRE_ma_clint_mtime,
       CAN_FIRE_ma_clint_mtip,
       CAN_FIRE_ma_core_req,
       CAN_FIRE_ma_events_grp4,
       CAN_FIRE_ma_events_grp5,
       CAN_FIRE_ma_events_grp6,
       CAN_FIRE_ma_events_grp7,
       CAN_FIRE_ma_incr_minstret,
       CAN_FIRE_ma_set_meip,
       CAN_FIRE_ma_update_fflags,
       CAN_FIRE_mav_upd_on_ret,
       CAN_FIRE_mav_upd_on_trap,
       WILL_FIRE_RL_m1_mkConnectionAVtoAf,
       WILL_FIRE_RL_m2_mkConnectionAVtoAf,
       WILL_FIRE_RL_mkConnectionAVtoAf,
       WILL_FIRE_RL_mkConnectionAVtoAf_1,
       WILL_FIRE_RL_mkConnectionAVtoAf_2,
       WILL_FIRE_RL_mkConnectionAVtoAf_3,
       WILL_FIRE_RL_mkConnectionVtoAf,
       WILL_FIRE_RL_mkConnectionVtoAf_1,
       WILL_FIRE_RL_mkConnectionVtoAf_2,
       WILL_FIRE_RL_mkConnectionVtoAf_3,
       WILL_FIRE_RL_mkConnectionVtoAf_4,
       WILL_FIRE_RL_mkConnectionVtoAf_5,
       WILL_FIRE_RL_mkConnectionVtoAf_6,
       WILL_FIRE_RL_mkConnectionVtoAf_7,
       WILL_FIRE_RL_mkConnectionVtoAf_8,
       WILL_FIRE_RL_mkConnectionVtoAf_9,
       WILL_FIRE_RL_rl_send_counter_interrupts,
       WILL_FIRE_RL_rl_upd_grp_privilege,
       WILL_FIRE_ma_clint_msip,
       WILL_FIRE_ma_clint_mtime,
       WILL_FIRE_ma_clint_mtip,
       WILL_FIRE_ma_core_req,
       WILL_FIRE_ma_events_grp4,
       WILL_FIRE_ma_events_grp5,
       WILL_FIRE_ma_events_grp6,
       WILL_FIRE_ma_events_grp7,
       WILL_FIRE_ma_incr_minstret,
       WILL_FIRE_ma_set_meip,
       WILL_FIRE_ma_update_fflags,
       WILL_FIRE_mav_upd_on_ret,
       WILL_FIRE_mav_upd_on_trap;

  // remaining internal signals
  wire [31 : 0] anydata__h911,
		x__h2164,
		x__h2166,
		x__h2168,
		x__h2170,
		x__h2172;
  wire mk_grp1_mv_core_resp__7_BIT_32_8_OR_mk_grp2_mv_ETC___d66;

  // action method ma_core_req
  assign RDY_ma_core_req = mk_grp1_RDY_ma_core_req ;
  assign CAN_FIRE_ma_core_req = mk_grp1_RDY_ma_core_req ;
  assign WILL_FIRE_ma_core_req = EN_ma_core_req ;

  // value method mv_resp_to_core
  assign mv_resp_to_core =
	     { mk_grp1_mv_core_resp__7_BIT_32_8_OR_mk_grp2_mv_ETC___d66,
	       anydata__h911 } ;
  assign RDY_mv_resp_to_core = 1'd1 ;

  // actionvalue method mav_upd_on_ret
  assign mav_upd_on_ret = mk_grp1_mav_upd_on_ret ;
  assign RDY_mav_upd_on_ret = mk_grp1_RDY_mav_upd_on_ret ;
  assign CAN_FIRE_mav_upd_on_ret = mk_grp1_RDY_mav_upd_on_ret ;
  assign WILL_FIRE_mav_upd_on_ret = EN_mav_upd_on_ret ;

  // actionvalue method mav_upd_on_trap
  assign mav_upd_on_trap = mk_grp1_mav_upd_on_trap ;
  assign RDY_mav_upd_on_trap = mk_grp1_RDY_mav_upd_on_trap ;
  assign CAN_FIRE_mav_upd_on_trap = mk_grp1_RDY_mav_upd_on_trap ;
  assign WILL_FIRE_mav_upd_on_trap = EN_mav_upd_on_trap ;

  // action method ma_clint_msip
  assign RDY_ma_clint_msip = 1'd1 ;
  assign CAN_FIRE_ma_clint_msip = 1'd1 ;
  assign WILL_FIRE_ma_clint_msip = EN_ma_clint_msip ;

  // action method ma_clint_mtip
  assign RDY_ma_clint_mtip = 1'd1 ;
  assign CAN_FIRE_ma_clint_mtip = 1'd1 ;
  assign WILL_FIRE_ma_clint_mtip = EN_ma_clint_mtip ;

  // action method ma_set_meip
  assign RDY_ma_set_meip = 1'd1 ;
  assign CAN_FIRE_ma_set_meip = 1'd1 ;
  assign WILL_FIRE_ma_set_meip = EN_ma_set_meip ;

  // value method mv_csr_mstatus
  assign mv_csr_mstatus = mk_grp1_mv_csr_mstatus ;
  assign RDY_mv_csr_mstatus = 1'd1 ;

  // value method mv_csrs_to_decode
  assign mv_csrs_to_decode = mk_grp1_mv_csrs_to_decode ;
  assign RDY_mv_csrs_to_decode = mk_grp1_RDY_mv_csrs_to_decode ;

  // value method mv_curr_priv
  assign mv_curr_priv = rg_prv ;
  assign RDY_mv_curr_priv = 1'd1 ;

  // value method mv_resume_wfi
  assign mv_resume_wfi = mk_grp1_mv_resume_wfi ;
  assign RDY_mv_resume_wfi = 1'd1 ;

  // action method ma_update_fflags
  assign RDY_ma_update_fflags = 1'd1 ;
  assign CAN_FIRE_ma_update_fflags = 1'd1 ;
  assign WILL_FIRE_ma_update_fflags = EN_ma_update_fflags ;

  // value method mv_cacheenable
  assign mv_cacheenable = mk_grp2_mv_cacheenable ;
  assign RDY_mv_cacheenable = 1'd1 ;

  // value method mv_csr_misa_c
  assign mv_csr_misa_c = mk_grp2_mv_csr_misa_c ;
  assign RDY_mv_csr_misa_c = 1'd1 ;

  // value method mv_pmp_cfg
  assign mv_pmp_cfg = mk_grp2_mv_pmp_cfg ;
  assign RDY_mv_pmp_cfg = 1'd1 ;

  // value method mv_pmp_addr
  assign mv_pmp_addr = mk_grp2_mv_pmp_addr ;
  assign RDY_mv_pmp_addr = 1'd1 ;

  // action method ma_clint_mtime
  assign RDY_ma_clint_mtime = 1'd1 ;
  assign CAN_FIRE_ma_clint_mtime = 1'd1 ;
  assign WILL_FIRE_ma_clint_mtime = EN_ma_clint_mtime ;

  // action method ma_incr_minstret
  assign RDY_ma_incr_minstret = 1'd1 ;
  assign CAN_FIRE_ma_incr_minstret = 1'd1 ;
  assign WILL_FIRE_ma_incr_minstret = EN_ma_incr_minstret ;

  // value method mv_mcounteren
  assign mv_mcounteren = mk_grp3_mv_mcounteren ;
  assign RDY_mv_mcounteren = 1'd1 ;

  // action method ma_events_grp4
  assign RDY_ma_events_grp4 = 1'd1 ;
  assign CAN_FIRE_ma_events_grp4 = 1'd1 ;
  assign WILL_FIRE_ma_events_grp4 = EN_ma_events_grp4 ;

  // action method ma_events_grp5
  assign RDY_ma_events_grp5 = 1'd1 ;
  assign CAN_FIRE_ma_events_grp5 = 1'd1 ;
  assign WILL_FIRE_ma_events_grp5 = EN_ma_events_grp5 ;

  // action method ma_events_grp6
  assign RDY_ma_events_grp6 = 1'd1 ;
  assign CAN_FIRE_ma_events_grp6 = 1'd1 ;
  assign WILL_FIRE_ma_events_grp6 = EN_ma_events_grp6 ;

  // action method ma_events_grp7
  assign RDY_ma_events_grp7 = 1'd1 ;
  assign CAN_FIRE_ma_events_grp7 = 1'd1 ;
  assign WILL_FIRE_ma_events_grp7 = EN_ma_events_grp7 ;

  // submodule mk_grp1
  mk_csr_grp1 mk_grp1(.CLK(CLK),
		      .RST_N(RST_N),
		      .ma_clint_msip_intrpt(mk_grp1_ma_clint_msip_intrpt),
		      .ma_clint_mtip_intrpt(mk_grp1_ma_clint_mtip_intrpt),
		      .ma_core_req_req(mk_grp1_ma_core_req_req),
		      .ma_counter_interrupts_i(mk_grp1_ma_counter_interrupts_i),
		      .ma_csr_misa_m(mk_grp1_ma_csr_misa_m),
		      .ma_frm_frm_val(mk_grp1_ma_frm_frm_val),
		      .ma_set_meip_ex_i(mk_grp1_ma_set_meip_ex_i),
		      .ma_upd_privilege_prv(mk_grp1_ma_upd_privilege_prv),
		      .mav_upd_on_trap_c(mk_grp1_mav_upd_on_trap_c),
		      .mav_upd_on_trap_pc(mk_grp1_mav_upd_on_trap_pc),
		      .mav_upd_on_trap_prv(mk_grp1_mav_upd_on_trap_prv),
		      .mav_upd_on_trap_tval(mk_grp1_mav_upd_on_trap_tval),
		      .EN_ma_core_req(mk_grp1_EN_ma_core_req),
		      .EN_mav_fwd_req(mk_grp1_EN_mav_fwd_req),
		      .EN_ma_counter_interrupts(mk_grp1_EN_ma_counter_interrupts),
		      .EN_ma_clint_msip(mk_grp1_EN_ma_clint_msip),
		      .EN_ma_clint_mtip(mk_grp1_EN_ma_clint_mtip),
		      .EN_ma_set_meip(mk_grp1_EN_ma_set_meip),
		      .EN_mav_upd_on_ret(mk_grp1_EN_mav_upd_on_ret),
		      .EN_mav_upd_on_trap(mk_grp1_EN_mav_upd_on_trap),
		      .RDY_ma_core_req(mk_grp1_RDY_ma_core_req),
		      .mv_core_resp(mk_grp1_mv_core_resp),
		      .RDY_mv_core_resp(),
		      .mav_fwd_req(mk_grp1_mav_fwd_req),
		      .RDY_mav_fwd_req(mk_grp1_RDY_mav_fwd_req),
		      .RDY_ma_counter_interrupts(),
		      .RDY_ma_clint_msip(),
		      .RDY_ma_clint_mtip(),
		      .RDY_ma_set_meip(),
		      .mv_csr_mstatus(mk_grp1_mv_csr_mstatus),
		      .RDY_mv_csr_mstatus(),
		      .mv_csrs_to_decode(mk_grp1_mv_csrs_to_decode),
		      .RDY_mv_csrs_to_decode(mk_grp1_RDY_mv_csrs_to_decode),
		      .mav_upd_on_ret(mk_grp1_mav_upd_on_ret),
		      .RDY_mav_upd_on_ret(mk_grp1_RDY_mav_upd_on_ret),
		      .mav_upd_on_trap(mk_grp1_mav_upd_on_trap),
		      .RDY_mav_upd_on_trap(mk_grp1_RDY_mav_upd_on_trap),
		      .mv_mpp(mk_grp1_mv_mpp),
		      .mv_resume_wfi(mk_grp1_mv_resume_wfi),
		      .RDY_mv_resume_wfi());

  // submodule mk_grp2
  mk_csr_grp2 mk_grp2(.CLK(CLK),
		      .RST_N(RST_N),
		      .ma_core_req_req(mk_grp2_ma_core_req_req),
		      .ma_update_fflags_flags(mk_grp2_ma_update_fflags_flags),
		      .EN_ma_core_req(mk_grp2_EN_ma_core_req),
		      .EN_mav_fwd_req(mk_grp2_EN_mav_fwd_req),
		      .EN_ma_update_fflags(mk_grp2_EN_ma_update_fflags),
		      .RDY_ma_core_req(mk_grp2_RDY_ma_core_req),
		      .mv_core_resp(mk_grp2_mv_core_resp),
		      .RDY_mv_core_resp(),
		      .mav_fwd_req(mk_grp2_mav_fwd_req),
		      .RDY_mav_fwd_req(mk_grp2_RDY_mav_fwd_req),
		      .mv_csr_misa(mk_grp2_mv_csr_misa),
		      .mv_frm(mk_grp2_mv_frm),
		      .mv_update_fs(),
		      .RDY_mv_update_fs(),
		      .RDY_ma_update_fflags(),
		      .mv_cacheenable(mk_grp2_mv_cacheenable),
		      .RDY_mv_cacheenable(),
		      .mv_csr_misa_c(mk_grp2_mv_csr_misa_c),
		      .RDY_mv_csr_misa_c(),
		      .mv_pmp_cfg(mk_grp2_mv_pmp_cfg),
		      .RDY_mv_pmp_cfg(),
		      .mv_pmp_addr(mk_grp2_mv_pmp_addr),
		      .RDY_mv_pmp_addr());

  // submodule mk_grp3
  mk_csr_grp3 mk_grp3(.CLK(CLK),
		      .RST_N(RST_N),
		      .ma_clint_mtime_c_mtime(mk_grp3_ma_clint_mtime_c_mtime),
		      .ma_core_req_req(mk_grp3_ma_core_req_req),
		      .ma_upd_privilege_prv(mk_grp3_ma_upd_privilege_prv),
		      .EN_ma_core_req(mk_grp3_EN_ma_core_req),
		      .EN_mav_fwd_req(mk_grp3_EN_mav_fwd_req),
		      .EN_ma_clint_mtime(mk_grp3_EN_ma_clint_mtime),
		      .EN_ma_incr_minstret(mk_grp3_EN_ma_incr_minstret),
		      .RDY_ma_core_req(mk_grp3_RDY_ma_core_req),
		      .mv_core_resp(mk_grp3_mv_core_resp),
		      .RDY_mv_core_resp(),
		      .mav_fwd_req(mk_grp3_mav_fwd_req),
		      .RDY_mav_fwd_req(mk_grp3_RDY_mav_fwd_req),
		      .mv_mcounteren(mk_grp3_mv_mcounteren),
		      .mv_mcountinhibit_grp4(mk_grp3_mv_mcountinhibit_grp4),
		      .mv_mhpminterrupten_grp4(mk_grp3_mv_mhpminterrupten_grp4),
		      .mv_mcountinhibit_grp5(mk_grp3_mv_mcountinhibit_grp5),
		      .mv_mhpminterrupten_grp5(mk_grp3_mv_mhpminterrupten_grp5),
		      .mv_mcountinhibit_grp6(mk_grp3_mv_mcountinhibit_grp6),
		      .mv_mhpminterrupten_grp6(mk_grp3_mv_mhpminterrupten_grp6),
		      .mv_mcountinhibit_grp7(mk_grp3_mv_mcountinhibit_grp7),
		      .mv_mhpminterrupten_grp7(mk_grp3_mv_mhpminterrupten_grp7),
		      .RDY_ma_clint_mtime(),
		      .RDY_ma_incr_minstret());

  // submodule mk_grp4
  mk_csr_grp4 mk_grp4(.CLK(CLK),
		      .RST_N(RST_N),
		      .ma_core_req_req(mk_grp4_ma_core_req_req),
		      .ma_events_e(mk_grp4_ma_events_e),
		      .ma_mcountinhibit_mcountinhibit_val(mk_grp4_ma_mcountinhibit_mcountinhibit_val),
		      .ma_mhpminterrupten_v(mk_grp4_ma_mhpminterrupten_v),
		      .EN_ma_core_req(mk_grp4_EN_ma_core_req),
		      .EN_mav_fwd_req(mk_grp4_EN_mav_fwd_req),
		      .EN_ma_events(mk_grp4_EN_ma_events),
		      .RDY_ma_core_req(mk_grp4_RDY_ma_core_req),
		      .mv_core_resp(mk_grp4_mv_core_resp),
		      .RDY_mv_core_resp(),
		      .mav_fwd_req(mk_grp4_mav_fwd_req),
		      .RDY_mav_fwd_req(mk_grp4_RDY_mav_fwd_req),
		      .mv_counter_interrupt(mk_grp4_mv_counter_interrupt),
		      .RDY_mv_counter_interrupt(mk_grp4_RDY_mv_counter_interrupt),
		      .RDY_ma_events());

  // submodule mk_grp5
  mk_csr_grp5 mk_grp5(.CLK(CLK),
		      .RST_N(RST_N),
		      .ma_core_req_req(mk_grp5_ma_core_req_req),
		      .ma_events_e(mk_grp5_ma_events_e),
		      .ma_mcountinhibit_mcountinhibit_val(mk_grp5_ma_mcountinhibit_mcountinhibit_val),
		      .ma_mhpminterrupten_v(mk_grp5_ma_mhpminterrupten_v),
		      .EN_ma_core_req(mk_grp5_EN_ma_core_req),
		      .EN_mav_fwd_req(mk_grp5_EN_mav_fwd_req),
		      .EN_ma_events(mk_grp5_EN_ma_events),
		      .RDY_ma_core_req(mk_grp5_RDY_ma_core_req),
		      .mv_core_resp(mk_grp5_mv_core_resp),
		      .RDY_mv_core_resp(),
		      .mav_fwd_req(mk_grp5_mav_fwd_req),
		      .RDY_mav_fwd_req(mk_grp5_RDY_mav_fwd_req),
		      .mv_counter_interrupt(mk_grp5_mv_counter_interrupt),
		      .RDY_mv_counter_interrupt(mk_grp5_RDY_mv_counter_interrupt),
		      .RDY_ma_events());

  // submodule mk_grp6
  mk_csr_grp6 mk_grp6(.CLK(CLK),
		      .RST_N(RST_N),
		      .ma_core_req_req(mk_grp6_ma_core_req_req),
		      .ma_events_e(mk_grp6_ma_events_e),
		      .ma_mcountinhibit_mcountinhibit_val(mk_grp6_ma_mcountinhibit_mcountinhibit_val),
		      .ma_mhpminterrupten_v(mk_grp6_ma_mhpminterrupten_v),
		      .EN_ma_core_req(mk_grp6_EN_ma_core_req),
		      .EN_mav_fwd_req(mk_grp6_EN_mav_fwd_req),
		      .EN_ma_events(mk_grp6_EN_ma_events),
		      .RDY_ma_core_req(mk_grp6_RDY_ma_core_req),
		      .mv_core_resp(mk_grp6_mv_core_resp),
		      .RDY_mv_core_resp(),
		      .mav_fwd_req(mk_grp6_mav_fwd_req),
		      .RDY_mav_fwd_req(mk_grp6_RDY_mav_fwd_req),
		      .mv_counter_interrupt(mk_grp6_mv_counter_interrupt),
		      .RDY_mv_counter_interrupt(mk_grp6_RDY_mv_counter_interrupt),
		      .RDY_ma_events());

  // submodule mk_grp7
  mk_csr_grp7 mk_grp7(.CLK(CLK),
		      .RST_N(RST_N),
		      .ma_core_req_req(mk_grp7_ma_core_req_req),
		      .ma_events_e(mk_grp7_ma_events_e),
		      .ma_mcountinhibit_mcountinhibit_val(mk_grp7_ma_mcountinhibit_mcountinhibit_val),
		      .ma_mhpminterrupten_v(mk_grp7_ma_mhpminterrupten_v),
		      .EN_ma_core_req(mk_grp7_EN_ma_core_req),
		      .EN_ma_events(mk_grp7_EN_ma_events),
		      .RDY_ma_core_req(),
		      .mv_core_resp(mk_grp7_mv_core_resp),
		      .RDY_mv_core_resp(),
		      .mv_counter_interrupt(mk_grp7_mv_counter_interrupt),
		      .RDY_mv_counter_interrupt(mk_grp7_RDY_mv_counter_interrupt),
		      .RDY_ma_events());

  // rule RL_rl_upd_grp_privilege
  //   rule : forwards the data in rg_prv (the current privilege level) to groups 1 and 3
  assign CAN_FIRE_RL_rl_upd_grp_privilege = 1'd1 ;
  assign WILL_FIRE_RL_rl_upd_grp_privilege = 1'd1 ;

  // rule RL_mkConnectionVtoAf
  assign CAN_FIRE_RL_mkConnectionVtoAf = 1'd1 ;
  assign WILL_FIRE_RL_mkConnectionVtoAf = 1'd1 ;

  // rule RL_mkConnectionVtoAf_1
  assign CAN_FIRE_RL_mkConnectionVtoAf_1 = 1'd1 ;
  assign WILL_FIRE_RL_mkConnectionVtoAf_1 = 1'd1 ;

  // rule RL_mkConnectionVtoAf_2
  assign CAN_FIRE_RL_mkConnectionVtoAf_2 = 1'd1 ;
  assign WILL_FIRE_RL_mkConnectionVtoAf_2 = 1'd1 ;

  // rule RL_mkConnectionVtoAf_3
  assign CAN_FIRE_RL_mkConnectionVtoAf_3 = 1'd1 ;
  assign WILL_FIRE_RL_mkConnectionVtoAf_3 = 1'd1 ;

  // rule RL_mkConnectionVtoAf_4
  assign CAN_FIRE_RL_mkConnectionVtoAf_4 = 1'd1 ;
  assign WILL_FIRE_RL_mkConnectionVtoAf_4 = 1'd1 ;

  // rule RL_mkConnectionVtoAf_5
  assign CAN_FIRE_RL_mkConnectionVtoAf_5 = 1'd1 ;
  assign WILL_FIRE_RL_mkConnectionVtoAf_5 = 1'd1 ;

  // rule RL_mkConnectionVtoAf_6
  assign CAN_FIRE_RL_mkConnectionVtoAf_6 = 1'd1 ;
  assign WILL_FIRE_RL_mkConnectionVtoAf_6 = 1'd1 ;

  // rule RL_mkConnectionVtoAf_7
  assign CAN_FIRE_RL_mkConnectionVtoAf_7 = 1'd1 ;
  assign WILL_FIRE_RL_mkConnectionVtoAf_7 = 1'd1 ;

  // rule RL_mkConnectionVtoAf_8
  assign CAN_FIRE_RL_mkConnectionVtoAf_8 = 1'd1 ;
  assign WILL_FIRE_RL_mkConnectionVtoAf_8 = 1'd1 ;

  // rule RL_mkConnectionVtoAf_9
  assign CAN_FIRE_RL_mkConnectionVtoAf_9 = 1'd1 ;
  assign WILL_FIRE_RL_mkConnectionVtoAf_9 = 1'd1 ;

  // rule RL_rl_send_counter_interrupts
  assign CAN_FIRE_RL_rl_send_counter_interrupts =
	     mk_grp4_RDY_mv_counter_interrupt &&
	     mk_grp5_RDY_mv_counter_interrupt &&
	     mk_grp6_RDY_mv_counter_interrupt &&
	     mk_grp7_RDY_mv_counter_interrupt ;
  assign WILL_FIRE_RL_rl_send_counter_interrupts =
	     CAN_FIRE_RL_rl_send_counter_interrupts ;

  // rule RL_mkConnectionAVtoAf_3
  assign CAN_FIRE_RL_mkConnectionAVtoAf_3 = mk_grp6_RDY_mav_fwd_req ;
  assign WILL_FIRE_RL_mkConnectionAVtoAf_3 = mk_grp6_RDY_mav_fwd_req ;

  // rule RL_mkConnectionAVtoAf_2
  assign CAN_FIRE_RL_mkConnectionAVtoAf_2 =
	     mk_grp6_RDY_ma_core_req && mk_grp5_RDY_mav_fwd_req ;
  assign WILL_FIRE_RL_mkConnectionAVtoAf_2 =
	     CAN_FIRE_RL_mkConnectionAVtoAf_2 ;

  // rule RL_mkConnectionAVtoAf_1
  assign CAN_FIRE_RL_mkConnectionAVtoAf_1 =
	     mk_grp5_RDY_ma_core_req && mk_grp4_RDY_mav_fwd_req ;
  assign WILL_FIRE_RL_mkConnectionAVtoAf_1 =
	     CAN_FIRE_RL_mkConnectionAVtoAf_1 ;

  // rule RL_mkConnectionAVtoAf
  assign CAN_FIRE_RL_mkConnectionAVtoAf =
	     mk_grp4_RDY_ma_core_req && mk_grp3_RDY_mav_fwd_req ;
  assign WILL_FIRE_RL_mkConnectionAVtoAf = CAN_FIRE_RL_mkConnectionAVtoAf ;

  // rule RL_m2_mkConnectionAVtoAf
  assign CAN_FIRE_RL_m2_mkConnectionAVtoAf =
	     mk_grp3_RDY_ma_core_req && mk_grp2_RDY_mav_fwd_req ;
  assign WILL_FIRE_RL_m2_mkConnectionAVtoAf =
	     CAN_FIRE_RL_m2_mkConnectionAVtoAf ;

  // rule RL_m1_mkConnectionAVtoAf
  assign CAN_FIRE_RL_m1_mkConnectionAVtoAf =
	     mk_grp2_RDY_ma_core_req && mk_grp1_RDY_mav_fwd_req ;
  assign WILL_FIRE_RL_m1_mkConnectionAVtoAf =
	     CAN_FIRE_RL_m1_mkConnectionAVtoAf ;

  // register rg_prv
  assign rg_prv_D_IN = EN_mav_upd_on_ret ? mk_grp1_mv_mpp : 2'd3 ;
  assign rg_prv_EN = EN_mav_upd_on_ret || EN_mav_upd_on_trap ;

  // submodule mk_grp1
  assign mk_grp1_ma_clint_msip_intrpt = ma_clint_msip_intrpt ;
  assign mk_grp1_ma_clint_mtip_intrpt = ma_clint_mtip_intrpt ;
  assign mk_grp1_ma_core_req_req = ma_core_req_req ;
  assign mk_grp1_ma_counter_interrupts_i =
	     { mk_grp7_mv_counter_interrupt,
	       mk_grp6_mv_counter_interrupt,
	       mk_grp5_mv_counter_interrupt,
	       mk_grp4_mv_counter_interrupt } ;
  assign mk_grp1_ma_csr_misa_m = mk_grp2_mv_csr_misa ;
  assign mk_grp1_ma_frm_frm_val = mk_grp2_mv_frm ;
  assign mk_grp1_ma_set_meip_ex_i = ma_set_meip_ex_i ;
  assign mk_grp1_ma_upd_privilege_prv = rg_prv ;
  assign mk_grp1_mav_upd_on_trap_c = mav_upd_on_trap_c ;
  assign mk_grp1_mav_upd_on_trap_pc = mav_upd_on_trap_pc ;
  assign mk_grp1_mav_upd_on_trap_prv = 2'd3 ;
  assign mk_grp1_mav_upd_on_trap_tval = mav_upd_on_trap_tval ;
  assign mk_grp1_EN_ma_core_req = EN_ma_core_req ;
  assign mk_grp1_EN_mav_fwd_req = CAN_FIRE_RL_m1_mkConnectionAVtoAf ;
  assign mk_grp1_EN_ma_counter_interrupts =
	     CAN_FIRE_RL_rl_send_counter_interrupts ;
  assign mk_grp1_EN_ma_clint_msip = EN_ma_clint_msip ;
  assign mk_grp1_EN_ma_clint_mtip = EN_ma_clint_mtip ;
  assign mk_grp1_EN_ma_set_meip = EN_ma_set_meip ;
  assign mk_grp1_EN_mav_upd_on_ret = EN_mav_upd_on_ret ;
  assign mk_grp1_EN_mav_upd_on_trap = EN_mav_upd_on_trap ;

  // submodule mk_grp2
  assign mk_grp2_ma_core_req_req = mk_grp1_mav_fwd_req ;
  assign mk_grp2_ma_update_fflags_flags = ma_update_fflags_flags ;
  assign mk_grp2_EN_ma_core_req = CAN_FIRE_RL_m1_mkConnectionAVtoAf ;
  assign mk_grp2_EN_mav_fwd_req = CAN_FIRE_RL_m2_mkConnectionAVtoAf ;
  assign mk_grp2_EN_ma_update_fflags = EN_ma_update_fflags ;

  // submodule mk_grp3
  assign mk_grp3_ma_clint_mtime_c_mtime = ma_clint_mtime_c_mtime ;
  assign mk_grp3_ma_core_req_req = mk_grp2_mav_fwd_req ;
  assign mk_grp3_ma_upd_privilege_prv = rg_prv ;
  assign mk_grp3_EN_ma_core_req = CAN_FIRE_RL_m2_mkConnectionAVtoAf ;
  assign mk_grp3_EN_mav_fwd_req = CAN_FIRE_RL_mkConnectionAVtoAf ;
  assign mk_grp3_EN_ma_clint_mtime = EN_ma_clint_mtime ;
  assign mk_grp3_EN_ma_incr_minstret = EN_ma_incr_minstret ;

  // submodule mk_grp4
  assign mk_grp4_ma_core_req_req = mk_grp3_mav_fwd_req ;
  assign mk_grp4_ma_events_e = ma_events_grp4_e ;
  assign mk_grp4_ma_mcountinhibit_mcountinhibit_val =
	     mk_grp3_mv_mcountinhibit_grp4 ;
  assign mk_grp4_ma_mhpminterrupten_v = mk_grp3_mv_mhpminterrupten_grp4 ;
  assign mk_grp4_EN_ma_core_req = CAN_FIRE_RL_mkConnectionAVtoAf ;
  assign mk_grp4_EN_mav_fwd_req = CAN_FIRE_RL_mkConnectionAVtoAf_1 ;
  assign mk_grp4_EN_ma_events = EN_ma_events_grp4 ;

  // submodule mk_grp5
  assign mk_grp5_ma_core_req_req = mk_grp4_mav_fwd_req ;
  assign mk_grp5_ma_events_e = ma_events_grp5_e ;
  assign mk_grp5_ma_mcountinhibit_mcountinhibit_val =
	     mk_grp3_mv_mcountinhibit_grp5 ;
  assign mk_grp5_ma_mhpminterrupten_v = mk_grp3_mv_mhpminterrupten_grp5 ;
  assign mk_grp5_EN_ma_core_req = CAN_FIRE_RL_mkConnectionAVtoAf_1 ;
  assign mk_grp5_EN_mav_fwd_req = CAN_FIRE_RL_mkConnectionAVtoAf_2 ;
  assign mk_grp5_EN_ma_events = EN_ma_events_grp5 ;

  // submodule mk_grp6
  assign mk_grp6_ma_core_req_req = mk_grp5_mav_fwd_req ;
  assign mk_grp6_ma_events_e = ma_events_grp6_e ;
  assign mk_grp6_ma_mcountinhibit_mcountinhibit_val =
	     mk_grp3_mv_mcountinhibit_grp6 ;
  assign mk_grp6_ma_mhpminterrupten_v = mk_grp3_mv_mhpminterrupten_grp6 ;
  assign mk_grp6_EN_ma_core_req = CAN_FIRE_RL_mkConnectionAVtoAf_2 ;
  assign mk_grp6_EN_mav_fwd_req = mk_grp6_RDY_mav_fwd_req ;
  assign mk_grp6_EN_ma_events = EN_ma_events_grp6 ;

  // submodule mk_grp7
  assign mk_grp7_ma_core_req_req = mk_grp6_mav_fwd_req ;
  assign mk_grp7_ma_events_e = ma_events_grp7_e ;
  assign mk_grp7_ma_mcountinhibit_mcountinhibit_val =
	     mk_grp3_mv_mcountinhibit_grp7 ;
  assign mk_grp7_ma_mhpminterrupten_v = mk_grp3_mv_mhpminterrupten_grp7 ;
  assign mk_grp7_EN_ma_core_req = mk_grp6_RDY_mav_fwd_req ;
  assign mk_grp7_EN_ma_events = EN_ma_events_grp7 ;

  // remaining internal signals
  assign anydata__h911 = x__h2164 | mk_grp7_mv_core_resp[31:0] ;
  assign mk_grp1_mv_core_resp__7_BIT_32_8_OR_mk_grp2_mv_ETC___d66 =
	     mk_grp1_mv_core_resp[32] || mk_grp2_mv_core_resp[32] ||
	     mk_grp3_mv_core_resp[32] ||
	     mk_grp4_mv_core_resp[32] ||
	     mk_grp5_mv_core_resp[32] ||
	     mk_grp6_mv_core_resp[32] ||
	     mk_grp7_mv_core_resp[32] ;
  assign x__h2164 = x__h2166 | mk_grp6_mv_core_resp[31:0] ;
  assign x__h2166 = x__h2168 | mk_grp5_mv_core_resp[31:0] ;
  assign x__h2168 = x__h2170 | mk_grp4_mv_core_resp[31:0] ;
  assign x__h2170 = x__h2172 | mk_grp3_mv_core_resp[31:0] ;
  assign x__h2172 = mk_grp1_mv_core_resp[31:0] | mk_grp2_mv_core_resp[31:0] ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        rg_prv <= `BSV_ASSIGNMENT_DELAY 2'd3;
      end
    else
      begin
        if (rg_prv_EN) rg_prv <= `BSV_ASSIGNMENT_DELAY rg_prv_D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    rg_prv = 2'h2;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on
endmodule  // mk_csr_daisy

