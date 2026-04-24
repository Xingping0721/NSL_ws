
`timescale	1ns / 1ns
`default_nettype none


/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Fri Apr 24 13:41:39 2026
 Licensed to :EVALUATION USER*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module tut14 ( p_reset , m_clock );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  wire _buff_I;
  wire _buff_O;
  wire _dcm2_RST;
  wire _dcm2_PSINCDEC;
  wire _dcm2_PSEN;
  wire _dcm2_PSCLK;
  wire _dcm2_CLKIN;
  wire _dcm2_CLKFB;
  wire _dcm2_PSDONE;
  wire _dcm2_CLK0;
  wire _dcm2_CLK90;
  wire _dcm2_CLK180;
  wire _dcm2_CLK270;
  wire _dcm2_CLK2X;
  wire _dcm2_CLK2X180;
  wire _dcm2_CLKDV;
  wire _dcm2_CLKFX;
  wire _dcm2_CLKFX180;
  wire _dcm2_LOCKED;
  wire [7:0] _dcm2_STATUS;
  wire _target_samplein;
  wire _target_sampleout;
  wire _target_p_reset;
  wire _target_m_clock;
sample target (.m_clock(_buff_O), .p_reset( p_reset), .sampleout(_target_sampleout), .samplein(_target_samplein));
DCM dcm2 (.PSDONE(_dcm2_PSDONE), .CLK0(_dcm2_CLK0), .CLK90(_dcm2_CLK90), .CLK180(_dcm2_CLK180), .CLK270(_dcm2_CLK270), .CLK2X(_dcm2_CLK2X), .CLK2X180(_dcm2_CLK2X180), .CLKDV(_dcm2_CLKDV), .CLKFX(_dcm2_CLKFX), .CLKFX180(_dcm2_CLKFX180), .LOCKED(_dcm2_LOCKED), .STATUS(_dcm2_STATUS), .RST(_dcm2_RST), .PSINCDEC(_dcm2_PSINCDEC), .PSEN(_dcm2_PSEN), .PSCLK(_dcm2_PSCLK), .CLKIN(_dcm2_CLKIN), .CLKFB(_dcm2_CLKFB));
defparam dcm2.CLK_FEEDBACK = "1X";
defparam dcm2.CLKDV_DIVIDE = 4;
BUFG buff (.O(_buff_O), .I(_buff_I));

   assign  _buff_I = _dcm2_CLKDV;
   assign  _dcm2_RST = p_reset;
   assign  _dcm2_PSINCDEC = 1'b0;
   assign  _dcm2_PSEN = 1'b0;
   assign  _dcm2_PSCLK = 1'b0;
   assign  _dcm2_CLKIN = m_clock;
   assign  _dcm2_CLKFB = _dcm2_CLK0;
   assign  _target_p_reset = p_reset;
   assign  _target_m_clock = _buff_O;
endmodule

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Fri Apr 24 13:41:39 2026
 Licensed to :EVALUATION USER*/

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Fri Apr 24 13:41:39 2026
 Licensed to :EVALUATION USER*/

//synthesis translate_off
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/
module tb;
	parameter tCYC=2;
	parameter tPD=(tCYC/10);

	reg p_reset;
	reg m_clock;

	tut14 tut14_instance(
		.p_reset(p_reset),
		.m_clock(m_clock)
	);

	initial forever #(tCYC/2) m_clock = ~m_clock;

	initial begin
		$dumpfile("tut14.vcd");
		$dumpvars(0,tut14_instance);
	end

	initial begin
		#(tPD)
			p_reset = 1;
			m_clock = 0;
		#(tCYC)
			p_reset = 0;
	end

endmodule

//synthesis translate_on
