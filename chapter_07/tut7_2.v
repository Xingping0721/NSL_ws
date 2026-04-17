
`timescale	1ns / 1ns
`default_nettype none


/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Fri Apr 17 19:09:40 2026
 Licensed to :EVALUATION USER*/

// synthesis translate_off
// synopsys translate_off
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module tut7_2 ( p_reset , m_clock );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  reg [7:0] count;
  wire start;
  reg [7:0] loop;
  wire _net_2;
  reg _reg_3;
  reg _reg_4;
  reg _reg_5;
  wire _net_8;
  wire _reg_4_goto;
  wire _reg_4_goin;

always @(posedge start)
  begin
#1 if (start===1'bx)
 begin
$display("Warning: control hazard(tut7_2:start) at %d",$time);
 end
#1 if (((_net_2)===1'bx) || (1'b1)===1'bx) $display("hazard (_net_2 || 1'b1) line 8 at %d\n",$time);
 end
   assign  start = _net_2;
   assign  _net_2 = (count==8'b01100100);
always @(posedge m_clock)
  begin
    if(_reg_3)
    begin
    $display("bye: count = %d",count);
    end
  end
always @(posedge m_clock)
  begin
    if(_reg_3)
    begin
    $finish;
    end
  end
   assign  _net_8 = (_reg_4)? ((_reg_4)?(loop < 8'b00001001):1'b0):1'bx;
always @(posedge _reg_4_goto)
  begin
#1 if (_reg_4_goto===1'bx)
 begin
$display("Warning: control hazard(tut7_2:_reg_4_goto) at %d",$time);
 end
#1 if ((((_reg_4&_net_8))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_4&_net_8) || 1'b1) line 14 at %d\n",$time);
 end
   assign  _reg_4_goto = (_reg_4&_net_8);
always @(posedge _reg_4_goin)
  begin
#1 if (_reg_4_goin===1'bx)
 begin
$display("Warning: control hazard(tut7_2:_reg_4_goin) at %d",$time);
 end
#1 if ((((_reg_4&_net_8))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_4&_net_8) || 1'b1) line 14 at %d\n",$time);
 end
   assign  _reg_4_goin = (_reg_4&_net_8);
always @(posedge m_clock)
  begin
    if(_reg_4)
    begin
    $display("loop = %d, count = %d",loop,count);
    end
  end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     count <= 8'b00000000;
else   count <= (count+8'b00000001);
end
always @(posedge m_clock)
  begin
if (((start|_reg_5)&(_reg_4&_net_8)))   loop <= 8'bx; 
  else if ((start|_reg_5))
      loop <= 8'b00000000;
else if ((_reg_4&_net_8))
      loop <= (loop+8'b00000001);
end
always @(posedge m_clock)
  begin
if ((((start|_reg_5)|(_reg_4&_net_8))==1'b1) ||
 (((start|_reg_5)|(_reg_4&_net_8))==1'b0) ) begin
 if (((start|_reg_5)&(_reg_4&_net_8)))
 begin $display("Warning: assign collision(tut7_2:loop) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(tut7_2:loop) at %d",$time);

  end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_3 <= 1'b0;
else if ((_reg_3|_reg_4))
      _reg_3 <= (_reg_4&(~_reg_4_goto));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_4 <= 1'b0;
else if ((((_reg_4&_net_8)|start)|(_reg_4|_reg_5)))
      _reg_4 <= (((_reg_4&_net_8)|_reg_5)|start);
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_5 <= 1'b0;
else if (_reg_5)
      _reg_5 <= 1'b0;
end
endmodule

// synthesis translate_on
// synopsys translate_on

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Fri Apr 17 19:09:40 2026
 Licensed to :EVALUATION USER*/

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Fri Apr 17 19:09:40 2026
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

	tut7_2 tut7_2_instance(
		.p_reset(p_reset),
		.m_clock(m_clock)
	);

	initial forever #(tCYC/2) m_clock = ~m_clock;

	initial begin
		$dumpfile("tut7_2.vcd");
		$dumpvars(0,tut7_2_instance);
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
