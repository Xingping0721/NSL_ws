
`timescale	1ns / 1ns
`default_nettype none


/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Tue Apr 14 19:30:21 2026
 Licensed to :EVALUATION USER*/

// synthesis translate_off
// synopsys translate_off
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module tut4 ( p_reset , m_clock );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  reg [7:0] count;
  wire _net_0;

   assign  _net_0 = ((count >= 8'b00000000)&(count <= 8'b00001010));
always @(posedge m_clock)
  begin
    if(_net_0)
    begin
    $display("ok lah: %d",count);
    end
  end
always @(posedge m_clock)
  begin
    if((~_net_0))
    begin
    $display("bye");
    end
  end
always @(posedge m_clock)
  begin
    if((~_net_0))
    begin
    $finish;
    end
  end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     count <= 8'b00000000;
else   count <= (count+8'b00000001);
end
endmodule

// synthesis translate_on
// synopsys translate_on

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Tue Apr 14 19:30:21 2026
 Licensed to :EVALUATION USER*/

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Tue Apr 14 19:30:21 2026
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

	tut4 tut4_instance(
		.p_reset(p_reset),
		.m_clock(m_clock)
	);

	initial forever #(tCYC/2) m_clock = ~m_clock;

	initial begin
		$dumpfile("tut4.vcd");
		$dumpvars(0,tut4_instance);
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
