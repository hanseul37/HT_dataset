/////////////////////////////////////////////////////////////////////
////                                                             ////
////  OpenCores         Simple Programmable Interrupt Controller ////
////                                                             ////
////  Author: Richard Herveille                                  ////
////          richard@asics.ws                                   ////
////          www.asics.ws                                       ////
////                                                             ////
/////////////////////////////////////////////////////////////////////
////                                                             ////
//// Copyright (C) 2002 Richard Herveille                        ////
////                    richard@asics.ws                         ////
////                                                             ////
//// This source file may be used and distributed without        ////
//// restriction provided that this copyright statement is not   ////
//// removed from the file and that any derivative work contains ////
//// the original copyright notice and the associated disclaimer.////
////                                                             ////
////     THIS SOFTWARE is PROVIDED ``AS IS'' AND WITHOUT ANY     ////
//// EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED   ////
//// TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS   ////
//// FOR A PARTICULAR PURPOSE. IN NO EVENT SHALL THE AUTHOR      ////
//// OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,         ////
//// INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES    ////
//// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE   ////
//// GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR        ////
//// BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF  ////
//// LIABILITY, WHETHER IN  CONTRACT, STRICT LIABILITY, OR TORT  ////
//// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT  ////
//// OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE         ////
//// POSSIBILITY OF SUCH DAMAGE.                                 ////
////                                                             ////
//
// Matthew Ballance - 2020
// Update code style to be ANSI compliant
// Update structure to support multiple bus protocols
/////////////////////////////////////////////////////////////////////

//  CVS Log
//
//  $Id: simple_pic.v,v 1.3 2002-12-24 10:26:51 rherveille Exp $
//
//  $Date: 2002-12-24 10:26:51 $
//  $Revision: 1.3 $
//  $Author: rherveille $
//  $Locker:  $
//  $State: Exp $
//
// Change History:
//               $Log: not supported by cvs2svn $
//               Revision 1.2  2002/12/22 16:11:03  rherveille
//               *** empty log message ***
//
//



//
// This is a simple Programmable Interrupt Controller.
// The number of interrupts is depending on the databus size.
// There's one interrupt input per databit (i.e. 16 interrupts for a 16
// bit databus).
// All attached devices share the same CPU priority level.
//
//
//
// Registers:
//
// 0x00: EdgeEnable Register
//       bits 7:0 R/W  Edge Enable '1' = edge triggered interrupt source
//                                 '0' = level triggered interrupt source
// 0x01: PolarityRegister
//       bits 7:0 R/W Polarity     '1' = high level / rising edge
//                                 '0' = low level / falling edge
// 0x02: MaskRegister
//       bits 7:0 R/W Mask         '1' = interrupt masked (disabled)
//                                 '0' = interrupt not masked (enabled)
// 0x03: PendingRegister
//       bits 7:0 R/W Pending      '1' = interrupt pending
//                                 '0' = no interrupt pending
//
// A CPU interrupt is generated when an interrupt is pending and its
// MASK bit is cleared.
//
//
//
// HOWTO:
//
// Clearing pending interrupts:
// Writing a '1' to a bit in the interrupt pending register clears the
// interrupt. Make sure to clear the interrupt at the source before
// writing to the interrupt pending register. Otherwise the interrupt
// will be set again.
//
// Priority based interrupts:
// Upon reception of an interrupt, check the interrupt register and
// determine the highest priority interrupt. Mask all interrupts from the
// current level to the lowest level. This negates the interrupt line, and
// makes sure only interrupts with a higher level are triggered. After
// completion of the interrupt service routine, clear the interrupt source,
// the interrupt bit in the pending register, and restore the MASK register
// to it's previous state.
//
// Addapt the core for fewer interrupt sources:
// If less than 8 interrupt sources are required, than the 'N_IRQ' parameter
// can be set to the amount of required interrupts. Interrupts are mapped
// starting at the LSBs. So only the 'N_IRQ' LSBs per register are valid. All
// other bits (i.e. the 8-'N_IRQ' MSBs) are set to zero '0'.
// Codesize N_IRQ approximately linear to the amount of interrupts. I.e. using
// 4 instead of 8 interrupt sources reduces the size by approx. half.
//

