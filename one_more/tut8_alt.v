
/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Fri Jun  5 20:16:39 2026
 Licensed to :EVALUATION USER*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module divu_10_8 ( p_reset , m_clock , A , B , Q , R , divu_do , divu_done , divu_error );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  input [9:0] A;
  wire [9:0] A;
  input [7:0] B;
  wire [7:0] B;
  output [9:0] Q;
  wire [9:0] Q;
  output [7:0] R;
  wire [7:0] R;
  input divu_do;
  wire divu_do;
  output divu_done;
  wire divu_done;
  output divu_error;
  wire divu_error;
  reg [7:0] QB;
  reg [17:0] QQ;
  wire [10:0] sub_i1;
  wire [9:0] sub_i2;
  wire minus;
  wire sub;
  wire [10:0] sub_o;
  reg [7:0] bitcount;
  wire [7:0] _net_2;
  wire _net_3;
  reg _reg_4;
  reg _reg_5;
  reg _reg_6;
  wire _net_7;
  wire _reg_5_goto;
  wire _reg_4_goin;
  wire _net_8;
  wire _reg_5_goin;
  wire [7:0] _net_9;
  wire [19:0] _net_10;
  wire [35:0] _net_11;
  wire [17:0] _net_12;
  wire [21:0] _net_13;
  wire [10:0] _net_14;
  wire _net_15;

   assign  sub_i1 = 
