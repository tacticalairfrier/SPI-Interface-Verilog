module Master (clkin,
    miso,
    mosi,
    reset,
    sclk,
    tx_enable,
    data_in,
    data_out,
    mode,
    slave_select,
    slave_select_in);
 input clkin;
 input miso;
 output mosi;
 input reset;
 output sclk;
 input tx_enable;
 input [7:0] data_in;
 output [7:0] data_out;
 input [1:0] mode;
 output [3:0] slave_select;
 input [1:0] slave_select_in;

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
 wire \counter_sclk[0] ;
 wire \counter_sclk[1] ;
 wire \counter_sclk[2] ;
 wire \data_count[0] ;
 wire \data_count[1] ;
 wire \data_count[2] ;
 wire \mode_internal[0] ;
 wire \mode_internal[1] ;
 wire rx;
 wire sclk_internal;
 wire \shiftreg[0] ;
 wire \shiftreg[1] ;
 wire \shiftreg[2] ;
 wire \shiftreg[3] ;
 wire \shiftreg[4] ;
 wire \shiftreg[5] ;
 wire \shiftreg[6] ;
 wire \shiftreg[7] ;
 wire \shiftreg_rx[0] ;
 wire \shiftreg_rx[1] ;
 wire \shiftreg_rx[2] ;
 wire \shiftreg_rx[3] ;
 wire \shiftreg_rx[4] ;
 wire \shiftreg_rx[5] ;
 wire \shiftreg_rx[6] ;
 wire \shiftreg_rx[7] ;
 wire \state[0] ;
 wire \state[1] ;
 wire \state[2] ;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire clknet_0_clkin;
 wire clknet_2_0__leaf_clkin;
 wire clknet_2_1__leaf_clkin;
 wire clknet_2_2__leaf_clkin;
 wire clknet_2_3__leaf_clkin;
 wire net39;
 wire net40;
 wire net41;
 wire net42;
 wire net43;
 wire net44;
 wire net45;
 wire net46;
 wire net47;
 wire net48;
 wire net49;
 wire net50;
 wire net51;
 wire net52;
 wire net53;
 wire net54;
 wire net55;
 wire net56;
 wire net57;
 wire net58;
 wire net59;
 wire net60;
 wire net61;
 wire net62;
 wire net63;
 wire net64;
 wire net65;
 wire net66;
 wire net67;
 wire net68;
 wire net69;
 wire net70;
 wire net71;
 wire net72;
 wire net73;
 wire net74;
 wire net75;
 wire net76;
 wire net77;
 wire net78;

 sky130_fd_sc_hd__nor2_2 _086_ (.A(\counter_sclk[1] ),
    .B(\counter_sclk[2] ),
    .Y(_082_));
 sky130_fd_sc_hd__or2_1 _087_ (.A(\counter_sclk[1] ),
    .B(\counter_sclk[2] ),
    .X(_083_));
 sky130_fd_sc_hd__nor2_1 _088_ (.A(net30),
    .B(_083_),
    .Y(_084_));
 sky130_fd_sc_hd__or2_1 _089_ (.A(net30),
    .B(_083_),
    .X(_085_));
 sky130_fd_sc_hd__or4b_1 _090_ (.A(\data_count[0] ),
    .B(\data_count[1] ),
    .C(\data_count[2] ),
    .D_N(net31),
    .X(_037_));
 sky130_fd_sc_hd__nand2_1 _091_ (.A(_084_),
    .B(_037_),
    .Y(_038_));
 sky130_fd_sc_hd__o21a_1 _092_ (.A1(\state[1] ),
    .A2(_084_),
    .B1(_038_),
    .X(_005_));
 sky130_fd_sc_hd__nand2_1 _093_ (.A(net15),
    .B(_084_),
    .Y(_039_));
 sky130_fd_sc_hd__nand2_4 _094_ (.A(\state[1] ),
    .B(_082_),
    .Y(_040_));
 sky130_fd_sc_hd__a2bb2o_1 _095_ (.A1_N(net76),
    .A2_N(_040_),
    .B1(_039_),
    .B2(\state[0] ),
    .X(_004_));
 sky130_fd_sc_hd__or4_1 _096_ (.A(\data_count[0] ),
    .B(\data_count[1] ),
    .C(net78),
    .D(_085_),
    .X(_041_));
 sky130_fd_sc_hd__a32o_1 _097_ (.A1(net15),
    .A2(\state[0] ),
    .A3(_084_),
    .B1(_041_),
    .B2(net31),
    .X(_006_));
 sky130_fd_sc_hd__xor2_1 _098_ (.A(\mode_internal[1] ),
    .B(\mode_internal[0] ),
    .X(_042_));
 sky130_fd_sc_hd__and2_1 _099_ (.A(net30),
    .B(_042_),
    .X(_043_));
 sky130_fd_sc_hd__o21ai_1 _100_ (.A1(net30),
    .A2(_042_),
    .B1(net31),
    .Y(_044_));
 sky130_fd_sc_hd__o221a_1 _101_ (.A1(net31),
    .A2(\mode_internal[1] ),
    .B1(_043_),
    .B2(_044_),
    .C1(net35),
    .X(net25));
 sky130_fd_sc_hd__nor2_1 _102_ (.A(net31),
    .B(\state[0] ),
    .Y(_045_));
 sky130_fd_sc_hd__mux2_1 _103_ (.A0(net31),
    .A1(net15),
    .S(\state[0] ),
    .X(_046_));
 sky130_fd_sc_hd__o21ba_1 _104_ (.A1(net31),
    .A2(\state[1] ),
    .B1_N(\state[0] ),
    .X(_047_));
 sky130_fd_sc_hd__mux2_1 _105_ (.A0(_046_),
    .A1(_047_),
    .S(net30),
    .X(_048_));
 sky130_fd_sc_hd__or3b_1 _106_ (.A(net14),
    .B(net13),
    .C_N(_048_),
    .X(net26));
 sky130_fd_sc_hd__nand3b_1 _107_ (.A_N(net14),
    .B(net13),
    .C(_048_),
    .Y(net27));
 sky130_fd_sc_hd__nand3b_1 _108_ (.A_N(net13),
    .B(_048_),
    .C(net14),
    .Y(net28));
 sky130_fd_sc_hd__nand3_1 _109_ (.A(net14),
    .B(net13),
    .C(_048_),
    .Y(net29));
 sky130_fd_sc_hd__nor2_1 _110_ (.A(net31),
    .B(net30),
    .Y(_049_));
 sky130_fd_sc_hd__o21a_1 _111_ (.A1(net32),
    .A2(net30),
    .B1(\shiftreg[7] ),
    .X(net24));
 sky130_fd_sc_hd__nor2_1 _112_ (.A(net39),
    .B(_082_),
    .Y(_000_));
 sky130_fd_sc_hd__or2_1 _113_ (.A(\counter_sclk[1] ),
    .B(\counter_sclk[0] ),
    .X(_050_));
 sky130_fd_sc_hd__nand2_1 _114_ (.A(\counter_sclk[1] ),
    .B(net77),
    .Y(_051_));
 sky130_fd_sc_hd__a21oi_1 _115_ (.A1(_050_),
    .A2(_051_),
    .B1(_082_),
    .Y(_001_));
 sky130_fd_sc_hd__a21o_1 _116_ (.A1(net75),
    .A2(_050_),
    .B1(_082_),
    .X(_002_));
 sky130_fd_sc_hd__nand2_1 _117_ (.A(net30),
    .B(_083_),
    .Y(_052_));
 sky130_fd_sc_hd__a21bo_1 _118_ (.A1(_082_),
    .A2(net25),
    .B1_N(_052_),
    .X(_003_));
 sky130_fd_sc_hd__or3b_1 _119_ (.A(_045_),
    .B(_038_),
    .C_N(net38),
    .X(_053_));
 sky130_fd_sc_hd__or2_1 _120_ (.A(\data_count[0] ),
    .B(_053_),
    .X(_054_));
 sky130_fd_sc_hd__nand2_1 _121_ (.A(net31),
    .B(net38),
    .Y(_055_));
 sky130_fd_sc_hd__o21ai_1 _122_ (.A1(_085_),
    .A2(_055_),
    .B1(net71),
    .Y(_056_));
 sky130_fd_sc_hd__nand2_1 _123_ (.A(_054_),
    .B(_056_),
    .Y(_007_));
 sky130_fd_sc_hd__o21a_1 _124_ (.A1(\data_count[0] ),
    .A2(\data_count[1] ),
    .B1(net31),
    .X(_057_));
 sky130_fd_sc_hd__a2bb2o_1 _125_ (.A1_N(_057_),
    .A2_N(_053_),
    .B1(net74),
    .B2(_054_),
    .X(_008_));
 sky130_fd_sc_hd__o31a_1 _126_ (.A1(\data_count[0] ),
    .A2(\data_count[1] ),
    .A3(_053_),
    .B1(net72),
    .X(_058_));
 sky130_fd_sc_hd__a41o_1 _127_ (.A1(\state[0] ),
    .A2(net38),
    .A3(_082_),
    .A4(_049_),
    .B1(_058_),
    .X(_009_));
 sky130_fd_sc_hd__nand2_1 _128_ (.A(_085_),
    .B(_052_),
    .Y(_010_));
 sky130_fd_sc_hd__mux2_1 _129_ (.A0(\shiftreg_rx[0] ),
    .A1(net50),
    .S(_040_),
    .X(_011_));
 sky130_fd_sc_hd__mux2_1 _130_ (.A0(\shiftreg_rx[1] ),
    .A1(net59),
    .S(_040_),
    .X(_012_));
 sky130_fd_sc_hd__mux2_1 _131_ (.A0(\shiftreg_rx[2] ),
    .A1(net46),
    .S(_040_),
    .X(_013_));
 sky130_fd_sc_hd__mux2_1 _132_ (.A0(\shiftreg_rx[3] ),
    .A1(net52),
    .S(_040_),
    .X(_014_));
 sky130_fd_sc_hd__mux2_1 _133_ (.A0(\shiftreg_rx[4] ),
    .A1(net44),
    .S(_040_),
    .X(_015_));
 sky130_fd_sc_hd__mux2_1 _134_ (.A0(\shiftreg_rx[5] ),
    .A1(net48),
    .S(_040_),
    .X(_016_));
 sky130_fd_sc_hd__mux2_1 _135_ (.A0(net42),
    .A1(net62),
    .S(_040_),
    .X(_017_));
 sky130_fd_sc_hd__mux2_1 _136_ (.A0(net40),
    .A1(net23),
    .S(_040_),
    .X(_018_));
 sky130_fd_sc_hd__or3b_4 _137_ (.A(net30),
    .B(_083_),
    .C_N(_046_),
    .X(_059_));
 sky130_fd_sc_hd__or3b_1 _138_ (.A(_059_),
    .B(net32),
    .C_N(net1),
    .X(_060_));
 sky130_fd_sc_hd__a21bo_1 _139_ (.A1(net43),
    .A2(_059_),
    .B1_N(_060_),
    .X(_019_));
 sky130_fd_sc_hd__mux2_1 _140_ (.A0(net2),
    .A1(\shiftreg[0] ),
    .S(net32),
    .X(_061_));
 sky130_fd_sc_hd__mux2_1 _141_ (.A0(_061_),
    .A1(net58),
    .S(_059_),
    .X(_020_));
 sky130_fd_sc_hd__mux2_1 _142_ (.A0(net3),
    .A1(\shiftreg[1] ),
    .S(net32),
    .X(_062_));
 sky130_fd_sc_hd__mux2_1 _143_ (.A0(_062_),
    .A1(net61),
    .S(_059_),
    .X(_021_));
 sky130_fd_sc_hd__mux2_1 _144_ (.A0(net4),
    .A1(\shiftreg[2] ),
    .S(net32),
    .X(_063_));
 sky130_fd_sc_hd__mux2_1 _145_ (.A0(_063_),
    .A1(net57),
    .S(_059_),
    .X(_022_));
 sky130_fd_sc_hd__mux2_1 _146_ (.A0(net5),
    .A1(\shiftreg[3] ),
    .S(net32),
    .X(_064_));
 sky130_fd_sc_hd__mux2_1 _147_ (.A0(_064_),
    .A1(net56),
    .S(_059_),
    .X(_023_));
 sky130_fd_sc_hd__mux2_1 _148_ (.A0(net6),
    .A1(\shiftreg[4] ),
    .S(net32),
    .X(_065_));
 sky130_fd_sc_hd__mux2_1 _149_ (.A0(_065_),
    .A1(net55),
    .S(_059_),
    .X(_024_));
 sky130_fd_sc_hd__mux2_1 _150_ (.A0(net7),
    .A1(\shiftreg[5] ),
    .S(net32),
    .X(_066_));
 sky130_fd_sc_hd__mux2_1 _151_ (.A0(_066_),
    .A1(net54),
    .S(_059_),
    .X(_025_));
 sky130_fd_sc_hd__mux2_1 _152_ (.A0(net8),
    .A1(\shiftreg[6] ),
    .S(net32),
    .X(_067_));
 sky130_fd_sc_hd__mux2_1 _153_ (.A0(_067_),
    .A1(net63),
    .S(_059_),
    .X(_026_));
 sky130_fd_sc_hd__and3b_1 _154_ (.A_N(net25),
    .B(rx),
    .C(_042_),
    .X(_068_));
 sky130_fd_sc_hd__nor2_1 _155_ (.A(rx),
    .B(_042_),
    .Y(_069_));
 sky130_fd_sc_hd__a21o_1 _156_ (.A1(net25),
    .A2(_069_),
    .B1(_055_),
    .X(_070_));
 sky130_fd_sc_hd__o22a_1 _157_ (.A1(net38),
    .A2(_040_),
    .B1(_045_),
    .B2(_083_),
    .X(_071_));
 sky130_fd_sc_hd__o21ba_2 _158_ (.A1(_068_),
    .A2(_070_),
    .B1_N(_071_),
    .X(_072_));
 sky130_fd_sc_hd__and2_1 _159_ (.A(net35),
    .B(net9),
    .X(_073_));
 sky130_fd_sc_hd__mux2_1 _160_ (.A0(net68),
    .A1(_073_),
    .S(_072_),
    .X(_027_));
 sky130_fd_sc_hd__and2_1 _161_ (.A(net35),
    .B(\shiftreg_rx[0] ),
    .X(_074_));
 sky130_fd_sc_hd__mux2_1 _162_ (.A0(net64),
    .A1(_074_),
    .S(_072_),
    .X(_028_));
 sky130_fd_sc_hd__and2_1 _163_ (.A(net35),
    .B(\shiftreg_rx[1] ),
    .X(_075_));
 sky130_fd_sc_hd__mux2_1 _164_ (.A0(net65),
    .A1(_075_),
    .S(_072_),
    .X(_029_));
 sky130_fd_sc_hd__and2_1 _165_ (.A(net33),
    .B(\shiftreg_rx[2] ),
    .X(_076_));
 sky130_fd_sc_hd__mux2_1 _166_ (.A0(net69),
    .A1(_076_),
    .S(_072_),
    .X(_030_));
 sky130_fd_sc_hd__and2_1 _167_ (.A(net33),
    .B(\shiftreg_rx[3] ),
    .X(_077_));
 sky130_fd_sc_hd__mux2_1 _168_ (.A0(net67),
    .A1(_077_),
    .S(_072_),
    .X(_031_));
 sky130_fd_sc_hd__and2_1 _169_ (.A(net33),
    .B(\shiftreg_rx[4] ),
    .X(_078_));
 sky130_fd_sc_hd__mux2_1 _170_ (.A0(net66),
    .A1(_078_),
    .S(_072_),
    .X(_032_));
 sky130_fd_sc_hd__and2_1 _171_ (.A(net33),
    .B(\shiftreg_rx[5] ),
    .X(_079_));
 sky130_fd_sc_hd__mux2_1 _172_ (.A0(net42),
    .A1(_079_),
    .S(_072_),
    .X(_033_));
 sky130_fd_sc_hd__and2_1 _173_ (.A(net33),
    .B(\shiftreg_rx[6] ),
    .X(_080_));
 sky130_fd_sc_hd__mux2_1 _174_ (.A0(net40),
    .A1(_080_),
    .S(_072_),
    .X(_034_));
 sky130_fd_sc_hd__and3_1 _175_ (.A(net30),
    .B(\state[1] ),
    .C(_082_),
    .X(_081_));
 sky130_fd_sc_hd__mux2_1 _176_ (.A0(net70),
    .A1(net10),
    .S(_081_),
    .X(_035_));
 sky130_fd_sc_hd__mux2_1 _177_ (.A0(net73),
    .A1(net11),
    .S(_081_),
    .X(_036_));
 sky130_fd_sc_hd__dfstp_1 _178_ (.CLK(clknet_2_3__leaf_clkin),
    .D(_004_),
    .SET_B(net38),
    .Q(\state[0] ));
 sky130_fd_sc_hd__dfrtp_2 _179_ (.CLK(clknet_2_3__leaf_clkin),
    .D(_005_),
    .RESET_B(net38),
    .Q(\state[1] ));
 sky130_fd_sc_hd__dfrtp_1 _180_ (.CLK(clknet_2_1__leaf_clkin),
    .D(_006_),
    .RESET_B(net38),
    .Q(\state[2] ));
 sky130_fd_sc_hd__dfxtp_1 _181_ (.CLK(clknet_2_3__leaf_clkin),
    .D(_007_),
    .Q(\data_count[0] ));
 sky130_fd_sc_hd__dfxtp_1 _182_ (.CLK(clknet_2_3__leaf_clkin),
    .D(_008_),
    .Q(\data_count[1] ));
 sky130_fd_sc_hd__dfxtp_1 _183_ (.CLK(clknet_2_3__leaf_clkin),
    .D(_009_),
    .Q(\data_count[2] ));
 sky130_fd_sc_hd__dfrtp_1 _184_ (.CLK(clknet_2_3__leaf_clkin),
    .D(_010_),
    .RESET_B(net38),
    .Q(sclk_internal));
 sky130_fd_sc_hd__dfrtp_1 _185_ (.CLK(clknet_2_2__leaf_clkin),
    .D(net51),
    .RESET_B(net35),
    .Q(net16));
 sky130_fd_sc_hd__dfrtp_1 _186_ (.CLK(clknet_2_2__leaf_clkin),
    .D(net60),
    .RESET_B(net35),
    .Q(net17));
 sky130_fd_sc_hd__dfrtp_1 _187_ (.CLK(clknet_2_2__leaf_clkin),
    .D(net47),
    .RESET_B(net35),
    .Q(net18));
 sky130_fd_sc_hd__dfrtp_1 _188_ (.CLK(clknet_2_0__leaf_clkin),
    .D(net53),
    .RESET_B(net33),
    .Q(net19));
 sky130_fd_sc_hd__dfrtp_1 _189_ (.CLK(clknet_2_0__leaf_clkin),
    .D(net45),
    .RESET_B(net33),
    .Q(net20));
 sky130_fd_sc_hd__dfrtp_1 _190_ (.CLK(clknet_2_0__leaf_clkin),
    .D(net49),
    .RESET_B(net33),
    .Q(net21));
 sky130_fd_sc_hd__dfrtp_1 _191_ (.CLK(clknet_2_0__leaf_clkin),
    .D(_017_),
    .RESET_B(net33),
    .Q(net22));
 sky130_fd_sc_hd__dfrtp_1 _192_ (.CLK(clknet_2_0__leaf_clkin),
    .D(net41),
    .RESET_B(net34),
    .Q(net23));
 sky130_fd_sc_hd__dfrtp_1 _193_ (.CLK(clknet_2_1__leaf_clkin),
    .D(_019_),
    .RESET_B(net37),
    .Q(\shiftreg[0] ));
 sky130_fd_sc_hd__dfrtp_1 _194_ (.CLK(clknet_2_1__leaf_clkin),
    .D(_020_),
    .RESET_B(net37),
    .Q(\shiftreg[1] ));
 sky130_fd_sc_hd__dfrtp_1 _195_ (.CLK(clknet_2_1__leaf_clkin),
    .D(_021_),
    .RESET_B(net37),
    .Q(\shiftreg[2] ));
 sky130_fd_sc_hd__dfrtp_1 _196_ (.CLK(clknet_2_1__leaf_clkin),
    .D(_022_),
    .RESET_B(net37),
    .Q(\shiftreg[3] ));
 sky130_fd_sc_hd__dfrtp_1 _197_ (.CLK(clknet_2_1__leaf_clkin),
    .D(_023_),
    .RESET_B(net37),
    .Q(\shiftreg[4] ));
 sky130_fd_sc_hd__dfrtp_1 _198_ (.CLK(clknet_2_1__leaf_clkin),
    .D(_024_),
    .RESET_B(net37),
    .Q(\shiftreg[5] ));
 sky130_fd_sc_hd__dfrtp_1 _199_ (.CLK(clknet_2_1__leaf_clkin),
    .D(_025_),
    .RESET_B(net37),
    .Q(\shiftreg[6] ));
 sky130_fd_sc_hd__dfrtp_1 _200_ (.CLK(clknet_2_1__leaf_clkin),
    .D(_026_),
    .RESET_B(net38),
    .Q(\shiftreg[7] ));
 sky130_fd_sc_hd__dfrtp_1 _201_ (.CLK(clknet_2_1__leaf_clkin),
    .D(_000_),
    .RESET_B(net37),
    .Q(\counter_sclk[0] ));
 sky130_fd_sc_hd__dfrtp_1 _202_ (.CLK(clknet_2_1__leaf_clkin),
    .D(_001_),
    .RESET_B(net37),
    .Q(\counter_sclk[1] ));
 sky130_fd_sc_hd__dfstp_1 _203_ (.CLK(clknet_2_1__leaf_clkin),
    .D(_002_),
    .SET_B(net37),
    .Q(\counter_sclk[2] ));
 sky130_fd_sc_hd__dfrtp_1 _204_ (.CLK(clknet_2_2__leaf_clkin),
    .D(_027_),
    .RESET_B(net35),
    .Q(\shiftreg_rx[0] ));
 sky130_fd_sc_hd__dfrtp_1 _205_ (.CLK(clknet_2_2__leaf_clkin),
    .D(_028_),
    .RESET_B(net35),
    .Q(\shiftreg_rx[1] ));
 sky130_fd_sc_hd__dfrtp_1 _206_ (.CLK(clknet_2_2__leaf_clkin),
    .D(_029_),
    .RESET_B(net35),
    .Q(\shiftreg_rx[2] ));
 sky130_fd_sc_hd__dfrtp_1 _207_ (.CLK(clknet_2_0__leaf_clkin),
    .D(_030_),
    .RESET_B(net34),
    .Q(\shiftreg_rx[3] ));
 sky130_fd_sc_hd__dfrtp_1 _208_ (.CLK(clknet_2_0__leaf_clkin),
    .D(_031_),
    .RESET_B(net33),
    .Q(\shiftreg_rx[4] ));
 sky130_fd_sc_hd__dfrtp_1 _209_ (.CLK(clknet_2_0__leaf_clkin),
    .D(_032_),
    .RESET_B(net34),
    .Q(\shiftreg_rx[5] ));
 sky130_fd_sc_hd__dfrtp_1 _210_ (.CLK(clknet_2_0__leaf_clkin),
    .D(_033_),
    .RESET_B(net34),
    .Q(\shiftreg_rx[6] ));
 sky130_fd_sc_hd__dfrtp_1 _211_ (.CLK(clknet_2_0__leaf_clkin),
    .D(_034_),
    .RESET_B(net34),
    .Q(\shiftreg_rx[7] ));
 sky130_fd_sc_hd__dfrtp_1 _212_ (.CLK(clknet_2_2__leaf_clkin),
    .D(_035_),
    .RESET_B(net36),
    .Q(\mode_internal[0] ));
 sky130_fd_sc_hd__dfrtp_1 _213_ (.CLK(clknet_2_2__leaf_clkin),
    .D(_036_),
    .RESET_B(net36),
    .Q(\mode_internal[1] ));
 sky130_fd_sc_hd__dfrtp_1 _214_ (.CLK(clknet_2_2__leaf_clkin),
    .D(_003_),
    .RESET_B(net36),
    .Q(rx));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Right_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Right_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Right_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Right_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_28 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_29 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_30 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_31 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_32 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_33 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_34 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_35 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_36 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_37 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_38 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_39 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Left_40 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Left_41 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Left_42 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Left_43 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_44 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_45 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_46 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_47 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_48 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_49 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_50 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_51 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_52 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_53 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_54 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_55 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_56 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_57 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_58 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_59 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_60 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_61 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_62 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_63 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_64 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_65 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_66 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_67 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_68 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_69 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_70 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_71 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_72 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_73 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_74 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_75 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_76 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_77 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_78 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_79 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_83 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_84 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_91 ();
 sky130_fd_sc_hd__clkbuf_1 input1 (.A(data_in[0]),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_1 input2 (.A(data_in[1]),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_1 input3 (.A(data_in[2]),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_1 input4 (.A(data_in[3]),
    .X(net4));
 sky130_fd_sc_hd__clkbuf_1 input5 (.A(data_in[4]),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_1 input6 (.A(data_in[5]),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_1 input7 (.A(data_in[6]),
    .X(net7));
 sky130_fd_sc_hd__clkbuf_1 input8 (.A(data_in[7]),
    .X(net8));
 sky130_fd_sc_hd__clkbuf_1 input9 (.A(miso),
    .X(net9));
 sky130_fd_sc_hd__clkbuf_1 input10 (.A(mode[0]),
    .X(net10));
 sky130_fd_sc_hd__clkbuf_1 input11 (.A(mode[1]),
    .X(net11));
 sky130_fd_sc_hd__buf_1 input12 (.A(reset),
    .X(net12));
 sky130_fd_sc_hd__buf_1 input13 (.A(slave_select_in[0]),
    .X(net13));
 sky130_fd_sc_hd__buf_1 input14 (.A(slave_select_in[1]),
    .X(net14));
 sky130_fd_sc_hd__buf_1 input15 (.A(tx_enable),
    .X(net15));
 sky130_fd_sc_hd__buf_2 output16 (.A(net16),
    .X(data_out[0]));
 sky130_fd_sc_hd__buf_2 output17 (.A(net17),
    .X(data_out[1]));
 sky130_fd_sc_hd__buf_2 output18 (.A(net18),
    .X(data_out[2]));
 sky130_fd_sc_hd__buf_2 output19 (.A(net19),
    .X(data_out[3]));
 sky130_fd_sc_hd__buf_2 output20 (.A(net20),
    .X(data_out[4]));
 sky130_fd_sc_hd__buf_2 output21 (.A(net21),
    .X(data_out[5]));
 sky130_fd_sc_hd__buf_2 output22 (.A(net22),
    .X(data_out[6]));
 sky130_fd_sc_hd__buf_2 output23 (.A(net23),
    .X(data_out[7]));
 sky130_fd_sc_hd__buf_2 output24 (.A(net24),
    .X(mosi));
 sky130_fd_sc_hd__buf_2 output25 (.A(net25),
    .X(sclk));
 sky130_fd_sc_hd__buf_2 output26 (.A(net26),
    .X(slave_select[0]));
 sky130_fd_sc_hd__buf_2 output27 (.A(net27),
    .X(slave_select[1]));
 sky130_fd_sc_hd__buf_2 output28 (.A(net28),
    .X(slave_select[2]));
 sky130_fd_sc_hd__buf_2 output29 (.A(net29),
    .X(slave_select[3]));
 sky130_fd_sc_hd__buf_2 fanout30 (.A(sclk_internal),
    .X(net30));
 sky130_fd_sc_hd__buf_2 fanout31 (.A(net32),
    .X(net31));
 sky130_fd_sc_hd__buf_2 fanout32 (.A(\state[2] ),
    .X(net32));
 sky130_fd_sc_hd__buf_2 fanout33 (.A(net36),
    .X(net33));
 sky130_fd_sc_hd__clkbuf_2 fanout34 (.A(net36),
    .X(net34));
 sky130_fd_sc_hd__buf_2 fanout35 (.A(net36),
    .X(net35));
 sky130_fd_sc_hd__clkbuf_2 fanout36 (.A(net12),
    .X(net36));
 sky130_fd_sc_hd__clkbuf_4 fanout37 (.A(net38),
    .X(net37));
 sky130_fd_sc_hd__buf_2 fanout38 (.A(net12),
    .X(net38));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clkin (.A(clkin),
    .X(clknet_0_clkin));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_0__f_clkin (.A(clknet_0_clkin),
    .X(clknet_2_0__leaf_clkin));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_1__f_clkin (.A(clknet_0_clkin),
    .X(clknet_2_1__leaf_clkin));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_2__f_clkin (.A(clknet_0_clkin),
    .X(clknet_2_2__leaf_clkin));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_3__f_clkin (.A(clknet_0_clkin),
    .X(clknet_2_3__leaf_clkin));
 sky130_fd_sc_hd__clkbuf_8 clkload0 (.A(clknet_2_0__leaf_clkin));
 sky130_fd_sc_hd__clkinv_2 clkload1 (.A(clknet_2_2__leaf_clkin));
 sky130_fd_sc_hd__clkinv_4 clkload2 (.A(clknet_2_3__leaf_clkin));
 sky130_fd_sc_hd__dlygate4sd3_1 hold1 (.A(\counter_sclk[0] ),
    .X(net39));
 sky130_fd_sc_hd__dlygate4sd3_1 hold2 (.A(\shiftreg_rx[7] ),
    .X(net40));
 sky130_fd_sc_hd__dlygate4sd3_1 hold3 (.A(_018_),
    .X(net41));
 sky130_fd_sc_hd__dlygate4sd3_1 hold4 (.A(\shiftreg_rx[6] ),
    .X(net42));
 sky130_fd_sc_hd__dlygate4sd3_1 hold5 (.A(\shiftreg[0] ),
    .X(net43));
 sky130_fd_sc_hd__dlygate4sd3_1 hold6 (.A(net20),
    .X(net44));
 sky130_fd_sc_hd__dlygate4sd3_1 hold7 (.A(_015_),
    .X(net45));
 sky130_fd_sc_hd__dlygate4sd3_1 hold8 (.A(net18),
    .X(net46));
 sky130_fd_sc_hd__dlygate4sd3_1 hold9 (.A(_013_),
    .X(net47));
 sky130_fd_sc_hd__dlygate4sd3_1 hold10 (.A(net21),
    .X(net48));
 sky130_fd_sc_hd__dlygate4sd3_1 hold11 (.A(_016_),
    .X(net49));
 sky130_fd_sc_hd__dlygate4sd3_1 hold12 (.A(net16),
    .X(net50));
 sky130_fd_sc_hd__dlygate4sd3_1 hold13 (.A(_011_),
    .X(net51));
 sky130_fd_sc_hd__dlygate4sd3_1 hold14 (.A(net19),
    .X(net52));
 sky130_fd_sc_hd__dlygate4sd3_1 hold15 (.A(_014_),
    .X(net53));
 sky130_fd_sc_hd__dlygate4sd3_1 hold16 (.A(\shiftreg[6] ),
    .X(net54));
 sky130_fd_sc_hd__dlygate4sd3_1 hold17 (.A(\shiftreg[5] ),
    .X(net55));
 sky130_fd_sc_hd__dlygate4sd3_1 hold18 (.A(\shiftreg[4] ),
    .X(net56));
 sky130_fd_sc_hd__dlygate4sd3_1 hold19 (.A(\shiftreg[3] ),
    .X(net57));
 sky130_fd_sc_hd__dlygate4sd3_1 hold20 (.A(\shiftreg[1] ),
    .X(net58));
 sky130_fd_sc_hd__dlygate4sd3_1 hold21 (.A(net17),
    .X(net59));
 sky130_fd_sc_hd__dlygate4sd3_1 hold22 (.A(_012_),
    .X(net60));
 sky130_fd_sc_hd__dlygate4sd3_1 hold23 (.A(\shiftreg[2] ),
    .X(net61));
 sky130_fd_sc_hd__dlygate4sd3_1 hold24 (.A(net22),
    .X(net62));
 sky130_fd_sc_hd__dlygate4sd3_1 hold25 (.A(\shiftreg[7] ),
    .X(net63));
 sky130_fd_sc_hd__dlygate4sd3_1 hold26 (.A(\shiftreg_rx[1] ),
    .X(net64));
 sky130_fd_sc_hd__dlygate4sd3_1 hold27 (.A(\shiftreg_rx[2] ),
    .X(net65));
 sky130_fd_sc_hd__dlygate4sd3_1 hold28 (.A(\shiftreg_rx[5] ),
    .X(net66));
 sky130_fd_sc_hd__dlygate4sd3_1 hold29 (.A(\shiftreg_rx[4] ),
    .X(net67));
 sky130_fd_sc_hd__dlygate4sd3_1 hold30 (.A(\shiftreg_rx[0] ),
    .X(net68));
 sky130_fd_sc_hd__dlygate4sd3_1 hold31 (.A(\shiftreg_rx[3] ),
    .X(net69));
 sky130_fd_sc_hd__dlygate4sd3_1 hold32 (.A(\mode_internal[0] ),
    .X(net70));
 sky130_fd_sc_hd__dlygate4sd3_1 hold33 (.A(\data_count[0] ),
    .X(net71));
 sky130_fd_sc_hd__dlygate4sd3_1 hold34 (.A(\data_count[2] ),
    .X(net72));
 sky130_fd_sc_hd__dlygate4sd3_1 hold35 (.A(\mode_internal[1] ),
    .X(net73));
 sky130_fd_sc_hd__dlygate4sd3_1 hold36 (.A(\data_count[1] ),
    .X(net74));
 sky130_fd_sc_hd__dlygate4sd3_1 hold37 (.A(\counter_sclk[2] ),
    .X(net75));
 sky130_fd_sc_hd__dlygate4sd3_1 hold38 (.A(sclk_internal),
    .X(net76));
 sky130_fd_sc_hd__dlygate4sd3_1 hold39 (.A(\counter_sclk[0] ),
    .X(net77));
 sky130_fd_sc_hd__dlygate4sd3_1 hold40 (.A(\data_count[2] ),
    .X(net78));
 sky130_ef_sc_hd__decap_12 FILLER_0_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_43 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_113 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_127 ();
 sky130_ef_sc_hd__decap_12 FILLER_1_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_90 ();
 sky130_ef_sc_hd__decap_12 FILLER_2_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_19 ();
 sky130_fd_sc_hd__decap_6 FILLER_2_38 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_97 ();
 sky130_ef_sc_hd__decap_12 FILLER_3_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_3_15 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_23 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_34 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_71 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_102 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_113 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_124 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_7 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_81 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_121 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_7 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_18 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_53 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_61 ();
 sky130_ef_sc_hd__decap_12 FILLER_5_70 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_82 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_99 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_113 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_117 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_127 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_38 ();
 sky130_ef_sc_hd__decap_12 FILLER_6_59 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_71 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_81 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_85 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_126 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_43 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_52 ();
 sky130_fd_sc_hd__decap_6 FILLER_7_62 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_68 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_89 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_122 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_27 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_41 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_59 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_99 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_23 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_33 ();
 sky130_fd_sc_hd__decap_6 FILLER_9_57 ();
 sky130_fd_sc_hd__decap_8 FILLER_9_101 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_109 ();
 sky130_fd_sc_hd__decap_6 FILLER_9_122 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_7 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_27 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_42 ();
 sky130_fd_sc_hd__decap_8 FILLER_10_56 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_64 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_80 ();
 sky130_ef_sc_hd__decap_12 FILLER_10_85 ();
 sky130_fd_sc_hd__decap_6 FILLER_10_97 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_103 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_27 ();
 sky130_fd_sc_hd__decap_6 FILLER_11_49 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_55 ();
 sky130_fd_sc_hd__decap_8 FILLER_11_77 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_93 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_97 ();
 sky130_fd_sc_hd__decap_6 FILLER_11_106 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_113 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_121 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_23 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_75 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_80 ();
 sky130_fd_sc_hd__fill_2 FILLER_12_93 ();
 sky130_fd_sc_hd__fill_2 FILLER_12_126 ();
 sky130_fd_sc_hd__decap_8 FILLER_13_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_13_47 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_65 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_103 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_126 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_7 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_38 ();
 sky130_fd_sc_hd__fill_2 FILLER_14_73 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_111 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_127 ();
 sky130_fd_sc_hd__fill_2 FILLER_15_11 ();
 sky130_ef_sc_hd__decap_12 FILLER_15_42 ();
 sky130_fd_sc_hd__fill_2 FILLER_15_54 ();
 sky130_fd_sc_hd__fill_2 FILLER_15_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_75 ();
 sky130_fd_sc_hd__decap_6 FILLER_15_122 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_16_46 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_58 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_75 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_83 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_123 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_127 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_10 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_32 ();
 sky130_fd_sc_hd__fill_2 FILLER_17_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_73 ();
 sky130_fd_sc_hd__decap_8 FILLER_17_104 ();
 sky130_ef_sc_hd__decap_12 FILLER_17_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_125 ();
 sky130_fd_sc_hd__decap_6 FILLER_18_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_9 ();
 sky130_fd_sc_hd__decap_8 FILLER_18_18 ();
 sky130_fd_sc_hd__fill_2 FILLER_18_26 ();
 sky130_ef_sc_hd__decap_12 FILLER_18_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_18_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_18_70 ();
 sky130_fd_sc_hd__fill_2 FILLER_18_82 ();
 sky130_ef_sc_hd__decap_12 FILLER_18_101 ();
 sky130_ef_sc_hd__decap_12 FILLER_18_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_125 ();
 sky130_ef_sc_hd__decap_12 FILLER_19_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_19_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_19_27 ();
 sky130_fd_sc_hd__decap_6 FILLER_19_39 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_45 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_55 ();
 sky130_fd_sc_hd__decap_4 FILLER_19_74 ();
 sky130_fd_sc_hd__decap_6 FILLER_19_106 ();
 sky130_ef_sc_hd__decap_12 FILLER_19_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_125 ();
 sky130_ef_sc_hd__decap_12 FILLER_20_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_20_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_20_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_20_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_20_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_20_61 ();
 sky130_fd_sc_hd__decap_8 FILLER_20_73 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_81 ();
 sky130_ef_sc_hd__decap_12 FILLER_20_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_20_116 ();
 sky130_ef_sc_hd__decap_12 FILLER_21_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_21_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_21_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_21_29 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_41 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_48 ();
 sky130_fd_sc_hd__fill_1 FILLER_21_55 ();
 sky130_fd_sc_hd__decap_8 FILLER_21_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_21_65 ();
 sky130_ef_sc_hd__decap_12 FILLER_21_70 ();
 sky130_fd_sc_hd__fill_2 FILLER_21_82 ();
 sky130_fd_sc_hd__fill_2 FILLER_21_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_91 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_97 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_105 ();
 sky130_fd_sc_hd__fill_2 FILLER_21_113 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_118 ();
 sky130_fd_sc_hd__fill_2 FILLER_21_126 ();
endmodule
