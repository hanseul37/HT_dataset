/* Generated by Yosys 0.32+74 (git sha1 b739213d9, x86_64-w64-mingw32-g++ 9.2.1 -Os) */

(* src = "clk_40MHz.v:3.1-79.10" *)
module clk_40MHz(clk_in, clk_out);
  (* src = "clk_40MHz.v:4.10-4.16" *)
  input clk_in;
  wire clk_in;
  (* src = "clk_40MHz.v:5.10-5.17" *)
  output clk_out;
  wire clk_out;
  assign clk_out = clk_in;
endmodule

(* src = "vga_controller.v:3.1-130.10" *)
module vga_controller(reset, clk, h_sync_out, v_sync_out, rgb_out);
  (* src = "vga_controller.v:68.2-82.5" *)
  wire _00_;
  (* src = "vga_controller.v:102.2-111.5" *)
  wire _01_;
  (* src = "vga_controller.v:52.2-66.5" *)
  wire [9:0] _02_;
  (* src = "vga_controller.v:84.2-100.5" *)
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  (* src = "vga_controller.v:28.6-28.11" *)
  wire blank;
  (* src = "vga_controller.v:13.11-13.14" *)
  input clk;
  wire clk;
  (* src = "vga_controller.v:21.13-21.22" *)
  (* unused_bits = "0 1 2 3" *)
  wire [10:0] h_counter;
  (* src = "vga_controller.v:19.6-19.14" *)
  wire h_period;
  (* src = "vga_controller.v:24.6-24.12" *)
  reg h_sync;
  (* src = "vga_controller.v:14.10-14.20" *)
  output h_sync_out;
  wire h_sync_out;
  (* src = "vga_controller.v:29.6-29.12" *)
  reg pblank;
  (* src = "vga_controller.v:12.11-12.16" *)
  input reset;
  wire reset;
  reg rgb;
  (* src = "vga_controller.v:16.16-16.23" *)
  output [2:0] rgb_out;
  wire [2:0] rgb_out;
  (* src = "vga_controller.v:22.13-22.22" *)
  reg [9:0] v_counter;
  (* src = "vga_controller.v:20.6-20.14" *)
  wire v_period;
  (* src = "vga_controller.v:25.6-25.12" *)
  reg v_sync;
  (* src = "vga_controller.v:15.10-15.20" *)
  output v_sync_out;
  wire v_sync_out;
  iv1v0x05 _19_ (
    .a(reset),
    .z(_01_)
  );
  or2v0x05 _20_ (
    .a(v_counter[7]),
    .b(v_counter[8]),
    .z(_08_)
  );
  aon21v0x05 _21_ (
    .a1(v_counter[3]),
    .a2(v_counter[4]),
    .b(v_counter[5]),
    .z(_09_)
  );
  aoi21v0x05 _22_ (
    .a1(v_counter[6]),
    .a2(_09_),
    .b(_08_),
    .z(_10_)
  );
  nd2v0x05 _23_ (
    .a(v_counter[9]),
    .b(_01_),
    .z(_11_)
  );
  nr2v0x05 _24_ (
    .a(_10_),
    .b(_11_),
    .z(_03_)
  );
  nr3abv0x05 _25_ (
    .a(h_counter[9]),
    .b(h_counter[8]),
    .c(h_counter[10]),
    .z(_12_)
  );
  nr2v0x05 _26_ (
    .a(reset),
    .b(h_counter[7]),
    .z(_13_)
  );
  oai211v0x05 _27_ (
    .a1(h_counter[6]),
    .a2(h_counter[5]),
    .b(_12_),
    .c(_13_),
    .z(_14_)
  );
  aoi31v0x05 _28_ (
    .a1(h_counter[6]),
    .a2(h_counter[4]),
    .a3(h_counter[5]),
    .b(_14_),
    .z(_00_)
  );
  or4v0x05 _29_ (
    .a(v_counter[1]),
    .b(v_counter[0]),
    .c(v_counter[2]),
    .d(v_counter[5]),
    .z(_15_)
  );
  nd3abv0x05 _30_ (
    .a(v_counter[4]),
    .b(v_counter[9]),
    .c(_01_),
    .z(_16_)
  );
  or2v0x05 _31_ (
    .a(v_counter[3]),
    .b(v_counter[6]),
    .z(_17_)
  );
  nr4v1x05 _32_ (
    .a(_08_),
    .b(_15_),
    .c(_16_),
    .d(_17_),
    .z(_02_[0])
  );
  aoi21a2v0x05 _33_ (
    .a1(clk),
    .a2(pblank),
    .b(reset),
    .z(_04_)
  );
  nr2v0x05 _34_ (
    .a(reset),
    .b(clk),
    .z(_05_)
  );
  nr2v0x05 _35_ (
    .a(reset),
    .b(h_sync),
    .z(_07_)
  );
  aoi31v0x05 _36_ (
    .a1(v_counter[6]),
    .a2(_09_),
    .a3(_15_),
    .b(_08_),
    .z(_18_)
  );
  oai22v0x05 _37_ (
    .a1(reset),
    .a2(h_sync),
    .b1(_11_),
    .b2(_18_),
    .z(_06_)
  );
  (* src = "vga_controller.v:113.2-124.5" *)
  always @*
    if (!_04_) rgb = _01_;
  (* src = "vga_controller.v:102.2-111.5" *)
  always @*
    if (!_05_) pblank = _01_;
  (* src = "vga_controller.v:84.2-100.5" *)
  always @*
    if (!_06_) v_sync = _03_;
  (* src = "vga_controller.v:68.2-82.5" *)
  always @*
    if (!_05_) h_sync = _00_;
  (* src = "vga_controller.v:52.2-66.5" *)
  always @*
    if (!_07_) v_counter[0] = _02_[0];
  (* src = "vga_controller.v:52.2-66.5" *)
  always @*
    if (!_07_) v_counter[1] = 1'h0;
  (* src = "vga_controller.v:52.2-66.5" *)
  always @*
    if (!_07_) v_counter[2] = 1'h0;
  (* src = "vga_controller.v:52.2-66.5" *)
  always @*
    if (!_07_) v_counter[3] = 1'h0;
  (* src = "vga_controller.v:52.2-66.5" *)
  always @*
    if (!_07_) v_counter[4] = 1'h0;
  (* src = "vga_controller.v:52.2-66.5" *)
  always @*
    if (!_07_) v_counter[5] = 1'h0;
  (* src = "vga_controller.v:52.2-66.5" *)
  always @*
    if (!_07_) v_counter[6] = 1'h0;
  (* src = "vga_controller.v:52.2-66.5" *)
  always @*
    if (!_07_) v_counter[7] = 1'h0;
  (* src = "vga_controller.v:52.2-66.5" *)
  always @*
    if (!_07_) v_counter[8] = 1'h0;
  (* src = "vga_controller.v:52.2-66.5" *)
  always @*
    if (!_07_) v_counter[9] = 1'h0;
  reg \h_counter_reg[4] ;
  (* src = "vga_controller.v:32.2-50.5" *)
  always @*
    if (!_05_) \h_counter_reg[4]  = 1'h0;
  assign h_counter[4] = \h_counter_reg[4] ;
  reg \h_counter_reg[5] ;
  (* src = "vga_controller.v:32.2-50.5" *)
  always @*
    if (!_05_) \h_counter_reg[5]  = 1'h0;
  assign h_counter[5] = \h_counter_reg[5] ;
  reg \h_counter_reg[6] ;
  (* src = "vga_controller.v:32.2-50.5" *)
  always @*
    if (!_05_) \h_counter_reg[6]  = 1'h0;
  assign h_counter[6] = \h_counter_reg[6] ;
  reg \h_counter_reg[7] ;
  (* src = "vga_controller.v:32.2-50.5" *)
  always @*
    if (!_05_) \h_counter_reg[7]  = 1'h0;
  assign h_counter[7] = \h_counter_reg[7] ;
  reg \h_counter_reg[8] ;
  (* src = "vga_controller.v:32.2-50.5" *)
  always @*
    if (!_05_) \h_counter_reg[8]  = 1'h0;
  assign h_counter[8] = \h_counter_reg[8] ;
  reg \h_counter_reg[9] ;
  (* src = "vga_controller.v:32.2-50.5" *)
  always @*
    if (!_05_) \h_counter_reg[9]  = 1'h0;
  assign h_counter[9] = \h_counter_reg[9] ;
  reg \h_counter_reg[10] ;
  (* src = "vga_controller.v:32.2-50.5" *)
  always @*
    if (!_05_) \h_counter_reg[10]  = 1'h0;
  assign h_counter[10] = \h_counter_reg[10] ;
  assign _02_[9:1] = 9'h000;
  assign blank = 1'h1;
  assign h_period = 1'h0;
  assign h_sync_out = h_sync;
  assign rgb_out = { 2'h0, rgb };
  assign v_period = 1'h1;
  assign v_sync_out = v_sync;
endmodule

(* src = "vga_main.v:3.1-23.10" *)
module vga_main(reset, clk, h_sync, v_sync, rgb);
  (* src = "vga_main.v:5.9-5.12" *)
  input clk;
  wire clk;
  (* src = "vga_main.v:10.8-10.16" *)
  wire clk_temp;
  (* src = "vga_main.v:6.10-6.16" *)
  output h_sync;
  wire h_sync;
  (* src = "vga_main.v:4.9-4.14" *)
  input reset;
  wire reset;
  (* src = "vga_main.v:8.16-8.19" *)
  output [2:0] rgb;
  wire [2:0] rgb;
  (* src = "vga_main.v:7.10-7.16" *)
  output v_sync;
  wire v_sync;
  (* module_not_derived = 32'd1 *)
  (* src = "vga_main.v:19.14-21.24" *)
  clk_40MHz clock (
    .clk_in(clk),
    .clk_out(clk_temp)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "vga_main.v:12.18-17.19" *)
  vga_controller ctrl (
    .clk(clk_temp),
    .h_sync_out(h_sync),
    .reset(reset),
    .rgb_out(rgb),
    .v_sync_out(v_sync)
  );
endmodule