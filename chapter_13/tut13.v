
`timescale	1ns / 1ns
`default_nettype none


/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Thu Apr 23 20:48:00 2026
 Licensed to :EVALUATION USER*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module glfsr ( p_reset , m_clock , seed , q , set_seed , next_rand );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  input [15:0] seed;
  wire [15:0] seed;
  output [15:0] q;
  wire [15:0] q;
  input set_seed;
  wire set_seed;
  input next_rand;
  wire next_rand;
  reg [15:0] r;
  wire [15:0] _net_0;
  wire _net_1;
  wire [15:0] _net_2;
  wire _net_3;
  wire [15:0] _net_4;
  wire _net_5;
  wire [15:0] _net_6;
  wire _net_7;
  wire [15:0] _net_8;
  wire _net_9;
  wire [15:0] _net_10;
  wire _net_11;
  wire [15:0] _net_12;
  wire _net_13;
  wire [15:0] _net_14;
  wire _net_15;
  wire [15:0] _net_16;
  wire _net_17;
  wire [15:0] _net_18;
  wire _net_19;
  wire [15:0] _net_20;
  wire _net_21;
  wire [15:0] _net_22;
  wire _net_23;
  wire [15:0] _net_24;
  wire _net_25;
  wire [15:0] _net_26;
  wire _net_27;
  wire [15:0] _net_28;
  wire _net_29;
  wire [15:0] _net_30;
  wire _net_31;
  wire [15:0] _net_32;

   assign  _net_0 = 16'b0000000000000000;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((~next_rand)&next_rand))
 begin $display("Warning: assign collision(glfsr:_net_1) at %d",$time);
