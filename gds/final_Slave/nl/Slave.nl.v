module Slave (clkin,
    reset,
    sclk,
    sdi,
    sdo,
    slave_select_in,
    data_in,
    data_out);
 input clkin;
 input reset;
 input sclk;
 input sdi;
 output sdo;
 input slave_select_in;
 input [7:0] data_in;
 output [7:0] data_out;

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
 wire \datacounter[0] ;
 wire \datacounter[1] ;
 wire \datacounter[2] ;
 wire rx;
 wire \shiftreg_rx[0] ;
 wire \shiftreg_rx[1] ;
 wire \shiftreg_rx[2] ;
 wire \shiftreg_rx[3] ;
 wire \shiftreg_rx[4] ;
 wire \shiftreg_rx[5] ;
 wire \shiftreg_rx[6] ;
 wire \shiftreg_rx[7] ;
 wire \shiftreg_tx[0] ;
 wire \shiftreg_tx[1] ;
 wire \shiftreg_tx[2] ;
 wire \shiftreg_tx[3] ;
 wire \shiftreg_tx[4] ;
 wire \shiftreg_tx[5] ;
 wire \shiftreg_tx[6] ;
 wire \shiftreg_tx[7] ;
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
 wire clknet_0_clkin;
 wire clknet_2_0__leaf_clkin;
 wire clknet_2_1__leaf_clkin;
 wire clknet_2_2__leaf_clkin;
 wire clknet_2_3__leaf_clkin;
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

 sky130_fd_sc_hd__inv_2 _071_ (.A(net25),
    .Y(_052_));
 sky130_fd_sc_hd__inv_2 _072_ (.A(rx),
    .Y(_053_));
 sky130_fd_sc_hd__nand2b_2 _073_ (.A_N(net10),
    .B(rx),
    .Y(_054_));
 sky130_fd_sc_hd__or3_1 _074_ (.A(\datacounter[0] ),
    .B(\datacounter[1] ),
    .C(\datacounter[2] ),
    .X(_055_));
 sky130_fd_sc_hd__nand2_1 _075_ (.A(net25),
    .B(\state[2] ),
    .Y(_056_));
 sky130_fd_sc_hd__o21ba_1 _076_ (.A1(_054_),
    .A2(_055_),
    .B1_N(_056_),
    .X(_057_));
 sky130_fd_sc_hd__o21ba_1 _077_ (.A1(\state[0] ),
    .A2(_057_),
    .B1_N(net12),
    .X(_002_));
 sky130_fd_sc_hd__or2_1 _078_ (.A(\state[1] ),
    .B(_052_),
    .X(_058_));
 sky130_fd_sc_hd__nor2_2 _079_ (.A(\state[1] ),
    .B(\state[2] ),
    .Y(_059_));
 sky130_fd_sc_hd__or2_1 _080_ (.A(\state[1] ),
    .B(\state[2] ),
    .X(_060_));
 sky130_fd_sc_hd__nand2_1 _081_ (.A(net25),
    .B(_054_),
    .Y(_061_));
 sky130_fd_sc_hd__a31o_1 _082_ (.A1(_058_),
    .A2(_060_),
    .A3(_061_),
    .B1(net12),
    .X(_000_));
 sky130_fd_sc_hd__nand2b_4 _083_ (.A_N(net12),
    .B(\state[1] ),
    .Y(_062_));
 sky130_fd_sc_hd__or4_1 _084_ (.A(net12),
    .B(_054_),
    .C(_055_),
    .D(_056_),
    .X(_063_));
 sky130_fd_sc_hd__o21ai_1 _085_ (.A1(_061_),
    .A2(_062_),
    .B1(_063_),
    .Y(_001_));
 sky130_fd_sc_hd__o211a_1 _086_ (.A1(\state[2] ),
    .A2(_054_),
    .B1(\shiftreg_tx[7] ),
    .C1(net25),
    .X(net21));
 sky130_fd_sc_hd__nand2_1 _087_ (.A(\state[2] ),
    .B(\datacounter[0] ),
    .Y(_064_));
 sky130_fd_sc_hd__nor3b_1 _088_ (.A(\state[2] ),
    .B(\state[0] ),
    .C_N(net25),
    .Y(_065_));
 sky130_fd_sc_hd__a211o_1 _089_ (.A1(net25),
    .A2(_054_),
    .B1(_059_),
    .C1(_065_),
    .X(_066_));
 sky130_fd_sc_hd__nor2_1 _090_ (.A(_052_),
    .B(_066_),
    .Y(_067_));
 sky130_fd_sc_hd__a221o_1 _091_ (.A1(\datacounter[0] ),
    .A2(_066_),
    .B1(_067_),
    .B2(_064_),
    .C1(net12),
    .X(_003_));
 sky130_fd_sc_hd__a21o_1 _092_ (.A1(net25),
    .A2(\datacounter[0] ),
    .B1(_066_),
    .X(_068_));
 sky130_fd_sc_hd__o21ai_1 _093_ (.A1(\datacounter[0] ),
    .A2(\datacounter[1] ),
    .B1(\state[2] ),
    .Y(_069_));
 sky130_fd_sc_hd__a221o_1 _094_ (.A1(\datacounter[1] ),
    .A2(_068_),
    .B1(_069_),
    .B2(_067_),
    .C1(net12),
    .X(_004_));
 sky130_fd_sc_hd__o21ai_1 _095_ (.A1(\datacounter[0] ),
    .A2(\datacounter[1] ),
    .B1(\datacounter[2] ),
    .Y(_070_));
 sky130_fd_sc_hd__nand3_1 _096_ (.A(\state[2] ),
    .B(_055_),
    .C(_070_),
    .Y(_030_));
 sky130_fd_sc_hd__a221o_1 _097_ (.A1(\datacounter[2] ),
    .A2(_066_),
    .B1(_067_),
    .B2(_030_),
    .C1(net12),
    .X(_005_));
 sky130_fd_sc_hd__mux2_1 _098_ (.A0(\shiftreg_rx[0] ),
    .A1(net41),
    .S(_062_),
    .X(_006_));
 sky130_fd_sc_hd__mux2_1 _099_ (.A0(\shiftreg_rx[1] ),
    .A1(net39),
    .S(_062_),
    .X(_007_));
 sky130_fd_sc_hd__mux2_1 _100_ (.A0(\shiftreg_rx[2] ),
    .A1(net37),
    .S(_062_),
    .X(_008_));
 sky130_fd_sc_hd__mux2_1 _101_ (.A0(\shiftreg_rx[3] ),
    .A1(net43),
    .S(_062_),
    .X(_009_));
 sky130_fd_sc_hd__mux2_1 _102_ (.A0(\shiftreg_rx[4] ),
    .A1(net33),
    .S(_062_),
    .X(_010_));
 sky130_fd_sc_hd__mux2_1 _103_ (.A0(\shiftreg_rx[5] ),
    .A1(net31),
    .S(_062_),
    .X(_011_));
 sky130_fd_sc_hd__mux2_1 _104_ (.A0(\shiftreg_rx[6] ),
    .A1(net35),
    .S(_062_),
    .X(_012_));
 sky130_fd_sc_hd__mux2_1 _105_ (.A0(net28),
    .A1(net30),
    .S(_062_),
    .X(_013_));
 sky130_fd_sc_hd__nor2_1 _106_ (.A(\state[0] ),
    .B(_060_),
    .Y(_031_));
 sky130_fd_sc_hd__nor2_1 _107_ (.A(net12),
    .B(_031_),
    .Y(_032_));
 sky130_fd_sc_hd__a311o_4 _108_ (.A1(net25),
    .A2(_054_),
    .A3(_060_),
    .B1(_031_),
    .C1(net12),
    .X(_033_));
 sky130_fd_sc_hd__a32o_1 _109_ (.A1(net1),
    .A2(_059_),
    .A3(_032_),
    .B1(_033_),
    .B2(net29),
    .X(_014_));
 sky130_fd_sc_hd__and3b_2 _110_ (.A_N(\state[1] ),
    .B(net23),
    .C(\state[2] ),
    .X(_034_));
 sky130_fd_sc_hd__a22o_1 _111_ (.A1(net2),
    .A2(_059_),
    .B1(_034_),
    .B2(\shiftreg_tx[0] ),
    .X(_035_));
 sky130_fd_sc_hd__mux2_1 _112_ (.A0(_035_),
    .A1(net47),
    .S(_033_),
    .X(_015_));
 sky130_fd_sc_hd__a22o_1 _113_ (.A1(net3),
    .A2(_059_),
    .B1(_034_),
    .B2(\shiftreg_tx[1] ),
    .X(_036_));
 sky130_fd_sc_hd__mux2_1 _114_ (.A0(_036_),
    .A1(net46),
    .S(_033_),
    .X(_016_));
 sky130_fd_sc_hd__a22o_1 _115_ (.A1(net4),
    .A2(_059_),
    .B1(_034_),
    .B2(\shiftreg_tx[2] ),
    .X(_037_));
 sky130_fd_sc_hd__mux2_1 _116_ (.A0(_037_),
    .A1(net48),
    .S(_033_),
    .X(_017_));
 sky130_fd_sc_hd__a22o_1 _117_ (.A1(net5),
    .A2(_059_),
    .B1(_034_),
    .B2(\shiftreg_tx[3] ),
    .X(_038_));
 sky130_fd_sc_hd__mux2_1 _118_ (.A0(_038_),
    .A1(net50),
    .S(_033_),
    .X(_018_));
 sky130_fd_sc_hd__a22o_1 _119_ (.A1(net6),
    .A2(_059_),
    .B1(_034_),
    .B2(\shiftreg_tx[4] ),
    .X(_039_));
 sky130_fd_sc_hd__mux2_1 _120_ (.A0(_039_),
    .A1(net49),
    .S(_033_),
    .X(_019_));
 sky130_fd_sc_hd__a22o_1 _121_ (.A1(net7),
    .A2(_059_),
    .B1(_034_),
    .B2(\shiftreg_tx[5] ),
    .X(_040_));
 sky130_fd_sc_hd__mux2_1 _122_ (.A0(_040_),
    .A1(net51),
    .S(_033_),
    .X(_020_));
 sky130_fd_sc_hd__a22o_1 _123_ (.A1(net8),
    .A2(_059_),
    .B1(_034_),
    .B2(\shiftreg_tx[6] ),
    .X(_041_));
 sky130_fd_sc_hd__mux2_1 _124_ (.A0(_041_),
    .A1(net45),
    .S(_033_),
    .X(_021_));
 sky130_fd_sc_hd__a21oi_1 _125_ (.A1(_053_),
    .A2(net10),
    .B1(_056_),
    .Y(_042_));
 sky130_fd_sc_hd__or4_4 _126_ (.A(net12),
    .B(_065_),
    .C(_031_),
    .D(_042_),
    .X(_043_));
 sky130_fd_sc_hd__and2_1 _127_ (.A(net22),
    .B(net11),
    .X(_044_));
 sky130_fd_sc_hd__mux2_1 _128_ (.A0(_044_),
    .A1(net56),
    .S(_043_),
    .X(_022_));
 sky130_fd_sc_hd__and2_1 _129_ (.A(net22),
    .B(\shiftreg_rx[0] ),
    .X(_045_));
 sky130_fd_sc_hd__mux2_1 _130_ (.A0(_045_),
    .A1(net57),
    .S(_043_),
    .X(_023_));
 sky130_fd_sc_hd__and2_1 _131_ (.A(net22),
    .B(\shiftreg_rx[1] ),
    .X(_046_));
 sky130_fd_sc_hd__mux2_1 _132_ (.A0(_046_),
    .A1(net58),
    .S(_043_),
    .X(_024_));
 sky130_fd_sc_hd__and2_1 _133_ (.A(net22),
    .B(\shiftreg_rx[2] ),
    .X(_047_));
 sky130_fd_sc_hd__mux2_1 _134_ (.A0(_047_),
    .A1(net53),
    .S(_043_),
    .X(_025_));
 sky130_fd_sc_hd__and2_1 _135_ (.A(net22),
    .B(\shiftreg_rx[3] ),
    .X(_048_));
 sky130_fd_sc_hd__mux2_1 _136_ (.A0(_048_),
    .A1(net54),
    .S(_043_),
    .X(_026_));
 sky130_fd_sc_hd__and2_1 _137_ (.A(net24),
    .B(\shiftreg_rx[4] ),
    .X(_049_));
 sky130_fd_sc_hd__mux2_1 _138_ (.A0(_049_),
    .A1(net55),
    .S(_043_),
    .X(_027_));
 sky130_fd_sc_hd__and2_1 _139_ (.A(net24),
    .B(\shiftreg_rx[5] ),
    .X(_050_));
 sky130_fd_sc_hd__mux2_1 _140_ (.A0(_050_),
    .A1(net52),
    .S(_043_),
    .X(_028_));
 sky130_fd_sc_hd__and2_1 _141_ (.A(net24),
    .B(\shiftreg_rx[6] ),
    .X(_051_));
 sky130_fd_sc_hd__mux2_1 _142_ (.A0(_051_),
    .A1(net28),
    .S(_043_),
    .X(_029_));
 sky130_fd_sc_hd__dfstp_1 _143_ (.CLK(clknet_2_3__leaf_clkin),
    .D(_003_),
    .SET_B(net26),
    .Q(\datacounter[0] ));
 sky130_fd_sc_hd__dfstp_1 _144_ (.CLK(clknet_2_3__leaf_clkin),
    .D(_004_),
    .SET_B(net26),
    .Q(\datacounter[1] ));
 sky130_fd_sc_hd__dfstp_1 _145_ (.CLK(clknet_2_3__leaf_clkin),
    .D(_005_),
    .SET_B(net26),
    .Q(\datacounter[2] ));
 sky130_fd_sc_hd__dfstp_1 _146_ (.CLK(clknet_2_2__leaf_clkin),
    .D(_000_),
    .SET_B(net23),
    .Q(\state[0] ));
 sky130_fd_sc_hd__dfrtp_2 _147_ (.CLK(clknet_2_2__leaf_clkin),
    .D(_001_),
    .RESET_B(net23),
    .Q(\state[1] ));
 sky130_fd_sc_hd__dfrtp_4 _148_ (.CLK(clknet_2_0__leaf_clkin),
    .D(_002_),
    .RESET_B(net24),
    .Q(\state[2] ));
 sky130_fd_sc_hd__dfrtp_1 _149_ (.CLK(clknet_2_1__leaf_clkin),
    .D(net10),
    .RESET_B(net24),
    .Q(rx));
 sky130_fd_sc_hd__dfrtp_1 _150_ (.CLK(clknet_2_2__leaf_clkin),
    .D(net42),
    .RESET_B(net22),
    .Q(net13));
 sky130_fd_sc_hd__dfrtp_1 _151_ (.CLK(clknet_2_0__leaf_clkin),
    .D(net40),
    .RESET_B(net22),
    .Q(net14));
 sky130_fd_sc_hd__dfrtp_1 _152_ (.CLK(clknet_2_0__leaf_clkin),
    .D(net38),
    .RESET_B(net22),
    .Q(net15));
 sky130_fd_sc_hd__dfrtp_1 _153_ (.CLK(clknet_2_0__leaf_clkin),
    .D(net44),
    .RESET_B(net23),
    .Q(net16));
 sky130_fd_sc_hd__dfrtp_1 _154_ (.CLK(clknet_2_0__leaf_clkin),
    .D(net34),
    .RESET_B(net24),
    .Q(net17));
 sky130_fd_sc_hd__dfrtp_1 _155_ (.CLK(clknet_2_1__leaf_clkin),
    .D(net32),
    .RESET_B(net24),
    .Q(net18));
 sky130_fd_sc_hd__dfrtp_1 _156_ (.CLK(clknet_2_1__leaf_clkin),
    .D(net36),
    .RESET_B(net24),
    .Q(net19));
 sky130_fd_sc_hd__dfrtp_1 _157_ (.CLK(clknet_2_1__leaf_clkin),
    .D(_013_),
    .RESET_B(net26),
    .Q(net20));
 sky130_fd_sc_hd__dfrtp_1 _158_ (.CLK(clknet_2_2__leaf_clkin),
    .D(_014_),
    .RESET_B(net23),
    .Q(\shiftreg_tx[0] ));
 sky130_fd_sc_hd__dfrtp_1 _159_ (.CLK(clknet_2_2__leaf_clkin),
    .D(_015_),
    .RESET_B(net23),
    .Q(\shiftreg_tx[1] ));
 sky130_fd_sc_hd__dfrtp_1 _160_ (.CLK(clknet_2_2__leaf_clkin),
    .D(_016_),
    .RESET_B(net23),
    .Q(\shiftreg_tx[2] ));
 sky130_fd_sc_hd__dfrtp_1 _161_ (.CLK(clknet_2_2__leaf_clkin),
    .D(_017_),
    .RESET_B(net27),
    .Q(\shiftreg_tx[3] ));
 sky130_fd_sc_hd__dfrtp_1 _162_ (.CLK(clknet_2_2__leaf_clkin),
    .D(_018_),
    .RESET_B(net27),
    .Q(\shiftreg_tx[4] ));
 sky130_fd_sc_hd__dfrtp_1 _163_ (.CLK(clknet_2_2__leaf_clkin),
    .D(_019_),
    .RESET_B(net27),
    .Q(\shiftreg_tx[5] ));
 sky130_fd_sc_hd__dfrtp_1 _164_ (.CLK(clknet_2_3__leaf_clkin),
    .D(_020_),
    .RESET_B(net25),
    .Q(\shiftreg_tx[6] ));
 sky130_fd_sc_hd__dfrtp_1 _165_ (.CLK(clknet_2_3__leaf_clkin),
    .D(_021_),
    .RESET_B(net25),
    .Q(\shiftreg_tx[7] ));
 sky130_fd_sc_hd__dfrtp_1 _166_ (.CLK(clknet_2_2__leaf_clkin),
    .D(_022_),
    .RESET_B(net22),
    .Q(\shiftreg_rx[0] ));
 sky130_fd_sc_hd__dfrtp_1 _167_ (.CLK(clknet_2_0__leaf_clkin),
    .D(_023_),
    .RESET_B(net23),
    .Q(\shiftreg_rx[1] ));
 sky130_fd_sc_hd__dfrtp_1 _168_ (.CLK(clknet_2_0__leaf_clkin),
    .D(_024_),
    .RESET_B(net22),
    .Q(\shiftreg_rx[2] ));
 sky130_fd_sc_hd__dfrtp_1 _169_ (.CLK(clknet_2_0__leaf_clkin),
    .D(_025_),
    .RESET_B(net23),
    .Q(\shiftreg_rx[3] ));
 sky130_fd_sc_hd__dfrtp_1 _170_ (.CLK(clknet_2_0__leaf_clkin),
    .D(_026_),
    .RESET_B(net24),
    .Q(\shiftreg_rx[4] ));
 sky130_fd_sc_hd__dfrtp_1 _171_ (.CLK(clknet_2_1__leaf_clkin),
    .D(_027_),
    .RESET_B(net24),
    .Q(\shiftreg_rx[5] ));
 sky130_fd_sc_hd__dfrtp_1 _172_ (.CLK(clknet_2_1__leaf_clkin),
    .D(_028_),
    .RESET_B(net26),
    .Q(\shiftreg_rx[6] ));
 sky130_fd_sc_hd__dfrtp_1 _173_ (.CLK(clknet_2_1__leaf_clkin),
    .D(_029_),
    .RESET_B(net26),
    .Q(\shiftreg_rx[7] ));
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
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_28 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_29 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_30 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_31 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_32 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_33 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_34 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_35 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_36 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_37 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Left_38 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Left_39 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_40 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_41 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_42 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_43 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_44 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_45 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_46 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_47 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_48 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_49 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_50 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_51 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_52 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_53 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_54 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_55 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_56 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_57 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_58 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_59 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_60 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_61 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_62 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_63 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_64 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_65 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_66 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_67 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_68 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_69 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_70 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_71 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_72 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_73 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_74 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_75 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_76 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_77 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_78 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_79 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_83 ();
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
 sky130_fd_sc_hd__clkbuf_1 input9 (.A(reset),
    .X(net9));
 sky130_fd_sc_hd__buf_1 input10 (.A(sclk),
    .X(net10));
 sky130_fd_sc_hd__clkbuf_1 input11 (.A(sdi),
    .X(net11));
 sky130_fd_sc_hd__buf_2 input12 (.A(slave_select_in),
    .X(net12));
 sky130_fd_sc_hd__buf_2 output13 (.A(net13),
    .X(data_out[0]));
 sky130_fd_sc_hd__buf_2 output14 (.A(net14),
    .X(data_out[1]));
 sky130_fd_sc_hd__buf_2 output15 (.A(net15),
    .X(data_out[2]));
 sky130_fd_sc_hd__buf_2 output16 (.A(net16),
    .X(data_out[3]));
 sky130_fd_sc_hd__buf_2 output17 (.A(net17),
    .X(data_out[4]));
 sky130_fd_sc_hd__buf_2 output18 (.A(net18),
    .X(data_out[5]));
 sky130_fd_sc_hd__buf_2 output19 (.A(net19),
    .X(data_out[6]));
 sky130_fd_sc_hd__buf_2 output20 (.A(net20),
    .X(data_out[7]));
 sky130_fd_sc_hd__buf_2 output21 (.A(net21),
    .X(sdo));
 sky130_fd_sc_hd__buf_2 fanout22 (.A(net23),
    .X(net22));
 sky130_fd_sc_hd__clkbuf_4 fanout23 (.A(net27),
    .X(net23));
 sky130_fd_sc_hd__buf_2 fanout24 (.A(net26),
    .X(net24));
 sky130_fd_sc_hd__buf_2 fanout25 (.A(net26),
    .X(net25));
 sky130_fd_sc_hd__buf_2 fanout26 (.A(net27),
    .X(net26));
 sky130_fd_sc_hd__clkbuf_2 fanout27 (.A(net9),
    .X(net27));
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
 sky130_fd_sc_hd__clkbuf_4 clkload0 (.A(clknet_2_0__leaf_clkin));
 sky130_fd_sc_hd__clkinv_2 clkload1 (.A(clknet_2_1__leaf_clkin));
 sky130_fd_sc_hd__clkinvlp_4 clkload2 (.A(clknet_2_3__leaf_clkin));
 sky130_fd_sc_hd__dlygate4sd3_1 hold1 (.A(\shiftreg_rx[7] ),
    .X(net28));
 sky130_fd_sc_hd__dlygate4sd3_1 hold2 (.A(\shiftreg_tx[0] ),
    .X(net29));
 sky130_fd_sc_hd__dlygate4sd3_1 hold3 (.A(net20),
    .X(net30));
 sky130_fd_sc_hd__dlygate4sd3_1 hold4 (.A(net18),
    .X(net31));
 sky130_fd_sc_hd__dlygate4sd3_1 hold5 (.A(_011_),
    .X(net32));
 sky130_fd_sc_hd__dlygate4sd3_1 hold6 (.A(net17),
    .X(net33));
 sky130_fd_sc_hd__dlygate4sd3_1 hold7 (.A(_010_),
    .X(net34));
 sky130_fd_sc_hd__dlygate4sd3_1 hold8 (.A(net19),
    .X(net35));
 sky130_fd_sc_hd__dlygate4sd3_1 hold9 (.A(_012_),
    .X(net36));
 sky130_fd_sc_hd__dlygate4sd3_1 hold10 (.A(net15),
    .X(net37));
 sky130_fd_sc_hd__dlygate4sd3_1 hold11 (.A(_008_),
    .X(net38));
 sky130_fd_sc_hd__dlygate4sd3_1 hold12 (.A(net14),
    .X(net39));
 sky130_fd_sc_hd__dlygate4sd3_1 hold13 (.A(_007_),
    .X(net40));
 sky130_fd_sc_hd__dlygate4sd3_1 hold14 (.A(net13),
    .X(net41));
 sky130_fd_sc_hd__dlygate4sd3_1 hold15 (.A(_006_),
    .X(net42));
 sky130_fd_sc_hd__dlygate4sd3_1 hold16 (.A(net16),
    .X(net43));
 sky130_fd_sc_hd__dlygate4sd3_1 hold17 (.A(_009_),
    .X(net44));
 sky130_fd_sc_hd__dlygate4sd3_1 hold18 (.A(\shiftreg_tx[7] ),
    .X(net45));
 sky130_fd_sc_hd__dlygate4sd3_1 hold19 (.A(\shiftreg_tx[2] ),
    .X(net46));
 sky130_fd_sc_hd__dlygate4sd3_1 hold20 (.A(\shiftreg_tx[1] ),
    .X(net47));
 sky130_fd_sc_hd__dlygate4sd3_1 hold21 (.A(\shiftreg_tx[3] ),
    .X(net48));
 sky130_fd_sc_hd__dlygate4sd3_1 hold22 (.A(\shiftreg_tx[5] ),
    .X(net49));
 sky130_fd_sc_hd__dlygate4sd3_1 hold23 (.A(\shiftreg_tx[4] ),
    .X(net50));
 sky130_fd_sc_hd__dlygate4sd3_1 hold24 (.A(\shiftreg_tx[6] ),
    .X(net51));
 sky130_fd_sc_hd__dlygate4sd3_1 hold25 (.A(\shiftreg_rx[6] ),
    .X(net52));
 sky130_fd_sc_hd__dlygate4sd3_1 hold26 (.A(\shiftreg_rx[3] ),
    .X(net53));
 sky130_fd_sc_hd__dlygate4sd3_1 hold27 (.A(\shiftreg_rx[4] ),
    .X(net54));
 sky130_fd_sc_hd__dlygate4sd3_1 hold28 (.A(\shiftreg_rx[5] ),
    .X(net55));
 sky130_fd_sc_hd__dlygate4sd3_1 hold29 (.A(\shiftreg_rx[0] ),
    .X(net56));
 sky130_fd_sc_hd__dlygate4sd3_1 hold30 (.A(\shiftreg_rx[1] ),
    .X(net57));
 sky130_fd_sc_hd__dlygate4sd3_1 hold31 (.A(\shiftreg_rx[2] ),
    .X(net58));
 sky130_ef_sc_hd__decap_12 FILLER_0_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_50 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_72 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_97 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_103 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_1_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_15 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_53 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_61 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_99 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_113 ();
 sky130_fd_sc_hd__decap_8 FILLER_2_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_11 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_49 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_83 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_94 ();
 sky130_ef_sc_hd__decap_12 FILLER_3_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_54 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_57 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_87 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_98 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_110 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_113 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_23 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_33 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_83 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_24 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_65 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_6_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_19 ();
 sky130_fd_sc_hd__decap_8 FILLER_6_48 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_56 ();
 sky130_fd_sc_hd__decap_8 FILLER_6_67 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_7_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_19 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_29 ();
 sky130_fd_sc_hd__decap_6 FILLER_7_50 ();
 sky130_ef_sc_hd__decap_12 FILLER_7_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_69 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_110 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_113 ();
 sky130_fd_sc_hd__decap_6 FILLER_8_43 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_49 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_83 ();
 sky130_fd_sc_hd__decap_8 FILLER_8_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_93 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_6 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_43 ();
 sky130_ef_sc_hd__decap_12 FILLER_9_84 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_96 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_100 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_113 ();
 sky130_fd_sc_hd__decap_6 FILLER_10_7 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_13 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_23 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_10_37 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_49 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_80 ();
 sky130_ef_sc_hd__decap_12 FILLER_10_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_10_97 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_109 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_55 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_113 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_6 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_27 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_110 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_114 ();
 sky130_fd_sc_hd__decap_6 FILLER_13_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_9 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_46 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_50 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_54 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_82 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_25 ();
 sky130_fd_sc_hd__fill_2 FILLER_14_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_14_38 ();
 sky130_fd_sc_hd__decap_6 FILLER_14_50 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_91 ();
 sky130_fd_sc_hd__decap_8 FILLER_14_106 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_114 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_6 ();
 sky130_fd_sc_hd__decap_6 FILLER_15_31 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_52 ();
 sky130_ef_sc_hd__decap_12 FILLER_15_64 ();
 sky130_fd_sc_hd__decap_8 FILLER_15_76 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_84 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_108 ();
 sky130_fd_sc_hd__fill_2 FILLER_15_113 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_23 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_49 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_81 ();
 sky130_ef_sc_hd__decap_12 FILLER_16_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_16_97 ();
 sky130_fd_sc_hd__decap_6 FILLER_16_109 ();
 sky130_fd_sc_hd__decap_6 FILLER_17_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_9 ();
 sky130_fd_sc_hd__decap_6 FILLER_17_30 ();
 sky130_fd_sc_hd__decap_6 FILLER_17_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_17_90 ();
 sky130_fd_sc_hd__decap_8 FILLER_17_102 ();
 sky130_fd_sc_hd__fill_2 FILLER_17_110 ();
 sky130_fd_sc_hd__fill_2 FILLER_17_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_18_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_33 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_43 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_53 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_18_93 ();
 sky130_fd_sc_hd__decap_8 FILLER_18_105 ();
 sky130_fd_sc_hd__fill_2 FILLER_18_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_19_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_19_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_27 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_37 ();
 sky130_fd_sc_hd__decap_4 FILLER_19_41 ();
 sky130_fd_sc_hd__decap_8 FILLER_19_48 ();
 sky130_fd_sc_hd__decap_4 FILLER_19_68 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_72 ();
 sky130_fd_sc_hd__decap_4 FILLER_19_76 ();
 sky130_ef_sc_hd__decap_12 FILLER_19_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_19_97 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_109 ();
 sky130_fd_sc_hd__fill_2 FILLER_19_113 ();
endmodule
