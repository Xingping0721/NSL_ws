
`timescale	1ns / 1ns
`default_nettype none


/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Fri Apr 24 16:07:55 2026
 Licensed to :EVALUATION USER*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module BarrelShift ( p_reset , m_clock , a , sa , f , exe );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  input [31:0] a;
  wire [31:0] a;
  input [7:0] sa;
  wire [7:0] sa;
  output [31:0] f;
  wire [31:0] f;
  input exe;
  wire exe;
  wire [31:0] t0;
  wire [31:0] t1;
  wire [31:0] t2;
  wire [31:0] t3;
  wire [31:0] t4;
  wire _net_0;
  wire [63:0] _net_1;
  wire _net_2;
  wire [63:0] _net_3;
  wire _net_4;
  wire [63:0] _net_5;
  wire _net_6;
  wire [63:0] _net_7;
  wire _net_8;
  wire [63:0] _net_9;
  wire _net_10;


// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((exe&(~_net_0))&(exe&_net_0)))
 begin $display("Warning: assign collision(BarrelShift:t0) at %d",$time);
if ((exe&(~_net_0))) $display("assert ((exe&(~_net_0))) line 88 at %d\n",$time);
if ((exe&_net_0)) $display("assert ((exe&_net_0)) line 87 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  t0 = 
// synthesis translate_off
// synopsys translate_off
(((exe&(~_net_0))&(exe&_net_0)))? 32'bx :(((exe&(~_net_0))|(exe&_net_0)))? 
// synthesis translate_on
// synopsys translate_on
(((exe&(~_net_0)))?a:32'b0)|
    (((exe&_net_0))?(_net_1[32:1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((exe&(~_net_2))&(exe&_net_2)))
 begin $display("Warning: assign collision(BarrelShift:t1) at %d",$time);
if ((exe&(~_net_2))) $display("assert ((exe&(~_net_2))) line 90 at %d\n",$time);
if ((exe&_net_2)) $display("assert ((exe&_net_2)) line 89 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  t1 = 
// synthesis translate_off
// synopsys translate_off
(((exe&(~_net_2))&(exe&_net_2)))? 32'bx :(((exe&(~_net_2))|(exe&_net_2)))? 
// synthesis translate_on
// synopsys translate_on
(((exe&(~_net_2)))?t0:32'b0)|
    (((exe&_net_2))?(_net_3[33:2]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((exe&(~_net_4))&(exe&_net_4)))
 begin $display("Warning: assign collision(BarrelShift:t2) at %d",$time);
if ((exe&(~_net_4))) $display("assert ((exe&(~_net_4))) line 92 at %d\n",$time);
if ((exe&_net_4)) $display("assert ((exe&_net_4)) line 91 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  t2 = 
// synthesis translate_off
// synopsys translate_off
(((exe&(~_net_4))&(exe&_net_4)))? 32'bx :(((exe&(~_net_4))|(exe&_net_4)))? 
// synthesis translate_on
// synopsys translate_on
(((exe&(~_net_4)))?t1:32'b0)|
    (((exe&_net_4))?(_net_5[35:4]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((exe&(~_net_6))&(exe&_net_6)))
 begin $display("Warning: assign collision(BarrelShift:t3) at %d",$time);
if ((exe&(~_net_6))) $display("assert ((exe&(~_net_6))) line 94 at %d\n",$time);
if ((exe&_net_6)) $display("assert ((exe&_net_6)) line 93 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  t3 = 
// synthesis translate_off
// synopsys translate_off
(((exe&(~_net_6))&(exe&_net_6)))? 32'bx :(((exe&(~_net_6))|(exe&_net_6)))? 
// synthesis translate_on
// synopsys translate_on
(((exe&(~_net_6)))?t2:32'b0)|
    (((exe&_net_6))?(_net_7[39:8]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((exe&(~_net_8))&(exe&_net_8)))
 begin $display("Warning: assign collision(BarrelShift:t4) at %d",$time);
if ((exe&(~_net_8))) $display("assert ((exe&(~_net_8))) line 96 at %d\n",$time);
if ((exe&_net_8)) $display("assert ((exe&_net_8)) line 95 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  t4 = 
// synthesis translate_off
// synopsys translate_off
(((exe&(~_net_8))&(exe&_net_8)))? 32'bx :(((exe&(~_net_8))|(exe&_net_8)))? 
// synthesis translate_on
// synopsys translate_on
(((exe&(~_net_8)))?t3:32'b0)|
    (((exe&_net_8))?(_net_9[47:16]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_0 = 
// synthesis translate_off
// synopsys translate_off
(exe)? 
// synthesis translate_on
// synopsys translate_on
((exe)?(sa[0]):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_1 = ({32'b00000000000000000000000000000000,a});
   assign  _net_2 = 
// synthesis translate_off
// synopsys translate_off
(exe)? 
// synthesis translate_on
// synopsys translate_on
((exe)?(sa[1]):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_3 = ({32'b00000000000000000000000000000000,t0});
   assign  _net_4 = 
// synthesis translate_off
// synopsys translate_off
(exe)? 
// synthesis translate_on
// synopsys translate_on
((exe)?(sa[2]):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_5 = ({32'b00000000000000000000000000000000,t1});
   assign  _net_6 = 
// synthesis translate_off
// synopsys translate_off
(exe)? 
// synthesis translate_on
// synopsys translate_on
((exe)?(sa[3]):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_7 = ({32'b00000000000000000000000000000000,t2});
   assign  _net_8 = 
// synthesis translate_off
// synopsys translate_off
(exe)? 
// synthesis translate_on
// synopsys translate_on
((exe)?(sa[4]):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_9 = ({32'b00000000000000000000000000000000,t3});
   assign  _net_10 = 
// synthesis translate_off
// synopsys translate_off
(exe)? 
// synthesis translate_on
// synopsys translate_on
((exe)?((sa[7:5])==3'b000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((exe&(~_net_10))&(exe&_net_10)))
 begin $display("Warning: assign collision(BarrelShift:f) at %d",$time);
if ((exe&(~_net_10))) $display("assert ((exe&(~_net_10))) line 98 at %d\n",$time);
if ((exe&_net_10)) $display("assert ((exe&_net_10)) line 97 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  f = 
// synthesis translate_off
// synopsys translate_off
(((exe&(~_net_10))&(exe&_net_10)))? 32'bx :(((exe&(~_net_10))|(exe&_net_10)))? 
// synthesis translate_on
// synopsys translate_on
(((exe&(~_net_10)))?32'b00000000000000000000000000000000:32'b0)|
    (((exe&_net_10))?t4:32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
endmodule

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Fri Apr 24 16:07:55 2026
 Licensed to :EVALUATION USER*/

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Fri Apr 24 16:07:55 2026
 Licensed to :EVALUATION USER*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module LeadingZeroShift ( p_reset , m_clock , a , shamt , f , exe );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  input [31:0] a;
  wire [31:0] a;
  output [7:0] shamt;
  wire [7:0] shamt;
  output [31:0] f;
  wire [31:0] f;
  input exe;
  wire exe;
  wire [31:0] t0;
  wire [31:0] t1;
  wire [31:0] t2;
  wire [31:0] t3;
  wire [31:0] t4;
  wire a0;
  wire a1;
  wire a2;
  wire a3;
  wire a4;
  wire _net_11;
  wire [63:0] _net_12;
  wire _net_13;
  wire [63:0] _net_14;
  wire _net_15;
  wire [63:0] _net_16;
  wire _net_17;
  wire [63:0] _net_18;
  wire _net_19;
  wire [63:0] _net_20;
  wire [4:0] _net_21;


// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((exe&(~_net_11))&(exe&_net_11)))
 begin $display("Warning: assign collision(LeadingZeroShift:t0) at %d",$time);
if ((exe&(~_net_11))) $display("assert ((exe&(~_net_11))) line 114 at %d\n",$time);
if ((exe&_net_11)) $display("assert ((exe&_net_11)) line 113 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  t0 = 
// synthesis translate_off
// synopsys translate_off
(((exe&(~_net_11))&(exe&_net_11)))? 32'bx :(((exe&(~_net_11))|(exe&_net_11)))? 
// synthesis translate_on
// synopsys translate_on
(((exe&(~_net_11)))?a:32'b0)|
    (((exe&_net_11))?(_net_12[47:16]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((exe&(~_net_13))&(exe&_net_13)))
 begin $display("Warning: assign collision(LeadingZeroShift:t1) at %d",$time);
if ((exe&(~_net_13))) $display("assert ((exe&(~_net_13))) line 117 at %d\n",$time);
if ((exe&_net_13)) $display("assert ((exe&_net_13)) line 115 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  t1 = 
// synthesis translate_off
// synopsys translate_off
(((exe&(~_net_13))&(exe&_net_13)))? 32'bx :(((exe&(~_net_13))|(exe&_net_13)))? 
// synthesis translate_on
// synopsys translate_on
(((exe&(~_net_13)))?t0:32'b0)|
    (((exe&_net_13))?(_net_14[55:24]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((exe&(~_net_15))&(exe&_net_15)))
 begin $display("Warning: assign collision(LeadingZeroShift:t2) at %d",$time);
if ((exe&(~_net_15))) $display("assert ((exe&(~_net_15))) line 120 at %d\n",$time);
if ((exe&_net_15)) $display("assert ((exe&_net_15)) line 118 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  t2 = 
// synthesis translate_off
// synopsys translate_off
(((exe&(~_net_15))&(exe&_net_15)))? 32'bx :(((exe&(~_net_15))|(exe&_net_15)))? 
// synthesis translate_on
// synopsys translate_on
(((exe&(~_net_15)))?t1:32'b0)|
    (((exe&_net_15))?(_net_16[59:28]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((exe&(~_net_17))&(exe&_net_17)))
 begin $display("Warning: assign collision(LeadingZeroShift:t3) at %d",$time);
if ((exe&(~_net_17))) $display("assert ((exe&(~_net_17))) line 122 at %d\n",$time);
if ((exe&_net_17)) $display("assert ((exe&_net_17)) line 121 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  t3 = 
// synthesis translate_off
// synopsys translate_off
(((exe&(~_net_17))&(exe&_net_17)))? 32'bx :(((exe&(~_net_17))|(exe&_net_17)))? 
// synthesis translate_on
// synopsys translate_on
(((exe&(~_net_17)))?t2:32'b0)|
    (((exe&_net_17))?(_net_18[61:30]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((exe&(~_net_19))&(exe&_net_19)))
 begin $display("Warning: assign collision(LeadingZeroShift:t4) at %d",$time);
if ((exe&(~_net_19))) $display("assert ((exe&(~_net_19))) line 124 at %d\n",$time);
if ((exe&_net_19)) $display("assert ((exe&_net_19)) line 123 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  t4 = 
// synthesis translate_off
// synopsys translate_off
(((exe&(~_net_19))&(exe&_net_19)))? 32'bx :(((exe&(~_net_19))|(exe&_net_19)))? 
// synthesis translate_on
// synopsys translate_on
(((exe&(~_net_19)))?t3:32'b0)|
    (((exe&_net_19))?(_net_20[62:31]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((exe&(~_net_19))&(exe&_net_19)))
 begin $display("Warning: assign collision(LeadingZeroShift:a0) at %d",$time);
if ((exe&(~_net_19))) $display("assert ((exe&(~_net_19))) line 124 at %d\n",$time);
if ((exe&_net_19)) $display("assert ((exe&_net_19)) line 123 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  a0 = 
// synthesis translate_off
// synopsys translate_off
(((exe&(~_net_19))&(exe&_net_19)))? 1'bx :(((exe&(~_net_19))|(exe&_net_19)))? 
// synthesis translate_on
// synopsys translate_on
(((exe&(~_net_19)))?1'b0:1'b0)|
    (((exe&_net_19))?1'b1:1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((exe&(~_net_17))&(exe&_net_17)))
 begin $display("Warning: assign collision(LeadingZeroShift:a1) at %d",$time);
if ((exe&(~_net_17))) $display("assert ((exe&(~_net_17))) line 122 at %d\n",$time);
if ((exe&_net_17)) $display("assert ((exe&_net_17)) line 121 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  a1 = 
// synthesis translate_off
// synopsys translate_off
(((exe&(~_net_17))&(exe&_net_17)))? 1'bx :(((exe&(~_net_17))|(exe&_net_17)))? 
// synthesis translate_on
// synopsys translate_on
(((exe&(~_net_17)))?1'b0:1'b0)|
    (((exe&_net_17))?1'b1:1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((exe&(~_net_15))&(exe&_net_15)))
 begin $display("Warning: assign collision(LeadingZeroShift:a2) at %d",$time);
if ((exe&(~_net_15))) $display("assert ((exe&(~_net_15))) line 120 at %d\n",$time);
if ((exe&_net_15)) $display("assert ((exe&_net_15)) line 118 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  a2 = 
// synthesis translate_off
// synopsys translate_off
(((exe&(~_net_15))&(exe&_net_15)))? 1'bx :(((exe&(~_net_15))|(exe&_net_15)))? 
// synthesis translate_on
// synopsys translate_on
(((exe&(~_net_15)))?1'b0:1'b0)|
    (((exe&_net_15))?1'b1:1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((exe&(~_net_13))&(exe&_net_13)))
 begin $display("Warning: assign collision(LeadingZeroShift:a3) at %d",$time);
if ((exe&(~_net_13))) $display("assert ((exe&(~_net_13))) line 117 at %d\n",$time);
if ((exe&_net_13)) $display("assert ((exe&_net_13)) line 115 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  a3 = 
// synthesis translate_off
// synopsys translate_off
(((exe&(~_net_13))&(exe&_net_13)))? 1'bx :(((exe&(~_net_13))|(exe&_net_13)))? 
// synthesis translate_on
// synopsys translate_on
(((exe&(~_net_13)))?1'b0:1'b0)|
    (((exe&_net_13))?1'b1:1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((exe&(~_net_11))&(exe&_net_11)))
 begin $display("Warning: assign collision(LeadingZeroShift:a4) at %d",$time);
if ((exe&(~_net_11))) $display("assert ((exe&(~_net_11))) line 114 at %d\n",$time);
if ((exe&_net_11)) $display("assert ((exe&_net_11)) line 113 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  a4 = 
// synthesis translate_off
// synopsys translate_off
(((exe&(~_net_11))&(exe&_net_11)))? 1'bx :(((exe&(~_net_11))|(exe&_net_11)))? 
// synthesis translate_on
// synopsys translate_on
(((exe&(~_net_11)))?1'b0:1'b0)|
    (((exe&_net_11))?1'b1:1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_11 = 
// synthesis translate_off
// synopsys translate_off
(exe)? 
// synthesis translate_on
// synopsys translate_on
((exe)?((a[31:16])==16'b0000000000000000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_12 = ({a,32'b00000000000000000000000000000000});
   assign  _net_13 = 
// synthesis translate_off
// synopsys translate_off
(exe)? 
// synthesis translate_on
// synopsys translate_on
((exe)?((t0[31:24])==8'b00000000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_14 = ({t0,32'b00000000000000000000000000000000});
   assign  _net_15 = 
// synthesis translate_off
// synopsys translate_off
(exe)? 
// synthesis translate_on
// synopsys translate_on
((exe)?((t1[31:28])==4'b0000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_16 = ({t1,32'b00000000000000000000000000000000});
   assign  _net_17 = 
// synthesis translate_off
// synopsys translate_off
(exe)? 
// synthesis translate_on
// synopsys translate_on
((exe)?((t2[31:30])==2'b00):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_18 = ({t2,32'b00000000000000000000000000000000});
   assign  _net_19 = 
// synthesis translate_off
// synopsys translate_off
(exe)? 
// synthesis translate_on
// synopsys translate_on
((exe)?((t3[31])==1'b0):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_20 = ({t3,32'b00000000000000000000000000000000});
   assign  _net_21 = ({a4,a3,a2,a1,a0});
   assign  shamt = 
// synthesis translate_off
// synopsys translate_off
(exe)? 
// synthesis translate_on
// synopsys translate_on
((exe)?({3'b000,_net_21}):8'b0)
// synthesis translate_off
// synopsys translate_off
:8'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  f = 
// synthesis translate_off
// synopsys translate_off
(exe)? 
// synthesis translate_on
// synopsys translate_on
((exe)?t4:32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
endmodule

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Fri Apr 24 16:07:55 2026
 Licensed to :EVALUATION USER*/

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Fri Apr 24 16:07:55 2026
 Licensed to :EVALUATION USER*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module Ieee754SpAdd ( p_reset , m_clock , a , b , result , exe , done );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  input [31:0] a;
  wire [31:0] a;
  input [31:0] b;
  wire [31:0] b;
  output [31:0] result;
  wire [31:0] result;
  input exe;
  wire exe;
  output done;
  wire done;
  reg [7:0] Aexdf;
  reg [22:0] _y_Mantissa;
  reg [7:0] _y_Exponent;
  reg _y_Sign;
  reg [22:0] _x_Mantissa;
  reg [7:0] _x_Exponent;
  reg _x_Sign;
  reg stageA;
  reg [31:0] Bm1;
  reg [31:0] Bm2;
  reg Bs1;
  reg Bs2;
  reg [7:0] Bexp;
  reg stageB;
  wire s1;
  wire s2;
  wire [31:0] x1;
  wire [31:0] x2;
  wire [31:0] r1;
  wire madd;
  reg [31:0] Cm;
  reg Cs;
  reg [7:0] Cexp;
  reg stageC;
  reg [22:0] _z_Mantissa;
  reg [7:0] _z_Exponent;
  reg _z_Sign;
  reg stageD;
  wire [8:0] wdiff;
  wire [7:0] next_Aexdf;
  wire [31:0] next_x;
  wire [31:0] next_y;
  wire [2:0] xmsb;
  wire [2:0] ymsb;
  wire [31:0] shifted_y;
  wire [31:0] m3;
  wire [31:0] next_Cm;
  wire [31:0] next_z;
  wire [31:0] norm_mantissa;
  wire [7:0] shift_amount;
  wire [31:0] _bshft_a;
  wire [7:0] _bshft_sa;
  wire [31:0] _bshft_f;
  wire _bshft_exe;
  wire _bshft_p_reset;
  wire _bshft_m_clock;
  wire [31:0] _lzshft_a;
  wire [7:0] _lzshft_shamt;
  wire [31:0] _lzshft_f;
  wire _lzshft_exe;
  wire _lzshft_p_reset;
  wire _lzshft_m_clock;
  wire _proc_stageA_set;
  wire _proc_stageA_reset;
  wire _proc_stageB_set;
  wire _proc_stageB_reset;
  wire _proc_stageC_set;
  wire _proc_stageC_reset;
  wire _proc_stageD_set;
  wire _proc_stageD_reset;
  wire [7:0] _net_22;
  wire [7:0] _net_23;
  wire [7:0] _net_24;
  wire [7:0] _net_25;
  wire _net_28;
  wire [7:0] _net_29;
  wire [31:0] _net_32;
  wire [31:0] _net_33;
  wire _net_34;
  wire _net_35;
  wire _net_38;
  wire _net_39;
  wire _net_40;
  wire [31:0] _net_41;
  wire _net_44;
  wire _net_46;
  wire [7:0] _net_48;
  wire [31:0] _net_50;
LeadingZeroShift lzshft (.m_clock(m_clock), .p_reset( p_reset), .exe(_lzshft_exe), .f(_lzshft_f), .shamt(_lzshft_shamt), .a(_lzshft_a));
BarrelShift bshft (.m_clock(m_clock), .p_reset( p_reset), .exe(_bshft_exe), .f(_bshft_f), .sa(_bshft_sa), .a(_bshft_a));

   assign  s1 = 
// synthesis translate_off
// synopsys translate_off
(stageB)? 
// synthesis translate_on
// synopsys translate_on
((stageB)?Bs1:1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  s2 = 
// synthesis translate_off
// synopsys translate_off
(stageB)? 
// synthesis translate_on
// synopsys translate_on
((stageB)?Bs2:1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  x1 = 
// synthesis translate_off
// synopsys translate_off
(stageB)? 
// synthesis translate_on
// synopsys translate_on
((stageB)?Bm1:32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  x2 = 
// synthesis translate_off
// synopsys translate_off
(stageB)? 
// synthesis translate_on
// synopsys translate_on
((stageB)?Bm2:32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  r1 = 
// synthesis translate_off
// synopsys translate_off
(madd)? 
// synthesis translate_on
// synopsys translate_on
((madd)?((((({({s1,s1,s1,s1,s1,s1,s1,s1,s1,s1,s1,s1,s1,s1,s1,s1,s1,s1,s1,s1,s1,s1,s1,s1,s1,s1,s1,s1,s1,s1,s1}),s1})^x1)+({31'b0000000000000000000000000000000,_net_38}))+(({({s2,s2,s2,s2,s2,s2,s2,s2,s2,s2,s2,s2,s2,s2,s2,s2,s2,s2,s2,s2,s2,s2,s2,s2,s2,s2,s2,s2,s2,s2,s2}),s2})^x2))+({31'b0000000000000000000000000000000,_net_39})):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge madd)
  begin
#1 if (madd===1'bx)
 begin
$display("Warning: control hazard(Ieee754SpAdd:madd) at %d",$time);
 end
#1 if (((stageB)===1'bx) || (1'b1)===1'bx) $display("hazard (stageB || 1'b1) line 230 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  madd = stageB;
   assign  wdiff = 
// synthesis translate_off
// synopsys translate_off
(exe)? 
// synthesis translate_on
// synopsys translate_on
((exe)?(({1'b0,_net_23})-({1'b0,_net_25})):9'b0)
// synthesis translate_off
// synopsys translate_off
:9'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((exe&(~_net_28))&(exe&_net_28)))
 begin $display("Warning: assign collision(Ieee754SpAdd:next_Aexdf) at %d",$time);
if ((exe&(~_net_28))) $display("assert ((exe&(~_net_28))) line 185 at %d\n",$time);
if ((exe&_net_28)) $display("assert ((exe&_net_28)) line 179 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  next_Aexdf = 
// synthesis translate_off
// synopsys translate_off
(((exe&(~_net_28))&(exe&_net_28)))? 8'bx :(((exe&(~_net_28))|(exe&_net_28)))? 
// synthesis translate_on
// synopsys translate_on
(((exe&(~_net_28)))?(wdiff[7:0]):8'b0)|
    (((exe&_net_28))?_net_29:8'b0)
// synthesis translate_off
// synopsys translate_off
:8'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((exe&(~_net_28))&(exe&_net_28)))
 begin $display("Warning: assign collision(Ieee754SpAdd:next_x) at %d",$time);
if ((exe&(~_net_28))) $display("assert ((exe&(~_net_28))) line 186 at %d\n",$time);
if ((exe&_net_28)) $display("assert ((exe&_net_28)) line 180 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  next_x = 
// synthesis translate_off
// synopsys translate_off
(((exe&(~_net_28))&(exe&_net_28)))? 32'bx :(((exe&(~_net_28))|(exe&_net_28)))? 
// synthesis translate_on
// synopsys translate_on
(((exe&(~_net_28)))?a:32'b0)|
    (((exe&_net_28))?b:32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((exe&(~_net_28))&(exe&_net_28)))
 begin $display("Warning: assign collision(Ieee754SpAdd:next_y) at %d",$time);
if ((exe&(~_net_28))) $display("assert ((exe&(~_net_28))) line 187 at %d\n",$time);
if ((exe&_net_28)) $display("assert ((exe&_net_28)) line 181 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  next_y = 
// synthesis translate_off
// synopsys translate_off
(((exe&(~_net_28))&(exe&_net_28)))? 32'bx :(((exe&(~_net_28))|(exe&_net_28)))? 
// synthesis translate_on
// synopsys translate_on
(((exe&(~_net_28)))?b:32'b0)|
    (((exe&_net_28))?a:32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((stageA&(~_net_34))&(stageA&_net_34)))
 begin $display("Warning: assign collision(Ieee754SpAdd:xmsb) at %d",$time);
if ((stageA&(~_net_34))) $display("assert ((stageA&(~_net_34))) line 202 at %d\n",$time);
if ((stageA&_net_34)) $display("assert ((stageA&_net_34)) line 201 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  xmsb = 
// synthesis translate_off
// synopsys translate_off
(((stageA&(~_net_34))&(stageA&_net_34)))? 3'bx :(((stageA&(~_net_34))|(stageA&_net_34)))? 
// synthesis translate_on
// synopsys translate_on
(((stageA&(~_net_34)))?3'b001:3'b0)|
    (((stageA&_net_34))?3'b000:3'b0)
// synthesis translate_off
// synopsys translate_off
:3'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((stageA&(~_net_35))&(stageA&_net_35)))
 begin $display("Warning: assign collision(Ieee754SpAdd:ymsb) at %d",$time);
if ((stageA&(~_net_35))) $display("assert ((stageA&(~_net_35))) line 205 at %d\n",$time);
if ((stageA&_net_35)) $display("assert ((stageA&_net_35)) line 204 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  ymsb = 
// synthesis translate_off
// synopsys translate_off
(((stageA&(~_net_35))&(stageA&_net_35)))? 3'bx :(((stageA&(~_net_35))|(stageA&_net_35)))? 
// synthesis translate_on
// synopsys translate_on
(((stageA&(~_net_35)))?3'b001:3'b0)|
    (((stageA&_net_35))?3'b000:3'b0)
// synthesis translate_off
// synopsys translate_off
:3'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  shifted_y = 
// synthesis translate_off
// synopsys translate_off
(stageA)? 
// synthesis translate_on
// synopsys translate_on
((stageA)?_bshft_f:32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  m3 = 
// synthesis translate_off
// synopsys translate_off
(stageB)? 
// synthesis translate_on
// synopsys translate_on
((stageB)?r1:32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((stageB&(~_net_40))&(stageB&_net_40)))
 begin $display("Warning: assign collision(Ieee754SpAdd:next_Cm) at %d",$time);
if ((stageB&(~_net_40))) $display("assert ((stageB&(~_net_40))) line 236 at %d\n",$time);
if ((stageB&_net_40)) $display("assert ((stageB&_net_40)) line 233 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  next_Cm = 
// synthesis translate_off
// synopsys translate_off
(((stageB&(~_net_40))&(stageB&_net_40)))? 32'bx :(((stageB&(~_net_40))|(stageB&_net_40)))? 
// synthesis translate_on
// synopsys translate_on
(((stageB&(~_net_40)))?m3:32'b0)|
    (((stageB&_net_40))?_net_41:32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((((stageC&(~_net_44))&(~_net_46))&((stageC&(~_net_44))&_net_46))|((((stageC&(~_net_44))&(~_net_46))|((stageC&(~_net_44))&_net_46))&(stageC&_net_44))))
 begin $display("Warning: assign collision(Ieee754SpAdd:next_z) at %d",$time);
if (((stageC&(~_net_44))&(~_net_46))) $display("assert (((stageC&(~_net_44))&(~_net_46))) line 262 at %d\n",$time);
if (((stageC&(~_net_44))&_net_46)) $display("assert (((stageC&(~_net_44))&_net_46)) line 256 at %d\n",$time);
if ((stageC&_net_44)) $display("assert ((stageC&_net_44)) line 252 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  next_z = 
// synthesis translate_off
// synopsys translate_off
(((((stageC&(~_net_44))&(~_net_46))&((stageC&(~_net_44))&_net_46))|((((stageC&(~_net_44))&(~_net_46))|((stageC&(~_net_44))&_net_46))&(stageC&_net_44))))? 32'bx :(((((stageC&(~_net_44))&(~_net_46))|((stageC&(~_net_44))&_net_46))|(stageC&_net_44)))? 
// synthesis translate_on
// synopsys translate_on
((((stageC&(~_net_44))&(~_net_46)))?({Cs,_net_48,(norm_mantissa[30:8])}):32'b0)|
    ((((stageC&(~_net_44))&_net_46))?({Cs,Cexp,(Cm[28:6])}):32'b0)|
    (((stageC&_net_44))?32'b00000000000000000000000000000000:32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  norm_mantissa = 
// synthesis translate_off
// synopsys translate_off
(((stageC&(~_net_44))&(~_net_46)))? 
// synthesis translate_on
// synopsys translate_on
((((stageC&(~_net_44))&(~_net_46)))?_lzshft_f:32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  shift_amount = 
// synthesis translate_off
// synopsys translate_off
(((stageC&(~_net_44))&(~_net_46)))? 
// synthesis translate_on
// synopsys translate_on
((((stageC&(~_net_44))&(~_net_46)))?_lzshft_shamt:8'b0)
// synthesis translate_off
// synopsys translate_off
:8'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _bshft_a = 
// synthesis translate_off
// synopsys translate_off
(stageA)? 
// synthesis translate_on
// synopsys translate_on
((stageA)?({ymsb,_y_Mantissa,6'b000000}):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _bshft_sa = 
// synthesis translate_off
// synopsys translate_off
(stageA)? 
// synthesis translate_on
// synopsys translate_on
((stageA)?Aexdf:8'b0)
// synthesis translate_off
// synopsys translate_off
:8'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge _bshft_exe)
  begin
#1 if (_bshft_exe===1'bx)
 begin
$display("Warning: control hazard(Ieee754SpAdd:_bshft_exe) at %d",$time);
 end
#1 if (((stageA)===1'bx) || (1'b1)===1'bx) $display("hazard (stageA || 1'b1) line 207 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _bshft_exe = stageA;
   assign  _bshft_p_reset = p_reset;
   assign  _bshft_m_clock = m_clock;
   assign  _lzshft_a = 
// synthesis translate_off
// synopsys translate_off
(((stageC&(~_net_44))&(~_net_46)))? 
// synthesis translate_on
// synopsys translate_on
((((stageC&(~_net_44))&(~_net_46)))?({(Cm[30:0]),1'b0}):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge _lzshft_exe)
  begin
#1 if (_lzshft_exe===1'bx)
 begin
$display("Warning: control hazard(Ieee754SpAdd:_lzshft_exe) at %d",$time);
 end
#1 if (((((stageC&(~_net_44))&(~_net_46)))===1'bx) || (1'b1)===1'bx) $display("hazard (((stageC&(~_net_44))&(~_net_46)) || 1'b1) line 260 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _lzshft_exe = ((stageC&(~_net_44))&(~_net_46));
   assign  _lzshft_p_reset = p_reset;
   assign  _lzshft_m_clock = m_clock;

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_stageA_set)
  begin
#1 if (_proc_stageA_set===1'bx)
 begin
$display("Warning: control hazard(Ieee754SpAdd:_proc_stageA_set) at %d",$time);
 end
#1 if (((exe)===1'bx) || (1'b1)===1'bx) $display("hazard (exe || 1'b1) line 191 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_stageA_set = exe;

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_stageA_reset)
  begin
#1 if (_proc_stageA_reset===1'bx)
 begin
$display("Warning: control hazard(Ieee754SpAdd:_proc_stageA_reset) at %d",$time);
 end
#1 if (((stageA)===1'bx) || (1'b1)===1'bx) $display("hazard (stageA || 1'b1) line 216 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_stageA_reset = stageA;

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_stageB_set)
  begin
#1 if (_proc_stageB_set===1'bx)
 begin
$display("Warning: control hazard(Ieee754SpAdd:_proc_stageB_set) at %d",$time);
 end
#1 if (((stageA)===1'bx) || (1'b1)===1'bx) $display("hazard (stageA || 1'b1) line 216 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_stageB_set = stageA;

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_stageB_reset)
  begin
#1 if (_proc_stageB_reset===1'bx)
 begin
$display("Warning: control hazard(Ieee754SpAdd:_proc_stageB_reset) at %d",$time);
 end
#1 if (((stageB)===1'bx) || (1'b1)===1'bx) $display("hazard (stageB || 1'b1) line 240 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_stageB_reset = stageB;

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_stageC_set)
  begin
#1 if (_proc_stageC_set===1'bx)
 begin
$display("Warning: control hazard(Ieee754SpAdd:_proc_stageC_set) at %d",$time);
 end
#1 if (((stageB)===1'bx) || (1'b1)===1'bx) $display("hazard (stageB || 1'b1) line 240 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_stageC_set = stageB;

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_stageC_reset)
  begin
#1 if (_proc_stageC_reset===1'bx)
 begin
$display("Warning: control hazard(Ieee754SpAdd:_proc_stageC_reset) at %d",$time);
 end
#1 if (((stageC)===1'bx) || (1'b1)===1'bx) $display("hazard (stageC || 1'b1) line 266 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_stageC_reset = stageC;

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_stageD_set)
  begin
#1 if (_proc_stageD_set===1'bx)
 begin
$display("Warning: control hazard(Ieee754SpAdd:_proc_stageD_set) at %d",$time);
 end
#1 if (((stageC)===1'bx) || (1'b1)===1'bx) $display("hazard (stageC || 1'b1) line 266 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_stageD_set = stageC;

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_stageD_reset)
  begin
#1 if (_proc_stageD_reset===1'bx)
 begin
$display("Warning: control hazard(Ieee754SpAdd:_proc_stageD_reset) at %d",$time);
 end
#1 if (((stageD)===1'bx) || (1'b1)===1'bx) $display("hazard (stageD || 1'b1) line 275 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_stageD_reset = stageD;
   assign  _net_22 = 
// synthesis translate_off
// synopsys translate_off
(exe)? 
// synthesis translate_on
// synopsys translate_on
((exe)?(a[30:23]):8'b0)
// synthesis translate_off
// synopsys translate_off
:8'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_23 = _net_22;
   assign  _net_24 = 
// synthesis translate_off
// synopsys translate_off
(exe)? 
// synthesis translate_on
// synopsys translate_on
((exe)?(b[30:23]):8'b0)
// synthesis translate_off
// synopsys translate_off
:8'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_25 = _net_24;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
    if(exe)
    begin
    $display("[exe]Input a: %x, b: %x",a,b);
    end
  end

// synthesis translate_on
// synopsys translate_on

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
    if(exe)
    begin
    $display("[exe]Exp diff (a - b): %x",wdiff);
    end
  end

// synthesis translate_on
// synopsys translate_on
   assign  _net_28 = 
// synthesis translate_off
// synopsys translate_off
(exe)? 
// synthesis translate_on
// synopsys translate_on
((exe)?(wdiff[8]):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_29 = (8'b00000000-(wdiff[7:0]));

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
    if((exe&_net_28))
    begin
    $display("[exe]Swap: a < b. Shift amount: %d",next_Aexdf);
    end
  end

// synthesis translate_on
// synopsys translate_on

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
    if((exe&(~_net_28)))
    begin
    $display("[exe]No Swap: a >= b. Shift amount: %d",next_Aexdf);
    end
  end

// synthesis translate_on
// synopsys translate_on
   assign  _net_32 = 
// synthesis translate_off
// synopsys translate_off
(exe)? 
// synthesis translate_on
// synopsys translate_on
((exe)?next_y:32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_33 = 
// synthesis translate_off
// synopsys translate_off
(exe)? 
// synthesis translate_on
// synopsys translate_on
((exe)?next_x:32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_34 = 
// synthesis translate_off
// synopsys translate_off
(stageA)? 
// synthesis translate_on
// synopsys translate_on
((stageA)?(_x_Exponent==8'b00000000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_35 = 
// synthesis translate_off
// synopsys translate_off
(stageA)? 
// synthesis translate_on
// synopsys translate_on
((stageA)?(_y_Exponent==8'b00000000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
    if(stageA)
    begin
    $display("[stageA] x.Mantissa(base): %x",({xmsb,_x_Mantissa,6'b000000}));
    end
  end

// synthesis translate_on
// synopsys translate_on

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
    if(stageA)
    begin
    $display("[stageA] y.Mantissa(shifted): %x (shifted by %d)",shifted_y,Aexdf);
    end
  end

// synthesis translate_on
// synopsys translate_on
   assign  _net_38 = s1;
   assign  _net_39 = s2;
   assign  _net_40 = 
// synthesis translate_off
// synopsys translate_off
(stageB)? 
// synthesis translate_on
// synopsys translate_on
((stageB)?(m3[31]):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_41 = (32'b00000000000000000000000000000000-m3);

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
    if((stageB&_net_40))
    begin
    $display("[stageB] m3 is negative: %x -> %x",m3,next_Cm);
    end
  end

// synthesis translate_on
// synopsys translate_on

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
    if((stageB&(~_net_40)))
    begin
    $display("[stageB] m3 is positive: %x",m3);
    end
  end

// synthesis translate_on
// synopsys translate_on
   assign  _net_44 = 
// synthesis translate_off
// synopsys translate_off
(stageC)? 
// synthesis translate_on
// synopsys translate_on
((stageC)?(Cm==32'b00000000000000000000000000000000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
    if((stageC&_net_44))
    begin
    $display("[stageC] Cm is 0. Result will be 0.");
    end
  end

// synthesis translate_on
// synopsys translate_on
   assign  _net_46 = 
// synthesis translate_off
// synopsys translate_off
((stageC&(~_net_44)))? 
// synthesis translate_on
// synopsys translate_on
(((stageC&(~_net_44)))?(Cexp==8'b00000000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
    if(((stageC&(~_net_44))&_net_46))
    begin
    $display("[stageC] Cexp is 0. Un-normalized value.");
    end
  end

// synthesis translate_on
// synopsys translate_on
   assign  _net_48 = ((Cexp-shift_amount)+8'b00000001);

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
    if(((stageC&(~_net_44))&(~_net_46)))
    begin
    $display("[stageC] Leading zero shift: %d. Normalized Mantissa: %x",shift_amount,norm_mantissa);
    end
  end

// synthesis translate_on
// synopsys translate_on
   assign  _net_50 = 
// synthesis translate_off
// synopsys translate_off
(stageC)? 
// synthesis translate_on
// synopsys translate_on
((stageC)?next_z:32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
    if(stageD)
    begin
    $display("[stageD] Final Result z: %x",({_z_Sign,_z_Exponent,_z_Mantissa}));
    end
  end

// synthesis translate_on
// synopsys translate_on
   assign  result = 
// synthesis translate_off
// synopsys translate_off
(stageD)? 
// synthesis translate_on
// synopsys translate_on
((stageD)?({_z_Sign,_z_Exponent,_z_Mantissa}):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge done)
  begin
#1 if (done===1'bx)
 begin
$display("Warning: control hazard(Ieee754SpAdd:done) at %d",$time);
 end
#1 if (((stageD)===1'bx) || (1'b1)===1'bx) $display("hazard (stageD || 1'b1) line 274 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  done = stageD;
always @(posedge m_clock)
  begin
if (exe)
      Aexdf <= next_Aexdf;
end
always @(posedge m_clock)
  begin
if (exe)
      _y_Mantissa <= (_net_32[22:0]);
end
always @(posedge m_clock)
  begin
if (exe)
      _y_Exponent <= (_net_32[30:23]);
end
always @(posedge m_clock)
  begin
if (exe)
      _y_Sign <= (_net_32[31:31]);
end
always @(posedge m_clock)
  begin
if (exe)
      _x_Mantissa <= (_net_33[22:0]);
end
always @(posedge m_clock)
  begin
if (exe)
      _x_Exponent <= (_net_33[30:23]);
end
always @(posedge m_clock)
  begin
if (exe)
      _x_Sign <= (_net_33[31:31]);
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     stageA <= 1'b0;
else if ((_proc_stageA_set|_proc_stageA_reset))
      stageA <= _proc_stageA_set;
end
always @(posedge m_clock)
  begin
if (stageA)
      Bm1 <= ({xmsb,_x_Mantissa,6'b000000});
end
always @(posedge m_clock)
  begin
if (stageA)
      Bm2 <= shifted_y;
end
always @(posedge m_clock)
  begin
if (stageA)
      Bs1 <= _x_Sign;
end
always @(posedge m_clock)
  begin
if (stageA)
      Bs2 <= _y_Sign;
end
always @(posedge m_clock)
  begin
if (stageA)
      Bexp <= _x_Exponent;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     stageB <= 1'b0;
else if ((_proc_stageB_set|_proc_stageB_reset))
      stageB <= _proc_stageB_set;
end
always @(posedge m_clock)
  begin
if (stageB)
      Cm <= next_Cm;
end
always @(posedge m_clock)
  begin
if (stageB)
      Cs <= (m3[31]);
end
always @(posedge m_clock)
  begin
if (stageB)
      Cexp <= Bexp;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     stageC <= 1'b0;
else if ((_proc_stageC_set|_proc_stageC_reset))
      stageC <= _proc_stageC_set;
end
always @(posedge m_clock)
  begin
if (stageC)
      _z_Mantissa <= (_net_50[22:0]);
end
always @(posedge m_clock)
  begin
if (stageC)
      _z_Exponent <= (_net_50[30:23]);
end
always @(posedge m_clock)
  begin
if (stageC)
      _z_Sign <= (_net_50[31:31]);
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     stageD <= 1'b0;
else if ((_proc_stageD_set|_proc_stageD_reset))
      stageD <= _proc_stageD_set;
end
endmodule

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Fri Apr 24 16:07:55 2026
 Licensed to :EVALUATION USER*/

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Fri Apr 24 16:07:55 2026
 Licensed to :EVALUATION USER*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module sim ( p_reset , m_clock );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  reg [3:0] count;
  wire [31:0] _adder_a;
  wire [31:0] _adder_b;
  wire [31:0] _adder_result;
  wire _adder_exe;
  wire _adder_done;
  wire _adder_p_reset;
  wire _adder_m_clock;
  wire _net_52;
Ieee754SpAdd adder (.m_clock(m_clock), .p_reset( p_reset), .done(_adder_done), .exe(_adder_exe), .result(_adder_result), .b(_adder_b), .a(_adder_a));

   assign  _adder_a = 
// synthesis translate_off
// synopsys translate_off
(_net_52)? 
// synthesis translate_on
// synopsys translate_on
((_net_52)?32'b01000001111100000000000000000000:32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _adder_b = 
// synthesis translate_off
// synopsys translate_off
(_net_52)? 
// synthesis translate_on
// synopsys translate_on
((_net_52)?32'b01000101111110100000000000000000:32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge _adder_exe)
  begin
#1 if (_adder_exe===1'bx)
 begin
$display("Warning: control hazard(sim:_adder_exe) at %d",$time);
 end
#1 if (((_net_52)===1'bx) || (1'b1)===1'bx) $display("hazard (_net_52 || 1'b1) line 468 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _adder_exe = _net_52;
   assign  _adder_p_reset = p_reset;
   assign  _adder_m_clock = m_clock;
   assign  _net_52 = (count==4'b0000);

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
    if(_net_52)
    begin
    $display("--- Simulation Start ---");
    end
  end

// synthesis translate_on
// synopsys translate_on

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
    if(_net_52)
    begin
    $display("Calculate: 30.0 + 8000.0");
    end
  end

// synthesis translate_on
// synopsys translate_on

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
    if((_adder_done != 1'b0))
    begin
    $display("Done! Result: %x (Expected: 45faf000 = 8030.0)",_adder_result);
    end
  end

// synthesis translate_on
// synopsys translate_on

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
    if((_adder_done != 1'b0))
    begin
    $finish;
    end
  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     count <= 4'b0000;
else   count <= (count+4'b0001);
end
endmodule

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Fri Apr 24 16:07:55 2026
 Licensed to :EVALUATION USER*/

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Fri Apr 24 16:07:55 2026
 Licensed to :EVALUATION USER*/

//synthesis translate_off
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/
`timescale 1ns/1ns

module tb;
  parameter tCYC = 2; // クロック周期を2nsに設定

  reg p_reset;
  reg m_clock;
  reg [31:0] a;
  reg [31:0] b;
  wire [31:0] result;
  reg exe;
  wire done;

  // NSLで作った回路を呼び出す
  Ieee754SpAdd Ieee754SpAdd_instance(
    .p_reset(p_reset),
    .m_clock(m_clock),
    .a(a),
    .b(b),
    .result(result),
    .exe(exe),
    .done(done)
  );

  // 【1】クロックの生成（1nsごとに0と1を反転 ＝ 1周期2ns）
  initial begin
    m_clock = 0;
    forever #(tCYC/2) m_clock = ~m_clock;
  end

  // 【2】波形ファイル（VCD）の出力設定
  initial begin
    $dumpfile("Ieee754SpAdd.vcd");
    $dumpvars(0, Ieee754SpAdd_instance);
  end

  // 【3】絶対に20nsで終了させるタイマー（★今回のポイント）
  initial begin
    #20; // 20ns じっと待つ
    $display("--- 20ns reached. Finish Simulation ---");
    $finish; // ここで強制終了！
  end

  // 【4】テストのシナリオ（20ns以内にテキパキと指示を出す）
  initial begin
    // [0ns] 初期状態：リセットON
    p_reset = 1;
    exe = 0;
    a = 0;
    b = 0;

    // [2ns] リセット解除
    #2;
    p_reset = 0;

    // [4ns] データをセットして計算スタートボタン（exe）をON！
    #2;
    a = 32'h41F00000; // 30.0
    b = 32'h45FA0000; // 8000.0
    exe = 1;

    // [6ns] 計算スタートボタンをOFFに戻す
    #2;
    exe = 0;

    // doneランプが光るのを待つ
    wait (done == 1);
    #1; // フライング読み取り防止のための1ns待機
    
    // 計算が終わった瞬間の時間を一緒に表示する
    $display("=================================");
    $display(" Time        : %0t ns", $time);
    $display(" Done! Result: %x", result);
    $display(" Expected    : 45faf000 (8030.0)");
    $display("=================================");
    
    // この後、シナリオは終わりますが、全体は【3】のタイマーによって20nsでピタッと終了します。
  end

endmodule

//synthesis translate_on







/// test bench in this code is modified by gemini because the original test bench dont start the sircuit