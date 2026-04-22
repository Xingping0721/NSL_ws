
`timescale	1ns / 1ns
`default_nettype none


/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Mon Apr 20 19:27:50 2026
 Licensed to :EVALUATION USER*/

// synthesis translate_off
// synopsys translate_off
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module tut11_1 ( p_reset , m_clock );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  reg [7:0] count;
  reg [7:0] value;
  reg start;
  reg subproc;
  wire _proc_subproc_set;
  wire _proc_subproc_reset;
  wire _proc_start_set;
  wire _proc_start_reset;
  wire _net_0;
  wire _net_1;
  reg _reg_4;
  reg _reg_5;
  reg _reg_6;
  reg _reg_7;
  reg _reg_8;
  reg _reg_12;
  reg _reg_13;
  reg _reg_14;
  reg _reg_15;

always @(posedge _proc_subproc_set)
  begin
#1 if (_proc_subproc_set===1'bx)
 begin
$display("Warning: control hazard(tut11_1:_proc_subproc_set) at %d",$time);
 end
#1 if ((((_reg_6&start))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_6&start) || 1'b1) line 15 at %d\n",$time);
 end
   assign  _proc_subproc_set = (_reg_6&start);
always @(posedge _proc_subproc_reset)
  begin
#1 if (_proc_subproc_reset===1'bx)
 begin
$display("Warning: control hazard(tut11_1:_proc_subproc_reset) at %d",$time);
 end
#1 if ((((_reg_12&subproc))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_12&subproc) || 1'b1) line 24 at %d\n",$time);
 end
   assign  _proc_subproc_reset = (_reg_12&subproc);
always @(posedge _proc_start_set)
  begin
#1 if (_proc_start_set===1'bx)
 begin
$display("Warning: control hazard(tut11_1:_proc_start_set) at %d",$time);
 end
#1 if (((_net_0)===1'bx) || (1'b1)===1'bx) $display("hazard (_net_0 || 1'b1) line 9 at %d\n",$time);
 end
   assign  _proc_start_set = _net_0;
always @(posedge _proc_start_reset)
  begin
#1 if (_proc_start_reset===1'bx)
 begin
$display("Warning: control hazard(tut11_1:_proc_start_reset) at %d",$time);
 end
#1 if ((((_reg_4&start))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_4&start) || 1'b1) line 17 at %d\n",$time);
 end
   assign  _proc_start_reset = (_reg_4&start);
   assign  _net_0 = (count==8'b01100100);
   assign  _net_1 = (count==8'b11001000);
always @(posedge m_clock)
  begin
    if(_net_1)
    begin
    $display("countX = %d",count);
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
    if(((_reg_5&(subproc&_proc_subproc_reset))&start))
    begin
    $display("count3 = %d",count);
    end
  end
always @(posedge m_clock)
  begin
    if((_reg_7&start))
    begin
    $display("count2 = %d",count);
    end
  end
always @(posedge m_clock)
  begin
    if((start&_reg_8))
    begin
    $display("count1 = %d",count);
    end
  end
always @(posedge m_clock)
  begin
    if((_reg_13&subproc))
    begin
    $display("sub:count3 = %d",count);
    end
  end
always @(posedge m_clock)
  begin
    if((_reg_14&subproc))
    begin
    $display("sub:count2 = %d",count);
    end
  end
always @(posedge m_clock)
  begin
    if((subproc&_reg_15))
    begin
    $display("sub:count1 = %d",count);
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
if (_net_0)
      value <= count;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     start <= 1'b0;
else if ((_proc_start_set|_proc_start_reset))
      start <= _proc_start_set;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     subproc <= 1'b0;
else if ((_proc_subproc_set|_proc_subproc_reset))
      subproc <= _proc_subproc_set;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_4 <= 1'b0;
else if ((_proc_start_reset|(_reg_4|_reg_5)))
      _reg_4 <= ((_reg_5&_proc_subproc_reset)&(~_proc_start_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_5 <= 1'b0;
else if ((_proc_start_reset|(_reg_5|_reg_6)))
      _reg_5 <= ((_reg_6|(_reg_5&(subproc&(~_proc_subproc_reset))))&(~_proc_start_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_6 <= 1'b0;
else if ((_proc_start_reset|(_reg_6|_reg_7)))
      _reg_6 <= (_reg_7&(~_proc_start_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_7 <= 1'b0;
else if ((_proc_start_reset|(_reg_8|(_reg_7|_reg_8))))
      _reg_7 <= (_reg_8&(~_proc_start_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_8 <= 1'b0;
else if (((_proc_start_set|_proc_start_reset)|_reg_8))
      _reg_8 <= _proc_start_set;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_12 <= 1'b0;
else if ((_proc_subproc_reset|(_reg_12|_reg_13)))
      _reg_12 <= (_reg_13&(~_proc_subproc_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_13 <= 1'b0;
else if ((_proc_subproc_reset|(_reg_13|_reg_14)))
      _reg_13 <= (_reg_14&(~_proc_subproc_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_14 <= 1'b0;
else if ((_proc_subproc_reset|(_reg_15|(_reg_14|_reg_15))))
      _reg_14 <= (_reg_15&(~_proc_subproc_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_15 <= 1'b0;
else if (((_proc_subproc_set|_proc_subproc_reset)|_reg_15))
      _reg_15 <= _proc_subproc_set;
end
endmodule

// synthesis translate_on
// synopsys translate_on

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Mon Apr 20 19:27:50 2026
 Licensed to :EVALUATION USER*/

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Mon Apr 20 19:27:50 2026
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

	tut11_1 tut11_1_instance(
		.p_reset(p_reset),
		.m_clock(m_clock)
	);

	initial forever #(tCYC/2) m_clock = ~m_clock;

	initial begin
		$dumpfile("tut11_1.vcd");
		$dumpvars(0,tut11_1_instance);
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