// synthesis translate_off
// synopsys translate_off
((_reg_5&(~_net_7)))? 
// synthesis translate_on
// synopsys translate_on
(((_reg_5&(~_net_7)))?(QQ[17:7]):11'b0)
// synthesis translate_off
// synopsys translate_off
:11'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  sub_i2 = 
// synthesis translate_off
// synopsys translate_off
((_reg_5&(~_net_7)))? 
// synthesis translate_on
// synopsys translate_on
(((_reg_5&(~_net_7)))?(_net_10[17:8]):10'b0)
// synthesis translate_off
// synopsys translate_off
:10'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  minus = 
// synthesis translate_off
// synopsys translate_off
(sub)? 
// synthesis translate_on
// synopsys translate_on
((sub)?(sub_o[10]):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge sub)
  begin
#1 if (sub===1'bx)
 begin
$display("Warning: control hazard(divu_10_8:sub) at %d",$time);
 end
#1 if ((((_reg_5&(~_net_7)))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_5&(~_net_7)) || 1'b1) line 31 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  sub = (_reg_5&(~_net_7));
   assign  sub_o = 
// synthesis translate_off
// synopsys translate_off
(sub)? 
// synthesis translate_on
// synopsys translate_on
((sub)?(({sub_i1})-({1'b0,sub_i2})):11'b0)
// synthesis translate_off
// synopsys translate_off
:11'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_2 = 
// synthesis translate_off
// synopsys translate_off
((_reg_5&(~_net_7)))? 
// synthesis translate_on
// synopsys translate_on
(((_reg_5&(~_net_7)))?(bitcount+8'b00000001):8'b0)
// synthesis translate_off
// synopsys translate_off
:8'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_3 = 
// synthesis translate_off
// synopsys translate_off
(divu_do)? 
// synthesis translate_on
// synopsys translate_on
((divu_do)?(B==8'b00000000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_7 = 
// synthesis translate_off
// synopsys translate_off
(_reg_5)? 
// synthesis translate_on
// synopsys translate_on
((_reg_5)?(~(bitcount < 8'b00001010)):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge _reg_5_goto)
  begin
#1 if (_reg_5_goto===1'bx)
 begin
$display("Warning: control hazard(divu_10_8:_reg_5_goto) at %d",$time);
 end
#1 if (((((_reg_5&(~_net_7))&_net_8))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_5&(~_net_7))&_net_8) || 1'b1) line 38 at %d\n",$time);
#1 if ((((_reg_5&_net_7))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_5&_net_7) || 1'b1) line 38 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _reg_5_goto = ((_reg_5&(~_net_7))&_net_8)|
    (_reg_5&_net_7);

// synthesis translate_off
// synopsys translate_off
always @(posedge _reg_4_goin)
  begin
#1 if (_reg_4_goin===1'bx)
 begin
$display("Warning: control hazard(divu_10_8:_reg_4_goin) at %d",$time);
 end
#1 if ((((_reg_5&_net_7))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_5&_net_7) || 1'b1) line 38 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _reg_4_goin = (_reg_5&_net_7);
   assign  _net_8 = 
// synthesis translate_off
// synopsys translate_off
((_reg_5&(~_net_7)))? 
// synthesis translate_on
// synopsys translate_on
(((_reg_5&(~_net_7)))?(_net_2 < 8'b00001010):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge _reg_5_goin)
  begin
#1 if (_reg_5_goin===1'bx)
 begin
$display("Warning: control hazard(divu_10_8:_reg_5_goin) at %d",$time);
 end
#1 if (((((_reg_5&(~_net_7))&_net_8))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_5&(~_net_7))&_net_8) || 1'b1) line 38 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _reg_5_goin = ((_reg_5&(~_net_7))&_net_8);
   assign  _net_9 = QB;
   assign  _net_10 = ({({2'b00,_net_9}),10'b0000000000});
   assign  _net_11 = ({QQ,18'b000000000000000000});
   assign  _net_12 = ({(QQ[8:0]),9'b000000000});
   assign  _net_13 = ({sub_o,11'b00000000000});
   assign  _net_14 = (_net_13[20:10]);
   assign  _net_15 = 1'b1;
   assign  Q = 
// synthesis translate_off
// synopsys translate_off
(_reg_4)? 
// synthesis translate_on
// synopsys translate_on
((_reg_4)?(QQ[9:0]):10'b0)
// synthesis translate_off
// synopsys translate_off
:10'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  R = 
// synthesis translate_off
// synopsys translate_off
(_reg_4)? 
// synthesis translate_on
// synopsys translate_on
((_reg_4)?(QQ[17:10]):8'b0)
// synthesis translate_off
// synopsys translate_off
:8'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge divu_done)
  begin
#1 if (divu_done===1'bx)
 begin
$display("Warning: control hazard(divu_10_8:divu_done) at %d",$time);
 end
#1 if (((_reg_4)===1'bx) || (1'b1)===1'bx) $display("hazard (_reg_4 || 1'b1) line 39 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  divu_done = _reg_4;

// synthesis translate_off
// synopsys translate_off
always @(posedge divu_error)
  begin
#1 if (divu_error===1'bx)
 begin
$display("Warning: control hazard(divu_10_8:divu_error) at %d",$time);
 end
#1 if ((((divu_do&_net_3))===1'bx) || (1'b1)===1'bx) $display("hazard ((divu_do&_net_3) || 1'b1) line 26 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  divu_error = (divu_do&_net_3);
always @(posedge m_clock)
  begin
if (((divu_do&(~_net_3))|_reg_6))
      QB <= B;
end
always @(posedge m_clock)
  begin

// synthesis translate_off
// synopsys translate_off
if (((((divu_do&(~_net_3))|_reg_6)&((_reg_5&(~_net_7))&(~(minus != 1'b0))))|((((divu_do&(~_net_3))|_reg_6)|((_reg_5&(~_net_7))&(~(minus != 1'b0))))&((_reg_5&(~_net_7))&(minus != 1'b0)))))   QQ <= 18'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (((divu_do&(~_net_3))|_reg_6))
      QQ <= ({8'b00000000,A});
else if (((_reg_5&(~_net_7))&(~(minus != 1'b0))))
      QQ <= (({(_net_14[10:2]),(_net_12[16:8])})|({17'b00000000000000000,_net_15}));
else if (((_reg_5&(~_net_7))&(minus != 1'b0)))
      QQ <= (_net_11[34:17]);
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((((divu_do&(~_net_3))|_reg_6)|((_reg_5&(~_net_7))&(~(minus != 1'b0))))|((_reg_5&(~_net_7))&(minus != 1'b0)))==1'b1) ||
 (((((divu_do&(~_net_3))|_reg_6)|((_reg_5&(~_net_7))&(~(minus != 1'b0))))|((_reg_5&(~_net_7))&(minus != 1'b0)))==1'b0) ) begin
 if (((((divu_do&(~_net_3))|_reg_6)&((_reg_5&(~_net_7))&(~(minus != 1'b0))))|((((divu_do&(~_net_3))|_reg_6)|((_reg_5&(~_net_7))&(~(minus != 1'b0))))&((_reg_5&(~_net_7))&(minus != 1'b0)))))
 begin $display("Warning: assign collision(divu_10_8:QQ) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(divu_10_8:QQ) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock)
  begin

// synthesis translate_off
// synopsys translate_off
if ((((divu_do&(~_net_3))|_reg_6)&(_reg_5&(~_net_7))))   bitcount <= 8'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (((divu_do&(~_net_3))|_reg_6))
      bitcount <= 8'b00000000;
else if ((_reg_5&(~_net_7)))
      bitcount <= _net_2;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((((divu_do&(~_net_3))|_reg_6)|(_reg_5&(~_net_7)))==1'b1) ||
 ((((divu_do&(~_net_3))|_reg_6)|(_reg_5&(~_net_7)))==1'b0) ) begin
 if ((((divu_do&(~_net_3))|_reg_6)&(_reg_5&(~_net_7))))
 begin $display("Warning: assign collision(divu_10_8:bitcount) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(divu_10_8:bitcount) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_4 <= 1'b0;
else if (((_reg_5&_net_7)|(_reg_4|_reg_5)))
      _reg_4 <= ((_reg_5&_net_7)|(_reg_5&(~_reg_5_goto)));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_5 <= 1'b0;
else if (((((_reg_5&(~_net_7))&_net_8)|(divu_do&(~_net_3)))|(_reg_5|_reg_6)))
      _reg_5 <= ((((_reg_5&(~_net_7))&_net_8)|_reg_6)|(divu_do&(~_net_3)));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_6 <= 1'b0;
else if (_reg_6)
      _reg_6 <= 1'b0;
end
endmodule

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Fri Jun  5 20:16:39 2026
 Licensed to :EVALUATION USER*/