//`include "rv_addr_line_en_macros.svh"


module fwpic #(
		parameter N_IRQ = 8  // Number of interrupt sources
		) (
		input clock, 
		input reset, 
		// Note: expected to be a word address
		 //`RV_ADDR_LINE_EN_TARGET_PORT(,2,32),
		input [1:0] adr,
		input valid,
		input we,
		input [N_IRQ-1:0] dat_w,
		output reg			int_o,
		output reg [N_IRQ-1:0] dat_o,
		input [N_IRQ-1:0]	irq
);


  //
  //  Module body
  //
  wire [N_IRQ:1] pending;
  reg  [N_IRQ:1] pol, edgen, mask;   // register bank
  reg  [N_IRQ:1] lirq, dirq;                  // latched irqs, delayed latched irqs


  //
  // perform parameter checks
  //
  // synopsys translate_off
  initial begin
  	if (N_IRQ > 32) begin
        $display("simple_pic: max. 8 interrupt sources supported.");
  	end
  end
  // synopsys translate_on

  //
  // latch interrupt inputs
  always @(posedge clock)
    lirq <=  irq;

  //
  // generate delayed latched irqs
  always @(posedge clock)
    dirq <= lirq;


  //
  // generate actual triggers
  function trigger(input edgen, pol, lirq, dirq);
    reg   edge_irq, level_irq;
  begin
      edge_irq  = pol ? (lirq & ~dirq) : (dirq & ~lirq);
      level_irq = pol ? lirq : ~lirq;

      trigger = edgen ? edge_irq : level_irq;
  end
  endfunction

  reg  [N_IRQ:1] irq_event;
  integer n;
  always @(posedge clock)
    for(n=1; n<=N_IRQ; n=n+1)
      irq_event[n] <=  trigger(edgen[n], pol[n], lirq[n], dirq[n]);
  assign pending = irq_event;

  // All accesses are single-cycle
  assign ready = 1;
  
  always @(posedge clock/* or posedge reset*/) begin
//  	$display("clock: reset=%0d valid=%0d we=%0d", reset, valid, we);
    if (reset) begin
          pol   <=  {{N_IRQ}{1'b0}};              // clear polarity register
          edgen <=  {{N_IRQ}{1'b0}};              // clear edge enable register
          mask  <=  {{N_IRQ}{1'b1}};              // mask all interrupts
    end else if (valid && we) begin                    // interface write
//    	$display("write 'h%02h", adr);
      case (adr) // synopsys full_case parallel_case
        2'b00: edgen <=  dat_w[N_IRQ-1:0];        // EDGE-ENABLE register
        2'b01: pol   <=  dat_w[N_IRQ-1:0];        // POLARITY register
        2'b10: mask  <=  dat_w[N_IRQ-1:0];        // MASK register
        2'b11: ;                                 // PENDING register N_IRQ a special case (see below)
      endcase
    end
  end


`ifdef UNDEFINED
    // pending register N_IRQ a special case
    always @(posedge clock or posedge reset) begin
      if (reset) begin
          pending <=  {{N_IRQ}{1'b0}};            // clear all pending interrupts
      end else if ( valid && we & adr == 2'b11 ) begin
          pending <=  (pending & ~dat_w[N_IRQ-1:0]) | irq_event;
      end else begin
          pending <=  pending | irq_event;
      end
    end
`endif

    assign dat_r = dat_o;
    always @(posedge clock)
      case (adr) // synopsys full_case parallel_case
        2'b00: dat_o <=  { {('d32-N_IRQ){1'b0}}, edgen};
        2'b01: dat_o <=  { {('d32-N_IRQ){1'b0}}, pol};
        2'b10: dat_o <=  { {('d32-N_IRQ){1'b0}}, mask};
        2'b11: dat_o <=  { {(32-N_IRQ){1'b0}}, pending};
      endcase

  // generate CPU interrupt signal
  always @(posedge clock)
    int_o <=  |(pending & ~mask);

endmodule

