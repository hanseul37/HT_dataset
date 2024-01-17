/* Generated by Yosys 0.32+74 (git sha1 b739213d9, x86_64-w64-mingw32-g++ 9.2.1 -Os) */

(* src = "u_rec.v:5.1-165.10" *)
module u_rec(sys_rst_l, sys_clk, uart_dataH, rec_dataH, rec_readyH);
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  (* src = "u_rec.v:32.12-32.25" *)
  wire [3:0] bitCell_cntrH;
  (* src = "u_rec.v:34.12-34.21" *)
  wire [7:0] par_dataH;
  (* src = "u_rec.v:31.8-31.16" *)
  wire rec_datH;
  (* src = "u_rec.v:31.18-31.30" *)
  wire rec_datSyncH;
  (* src = "u_rec.v:25.14-25.23" *)
  output [7:0] rec_dataH;
  wire [7:0] rec_dataH;
  (* src = "u_rec.v:26.10-26.20" *)
  output rec_readyH;
  wire rec_readyH;
  (* src = "u_rec.v:36.12-36.25" *)
  wire [3:0] recd_bitCntrH;
  (* onehot = 32'd1 *)
  wire [4:0] state;
  (* src = "u_rec.v:21.9-21.16" *)
  input sys_clk;
  wire sys_clk;
  (* src = "u_rec.v:20.9-20.18" *)
  input sys_rst_l;
  wire sys_rst_l;
  (* src = "u_rec.v:23.9-23.19" *)
  input uart_dataH;
  wire uart_dataH;
  iv1v0x05 _070_ (
    .a(rec_datH),
    .z(_034_)
  );
  iv1v0x05 _071_ (
    .a(recd_bitCntrH[1]),
    .z(_035_)
  );
  iv1v0x05 _072_ (
    .a(sys_rst_l),
    .z(_036_)
  );
  nd3v0x05 _073_ (
    .a(_034_),
    .b(sys_rst_l),
    .c(state[0]),
    .z(_037_)
  );
  nr2v0x05 _074_ (
    .a(bitCell_cntrH[0]),
    .b(bitCell_cntrH[1]),
    .z(_038_)
  );
  nr3v0x05 _075_ (
    .a(bitCell_cntrH[3]),
    .b(bitCell_cntrH[0]),
    .c(bitCell_cntrH[1]),
    .z(_039_)
  );
  an2v0x05 _076_ (
    .a(bitCell_cntrH[2]),
    .b(_039_),
    .z(_040_)
  );
  nd2v0x05 _077_ (
    .a(sys_rst_l),
    .b(state[2]),
    .z(_041_)
  );
  oai21v0x05 _078_ (
    .a1(_040_),
    .a2(_041_),
    .b(_037_),
    .z(_003_)
  );
  nd4v0x05 _079_ (
    .a(_034_),
    .b(sys_rst_l),
    .c(state[2]),
    .d(_040_),
    .z(_042_)
  );
  an2v0x05 _080_ (
    .a(bitCell_cntrH[3]),
    .b(bitCell_cntrH[2]),
    .z(_043_)
  );
  nr2av0x1 _081_ (
    .a(bitCell_cntrH[1]),
    .b(bitCell_cntrH[0]),
    .z(_044_)
  );
  aoi21bv0x05 _082_ (
    .a1(_043_),
    .a2(_044_),
    .b(state[4]),
    .z(_045_)
  );
  oai21v0x05 _083_ (
    .a1(state[1]),
    .a2(_045_),
    .b(sys_rst_l),
    .z(_046_)
  );
  nd2v0x05 _084_ (
    .a(_042_),
    .b(_046_),
    .z(_004_)
  );
  nr2v0x05 _085_ (
    .a(_036_),
    .b(state[3]),
    .z(_047_)
  );
  aoi21v0x05 _086_ (
    .a1(state[2]),
    .a2(_040_),
    .b(state[0]),
    .z(_048_)
  );
  oai21v0x05 _087_ (
    .a1(_034_),
    .a2(_048_),
    .b(_047_),
    .z(_002_)
  );
  nr2v0x05 _088_ (
    .a(recd_bitCntrH[1]),
    .b(recd_bitCntrH[0]),
    .z(_049_)
  );
  nr3abv0x05 _089_ (
    .a(recd_bitCntrH[3]),
    .b(_049_),
    .c(recd_bitCntrH[2]),
    .z(_050_)
  );
  nd4v0x05 _090_ (
    .a(sys_rst_l),
    .b(state[4]),
    .c(_043_),
    .d(_044_),
    .z(_051_)
  );
  nr2v0x05 _091_ (
    .a(_050_),
    .b(_051_),
    .z(_000_)
  );
  nr2av0x1 _092_ (
    .a(_050_),
    .b(_051_),
    .z(_001_)
  );
  nd2av0x05 _093_ (
    .a(uart_dataH),
    .b(sys_rst_l),
    .z(_005_)
  );
  nr3v0x05 _094_ (
    .a(state[2]),
    .b(state[4]),
    .c(state[3]),
    .z(_052_)
  );
  nr4v1x05 _095_ (
    .a(state[2]),
    .b(state[0]),
    .c(state[4]),
    .d(state[3]),
    .z(_053_)
  );
  nd2av0x05 _096_ (
    .a(state[1]),
    .b(rec_datH),
    .z(_054_)
  );
  nr2av0x1 _097_ (
    .a(_052_),
    .b(_054_),
    .z(_055_)
  );
  aoi21bv0x05 _098_ (
    .a1(state[0]),
    .a2(_054_),
    .b(_052_),
    .z(_056_)
  );
  oai21v0x05 _099_ (
    .a1(recd_bitCntrH[0]),
    .a2(_053_),
    .b(sys_rst_l),
    .z(_057_)
  );
  aoi21v0x05 _100_ (
    .a1(recd_bitCntrH[0]),
    .a2(_056_),
    .b(_057_),
    .z(_006_)
  );
  an2v0x05 _101_ (
    .a(recd_bitCntrH[1]),
    .b(recd_bitCntrH[0]),
    .z(_058_)
  );
  nd2av0x05 _102_ (
    .a(_049_),
    .b(_053_),
    .z(_059_)
  );
  oai22v0x05 _103_ (
    .a1(_035_),
    .a2(_056_),
    .b1(_058_),
    .b2(_059_),
    .z(_060_)
  );
  an2v0x05 _104_ (
    .a(sys_rst_l),
    .b(_060_),
    .z(_007_)
  );
  nd3v0x05 _105_ (
    .a(recd_bitCntrH[2]),
    .b(recd_bitCntrH[1]),
    .c(recd_bitCntrH[0]),
    .z(_061_)
  );
  nd2v0x05 _106_ (
    .a(_053_),
    .b(_061_),
    .z(_062_)
  );
  aoi21v0x05 _107_ (
    .a1(_053_),
    .a2(_058_),
    .b(recd_bitCntrH[2]),
    .z(_063_)
  );
  aoi112v0x05 _108_ (
    .a(_036_),
    .b(_063_),
    .c1(_062_),
    .c2(_056_),
    .z(_008_)
  );
  nd3v0x05 _109_ (
    .a(recd_bitCntrH[3]),
    .b(_056_),
    .c(_062_),
    .z(_064_)
  );
  aoi21a2v0x05 _110_ (
    .a1(_053_),
    .a2(_061_),
    .b(recd_bitCntrH[3]),
    .z(_065_)
  );
  nr3abv0x05 _111_ (
    .a(sys_rst_l),
    .b(_064_),
    .c(_065_),
    .z(_009_)
  );
  mxi2v0x05 _112_ (
    .a0(par_dataH[0]),
    .a1(par_dataH[1]),
    .s(_053_),
    .z(_066_)
  );
  nr2v0x05 _113_ (
    .a(_036_),
    .b(_066_),
    .z(_010_)
  );
  mxi2v0x05 _114_ (
    .a0(par_dataH[1]),
    .a1(par_dataH[2]),
    .s(_053_),
    .z(_067_)
  );
  nr2v0x05 _115_ (
    .a(_036_),
    .b(_067_),
    .z(_011_)
  );
  mxi2v0x05 _116_ (
    .a0(par_dataH[2]),
    .a1(par_dataH[3]),
    .s(_053_),
    .z(_068_)
  );
  nr2v0x05 _117_ (
    .a(_036_),
    .b(_068_),
    .z(_012_)
  );
  mxi2v0x05 _118_ (
    .a0(par_dataH[3]),
    .a1(par_dataH[4]),
    .s(_053_),
    .z(_069_)
  );
  nr2v0x05 _119_ (
    .a(_036_),
    .b(_069_),
    .z(_013_)
  );
  mxi2v0x05 _120_ (
    .a0(par_dataH[4]),
    .a1(par_dataH[5]),
    .s(_053_),
    .z(_024_)
  );
  nr2v0x05 _121_ (
    .a(_036_),
    .b(_024_),
    .z(_014_)
  );
  mxi2v0x05 _122_ (
    .a0(par_dataH[5]),
    .a1(par_dataH[6]),
    .s(_053_),
    .z(_025_)
  );
  nr2v0x05 _123_ (
    .a(_036_),
    .b(_025_),
    .z(_015_)
  );
  mxi2v0x05 _124_ (
    .a0(par_dataH[6]),
    .a1(par_dataH[7]),
    .s(_053_),
    .z(_026_)
  );
  nr2v0x05 _125_ (
    .a(_036_),
    .b(_026_),
    .z(_016_)
  );
  mxi2v0x05 _126_ (
    .a0(par_dataH[7]),
    .a1(rec_datH),
    .s(_053_),
    .z(_027_)
  );
  nr2v0x05 _127_ (
    .a(_036_),
    .b(_027_),
    .z(_017_)
  );
  oan21bv0x05 _128_ (
    .a1(state[3]),
    .a2(_055_),
    .b(_036_),
    .z(_018_)
  );
  aoi21v0x05 _129_ (
    .a1(bitCell_cntrH[2]),
    .a2(_039_),
    .b(state[4]),
    .z(_028_)
  );
  nr2v0x05 _130_ (
    .a(state[0]),
    .b(state[1]),
    .z(_029_)
  );
  oai211v0x05 _131_ (
    .a1(_045_),
    .a2(_028_),
    .b(_029_),
    .c(_047_),
    .z(_030_)
  );
  nr2v0x05 _132_ (
    .a(bitCell_cntrH[0]),
    .b(_030_),
    .z(_019_)
  );
  an2v0x05 _133_ (
    .a(bitCell_cntrH[0]),
    .b(bitCell_cntrH[1]),
    .z(_031_)
  );
  nr3v0x05 _134_ (
    .a(_038_),
    .b(_030_),
    .c(_031_),
    .z(_020_)
  );
  xnr2v0x05 _135_ (
    .a(bitCell_cntrH[2]),
    .b(_031_),
    .z(_032_)
  );
  nr2v0x05 _136_ (
    .a(_030_),
    .b(_032_),
    .z(_021_)
  );
  xaoi21v0x05 _137_ (
    .a1(bitCell_cntrH[2]),
    .a2(_031_),
    .b(bitCell_cntrH[3]),
    .z(_033_)
  );
  nr2v0x05 _138_ (
    .a(_030_),
    .b(_033_),
    .z(_022_)
  );
  nd2av0x05 _139_ (
    .a(rec_datSyncH),
    .b(sys_rst_l),
    .z(_023_)
  );
  dfnt1v0x2 _140_ (
    .cp(sys_clk),
    .d(_002_),
    .z(state[0])
  );
  dfnt1v0x2 _141_ (
    .cp(sys_clk),
    .d(_000_),
    .z(state[1])
  );
  dfnt1v0x2 _142_ (
    .cp(sys_clk),
    .d(_003_),
    .z(state[2])
  );
  dfnt1v0x2 _143_ (
    .cp(sys_clk),
    .d(_001_),
    .z(state[3])
  );
  dfnt1v0x2 _144_ (
    .cp(sys_clk),
    .d(_004_),
    .z(state[4])
  );
  (* src = "u_rec.v:48.1-55.6" *)
  dfnt1v0x2 _145_ (
    .cp(sys_clk),
    .d(_005_),
    .z(rec_datSyncH)
  );
  (* src = "u_rec.v:72.1-75.42" *)
  dfnt1v0x2 _146_ (
    .cp(sys_clk),
    .d(_006_),
    .z(recd_bitCntrH[0])
  );
  (* src = "u_rec.v:72.1-75.42" *)
  dfnt1v0x2 _147_ (
    .cp(sys_clk),
    .d(_007_),
    .z(recd_bitCntrH[1])
  );
  (* src = "u_rec.v:72.1-75.42" *)
  dfnt1v0x2 _148_ (
    .cp(sys_clk),
    .d(_008_),
    .z(recd_bitCntrH[2])
  );
  (* src = "u_rec.v:72.1-75.42" *)
  dfnt1v0x2 _149_ (
    .cp(sys_clk),
    .d(_009_),
    .z(recd_bitCntrH[3])
  );
  (* src = "u_rec.v:64.1-69.6" *)
  dfnt1v0x2 _150_ (
    .cp(sys_clk),
    .d(_010_),
    .z(par_dataH[0])
  );
  (* src = "u_rec.v:64.1-69.6" *)
  dfnt1v0x2 _151_ (
    .cp(sys_clk),
    .d(_011_),
    .z(par_dataH[1])
  );
  (* src = "u_rec.v:64.1-69.6" *)
  dfnt1v0x2 _152_ (
    .cp(sys_clk),
    .d(_012_),
    .z(par_dataH[2])
  );
  (* src = "u_rec.v:64.1-69.6" *)
  dfnt1v0x2 _153_ (
    .cp(sys_clk),
    .d(_013_),
    .z(par_dataH[3])
  );
  (* src = "u_rec.v:64.1-69.6" *)
  dfnt1v0x2 _154_ (
    .cp(sys_clk),
    .d(_014_),
    .z(par_dataH[4])
  );
  (* src = "u_rec.v:64.1-69.6" *)
  dfnt1v0x2 _155_ (
    .cp(sys_clk),
    .d(_015_),
    .z(par_dataH[5])
  );
  (* src = "u_rec.v:64.1-69.6" *)
  dfnt1v0x2 _156_ (
    .cp(sys_clk),
    .d(_016_),
    .z(par_dataH[6])
  );
  (* src = "u_rec.v:64.1-69.6" *)
  dfnt1v0x2 _157_ (
    .cp(sys_clk),
    .d(_017_),
    .z(par_dataH[7])
  );
  (* src = "u_rec.v:158.1-160.35" *)
  dfnt1v0x2 _158_ (
    .cp(sys_clk),
    .d(_018_),
    .z(rec_readyH)
  );
  (* src = "u_rec.v:58.1-61.43" *)
  dfnt1v0x2 _159_ (
    .cp(sys_clk),
    .d(_019_),
    .z(bitCell_cntrH[0])
  );
  (* src = "u_rec.v:58.1-61.43" *)
  dfnt1v0x2 _160_ (
    .cp(sys_clk),
    .d(_020_),
    .z(bitCell_cntrH[1])
  );
  (* src = "u_rec.v:58.1-61.43" *)
  dfnt1v0x2 _161_ (
    .cp(sys_clk),
    .d(_021_),
    .z(bitCell_cntrH[2])
  );
  (* src = "u_rec.v:58.1-61.43" *)
  dfnt1v0x2 _162_ (
    .cp(sys_clk),
    .d(_022_),
    .z(bitCell_cntrH[3])
  );
  (* src = "u_rec.v:48.1-55.6" *)
  dfnt1v0x2 _163_ (
    .cp(sys_clk),
    .d(_023_),
    .z(rec_datH)
  );
  assign rec_dataH = par_dataH;
endmodule

(* src = "u_xmit.v:3.1-235.10" *)
module u_xmit(sys_clk, sys_rst_l, uart_xmitH, xmitH, xmit_dataH, xmit_doneH);
  wire _00_;
  wire _01_;
  wire _02_;
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
  wire _19_;
  wire _20_;
  wire _21_;
  wire _22_;
  wire _23_;
  wire _24_;
  wire _25_;
  wire _26_;
  wire _27_;
  wire _28_;
  wire _29_;
  wire _30_;
  wire _31_;
  wire _32_;
  wire _33_;
  wire _34_;
  wire _35_;
  wire _36_;
  wire _37_;
  wire _38_;
  (* src = "u_xmit.v:39.16-39.28" *)
  wire DataSend_ena;
  (* src = "u_xmit.v:28.12-28.25" *)
  wire [3:0] bitCell_cntrH;
  (* src = "u_xmit.v:31.12-31.21" *)
  wire [3:0] bitCountH;
  (* onehot = 32'd1 *)
  wire [4:0] state;
  (* onehot = 32'd1 *)
  wire [4:0] state_DataSend;
  (* src = "u_xmit.v:15.9-15.16" *)
  input sys_clk;
  wire sys_clk;
  (* src = "u_xmit.v:16.9-16.18" *)
  input sys_rst_l;
  wire sys_rst_l;
  (* src = "u_xmit.v:18.10-18.20" *)
  output uart_xmitH;
  wire uart_xmitH;
  (* src = "u_xmit.v:19.9-19.14" *)
  input xmitH;
  wire xmitH;
  (* src = "u_xmit.v:30.12-30.26" *)
  wire [7:0] xmit_ShiftRegH;
  (* src = "u_xmit.v:20.13-20.23" *)
  input [7:0] xmit_dataH;
  wire [7:0] xmit_dataH;
  (* src = "u_xmit.v:21.10-21.20" *)
  output xmit_doneH;
  wire xmit_doneH;
  iv1v0x05 _39_ (
    .a(DataSend_ena),
    .z(_12_)
  );
  iv1v0x05 _40_ (
    .a(state[0]),
    .z(_13_)
  );
  nr2av0x1 _41_ (
    .a(xmit_dataH[0]),
    .b(xmit_dataH[1]),
    .z(_14_)
  );
  nr2av0x1 _42_ (
    .a(xmit_dataH[4]),
    .b(xmit_dataH[5]),
    .z(_15_)
  );
  nr3av0x05 _43_ (
    .a(xmit_dataH[6]),
    .b(xmit_dataH[7]),
    .c(xmit_dataH[3]),
    .z(_16_)
  );
  nd4v0x05 _44_ (
    .a(xmit_dataH[2]),
    .b(_14_),
    .c(_15_),
    .d(_16_),
    .z(_17_)
  );
  nd2v0x05 _45_ (
    .a(state_DataSend[2]),
    .b(_17_),
    .z(_18_)
  );
  nd4v0x05 _46_ (
    .a(xmit_dataH[5]),
    .b(xmit_dataH[4]),
    .c(xmit_dataH[6]),
    .d(xmit_dataH[7]),
    .z(_19_)
  );
  nd4v0x05 _47_ (
    .a(xmit_dataH[1]),
    .b(xmit_dataH[0]),
    .c(xmit_dataH[2]),
    .d(xmit_dataH[3]),
    .z(_20_)
  );
  nr2v0x05 _48_ (
    .a(_19_),
    .b(_20_),
    .z(_21_)
  );
  oai21v0x05 _49_ (
    .a1(_19_),
    .a2(_20_),
    .b(state_DataSend[3]),
    .z(_22_)
  );
  nd2av0x05 _50_ (
    .a(xmit_dataH[0]),
    .b(xmit_dataH[1]),
    .z(_23_)
  );
  nd2av0x05 _51_ (
    .a(xmit_dataH[4]),
    .b(xmit_dataH[5]),
    .z(_24_)
  );
  nr4v1x05 _52_ (
    .a(xmit_dataH[2]),
    .b(xmit_dataH[3]),
    .c(xmit_dataH[6]),
    .d(xmit_dataH[7]),
    .z(_25_)
  );
  nd3abv0x05 _53_ (
    .a(_23_),
    .b(_24_),
    .c(_25_),
    .z(_26_)
  );
  aoi21bv0x05 _54_ (
    .a1(state_DataSend[1]),
    .a2(_26_),
    .b(_22_),
    .z(_27_)
  );
  nd3av0x05 _55_ (
    .a(xmit_dataH[6]),
    .b(xmit_dataH[7]),
    .c(xmit_dataH[3]),
    .z(_28_)
  );
  nr4v1x05 _56_ (
    .a(xmit_dataH[2]),
    .b(_23_),
    .c(_24_),
    .d(_28_),
    .z(_29_)
  );
  nd3v0x05 _57_ (
    .a(_14_),
    .b(_15_),
    .c(_25_),
    .z(_30_)
  );
  an4v0x05 _58_ (
    .a(state_DataSend[4]),
    .b(_14_),
    .c(_15_),
    .d(_25_),
    .z(_31_)
  );
  aoi21a2v0x05 _59_ (
    .a1(state_DataSend[0]),
    .a2(_29_),
    .b(_31_),
    .z(_32_)
  );
  nd4v0x05 _60_ (
    .a(sys_rst_l),
    .b(_18_),
    .c(_27_),
    .d(_32_),
    .z(_08_)
  );
  aoi22v0x05 _61_ (
    .a1(state_DataSend[3]),
    .a2(_21_),
    .b1(_30_),
    .b2(state_DataSend[4]),
    .z(_33_)
  );
  nr2av0x1 _62_ (
    .a(sys_rst_l),
    .b(_33_),
    .z(_09_)
  );
  aoi22v0x05 _63_ (
    .a1(_12_),
    .a2(state[1]),
    .b1(state[0]),
    .b2(xmitH),
    .z(_34_)
  );
  nr2av0x1 _64_ (
    .a(sys_rst_l),
    .b(_34_),
    .z(_07_)
  );
  nd2v0x05 _65_ (
    .a(_12_),
    .b(state[4]),
    .z(_35_)
  );
  oai211v0x05 _66_ (
    .a1(_13_),
    .a2(xmitH),
    .b(_35_),
    .c(sys_rst_l),
    .z(_06_)
  );
  oai21bv0x05 _67_ (
    .a1(state[0]),
    .a2(state[2]),
    .b(state[4]),
    .z(_36_)
  );
  aoi21v0x05 _68_ (
    .a1(_35_),
    .a2(_36_),
    .b(state[3]),
    .z(uart_xmitH)
  );
  nr3abv0x05 _69_ (
    .a(sys_rst_l),
    .b(state_DataSend[2]),
    .c(_17_),
    .z(_03_)
  );
  an3v0x05 _70_ (
    .a(state_DataSend[0]),
    .b(sys_rst_l),
    .c(_29_),
    .z(_04_)
  );
  nr3abv0x05 _71_ (
    .a(sys_rst_l),
    .b(state_DataSend[1]),
    .c(_26_),
    .z(_05_)
  );
  nr2v0x05 _72_ (
    .a(state[1]),
    .b(state[4]),
    .z(_37_)
  );
  nr3abv0x05 _73_ (
    .a(DataSend_ena),
    .b(sys_rst_l),
    .c(_37_),
    .z(_02_)
  );
  an2v0x05 _74_ (
    .a(sys_rst_l),
    .b(state[2]),
    .z(_00_)
  );
  an2v0x05 _75_ (
    .a(sys_rst_l),
    .b(state[3]),
    .z(_01_)
  );
  nd2v0x05 _76_ (
    .a(sys_rst_l),
    .b(_37_),
    .z(_38_)
  );
  nr4v1x05 _77_ (
    .a(xmitH),
    .b(state[2]),
    .c(state[3]),
    .d(_38_),
    .z(_10_)
  );
  oan21v0x05 _78_ (
    .a1(DataSend_ena),
    .a2(state_DataSend[4]),
    .b(sys_rst_l),
    .z(_11_)
  );
  dfnt1v0x2 _79_ (
    .cp(sys_clk),
    .d(_06_),
    .z(state[0])
  );
  dfnt1v0x2 _80_ (
    .cp(sys_clk),
    .d(_07_),
    .z(state[1])
  );
  dfnt1v0x2 _81_ (
    .cp(sys_clk),
    .d(_00_),
    .z(state[2])
  );
  dfnt1v0x2 _82_ (
    .cp(sys_clk),
    .d(_01_),
    .z(state[3])
  );
  dfnt1v0x2 _83_ (
    .cp(sys_clk),
    .d(_02_),
    .z(state[4])
  );
  (* src = "u_xmit.v:232.1-234.35" *)
  dfnt1v0x2 _84_ (
    .cp(sys_clk),
    .d(_10_),
    .z(xmit_doneH)
  );
  dfnt1v0x2 _85_ (
    .cp(xmitH),
    .d(_08_),
    .z(state_DataSend[0])
  );
  dfnt1v0x2 _86_ (
    .cp(xmitH),
    .d(_03_),
    .z(state_DataSend[1])
  );
  dfnt1v0x2 _87_ (
    .cp(xmitH),
    .d(_04_),
    .z(state_DataSend[2])
  );
  dfnt1v0x2 _88_ (
    .cp(xmitH),
    .d(_05_),
    .z(state_DataSend[3])
  );
  dfnt1v0x2 _89_ (
    .cp(xmitH),
    .d(_09_),
    .z(state_DataSend[4])
  );
  (* src = "u_xmit.v:185.3-187.59" *)
  dfnt1v0x2 _90_ (
    .cp(sys_clk),
    .d(_11_),
    .z(DataSend_ena)
  );
  assign bitCell_cntrH = 4'h0;
  assign bitCountH = 4'h0;
  assign xmit_ShiftRegH = 8'h00;
endmodule

(* src = "uart.v:2.1-77.10" *)
module uart(sys_clk, sys_rst_l, uart_XMIT_dataH, xmitH, xmit_dataH, xmit_doneH, uart_REC_dataH, rec_dataH, rec_readyH);
  wire _00_;
  wire _01_;
  wire _02_;
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
  (* src = "uart.v:28.14-28.23" *)
  output [7:0] rec_dataH;
  wire [7:0] rec_dataH;
  (* src = "uart.v:33.17-33.30" *)
  wire [7:0] rec_dataH_rec;
  (* src = "uart.v:32.17-32.31" *)
  wire [7:0] rec_dataH_temp;
  (* src = "uart.v:29.10-29.20" *)
  output rec_readyH;
  wire rec_readyH;
  (* src = "uart.v:18.9-18.16" *)
  input sys_clk;
  wire sys_clk;
  (* src = "uart.v:19.9-19.18" *)
  input sys_rst_l;
  wire sys_rst_l;
  (* src = "uart.v:27.9-27.23" *)
  input uart_REC_dataH;
  wire uart_REC_dataH;
  (* src = "uart.v:22.10-22.25" *)
  output uart_XMIT_dataH;
  wire uart_XMIT_dataH;
  (* src = "uart.v:23.9-23.14" *)
  input xmitH;
  wire xmitH;
  (* src = "uart.v:24.13-24.23" *)
  input [7:0] xmit_dataH;
  wire [7:0] xmit_dataH;
  (* src = "uart.v:25.10-25.20" *)
  output xmit_doneH;
  wire xmit_doneH;
  an2v0x05 _16_ (
    .a(rec_dataH_rec[0]),
    .b(sys_rst_l),
    .z(_00_)
  );
  an2v0x05 _17_ (
    .a(sys_rst_l),
    .b(rec_dataH_rec[1]),
    .z(_01_)
  );
  an2v0x05 _18_ (
    .a(sys_rst_l),
    .b(rec_dataH_rec[2]),
    .z(_02_)
  );
  an2v0x05 _19_ (
    .a(sys_rst_l),
    .b(rec_dataH_rec[3]),
    .z(_03_)
  );
  an2v0x05 _20_ (
    .a(sys_rst_l),
    .b(rec_dataH_rec[4]),
    .z(_04_)
  );
  an2v0x05 _21_ (
    .a(sys_rst_l),
    .b(rec_dataH_rec[5]),
    .z(_05_)
  );
  an2v0x05 _22_ (
    .a(sys_rst_l),
    .b(rec_dataH_rec[6]),
    .z(_06_)
  );
  an2v0x05 _23_ (
    .a(sys_rst_l),
    .b(rec_dataH_rec[7]),
    .z(_07_)
  );
  an2v0x05 _24_ (
    .a(sys_rst_l),
    .b(rec_dataH_temp[0]),
    .z(_08_)
  );
  an2v0x05 _25_ (
    .a(sys_rst_l),
    .b(rec_dataH_temp[1]),
    .z(_09_)
  );
  an2v0x05 _26_ (
    .a(sys_rst_l),
    .b(rec_dataH_temp[2]),
    .z(_10_)
  );
  an2v0x05 _27_ (
    .a(sys_rst_l),
    .b(rec_dataH_temp[3]),
    .z(_11_)
  );
  an2v0x05 _28_ (
    .a(sys_rst_l),
    .b(rec_dataH_temp[4]),
    .z(_12_)
  );
  an2v0x05 _29_ (
    .a(sys_rst_l),
    .b(rec_dataH_temp[5]),
    .z(_13_)
  );
  an2v0x05 _30_ (
    .a(sys_rst_l),
    .b(rec_dataH_temp[6]),
    .z(_14_)
  );
  an2v0x05 _31_ (
    .a(sys_rst_l),
    .b(rec_dataH_temp[7]),
    .z(_15_)
  );
  (* src = "uart.v:68.1-75.6" *)
  dfnt1v0x2 _32_ (
    .cp(rec_readyH),
    .d(_00_),
    .z(rec_dataH_temp[0])
  );
  (* src = "uart.v:68.1-75.6" *)
  dfnt1v0x2 _33_ (
    .cp(rec_readyH),
    .d(_01_),
    .z(rec_dataH_temp[1])
  );
  (* src = "uart.v:68.1-75.6" *)
  dfnt1v0x2 _34_ (
    .cp(rec_readyH),
    .d(_02_),
    .z(rec_dataH_temp[2])
  );
  (* src = "uart.v:68.1-75.6" *)
  dfnt1v0x2 _35_ (
    .cp(rec_readyH),
    .d(_03_),
    .z(rec_dataH_temp[3])
  );
  (* src = "uart.v:68.1-75.6" *)
  dfnt1v0x2 _36_ (
    .cp(rec_readyH),
    .d(_04_),
    .z(rec_dataH_temp[4])
  );
  (* src = "uart.v:68.1-75.6" *)
  dfnt1v0x2 _37_ (
    .cp(rec_readyH),
    .d(_05_),
    .z(rec_dataH_temp[5])
  );
  (* src = "uart.v:68.1-75.6" *)
  dfnt1v0x2 _38_ (
    .cp(rec_readyH),
    .d(_06_),
    .z(rec_dataH_temp[6])
  );
  (* src = "uart.v:68.1-75.6" *)
  dfnt1v0x2 _39_ (
    .cp(rec_readyH),
    .d(_07_),
    .z(rec_dataH_temp[7])
  );
  (* src = "uart.v:58.1-65.6" *)
  dfnt1v0x2 _40_ (
    .cp(sys_clk),
    .d(_08_),
    .z(rec_dataH[0])
  );
  (* src = "uart.v:58.1-65.6" *)
  dfnt1v0x2 _41_ (
    .cp(sys_clk),
    .d(_09_),
    .z(rec_dataH[1])
  );
  (* src = "uart.v:58.1-65.6" *)
  dfnt1v0x2 _42_ (
    .cp(sys_clk),
    .d(_10_),
    .z(rec_dataH[2])
  );
  (* src = "uart.v:58.1-65.6" *)
  dfnt1v0x2 _43_ (
    .cp(sys_clk),
    .d(_11_),
    .z(rec_dataH[3])
  );
  (* src = "uart.v:58.1-65.6" *)
  dfnt1v0x2 _44_ (
    .cp(sys_clk),
    .d(_12_),
    .z(rec_dataH[4])
  );
  (* src = "uart.v:58.1-65.6" *)
  dfnt1v0x2 _45_ (
    .cp(sys_clk),
    .d(_13_),
    .z(rec_dataH[5])
  );
  (* src = "uart.v:58.1-65.6" *)
  dfnt1v0x2 _46_ (
    .cp(sys_clk),
    .d(_14_),
    .z(rec_dataH[6])
  );
  (* src = "uart.v:58.1-65.6" *)
  dfnt1v0x2 _47_ (
    .cp(sys_clk),
    .d(_15_),
    .z(rec_dataH[7])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "uart.v:47.7-56.6" *)
  u_rec iRECEIVER (
    .rec_dataH(rec_dataH_rec),
    .rec_readyH(rec_readyH),
    .sys_clk(sys_clk),
    .sys_rst_l(sys_rst_l),
    .uart_dataH(uart_REC_dataH)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "uart.v:38.9-45.5" *)
  u_xmit iXMIT (
    .sys_clk(sys_clk),
    .sys_rst_l(sys_rst_l),
    .uart_xmitH(uart_XMIT_dataH),
    .xmitH(xmitH),
    .xmit_dataH(xmit_dataH),
    .xmit_doneH(xmit_doneH)
  );
endmodule
