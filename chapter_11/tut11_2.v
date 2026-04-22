
`timescale	1ns / 1ns
`default_nettype none


/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Wed Apr 22 14:16:52 2026
 Licensed to :EVALUATION USER*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module cpu ( p_reset , m_clock , data , address , mread , mwrite );
  input p_reset, m_clock;
  wire p_reset, m_clock;
inout [7:0] data;
wire [7:0] data;
  output [7:0] address;
  wire [7:0] address;
  output mread;
  wire mread;
  output mwrite;
  wire mwrite;
  reg [7:0] count;
  reg [7:0] pc;
  reg [7:0] op;
  reg [7:0] im;
  reg [7:0] acc;
  reg ift;
  reg imm;
  reg exe;
  wire [7:0] nextpc;
  wire _proc_exe_set;
  wire _proc_exe_reset;
  wire _proc_imm_set;
  wire _proc_imm_reset;
  wire _proc_ift_set;
  wire _proc_ift_reset;
  wire _net_0;
  wire _net_1;
  wire _net_2;
  wire _net_4;
  wire _net_6;
  wire _net_8;
  wire _net_10;


// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((((exe&(~_net_8))&(~_net_10))&(exe&_net_10))|((((exe&(~_net_8))&(~_net_10))|(exe&_net_10))&(exe&_net_8))))
 begin $display("Warning: assign collision(cpu:nextpc) at %d",$time);
if (((exe&(~_net_8))&(~_net_10))) $display("assert (((exe&(~_net_8))&(~_net_10))) line 44 at %d\n",$time);
if ((exe&_net_10)) $display("assert ((exe&_net_10)) line 42 at %d\n",$time);
if ((exe&_net_8)) $display("assert ((exe&_net_8)) line 43 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  nextpc = 
// synthesis translate_off
// synopsys translate_off
(((((exe&(~_net_8))&(~_net_10))&(exe&_net_10))|((((exe&(~_net_8))&(~_net_10))|(exe&_net_10))&(exe&_net_8))))? 8'bx :(((((exe&(~_net_8))&(~_net_10))|(exe&_net_10))|(exe&_net_8)))? 
// synthesis translate_on
// synopsys translate_on
((((exe&(~_net_8))&(~_net_10)))?pc:8'b0)|
    (((exe&_net_10))?im:8'b0)|
    (((exe&_net_8))?im:8'b0)
// synthesis translate_off
// synopsys translate_off
:8'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_exe_set)
  begin
#1 if (_proc_exe_set===1'bx)
 begin
$display("Warning: control hazard(cpu:_proc_exe_set) at %d",$time);
 end
#1 if (((imm)===1'bx) || (1'b1)===1'bx) $display("hazard (imm || 1'b1) line 31 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_exe_set = imm;

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_exe_reset)
  begin
#1 if (_proc_exe_reset===1'bx)
 begin
$display("Warning: control hazard(cpu:_proc_exe_reset) at %d",$time);
 end
#1 if (((exe)===1'bx) || (1'b1)===1'bx) $display("hazard (exe || 1'b1) line 46 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_exe_reset = exe;

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_imm_set)
  begin
#1 if (_proc_imm_set===1'bx)
 begin
$display("Warning: control hazard(cpu:_proc_imm_set) at %d",$time);
 end
#1 if (((ift)===1'bx) || (1'b1)===1'bx) $display("hazard (ift || 1'b1) line 27 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_imm_set = ift;

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_imm_reset)
  begin
#1 if (_proc_imm_reset===1'bx)
 begin
$display("Warning: control hazard(cpu:_proc_imm_reset) at %d",$time);
 end
#1 if (((imm)===1'bx) || (1'b1)===1'bx) $display("hazard (imm || 1'b1) line 31 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_imm_reset = imm;

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_ift_set)
  begin
#1 if (_proc_ift_set===1'bx)
 begin
$display("Warning: control hazard(cpu:_proc_ift_set) at %d",$time);
 end
#1 if (((exe)===1'bx) || (1'b1)===1'bx) $display("hazard (exe || 1'b1) line 46 at %d\n",$time);
#1 if (((_net_0)===1'bx) || (1'b1)===1'bx) $display("hazard (_net_0 || 1'b1) line 23 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_ift_set = exe|
    _net_0;

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_ift_reset)
  begin
#1 if (_proc_ift_reset===1'bx)
 begin
$display("Warning: control hazard(cpu:_proc_ift_reset) at %d",$time);
 end