if ((~next_rand)) $display("assert ((~next_rand)) line 15 at %d\n",$time);
if (next_rand) $display("assert (next_rand) line 15 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _net_1 = 
// synthesis translate_off
// synopsys translate_off
(((~next_rand)&next_rand))? 1'bx :(((~next_rand)|next_rand))? 
// synthesis translate_on
// synopsys translate_on
(((~next_rand))?(_net_0[0:0]):1'b0)|
    ((next_rand)?(r[1]):1'b0)
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
if ((next_rand&(~next_rand)))
 begin $display("Warning: assign collision(glfsr:_net_2) at %d",$time);
if (next_rand) $display("assert (next_rand) line 15 at %d\n",$time);
if ((~next_rand)) $display("assert ((~next_rand)) line 15 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _net_2 = 
// synthesis translate_off
// synopsys translate_off
((next_rand&(~next_rand)))? 16'bx :((next_rand|(~next_rand)))? 
// synthesis translate_on
// synopsys translate_on
((next_rand)?({(_net_0[15:1]),_net_1}):16'b0)|
    (((~next_rand))?_net_0:16'b0)
// synthesis translate_off
// synopsys translate_off
:16'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((~next_rand)&next_rand))
 begin $display("Warning: assign collision(glfsr:_net_3) at %d",$time);
if ((~next_rand)) $display("assert ((~next_rand)) line 15 at %d\n",$time);
if (next_rand) $display("assert (next_rand) line 15 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _net_3 = 
// synthesis translate_off
// synopsys translate_off
(((~next_rand)&next_rand))? 1'bx :(((~next_rand)|next_rand))? 
// synthesis translate_on
// synopsys translate_on
(((~next_rand))?(_net_2[1:1]):1'b0)|
    ((next_rand)?(r[2]):1'b0)
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
if ((next_rand&(~next_rand)))
 begin $display("Warning: assign collision(glfsr:_net_4) at %d",$time);
if (next_rand) $display("assert (next_rand) line 15 at %d\n",$time);
if ((~next_rand)) $display("assert ((~next_rand)) line 15 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _net_4 = 
// synthesis translate_off
// synopsys translate_off
((next_rand&(~next_rand)))? 16'bx :((next_rand|(~next_rand)))? 
// synthesis translate_on
// synopsys translate_on
((next_rand)?({(_net_2[15:2]),_net_3,(_net_2[0:0])}):16'b0)|
    (((~next_rand))?_net_2:16'b0)
// synthesis translate_off
// synopsys translate_off
:16'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((~next_rand)&next_rand))
 begin $display("Warning: assign collision(glfsr:_net_5) at %d",$time);
if ((~next_rand)) $display("assert ((~next_rand)) line 15 at %d\n",$time);
if (next_rand) $display("assert (next_rand) line 15 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _net_5 = 
// synthesis translate_off
// synopsys translate_off
(((~next_rand)&next_rand))? 1'bx :(((~next_rand)|next_rand))? 
// synthesis translate_on
// synopsys translate_on
(((~next_rand))?(_net_4[2:2]):1'b0)|
    ((next_rand)?(r[3]):1'b0)
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
if ((next_rand&(~next_rand)))
 begin $display("Warning: assign collision(glfsr:_net_6) at %d",$time);
if (next_rand) $display("assert (next_rand) line 15 at %d\n",$time);
if ((~next_rand)) $display("assert ((~next_rand)) line 15 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _net_6 = 
// synthesis translate_off
// synopsys translate_off
((next_rand&(~next_rand)))? 16'bx :((next_rand|(~next_rand)))? 
// synthesis translate_on
// synopsys translate_on
((next_rand)?({(_net_4[15:3]),_net_5,(_net_4[1:0])}):16'b0)|
    (((~next_rand))?_net_4:16'b0)
// synthesis translate_off
// synopsys translate_off
:16'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((~next_rand)&next_rand))
 begin $display("Warning: assign collision(glfsr:_net_7) at %d",$time);
if ((~next_rand)) $display("assert ((~next_rand)) line 15 at %d\n",$time);
if (next_rand) $display("assert (next_rand) line 15 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _net_7 = 
// synthesis translate_off
// synopsys translate_off
(((~next_rand)&next_rand))? 1'bx :(((~next_rand)|next_rand))? 
// synthesis translate_on
// synopsys translate_on
(((~next_rand))?(_net_6[3:3]):1'b0)|
    ((next_rand)?(r[4]):1'b0)
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
if ((next_rand&(~next_rand)))
 begin $display("Warning: assign collision(glfsr:_net_8) at %d",$time);
if (next_rand) $display("assert (next_rand) line 15 at %d\n",$time);
if ((~next_rand)) $display("assert ((~next_rand)) line 15 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _net_8 = 
// synthesis translate_off
// synopsys translate_off
((next_rand&(~next_rand)))? 16'bx :((next_rand|(~next_rand)))? 
// synthesis translate_on
// synopsys translate_on
((next_rand)?({(_net_6[15:4]),_net_7,(_net_6[2:0])}):16'b0)|
    (((~next_rand))?_net_6:16'b0)
// synthesis translate_off
// synopsys translate_off
:16'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((~next_rand)&next_rand))
 begin $display("Warning: assign collision(glfsr:_net_9) at %d",$time);
if ((~next_rand)) $display("assert ((~next_rand)) line 15 at %d\n",$time);
if (next_rand) $display("assert (next_rand) line 15 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _net_9 = 
// synthesis translate_off
// synopsys translate_off
(((~next_rand)&next_rand))? 1'bx :(((~next_rand)|next_rand))? 
// synthesis translate_on
// synopsys translate_on
(((~next_rand))?(_net_8[4:4]):1'b0)|
    ((next_rand)?(r[5]):1'b0)
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
if ((next_rand&(~next_rand)))
 begin $display("Warning: assign collision(glfsr:_net_10) at %d",$time);
if (next_rand) $display("assert (next_rand) line 15 at %d\n",$time);
if ((~next_rand)) $display("assert ((~next_rand)) line 15 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _net_10 = 
// synthesis translate_off
// synopsys translate_off
((next_rand&(~next_rand)))? 16'bx :((next_rand|(~next_rand)))? 
// synthesis translate_on
// synopsys translate_on
((next_rand)?({(_net_8[15:5]),_net_9,(_net_8[3:0])}):16'b0)|
    (((~next_rand))?_net_8:16'b0)
// synthesis translate_off
// synopsys translate_off
:16'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((~next_rand)&next_rand))
 begin $display("Warning: assign collision(glfsr:_net_11) at %d",$time);
if ((~next_rand)) $display("assert ((~next_rand)) line 15 at %d\n",$time);
if (next_rand) $display("assert (next_rand) line 15 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _net_11 = 
// synthesis translate_off
// synopsys translate_off
(((~next_rand)&next_rand))? 1'bx :(((~next_rand)|next_rand))? 
// synthesis translate_on
// synopsys translate_on
(((~next_rand))?(_net_10[5:5]):1'b0)|
    ((next_rand)?(r[6]):1'b0)
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
if ((next_rand&(~next_rand)))
 begin $display("Warning: assign collision(glfsr:_net_12) at %d",$time);
if (next_rand) $display("assert (next_rand) line 15 at %d\n",$time);
if ((~next_rand)) $display("assert ((~next_rand)) line 15 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _net_12 = 
// synthesis translate_off
// synopsys translate_off
((next_rand&(~next_rand)))? 16'bx :((next_rand|(~next_rand)))? 
// synthesis translate_on
// synopsys translate_on
((next_rand)?({(_net_10[15:6]),_net_11,(_net_10[4:0])}):16'b0)|
    (((~next_rand))?_net_10:16'b0)
// synthesis translate_off
// synopsys translate_off
:16'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((~next_rand)&next_rand))
 begin $display("Warning: assign collision(glfsr:_net_13) at %d",$time);
if ((~next_rand)) $display("assert ((~next_rand)) line 15 at %d\n",$time);
if (next_rand) $display("assert (next_rand) line 15 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _net_13 = 
// synthesis translate_off
// synopsys translate_off
(((~next_rand)&next_rand))? 1'bx :(((~next_rand)|next_rand))? 
// synthesis translate_on
// synopsys translate_on
(((~next_rand))?(_net_12[6:6]):1'b0)|
    ((next_rand)?(r[7]):1'b0)
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
if ((next_rand&(~next_rand)))
 begin $display("Warning: assign collision(glfsr:_net_14) at %d",$time);
if (next_rand) $display("assert (next_rand) line 15 at %d\n",$time);
if ((~next_rand)) $display("assert ((~next_rand)) line 15 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _net_14 = 
// synthesis translate_off
// synopsys translate_off
((next_rand&(~next_rand)))? 16'bx :((next_rand|(~next_rand)))? 
// synthesis translate_on
// synopsys translate_on
((next_rand)?({(_net_12[15:7]),_net_13,(_net_12[5:0])}):16'b0)|
    (((~next_rand))?_net_12:16'b0)
// synthesis translate_off
// synopsys translate_off
:16'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((~next_rand)&next_rand))
 begin $display("Warning: assign collision(glfsr:_net_15) at %d",$time);
if ((~next_rand)) $display("assert ((~next_rand)) line 15 at %d\n",$time);
if (next_rand) $display("assert (next_rand) line 15 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _net_15 = 
// synthesis translate_off
// synopsys translate_off
(((~next_rand)&next_rand))? 1'bx :(((~next_rand)|next_rand))? 
// synthesis translate_on
// synopsys translate_on
(((~next_rand))?(_net_14[7:7]):1'b0)|
    ((next_rand)?(r[8]):1'b0)
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
if ((next_rand&(~next_rand)))
 begin $display("Warning: assign collision(glfsr:_net_16) at %d",$time);
if (next_rand) $display("assert (next_rand) line 15 at %d\n",$time);
if ((~next_rand)) $display("assert ((~next_rand)) line 15 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _net_16 = 
// synthesis translate_off
// synopsys translate_off
((next_rand&(~next_rand)))? 16'bx :((next_rand|(~next_rand)))? 
// synthesis translate_on
// synopsys translate_on
((next_rand)?({(_net_14[15:8]),_net_15,(_net_14[6:0])}):16'b0)|
    (((~next_rand))?_net_14:16'b0)
// synthesis translate_off
// synopsys translate_off
:16'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((~next_rand)&next_rand))
 begin $display("Warning: assign collision(glfsr:_net_17) at %d",$time);
if ((~next_rand)) $display("assert ((~next_rand)) line 15 at %d\n",$time);
if (next_rand) $display("assert (next_rand) line 15 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _net_17 = 
// synthesis translate_off
// synopsys translate_off
(((~next_rand)&next_rand))? 1'bx :(((~next_rand)|next_rand))? 
// synthesis translate_on
// synopsys translate_on
(((~next_rand))?(_net_16[8:8]):1'b0)|
    ((next_rand)?(r[9]):1'b0)
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
if ((next_rand&(~next_rand)))
 begin $display("Warning: assign collision(glfsr:_net_18) at %d",$time);
if (next_rand) $display("assert (next_rand) line 15 at %d\n",$time);
if ((~next_rand)) $display("assert ((~next_rand)) line 15 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _net_18 = 
// synthesis translate_off
// synopsys translate_off
((next_rand&(~next_rand)))? 16'bx :((next_rand|(~next_rand)))? 
// synthesis translate_on
// synopsys translate_on
((next_rand)?({(_net_16[15:9]),_net_17,(_net_16[7:0])}):16'b0)|
    (((~next_rand))?_net_16:16'b0)
// synthesis translate_off
// synopsys translate_off
:16'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((~next_rand)&next_rand))
 begin $display("Warning: assign collision(glfsr:_net_19) at %d",$time);
if ((~next_rand)) $display("assert ((~next_rand)) line 15 at %d\n",$time);
if (next_rand) $display("assert (next_rand) line 15 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _net_19 = 
// synthesis translate_off
// synopsys translate_off
(((~next_rand)&next_rand))? 1'bx :(((~next_rand)|next_rand))? 
// synthesis translate_on
// synopsys translate_on
(((~next_rand))?(_net_18[9:9]):1'b0)|
    ((next_rand)?(r[10]):1'b0)
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
if ((next_rand&(~next_rand)))
 begin $display("Warning: assign collision(glfsr:_net_20) at %d",$time);
if (next_rand) $display("assert (next_rand) line 15 at %d\n",$time);
if ((~next_rand)) $display("assert ((~next_rand)) line 15 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _net_20 = 
// synthesis translate_off
// synopsys translate_off
((next_rand&(~next_rand)))? 16'bx :((next_rand|(~next_rand)))? 
// synthesis translate_on
// synopsys translate_on
((next_rand)?({(_net_18[15:10]),_net_19,(_net_18[8:0])}):16'b0)|
    (((~next_rand))?_net_18:16'b0)
// synthesis translate_off
// synopsys translate_off
:16'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((~next_rand)&next_rand))
 begin $display("Warning: assign collision(glfsr:_net_21) at %d",$time);
if ((~next_rand)) $display("assert ((~next_rand)) line 14 at %d\n",$time);
if (next_rand) $display("assert (next_rand) line 14 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _net_21 = 
// synthesis translate_off
// synopsys translate_off
(((~next_rand)&next_rand))? 1'bx :(((~next_rand)|next_rand))? 
// synthesis translate_on
// synopsys translate_on
(((~next_rand))?(_net_20[10:10]):1'b0)|
    ((next_rand)?((r[11])^(r[0])):1'b0)
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
if ((next_rand&(~next_rand)))
 begin $display("Warning: assign collision(glfsr:_net_22) at %d",$time);
if (next_rand) $display("assert (next_rand) line 14 at %d\n",$time);
if ((~next_rand)) $display("assert ((~next_rand)) line 14 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _net_22 = 
// synthesis translate_off
// synopsys translate_off
((next_rand&(~next_rand)))? 16'bx :((next_rand|(~next_rand)))? 
// synthesis translate_on
// synopsys translate_on
((next_rand)?({(_net_20[15:11]),_net_21,(_net_20[9:0])}):16'b0)|
    (((~next_rand))?_net_20:16'b0)
// synthesis translate_off
// synopsys translate_off
:16'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((~next_rand)&next_rand))
 begin $display("Warning: assign collision(glfsr:_net_23) at %d",$time);
if ((~next_rand)) $display("assert ((~next_rand)) line 15 at %d\n",$time);
if (next_rand) $display("assert (next_rand) line 15 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _net_23 = 
// synthesis translate_off
// synopsys translate_off
(((~next_rand)&next_rand))? 1'bx :(((~next_rand)|next_rand))? 
// synthesis translate_on
// synopsys translate_on
(((~next_rand))?(_net_22[11:11]):1'b0)|
    ((next_rand)?(r[12]):1'b0)
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
if ((next_rand&(~next_rand)))
 begin $display("Warning: assign collision(glfsr:_net_24) at %d",$time);
if (next_rand) $display("assert (next_rand) line 15 at %d\n",$time);
if ((~next_rand)) $display("assert ((~next_rand)) line 15 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _net_24 = 
// synthesis translate_off
// synopsys translate_off
((next_rand&(~next_rand)))? 16'bx :((next_rand|(~next_rand)))? 
// synthesis translate_on
// synopsys translate_on
((next_rand)?({(_net_22[15:12]),_net_23,(_net_22[10:0])}):16'b0)|
    (((~next_rand))?_net_22:16'b0)
// synthesis translate_off
// synopsys translate_off
:16'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((~next_rand)&next_rand))
 begin $display("Warning: assign collision(glfsr:_net_25) at %d",$time);
if ((~next_rand)) $display("assert ((~next_rand)) line 14 at %d\n",$time);
if (next_rand) $display("assert (next_rand) line 14 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _net_25 = 
// synthesis translate_off
// synopsys translate_off
(((~next_rand)&next_rand))? 1'bx :(((~next_rand)|next_rand))? 
// synthesis translate_on
// synopsys translate_on
(((~next_rand))?(_net_24[12:12]):1'b0)|
    ((next_rand)?((r[13])^(r[0])):1'b0)
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
if ((next_rand&(~next_rand)))
 begin $display("Warning: assign collision(glfsr:_net_26) at %d",$time);
if (next_rand) $display("assert (next_rand) line 14 at %d\n",$time);
if ((~next_rand)) $display("assert ((~next_rand)) line 14 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _net_26 = 
// synthesis translate_off
// synopsys translate_off
((next_rand&(~next_rand)))? 16'bx :((next_rand|(~next_rand)))? 
// synthesis translate_on
// synopsys translate_on
((next_rand)?({(_net_24[15:13]),_net_25,(_net_24[11:0])}):16'b0)|
    (((~next_rand))?_net_24:16'b0)
// synthesis translate_off
// synopsys translate_off
:16'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((~next_rand)&next_rand))
 begin $display("Warning: assign collision(glfsr:_net_27) at %d",$time);
if ((~next_rand)) $display("assert ((~next_rand)) line 14 at %d\n",$time);
if (next_rand) $display("assert (next_rand) line 14 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _net_27 = 
// synthesis translate_off
// synopsys translate_off
(((~next_rand)&next_rand))? 1'bx :(((~next_rand)|next_rand))? 
// synthesis translate_on
// synopsys translate_on
(((~next_rand))?(_net_26[13:13]):1'b0)|
    ((next_rand)?((r[14])^(r[0])):1'b0)
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
if ((next_rand&(~next_rand)))
 begin $display("Warning: assign collision(glfsr:_net_28) at %d",$time);
if (next_rand) $display("assert (next_rand) line 14 at %d\n",$time);
if ((~next_rand)) $display("assert ((~next_rand)) line 14 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _net_28 = 
// synthesis translate_off
// synopsys translate_off
((next_rand&(~next_rand)))? 16'bx :((next_rand|(~next_rand)))? 
// synthesis translate_on
// synopsys translate_on
((next_rand)?({(_net_26[15:14]),_net_27,(_net_26[12:0])}):16'b0)|
    (((~next_rand))?_net_26:16'b0)
// synthesis translate_off
// synopsys translate_off
:16'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((~next_rand)&next_rand))
 begin $display("Warning: assign collision(glfsr:_net_29) at %d",$time);
if ((~next_rand)) $display("assert ((~next_rand)) line 15 at %d\n",$time);
if (next_rand) $display("assert (next_rand) line 15 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _net_29 = 
// synthesis translate_off
// synopsys translate_off
(((~next_rand)&next_rand))? 1'bx :(((~next_rand)|next_rand))? 
// synthesis translate_on
// synopsys translate_on
(((~next_rand))?(_net_28[14:14]):1'b0)|
    ((next_rand)?(r[15]):1'b0)
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
if ((next_rand&(~next_rand)))
 begin $display("Warning: assign collision(glfsr:_net_30) at %d",$time);
if (next_rand) $display("assert (next_rand) line 15 at %d\n",$time);
if ((~next_rand)) $display("assert ((~next_rand)) line 15 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _net_30 = 
// synthesis translate_off
// synopsys translate_off
((next_rand&(~next_rand)))? 16'bx :((next_rand|(~next_rand)))? 
// synthesis translate_on
// synopsys translate_on
((next_rand)?({(_net_28[15:15]),_net_29,(_net_28[13:0])}):16'b0)|
    (((~next_rand))?_net_28:16'b0)
// synthesis translate_off
// synopsys translate_off
:16'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((~next_rand)&next_rand))
 begin $display("Warning: assign collision(glfsr:_net_31) at %d",$time);
if ((~next_rand)) $display("assert ((~next_rand)) line 17 at %d\n",$time);
if (next_rand) $display("assert (next_rand) line 17 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _net_31 = 
// synthesis translate_off
// synopsys translate_off
(((~next_rand)&next_rand))? 1'bx :(((~next_rand)|next_rand))? 
// synthesis translate_on
// synopsys translate_on
(((~next_rand))?(_net_30[15:15]):1'b0)|
    ((next_rand)?(r[0]):1'b0)
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
if ((next_rand&(~next_rand)))
 begin $display("Warning: assign collision(glfsr:_net_32) at %d",$time);
if (next_rand) $display("assert (next_rand) line 17 at %d\n",$time);
if ((~next_rand)) $display("assert ((~next_rand)) line 17 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _net_32 = 
// synthesis translate_off
// synopsys translate_off
((next_rand&(~next_rand)))? 16'bx :((next_rand|(~next_rand)))? 
// synthesis translate_on
// synopsys translate_on
((next_rand)?({_net_31,(_net_30[14:0])}):16'b0)|
    (((~next_rand))?_net_30:16'b0)
// synthesis translate_off
// synopsys translate_off
:16'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  q = 
// synthesis translate_off
// synopsys translate_off
(next_rand)? 
// synthesis translate_on
// synopsys translate_on
((next_rand)?r:16'b0)
// synthesis translate_off
// synopsys translate_off
:16'bx
// synthesis translate_on
// synopsys translate_on
;
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     r <= 16'b0011100110100101;
else 
// synthesis translate_off
// synopsys translate_off
if ((set_seed&next_rand))   r <= 16'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (set_seed)
      r <= seed;
else if (next_rand)
      r <= _net_32;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((set_seed|next_rand)==1'b1) ||
 ((set_seed|next_rand)==1'b0) ) begin
 if ((set_seed&next_rand))
 begin $display("Warning: assign collision(glfsr:r) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(glfsr:r) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
endmodule

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Thu Apr 23 20:48:00 2026
 Licensed to :EVALUATION USER*/

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Thu Apr 23 20:48:00 2026
 Licensed to :EVALUATION USER*/

// synthesis translate_off
// synopsys translate_off
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module tut13 ( p_reset , m_clock );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  reg [15:0] count;
  wire [15:0] _rmod_seed;
  wire [15:0] _rmod_q;
  wire _rmod_set_seed;
  wire _rmod_next_rand;
  wire _rmod_p_reset;
  wire _rmod_m_clock;
  wire _net_33;
  wire [15:0] _net_36;
  wire _net_37;
glfsr rmod (.m_clock(m_clock), .p_reset( p_reset), .next_rand(_rmod_next_rand), .set_seed(_rmod_set_seed), .q(_rmod_q), .seed(_rmod_seed));

   assign  _rmod_seed = (_net_37)? ((_net_37)?(count+16'b1001100001110110):16'b0):16'bx;
always @(posedge _rmod_set_seed)
  begin
#1 if (_rmod_set_seed===1'bx)
 begin
$display("Warning: control hazard(tut13:_rmod_set_seed) at %d",$time);
 end
#1 if (((_net_37)===1'bx) || (1'b1)===1'bx) $display("hazard (_net_37 || 1'b1) line 33 at %d\n",$time);
 end
   assign  _rmod_set_seed = _net_37;
always @(posedge _rmod_next_rand)
  begin
#1 if (_rmod_next_rand===1'bx)
 begin
$display("Warning: control hazard(tut13:_rmod_next_rand) at %d",$time);
 end
#1 if (((((~_net_33)&(~_net_37)))===1'bx) || (1'b1)===1'bx) $display("hazard (((~_net_33)&(~_net_37)) || 1'b1) line 36 at %d\n",$time);
 end
   assign  _rmod_next_rand = ((~_net_33)&(~_net_37));
   assign  _rmod_p_reset = p_reset;
   assign  _rmod_m_clock = m_clock;
   assign  _net_33 = (count==16'b0000000000001010);
always @(posedge m_clock)
  begin
    if(_net_33)
    begin
    $display("finished");
    end
  end
always @(posedge m_clock)
  begin
    if(_net_33)
    begin
    $finish;
    end
  end
   assign  _net_36 = count;
   assign  _net_37 = ((_net_36[2:0])==3'b111);
always @(posedge m_clock)
  begin
    if(_net_37)
    begin
    $display("set seed:%d",(count+16'b1001100001110110));
    end
  end
always @(posedge m_clock)
  begin
    if(((~_net_33)&(~_net_37)))
    begin
    $display("random generate %d",_rmod_q);
    end
  end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     count <= 16'b0000000000000000;
else   count <= (count+16'b0000000000000001);
end
endmodule

// synthesis translate_on
// synopsys translate_on

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Thu Apr 23 20:48:00 2026
 Licensed to :EVALUATION USER*/

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Thu Apr 23 20:48:00 2026
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

	tut13 tut13_instance(
		.p_reset(p_reset),
		.m_clock(m_clock)
	);

	initial forever #(tCYC/2) m_clock = ~m_clock;

	initial begin
		$dumpfile("tut13.vcd");
		$dumpvars(0,tut13_instance);
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
