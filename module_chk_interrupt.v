//
// Generated by Bluespec Compiler, version 2021.07-3-g8227dc97 (build 8227dc97)
//
// On Fri Sep  3 12:08:18 PDT 2021
//
//
// Ports:
// Name                         I/O  size props
// chk_interrupt                  O     7
// chk_interrupt_prv              I     2
// chk_interrupt_mstatus          I    32
// chk_interrupt_mip              I    19
// chk_interrupt_mie              I    19
//
// Combinational paths from inputs to outputs:
//   (chk_interrupt_prv,
//    chk_interrupt_mstatus,
//    chk_interrupt_mip,
//    chk_interrupt_mie) -> chk_interrupt
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

module module_chk_interrupt(chk_interrupt_prv,
			    chk_interrupt_mstatus,
			    chk_interrupt_mip,
			    chk_interrupt_mie,
			    chk_interrupt);
  // value method chk_interrupt
  input  [1 : 0] chk_interrupt_prv;
  input  [31 : 0] chk_interrupt_mstatus;
  input  [18 : 0] chk_interrupt_mip;
  input  [18 : 0] chk_interrupt_mie;
  output [6 : 0] chk_interrupt;

  // signals for module outputs
  wire [6 : 0] chk_interrupt;

  // remaining internal signals
  wire [18 : 0] pending_interrupts__h35, x__h96, y__h97;
  wire [5 : 0] x__h25;
  wire x__h102;

  // value method chk_interrupt
  assign chk_interrupt = { x__h25, pending_interrupts__h35 != 19'd0 } ;

  // remaining internal signals
  assign pending_interrupts__h35 = x__h96 & y__h97 ;
  assign x__h102 = chk_interrupt_prv != 2'd3 || chk_interrupt_mstatus[3] ;
  assign x__h25 =
	     { 1'b1,
	       pending_interrupts__h35[11] ?
		 5'd11 :
		 (pending_interrupts__h35[3] ?
		    5'd3 :
		    (pending_interrupts__h35[7] ?
		       5'd7 :
		       (pending_interrupts__h35[16] ? 5'd16 : 5'd31))) } ;
  assign x__h96 = chk_interrupt_mie & chk_interrupt_mip ;
  assign y__h97 = {19{x__h102}} ;
endmodule  // module_chk_interrupt

