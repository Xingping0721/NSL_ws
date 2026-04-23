
`timescale	1ns / 1ns
`default_nettype none


/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Thu Apr 23 20:36:40 2026
 Licensed to :EVALUATION USER*/

// synthesis translate_off
// synopsys translate_off
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module tut12 ( p_reset , m_clock );
  parameter _state__reg_0_state1 = 0;
  parameter _state__reg_0_state2 = 1;
  parameter _state__reg_0_state3 = 2;
  input p_reset, m_clock;
  wire p_reset, m_clock;
  reg [1:0] c1;
  reg [1:0] c2;
  reg [1:0] c3;
  reg [1:0] _reg_0;
  wire _net_1;
  wire _net_2;
  wire _net_4;
  wire _net_5;
  wire _net_7;
  wire _net_8;

always @(posedge _net_1)
  begin
#1 if (_net_1===1'bx)
 begin
$display("Warning: control hazard(tut12:_net_1) at %d",$time);
 end
#1 if ((((_reg_0==_state__reg_0_state1))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_0==_state__reg_0_state1) || 1'b1) line 17 at %d\n",$time);
 end
   assign  _net_1 = (_reg_0==_state__reg_0_state1);
   assign  _net_2 = (_net_1)? ((_net_1)?(c1==2'b11):1'b0):1'bx;
always @(posedge m_clock)
  begin
    if(_net_1)
    begin
    $display("in state1 %d",c1);
    end
  end
always @(posedge _net_4)
  begin
#1 if (_net_4===1'bx)
 begin
$display("Warning: control hazard(tut12:_net_4) at %d",$time);
 end
#1 if ((((_reg_0==_state__reg_0_state2))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_0==_state__reg_0_state2) || 1'b1) line 23 at %d\n",$time);
 end
   assign  _net_4 = (_reg_0==_state__reg_0_state2);
   assign  _net_5 = (_net_4)? ((_net_4)?(c2==2'b11):1'b0):1'bx;
always @(posedge m_clock)
  begin
    if(_net_4)
    begin
    $display("in state2 %d",c2);
    end
  end
always @(posedge _net_7)
  begin
#1 if (_net_7===1'bx)
 begin
$display("Warning: control hazard(tut12:_net_7) at %d",$time);
 end
#1 if ((((_reg_0==_state__reg_0_state3))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_0==_state__reg_0_state3) || 1'b1) line 30 at %d\n",$time);
 end
   assign  _net_7 = (_reg_0==_state__reg_0_state3);
   assign  _net_8 = (_net_7)? ((_net_7)?(c3==2'b11):1'b0):1'bx;
always @(posedge m_clock)
  begin
    if((_net_7&_net_8))
    begin
    $finish;
    end
  end
always @(posedge m_clock)
  begin
    if(_net_7)
    begin
    $display("in state3 %d",c3);
    end
  end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     c1 <= 2'b00;
else if (_net_1)
      c1 <= (c1+2'b01);
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     c2 <= 2'b00;
else if (_net_4)
      c2 <= (c2+2'b01);
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     c3 <= 2'b00;
else if (_net_7)
      c3 <= (c3+2'b01);
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_0 <= 2'b00;
else if ((((_net_7&_net_8)&(_net_4&_net_5))|(((_net_7&_net_8)|(_net_4&_net_5))&(_net_1&_net_2))))   _reg_0 <= 2'bx; 
  else if ((_net_7&_net_8))
      _reg_0 <= _state__reg_0_state1;
else if ((_net_4&_net_5))
      _reg_0 <= _state__reg_0_state3;
else if ((_net_1&_net_2))
      _reg_0 <= _state__reg_0_state2;
end
always @(posedge m_clock)
  begin
if (((((_net_7&_net_8)|(_net_4&_net_5))|(_net_1&_net_2))==1'b1) ||
 ((((_net_7&_net_8)|(_net_4&_net_5))|(_net_1&_net_2))==1'b0) ) begin
 if ((((_net_7&_net_8)&(_net_4&_net_5))|(((_net_7&_net_8)|(_net_4&_net_5))&(_net_1&_net_2))))
 begin $display("Warning: assign collision(tut12:_reg_0) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(tut12:_reg_0) at %d",$time);

  end
endmodule

// synthesis translate_on
// synopsys translate_on

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Thu Apr 23 20:36:40 2026
 Licensed to :EVALUATION USER*/

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Thu Apr 23 20:36:40 2026
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

	tut12 tut12_instance(
		.p_reset(p_reset),
		.m_clock(m_clock)
	);

	initial forever #(tCYC/2) m_clock = ~m_clock;

	initial begin
		$dumpfile("tut12.vcd");
		$dumpvars(0,tut12_instance);
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
