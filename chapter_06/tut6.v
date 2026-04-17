
`timescale	1ns / 1ns
`default_nettype none


/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Fri Apr 17 18:36:09 2026
 Licensed to :EVALUATION USER*/

// synthesis translate_off
// synopsys translate_off
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module tut6 ( p_reset , m_clock );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  wire [7:0] value;
  wire [7:0] ret;
  wire start;
  wire _net_0;
  reg [63:0] _time;

   assign  value = (_net_0)? ((_net_0)?8'b00000001:8'b0):8'bx;
   assign  ret = (start)? ((start)?(value+8'b00000011):8'b0):8'bx;
always @(posedge start)
  begin
#1 if (start===1'bx)
 begin
$display("Warning: control hazard(tut6:start) at %d",$time);
 end
#1 if (((_net_0)===1'bx) || (1'b1)===1'bx) $display("hazard (_net_0 || 1'b1) line 7 at %d\n",$time);
 end
   assign  start = _net_0;
   assign  _net_0 = ((_time) >= 64'b0000000000000000000000000000000000000000000000000000000001100100);
always @(posedge m_clock)
  begin
    if(_net_0)
    begin
    $display("Value = %d",ret);
    end
  end
always @(posedge m_clock)
  begin
    if(_net_0)
    begin
    $finish;
    end
  end
initial begin
     _time = 64'b0000000000000000000000000000000000000000000000000000000000000000;
end
always @(posedge m_clock)
  begin
  _time <= (_time+64'b0000000000000000000000000000000000000000000000000000000000000001);
end
endmodule

// synthesis translate_on
// synopsys translate_on

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Fri Apr 17 18:36:09 2026
 Licensed to :EVALUATION USER*/

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Fri Apr 17 18:36:09 2026
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

	tut6 tut6_instance(
		.p_reset(p_reset),
		.m_clock(m_clock)
	);

	initial forever #(tCYC/2) m_clock = ~m_clock;

	initial begin
		$dumpfile("tut6.vcd");
		$dumpvars(0,tut6_instance);
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
