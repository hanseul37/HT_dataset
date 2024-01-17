/* Generated by Yosys 0.32+74 (git sha1 b739213d9, x86_64-w64-mingw32-g++ 9.2.1 -Os) */

(* src = "uart_rx.v:1.1-125.10" *)
module uart_rx(sys_clk, sys_rst_n, rx, out_data, out_flag);
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
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  (* src = "uart_rx.v:20.10-20.14" *)
  wire [7:0] data;
  (* src = "uart_rx.v:7.17-7.25" *)
  output [7:0] out_data;
  wire [7:0] out_data;
  (* src = "uart_rx.v:8.12-8.20" *)
  output out_flag;
  wire out_flag;
  (* src = "uart_rx.v:5.12-5.14" *)
  input rx;
  wire rx;
  (* src = "uart_rx.v:12.5-12.8" *)
  wire rx1;
  (* src = "uart_rx.v:13.5-13.8" *)
  wire rx2;
  (* src = "uart_rx.v:14.5-14.8" *)
  wire rx3;
  (* src = "uart_rx.v:17.11-17.22" *)
  wire [12:0] rx_baud_cnt;
  (* src = "uart_rx.v:19.10-19.20" *)
  wire [3:0] rx_bit_cnt;
  (* src = "uart_rx.v:18.5-18.16" *)
  wire rx_bit_flag;
  (* src = "uart_rx.v:16.5-16.10" *)
  wire rx_en;
  (* src = "uart_rx.v:21.5-21.16" *)
  wire rx_end_flag;
  (* src = "uart_rx.v:3.12-3.19" *)
  input sys_clk;
  wire sys_clk;
  (* src = "uart_rx.v:4.12-4.21" *)
  input sys_rst_n;
  wire sys_rst_n;
  iv1v0x05 _099_ (
    .a(rx2),
    .z(_090_)
  );
  an2v0x05 _100_ (
    .a(sys_rst_n),
    .b(rx),
    .z(_000_)
  );
  mxn2v0x05 _101_ (
    .a0(out_data[0]),
    .a1(data[0]),
    .s(rx_end_flag),
    .z(_091_)
  );
  an2v0x05 _102_ (
    .a(sys_rst_n),
    .b(_091_),
    .z(_001_)
  );
  mxn2v0x05 _103_ (
    .a0(out_data[1]),
    .a1(data[1]),
    .s(rx_end_flag),
    .z(_092_)
  );
  an2v0x05 _104_ (
    .a(sys_rst_n),
    .b(_092_),
    .z(_002_)
  );
  mxn2v0x05 _105_ (
    .a0(out_data[2]),
    .a1(data[2]),
    .s(rx_end_flag),
    .z(_093_)
  );
  an2v0x05 _106_ (
    .a(sys_rst_n),
    .b(_093_),
    .z(_003_)
  );
  mxn2v0x05 _107_ (
    .a0(out_data[3]),
    .a1(data[3]),
    .s(rx_end_flag),
    .z(_094_)
  );
  an2v0x05 _108_ (
    .a(sys_rst_n),
    .b(_094_),
    .z(_004_)
  );
  mxn2v0x05 _109_ (
    .a0(out_data[4]),
    .a1(data[4]),
    .s(rx_end_flag),
    .z(_095_)
  );
  an2v0x05 _110_ (
    .a(sys_rst_n),
    .b(_095_),
    .z(_005_)
  );
  mxn2v0x05 _111_ (
    .a0(out_data[5]),
    .a1(data[5]),
    .s(rx_end_flag),
    .z(_096_)
  );
  an2v0x05 _112_ (
    .a(sys_rst_n),
    .b(_096_),
    .z(_006_)
  );
  mxn2v0x05 _113_ (
    .a0(out_data[6]),
    .a1(data[6]),
    .s(rx_end_flag),
    .z(_097_)
  );
  an2v0x05 _114_ (
    .a(sys_rst_n),
    .b(_097_),
    .z(_007_)
  );
  mxn2v0x05 _115_ (
    .a0(out_data[7]),
    .a1(data[7]),
    .s(rx_end_flag),
    .z(_098_)
  );
  an2v0x05 _116_ (
    .a(sys_rst_n),
    .b(_098_),
    .z(_008_)
  );
  an2v0x05 _117_ (
    .a(rx_end_flag),
    .b(sys_rst_n),
    .z(_009_)
  );
  nr2v0x05 _118_ (
    .a(rx_bit_cnt[2]),
    .b(rx_bit_cnt[1]),
    .z(_040_)
  );
  nr3v0x05 _119_ (
    .a(rx_bit_cnt[2]),
    .b(rx_bit_cnt[1]),
    .c(rx_bit_cnt[0]),
    .z(_041_)
  );
  xnai21v2x05 _120_ (
    .a1(rx_bit_cnt[3]),
    .a2(_041_),
    .b(rx_bit_flag),
    .z(_042_)
  );
  mxn2v0x05 _121_ (
    .a0(data[1]),
    .a1(data[0]),
    .s(_042_),
    .z(_043_)
  );
  an2v0x05 _122_ (
    .a(sys_rst_n),
    .b(_043_),
    .z(_010_)
  );
  mxn2v0x05 _123_ (
    .a0(data[2]),
    .a1(data[1]),
    .s(_042_),
    .z(_044_)
  );
  an2v0x05 _124_ (
    .a(sys_rst_n),
    .b(_044_),
    .z(_011_)
  );
  mxn2v0x05 _125_ (
    .a0(data[3]),
    .a1(data[2]),
    .s(_042_),
    .z(_045_)
  );
  an2v0x05 _126_ (
    .a(sys_rst_n),
    .b(_045_),
    .z(_012_)
  );
  mxn2v0x05 _127_ (
    .a0(data[4]),
    .a1(data[3]),
    .s(_042_),
    .z(_046_)
  );
  an2v0x05 _128_ (
    .a(sys_rst_n),
    .b(_046_),
    .z(_013_)
  );
  mxn2v0x05 _129_ (
    .a0(data[5]),
    .a1(data[4]),
    .s(_042_),
    .z(_047_)
  );
  an2v0x05 _130_ (
    .a(sys_rst_n),
    .b(_047_),
    .z(_014_)
  );
  mxn2v0x05 _131_ (
    .a0(data[6]),
    .a1(data[5]),
    .s(_042_),
    .z(_048_)
  );
  an2v0x05 _132_ (
    .a(sys_rst_n),
    .b(_048_),
    .z(_015_)
  );
  mxn2v0x05 _133_ (
    .a0(data[7]),
    .a1(data[6]),
    .s(_042_),
    .z(_049_)
  );
  an2v0x05 _134_ (
    .a(sys_rst_n),
    .b(_049_),
    .z(_016_)
  );
  mxn2v0x05 _135_ (
    .a0(rx3),
    .a1(data[7]),
    .s(_042_),
    .z(_050_)
  );
  an2v0x05 _136_ (
    .a(sys_rst_n),
    .b(_050_),
    .z(_017_)
  );
  an2v0x05 _137_ (
    .a(rx_bit_flag),
    .b(rx_bit_cnt[0]),
    .z(_051_)
  );
  nd3v0x05 _138_ (
    .a(rx_bit_cnt[3]),
    .b(_040_),
    .c(_051_),
    .z(_052_)
  );
  nd2v0x05 _139_ (
    .a(sys_rst_n),
    .b(_052_),
    .z(_053_)
  );
  nr2v0x05 _140_ (
    .a(rx_bit_flag),
    .b(rx_bit_cnt[0]),
    .z(_054_)
  );
  nr3v0x05 _141_ (
    .a(_051_),
    .b(_053_),
    .c(_054_),
    .z(_018_)
  );
  xnr2v0x05 _142_ (
    .a(rx_bit_cnt[1]),
    .b(_051_),
    .z(_055_)
  );
  nr2v0x05 _143_ (
    .a(_053_),
    .b(_055_),
    .z(_019_)
  );
  aoi21v0x05 _144_ (
    .a1(rx_bit_cnt[1]),
    .a2(_051_),
    .b(rx_bit_cnt[2]),
    .z(_056_)
  );
  nd3v0x05 _145_ (
    .a(rx_bit_cnt[2]),
    .b(rx_bit_cnt[1]),
    .c(_051_),
    .z(_057_)
  );
  nr3av0x05 _146_ (
    .a(_057_),
    .b(_053_),
    .c(_056_),
    .z(_020_)
  );
  xor2v0x05 _147_ (
    .a(rx_bit_cnt[3]),
    .b(_057_),
    .z(_058_)
  );
  nr2v0x05 _148_ (
    .a(_053_),
    .b(_058_),
    .z(_021_)
  );
  nr2av0x1 _149_ (
    .a(sys_rst_n),
    .b(_052_),
    .z(_022_)
  );
  an2v0x05 _150_ (
    .a(rx_baud_cnt[9]),
    .b(rx_baud_cnt[8]),
    .z(_059_)
  );
  an2v0x05 _151_ (
    .a(rx_baud_cnt[7]),
    .b(rx_baud_cnt[6]),
    .z(_060_)
  );
  nr2v0x05 _152_ (
    .a(rx_baud_cnt[0]),
    .b(rx_baud_cnt[1]),
    .z(_061_)
  );
  nd2av0x05 _153_ (
    .a(rx_baud_cnt[11]),
    .b(rx_baud_cnt[5]),
    .z(_062_)
  );
  nr2v0x05 _154_ (
    .a(rx_baud_cnt[2]),
    .b(rx_baud_cnt[4]),
    .z(_063_)
  );
  nd3v0x05 _155_ (
    .a(sys_rst_n),
    .b(rx_baud_cnt[3]),
    .c(_063_),
    .z(_064_)
  );
  nr4v1x05 _156_ (
    .a(rx_baud_cnt[10]),
    .b(rx_baud_cnt[12]),
    .c(_062_),
    .d(_064_),
    .z(_065_)
  );
  an4v0x05 _157_ (
    .a(_059_),
    .b(_060_),
    .c(_061_),
    .d(_065_),
    .z(_023_)
  );
  aoi22v0x05 _158_ (
    .a1(rx3),
    .a2(_090_),
    .b1(_052_),
    .b2(rx_en),
    .z(_066_)
  );
  nr2av0x1 _159_ (
    .a(sys_rst_n),
    .b(_066_),
    .z(_024_)
  );
  an2v0x05 _160_ (
    .a(rx_baud_cnt[0]),
    .b(rx_baud_cnt[1]),
    .z(_067_)
  );
  an3v0x05 _161_ (
    .a(rx_baud_cnt[0]),
    .b(rx_baud_cnt[1]),
    .c(rx_baud_cnt[2]),
    .z(_068_)
  );
  nd3v0x05 _162_ (
    .a(rx_baud_cnt[0]),
    .b(rx_baud_cnt[1]),
    .c(rx_baud_cnt[2]),
    .z(_069_)
  );
  nr3av0x05 _163_ (
    .a(rx_baud_cnt[6]),
    .b(rx_baud_cnt[9]),
    .c(rx_baud_cnt[8]),
    .z(_070_)
  );
  nd3abv0x05 _164_ (
    .a(rx_baud_cnt[5]),
    .b(rx_baud_cnt[7]),
    .c(_070_),
    .z(_071_)
  );
  nr3v0x05 _165_ (
    .a(rx_baud_cnt[3]),
    .b(rx_baud_cnt[11]),
    .c(_069_),
    .z(_072_)
  );
  nd4v0x05 _166_ (
    .a(rx_baud_cnt[4]),
    .b(rx_baud_cnt[10]),
    .c(rx_baud_cnt[12]),
    .d(_072_),
    .z(_073_)
  );
  oai211v0x05 _167_ (
    .a1(_071_),
    .a2(_073_),
    .b(rx_en),
    .c(sys_rst_n),
    .z(_074_)
  );
  nr2v0x05 _168_ (
    .a(rx_baud_cnt[0]),
    .b(_074_),
    .z(_025_)
  );
  nr3v0x05 _169_ (
    .a(_061_),
    .b(_067_),
    .c(_074_),
    .z(_026_)
  );
  nr2v0x05 _170_ (
    .a(rx_baud_cnt[2]),
    .b(_067_),
    .z(_075_)
  );
  nr3v0x05 _171_ (
    .a(_068_),
    .b(_074_),
    .c(_075_),
    .z(_027_)
  );
  xnr2v0x05 _172_ (
    .a(rx_baud_cnt[3]),
    .b(_068_),
    .z(_076_)
  );
  nr2v0x05 _173_ (
    .a(_074_),
    .b(_076_),
    .z(_028_)
  );
  aoi21v0x05 _174_ (
    .a1(rx_baud_cnt[3]),
    .a2(_068_),
    .b(rx_baud_cnt[4]),
    .z(_077_)
  );
  nr3abv0x05 _175_ (
    .a(rx_baud_cnt[3]),
    .b(rx_baud_cnt[4]),
    .c(_069_),
    .z(_078_)
  );
  nr3v0x05 _176_ (
    .a(_074_),
    .b(_077_),
    .c(_078_),
    .z(_029_)
  );
  nr2v0x05 _177_ (
    .a(rx_baud_cnt[5]),
    .b(_078_),
    .z(_079_)
  );
  an4v0x05 _178_ (
    .a(rx_baud_cnt[3]),
    .b(rx_baud_cnt[4]),
    .c(rx_baud_cnt[5]),
    .d(_068_),
    .z(_080_)
  );
  nr3v0x05 _179_ (
    .a(_074_),
    .b(_079_),
    .c(_080_),
    .z(_030_)
  );
  xnr2v0x05 _180_ (
    .a(rx_baud_cnt[6]),
    .b(_080_),
    .z(_081_)
  );
  nr2v0x05 _181_ (
    .a(_074_),
    .b(_081_),
    .z(_031_)
  );
  xaoi21v0x05 _182_ (
    .a1(rx_baud_cnt[6]),
    .a2(_080_),
    .b(rx_baud_cnt[7]),
    .z(_082_)
  );
  nr2v0x05 _183_ (
    .a(_074_),
    .b(_082_),
    .z(_032_)
  );
  nd3v0x05 _184_ (
    .a(rx_baud_cnt[8]),
    .b(_060_),
    .c(_080_),
    .z(_083_)
  );
  aoi21v0x05 _185_ (
    .a1(_060_),
    .a2(_080_),
    .b(rx_baud_cnt[8]),
    .z(_084_)
  );
  nr3av0x05 _186_ (
    .a(_083_),
    .b(_084_),
    .c(_074_),
    .z(_033_)
  );
  xor2v0x05 _187_ (
    .a(rx_baud_cnt[9]),
    .b(_083_),
    .z(_085_)
  );
  nr2v0x05 _188_ (
    .a(_074_),
    .b(_085_),
    .z(_034_)
  );
  an4v0x05 _189_ (
    .a(rx_baud_cnt[10]),
    .b(_059_),
    .c(_060_),
    .d(_080_),
    .z(_086_)
  );
  aoi31v0x05 _190_ (
    .a1(_059_),
    .a2(_060_),
    .a3(_080_),
    .b(rx_baud_cnt[10]),
    .z(_087_)
  );
  nr3v0x05 _191_ (
    .a(_074_),
    .b(_086_),
    .c(_087_),
    .z(_035_)
  );
  xnr2v0x05 _192_ (
    .a(rx_baud_cnt[11]),
    .b(_086_),
    .z(_088_)
  );
  nr2v0x05 _193_ (
    .a(_074_),
    .b(_088_),
    .z(_036_)
  );
  xaoi21v0x05 _194_ (
    .a1(rx_baud_cnt[11]),
    .a2(_086_),
    .b(rx_baud_cnt[12]),
    .z(_089_)
  );
  nr2v0x05 _195_ (
    .a(_074_),
    .b(_089_),
    .z(_037_)
  );
  an2v0x05 _196_ (
    .a(sys_rst_n),
    .b(rx2),
    .z(_038_)
  );
  an2v0x05 _197_ (
    .a(sys_rst_n),
    .b(rx1),
    .z(_039_)
  );
  (* src = "uart_rx.v:27.1-31.15" *)
  dfnt1v0x2 _198_ (
    .cp(sys_clk),
    .d(_000_),
    .z(rx1)
  );
  (* src = "uart_rx.v:108.1-114.26" *)
  dfnt1v0x2 _199_ (
    .cp(sys_clk),
    .d(_001_),
    .z(out_data[0])
  );
  (* src = "uart_rx.v:108.1-114.26" *)
  dfnt1v0x2 _200_ (
    .cp(sys_clk),
    .d(_002_),
    .z(out_data[1])
  );
  (* src = "uart_rx.v:108.1-114.26" *)
  dfnt1v0x2 _201_ (
    .cp(sys_clk),
    .d(_003_),
    .z(out_data[2])
  );
  (* src = "uart_rx.v:108.1-114.26" *)
  dfnt1v0x2 _202_ (
    .cp(sys_clk),
    .d(_004_),
    .z(out_data[3])
  );
  (* src = "uart_rx.v:108.1-114.26" *)
  dfnt1v0x2 _203_ (
    .cp(sys_clk),
    .d(_005_),
    .z(out_data[4])
  );
  (* src = "uart_rx.v:108.1-114.26" *)
  dfnt1v0x2 _204_ (
    .cp(sys_clk),
    .d(_006_),
    .z(out_data[5])
  );
  (* src = "uart_rx.v:108.1-114.26" *)
  dfnt1v0x2 _205_ (
    .cp(sys_clk),
    .d(_007_),
    .z(out_data[6])
  );
  (* src = "uart_rx.v:108.1-114.26" *)
  dfnt1v0x2 _206_ (
    .cp(sys_clk),
    .d(_008_),
    .z(out_data[7])
  );
  (* src = "uart_rx.v:117.1-123.22" *)
  dfnt1v0x2 _207_ (
    .cp(sys_clk),
    .d(_009_),
    .z(out_flag)
  );
  (* src = "uart_rx.v:87.1-91.29" *)
  dfnt1v0x2 _208_ (
    .cp(sys_clk),
    .d(_010_),
    .z(data[0])
  );
  (* src = "uart_rx.v:87.1-91.29" *)
  dfnt1v0x2 _209_ (
    .cp(sys_clk),
    .d(_011_),
    .z(data[1])
  );
  (* src = "uart_rx.v:87.1-91.29" *)
  dfnt1v0x2 _210_ (
    .cp(sys_clk),
    .d(_012_),
    .z(data[2])
  );
  (* src = "uart_rx.v:87.1-91.29" *)
  dfnt1v0x2 _211_ (
    .cp(sys_clk),
    .d(_013_),
    .z(data[3])
  );
  (* src = "uart_rx.v:87.1-91.29" *)
  dfnt1v0x2 _212_ (
    .cp(sys_clk),
    .d(_014_),
    .z(data[4])
  );
  (* src = "uart_rx.v:87.1-91.29" *)
  dfnt1v0x2 _213_ (
    .cp(sys_clk),
    .d(_015_),
    .z(data[5])
  );
  (* src = "uart_rx.v:87.1-91.29" *)
  dfnt1v0x2 _214_ (
    .cp(sys_clk),
    .d(_016_),
    .z(data[6])
  );
  (* src = "uart_rx.v:87.1-91.29" *)
  dfnt1v0x2 _215_ (
    .cp(sys_clk),
    .d(_017_),
    .z(data[7])
  );
  (* src = "uart_rx.v:76.1-84.30" *)
  dfnt1v0x2 _216_ (
    .cp(sys_clk),
    .d(_018_),
    .z(rx_bit_cnt[0])
  );
  (* src = "uart_rx.v:76.1-84.30" *)
  dfnt1v0x2 _217_ (
    .cp(sys_clk),
    .d(_019_),
    .z(rx_bit_cnt[1])
  );
  (* src = "uart_rx.v:76.1-84.30" *)
  dfnt1v0x2 _218_ (
    .cp(sys_clk),
    .d(_020_),
    .z(rx_bit_cnt[2])
  );
  (* src = "uart_rx.v:76.1-84.30" *)
  dfnt1v0x2 _219_ (
    .cp(sys_clk),
    .d(_021_),
    .z(rx_bit_cnt[3])
  );
  (* src = "uart_rx.v:100.1-106.25" *)
  dfnt1v0x2 _220_ (
    .cp(sys_clk),
    .d(_022_),
    .z(rx_end_flag)
  );
  (* src = "uart_rx.v:68.1-74.25" *)
  dfnt1v0x2 _221_ (
    .cp(sys_clk),
    .d(_023_),
    .z(rx_bit_flag)
  );
  (* src = "uart_rx.v:48.1-56.20" *)
  dfnt1v0x2 _222_ (
    .cp(sys_clk),
    .d(_024_),
    .z(rx_en)
  );
  (* src = "uart_rx.v:58.1-66.26" *)
  dfnt1v0x2 _223_ (
    .cp(sys_clk),
    .d(_025_),
    .z(rx_baud_cnt[0])
  );
  (* src = "uart_rx.v:58.1-66.26" *)
  dfnt1v0x2 _224_ (
    .cp(sys_clk),
    .d(_026_),
    .z(rx_baud_cnt[1])
  );
  (* src = "uart_rx.v:58.1-66.26" *)
  dfnt1v0x2 _225_ (
    .cp(sys_clk),
    .d(_027_),
    .z(rx_baud_cnt[2])
  );
  (* src = "uart_rx.v:58.1-66.26" *)
  dfnt1v0x2 _226_ (
    .cp(sys_clk),
    .d(_028_),
    .z(rx_baud_cnt[3])
  );
  (* src = "uart_rx.v:58.1-66.26" *)
  dfnt1v0x2 _227_ (
    .cp(sys_clk),
    .d(_029_),
    .z(rx_baud_cnt[4])
  );
  (* src = "uart_rx.v:58.1-66.26" *)
  dfnt1v0x2 _228_ (
    .cp(sys_clk),
    .d(_030_),
    .z(rx_baud_cnt[5])
  );
  (* src = "uart_rx.v:58.1-66.26" *)
  dfnt1v0x2 _229_ (
    .cp(sys_clk),
    .d(_031_),
    .z(rx_baud_cnt[6])
  );
  (* src = "uart_rx.v:58.1-66.26" *)
  dfnt1v0x2 _230_ (
    .cp(sys_clk),
    .d(_032_),
    .z(rx_baud_cnt[7])
  );
  (* src = "uart_rx.v:58.1-66.26" *)
  dfnt1v0x2 _231_ (
    .cp(sys_clk),
    .d(_033_),
    .z(rx_baud_cnt[8])
  );
  (* src = "uart_rx.v:58.1-66.26" *)
  dfnt1v0x2 _232_ (
    .cp(sys_clk),
    .d(_034_),
    .z(rx_baud_cnt[9])
  );
  (* src = "uart_rx.v:58.1-66.26" *)
  dfnt1v0x2 _233_ (
    .cp(sys_clk),
    .d(_035_),
    .z(rx_baud_cnt[10])
  );
  (* src = "uart_rx.v:58.1-66.26" *)
  dfnt1v0x2 _234_ (
    .cp(sys_clk),
    .d(_036_),
    .z(rx_baud_cnt[11])
  );
  (* src = "uart_rx.v:58.1-66.26" *)
  dfnt1v0x2 _235_ (
    .cp(sys_clk),
    .d(_037_),
    .z(rx_baud_cnt[12])
  );
  (* src = "uart_rx.v:39.1-43.16" *)
  dfnt1v0x2 _236_ (
    .cp(sys_clk),
    .d(_038_),
    .z(rx3)
  );
  (* src = "uart_rx.v:33.1-37.16" *)
  dfnt1v0x2 _237_ (
    .cp(sys_clk),
    .d(_039_),
    .z(rx2)
  );