#1 if (((ift)===1'bx) || (1'b1)===1'bx) $display("hazard (ift || 1'b1) line 27 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_ift_reset = ift;
   assign  _net_0 = (count==8'b00001010);
   assign  _net_1 = (count <= 8'b00010100);
   assign  _net_2 = 
// synthesis translate_off
// synopsys translate_off
(exe)? 
// synthesis translate_on
// synopsys translate_on
((exe)?(op==8'b00000010):1'b0)
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
    if((exe&_net_2))
    begin
    $display("ST %d",im);
    end
  end

// synthesis translate_on
// synopsys translate_on
   assign  _net_4 = 
// synthesis translate_off
// synopsys translate_off
(exe)? 
// synthesis translate_on
// synopsys translate_on
((exe)?(op==8'b00000001):1'b0)
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
    if((exe&_net_4))
    begin
    $display("LD %d",im);
    end
  end

// synthesis translate_on
// synopsys translate_on
   assign  _net_6 = 
// synthesis translate_off
// synopsys translate_off
(exe)? 
// synthesis translate_on
// synopsys translate_on
((exe)?(op==8'b00000000):1'b0)
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
    if((exe&_net_6))
    begin
    $display("ADD %d",im);
    end
  end

// synthesis translate_on
// synopsys translate_on
   assign  _net_8 = 
// synthesis translate_off
// synopsys translate_off
(exe)? 
// synthesis translate_on
// synopsys translate_on
((exe)?((op==8'b00000100)&(acc==8'b00000000)):1'b0)
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
    if((exe&_net_8))
    begin
    $display("JZ %d",im);
    end
  end

// synthesis translate_on
// synopsys translate_on
   assign  _net_10 = 
// synthesis translate_off
// synopsys translate_off
(exe)? 
// synthesis translate_on
// synopsys translate_on
((exe)?(op==8'b00000011):1'b0)
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
    if((exe&_net_10))
    begin
    $display("JMP %d",im);
    end
  end

// synthesis translate_on
// synopsys translate_on
   assign  data = ((exe&_net_2))?acc:8'bZ;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((((exe&_net_4)&(exe&_net_2))|(((exe&_net_4)|(exe&_net_2))&imm))|((((exe&_net_4)|(exe&_net_2))|imm)&ift)))
 begin $display("Warning: assign collision(cpu:address) at %d",$time);
if ((exe&_net_4)) $display("assert ((exe&_net_4)) line 38 at %d\n",$time);
if ((exe&_net_2)) $display("assert ((exe&_net_2)) line 39 at %d\n",$time);
if (imm) $display("assert (imm) line 31 at %d\n",$time);
if (ift) $display("assert (ift) line 27 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  address = 
// synthesis translate_off
// synopsys translate_off
(((((exe&_net_4)&(exe&_net_2))|(((exe&_net_4)|(exe&_net_2))&imm))|((((exe&_net_4)|(exe&_net_2))|imm)&ift)))? 8'bx :(((((exe&_net_4)|(exe&_net_2))|imm)|ift))? 
// synthesis translate_on
// synopsys translate_on
(((exe&_net_4))?im:8'b0)|
    (((exe&_net_2))?im:8'b0)|
    ((imm)?pc:8'b0)|
    ((ift)?pc:8'b0)
// synthesis translate_off
// synopsys translate_off
:8'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge mread)
  begin
#1 if (mread===1'bx)
 begin
$display("Warning: control hazard(cpu:mread) at %d",$time);
 end
#1 if ((((exe&_net_4))===1'bx) || (1'b1)===1'bx) $display("hazard ((exe&_net_4) || 1'b1) line 38 at %d\n",$time);
#1 if (((imm)===1'bx) || (1'b1)===1'bx) $display("hazard (imm || 1'b1) line 31 at %d\n",$time);
#1 if (((ift)===1'bx) || (1'b1)===1'bx) $display("hazard (ift || 1'b1) line 27 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  mread = (exe&_net_4)|
    imm|
    ift;

// synthesis translate_off
// synopsys translate_off
always @(posedge mwrite)
  begin
#1 if (mwrite===1'bx)
 begin
$display("Warning: control hazard(cpu:mwrite) at %d",$time);
 end
#1 if ((((exe&_net_2))===1'bx) || (1'b1)===1'bx) $display("hazard ((exe&_net_2) || 1'b1) line 39 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  mwrite = (exe&_net_2);
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     count <= 8'b00000000;
else if (_net_1)
      count <= (count+8'b00000001);
end
always @(posedge m_clock)
  begin

// synthesis translate_off
// synopsys translate_off
if ((((exe&imm)|((exe|imm)&ift))|(((exe|imm)|ift)&_net_0)))   pc <= 8'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (exe)
      pc <= nextpc;
else if (imm)
      pc <= (pc+8'b00000001);
else if (ift)
      pc <= (pc+8'b00000001);
else if (_net_0)
      pc <= 8'b00000000;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((((exe|imm)|ift)|_net_0)==1'b1) ||
 ((((exe|imm)|ift)|_net_0)==1'b0) ) begin
 if ((((exe&imm)|((exe|imm)&ift))|(((exe|imm)|ift)&_net_0)))
 begin $display("Warning: assign collision(cpu:pc) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(cpu:pc) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock)
  begin
if (ift)
      op <= data;
end
always @(posedge m_clock)
  begin
if (imm)
      im <= data;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     acc <= 8'b00000000;
else 
// synthesis translate_off
// synopsys translate_off
if (((exe&_net_6)&(exe&_net_4)))   acc <= 8'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((exe&_net_6))
      acc <= (acc+im);
else if ((exe&_net_4))
      acc <= data;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((exe&_net_6)|(exe&_net_4))==1'b1) ||
 (((exe&_net_6)|(exe&_net_4))==1'b0) ) begin
 if (((exe&_net_6)&(exe&_net_4)))
 begin $display("Warning: assign collision(cpu:acc) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(cpu:acc) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     ift <= 1'b0;
else if ((_proc_ift_set|_proc_ift_reset))
      ift <= _proc_ift_set;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     imm <= 1'b0;
else if ((_proc_imm_set|_proc_imm_reset))
      imm <= _proc_imm_set;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     exe <= 1'b0;
else if ((_proc_exe_set|_proc_exe_reset))
      exe <= _proc_exe_set;
end
endmodule

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Wed Apr 22 14:16:52 2026
 Licensed to :EVALUATION USER*/

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Wed Apr 22 14:16:52 2026
 Licensed to :EVALUATION USER*/

// synthesis translate_off
// synopsys translate_off
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module tut11_2 ( p_reset , m_clock );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  reg [7:0] mainmem [0:255];
  wire [7:0] _tut11_2cpu_data;
  wire [7:0] _tut11_2cpu_address;
  wire _tut11_2cpu_mread;
  wire _tut11_2cpu_mwrite;
  wire _tut11_2cpu_p_reset;
  wire _tut11_2cpu_m_clock;
  wire [7:0] _net_13;
  wire [7:0] _net_14;
  wire [7:0] _net_16;
  wire [7:0] _net_17;
  wire _net_18;
cpu tut11_2cpu (.m_clock(m_clock), .p_reset( p_reset), .mwrite(_tut11_2cpu_mwrite), .mread(_tut11_2cpu_mread), .address(_tut11_2cpu_address), .data(_tut11_2cpu_data));

   assign  _tut11_2cpu_data = (_tut11_2cpu_mread)?_net_14:8'bZ;
   assign  _tut11_2cpu_p_reset = p_reset;
   assign  _tut11_2cpu_m_clock = m_clock;
always @(posedge m_clock)
  begin
    if(_tut11_2cpu_mread)
    begin
    $display("READ: ADDRESS:%x, DATA:%x",_tut11_2cpu_address,_net_13);
    end
  end
   assign  _net_13 = (_tut11_2cpu_mread)? ((_tut11_2cpu_mread)?(mainmem[_tut11_2cpu_address]):8'b0):8'bx;
   assign  _net_14 = (_tut11_2cpu_mread)? ((_tut11_2cpu_mread)?(mainmem[_tut11_2cpu_address]):8'b0):8'bx;
always @(posedge m_clock)
  begin
    if(_tut11_2cpu_mwrite)
    begin
    $display("WRITE: ADDRESS:%x, DATA: %x",_tut11_2cpu_address,_tut11_2cpu_data);
    end
  end
   assign  _net_16 = (_tut11_2cpu_mwrite)? ((_tut11_2cpu_mwrite)?_net_17:8'b0):8'bx;
   assign  _net_17 = _tut11_2cpu_address;
   assign  _net_18 = (_tut11_2cpu_mwrite)? ((_tut11_2cpu_mwrite)?(_tut11_2cpu_address==8'b11111111):1'b0):1'bx;
always @(posedge m_clock)
  begin
    if((_tut11_2cpu_mwrite&_net_18))
    begin
    $display("SIM STOP");
    end
  end
always @(posedge m_clock)
  begin
    if((_tut11_2cpu_mwrite&_net_18))
    begin
    $finish;
    end
  end
initial begin
    mainmem[0] = 8'b00000000;
    mainmem[1] = 8'b00000010;
    mainmem[2] = 8'b00000100;
    mainmem[3] = 8'b00001010;
    mainmem[4] = 8'b00000010;
    mainmem[5] = 8'b00100000;
    mainmem[6] = 8'b00000000;
    mainmem[7] = 8'b11111111;
    mainmem[8] = 8'b00000011;
    mainmem[9] = 8'b00000010;
    mainmem[10] = 8'b00000010;
    mainmem[11] = 8'b11111111;
    mainmem[12] = 0;
    mainmem[13] = 0;
    mainmem[14] = 0;
    mainmem[15] = 0;
    mainmem[16] = 0;
    mainmem[17] = 0;
    mainmem[18] = 0;
    mainmem[19] = 0;
    mainmem[20] = 0;
    mainmem[21] = 0;
    mainmem[22] = 0;
    mainmem[23] = 0;
    mainmem[24] = 0;
    mainmem[25] = 0;
    mainmem[26] = 0;
    mainmem[27] = 0;
    mainmem[28] = 0;
    mainmem[29] = 0;
    mainmem[30] = 0;
    mainmem[31] = 0;
    mainmem[32] = 0;
    mainmem[33] = 0;
    mainmem[34] = 0;
    mainmem[35] = 0;
    mainmem[36] = 0;
    mainmem[37] = 0;
    mainmem[38] = 0;
    mainmem[39] = 0;
    mainmem[40] = 0;
    mainmem[41] = 0;
    mainmem[42] = 0;
    mainmem[43] = 0;
    mainmem[44] = 0;
    mainmem[45] = 0;
    mainmem[46] = 0;
    mainmem[47] = 0;
    mainmem[48] = 0;
    mainmem[49] = 0;
    mainmem[50] = 0;
    mainmem[51] = 0;
    mainmem[52] = 0;
    mainmem[53] = 0;
    mainmem[54] = 0;
    mainmem[55] = 0;
    mainmem[56] = 0;
    mainmem[57] = 0;
    mainmem[58] = 0;
    mainmem[59] = 0;
    mainmem[60] = 0;
    mainmem[61] = 0;
    mainmem[62] = 0;
    mainmem[63] = 0;
    mainmem[64] = 0;
    mainmem[65] = 0;
    mainmem[66] = 0;
    mainmem[67] = 0;
    mainmem[68] = 0;
    mainmem[69] = 0;
    mainmem[70] = 0;
    mainmem[71] = 0;
    mainmem[72] = 0;
    mainmem[73] = 0;
    mainmem[74] = 0;
    mainmem[75] = 0;
    mainmem[76] = 0;
    mainmem[77] = 0;
    mainmem[78] = 0;
    mainmem[79] = 0;
    mainmem[80] = 0;
    mainmem[81] = 0;
    mainmem[82] = 0;
    mainmem[83] = 0;
    mainmem[84] = 0;
    mainmem[85] = 0;
    mainmem[86] = 0;
    mainmem[87] = 0;
    mainmem[88] = 0;
    mainmem[89] = 0;
    mainmem[90] = 0;
    mainmem[91] = 0;
    mainmem[92] = 0;
    mainmem[93] = 0;
    mainmem[94] = 0;
    mainmem[95] = 0;
    mainmem[96] = 0;
    mainmem[97] = 0;
    mainmem[98] = 0;
    mainmem[99] = 0;
    mainmem[100] = 0;
    mainmem[101] = 0;
    mainmem[102] = 0;
    mainmem[103] = 0;
    mainmem[104] = 0;
    mainmem[105] = 0;
    mainmem[106] = 0;
    mainmem[107] = 0;
    mainmem[108] = 0;
    mainmem[109] = 0;
    mainmem[110] = 0;
    mainmem[111] = 0;
    mainmem[112] = 0;
    mainmem[113] = 0;
    mainmem[114] = 0;
    mainmem[115] = 0;
    mainmem[116] = 0;
    mainmem[117] = 0;
    mainmem[118] = 0;
    mainmem[119] = 0;
    mainmem[120] = 0;
    mainmem[121] = 0;
    mainmem[122] = 0;
    mainmem[123] = 0;
    mainmem[124] = 0;
    mainmem[125] = 0;
    mainmem[126] = 0;
    mainmem[127] = 0;
    mainmem[128] = 0;
    mainmem[129] = 0;
    mainmem[130] = 0;
    mainmem[131] = 0;
    mainmem[132] = 0;
    mainmem[133] = 0;
    mainmem[134] = 0;
    mainmem[135] = 0;
    mainmem[136] = 0;
    mainmem[137] = 0;
    mainmem[138] = 0;
    mainmem[139] = 0;
    mainmem[140] = 0;
    mainmem[141] = 0;
    mainmem[142] = 0;
    mainmem[143] = 0;
    mainmem[144] = 0;
    mainmem[145] = 0;
    mainmem[146] = 0;
    mainmem[147] = 0;
    mainmem[148] = 0;
    mainmem[149] = 0;
    mainmem[150] = 0;
    mainmem[151] = 0;
    mainmem[152] = 0;
    mainmem[153] = 0;
    mainmem[154] = 0;
    mainmem[155] = 0;
    mainmem[156] = 0;
    mainmem[157] = 0;
    mainmem[158] = 0;
    mainmem[159] = 0;
    mainmem[160] = 0;
    mainmem[161] = 0;
    mainmem[162] = 0;
    mainmem[163] = 0;
    mainmem[164] = 0;
    mainmem[165] = 0;
    mainmem[166] = 0;
    mainmem[167] = 0;
    mainmem[168] = 0;
    mainmem[169] = 0;
    mainmem[170] = 0;
    mainmem[171] = 0;
    mainmem[172] = 0;
    mainmem[173] = 0;
    mainmem[174] = 0;
    mainmem[175] = 0;
    mainmem[176] = 0;
    mainmem[177] = 0;
    mainmem[178] = 0;
    mainmem[179] = 0;
    mainmem[180] = 0;
    mainmem[181] = 0;
    mainmem[182] = 0;
    mainmem[183] = 0;
    mainmem[184] = 0;
    mainmem[185] = 0;
    mainmem[186] = 0;
    mainmem[187] = 0;
    mainmem[188] = 0;
    mainmem[189] = 0;
    mainmem[190] = 0;
    mainmem[191] = 0;
    mainmem[192] = 0;
    mainmem[193] = 0;
    mainmem[194] = 0;
    mainmem[195] = 0;
    mainmem[196] = 0;
    mainmem[197] = 0;
    mainmem[198] = 0;
    mainmem[199] = 0;
    mainmem[200] = 0;
    mainmem[201] = 0;
    mainmem[202] = 0;
    mainmem[203] = 0;
    mainmem[204] = 0;
    mainmem[205] = 0;
    mainmem[206] = 0;
    mainmem[207] = 0;
    mainmem[208] = 0;
    mainmem[209] = 0;
    mainmem[210] = 0;
    mainmem[211] = 0;
    mainmem[212] = 0;
    mainmem[213] = 0;
    mainmem[214] = 0;
    mainmem[215] = 0;
    mainmem[216] = 0;
    mainmem[217] = 0;
    mainmem[218] = 0;
    mainmem[219] = 0;
    mainmem[220] = 0;
    mainmem[221] = 0;
    mainmem[222] = 0;
    mainmem[223] = 0;
    mainmem[224] = 0;
    mainmem[225] = 0;
    mainmem[226] = 0;
    mainmem[227] = 0;
    mainmem[228] = 0;
    mainmem[229] = 0;
    mainmem[230] = 0;
    mainmem[231] = 0;
    mainmem[232] = 0;
    mainmem[233] = 0;
    mainmem[234] = 0;
    mainmem[235] = 0;
    mainmem[236] = 0;
    mainmem[237] = 0;
    mainmem[238] = 0;
    mainmem[239] = 0;
    mainmem[240] = 0;
    mainmem[241] = 0;
    mainmem[242] = 0;
    mainmem[243] = 0;
    mainmem[244] = 0;
    mainmem[245] = 0;
    mainmem[246] = 0;
    mainmem[247] = 0;
    mainmem[248] = 0;
    mainmem[249] = 0;
    mainmem[250] = 0;
    mainmem[251] = 0;
    mainmem[252] = 0;
    mainmem[253] = 0;
    mainmem[254] = 0;
    mainmem[255] = 0;
end
always @(posedge m_clock)
  begin
   if (_tut11_2cpu_mwrite )
     mainmem[_net_16] <= _tut11_2cpu_data;
end
endmodule

// synthesis translate_on
// synopsys translate_on

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Wed Apr 22 14:16:52 2026
 Licensed to :EVALUATION USER*/

/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Wed Apr 22 14:16:52 2026
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

	tut11_2 tut11_2_instance(
		.p_reset(p_reset),
		.m_clock(m_clock)
	);

	initial forever #(tCYC/2) m_clock = ~m_clock;

	initial begin
		$dumpfile("tut11_2.vcd");
		$dumpvars(0,tut11_2_instance);
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
