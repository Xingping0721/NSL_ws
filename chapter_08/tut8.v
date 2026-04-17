
`timescale	1ns / 1ns
`default_nettype none


/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Fri Apr 17 19:32:46 2026
 Licensed to :EVALUATION USER*/

// synthesis translate_off
// synopsys translate_off
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module tut8 ( p_reset , m_clock );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  reg [3:0] _count_lo;
  reg [3:0] _count_hi;
  wire [3:0] _res_lo;
  wire [3:0] _res_hi;
  wire [3:0] _sm_a;
  wire [3:0] _sm_b;
  wire _sm_ci;
  wire [3:0] _sm_q;
  wire _sm_c;
  wire _sm_o;
  wire _sm_ex;
  wire _sm_p_reset;
  wire _sm_m_clock;
  wire [3:0] _sm_1_a;
  wire [3:0] _sm_1_b;
  wire _sm_1_ci;
  wire [3:0] _sm_1_q;
  wire _sm_1_c;
  wire _sm_1_o;
  wire _sm_1_ex;
  wire _sm_1_p_reset;
  wire _sm_1_m_clock;
  wire [7:0] _net_0;
  wire _net_1;
  wire _net_3;
fadd4 sm (.m_clock(m_clock), .p_reset( p_reset), .ex(_sm_ex), .o(_sm_o), .c(_sm_c), .q(_sm_q), .ci(_sm_ci), .b(_sm_b), .a(_sm_a));
fadd4 sm_1 (.m_clock(m_clock), .p_reset( p_reset), .ex(_sm_1_ex), .o(_sm_1_o), .c(_sm_1_c), .q(_sm_1_q), .ci(_sm_1_ci), .b(_sm_1_b), .a(_sm_1_a));

   assign  _res_lo = (_net_1)? ((_net_1)?_sm_q:4'b0):4'bx;
   assign  _res_hi = (_net_1)? ((_net_1)?_sm_1_q:4'b0):4'bx;
   assign  _sm_a = (_net_1)? ((_net_1)?_count_lo:4'b0):4'bx;
   assign  _sm_b = (_net_1)? ((_net_1)?_count_lo:4'b0):4'bx;
   assign  _sm_ci = (_net_1)? ((_net_1)?1'b0:1'b0):1'bx;
always @(posedge _sm_ex)
  begin
#1 if (_sm_ex===1'bx)
 begin
$display("Warning: control hazard(tut8:_sm_ex) at %d",$time);
 end
#1 if (((_net_1)===1'bx) || (1'b1)===1'bx) $display("hazard (_net_1 || 1'b1) line 26 at %d\n",$time);
 end
   assign  _sm_ex = _net_1;
   assign  _sm_p_reset = p_reset;
   assign  _sm_m_clock = m_clock;
   assign  _sm_1_a = (_net_1)? ((_net_1)?_count_hi:4'b0):4'bx;
   assign  _sm_1_b = (_net_1)? ((_net_1)?_count_hi:4'b0):4'bx;
   assign  _sm_1_ci = (_net_1)? ((_net_1)?_sm_c:1'b0):1'bx;
always @(posedge _sm_1_ex)
  begin
#1 if (_sm_1_ex===1'bx)
 begin
$display("Warning: control hazard(tut8:_sm_1_ex) at %d",$time);
 end
#1 if (((_net_1)===1'bx) || (1'b1)===1'bx) $display("hazard (_net_1 || 1'b1) line 27 at %d\n",$time);
 end
   assign  _sm_1_ex = _net_1;
   assign  _sm_1_p_reset = p_reset;
   assign  _sm_1_m_clock = m_clock;
   assign  _net_0 = (({_count_hi,_count_lo})+8'b00000001);
   assign  _net_1 = (({_count_hi,_count_lo}) > 8'b00111100);
always @(posedge m_clock)
  begin
    if(_net_1)
    begin
    $display("count:%d, res:%d, ovf:%d",({_count_hi,_count_lo}),({_res_hi,_res_lo}),_sm_1_o);
    end
  end
   assign  _net_3 = (({_count_hi,_count_lo})==8'b01000110);
always @(posedge m_clock)
  begin
    if(_net_3)
    begin
    $display("bye");
    end
  end
always @(posedge m_clock)
  begin
    if(_net_3)
    begin
    $finish;
    end
  end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _count_lo <= 4'b0000;
else   _count_lo <= (_net_0[3:0]);
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _count_hi <= 4'b0000;
else   _count_hi <= (_net_0[7:4]);
end
endmodule

// synthesis translate_on
// synopsys translate_on

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Fri Apr 17 19:32:46 2026
 Licensed to :EVALUATION USER*/

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Fri Apr 17 19:32:46 2026
 Licensed to :EVALUATION USER*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module fadd4 ( p_reset , m_clock , a , b , ci , q , c , o , ex );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  input [3:0] a;
  wire [3:0] a;
  input [3:0] b;
  wire [3:0] b;
  input ci;
  wire ci;
  output [3:0] q;
  wire [3:0] q;
  output c;
  wire c;
  output o;
  wire o;
  input ex;
  wire ex;
  wire [3:0] qs;
  wire [1:0] qe;
  wire [3:0] _net_6;
  wire [3:0] _net_7;
  wire _net_8;
  wire _net_9;
  wire _net_10;
  wire _net_11;
  wire [3:0] _net_12;

   assign  qs = 
// synthesis translate_off
// synopsys translate_off
(ex)? 
// synthesis translate_on
// synopsys translate_on
((ex)?((({1'b0,(_net_6[2:0])})+({1'b0,(_net_7[2:0])}))+({3'b000,_net_8})):4'b0)
// synthesis translate_off
// synopsys translate_off
:4'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  qe = 
// synthesis translate_off
// synopsys translate_off
(ex)? 
// synthesis translate_on
// synopsys translate_on
((ex)?((({1'b0,_net_9})+({1'b0,_net_10}))+({1'b0,_net_11})):2'b0)
// synthesis translate_off
// synopsys translate_off
:2'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_6 = a;
   assign  _net_7 = b;
   assign  _net_8 = ci;
   assign  _net_9 = (a[3]);
   assign  _net_10 = (b[3]);
   assign  _net_11 = (qs[3]);
   assign  _net_12 = qs;
   assign  q = 
// synthesis translate_off
// synopsys translate_off
(ex)? 
// synthesis translate_on
// synopsys translate_on
((ex)?({(qe[0]),(_net_12[2:0])}):4'b0)
// synthesis translate_off
// synopsys translate_off
:4'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  c = 
// synthesis translate_off
// synopsys translate_off
(ex)? 
// synthesis translate_on
// synopsys translate_on
((ex)?(qe[1]):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  o = 
// synthesis translate_off
// synopsys translate_off
(ex)? 
// synthesis translate_on
// synopsys translate_on
((ex)?((qe[1])^(qs[3])):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
endmodule

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Fri Apr 17 19:32:46 2026
 Licensed to :EVALUATION USER*/

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Fri Apr 17 19:32:46 2026
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

	tut8 tut8_instance(
		.p_reset(p_reset),
		.m_clock(m_clock)
	);

	initial forever #(tCYC/2) m_clock = ~m_clock;

	initial begin
		$dumpfile("tut8.vcd");
		$dumpvars(0,tut8_instance);
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