endmodule

(* src = "uart_tx.v:1.1-81.10" *)
module uart_tx(sys_clk, sys_rst_n, in_data, tx_statr_flag, tx);
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
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  (* src = "uart_tx.v:14.5-14.13" *)
  wire bit_flag;
  (* src = "uart_tx.v:15.5-15.7" *)
  wire en;
  (* src = "uart_tx.v:5.17-5.24" *)
  input [7:0] in_data;
  wire [7:0] in_data;
  (* src = "uart_tx.v:13.10-13.20" *)
  wire [3:0] rx_bit_cnt;
  (* src = "uart_tx.v:12.11-12.17" *)
  wire [12:0] rx_cnt;
  (* src = "uart_tx.v:3.12-3.19" *)
  input sys_clk;
  wire sys_clk;
  (* src = "uart_tx.v:4.12-4.21" *)
  input sys_rst_n;
  wire sys_rst_n;
  (* src = "uart_tx.v:8.12-8.14" *)
  output tx;
  wire tx;
  (* src = "uart_tx.v:6.12-6.25" *)
  input tx_statr_flag;
  wire tx_statr_flag;
  iv1v0x05 _076_ (
    .a(tx),
    .z(_035_)
  );
  iv1v0x05 _077_ (
    .a(sys_rst_n),
    .z(_036_)
  );
  iv1v0x05 _078_ (
    .a(rx_cnt[11]),
    .z(_037_)
  );
  iv1v0x05 _079_ (
    .a(in_data[2]),
    .z(_038_)
  );
  an2v0x05 _080_ (
    .a(rx_bit_cnt[1]),
    .b(rx_bit_cnt[0]),
    .z(_039_)
  );
  nr3abv0x05 _081_ (
    .a(rx_bit_cnt[1]),
    .b(in_data[4]),
    .c(rx_bit_cnt[0]),
    .z(_040_)
  );
  nr3abv0x05 _082_ (
    .a(rx_bit_cnt[0]),
    .b(in_data[3]),
    .c(rx_bit_cnt[1]),
    .z(_041_)
  );
  aoi112v0x05 _083_ (
    .a(_040_),
    .b(_041_),
    .c1(in_data[5]),
    .c2(_039_),
    .z(_042_)
  );
  aoi112v0x05 _084_ (
    .a(rx_bit_cnt[1]),
    .b(rx_bit_cnt[0]),
    .c1(_038_),
    .c2(rx_bit_cnt[2]),
    .z(_043_)
  );
  nr3abv0x05 _085_ (
    .a(rx_bit_cnt[1]),
    .b(in_data[0]),
    .c(rx_bit_cnt[0]),
    .z(_044_)
  );
  aoi112v0x05 _086_ (
    .a(rx_bit_cnt[2]),
    .b(_044_),
    .c1(_039_),
    .c2(in_data[1]),
    .z(_045_)
  );
  aoi21v0x05 _087_ (
    .a1(rx_bit_cnt[2]),
    .a2(_042_),
    .b(_045_),
    .z(_046_)
  );
  nr2av0x1 _088_ (
    .a(in_data[6]),
    .b(rx_bit_cnt[0]),
    .z(_047_)
  );
  nr2av0x1 _089_ (
    .a(rx_bit_cnt[3]),
    .b(rx_bit_cnt[2]),
    .z(_048_)
  );
  aoi112v0x05 _090_ (
    .a(rx_bit_cnt[1]),
    .b(_047_),
    .c1(in_data[7]),
    .c2(rx_bit_cnt[0]),
    .z(_049_)
  );
  aoi21bv0x05 _091_ (
    .a1(_048_),
    .a2(_049_),
    .b(bit_flag),
    .z(_050_)
  );
  oai31v0x05 _092_ (
    .a1(rx_bit_cnt[3]),
    .a2(_043_),
    .a3(_046_),
    .b(_050_),
    .z(_051_)
  );
  oai211v0x05 _093_ (
    .a1(bit_flag),
    .a2(_035_),
    .b(sys_rst_n),
    .c(_051_),
    .z(_000_)
  );
  nr3abv0x05 _094_ (
    .a(bit_flag),
    .b(rx_bit_cnt[1]),
    .c(rx_bit_cnt[0]),
    .z(_052_)
  );
  nd2v0x05 _095_ (
    .a(_048_),
    .b(_052_),
    .z(_053_)
  );
  nd2v0x05 _096_ (
    .a(sys_rst_n),
    .b(_053_),
    .z(_054_)
  );
  xnai21v2x05 _097_ (
    .a1(bit_flag),
    .a2(rx_bit_cnt[0]),
    .b(sys_rst_n),
    .z(_001_)
  );
  xaoi21v0x05 _098_ (
    .a1(bit_flag),
    .a2(rx_bit_cnt[0]),
    .b(rx_bit_cnt[1]),
    .z(_055_)
  );
  nr2v0x05 _099_ (
    .a(_054_),
    .b(_055_),
    .z(_002_)
  );
  aoi21v0x05 _100_ (
    .a1(bit_flag),
    .a2(_039_),
    .b(rx_bit_cnt[2]),
    .z(_056_)
  );
  nd3v0x05 _101_ (
    .a(bit_flag),
    .b(rx_bit_cnt[2]),
    .c(_039_),
    .z(_057_)
  );
  nr3av0x05 _102_ (
    .a(_057_),
    .b(_054_),
    .c(_056_),
    .z(_003_)
  );
  xor2v0x05 _103_ (
    .a(rx_bit_cnt[3]),
    .b(_057_),
    .z(_058_)
  );
  nr2v0x05 _104_ (
    .a(_054_),
    .b(_058_),
    .z(_004_)
  );
  an2v0x05 _105_ (
    .a(rx_cnt[7]),
    .b(rx_cnt[6]),
    .z(_059_)
  );
  an2v0x05 _106_ (
    .a(rx_cnt[9]),
    .b(rx_cnt[8]),
    .z(_060_)
  );
  nr3abv0x05 _107_ (
    .a(rx_cnt[10]),
    .b(_060_),
    .c(rx_cnt[11]),
    .z(_061_)
  );
  nr4v1x05 _108_ (
    .a(_036_),
    .b(rx_cnt[3]),
    .c(rx_cnt[2]),
    .d(rx_cnt[12]),
    .z(_062_)
  );
  nd2av0x05 _109_ (
    .a(rx_cnt[5]),
    .b(rx_cnt[4]),
    .z(_063_)
  );
  nr2v0x05 _110_ (
    .a(rx_cnt[0]),
    .b(rx_cnt[1]),
    .z(_064_)
  );
  nr3v0x05 _111_ (
    .a(rx_cnt[0]),
    .b(rx_cnt[1]),
    .c(_063_),
    .z(_065_)
  );
  an4v0x05 _112_ (
    .a(_059_),
    .b(_061_),
    .c(_062_),
    .d(_065_),
    .z(_005_)
  );
  aoi21v0x05 _113_ (
    .a1(en),
    .a2(_053_),
    .b(tx_statr_flag),
    .z(_066_)
  );
  nr2v0x05 _114_ (
    .a(_036_),
    .b(_066_),
    .z(_006_)
  );
  an2v0x05 _115_ (
    .a(rx_cnt[0]),
    .b(rx_cnt[1]),
    .z(_067_)
  );
  an3v0x05 _116_ (
    .a(rx_cnt[0]),
    .b(rx_cnt[1]),
    .c(rx_cnt[2]),
    .z(_068_)
  );
  nd3v0x05 _117_ (
    .a(rx_cnt[0]),
    .b(rx_cnt[1]),
    .c(rx_cnt[2]),
    .z(_069_)
  );
  nr2v0x05 _118_ (
    .a(rx_cnt[9]),
    .b(rx_cnt[8]),
    .z(_070_)
  );
  nr3abv0x05 _119_ (
    .a(rx_cnt[12]),
    .b(_070_),
    .c(rx_cnt[7]),
    .z(_071_)
  );
  nr3abv0x05 _120_ (
    .a(rx_cnt[6]),
    .b(rx_cnt[10]),
    .c(rx_cnt[11]),
    .z(_072_)
  );
  nr3v0x05 _121_ (
    .a(rx_cnt[3]),
    .b(_063_),
    .c(_069_),
    .z(_073_)
  );
  nd3v0x05 _122_ (
    .a(_071_),
    .b(_072_),
    .c(_073_),
    .z(_074_)
  );
  nd3v0x05 _123_ (
    .a(en),
    .b(sys_rst_n),
    .c(_074_),
    .z(_075_)
  );
  nr2v0x05 _124_ (
    .a(rx_cnt[0]),
    .b(_075_),
    .z(_007_)
  );
  nr3v0x05 _125_ (
    .a(_064_),
    .b(_067_),
    .c(_075_),
    .z(_008_)
  );
  nr2v0x05 _126_ (
    .a(rx_cnt[2]),
    .b(_067_),
    .z(_020_)
  );
  nr3v0x05 _127_ (
    .a(_068_),
    .b(_075_),
    .c(_020_),
    .z(_009_)
  );
  xnr2v0x05 _128_ (
    .a(rx_cnt[3]),
    .b(_068_),
    .z(_021_)
  );
  nr2v0x05 _129_ (
    .a(_075_),
    .b(_021_),
    .z(_010_)
  );
  aoi21v0x05 _130_ (
    .a1(rx_cnt[3]),
    .a2(_068_),
    .b(rx_cnt[4]),
    .z(_022_)
  );
  nr3abv0x05 _131_ (
    .a(rx_cnt[3]),
    .b(rx_cnt[4]),
    .c(_069_),
    .z(_023_)
  );
  nr3v0x05 _132_ (
    .a(_075_),
    .b(_022_),
    .c(_023_),
    .z(_011_)
  );
  nr2v0x05 _133_ (
    .a(rx_cnt[5]),
    .b(_023_),
    .z(_024_)
  );
  an4v0x05 _134_ (
    .a(rx_cnt[3]),
    .b(rx_cnt[4]),
    .c(rx_cnt[5]),
    .d(_068_),
    .z(_025_)
  );
  nr3v0x05 _135_ (
    .a(_075_),
    .b(_024_),
    .c(_025_),
    .z(_012_)
  );
  xnr2v0x05 _136_ (
    .a(rx_cnt[6]),
    .b(_025_),
    .z(_026_)
  );
  nr2v0x05 _137_ (
    .a(_075_),
    .b(_026_),
    .z(_013_)
  );
  xaoi21v0x05 _138_ (
    .a1(rx_cnt[6]),
    .a2(_025_),
    .b(rx_cnt[7]),
    .z(_027_)
  );
  nr2v0x05 _139_ (
    .a(_075_),
    .b(_027_),
    .z(_014_)
  );
  nd3v0x05 _140_ (
    .a(rx_cnt[8]),
    .b(_059_),
    .c(_025_),
    .z(_028_)
  );
  aoi21v0x05 _141_ (
    .a1(_059_),
    .a2(_025_),
    .b(rx_cnt[8]),
    .z(_029_)
  );
  nr3av0x05 _142_ (
    .a(_028_),
    .b(_029_),
    .c(_075_),
    .z(_015_)
  );
  xor2v0x05 _143_ (
    .a(rx_cnt[9]),
    .b(_028_),
    .z(_030_)
  );
  nr2v0x05 _144_ (
    .a(_075_),
    .b(_030_),
    .z(_016_)
  );
  nd4v0x05 _145_ (
    .a(rx_cnt[10]),
    .b(_059_),
    .c(_060_),
    .d(_025_),
    .z(_031_)
  );
  aoi31v0x05 _146_ (
    .a1(_059_),
    .a2(_060_),
    .a3(_025_),
    .b(rx_cnt[10]),
    .z(_032_)
  );
  nr3av0x05 _147_ (
    .a(_031_),
    .b(_032_),
    .c(_075_),
    .z(_017_)
  );
  xnr2v0x05 _148_ (
    .a(_037_),
    .b(_031_),
    .z(_033_)
  );
  nr2v0x05 _149_ (
    .a(_075_),
    .b(_033_),
    .z(_018_)
  );
  xoon21v0x05 _150_ (
    .a1(_037_),
    .a2(_031_),
    .b(rx_cnt[12]),
    .z(_034_)
  );
  nr2v0x05 _151_ (
    .a(_075_),
    .b(_034_),
    .z(_019_)
  );
  (* src = "uart_tx.v:58.1-75.12" *)
  dfnt1v0x2 _152_ (
    .cp(sys_clk),
    .d(_000_),
    .z(tx)
  );
  (* src = "uart_tx.v:47.1-55.30" *)
  dfnt1v0x2 _153_ (
    .cp(sys_clk),
    .d(_001_),
    .z(rx_bit_cnt[0])
  );
  (* src = "uart_tx.v:47.1-55.30" *)
  dfnt1v0x2 _154_ (
    .cp(sys_clk),
    .d(_002_),
    .z(rx_bit_cnt[1])
  );
  (* src = "uart_tx.v:47.1-55.30" *)
  dfnt1v0x2 _155_ (
    .cp(sys_clk),
    .d(_003_),
    .z(rx_bit_cnt[2])
  );
  (* src = "uart_tx.v:47.1-55.30" *)
  dfnt1v0x2 _156_ (
    .cp(sys_clk),
    .d(_004_),
    .z(rx_bit_cnt[3])
  );
  (* src = "uart_tx.v:38.1-44.22" *)
  dfnt1v0x2 _157_ (
    .cp(sys_clk),
    .d(_005_),
    .z(bit_flag)
  );
  (* src = "uart_tx.v:18.1-26.14" *)
  dfnt1v0x2 _158_ (
    .cp(sys_clk),
    .d(_006_),
    .z(en)
  );
  (* src = "uart_tx.v:28.1-36.21" *)
  dfnt1v0x2 _159_ (
    .cp(sys_clk),
    .d(_007_),
    .z(rx_cnt[0])
  );
  (* src = "uart_tx.v:28.1-36.21" *)
  dfnt1v0x2 _160_ (
    .cp(sys_clk),
    .d(_008_),
    .z(rx_cnt[1])
  );
  (* src = "uart_tx.v:28.1-36.21" *)
  dfnt1v0x2 _161_ (
    .cp(sys_clk),
    .d(_009_),
    .z(rx_cnt[2])
  );
  (* src = "uart_tx.v:28.1-36.21" *)
  dfnt1v0x2 _162_ (
    .cp(sys_clk),
    .d(_010_),
    .z(rx_cnt[3])
  );
  (* src = "uart_tx.v:28.1-36.21" *)
  dfnt1v0x2 _163_ (
    .cp(sys_clk),
    .d(_011_),
    .z(rx_cnt[4])
  );
  (* src = "uart_tx.v:28.1-36.21" *)
  dfnt1v0x2 _164_ (
    .cp(sys_clk),
    .d(_012_),
    .z(rx_cnt[5])
  );
  (* src = "uart_tx.v:28.1-36.21" *)
  dfnt1v0x2 _165_ (
    .cp(sys_clk),
    .d(_013_),
    .z(rx_cnt[6])
  );
  (* src = "uart_tx.v:28.1-36.21" *)
  dfnt1v0x2 _166_ (
    .cp(sys_clk),
    .d(_014_),
    .z(rx_cnt[7])
  );
  (* src = "uart_tx.v:28.1-36.21" *)
  dfnt1v0x2 _167_ (
    .cp(sys_clk),
    .d(_015_),
    .z(rx_cnt[8])
  );
  (* src = "uart_tx.v:28.1-36.21" *)
  dfnt1v0x2 _168_ (
    .cp(sys_clk),
    .d(_016_),
    .z(rx_cnt[9])
  );
  (* src = "uart_tx.v:28.1-36.21" *)
  dfnt1v0x2 _169_ (
    .cp(sys_clk),
    .d(_017_),
    .z(rx_cnt[10])
  );
  (* src = "uart_tx.v:28.1-36.21" *)
  dfnt1v0x2 _170_ (
    .cp(sys_clk),
    .d(_018_),
    .z(rx_cnt[11])
  );
  (* src = "uart_tx.v:28.1-36.21" *)
  dfnt1v0x2 _171_ (
    .cp(sys_clk),
    .d(_019_),
    .z(rx_cnt[12])
  );
endmodule
