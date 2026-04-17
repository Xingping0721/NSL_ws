
`timescale	1ns / 1ns
`default_nettype none


/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Fri Apr 17 18:45:03 2026
 Licensed to :EVALUATION USER*/

// synthesis translate_off
// synopsys translate_off
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module tut7 ( p_reset , m_clock );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  reg [7:0] count;
  wire [7:0] value;
  wire start;
  wire _net_0;
  reg _reg_1;
  reg _reg_2;
  reg _reg_3;
  reg _reg_4;

   assign  value = (_net_0)? ((_net_0)?count:8'b0):8'bx;
always @(posedge start)
  begin
#1 if (start===1'bx)
 begin
$display("Warning: control hazard(tut7:start) at %d",$time);
 end
#1 if (((_net_0)===1'bx) || (1'b1)===1'bx) $display("hazard (_net_0 || 1'b1) line 9 at %d\n",$time);
 end
   assign  start = _net_0;
   assign  _net_0 = (count==8'b01100100);
always @(posedge m_clock)
  begin
    if(_reg_1)
    begin
    $display("bye: count = %d",count);
    end
  end
always @(posedge m_clock)
  begin
    if(_reg_1)
    begin
    $finish;
    end
  end
always @(posedge m_clock)
  begin
    if(_reg_2)
    begin
    $display("count = %d",count);
    end
  end
always @(posedge m_clock)
  begin
    if(_reg_3)
    begin
    $display("count = %d",count);
    end
  end
always @(posedge m_clock)
  begin
    if((start|_reg_4))
    begin
    $display("Hello World: value = %d, count = %d",value,count);
    end
  end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     count <= 8'b00000000;
else   count <= (count+8'b00000001);
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_1 <= 1'b0;
else if ((_reg_1|_reg_2))
      _reg_1 <= _reg_2;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_2 <= 1'b0;
else if ((_reg_2|_reg_3))
      _reg_2 <= _reg_3;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_3 <= 1'b0;
else if ((start|(_reg_3|_reg_4)))
      _reg_3 <= (_reg_4|start);
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_4 <= 1'b0;
else if (_reg_4)
      _reg_4 <= 1'b0;
end
endmodule

// synthesis translate_on
// synopsys translate_on

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Fri Apr 17 18:45:03 2026
 Licensed to :EVALUATION USER*/

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Fri Apr 17 18:45:03 2026
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

	tut7 tut7_instance(
		.p_reset(p_reset),
		.m_clock(m_clock)
	);

	initial forever #(tCYC/2) m_clock = ~m_clock;

	initial begin
		$dumpfile("tut7.vcd");
		$dumpvars(0,tut7_instance);
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
