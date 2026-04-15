
`timescale	1ns / 1ns
`default_nettype none


/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Wed Apr 15 16:48:03 2026
 Licensed to :EVALUATION USER*/

// synthesis translate_off
// synopsys translate_off
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module tut5 ( p_reset , m_clock );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  reg [4:0] count;
  wire [4:0] x;
  wire [4:0] y;
  wire _net_0;
  wire _net_3;

   assign  x = (_net_3)? ((_net_3)?(count+5'b00001):5'b0):5'bx;
   assign  y = (_net_3)? ((_net_3)?(x+5'b00001):5'b0):5'bx;
   assign  _net_0 = (count >= 5'b01010);
always @(posedge m_clock)
  begin
    if(_net_0)
    begin
    $display("End");
    end
  end
always @(posedge m_clock)
  begin
    if(_net_0)
    begin
    $finish;
    end
  end
   assign  _net_3 = (count < 5'b01010);
always @(posedge m_clock)
  begin
    if(_net_3)
    begin
    $display("x=%d,y=%d,count=%d",x,y,count);
    end
  end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     count <= 5'b00000;
else if (_net_3)
      count <= x;
end
endmodule

// synthesis translate_on
// synopsys translate_on

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Wed Apr 15 16:48:03 2026
 Licensed to :EVALUATION USER*/

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Wed Apr 15 16:48:03 2026
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

	tut5 tut5_instance(
		.p_reset(p_reset),
		.m_clock(m_clock)
	);

	initial forever #(tCYC/2) m_clock = ~m_clock;

	initial begin
		$dumpfile("tut5.vcd");
		$dumpvars(0,tut5_instance);
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
