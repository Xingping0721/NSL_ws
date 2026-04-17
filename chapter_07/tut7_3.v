
`timescale	1ns / 1ns
`default_nettype none


/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Fri Apr 17 19:16:01 2026
 Licensed to :EVALUATION USER*/

// synthesis translate_off
// synopsys translate_off
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module tut7_3 ( p_reset , m_clock );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  reg [7:0] count;
  wire [7:0] value;
  wire start;
  reg [7:0] loop;
  reg [7:0] lend;
  wire [7:0] _net_2;
  wire _net_3;
  reg _reg_4;
  reg _reg_5;
  reg _reg_6;
  wire _net_9;
  wire _reg_5_goto;
  wire _reg_4_goin;
  wire _net_10;
  wire _reg_5_goin;

   assign  value = (_net_3)? ((_net_3)?8'b00000101:8'b0):8'bx;
always @(posedge start)
  begin
#1 if (start===1'bx)
 begin
$display("Warning: control hazard(tut7_3:start) at %d",$time);
 end
#1 if (((_net_3)===1'bx) || (1'b1)===1'bx) $display("hazard (_net_3 || 1'b1) line 8 at %d\n",$time);
 end
   assign  start = _net_3;
   assign  _net_2 = ((_reg_5&(~_net_9)))? (((_reg_5&(~_net_9)))?(loop+8'b00000001):8'b0):8'bx;
   assign  _net_3 = (count==8'b01100100);
always @(posedge m_clock)
  begin
    if(_reg_4)
    begin
    $display("bye: count = %d",count);
    end
  end
always @(posedge m_clock)
  begin
    if(_reg_4)
    begin
    $finish;
    end
  end
   assign  _net_9 = (_reg_5)? ((_reg_5)?(~(loop < lend)):1'b0):1'bx;
always @(posedge _reg_5_goto)
  begin
#1 if (_reg_5_goto===1'bx)
 begin
$display("Warning: control hazard(tut7_3:_reg_5_goto) at %d",$time);
 end
#1 if (((((_reg_5&(~_net_9))&_net_10))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_5&(~_net_9))&_net_10) || 1'b1) line 14 at %d\n",$time);
#1 if ((((_reg_5&_net_9))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_5&_net_9) || 1'b1) line 14 at %d\n",$time);
 end
   assign  _reg_5_goto = ((_reg_5&(~_net_9))&_net_10)|
    (_reg_5&_net_9);
always @(posedge _reg_4_goin)
  begin
#1 if (_reg_4_goin===1'bx)
 begin
$display("Warning: control hazard(tut7_3:_reg_4_goin) at %d",$time);
 end
#1 if ((((_reg_5&_net_9))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_5&_net_9) || 1'b1) line 14 at %d\n",$time);
 end
   assign  _reg_4_goin = (_reg_5&_net_9);
   assign  _net_10 = ((_reg_5&(~_net_9)))? (((_reg_5&(~_net_9)))?(_net_2 < lend):1'b0):1'bx;
always @(posedge _reg_5_goin)
  begin
#1 if (_reg_5_goin===1'bx)
 begin
$display("Warning: control hazard(tut7_3:_reg_5_goin) at %d",$time);
 end
#1 if (((((_reg_5&(~_net_9))&_net_10))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_5&(~_net_9))&_net_10) || 1'b1) line 14 at %d\n",$time);
 end
   assign  _reg_5_goin = ((_reg_5&(~_net_9))&_net_10);
always @(posedge m_clock)
  begin
    if((_reg_5&(~_net_9)))
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
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     loop <= 8'b00000000;
else if (((start|_reg_6)&(_reg_5&(~_net_9))))   loop <= 8'bx; 
  else if ((start|_reg_6))
      loop <= 8'b00000000;
else if ((_reg_5&(~_net_9)))
      loop <= _net_2;
end
always @(posedge m_clock)
  begin
if ((((start|_reg_6)|(_reg_5&(~_net_9)))==1'b1) ||
 (((start|_reg_6)|(_reg_5&(~_net_9)))==1'b0) ) begin
 if (((start|_reg_6)&(_reg_5&(~_net_9))))
 begin $display("Warning: assign collision(tut7_3:loop) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(tut7_3:loop) at %d",$time);

  end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     lend <= 8'b00000000;
else if ((start|_reg_6))
      lend <= value;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_4 <= 1'b0;
else if (((_reg_5&_net_9)|(_reg_4|_reg_5)))
      _reg_4 <= ((_reg_5&_net_9)|(_reg_5&(~_reg_5_goto)));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_5 <= 1'b0;
else if (((((_reg_5&(~_net_9))&_net_10)|start)|(_reg_5|_reg_6)))
      _reg_5 <= ((((_reg_5&(~_net_9))&_net_10)|_reg_6)|start);
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_6 <= 1'b0;
else if (_reg_6)
      _reg_6 <= 1'b0;
end
endmodule

// synthesis translate_on
// synopsys translate_on

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Fri Apr 17 19:16:01 2026
 Licensed to :EVALUATION USER*/

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Fri Apr 17 19:16:01 2026
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

	tut7_3 tut7_3_instance(
		.p_reset(p_reset),
		.m_clock(m_clock)
	);

	initial forever #(tCYC/2) m_clock = ~m_clock;

	initial begin
		$dumpfile("tut7_3.vcd");
		$dumpvars(0,tut7_3_instance);
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
