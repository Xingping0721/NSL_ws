
`timescale	1ns / 1ns
`default_nettype none


/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Tue Apr 14 19:00:23 2026
 Licensed to :EVALUATION USER*/

// synthesis translate_off
// synopsys translate_off
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module real_num ( p_reset , m_clock );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  reg [7:0] out;
  reg [7:0] count;
  wire _net_1;

always @(posedge m_clock)
  begin
    if(1'b1)
    begin
    $display("out = %d",out);
    end
  end
   assign  _net_1 = (count==8'b11001000);
always @(posedge m_clock)
  begin
    if(_net_1)
    begin
    $display("bye");
    end
  end
always @(posedge m_clock)
  begin
    if(_net_1)
    begin
    $finish;
    end
  end
always @(posedge m_clock)
  begin
  out <= 8'b00111111;
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

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Tue Apr 14 19:00:23 2026
 Licensed to :EVALUATION USER*/

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Tue Apr 14 19:00:23 2026
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

	real_num real_num_instance(
		.p_reset(p_reset),
		.m_clock(m_clock)
	);

	initial forever #(tCYC/2) m_clock = ~m_clock;

	initial begin
		$dumpfile("real_num.vcd");
		$dumpvars(0,real_num_instance);
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
