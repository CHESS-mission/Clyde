`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module COREAPB3_MUXPTOB3(
       CoreAPB3_0_APBmslave0_PRDATA,
       CoreAPB3_0_APBmslave1_PRDATA,
       COREABC_0_APB3master_PRDATA,
       CoreAPB3_0_APBmslave1_PSELx,
       CoreAPB3_0_APBmslave0_PSELx
    );
input  [7:0] CoreAPB3_0_APBmslave0_PRDATA;
input  [7:0] CoreAPB3_0_APBmslave1_PRDATA;
output [7:0] COREABC_0_APB3master_PRDATA;
input  CoreAPB3_0_APBmslave1_PSELx;
input  CoreAPB3_0_APBmslave0_PSELx;

    wire N_28, N_32, N_36, N_40, N_38, N_34, N_30, N_26, GND, VCC;
    
    NOR2B \PRDATA_1_a3_0[0]  (.A(CoreAPB3_0_APBmslave0_PRDATA[0]), .B(
        CoreAPB3_0_APBmslave0_PSELx), .Y(N_40));
    NOR2B \PRDATA_1_a3_0[7]  (.A(CoreAPB3_0_APBmslave0_PRDATA[7]), .B(
        CoreAPB3_0_APBmslave0_PSELx), .Y(N_26));
    AO1 \PRDATA_1[3]  (.A(CoreAPB3_0_APBmslave1_PRDATA[3]), .B(
        CoreAPB3_0_APBmslave1_PSELx), .C(N_34), .Y(
        COREABC_0_APB3master_PRDATA[3]));
    NOR2B \PRDATA_1_a3_0[6]  (.A(CoreAPB3_0_APBmslave0_PRDATA[6]), .B(
        CoreAPB3_0_APBmslave0_PSELx), .Y(N_28));
    VCC VCC_i (.Y(VCC));
    NOR2B \PRDATA_1_a3_0[4]  (.A(CoreAPB3_0_APBmslave0_PRDATA[4]), .B(
        CoreAPB3_0_APBmslave0_PSELx), .Y(N_32));
    NOR2B \PRDATA_1_a3_0[1]  (.A(CoreAPB3_0_APBmslave0_PRDATA[1]), .B(
        CoreAPB3_0_APBmslave0_PSELx), .Y(N_38));
    AO1 \PRDATA_1[5]  (.A(CoreAPB3_0_APBmslave1_PRDATA[5]), .B(
        CoreAPB3_0_APBmslave1_PSELx), .C(N_30), .Y(
        COREABC_0_APB3master_PRDATA[5]));
    AO1 \PRDATA_1[2]  (.A(CoreAPB3_0_APBmslave1_PRDATA[2]), .B(
        CoreAPB3_0_APBmslave1_PSELx), .C(N_36), .Y(
        COREABC_0_APB3master_PRDATA[2]));
    GND GND_i (.Y(GND));
    AO1 \PRDATA_1[0]  (.A(CoreAPB3_0_APBmslave1_PRDATA[0]), .B(
        CoreAPB3_0_APBmslave1_PSELx), .C(N_40), .Y(
        COREABC_0_APB3master_PRDATA[0]));
    AO1 \PRDATA_1[1]  (.A(CoreAPB3_0_APBmslave1_PRDATA[1]), .B(
        CoreAPB3_0_APBmslave1_PSELx), .C(N_38), .Y(
        COREABC_0_APB3master_PRDATA[1]));
    AO1 \PRDATA_1[4]  (.A(CoreAPB3_0_APBmslave1_PRDATA[4]), .B(
        CoreAPB3_0_APBmslave1_PSELx), .C(N_32), .Y(
        COREABC_0_APB3master_PRDATA[4]));
    NOR2B \PRDATA_1_a3_0[3]  (.A(CoreAPB3_0_APBmslave0_PRDATA[3]), .B(
        CoreAPB3_0_APBmslave0_PSELx), .Y(N_34));
    AO1 \PRDATA_1[7]  (.A(CoreAPB3_0_APBmslave1_PRDATA[7]), .B(
        CoreAPB3_0_APBmslave1_PSELx), .C(N_26), .Y(
        COREABC_0_APB3master_PRDATA[7]));
    NOR2B \PRDATA_1_a3_0[5]  (.A(CoreAPB3_0_APBmslave0_PRDATA[5]), .B(
        CoreAPB3_0_APBmslave0_PSELx), .Y(N_30));
    NOR2B \PRDATA_1_a3_0[2]  (.A(CoreAPB3_0_APBmslave0_PRDATA[2]), .B(
        CoreAPB3_0_APBmslave0_PSELx), .Y(N_36));
    AO1 \PRDATA_1[6]  (.A(CoreAPB3_0_APBmslave1_PRDATA[6]), .B(
        CoreAPB3_0_APBmslave1_PSELx), .C(N_28), .Y(
        COREABC_0_APB3master_PRDATA[6]));
    
endmodule


module CoreAPB3_Z3(
       COREABC_0_APB3master_PRDATA,
       CoreAPB3_0_APBmslave1_PRDATA,
       CoreAPB3_0_APBmslave0_PRDATA,
       COREABC_0_APB3master_PADDR,
       CoreAPB3_0_APBmslave0_PSELx,
       COREABC_0_APB3master_PSELx,
       CoreAPB3_0_APBmslave1_PSELx
    );
output [7:0] COREABC_0_APB3master_PRDATA;
input  [7:0] CoreAPB3_0_APBmslave1_PRDATA;
input  [7:0] CoreAPB3_0_APBmslave0_PRDATA;
input  [19:16] COREABC_0_APB3master_PADDR;
output CoreAPB3_0_APBmslave0_PSELx;
input  COREABC_0_APB3master_PSELx;
output CoreAPB3_0_APBmslave1_PSELx;

    wire \iPSELS_0_a2_0_1[0]_net_1 , GND, VCC;
    
    NOR3C \iPSELS_0_a2[1]  (.A(COREABC_0_APB3master_PSELx), .B(
        \iPSELS_0_a2_0_1[0]_net_1 ), .C(COREABC_0_APB3master_PADDR[16])
        , .Y(CoreAPB3_0_APBmslave1_PSELx));
    COREAPB3_MUXPTOB3 u_mux_p_to_b3 (.CoreAPB3_0_APBmslave0_PRDATA({
        CoreAPB3_0_APBmslave0_PRDATA[7], 
        CoreAPB3_0_APBmslave0_PRDATA[6], 
        CoreAPB3_0_APBmslave0_PRDATA[5], 
        CoreAPB3_0_APBmslave0_PRDATA[4], 
        CoreAPB3_0_APBmslave0_PRDATA[3], 
        CoreAPB3_0_APBmslave0_PRDATA[2], 
        CoreAPB3_0_APBmslave0_PRDATA[1], 
        CoreAPB3_0_APBmslave0_PRDATA[0]}), 
        .CoreAPB3_0_APBmslave1_PRDATA({CoreAPB3_0_APBmslave1_PRDATA[7], 
        CoreAPB3_0_APBmslave1_PRDATA[6], 
        CoreAPB3_0_APBmslave1_PRDATA[5], 
        CoreAPB3_0_APBmslave1_PRDATA[4], 
        CoreAPB3_0_APBmslave1_PRDATA[3], 
        CoreAPB3_0_APBmslave1_PRDATA[2], 
        CoreAPB3_0_APBmslave1_PRDATA[1], 
        CoreAPB3_0_APBmslave1_PRDATA[0]}), 
        .COREABC_0_APB3master_PRDATA({COREABC_0_APB3master_PRDATA[7], 
        COREABC_0_APB3master_PRDATA[6], COREABC_0_APB3master_PRDATA[5], 
        COREABC_0_APB3master_PRDATA[4], COREABC_0_APB3master_PRDATA[3], 
        COREABC_0_APB3master_PRDATA[2], COREABC_0_APB3master_PRDATA[1], 
        COREABC_0_APB3master_PRDATA[0]}), .CoreAPB3_0_APBmslave1_PSELx(
        CoreAPB3_0_APBmslave1_PSELx), .CoreAPB3_0_APBmslave0_PSELx(
        CoreAPB3_0_APBmslave0_PSELx));
    NOR3B \iPSELS_0_a2[0]  (.A(COREABC_0_APB3master_PSELx), .B(
        \iPSELS_0_a2_0_1[0]_net_1 ), .C(COREABC_0_APB3master_PADDR[16])
        , .Y(CoreAPB3_0_APBmslave0_PSELx));
    VCC VCC_i (.Y(VCC));
    NOR3 \iPSELS_0_a2_0_1[0]  (.A(COREABC_0_APB3master_PADDR[19]), .B(
        COREABC_0_APB3master_PADDR[18]), .C(
        COREABC_0_APB3master_PADDR[17]), .Y(\iPSELS_0_a2_0_1[0]_net_1 )
        );
    GND GND_i (.Y(GND));
    
endmodule


module CoreTimer_32s_0s_15s_0s(
       CoreAPB3_0_APBmslave0_PRDATA,
       COREABC_0_APB3master_PWDATA,
       COREABC_0_APB3master_PADDR,
       COREABC_0_APB3master_PADDR_0_0,
       COREABC_0_PRESETN,
       SYSCLK_c,
       CoreTimer_0_TIMINT,
       COREABC_0_APB3master_PENABLE,
       COREABC_0_APB3master_PWRITE,
       CoreAPB3_0_APBmslave0_PSELx
    );
output [7:0] CoreAPB3_0_APBmslave0_PRDATA;
input  [7:0] COREABC_0_APB3master_PWDATA;
input  [4:2] COREABC_0_APB3master_PADDR;
input  COREABC_0_APB3master_PADDR_0_0;
input  COREABC_0_PRESETN;
input  SYSCLK_c;
output CoreTimer_0_TIMINT;
input  COREABC_0_APB3master_PENABLE;
input  COREABC_0_APB3master_PWRITE;
input  CoreAPB3_0_APBmslave0_PSELx;

    wire Counte_0, d_N_3_mux, OneShotClr_1, Countlde_N_16_mux, 
        un1_PreScale8_0, \Count_RNIC07P9[19]_net_1 , un1_PreScale8_out, 
        Count_n7_0_0, \Load[7]_net_1 , \Count_RNO_3[7]_net_1 , 
        \PrdataNext_1_0_iv_0_1[0] , \CtrlReg[0]_net_1 , 
        DataOut_2_sqmuxa, N_98, \PrdataNext_1_0_iv_0_0[0] , 
        \Count[0]_net_1 , DataOut_1_sqmuxa_net_1, N_96, 
        \PrdataNext_1_0_iv_0[2] , \Count[2]_net_1 , \TimerPre_m[2] , 
        \PrdataNext_1_0_iv_0[1] , \Count[1]_net_1 , \TimerPre_m[1] , 
        \PrdataNext_1_0_iv_0[3] , \Count[3]_net_1 , \TimerPre_m[3] , 
        Count_m11_0_a4_0, Count_m5_0_a2_1, \Count[7]_net_1 , N_63, 
        Count_n21_0_0, N_79, \Count[20]_net_1 , \Count[21]_net_1 , 
        Count_m11_0_o4_3, CtrlEn_0_net_1, Count_m11_0_o4_1, 
        \CtrlReg[2]_net_1 , Count_m6_e_4, Count_m6_e_2, Count_m6_e_3, 
        Count_m6_e_1, Count_n7_0_0_a0_3, Count_n7_0_0_a0_0, un4_CtrlEn, 
        Count_n21_a0_0, Countlde_m8_8, Countlde_m8_6, Countlde_m8_5, 
        N_140_4, Countlde_m8_1, Countlde_m8_0, Count_1_sqmuxa_0, 
        Countlde_m8_3, \Count[13]_net_1 , \Count[15]_net_1 , 
        \Count[14]_net_1 , \Count[19]_net_1 , \Count[17]_net_1 , 
        \Count[16]_net_1 , \Count[18]_net_1 , LoadEnReg_net_1, 
        DataOut_1_sqmuxa_0_net_1, \PrdataNext_1_0_iv_0_a3_0[0] , 
        RawTimInt_net_1, un1_NextCountPulse_0_sqmuxa_2, PreScale_c3, 
        N_253_tz, un1_NextCountPulse_0_sqmuxa_1, 
        NextCountPulse_0_sqmuxa_2, CountPulse_RNO_11_net_1, 
        NextCountPulse_0_sqmuxa_3, IntClrEn_0_a3_0, CountPulse_net_1, 
        NextCountPulse48_0, \PreScale[9]_net_1 , \PreScale[8]_net_1 , 
        un1_m3_e_2, un1_m3_e_0, Count_N_13_mux_i_0_6, 
        Count_N_13_mux_i_0_4, NextCountPulse_0_sqmuxa_7_7_1, 
        \PreScale[6]_net_1 , \PreScale[7]_net_1 , 
        NextCountPulse_0_sqmuxa_5_3, Count_N_13_mux_i_0_1, 
        Count_N_13_mux_i_0_5, un1_m3_e_3, Count_m4_e_0_4, 
        Count_m4_e_0_5, Count_m4_e_4, Count_m4_e_1, Count_m4_e_0, 
        un1_CountIsZero_0_a3_3_8, \Count[22]_net_1 , \Count[23]_net_1 , 
        un1_CountIsZero_0_a3_3_7, un1_CountIsZero_0_a3_3_3, 
        \Count[26]_net_1 , \Count[27]_net_1 , un1_CountIsZero_0_a3_3_6, 
        un1_CountIsZero_0_a3_3_1, \Count[30]_net_1 , \Count[31]_net_1 , 
        \Count[25]_net_1 , \Count[24]_net_1 , \Count[29]_net_1 , 
        \Count[28]_net_1 , Count_m4_e_0_5_1, \Count[6]_net_1 , 
        \Count[8]_net_1 , NextCountPulse_0_sqmuxa_2_0, 
        \PreScale[2]_net_1 , \TimerPre[0]_net_1 , 
        NextCountPulse_0_sqmuxa_6_2_1, \TimerPre[3]_net_1 , 
        Count_N_13_mux_i_0_6_1, Count_N_13_mux_i_0_6_0, 
        \Count[11]_net_1 , Count_m4_e_0_4_0, \Count[5]_net_1 , 
        Count_N_13_mux_i_0_5_1, \Count[9]_net_1 , N_69, N_77, 
        Count_N_9_mux, N_250_tz, N_250_tz_tz, \TimerPre[1]_net_1 , 
        NextCountPulse_0_sqmuxa_1_2, N_251_tz_tz, CtrlEn_net_1, 
        un1_NextCountPulse_0_sqmuxa, NextCountPulse_0_sqmuxa_7, 
        PreScale_c8, NextCountPulse48, PreScale_c1, 
        NextCountPulse_0_sqmuxa_2_3, N_140, CountIsZeroReg_i_0, 
        \PrdataNext_1[2] , \CtrlReg_m[2] , \Load_m[2] , 
        \PrdataNext_1[1] , \CtrlReg_m[1] , \Load_m[1] , N_117, N_438, 
        N_119, LoadEn, N_143, \PrdataNext_1[3] , \Load[3]_net_1 , 
        DataOut_0_sqmuxa, PrdataNextEn, N_158, N_439, N_64, 
        \PrdataNext_1[0] , N_100, N_83, IntClrEn, \Count[4]_net_1 , 
        \Count[12]_net_1 , \Count[10]_net_1 , Count_N_9_1, 
        \Count_RNO_1[21]_net_1 , N_452, Count_m11_0_0_tz, N_465, N_432, 
        \Load[1]_net_1 , N_431, \Load[0]_net_1 , Count_N_15_mux, 
        Counte, \PreScale[1]_net_1 , \PreScale[0]_net_1 , 
        \PreScale[5]_net_1 , \PreScale[4]_net_1 , N_440_i, N_441_i, 
        N_441_tz, un1_PreScale8, N_66, N_444_i, N_461_i, Count_c29, 
        N_462_i, Count_66_0, N_470, N_71, N_469, N_72, N_468, N_73, 
        N_467, Count_n18_i_a3_0, N_442_i, N_67, N_443_i, N_443_tz, 
        N_68, N_453_i, N_453_tz, N_454_i, Count_c22, N_455_i, 
        Count_c23, N_456_i, Count_c24, N_457_i, Count_c25, N_458_i, 
        Count_c26, N_459_i, Count_c27, N_460_i, Count_c28, PreScale_n2, 
        PreScale8, PreScale_n3, PreScale_c2, \PreScale[3]_net_1 , 
        PreScale_n4, PreScale_n4_tz, PreScale_n5, PreScale_c4, 
        PreScale_n6, PreScale_c5, PreScale_n7, PreScale_82_0, N_466, 
        N_471, N_70, PreScale_n9, PreScale_n8, PreScale_n8_tz, N_90_i, 
        N_61, N_87_i, N_86_i, N_59, N_85_i, N_84_i, \CtrlReg[1]_net_1 , 
        \PrdataNext_1[4] , N_137, \PrdataNext_1[5] , N_135, 
        \PrdataNext_1[6] , N_133, \PrdataNext_1[7] , N_131, N_433, 
        \Load[2]_net_1 , N_434, N_435, \Load[4]_net_1 , N_436, 
        \Load[5]_net_1 , N_437, \Load[6]_net_1 , PrescaleEn, 
        \PreScale_RNO[0]_net_1 , PreScale_n1, \TimerPre[2]_net_1 , 
        NxtRawTimInt, IntClr_i_0, NextCountPulse, un1_NextCountPulse63, 
        GND, VCC;
    
    DFN1E1C0 \Load[1]  (.D(COREABC_0_APB3master_PWDATA[1]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(LoadEn), .Q(
        \Load[1]_net_1 ));
    OR3 \Count_RNITJ992[6]  (.A(\Count[5]_net_1 ), .B(N_61), .C(
        \Count[6]_net_1 ), .Y(N_63));
    DFN1E1P0 \Count[27]  (.D(N_458_i), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .E(Counte), .Q(\Count[27]_net_1 ));
    DFN1E1P0 \Count[25]  (.D(N_456_i), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .E(Counte_0), .Q(\Count[25]_net_1 ));
    NOR3C \Count_RNI8NTH3[22]  (.A(un1_CountIsZero_0_a3_3_7), .B(
        un1_CountIsZero_0_a3_3_6), .C(un1_CountIsZero_0_a3_3_8), .Y(
        N_140_4));
    DFN1E1P0 \Count[17]  (.D(N_468), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .E(Counte_0), .Q(\Count[17]_net_1 ));
    DFN1E1C0 \TimerPre[0]  (.D(COREABC_0_APB3master_PWDATA[0]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(PrescaleEn), .Q(
        \TimerPre[0]_net_1 ));
    AO1 \iPRDATA_RNO_0[0]  (.A(\CtrlReg[0]_net_1 ), .B(
        DataOut_2_sqmuxa), .C(N_98), .Y(\PrdataNext_1_0_iv_0_1[0] ));
    NOR2B CtrlEn_0 (.A(COREABC_0_APB3master_PADDR[3]), .B(un4_CtrlEn), 
        .Y(CtrlEn_0_net_1));
    DFN1E1P0 \Count[15]  (.D(N_470), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .E(Counte_0), .Q(\Count[15]_net_1 ));
    AO1A \CtrlReg_RNINDG1O[2]  (.A(\Count_RNIC07P9[19]_net_1 ), .B(
        OneShotClr_1), .C(un1_PreScale8_out), .Y(un1_PreScale8_0));
    MX2A \Count_RNO[6]  (.A(N_90_i), .B(\Load[6]_net_1 ), .S(
        un1_PreScale8_0), .Y(N_437));
    NOR2 \Count_RNIO7UK[3]  (.A(\Count[5]_net_1 ), .B(\Count[3]_net_1 )
        , .Y(Count_m4_e_0_4_0));
    NOR3C \PreScale_RNIIAR5[8]  (.A(PreScale_c3), .B(
        NextCountPulse_0_sqmuxa_7_7_1), .C(\PreScale[8]_net_1 ), .Y(
        PreScale_c8));
    NOR3A \Count_RNIEDS91[2]  (.A(Count_m4_e_0_4_0), .B(
        \Count[4]_net_1 ), .C(\Count[2]_net_1 ), .Y(Count_m4_e_0_4));
    NOR2B \iPRDATA_RNO_0[5]  (.A(\Load[5]_net_1 ), .B(DataOut_0_sqmuxa)
        , .Y(N_135));
    MX2A \Count_RNO[3]  (.A(N_85_i), .B(\Load[3]_net_1 ), .S(
        un1_PreScale8_0), .Y(N_434));
    DFN1E1P0 \Count[9]  (.D(N_440_i), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .E(Counte), .Q(\Count[9]_net_1 ));
    OA1 \Count_RNO_0[18]  (.A(N_73), .B(\Count[17]_net_1 ), .C(
        \Count[18]_net_1 ), .Y(Count_n18_i_a3_0));
    NOR2 \PreScale_RNO[0]  (.A(\PreScale[0]_net_1 ), .B(PreScale8), .Y(
        \PreScale_RNO[0]_net_1 ));
    DFN1C0 \iPRDATA[0]  (.D(\PrdataNext_1[0] ), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .Q(CoreAPB3_0_APBmslave0_PRDATA[0]));
    NOR3B \Count_RNO_1[21]  (.A(CtrlEn_net_1), .B(Count_n21_a0_0), .C(
        COREABC_0_APB3master_PWDATA[2]), .Y(\Count_RNO_1[21]_net_1 ));
    NOR2 un2_CtrlEn_0_a2 (.A(COREABC_0_APB3master_PADDR[4]), .B(
        COREABC_0_APB3master_PADDR[2]), .Y(N_143));
    AO1A LoadEnReg_RNI37HPA (.A(\Count_RNIC07P9[19]_net_1 ), .B(
        Count_1_sqmuxa_0), .C(LoadEnReg_net_1), .Y(un1_PreScale8_out));
    AO1 \iPRDATA_RNO[5]  (.A(\Count[5]_net_1 ), .B(
        DataOut_1_sqmuxa_net_1), .C(N_135), .Y(\PrdataNext_1[5] ));
    NOR3C \iPRDATA_RNO_3[0]  (.A(PrdataNextEn), .B(N_158), .C(
        \TimerPre[0]_net_1 ), .Y(N_98));
    NOR3B un4_CtrlEn_0_a2 (.A(CoreAPB3_0_APBmslave0_PSELx), .B(
        COREABC_0_APB3master_PWRITE), .C(COREABC_0_APB3master_PENABLE), 
        .Y(un4_CtrlEn));
    NOR2 \Count_RNIH1CS[19]  (.A(\Count[19]_net_1 ), .B(
        Count_N_13_mux_i_0_4), .Y(un1_m3_e_0));
    DFN1E1C0 \TimerPre[1]  (.D(COREABC_0_APB3master_PWDATA[1]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(PrescaleEn), .Q(
        \TimerPre[1]_net_1 ));
    DFN1E1C0 \Load[7]  (.D(COREABC_0_APB3master_PWDATA[7]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(LoadEn), .Q(
        \Load[7]_net_1 ));
    OR2 \Count_RNI49976[19]  (.A(\Count[19]_net_1 ), .B(N_77), .Y(N_79)
        );
    OR2 \Count_RNIR5TI[14]  (.A(\Count[14]_net_1 ), .B(
        \Count[15]_net_1 ), .Y(Count_N_13_mux_i_0_6_1));
    DFN1E1P0 \Count[8]  (.D(N_439), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .E(Counte), .Q(\Count[8]_net_1 ));
    OA1C \Count_RNO[1]  (.A(Count_m11_0_0_tz), .B(\Load[1]_net_1 ), .C(
        Count_N_9_1), .Y(N_432));
    XA1C \Count_RNO[25]  (.A(Count_c24), .B(\Count[25]_net_1 ), .C(
        un1_PreScale8), .Y(N_456_i));
    OR3 \Count_RNIB2DV[2]  (.A(\Count[0]_net_1 ), .B(\Count[1]_net_1 ), 
        .C(\Count[2]_net_1 ), .Y(N_59));
    NOR2A \Count_RNO[12]  (.A(N_443_tz), .B(un1_PreScale8), .Y(N_443_i)
        );
    NOR3A \Count_RNIUNU51[26]  (.A(un1_CountIsZero_0_a3_3_3), .B(
        \Count[26]_net_1 ), .C(\Count[27]_net_1 ), .Y(
        un1_CountIsZero_0_a3_3_7));
    OR3 \iPRDATA_RNO[1]  (.A(\PrdataNext_1_0_iv_0[1] ), .B(
        \CtrlReg_m[1] ), .C(\Load_m[1] ), .Y(\PrdataNext_1[1] ));
    MX2 CountPulse_RNO (.A(NextCountPulse48), .B(
        un1_NextCountPulse_0_sqmuxa), .S(un1_NextCountPulse63), .Y(
        NextCountPulse));
    OR2 \Count_RNI05NM7[24]  (.A(Count_c23), .B(\Count[24]_net_1 ), .Y(
        Count_c24));
    NOR2A \Count_RNI9BUU9[19]  (.A(Count_m6_e_1), .B(
        \Count_RNIC07P9[19]_net_1 ), .Y(Count_m6_e_3));
    MX2A \Count_RNO[2]  (.A(N_84_i), .B(\Load[2]_net_1 ), .S(
        un1_PreScale8_0), .Y(N_433));
    OR2 \Count_RNIH5TA5[16]  (.A(\Count[16]_net_1 ), .B(N_72), .Y(N_73)
        );
    MX2A CountPulse_RNIU6G0F_0 (.A(d_N_3_mux), .B(OneShotClr_1), .S(
        Countlde_N_16_mux), .Y(Counte_0));
    XA1C \Count_RNO[11]  (.A(N_67), .B(\Count[11]_net_1 ), .C(
        un1_PreScale8), .Y(N_442_i));
    NOR2B \PreScale_RNI5L91[4]  (.A(\PreScale[5]_net_1 ), .B(
        \PreScale[4]_net_1 ), .Y(NextCountPulse_0_sqmuxa_5_3));
    DFN1E1C0 \Load[6]  (.D(COREABC_0_APB3master_PWDATA[6]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(LoadEn), .Q(
        \Load[6]_net_1 ));
    NOR2B \iPRDATA_RNO_2[2]  (.A(\Load[2]_net_1 ), .B(DataOut_0_sqmuxa)
        , .Y(\Load_m[2] ));
    DFN1E1P0 \Count[20]  (.D(N_465), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .E(Counte_0), .Q(\Count[20]_net_1 ));
    NOR3A PrdataNextEn_0_a2 (.A(CoreAPB3_0_APBmslave0_PSELx), .B(
        COREABC_0_APB3master_PENABLE), .C(COREABC_0_APB3master_PWRITE), 
        .Y(PrdataNextEn));
    NOR2A \Count_RNI28622[19]  (.A(un1_m3_e_0), .B(
        Count_N_13_mux_i_0_6), .Y(un1_m3_e_2));
    DFN1E1P0 \Count[10]  (.D(N_441_i), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .E(Counte_0), .Q(\Count[10]_net_1 ));
    OR2 \Count_RNILQ569[29]  (.A(Count_c28), .B(\Count[29]_net_1 ), .Y(
        Count_c29));
    XA1B \Count_RNO_2[1]  (.A(\Count[0]_net_1 ), .B(\Count[1]_net_1 ), 
        .C(un1_PreScale8_out), .Y(Count_m11_0_a4_0));
    OR2B \CtrlReg_RNI9LMM[1]  (.A(RawTimInt_net_1), .B(
        \CtrlReg[1]_net_1 ), .Y(CoreTimer_0_TIMINT));
    NOR3A \Count_RNIELBK1[1]  (.A(Count_m4_e_0_5_1), .B(
        \Count[0]_net_1 ), .C(\Count[1]_net_1 ), .Y(Count_m4_e_0_5));
    XA1C \Count_RNO[24]  (.A(Count_c23), .B(\Count[24]_net_1 ), .C(
        un1_PreScale8), .Y(N_455_i));
    DFN1E1P0 \Count[5]  (.D(N_436), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .E(Counte), .Q(\Count[5]_net_1 ));
    NOR2 \Count_RNIV9TI[14]  (.A(\Count[14]_net_1 ), .B(
        \Count[19]_net_1 ), .Y(Countlde_m8_3));
    NOR2B \CtrlReg_RNI05L2D[2]  (.A(Count_m6_e_2), .B(Count_m6_e_3), 
        .Y(Count_m6_e_4));
    AX1D \Count_RNO_0[21]  (.A(N_79), .B(\Count[20]_net_1 ), .C(
        \Count[21]_net_1 ), .Y(Count_n21_0_0));
    AO1 \iPRDATA_RNO[6]  (.A(\Count[6]_net_1 ), .B(
        DataOut_1_sqmuxa_net_1), .C(N_133), .Y(\PrdataNext_1[6] ));
    DFN1C0 CountPulse (.D(NextCountPulse), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .Q(CountPulse_net_1));
    NOR2A \Count_RNI37HPA[12]  (.A(Countlde_m8_8), .B(N_69), .Y(
        Countlde_N_16_mux));
    OR2 \Count_RNIG9KR3[11]  (.A(N_67), .B(\Count[11]_net_1 ), .Y(N_68)
        );
    NOR3C CountPulse_RNO_0 (.A(PreScale_c3), .B(
        NextCountPulse_0_sqmuxa_7_7_1), .C(NextCountPulse48_0), .Y(
        NextCountPulse48));
    NOR2 \Count_RNI9O5J[18]  (.A(\Count[18]_net_1 ), .B(
        LoadEnReg_net_1), .Y(Countlde_m8_0));
    NOR3B \Count_RNO_3[7]  (.A(Count_m6_e_3), .B(Count_n7_0_0_a0_3), 
        .C(COREABC_0_APB3master_PWDATA[2]), .Y(\Count_RNO_3[7]_net_1 ));
    NOR2 DataOut_1_sqmuxa_0 (.A(COREABC_0_APB3master_PADDR[4]), .B(
        COREABC_0_APB3master_PADDR[3]), .Y(DataOut_1_sqmuxa_0_net_1));
    DFN1C0 \PreScale[1]  (.D(PreScale_n1), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .Q(\PreScale[1]_net_1 ));
    NOR2A CountPulse_RNO_14 (.A(\PreScale[2]_net_1 ), .B(
        \TimerPre[0]_net_1 ), .Y(NextCountPulse_0_sqmuxa_2_0));
    DFN1C0 \iPRDATA[4]  (.D(\PrdataNext_1[4] ), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .Q(CoreAPB3_0_APBmslave0_PRDATA[4]));
    DFN1E1P0 \Count[4]  (.D(N_435), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .E(Counte), .Q(\Count[4]_net_1 ));
    GND GND_i (.Y(GND));
    NOR3C \iPRDATA_RNO_3[2]  (.A(PrdataNextEn), .B(N_158), .C(
        \TimerPre[2]_net_1 ), .Y(\TimerPre_m[2] ));
    NOR2B \iPRDATA_RNO_1[2]  (.A(DataOut_2_sqmuxa), .B(
        \CtrlReg[2]_net_1 ), .Y(\CtrlReg_m[2] ));
    NOR3B CountPulse_RNIV4JM (.A(\CtrlReg[0]_net_1 ), .B(
        CountPulse_net_1), .C(\CtrlReg[2]_net_1 ), .Y(Count_1_sqmuxa_0)
        );
    NOR2A \PreScale_RNO[4]  (.A(PreScale_n4_tz), .B(PreScale8), .Y(
        PreScale_n4));
    DFN1E1P0 \Count[22]  (.D(N_453_i), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .E(Counte_0), .Q(\Count[22]_net_1 ));
    NOR2B \PreScale_RNIUTI2[3]  (.A(\PreScale[3]_net_1 ), .B(
        PreScale_c2), .Y(PreScale_c3));
    XA1B \PreScale_RNO[5]  (.A(PreScale_c4), .B(\PreScale[5]_net_1 ), 
        .C(PreScale8), .Y(PreScale_n5));
    NOR2B \iPRDATA_RNO_5[0]  (.A(RawTimInt_net_1), .B(
        COREABC_0_APB3master_PADDR[4]), .Y(
        \PrdataNext_1_0_iv_0_a3_0[0] ));
    DFN1E1P0 \Count[12]  (.D(N_443_i), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .E(Counte_0), .Q(\Count[12]_net_1 ));
    DFN1E1C0 \Load[0]  (.D(COREABC_0_APB3master_PWDATA[0]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(LoadEn), .Q(
        \Load[0]_net_1 ));
    AX1D \Count_RNO_0[6]  (.A(\Count[5]_net_1 ), .B(N_61), .C(
        \Count[6]_net_1 ), .Y(N_90_i));
    NOR3A CountPulse_RNO_9 (.A(N_250_tz_tz), .B(\TimerPre[3]_net_1 ), 
        .C(\TimerPre[1]_net_1 ), .Y(N_250_tz));
    DFN1E1P0 \Count[0]  (.D(N_431), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .E(Counte), .Q(\Count[0]_net_1 ));
    OR3C \Count_RNIC07P9[19]  (.A(N_140_4), .B(un1_m3_e_2), .C(
        un1_m3_e_3), .Y(\Count_RNIC07P9[19]_net_1 ));
    NOR3B CountPulse_RNO_11 (.A(NextCountPulse_0_sqmuxa_1_2), .B(
        N_251_tz_tz), .C(\TimerPre[3]_net_1 ), .Y(
        CountPulse_RNO_11_net_1));
    OR2 \Count_RNIRP254[12]  (.A(N_68), .B(\Count[12]_net_1 ), .Y(N_69)
        );
    MX2A \Count_RNO[5]  (.A(N_87_i), .B(\Load[5]_net_1 ), .S(
        un1_PreScale8_0), .Y(N_436));
    OR3 CountPulse_RNO_1 (.A(NextCountPulse_0_sqmuxa_7), .B(
        un1_NextCountPulse_0_sqmuxa_2), .C(PreScale_c8), .Y(
        un1_NextCountPulse_0_sqmuxa));
    NOR3A \Count_RNO_4[7]  (.A(\Count[7]_net_1 ), .B(N_63), .C(
        un1_PreScale8_out), .Y(Count_m5_0_a2_1));
    XA1C \Count_RNO[15]  (.A(N_71), .B(\Count[15]_net_1 ), .C(
        un1_PreScale8_0), .Y(N_470));
    OR2 \Count_RNIH6Q51[11]  (.A(Count_N_13_mux_i_0_6_1), .B(
        Count_N_13_mux_i_0_6_0), .Y(Count_N_13_mux_i_0_6));
    XA1B \PreScale_RNO[1]  (.A(\PreScale[1]_net_1 ), .B(
        \PreScale[0]_net_1 ), .C(PreScale8), .Y(PreScale_n1));
    DFN1C0 \PreScale[4]  (.D(PreScale_n4), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .Q(\PreScale[4]_net_1 ));
    DFN1C0 \PreScale[8]  (.D(PreScale_n8), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .Q(\PreScale[8]_net_1 ));
    NOR2B PrescaleEn_0_a3 (.A(N_158), .B(un4_CtrlEn), .Y(PrescaleEn));
    DFN1E1C0 \Load[2]  (.D(COREABC_0_APB3master_PWDATA[2]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(LoadEn), .Q(
        \Load[2]_net_1 ));
    NOR3A \Count_RNO_2[7]  (.A(N_63), .B(\Count[7]_net_1 ), .C(
        un1_PreScale8_0), .Y(N_117));
    AO1A \Count_RNO_0[7]  (.A(\Load[7]_net_1 ), .B(un1_PreScale8_out), 
        .C(\Count_RNO_3[7]_net_1 ), .Y(Count_n7_0_0));
    AOI1 CountPulse_RNIJP6O (.A(CountPulse_net_1), .B(
        \CtrlReg[0]_net_1 ), .C(LoadEnReg_net_1), .Y(d_N_3_mux));
    NOR3C \iPRDATA_RNO_4[0]  (.A(\PrdataNext_1_0_iv_0_a3_0[0] ), .B(
        PrdataNextEn), .C(N_83), .Y(N_96));
    OR3 \iPRDATA_RNO[0]  (.A(\PrdataNext_1_0_iv_0_1[0] ), .B(
        \PrdataNext_1_0_iv_0_0[0] ), .C(N_100), .Y(\PrdataNext_1[0] ));
    OR2 \Count_RNO_0[31]  (.A(\Count[30]_net_1 ), .B(Count_c29), .Y(
        Count_66_0));
    AX1C \PreScale_RNO_0[8]  (.A(PreScale_c3), .B(
        NextCountPulse_0_sqmuxa_7_7_1), .C(\PreScale[8]_net_1 ), .Y(
        PreScale_n8_tz));
    DFN1P0 CountIsZeroReg (.D(\Count_RNIC07P9[19]_net_1 ), .CLK(
        SYSCLK_c), .PRE(COREABC_0_PRESETN), .Q(CountIsZeroReg_i_0));
    NOR3 \Count_RNITKDV[8]  (.A(\Count[6]_net_1 ), .B(\Count[8]_net_1 )
        , .C(\Count[7]_net_1 ), .Y(Count_m4_e_0_5_1));
    DFN1C0 \PreScale[2]  (.D(PreScale_n2), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .Q(\PreScale[2]_net_1 ));
    DFN1C0 \iPRDATA[7]  (.D(\PrdataNext_1[7] ), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .Q(CoreAPB3_0_APBmslave0_PRDATA[7]));
    AO1C CountPulse_RNO_2 (.A(\TimerPre[0]_net_1 ), .B(
        NextCountPulse_0_sqmuxa_1_2), .C(\TimerPre[3]_net_1 ), .Y(
        un1_NextCountPulse63));
    VCC VCC_i (.Y(VCC));
    DFN1C0 RawTimInt (.D(NxtRawTimInt), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .Q(RawTimInt_net_1));
    NOR3B \CtrlReg_RNINPM33[2]  (.A(\CtrlReg[2]_net_1 ), .B(un4_CtrlEn)
        , .C(COREABC_0_APB3master_PADDR[4]), .Y(Count_m6_e_2));
    OR3 CountPulse_RNO_7 (.A(NextCountPulse_0_sqmuxa_2), .B(
        CountPulse_RNO_11_net_1), .C(NextCountPulse_0_sqmuxa_3), .Y(
        un1_NextCountPulse_0_sqmuxa_1));
    DFN1C0 \iPRDATA[5]  (.D(\PrdataNext_1[5] ), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .Q(CoreAPB3_0_APBmslave0_PRDATA[5]));
    XA1C \Count_RNO[14]  (.A(\Count[14]_net_1 ), .B(N_70), .C(
        un1_PreScale8_0), .Y(N_471));
    XA1C \Count_RNO[23]  (.A(Count_c22), .B(\Count[23]_net_1 ), .C(
        un1_PreScale8), .Y(N_454_i));
    DFN1E1P0 \Count[23]  (.D(N_454_i), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .E(Counte_0), .Q(\Count[23]_net_1 ));
    AO1 \iPRDATA_RNO_0[2]  (.A(\Count[2]_net_1 ), .B(
        DataOut_1_sqmuxa_net_1), .C(\TimerPre_m[2] ), .Y(
        \PrdataNext_1_0_iv_0[2] ));
    DFN1E1P0 \Count[13]  (.D(N_444_i), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .E(Counte_0), .Q(\Count[13]_net_1 ));
    OR2 \Count_RNIIVTJ[18]  (.A(\Count[9]_net_1 ), .B(
        \Count[18]_net_1 ), .Y(Count_N_13_mux_i_0_5_1));
    NOR2B \PreScale_RNI3JS3[5]  (.A(PreScale_c4), .B(
        \PreScale[5]_net_1 ), .Y(PreScale_c5));
    DFN1E1C0 \CtrlReg[0]  (.D(COREABC_0_APB3master_PWDATA[0]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(CtrlEn_net_1), .Q(
        \CtrlReg[0]_net_1 ));
    XA1B \PreScale_RNO[7]  (.A(PreScale_82_0), .B(\PreScale[7]_net_1 ), 
        .C(PreScale8), .Y(PreScale_n7));
    NOR3C \iPRDATA_RNO_1[3]  (.A(PrdataNextEn), .B(N_158), .C(
        \TimerPre[3]_net_1 ), .Y(\TimerPre_m[3] ));
    NOR3C \PreScale_RNIEEJ2[7]  (.A(\PreScale[6]_net_1 ), .B(
        \PreScale[7]_net_1 ), .C(NextCountPulse_0_sqmuxa_5_3), .Y(
        NextCountPulse_0_sqmuxa_7_7_1));
    DFN1E1C0 \Load[5]  (.D(COREABC_0_APB3master_PWDATA[5]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(LoadEn), .Q(
        \Load[5]_net_1 ));
    OR2 \Count_RNI7BHE4[13]  (.A(N_69), .B(\Count[13]_net_1 ), .Y(N_70)
        );
    MX2B \Count_RNO[0]  (.A(\Load[0]_net_1 ), .B(\Count[0]_net_1 ), .S(
        Count_N_15_mux), .Y(N_431));
    OR2 \Count_RNIIG7D7[23]  (.A(Count_c22), .B(\Count[23]_net_1 ), .Y(
        Count_c23));
    AO1 \iPRDATA_RNO[4]  (.A(\Count[4]_net_1 ), .B(
        DataOut_1_sqmuxa_net_1), .C(N_137), .Y(\PrdataNext_1[4] ));
    NOR2B CountPulse_RNO_3 (.A(\PreScale[9]_net_1 ), .B(
        \PreScale[8]_net_1 ), .Y(NextCountPulse48_0));
    OA1A CountPulse_RNO_15 (.A(\TimerPre[0]_net_1 ), .B(
        \PreScale[1]_net_1 ), .C(\PreScale[0]_net_1 ), .Y(N_251_tz_tz));
    NOR2B \PreScale_RNI0O73[4]  (.A(\PreScale[4]_net_1 ), .B(
        PreScale_c3), .Y(PreScale_c4));
    DFN1C0 \iPRDATA[6]  (.D(\PrdataNext_1[6] ), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .Q(CoreAPB3_0_APBmslave0_PRDATA[6]));
    XA1C \Count_RNO[29]  (.A(Count_c28), .B(\Count[29]_net_1 ), .C(
        un1_PreScale8), .Y(N_460_i));
    OR3B \Count_RNI5TN37[22]  (.A(Count_m4_e_4), .B(un1_m3_e_3), .C(
        \Count[22]_net_1 ), .Y(Count_c22));
    DFN1C0 \iPRDATA[2]  (.D(\PrdataNext_1[2] ), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .Q(CoreAPB3_0_APBmslave0_PRDATA[2]));
    DFN1E1C0 \CtrlReg[2]  (.D(COREABC_0_APB3master_PWDATA[2]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(CtrlEn_net_1), .Q(
        \CtrlReg[2]_net_1 ));
    OA1A CountPulse_RNO_13 (.A(\TimerPre[0]_net_1 ), .B(
        \PreScale[5]_net_1 ), .C(\PreScale[4]_net_1 ), .Y(N_250_tz_tz));
    NOR3B RawTimInt_RNO_0 (.A(N_140_4), .B(CountIsZeroReg_i_0), .C(
        N_79), .Y(N_140));
    NOR2 \TimerPre_RNIJMUR[2]  (.A(\TimerPre[2]_net_1 ), .B(
        \TimerPre[3]_net_1 ), .Y(NextCountPulse_0_sqmuxa_2_3));
    NOR2B \PreScale_RNITC91[1]  (.A(\PreScale[1]_net_1 ), .B(
        \PreScale[0]_net_1 ), .Y(PreScale_c1));
    DFN1E1P0 \Count[1]  (.D(N_432), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .E(Counte), .Q(\Count[1]_net_1 ));
    NOR2A \PreScale_RNO[8]  (.A(PreScale_n8_tz), .B(PreScale8), .Y(
        PreScale_n8));
    NOR3 \Count_RNO[7]  (.A(Count_n7_0_0), .B(N_119), .C(N_117), .Y(
        N_438));
    OA1A \Count_RNO_1[7]  (.A(Count_m6_e_4), .B(
        COREABC_0_APB3master_PWDATA[2]), .C(Count_m5_0_a2_1), .Y(N_119)
        );
    DFN1E1P0 \Count[3]  (.D(N_434), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .E(Counte), .Q(\Count[3]_net_1 ));
    DFN1E1C0 \Load[4]  (.D(COREABC_0_APB3master_PWDATA[4]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(LoadEn), .Q(
        \Load[4]_net_1 ));
    DFN1E1P0 \Count[29]  (.D(N_460_i), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .E(Counte), .Q(\Count[29]_net_1 ));
    XOR2 \Count_RNO_0[3]  (.A(N_59), .B(\Count[3]_net_1 ), .Y(N_85_i));
    XA1B \Count_RNO[9]  (.A(Count_N_9_mux), .B(\Count[9]_net_1 ), .C(
        un1_PreScale8_0), .Y(N_440_i));
    AX1D \Count_RNO_0[4]  (.A(\Count[3]_net_1 ), .B(N_59), .C(
        \Count[4]_net_1 ), .Y(N_86_i));
    OA1C \Count_RNO_0[0]  (.A(Count_m6_e_4), .B(
        COREABC_0_APB3master_PWDATA[2]), .C(un1_PreScale8_out), .Y(
        Count_N_15_mux));
    DFN1E1P0 \Count[19]  (.D(N_466), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .E(Counte_0), .Q(\Count[19]_net_1 ));
    NOR2B \iPRDATA_RNO_0[7]  (.A(\Load[7]_net_1 ), .B(DataOut_0_sqmuxa)
        , .Y(N_131));
    AO1 \iPRDATA_RNO_1[0]  (.A(\Count[0]_net_1 ), .B(
        DataOut_1_sqmuxa_net_1), .C(N_96), .Y(
        \PrdataNext_1_0_iv_0_0[0] ));
    AO1 CountPulse_RNO_6 (.A(NextCountPulse_0_sqmuxa_6_2_1), .B(
        NextCountPulse_0_sqmuxa_5_3), .C(N_250_tz), .Y(N_253_tz));
    NOR3C \iPRDATA_RNO_3[1]  (.A(PrdataNextEn), .B(N_158), .C(
        \TimerPre[1]_net_1 ), .Y(\TimerPre_m[1] ));
    XA1B \PreScale_RNO[3]  (.A(PreScale_c2), .B(\PreScale[3]_net_1 ), 
        .C(PreScale8), .Y(PreScale_n3));
    OR3B IntClr_RNO (.A(un4_CtrlEn), .B(IntClrEn_0_a3_0), .C(
        COREABC_0_APB3master_PADDR[2]), .Y(IntClrEn));
    NOR3C DataOut_1_sqmuxa (.A(PrdataNextEn), .B(
        COREABC_0_APB3master_PADDR[2]), .C(DataOut_1_sqmuxa_0_net_1), 
        .Y(DataOut_1_sqmuxa_net_1));
    OR2 \Count_RNIVGM98[26]  (.A(Count_c25), .B(\Count[26]_net_1 ), .Y(
        Count_c26));
    NOR2B \iPRDATA_RNO_0[4]  (.A(\Load[4]_net_1 ), .B(DataOut_0_sqmuxa)
        , .Y(N_137));
    XA1C \Count_RNO[26]  (.A(Count_c25), .B(\Count[26]_net_1 ), .C(
        un1_PreScale8), .Y(N_457_i));
    DFN1C0 \PreScale[9]  (.D(PreScale_n9), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .Q(\PreScale[9]_net_1 ));
    DFN1C0 \iPRDATA[1]  (.D(\PrdataNext_1[1] ), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .Q(CoreAPB3_0_APBmslave0_PRDATA[1]));
    NOR3B \Count_RNI77MS1[16]  (.A(Countlde_m8_1), .B(Countlde_m8_0), 
        .C(Count_1_sqmuxa_0), .Y(Countlde_m8_6));
    NOR3A \Count_RNISN061[31]  (.A(un1_CountIsZero_0_a3_3_1), .B(
        \Count[30]_net_1 ), .C(\Count[31]_net_1 ), .Y(
        un1_CountIsZero_0_a3_3_6));
    DFN1E1C0 \TimerPre[2]  (.D(COREABC_0_APB3master_PWDATA[2]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(PrescaleEn), .Q(
        \TimerPre[2]_net_1 ));
    XA1C \Count_RNO[30]  (.A(Count_c29), .B(\Count[30]_net_1 ), .C(
        un1_PreScale8), .Y(N_461_i));
    XA1C \Count_RNO[27]  (.A(Count_c26), .B(\Count[27]_net_1 ), .C(
        un1_PreScale8), .Y(N_458_i));
    MX2A \Count_RNO[4]  (.A(N_86_i), .B(\Load[4]_net_1 ), .S(
        un1_PreScale8_0), .Y(N_435));
    OR3 \Count_RNI6UQ61[10]  (.A(\Count[12]_net_1 ), .B(
        \Count[10]_net_1 ), .C(Count_N_13_mux_i_0_5_1), .Y(
        Count_N_13_mux_i_0_5));
    AXOI5 \iPRDATA_RNO_6[0]  (.A(\CtrlReg[1]_net_1 ), .B(
        COREABC_0_APB3master_PADDR[3]), .C(
        COREABC_0_APB3master_PADDR[2]), .Y(N_83));
    OR3 \iPRDATA_RNO[2]  (.A(\PrdataNext_1_0_iv_0[2] ), .B(
        \CtrlReg_m[2] ), .C(\Load_m[2] ), .Y(\PrdataNext_1[2] ));
    NOR3B DataOut_0_sqmuxa_0_a2 (.A(PrdataNextEn), .B(N_143), .C(
        COREABC_0_APB3master_PADDR[3]), .Y(DataOut_0_sqmuxa));
    XA1C \Count_RNO[13]  (.A(N_69), .B(\Count[13]_net_1 ), .C(
        un1_PreScale8), .Y(N_444_i));
    DFN1C0 \PreScale[6]  (.D(PreScale_n6), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .Q(\PreScale[6]_net_1 ));
    XA1B \PreScale_RNO[2]  (.A(PreScale_c1), .B(\PreScale[2]_net_1 ), 
        .C(PreScale8), .Y(PreScale_n2));
    NOR2B \Count_RNIS28U2[1]  (.A(Count_m4_e_0_5), .B(Count_m4_e_0_4), 
        .Y(Count_N_9_mux));
    NOR2B \PreScale_RNO_0[7]  (.A(\PreScale[6]_net_1 ), .B(PreScale_c5)
        , .Y(PreScale_82_0));
    MX2A CountPulse_RNIU6G0F (.A(d_N_3_mux), .B(OneShotClr_1), .S(
        Countlde_N_16_mux), .Y(Counte));
    AO1 \iPRDATA_RNO[3]  (.A(\Load[3]_net_1 ), .B(DataOut_0_sqmuxa), 
        .C(\PrdataNext_1_0_iv_0[3] ), .Y(\PrdataNext_1[3] ));
    NOR2 \Count_RNIV9TI_0[16]  (.A(\Count[17]_net_1 ), .B(
        \Count[16]_net_1 ), .Y(Countlde_m8_1));
    DFN1C0 \PreScale[3]  (.D(PreScale_n3), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .Q(\PreScale[3]_net_1 ));
    AO1 \iPRDATA_RNO_0[3]  (.A(\Count[3]_net_1 ), .B(
        DataOut_1_sqmuxa_net_1), .C(\TimerPre_m[3] ), .Y(
        \PrdataNext_1_0_iv_0[3] ));
    NOR3B \Count_RNO_5[7]  (.A(Count_n7_0_0_a0_0), .B(un4_CtrlEn), .C(
        COREABC_0_APB3master_PADDR[4]), .Y(Count_n7_0_0_a0_3));
    NOR2 \Count_RNIL1VI[21]  (.A(\Count[21]_net_1 ), .B(
        \Count[20]_net_1 ), .Y(Count_m4_e_0));
    NOR3A CountPulse_RNO_8 (.A(\PreScale[6]_net_1 ), .B(
        \TimerPre[0]_net_1 ), .C(\TimerPre[3]_net_1 ), .Y(
        NextCountPulse_0_sqmuxa_6_2_1));
    XA1C \Count_RNO[19]  (.A(N_77), .B(\Count[19]_net_1 ), .C(
        un1_PreScale8_0), .Y(N_466));
    NOR3A \Count_RNIPEQ51[13]  (.A(Countlde_m8_3), .B(
        \Count[13]_net_1 ), .C(\Count[15]_net_1 ), .Y(Countlde_m8_5));
    XA1C \Count_RNO[28]  (.A(Count_c27), .B(\Count[28]_net_1 ), .C(
        un1_PreScale8), .Y(N_459_i));
    XOR2 \PreScale_RNO_0[4]  (.A(\PreScale[4]_net_1 ), .B(PreScale_c3), 
        .Y(PreScale_n4_tz));
    NOR2 \TimerPre_RNIHKUR[1]  (.A(\TimerPre[1]_net_1 ), .B(
        \TimerPre[2]_net_1 ), .Y(NextCountPulse_0_sqmuxa_1_2));
    OR2 \Count_RNIV9TI[16]  (.A(\Count[17]_net_1 ), .B(
        \Count[16]_net_1 ), .Y(Count_N_13_mux_i_0_4));
    NOR3C DataOut_2_sqmuxa_0_a2 (.A(PrdataNextEn), .B(N_143), .C(
        COREABC_0_APB3master_PADDR[3]), .Y(DataOut_2_sqmuxa));
    AO1 \iPRDATA_RNO[7]  (.A(\Count[7]_net_1 ), .B(
        DataOut_1_sqmuxa_net_1), .C(N_131), .Y(\PrdataNext_1[7] ));
    OR2 \Count_RNIKTVN4[14]  (.A(N_70), .B(\Count[14]_net_1 ), .Y(N_71)
        );
    OR2 \Count_RNIFQ608[25]  (.A(Count_c24), .B(\Count[25]_net_1 ), .Y(
        Count_c25));
    OR2 \Count_RNI6Q5I3[10]  (.A(N_66), .B(\Count[10]_net_1 ), .Y(N_67)
        );
    NOR3B PrescaleEn_0_a2 (.A(COREABC_0_APB3master_PADDR[3]), .B(
        COREABC_0_APB3master_PADDR_0_0), .C(
        COREABC_0_APB3master_PADDR[4]), .Y(N_158));
    DFN1E1P0 \Count[31]  (.D(N_462_i), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .E(Counte), .Q(\Count[31]_net_1 ));
    DFN1E1P0 \Count[28]  (.D(N_459_i), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .E(Counte), .Q(\Count[28]_net_1 ));
    NOR2B \iPRDATA_RNO_2[1]  (.A(\Load[1]_net_1 ), .B(DataOut_0_sqmuxa)
        , .Y(\Load_m[1] ));
    XA1C \Count_RNO[20]  (.A(N_79), .B(\Count[20]_net_1 ), .C(
        un1_PreScale8_0), .Y(N_465));
    OR2A \Count_RNIIHQT5[10]  (.A(Count_N_9_mux), .B(
        Count_N_13_mux_i_0_1), .Y(N_77));
    DFN1E1P0 \Count[18]  (.D(N_467), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .E(Counte_0), .Q(\Count[18]_net_1 ));
    DFN1C0 \PreScale[5]  (.D(PreScale_n5), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .Q(\PreScale[5]_net_1 ));
    XA1B \PreScale_RNO[6]  (.A(PreScale_c5), .B(\PreScale[6]_net_1 ), 
        .C(PreScale8), .Y(PreScale_n6));
    NOR3B \CtrlReg_RNI86OE3[2]  (.A(CtrlEn_net_1), .B(
        \CtrlReg[2]_net_1 ), .C(COREABC_0_APB3master_PWDATA[2]), .Y(
        OneShotClr_1));
    DFN1E1P0 \Count[7]  (.D(N_438), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .E(Counte), .Q(\Count[7]_net_1 ));
    NOR3B LoadEn_0_a3 (.A(un4_CtrlEn), .B(N_143), .C(
        COREABC_0_APB3master_PADDR[3]), .Y(LoadEn));
    XA1C \Count_RNO[16]  (.A(N_72), .B(\Count[16]_net_1 ), .C(
        un1_PreScale8_0), .Y(N_469));
    DFN1P0 IntClr (.D(IntClrEn), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .Q(IntClr_i_0));
    XA1C \Count_RNO[31]  (.A(Count_66_0), .B(\Count[31]_net_1 ), .C(
        un1_PreScale8), .Y(N_462_i));
    NOR2B CtrlEn (.A(CtrlEn_0_net_1), .B(N_143), .Y(CtrlEn_net_1));
    NOR3B \Count_RNI21354[10]  (.A(Count_m4_e_0_4), .B(Count_m4_e_0_5), 
        .C(Count_N_13_mux_i_0_5), .Y(un1_m3_e_3));
    DFN1E1P0 \Count[6]  (.D(N_437), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .E(Counte), .Q(\Count[6]_net_1 ));
    AO1 CountPulse_RNO_5 (.A(PreScale_c3), .B(N_253_tz), .C(
        un1_NextCountPulse_0_sqmuxa_1), .Y(
        un1_NextCountPulse_0_sqmuxa_2));
    OR2A \Count_RNITBN83[9]  (.A(Count_N_9_mux), .B(\Count[9]_net_1 ), 
        .Y(N_66));
    DFN1E1C0 \Load[3]  (.D(COREABC_0_APB3master_PWDATA[3]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(LoadEn), .Q(
        \Load[3]_net_1 ));
    AX1C \Count_RNO_0[22]  (.A(Count_m4_e_4), .B(un1_m3_e_3), .C(
        \Count[22]_net_1 ), .Y(N_453_tz));
    XOR2 \Count_RNO_0[5]  (.A(N_61), .B(\Count[5]_net_1 ), .Y(N_87_i));
    XA1C \Count_RNO[17]  (.A(N_73), .B(\Count[17]_net_1 ), .C(
        un1_PreScale8_0), .Y(N_468));
    OA1 \Count_RNO_1[1]  (.A(COREABC_0_APB3master_PWDATA[2]), .B(
        Count_m11_0_o4_3), .C(Count_m11_0_a4_0), .Y(Count_N_9_1));
    AX1D \Count_RNO_0[2]  (.A(\Count[0]_net_1 ), .B(\Count[1]_net_1 ), 
        .C(\Count[2]_net_1 ), .Y(N_84_i));
    DFN1E1C0 \TimerPre[3]  (.D(COREABC_0_APB3master_PWDATA[3]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(PrescaleEn), .Q(
        \TimerPre[3]_net_1 ));
    AO1A LoadEnReg_RNIC8MHD (.A(\Count_RNIC07P9[19]_net_1 ), .B(
        OneShotClr_1), .C(LoadEnReg_net_1), .Y(PreScale8));
    OR3 \Count_RNI29BK1[4]  (.A(\Count[3]_net_1 ), .B(N_59), .C(
        \Count[4]_net_1 ), .Y(N_61));
    XNOR2 \Count_RNO_0[12]  (.A(\Count[12]_net_1 ), .B(N_68), .Y(
        N_443_tz));
    DFN1C0 LoadEnReg (.D(LoadEn), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .Q(LoadEnReg_net_1));
    NOR2B \PreScale_RNIT4U1[2]  (.A(\PreScale[2]_net_1 ), .B(
        PreScale_c1), .Y(PreScale_c2));
    DFN1C0 \iPRDATA[3]  (.D(\PrdataNext_1[3] ), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .Q(CoreAPB3_0_APBmslave0_PRDATA[3]));
    DFN1E1P0 \Count[26]  (.D(N_457_i), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .E(Counte), .Q(\Count[26]_net_1 ));
    NOR2B \iPRDATA_RNO_1[1]  (.A(DataOut_2_sqmuxa), .B(
        \CtrlReg[1]_net_1 ), .Y(\CtrlReg_m[1] ));
    DFN1E1P0 \Count[16]  (.D(N_469), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .E(Counte_0), .Q(\Count[16]_net_1 ));
    NOR3A \Count_RNIE7U51[22]  (.A(Count_m4_e_0), .B(\Count[22]_net_1 )
        , .C(\Count[23]_net_1 ), .Y(un1_CountIsZero_0_a3_3_8));
    NOR2 \Count_RNIT9VI[24]  (.A(\Count[25]_net_1 ), .B(
        \Count[24]_net_1 ), .Y(un1_CountIsZero_0_a3_3_3));
    DFN1E1P0 \Count[2]  (.D(N_433), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .E(Counte), .Q(\Count[2]_net_1 ));
    OR3A \CtrlReg_RNI05L2D_0[2]  (.A(CtrlEn_0_net_1), .B(
        Count_m11_0_o4_1), .C(\Count_RNIC07P9[19]_net_1 ), .Y(
        Count_m11_0_o4_3));
    NOR2A \Count_RNO[22]  (.A(N_453_tz), .B(un1_PreScale8), .Y(N_453_i)
        );
    NOR3C \Count_RNI8DEK6[13]  (.A(Countlde_m8_6), .B(Countlde_m8_5), 
        .C(N_140_4), .Y(Countlde_m8_8));
    NOR3C CountPulse_RNO_10 (.A(PreScale_c1), .B(
        NextCountPulse_0_sqmuxa_2_0), .C(NextCountPulse_0_sqmuxa_2_3), 
        .Y(NextCountPulse_0_sqmuxa_2));
    AO1D \Count_RNO_0[1]  (.A(Count_m11_0_o4_3), .B(
        COREABC_0_APB3master_PWDATA[2]), .C(un1_PreScale8_out), .Y(
        Count_m11_0_0_tz));
    XA1C \Count_RNO[8]  (.A(\Count[8]_net_1 ), .B(N_64), .C(
        un1_PreScale8_0), .Y(N_439));
    AO1 \iPRDATA_RNO_0[1]  (.A(\Count[1]_net_1 ), .B(
        DataOut_1_sqmuxa_net_1), .C(\TimerPre_m[1] ), .Y(
        \PrdataNext_1_0_iv_0[1] ));
    NOR2A Count_m3_e_1_1 (.A(COREABC_0_APB3master_PADDR[3]), .B(
        COREABC_0_APB3master_PADDR[2]), .Y(Count_m6_e_1));
    NOR2A \Count_RNO_2[21]  (.A(\CtrlReg[2]_net_1 ), .B(
        \Count_RNIC07P9[19]_net_1 ), .Y(Count_n21_a0_0));
    NOR2A \Count_RNO_6[7]  (.A(\CtrlReg[2]_net_1 ), .B(\Load[7]_net_1 )
        , .Y(Count_n7_0_0_a0_0));
    OA1C \Count_RNO[18]  (.A(N_77), .B(Count_n18_i_a3_0), .C(
        un1_PreScale8_0), .Y(N_467));
    NOR2 \Count_RNI5IVI[28]  (.A(\Count[29]_net_1 ), .B(
        \Count[28]_net_1 ), .Y(un1_CountIsZero_0_a3_3_1));
    DFN1E1P0 \Count[21]  (.D(N_452), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .E(Counte_0), .Q(\Count[21]_net_1 ));
    OR2 \Count_RNI21MS8[28]  (.A(Count_c27), .B(\Count[28]_net_1 ), .Y(
        Count_c28));
    NOR3 \Count_RNO[21]  (.A(Count_n21_0_0), .B(un1_PreScale8_out), .C(
        \Count_RNO_1[21]_net_1 ), .Y(N_452));
    NOR2B \iPRDATA_RNO_2[0]  (.A(\Load[0]_net_1 ), .B(DataOut_0_sqmuxa)
        , .Y(N_100));
    DFN1E1P0 \Count[11]  (.D(N_442_i), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .E(Counte_0), .Q(\Count[11]_net_1 ));
    NOR2B \iPRDATA_RNO_0[6]  (.A(\Load[6]_net_1 ), .B(DataOut_0_sqmuxa)
        , .Y(N_133));
    OR2 \Count_RNIG86J8[27]  (.A(Count_c26), .B(\Count[27]_net_1 ), .Y(
        Count_c27));
    NOR3B CountPulse_RNO_4 (.A(PreScale_c3), .B(
        NextCountPulse_0_sqmuxa_7_7_1), .C(\TimerPre[3]_net_1 ), .Y(
        NextCountPulse_0_sqmuxa_7));
    NOR2A \Count_RNI7PDS[19]  (.A(Count_m4_e_0), .B(\Count[19]_net_1 ), 
        .Y(Count_m4_e_1));
    OR3A \CtrlReg_RNI2PQD[2]  (.A(\CtrlReg[2]_net_1 ), .B(
        COREABC_0_APB3master_PADDR[4]), .C(
        COREABC_0_APB3master_PADDR_0_0), .Y(Count_m11_0_o4_1));
    NOR2A IntClr_RNO_0 (.A(COREABC_0_APB3master_PADDR[4]), .B(
        COREABC_0_APB3master_PADDR[3]), .Y(IntClrEn_0_a3_0));
    NOR3A \Count_RNIN95L2[19]  (.A(Count_m4_e_1), .B(
        Count_N_13_mux_i_0_4), .C(Count_N_13_mux_i_0_6), .Y(
        Count_m4_e_4));
    DFN1E1P0 \Count[24]  (.D(N_455_i), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .E(Counte_0), .Q(\Count[24]_net_1 ));
    DFN1E1C0 \CtrlReg[1]  (.D(COREABC_0_APB3master_PWDATA[1]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(CtrlEn_net_1), .Q(
        \CtrlReg[1]_net_1 ));
    DFN1E1P0 \Count[14]  (.D(N_471), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .E(Counte_0), .Q(\Count[14]_net_1 ));
    DFN1C0 \PreScale[0]  (.D(\PreScale_RNO[0]_net_1 ), .CLK(SYSCLK_c), 
        .CLR(COREABC_0_PRESETN), .Q(\PreScale[0]_net_1 ));
    NOR2A \Count_RNO[10]  (.A(N_441_tz), .B(un1_PreScale8), .Y(N_441_i)
        );
    DFN1C0 \PreScale[7]  (.D(PreScale_n7), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .Q(\PreScale[7]_net_1 ));
    XNOR2 \Count_RNO_0[10]  (.A(\Count[10]_net_1 ), .B(N_66), .Y(
        N_441_tz));
    DFN1E1P0 \Count[30]  (.D(N_461_i), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .E(Counte), .Q(\Count[30]_net_1 ));
    OR2 \Count_RNO_0[8]  (.A(N_63), .B(\Count[7]_net_1 ), .Y(N_64));
    OR3 \Count_RNIMEIV2[10]  (.A(Count_N_13_mux_i_0_5), .B(
        Count_N_13_mux_i_0_4), .C(Count_N_13_mux_i_0_6), .Y(
        Count_N_13_mux_i_0_1));
    OR2 \Count_RNI2HE15[15]  (.A(\Count[15]_net_1 ), .B(N_71), .Y(N_72)
        );
    OR2 \Count_RNIM0TI[11]  (.A(\Count[11]_net_1 ), .B(
        \Count[13]_net_1 ), .Y(Count_N_13_mux_i_0_6_0));
    NOR2B CountPulse_RNO_12 (.A(NextCountPulse_0_sqmuxa_2_3), .B(
        PreScale_c3), .Y(NextCountPulse_0_sqmuxa_3));
    AO1A \CtrlReg_RNINDG1O_0[2]  (.A(\Count_RNIC07P9[19]_net_1 ), .B(
        OneShotClr_1), .C(un1_PreScale8_out), .Y(un1_PreScale8));
    OA1 RawTimInt_RNO (.A(RawTimInt_net_1), .B(N_140), .C(IntClr_i_0), 
        .Y(NxtRawTimInt));
    XA1B \PreScale_RNO[9]  (.A(\PreScale[9]_net_1 ), .B(PreScale_c8), 
        .C(PreScale8), .Y(PreScale_n9));
    
endmodule


module Minimal_SoC_COREABC_0_INSTRUCTIONS_Z2(
       doins_2_0,
       INSTR_CMD,
       INSTRUCTION_11,
       INSTRUCTION_25,
       INSTRUCTION_0,
       INSTRUCTION_24,
       INSTRUCTION_1,
       INSTRUCTION_7,
       INSTRUCTION_3,
       INSTRUCTION_2,
       SMADDR,
       INSTR_SCMD,
       INSTRUCTION_i_0,
       ACCUM_NEXT_sn_N_7,
       un1_ADDRESS_13_1_i_0,
       N_16,
       N_7,
       N_18
    );
output doins_2_0;
input  [2:1] INSTR_CMD;
output INSTRUCTION_11;
output INSTRUCTION_25;
output INSTRUCTION_0;
output INSTRUCTION_24;
output INSTRUCTION_1;
output INSTRUCTION_7;
output INSTRUCTION_3;
output INSTRUCTION_2;
input  [11:0] SMADDR;
input  [2:1] INSTR_SCMD;
output INSTRUCTION_i_0;
output ACCUM_NEXT_sn_N_7;
output un1_ADDRESS_13_1_i_0;
output N_16;
output N_7;
output N_18;

    wire \doins_i_a2_i_0[27]_net_1 , N_52, \doins_i_i_0[3]_net_1 , 
        N_75, un1_ADDRESS_9_0_a3_0_net_1, \doins_0_i_a3_0_0[2]_net_1 , 
        N_24_i, \doins_i_a2_i_a3_1[28]_net_1 , 
        \doins_i_i_a2_0_5[3]_net_1 , \doins_i_i_a2_0_3[3]_net_1 , 
        \doins_i_i_a2_0_4[3]_net_1 , \doins_i_i_a2_0_1[3]_net_1 , 
        ACCUM_NEXT_sn_m4_0_net_1, N_34, N_69, N_45, N_70, N_71, N_25, 
        \doins_i_i_a3_0_0[4]_net_1 , N_73, GND, VCC;
    
    NOR2B \doins_i_i_a3[5]  (.A(N_25), .B(N_69), .Y(INSTRUCTION_2));
    OAI1 ACCUM_NEXT_sn_m6 (.A(ACCUM_NEXT_sn_m4_0_net_1), .B(
        INSTR_CMD[2]), .C(INSTR_CMD[1]), .Y(ACCUM_NEXT_sn_N_7));
    NOR2 \doins_i_i_a2_0_1[3]  (.A(SMADDR[9]), .B(SMADDR[5]), .Y(
        \doins_i_i_a2_0_1[3]_net_1 ));
    NOR2A un1_ADDRESS_7_0_a2_0 (.A(SMADDR[1]), .B(N_34), .Y(N_73));
    NOR3A \doins_i_a2_i_a3_1[28]  (.A(N_24_i), .B(SMADDR[1]), .C(
        SMADDR[0]), .Y(\doins_i_a2_i_a3_1[28]_net_1 ));
    NOR3B un1_ADDRESS_9_0_a3 (.A(un1_ADDRESS_9_0_a3_0_net_1), .B(N_69), 
        .C(SMADDR[1]), .Y(INSTRUCTION_11));
    NOR2B \doins_i_i_a3_0_0[4]  (.A(SMADDR[2]), .B(SMADDR[1]), .Y(
        \doins_i_i_a3_0_0[4]_net_1 ));
    NOR3C \doins_i_a2_i_a3[28]  (.A(\doins_i_i_a2_0_4[3]_net_1 ), .B(
        \doins_i_i_a2_0_5[3]_net_1 ), .C(\doins_i_a2_i_a3_1[28]_net_1 )
        , .Y(INSTRUCTION_25));
    NOR2A \doins_0_i_a3_0_0[2]  (.A(N_24_i), .B(SMADDR[1]), .Y(
        \doins_0_i_a3_0_0[2]_net_1 ));
    NOR2 \doins_i_i_a2_0_3[3]  (.A(SMADDR[4]), .B(SMADDR[6]), .Y(
        \doins_i_i_a2_0_3[3]_net_1 ));
    VCC VCC_i (.Y(VCC));
    INV \INSTRUCTION_i[14]  (.A(INSTRUCTION_11), .Y(INSTRUCTION_i_0));
    XOR2 \doins_0_i_x2[2]  (.A(SMADDR[3]), .B(SMADDR[2]), .Y(N_24_i));
    NOR3C \doins_0_i_a3_0[2]  (.A(\doins_i_i_a2_0_4[3]_net_1 ), .B(
        \doins_i_i_a2_0_5[3]_net_1 ), .C(\doins_0_i_a3_0_0[2]_net_1 ), 
        .Y(N_52));
    NOR2B un1_ADDRESS_7_0_a3 (.A(N_73), .B(N_69), .Y(INSTRUCTION_3));
    NOR3C \doins_i_i_a2[3]  (.A(\doins_i_i_a2_0_4[3]_net_1 ), .B(
        \doins_i_i_a2_0_5[3]_net_1 ), .C(N_73), .Y(N_75));
    NOR2B ACCUM_NEXT_sn_m4_0 (.A(INSTR_SCMD[1]), .B(INSTR_SCMD[2]), .Y(
        ACCUM_NEXT_sn_m4_0_net_1));
    AO1 \doins_i_a2_i[27]  (.A(N_71), .B(N_70), .C(
        \doins_i_a2_i_0[27]_net_1 ), .Y(INSTRUCTION_24));
    GND GND_i (.Y(GND));
    NOR3A \doins_i_i_a2_0_4[3]  (.A(\doins_i_i_a2_0_1[3]_net_1 ), .B(
        SMADDR[10]), .C(SMADDR[11]), .Y(\doins_i_i_a2_0_4[3]_net_1 ));
    NOR2B un1_ADDRESS_9_0_a3_0 (.A(SMADDR[2]), .B(SMADDR[0]), .Y(
        un1_ADDRESS_9_0_a3_0_net_1));
    NOR2A \doins_i_a2_i_a2[27]  (.A(SMADDR[1]), .B(SMADDR[2]), .Y(N_71)
        );
    NOR3A un1_ADDRESS_5_0_a3 (.A(N_70), .B(SMADDR[2]), .C(SMADDR[1]), 
        .Y(INSTRUCTION_7));
    NOR2A \doins_0_i_a2[0]  (.A(N_69), .B(SMADDR[0]), .Y(N_70));
    OA1C \doins_0_i[1]  (.A(N_70), .B(SMADDR[2]), .C(N_45), .Y(N_7));
    OA1A \doins_i_i[4]  (.A(N_34), .B(\doins_i_i_a3_0_0[4]_net_1 ), .C(
        N_69), .Y(INSTRUCTION_1));
    AO13 \doins_i_i_o2[5]  (.A(SMADDR[0]), .B(SMADDR[1]), .C(SMADDR[2])
        , .Y(N_25));
    NOR3B un1_ADDRESS_7_0_a2 (.A(\doins_i_i_a2_0_4[3]_net_1 ), .B(
        \doins_i_i_a2_0_5[3]_net_1 ), .C(SMADDR[3]), .Y(N_69));
    AO1 \doins_i_i[3]  (.A(N_34), .B(N_69), .C(\doins_i_i_0[3]_net_1 ), 
        .Y(INSTRUCTION_0));
    AO1A \doins_i_a2_i_0[27]  (.A(SMADDR[2]), .B(N_52), .C(
        INSTRUCTION_25), .Y(\doins_i_a2_i_0[27]_net_1 ));
    NOR2 \doins_0_i[2]  (.A(INSTRUCTION_2), .B(N_52), .Y(N_16));
    NOR3A \doins_i_i_a2_0_5[3]  (.A(\doins_i_i_a2_0_3[3]_net_1 ), .B(
        SMADDR[8]), .C(SMADDR[7]), .Y(\doins_i_i_a2_0_5[3]_net_1 ));
    NOR2B un1_ADDRESS_13_1_i_0_inst_1 (.A(SMADDR[3]), .B(SMADDR[0]), 
        .Y(un1_ADDRESS_13_1_i_0));
    NOR3 \doins_0_i[0]  (.A(N_45), .B(N_52), .C(N_70), .Y(N_18));
    AO1A \doins_i_i_0[3]  (.A(SMADDR[2]), .B(N_52), .C(N_75), .Y(
        \doins_i_i_0[3]_net_1 ));
    OR2A \doins_i_i_o2[3]  (.A(SMADDR[0]), .B(SMADDR[2]), .Y(N_34));
    OA1C \doins_i_0[11]  (.A(SMADDR[3]), .B(SMADDR[1]), .C(SMADDR[2]), 
        .Y(doins_2_0));
    NOR2B \doins_0_i_a3[1]  (.A(N_75), .B(SMADDR[3]), .Y(N_45));
    
endmodule


module Minimal_SoC_COREABC_0_RAM256X16(
       RAMWDATA_i_0,
       RAMWDATA_i_4,
       RAMWDATA_i_5,
       RAMWDATA_i_6,
       RAMWDATA_i_7,
       RAMWDATA_0,
       RAMWDATA_4,
       RAMWDATA_5,
       RAMWDATA_6,
       RAMADDR,
       RAMRDATA,
       ACCUMULATOR_0,
       N_53,
       N_55,
       N_57,
       RSTSYNC2_0,
       PCLK,
       STBRAM,
       d_N_5_mux
    );
input  RAMWDATA_i_0;
input  RAMWDATA_i_4;
input  RAMWDATA_i_5;
input  RAMWDATA_i_6;
input  RAMWDATA_i_7;
input  RAMWDATA_0;
input  RAMWDATA_4;
input  RAMWDATA_5;
input  RAMWDATA_6;
input  [7:0] RAMADDR;
output [11:0] RAMRDATA;
input  ACCUMULATOR_0;
input  N_53;
input  N_55;
input  N_57;
input  RSTSYNC2_0;
input  PCLK;
input  STBRAM;
output d_N_5_mux;

    wire WEAP, \RD_1[12] , \RD_1[13] , \RD_1[14] , \RD_1[15] , 
        Ram256x16_R0C0_RD16, Ram256x16_R0C0_RD17, 
        Minimal_SoC_COREABC_0_RAM256X16_GND, 
        Minimal_SoC_COREABC_0_RAM256X16_VCC;
    
    NOR2 Ram256x16_R0C0_RNIMQT4 (.A(ACCUMULATOR_0), .B(RAMRDATA[2]), 
        .Y(d_N_5_mux));
    RAM512X18 Ram256x16_R0C0 (.RADDR8(
        Minimal_SoC_COREABC_0_RAM256X16_GND), .RADDR7(RAMADDR[7]), 
        .RADDR6(RAMADDR[6]), .RADDR5(RAMADDR[5]), .RADDR4(RAMADDR[4]), 
        .RADDR3(RAMADDR[3]), .RADDR2(RAMADDR[2]), .RADDR1(RAMADDR[1]), 
        .RADDR0(RAMADDR[0]), .WADDR8(
        Minimal_SoC_COREABC_0_RAM256X16_GND), .WADDR7(RAMADDR[7]), 
        .WADDR6(RAMADDR[6]), .WADDR5(RAMADDR[5]), .WADDR4(RAMADDR[4]), 
        .WADDR3(RAMADDR[3]), .WADDR2(RAMADDR[2]), .WADDR1(RAMADDR[1]), 
        .WADDR0(RAMADDR[0]), .WD17(Minimal_SoC_COREABC_0_RAM256X16_GND)
        , .WD16(Minimal_SoC_COREABC_0_RAM256X16_GND), .WD15(
        Minimal_SoC_COREABC_0_RAM256X16_GND), .WD14(
        Minimal_SoC_COREABC_0_RAM256X16_GND), .WD13(
        Minimal_SoC_COREABC_0_RAM256X16_GND), .WD12(
        Minimal_SoC_COREABC_0_RAM256X16_GND), .WD11(RAMWDATA_i_7), 
        .WD10(RAMWDATA_i_6), .WD9(RAMWDATA_i_5), .WD8(RAMWDATA_i_4), 
        .WD7(RAMWDATA_6), .WD6(RAMWDATA_5), .WD5(RAMWDATA_4), .WD4(
        RAMWDATA_i_0), .WD3(N_53), .WD2(N_55), .WD1(RAMWDATA_0), .WD0(
        N_57), .RW0(Minimal_SoC_COREABC_0_RAM256X16_GND), .RW1(
        Minimal_SoC_COREABC_0_RAM256X16_VCC), .WW0(
        Minimal_SoC_COREABC_0_RAM256X16_GND), .WW1(
        Minimal_SoC_COREABC_0_RAM256X16_VCC), .PIPE(
        Minimal_SoC_COREABC_0_RAM256X16_GND), .REN(STBRAM), .WEN(WEAP), 
        .RCLK(PCLK), .WCLK(PCLK), .RESET(RSTSYNC2_0), .RD17(
        Ram256x16_R0C0_RD17), .RD16(Ram256x16_R0C0_RD16), .RD15(
        \RD_1[15] ), .RD14(\RD_1[14] ), .RD13(\RD_1[13] ), .RD12(
        \RD_1[12] ), .RD11(RAMRDATA[11]), .RD10(RAMRDATA[10]), .RD9(
        RAMRDATA[9]), .RD8(RAMRDATA[8]), .RD7(RAMRDATA[7]), .RD6(
        RAMRDATA[6]), .RD5(RAMRDATA[5]), .RD4(RAMRDATA[4]), .RD3(
        RAMRDATA[3]), .RD2(RAMRDATA[2]), .RD1(RAMRDATA[1]), .RD0(
        RAMRDATA[0]));
    INV WEBUBBLEA (.A(STBRAM), .Y(WEAP));
    VCC VCC_i (.Y(Minimal_SoC_COREABC_0_RAM256X16_VCC));
    GND GND_i (.Y(Minimal_SoC_COREABC_0_RAM256X16_GND));
    
endmodule


module Minimal_SoC_COREABC_0_RAMBLOCKS_0s_16s_15s(
       ACCUMULATOR_0,
       RAMRDATA,
       RAMADDR,
       RAMWDATA_0,
       RAMWDATA_4,
       RAMWDATA_5,
       RAMWDATA_6,
       RAMWDATA_i_0,
       RAMWDATA_i_4,
       RAMWDATA_i_5,
       RAMWDATA_i_6,
       RAMWDATA_i_7,
       d_N_5_mux,
       STBRAM,
       PCLK,
       RSTSYNC2_0,
       N_57,
       N_55,
       N_53
    );
input  ACCUMULATOR_0;
output [11:0] RAMRDATA;
input  [7:0] RAMADDR;
input  RAMWDATA_0;
input  RAMWDATA_4;
input  RAMWDATA_5;
input  RAMWDATA_6;
input  RAMWDATA_i_0;
input  RAMWDATA_i_4;
input  RAMWDATA_i_5;
input  RAMWDATA_i_6;
input  RAMWDATA_i_7;
output d_N_5_mux;
input  STBRAM;
input  PCLK;
input  RSTSYNC2_0;
input  N_57;
input  N_55;
input  N_53;

    wire GND, VCC;
    
    Minimal_SoC_COREABC_0_RAM256X16 \UG3.UR_xhdl12  (.RAMWDATA_i_0(
        RAMWDATA_i_0), .RAMWDATA_i_4(RAMWDATA_i_4), .RAMWDATA_i_5(
        RAMWDATA_i_5), .RAMWDATA_i_6(RAMWDATA_i_6), .RAMWDATA_i_7(
        RAMWDATA_i_7), .RAMWDATA_0(RAMWDATA_0), .RAMWDATA_4(RAMWDATA_4)
        , .RAMWDATA_5(RAMWDATA_5), .RAMWDATA_6(RAMWDATA_6), .RAMADDR({
        RAMADDR[7], RAMADDR[6], RAMADDR[5], RAMADDR[4], RAMADDR[3], 
        RAMADDR[2], RAMADDR[1], RAMADDR[0]}), .RAMRDATA({RAMRDATA[11], 
        RAMRDATA[10], RAMRDATA[9], RAMRDATA[8], RAMRDATA[7], 
        RAMRDATA[6], RAMRDATA[5], RAMRDATA[4], RAMRDATA[3], 
        RAMRDATA[2], RAMRDATA[1], RAMRDATA[0]}), .ACCUMULATOR_0(
        ACCUMULATOR_0), .N_53(N_53), .N_55(N_55), .N_57(N_57), 
        .RSTSYNC2_0(RSTSYNC2_0), .PCLK(PCLK), .STBRAM(STBRAM), 
        .d_N_5_mux(d_N_5_mux));
    VCC VCC_i (.Y(VCC));
    GND GND_i (.Y(GND));
    
endmodule


module Minimal_SoC_COREABC_0_COREABC_Z1(
       PCLK,
       NSYSRESET,
       PRESETN,
       PENABLE_M,
       PWRITE_M,
       PSEL_M,
       PADDR_M,
       PWDATA_M,
       PRDATA_M,
       PREADY_M,
       PSLVERR_M,
       IO_IN,
       IO_OUT,
       INTREQ,
       INTACT,
       INITDATVAL,
       INITDONE,
       INITADDR,
       INITDATA,
       PSEL_S,
       PENABLE_S,
       PWRITE_S,
       PADDR_S,
       PWDATA_S,
       PRDATA_S,
       PSLVERR_S,
       PREADY_S
    );
input  PCLK;
input  NSYSRESET;
output PRESETN;
output PENABLE_M;
output PWRITE_M;
output PSEL_M;
output [19:0] PADDR_M;
output [7:0] PWDATA_M;
input  [7:0] PRDATA_M;
input  PREADY_M;
input  PSLVERR_M;
input  [7:0] IO_IN;
output [7:0] IO_OUT;
input  INTREQ;
output INTACT;
input  INITDATVAL;
input  INITDONE;
input  [10:0] INITADDR;
input  [8:0] INITDATA;
input  PSEL_S;
input  PENABLE_S;
input  PWRITE_S;
input  [11:0] PADDR_S;
input  [7:0] PWDATA_S;
output [7:0] PRDATA_S;
output PSLVERR_S;
output PREADY_S;

    wire GND, I_5_0, I_7_0, I_9_0, I_12_0, I_14_0, I_17_0, I_20_0, I_5, 
        I_7, I_9, I_12, I_14, I_17, I_20, I_23, I_26, I_28, I_32, 
        \RAMADDR[0] , \RAMADDR[1] , \RAMADDR[2] , \RAMADDR[3] , 
        \RAMADDR[4] , \RAMADDR[5] , \RAMADDR[6] , \RAMADDR[7] , 
        \RAMRDATA[0] , \RAMRDATA[1] , \RAMRDATA[2] , \RAMRDATA[3] , 
        \RAMRDATA[4] , \RAMRDATA[5] , \RAMRDATA[6] , \RAMRDATA[7] , 
        \RAMRDATA[8] , \RAMRDATA[9] , \RAMRDATA[10] , \RAMRDATA[11] , 
        \ACCUMULATOR[0]_net_1 , \ACCUMULATOR[1]_net_1 , 
        \ACCUMULATOR[2]_net_1 , \ACCUMULATOR[3]_net_1 , 
        \ACCUMULATOR[4]_net_1 , \ACCUMULATOR[5]_net_1 , 
        \ACCUMULATOR[6]_net_1 , \ACCUMULATOR[7]_net_1 , 
        \SMADDR[0]_net_1 , \SMADDR[1]_net_1 , \SMADDR[2]_net_1 , 
        \SMADDR[3]_net_1 , \SMADDR[4]_net_1 , \SMADDR[5]_net_1 , 
        \SMADDR[6]_net_1 , \SMADDR[7]_net_1 , \SMADDR[8]_net_1 , 
        \SMADDR[9]_net_1 , \SMADDR[10]_net_1 , \SMADDR[11]_net_1 , 
        \INSTRUCTION[3] , \INSTRUCTION[4] , \INSTRUCTION[5] , 
        \INSTRUCTION[6] , \INSTRUCTION[10] , \INSTRUCTION[14] , 
        \INSTRUCTION[27] , \INSTRUCTION[28] , DOISR_net_1, 
        \UROM.INSTR_SCMD[0]_net_1 , \UROM.INSTR_DATA[0]_net_1 , 
        \UROM.INSTR_DATA[1]_net_1 , \UROM.INSTR_CMD[1]_net_1 , 
        \ZREGISTER[0]_net_1 , \ZREGISTER[1]_net_1 , 
        \ZREGISTER[2]_net_1 , \ZREGISTER[3]_net_1 , 
        \ZREGISTER[4]_net_1 , \ZREGISTER[5]_net_1 , 
        \ZREGISTER[6]_net_1 , \ZREGISTER[7]_net_1 , 
        \UROM.INSTR_CMD[2]_net_1 , \UROM.INSTR_CMD[0]_net_1 , 
        \UROM.INSTR_SCMD[1]_net_1 , \UROM.INSTR_SCMD[2]_net_1 , 
        \genblk2.RSTSYNC1_net_1 , \UROM.INSTR_ADDR[0]_net_1 , 
        \UROM.INSTR_ADDR[1]_net_1 , \UROM.INSTR_ADDR[3]_net_1 , 
        \UROM.INSTR_ADDR[4]_net_1 , \UROM.INSTR_DATA[2]_net_1 , 
        DOJMP_net_1, STBFLAG_net_1, STD_ACCUM_ZERO_net_1, 
        ISR_ACCUM_ZERO_net_1, STD_ACCUM_NEG_net_1, ISR_ACCUM_NEG_net_1, 
        STBACCUM_net_1, \STKPTR[0]_net_1 , \STKPTR[1]_net_1 , 
        \STKPTR[2]_net_1 , \STKPTR[3]_net_1 , \STKPTR[4]_net_1 , 
        \STKPTR[5]_net_1 , \STKPTR[6]_net_1 , \STKPTR[7]_net_1 , 
        PSELI_7, STBRAM_net_1, \RAMWDATA[1] , \RAMWDATA[5] , 
        \RAMWDATA[6] , \RAMWDATA[7] , STBRAM_7, \ICYCLE[0]_net_1 , 
        \ICYCLE[1]_net_1 , ICYCLE_1_sqmuxa_1, \ICYCLE_ns_i_i[0] , 
        \RAMWDATA_i[11] , \RAMWDATA_i[10] , \RAMWDATA_i[9] , 
        \RAMWDATA_i[8] , \RAMWDATA_i[4] , N_53, N_55, N_57, N_59, N_61, 
        N_107_i, \un37_SMADDR.U1.DWACT_FINC_E[0] , 
        \un37_SMADDR.U1.DWACT_FINC_E[1] , 
        \un37_SMADDR.U1.DWACT_FINC_E[2] , 
        \un37_SMADDR.U1.DWACT_FINC_E[3] , 
        \un37_SMADDR.U1.DWACT_FINC_E[4] , 
        \un37_SMADDR.U1.DWACT_FINC_E[5] , 
        \un37_SMADDR.U1.DWACT_FINC_E[6] , \un37_SMADDR.N_2 , 
        \un37_SMADDR.N_3 , \un37_SMADDR.N_4 , \un37_SMADDR.N_5 , 
        \un37_SMADDR.N_6 , \un37_SMADDR.N_7 , \un37_SMADDR.N_8 , 
        \un37_SMADDR.N_9 , \un37_SMADDR.N_10 , \un37_SMADDR.N_11 , 
        \un1_STKPTRP1.U1.DWACT_FINC_E[0] , 
        \un1_STKPTRP1.U1.DWACT_FINC_E[1] , 
        \un1_STKPTRP1.U1.DWACT_FINC_E[2] , \un1_STKPTRP1.N_2 , 
        \un1_STKPTRP1.N_3 , \un1_STKPTRP1.N_4 , \un1_STKPTRP1.N_5 , 
        \un1_STKPTRP1.N_6 , \un1_STKPTRP1.N_7 , \UROM.UROM.doins_2[1] , 
        un1_ADDRESS_13_1_i_0, \UROM.UROM.N_7 , \UROM.UROM.N_16 , 
        \UROM.UROM.N_18 , STBRAM_10_sqmuxa, \ZREGISTER_18[1] , N_125, 
        \ZREGISTER_18[2] , \un17_ZREGISTER.N_2_i , 
        \un17_ZREGISTER.i2_mux , \un17_ZREGISTER.i4_mux , 
        \ACCUM_IN[4] , N_504, N_534, ACCUM_NEXT_sn_N_7, N_544, N_514, 
        ACCUM_NEXT_sn_N_15_mux, \ACCUM_NEXT[4] , ACCUM_NEXT_sn_N_13, 
        N_503, N_533, \ACCUM_IN[3] , N_543, N_562, N_552, 
        \ACCUM_NEXT[3] , ACCUM_NEXT_sn_N_11, N_122, N_121, N_120, 
        N_119, RAMWDATA_sn_N_2, N_165, N_391, USE_ACC_1, N_394, N_450, 
        N_454, N_93, \un17_ZREGISTER[7] , \un17_ZREGISTER.i12_mux , 
        \ZREGISTER_18[7] , \ZREGISTER_18[6] , \ZREGISTER_18[5] , 
        \ZREGISTER_18[4] , N_456, N_455, N_113, N_114, 
        \un17_ZREGISTER.N_37 , \un17_ZREGISTER.i10_mux , 
        \un17_ZREGISTER.i8_mux , \un17_ZREGISTER.i6_mux , 
        \ACCUM_IN[0] , \un7_MUXIR[0] , N_357, \ACCUM_NEXT[0] , N_559, 
        N_540, N_530, N_549, N_520, N_510, N_500, 
        \un1_ACCUMULATOR0[0] , SHIFTLSB, \ACCUM_IN[1] , 
        \ACCUM_NEXT[1] , N_560, N_541, N_531, N_550, N_521, N_511, 
        N_501, STKPTRe, N_133, \un1_ACCUMULATOR_0.i4_mux , 
        \un1_ACCUMULATOR_0.i2_mux , \ACCUM_IN[2] , 
        \xhdl_31.ALUOUT_4[4] , N_502, N_512, N_522, N_532, N_542, 
        N_551, N_561, \ACCUM_NEXT[2] , N_513, N_523, N_115, N_393, 
        N_392, \ACCUM_IN_0[2] , N_117, \ACCUM_IN_0[3] , 
        \un1_ACCUM_IN_0[5] , \un1_ACCUMULATOR_0.i10_mux , 
        \un1_ACCUMULATOR_0.i8_mux , \un1_ACCUMULATOR_0.i6_mux , 
        \un1_ACCUMULATOR_0.N_37 , \ACCUM_IN[7] , N_101, N_161, N_106, 
        N_96_i, N_135, N_162, N_94, \ACCUM_NEXT[7] , N_547, N_537, 
        N_507, \ACCUM_IN_0[0] , \ACCUM_IN_0[1] , \un1_ACCUM_IN_0[1] , 
        \un1_ACCUMULATOR_0.N_2_i , \un1_ACCUMULATOR_0.i12_mux , 
        \un1_ACCUM_IN_0[7] , N_352, N_517, \xhdl_31.ALUOUT_4[7] , 
        SHIFTMSB, \xhdl_31.ALUOUT_4[6] , \ACCUM_IN[6] , N_516, N_846, 
        N_845, N_844, N_843, N_842, N_841, N_840, N_839, N_134, 
        STKPTR_2_sqmuxa, STKPTR_c1, N_613, STKPTR_c3, STKPTR_c2, N_617, 
        STKPTR_c4, N_619, N_620, N_621, N_623, 
        \URAM.un1_UROM.INSTR_MUXC , N_90, N_611, N_615, 
        RAMADDR_1_sqmuxa, N_149, N_66, N_70, to_logic10, N_166, 
        un1_DOISR_0_sqmuxa, \to_logic_2.tmp_6[0] , un1_ICYCLE_11, 
        \ACCUM_NEXT[6] , N_123, N_118, N_116, N_109, N_108, N_104, 
        N_148, N_127, un1_ICYCLE_6, 
        \xhdl_41.xhdl_40_l3.un13_flagvalue , N_422, N_425, 
        \SMADDR_21[3] , N_412, SMADDR_0_sqmuxa_1, \SMADDR_21[0] , 
        N_409, ACCUM_NEG, ACCUM_ZERO_1, N_87_i, SMADDR_0_sqmuxa_2, 
        N_416, N_417, N_418, N_419, N_420, N_433, N_432, N_431, N_430, 
        N_429, \SMADDR_21[11] , \SMADDR_21[10] , \SMADDR_21[9] , 
        \SMADDR_21[8] , \SMADDR_21[7] , \ACCUM_NEXT[5] , \ACCUM_IN[5] , 
        N_414, N_415, N_428, N_427, N_426, N_424, N_423, N_546, N_564, 
        N_545, N_536, N_535, N_554, N_515, N_506, N_505, 
        \xhdl_31.ALUOUT_4[5] , \SMADDR_21[6] , \SMADDR_21[5] , 
        \SMADDR_21[4] , N_413, \SMADDR_21[2] , N_411, \SMADDR_21[1] , 
        N_410, ACCUMULATOR4, \un17_ZREGISTER.N_25_i , 
        \un17_ZREGISTER.N_23_i , \un17_ZREGISTER.N_21_i , 
        \un1_ACCUMULATOR_0.N_27_i , \un17_ZREGISTER.N_19_i , 
        \un1_ACCUMULATOR_0.N_29_i , \un1_ACCUMULATOR_0.N_21_i , 
        \ACCUMULATOR_RNIC8M55[7]_net_1 , 
        \UROM.INSTR_CMD_RNIDL217[1]_net_1 , d_N_4, d_N_5, 
        \UROM.INSTR_SCMD_RNI8FK52[1]_net_1 , 
        \un1_ACCUMULATOR_0.un1_ACCUMULATOR_v_0_0[3] , 
        \un1_ACCUMULATOR_0.N_39 , m16_s, m16_d, \ACCUM_NEXT_6_s[5] , 
        \ACCUM_NEXT_6_d[5] , m13_s, m13_d_1, m13_s_0, m13_d_0, 
        \un17_ZREGISTER.m3_N_4_mux , \un1_ACCUMULATOR_0.m13_i2_mux , 
        d_N_3_mux, \ACCUM_NEXT_a2[4] , \ACCUM_NEXT_a3[4] , 
        \ACCUM_NEXT_a4[4] , \ACCUM_NEXT_a5[4] , \ACCUM_NEXT_a6[4] , 
        \ACCUM_NEXT_a2[6] , \ACCUM_NEXT_a4[6] , \ACCUM_NEXT_a6[6] , 
        ACCUM_m16, \un1_ACCUMULATOR_0.ACCUM_N_4 , 
        \un1_ACCUMULATOR_0.ACCUM_N_6 , \un1_ACCUMULATOR_0.ACCUM_N_7 , 
        ACCUM_m15_0_o6_3, ACCUM_m15_0_a6_0, ACCUM_m15_0_a6_2, 
        \xhdl_31.ALUOUT_4_a0[7] , \ACCUM_IN_a0[5] , 
        \un1_ACCUMULATOR_0.un1_ACCUMULATOR_v_0_0[4] , 
        \ACCUM_NEXT_2_a0[1] , \ACCUM_NEXT_2_a0[0] , 
        \ACCUM_NEXT_2_a4[0] , \ACCUM_NEXT_2_a0[3] , 
        \ACCUM_NEXT_2_a4[3] , \un1_ACCUMULATOR_0.ACCUM_N_7_mux_0 , 
        d_N_5_mux, \ACCUMULATOR_RNI1OI7[3]_net_1 , 
        \xhdl_31.ALUOUT22_0 , m7_m2, \un17_ZREGISTER.m7_N_7_mux , 
        PWDATA_M_sn_N_2, \un1_ACCUMULATOR_0.ACCUM_N_3_mux , 
        d_N_3_mux_0, \un1_ACCUMULATOR_0.ACCUMULATOR_m_0_0[7] , 
        \un1_ACCUMULATOR_0.xhdl_41.xhdl_40_l3.un13_flagvalue_1 , 
        \un1_ACCUMULATOR_0.xhdl_41.xhdl_40_l3.un13_flagvalue_2 , 
        \un1_ACCUMULATOR_0.xhdl_41.xhdl_40_l3.un13_flagvalue_4 , 
        \un1_ACCUMULATOR_0.xhdl_41.xhdl_40_l3.un13_flagvalue_6 , 
        \un1_ACCUMULATOR_0.ACCUM_NEXT_2_a3_1[1] , 
        \un1_ACCUMULATOR_0.ACCUM_NEXT_2_a2_1[1] , 
        \un17_ZREGISTER.m1tt_m3_0_a3_0 , 
        \un1_ACCUMULATOR_0.un1_ICYCLE_11_0_a2_0_0 , 
        \un1_ACCUMULATOR_0.STKPTRlde_0_a2_0_0 , 
        \un1_ACCUMULATOR_0.ACCUM_NEXT_2_1_0[3] , 
        \un1_ACCUMULATOR_0.ACCUM_NEXT_2_1_0[0] , 
        \un1_ACCUMULATOR_0.ACCUM_NEXT_2_1_1[0] , 
        \un1_ACCUMULATOR_0.ACCUM_NEXT_2_a1_1[3] , 
        \un1_ACCUMULATOR_0.ACCUM_NEXT_2_a1_1[0] , 
        \un1_ACCUMULATOR_0.ACCUM_NEXT_2_a1_1[1] , 
        \un1_ACCUMULATOR_0.ACCUM_NEXT_2_a4_0[0] , 
        \un1_ACCUMULATOR_0.xhdl_41.flagvalue_0 , 
        \un1_ACCUMULATOR_0.xhdl_41.flagvalue_1 , 
        \un1_ACCUMULATOR_0.ACCUM_NEXT_2_a0_1[0] , 
        \un1_ACCUMULATOR_0.un1_ACCUMULATOR_v_0_0[6] , 
        \un1_ACCUMULATOR_0.ACCUM_IN_a0_1[5] , 
        \un1_ACCUMULATOR_0.un1_ACCUMULATOR_v_0_0[5] , 
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_0[0] , 
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_1[0] , 
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_2[0] , 
        \un1_ACCUMULATOR_0.ACCUM_NEXT_3_0[3] , 
        \un1_ACCUMULATOR_0.ACCUM_NEXT_3_1[3] , 
        \un1_ACCUMULATOR_0.ACCUM_NEXT_3_2[3] , 
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_0[1] , 
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_1[1] , 
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_2[1] , 
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_3[1] , 
        \un1_ACCUMULATOR_0.ACCUM_m3_0_a2_2_1 , 
        \un1_ACCUMULATOR_0.ACCUM_m15_0_a6_3_0 , 
        \un1_ACCUMULATOR_0.ACCUM_m15_0_a6_3_2 , 
        \un1_ACCUMULATOR_0.ACCUM_m15_0_a6_0_1 , 
        \un1_ACCUMULATOR_0.ACCUM_m15_0_a6_1_1 , 
        \un1_ACCUMULATOR_0.ACCUM_m15_0_a6_1_2 , 
        \un1_ACCUMULATOR_0.ACCUM_m15_0_a6_1 , 
        \un17_ZREGISTER.m1_m1_0_a2_0 , 
        \un1_ACCUMULATOR_0.STKPTRlde_0_a2_1_0 , 
        \un1_ACCUMULATOR_0.STKPTR_2_sqmuxa_0_a2_1 , 
        \un1_ACCUMULATOR_0.STBRAM_7_0_0_a2_0 , 
        \un1_ACCUMULATOR_0.ACCUM_m3_0_a2_1 , 
        \un1_ACCUMULATOR_0.ACCUM_NEXT_a2_0[4] , 
        \un1_ACCUMULATOR_0.ACCUM_NEXT_a2_1[4] , 
        \un1_ACCUMULATOR_0.ACCUM_NEXT_a2_0[6] , 
        \un1_ACCUMULATOR_0.STBRAM_7_0_0_a2_0_0 , 
        \un1_ACCUMULATOR_0.RAMADDR_1_sqmuxa_0 , 
        \un1_ACCUMULATOR_0.un1_ICYCLE_11_0_0 , d_m7_0_a5_1_0, 
        \un1_ACCUMULATOR_0.ACCUM_m15_0_0 , 
        \un1_ACCUMULATOR_0.ACCUM_m15_0_1 , 
        \un1_ACCUMULATOR_0.ACCUM_m15_0_2 , 
        \un1_ACCUMULATOR_0.STBRAM_7_0_0_0 , 
        \un1_ACCUMULATOR_0.STBRAM_10_sqmuxa_0_a2_0 , 
        \un1_ACCUMULATOR_0.N_35 , \un1_ACCUMULATOR_0.N_36 , 
        \un1_ACCUMULATOR_0.STKPTRlde_0_0 , \un17_ZREGISTER.m28_0 , 
        \un17_ZREGISTER.m26_0 , d_m7_0_a5_2_0, 
        \un1_ACCUMULATOR_0.ACCUM_NEXT_a5_0[4] , 
        \un1_ACCUMULATOR_0.ACCUM_NEXT_a1_3[4] , 
        \un1_ACCUMULATOR_0.ACCUM_NEXT_a0_3[4] , 
        \un1_ACCUMULATOR_0.STKPTR_51_0 , d_m7_0_0, 
        \un1_ACCUMULATOR_0.ACCUM_NEXT_a1_3[6] , 
        \un1_ACCUMULATOR_0.ACCUM_N_7_mux , 
        \un1_ACCUMULATOR_0.ACCUM_NEXT_a0_3[6] , ACCUM_NEXT_sn_N_8, 
        \un1_ACCUMULATOR_0.ACCUM_NEXT_a3_1[4] , 
        \un1_ACCUMULATOR_0.ACCUM_NEXT_a3_2[4] , 
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_1[4] , 
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_2[4] , 
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_3[4] , 
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_0[6] , 
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_1[6] , 
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_2[6] , 
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_3[6] , 
        \un1_ACCUMULATOR_0.to_logic_2.tmp_6_0[0] , 
        \un1_ACCUMULATOR_0.to_logic_2.tmp_6_3[0] , 
        \un1_ACCUMULATOR_0.to_logic_2.tmp_6_4[0] , m32_s, m32_d, 
        \ACCUM_NEXT_0_s[7] , \ACCUM_NEXT_0_d[7] , \ICYCLE_i[1] , 
        \INSTRUCTION_i[14] , \UROM.INSTR_SCMD_0[2]_net_1 , 
        \UROM.INSTR_SCMD_0[1]_net_1 , \UROM.INSTR_CMD_0[1]_net_1 , 
        \UROM.INSTR_SCMD_0[0]_net_1 , DOISR_0_net_1, 
        \genblk2.RSTSYNC2_0_net_1 , \genblk2.RSTSYNC2_1_net_1 ;
    assign PADDR_M[19] = GND;
    assign PADDR_M[18] = GND;
    assign PADDR_M[17] = GND;
    assign PADDR_M[16] = GND;
    assign PADDR_M[15] = GND;
    assign PADDR_M[14] = GND;
    assign PADDR_M[13] = GND;
    assign PADDR_M[11] = GND;
    assign PADDR_M[10] = GND;
    assign PADDR_M[9] = GND;
    assign PADDR_M[8] = GND;
    assign PRDATA_S[7] = GND;
    assign PRDATA_S[6] = GND;
    assign PRDATA_S[5] = GND;
    assign PRDATA_S[4] = GND;
    assign PRDATA_S[3] = GND;
    assign PRDATA_S[2] = GND;
    assign PRDATA_S[1] = GND;
    assign PRDATA_S[0] = GND;
    assign PSLVERR_S = GND;
    
    NOR2B \un1_ACCUMULATOR_0_SMADDR_21_0[8]  (.A(\RAMRDATA[8] ), .B(
        \UROM.INSTR_CMD[1]_net_1 ), .Y(N_417));
    NOR2B un1_STKPTRP1_I_11 (.A(\STKPTR[3]_net_1 ), .B(
        \un1_STKPTRP1.U1.DWACT_FINC_E[0] ), .Y(\un1_STKPTRP1.N_5 ));
    AO1A \un17_ZREGISTER_un7_MUXIR_0[0]  (.A(N_90), .B(N_93), .C(
        PADDR_M[12]), .Y(\un7_MUXIR[0] ));
    NOR3C un1_ACCUMULATOR_0_ACCUM_m15_0_a6_3_2 (.A(
        \un1_ACCUMULATOR_0.ACCUM_N_4 ), .B(
        \un1_ACCUMULATOR_0.ACCUM_m15_0_a6_3_0 ), .C(\ACCUM_IN_0[1] ), 
        .Y(\un1_ACCUMULATOR_0.ACCUM_m15_0_a6_3_2 ));
    DFN1C0 STBACCUM (.D(N_59), .CLK(PCLK), .CLR(PRESETN), .Q(
        STBACCUM_net_1));
    XOR2 un37_SMADDR_I_26 (.A(\un37_SMADDR.N_4 ), .B(\SMADDR[9]_net_1 )
        , .Y(I_26));
    OR3A un1_ACCUMULATOR_0_PSELI_7_0_0_o2 (.A(
        \UROM.INSTR_CMD[1]_net_1 ), .B(\UROM.INSTR_CMD[0]_net_1 ), .C(
        \UROM.INSTR_CMD[2]_net_1 ), .Y(N_104));
    NOR2 \un1_ACCUMULATOR_0_ACCUM_NEXT_6_s[5]  (.A(
        \UROM.INSTR_SCMD[1]_net_1 ), .B(\UROM.INSTR_SCMD[0]_net_1 ), 
        .Y(\ACCUM_NEXT_6_s[5] ));
    MX2 \un17_ZREGISTER_PWDATA_M_0[2]  (.A(\UROM.INSTR_DATA[2]_net_1 ), 
        .B(\ACCUMULATOR[2]_net_1 ), .S(USE_ACC_1), .Y(N_393));
    DFN1E1C0 \ZREGISTER[6]  (.D(\ZREGISTER_18[6] ), .CLK(PCLK), .CLR(
        \genblk2.RSTSYNC2_1_net_1 ), .E(N_125), .Q(
        \ZREGISTER[6]_net_1 ));
    OA1C \un1_ACCUMULATOR_0_ACCUM_NEXT_0_1[6]  (.A(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_a3_2[4] ), .B(N_516), .C(
        \ACCUM_NEXT_a4[6] ), .Y(\un1_ACCUMULATOR_0.ACCUM_NEXT_0_1[6] ));
    NOR3C \un1_ACCUMULATOR_0_ACCUM_IN_a0[5]  (.A(
        \un1_ACCUMULATOR_0.ACCUM_IN_a0_1[5] ), .B(\RAMRDATA[5] ), .C(
        N_93), .Y(\ACCUM_IN_a0[5] ));
    XOR2 un37_SMADDR_I_14 (.A(\un37_SMADDR.N_8 ), .B(\SMADDR[5]_net_1 )
        , .Y(I_14));
    NOR3 \un1_ACCUMULATOR_0_to_logic_2.tmp_6_3[0]  (.A(\ACCUM_NEXT[3] )
        , .B(\ACCUM_NEXT[2] ), .C(\ACCUM_NEXT[4] ), .Y(
        \un1_ACCUMULATOR_0.to_logic_2.tmp_6_3[0] ));
    MX2 un1_ACCUMULATOR_0_STKPTR_50 (.A(\STKPTR[6]_net_1 ), .B(I_17_0), 
        .S(STKPTR_2_sqmuxa), .Y(N_621));
    NOR2A \un1_ACCUMULATOR_0_ACCUM_NEXT_a0_3[6]  (.A(
        \un1_ACCUMULATOR_0.ACCUM_N_7_mux ), .B(
        \un1_ACCUMULATOR_0.N_39 ), .Y(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_a0_3[6] ));
    MX2A un1_ACCUMULATOR_0_ACCUM_m15_0_o6_4 (.A(d_N_3_mux_0), .B(
        \RAMRDATA[1] ), .S(\un1_ACCUMULATOR_0.ACCUM_N_3_mux ), .Y(
        \un1_ACCUMULATOR_0.ACCUM_N_7 ));
    XOR3 un1_ACCUMULATOR_0_m28 (.A(\un1_ACCUM_IN_0[1] ), .B(
        \ACCUMULATOR[1]_net_1 ), .C(\un1_ACCUMULATOR_0.N_2_i ), .Y(
        \un1_ACCUMULATOR_0.N_29_i ));
    MIN3 un1_ACCUMULATOR_0_m4 (.A(\un1_ACCUM_IN_0[1] ), .B(
        \un1_ACCUMULATOR_0.N_2_i ), .C(\ACCUMULATOR[1]_net_1 ), .Y(
        \un1_ACCUMULATOR_0.i2_mux ));
    NOR3A un1_ACCUMULATOR_0_ACCUM_m15_0_a6_1_3 (.A(
        \ACCUMULATOR[2]_net_1 ), .B(\ACCUM_IN_0[1] ), .C(
        \ACCUM_IN_0[2] ), .Y(\un1_ACCUMULATOR_0.ACCUM_m15_0_a6_1 ));
    NOR3C un1_ACCUMULATOR_0_ACCUM_m15_0_a6_1_2 (.A(
        \ACCUMULATOR[0]_net_1 ), .B(\ACCUM_IN_0[0] ), .C(
        \ACCUM_IN_0[2] ), .Y(\un1_ACCUMULATOR_0.ACCUM_m15_0_a6_1_2 ));
    NOR2B \un1_ACCUMULATOR_0_un1_ACCUMULATOR_v_0_0[3]  (.A(PADDR_M[12])
        , .B(\RAMRDATA[4] ), .Y(
        \un1_ACCUMULATOR_0.un1_ACCUMULATOR_v_0_0[3] ));
    MX2 \un1_ACCUMULATOR_0_PADDR_M_1[2]  (.A(
        \UROM.INSTR_ADDR[0]_net_1 ), .B(\ZREGISTER[2]_net_1 ), .S(
        \UROM.INSTR_SCMD_0[2]_net_1 ), .Y(PADDR_M[2]));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT_3_0[3]  (.A(
        \ACCUMULATOR[3]_net_1 ), .B(\ACCUMULATOR[4]_net_1 ), .S(
        \UROM.INSTR_SCMD_0[2]_net_1 ), .Y(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_3_0[3] ));
    NOR3B \un1_ACCUMULATOR_0_ACCUM_NEXT_2_a3_1[1]  (.A(
        \UROM.INSTR_CMD[2]_net_1 ), .B(\UROM.INSTR_DATA[1]_net_1 ), .C(
        PADDR_M[12]), .Y(\un1_ACCUMULATOR_0.ACCUM_NEXT_2_a3_1[1] ));
    AO1 un1_ACCUMULATOR_0_ACCUM_m15_0_2 (.A(
        \un1_ACCUMULATOR_0.ACCUM_m15_0_a6_1_2 ), .B(
        \un1_ACCUMULATOR_0.ACCUM_m15_0_a6_1_1 ), .C(
        \un1_ACCUMULATOR_0.ACCUM_m15_0_0 ), .Y(
        \un1_ACCUMULATOR_0.ACCUM_m15_0_2 ));
    NOR2B \un1_ACCUMULATOR_0_ACCUM_NEXT_2_a4[0]  (.A(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_2_a4_0[0] ), .B(\RAMRDATA[0] ), 
        .Y(\ACCUM_NEXT_2_a4[0] ));
    AND3 un37_SMADDR_I_13 (.A(\un37_SMADDR.U1.DWACT_FINC_E[0] ), .B(
        \SMADDR[3]_net_1 ), .C(\SMADDR[4]_net_1 ), .Y(
        \un37_SMADDR.N_8 ));
    MX2 \un1_ACCUMULATOR_0_SMADDR_21[7]  (.A(N_429), .B(N_416), .S(
        SMADDR_0_sqmuxa_1), .Y(\SMADDR_21[7] ));
    MX2 \un1_ACCUMULATOR_0_RAMWDATA_0_i_m2[3]  (.A(I_9), .B(
        \SMADDR[3]_net_1 ), .S(DOISR_0_net_1), .Y(N_120));
    XNOR3 \ACCUMULATOR_RNIC8M55[7]  (.A(\un1_ACCUM_IN_0[7] ), .B(
        \ACCUMULATOR[7]_net_1 ), .C(\un1_ACCUMULATOR_0.i12_mux ), .Y(
        \ACCUMULATOR_RNIC8M55[7]_net_1 ));
    AO1 un1_ACCUMULATOR_0_STBRAM_7_0_0 (.A(
        \un1_ACCUMULATOR_0.STBRAM_7_0_0_a2_0_0 ), .B(N_162), .C(
        \un1_ACCUMULATOR_0.STBRAM_7_0_0_0 ), .Y(STBRAM_7));
    NOR2B \un17_ZREGISTER_PADDR_M_1[7]  (.A(\ZREGISTER[7]_net_1 ), .B(
        \UROM.INSTR_SCMD[2]_net_1 ), .Y(PADDR_M[7]));
    DFN1E1C0 \IO_OUT[0]  (.D(PWDATA_M[0]), .CLK(PCLK), .CLR(
        \genblk2.RSTSYNC2_0_net_1 ), .E(STBRAM_10_sqmuxa), .Q(
        IO_OUT[0]));
    OR3A un1_ACCUMULATOR_0_un1_ICYCLE_11_0_o2 (.A(
        \UROM.INSTR_CMD[2]_net_1 ), .B(N_87_i), .C(DOISR_0_net_1), .Y(
        N_109));
    NOR2A \un1_ACCUMULATOR_0_PWDATA_M[3]  (.A(N_394), .B(
        PWDATA_M_sn_N_2), .Y(PWDATA_M[3]));
    AO1A \UROM.INSTR_SCMD_RNIVCVC2[0]  (.A(N_517), .B(d_m7_0_a5_1_0), 
        .C(d_N_5), .Y(d_m7_0_0));
    AX1B un1_ACCUMULATOR_0_STKPTR_n5 (.A(STKPTR_2_sqmuxa), .B(
        STKPTR_c4), .C(N_619), .Y(N_844));
    NOR2 \un1_ACCUMULATOR_0_ACCUM_NEXT_0_s[7]  (.A(
        \un1_ACCUMULATOR_0.ACCUM_m3_0_a2_1 ), .B(ACCUM_NEXT_sn_N_13), 
        .Y(\ACCUM_NEXT_0_s[7] ));
    NOR2B \un1_ACCUMULATOR_0_SMADDR_21_0[10]  (.A(\RAMRDATA[10] ), .B(
        \UROM.INSTR_CMD[1]_net_1 ), .Y(N_419));
    NOR2A \un1_ACCUMULATOR_0_RAMWDATA_i[8]  (.A(N_118), .B(
        RAMWDATA_sn_N_2), .Y(\RAMWDATA_i[8] ));
    NOR2A \un1_ACCUMULATOR_0_ACCUM_NEXT_a3_1[4]  (.A(ACCUM_NEXT_sn_N_8)
        , .B(\UROM.INSTR_CMD[1]_net_1 ), .Y(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_a3_1[4] ));
    NOR2B \un1_ACCUMULATOR_0_ACCUMULATOR_m_0_0[7]  (.A(
        \ACCUMULATOR[7]_net_1 ), .B(\UROM.INSTR_DATA[1]_net_1 ), .Y(
        \un1_ACCUMULATOR_0.ACCUMULATOR_m_0_0[7] ));
    XOR2 un1_STKPTRP1_I_9 (.A(\un1_STKPTRP1.N_6 ), .B(
        \STKPTR[3]_net_1 ), .Y(I_9_0));
    AO1 \un1_ACCUMULATOR_0_ACCUM_NEXT_0_3[1]  (.A(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_2_a4_0[0] ), .B(\RAMRDATA[1] ), 
        .C(\un1_ACCUMULATOR_0.ACCUM_NEXT_0_1[1] ), .Y(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_3[1] ));
    DFN1E1C0 \ACCUMULATOR[7]  (.D(\ACCUM_NEXT[7] ), .CLK(PCLK), .CLR(
        \genblk2.RSTSYNC2_0_net_1 ), .E(ACCUMULATOR4), .Q(
        \ACCUMULATOR[7]_net_1 ));
    MAJ3X \un1_ACCUMULATOR_0_ACCUM_NEXT_1[7]  (.A(
        \ACCUMULATOR[7]_net_1 ), .B(\ACCUM_IN[7] ), .C(
        \UROM.INSTR_SCMD_0[1]_net_1 ), .Y(N_507));
    INV DOJMP_RNO (.A(\ICYCLE[1]_net_1 ), .Y(\ICYCLE_i[1] ));
    MX2 \un1_ACCUMULATOR_0_RAMWDATA_i[3]  (.A(N_120), .B(PWDATA_M[3]), 
        .S(RAMWDATA_sn_N_2), .Y(N_53));
    MX2 \un1_ACCUMULATOR_0_PWDATA_M_0[0]  (.A(
        \UROM.INSTR_DATA[0]_net_1 ), .B(\ACCUMULATOR[0]_net_1 ), .S(
        USE_ACC_1), .Y(N_391));
    DFN1E0P0 \SMADDR[9]  (.D(\SMADDR_21[9] ), .CLK(PCLK), .PRE(
        \genblk2.RSTSYNC2_1_net_1 ), .E(un1_ICYCLE_6), .Q(
        \SMADDR[9]_net_1 ));
    AX1B un1_ACCUMULATOR_0_STKPTR_n4 (.A(STKPTR_2_sqmuxa), .B(
        STKPTR_c3), .C(N_617), .Y(N_843));
    NOR2 \un1_ACCUMULATOR_0_ACCUM_NEXT_a2_0[4]  (.A(
        \ACCUMULATOR[3]_net_1 ), .B(\UROM.INSTR_SCMD[1]_net_1 ), .Y(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_a2_0[4] ));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT_7[5]  (.A(N_535), .B(N_554), .S(
        ACCUM_NEXT_sn_N_15_mux), .Y(N_564));
    DFN1E1C0 \IO_OUT[6]  (.D(PWDATA_M[6]), .CLK(PCLK), .CLR(
        \genblk2.RSTSYNC2_0_net_1 ), .E(STBRAM_10_sqmuxa), .Q(
        IO_OUT[6]));
    OR3 un1_ACCUMULATOR_0_STKPTR_51_0 (.A(\STKPTR[5]_net_1 ), .B(
        STKPTR_c4), .C(\STKPTR[6]_net_1 ), .Y(
        \un1_ACCUMULATOR_0.STKPTR_51_0 ));
    XNOR3 un17_ZREGISTER_m20 (.A(PWDATA_M[5]), .B(\ZREGISTER[5]_net_1 )
        , .C(\un17_ZREGISTER.i8_mux ), .Y(\un17_ZREGISTER.N_21_i ));
    XA1 un1_ACCUMULATOR_0_m13_m3 (.A(\ACCUMULATOR[4]_net_1 ), .B(
        \ACCUMULATOR[3]_net_1 ), .C(
        \un1_ACCUMULATOR_0.un1_ACCUMULATOR_v_0_0[3] ), .Y(
        \un1_ACCUMULATOR_0.m13_i2_mux ));
    XA1 un17_ZREGISTER_m16_s (.A(PWDATA_M[5]), .B(\ZREGISTER[5]_net_1 )
        , .C(\un17_ZREGISTER.N_37 ), .Y(m16_s));
    NOR2A \un1_ACCUMULATOR_0_SMADDR_21_1[1]  (.A(I_5), .B(DOISR_net_1), 
        .Y(N_423));
    OR2 un1_ACCUMULATOR_0_STKPTR_c2 (.A(STKPTR_c1), .B(
        \STKPTR[2]_net_1 ), .Y(STKPTR_c2));
    NOR2A un1_ACCUMULATOR_0_SMADDR_0_sqmuxa_1 (.A(DOJMP_net_1), .B(
        DOISR_net_1), .Y(SMADDR_0_sqmuxa_1));
    NOR2 \un1_ACCUMULATOR_0_ACCUM_NEXT_a2_0[6]  (.A(
        \ACCUMULATOR[5]_net_1 ), .B(\UROM.INSTR_SCMD[1]_net_1 ), .Y(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_a2_0[6] ));
    NOR3A un1_ACCUMULATOR_0_STKPTR_2_sqmuxa_0_a2 (.A(
        \un1_ACCUMULATOR_0.STKPTR_2_sqmuxa_0_a2_1 ), .B(N_90), .C(N_94)
        , .Y(N_134));
    DFN1 \UROM.INSTR_SCMD_0[2]  (.D(\INSTRUCTION[5] ), .CLK(PCLK), .Q(
        \UROM.INSTR_SCMD_0[2]_net_1 ));
    AO1 un1_ACCUMULATOR_0_un1_DOISR_0_sqmuxa_0 (.A(
        \un1_ACCUMULATOR_0.STKPTRlde_0_a2_0_0 ), .B(N_166), .C(N_148), 
        .Y(un1_DOISR_0_sqmuxa));
    AO1 \un1_ACCUMULATOR_0_ACCUM_NEXT_3_1[3]  (.A(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_2_1_1[0] ), .B(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_2_1_0[3] ), .C(
        \ACCUM_NEXT_2_a4[3] ), .Y(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_3_1[3] ));
    NOR2A \un17_ZREGISTER_PWDATA_M[2]  (.A(N_393), .B(PWDATA_M_sn_N_2), 
        .Y(PWDATA_M[2]));
    NOR2A \un1_ACCUMULATOR_0_un1_ACCUMULATOR_v_0[4]  (.A(
        \un1_ACCUMULATOR_0.un1_ACCUMULATOR_v_0_0[4] ), .B(
        \xhdl_31.ALUOUT22_0 ), .Y(\un1_ACCUM_IN_0[5] ));
    DFN1C0 \genblk2.RSTSYNC2_1  (.D(\genblk2.RSTSYNC1_net_1 ), .CLK(
        PCLK), .CLR(NSYSRESET), .Q(\genblk2.RSTSYNC2_1_net_1 ));
    MX2B \ACCUMULATOR_RNI1OI7[3]  (.A(d_N_5_mux), .B(
        \ACCUMULATOR[3]_net_1 ), .S(\UROM.INSTR_SCMD_0[2]_net_1 ), .Y(
        \ACCUMULATOR_RNI1OI7[3]_net_1 ));
    AO1 un1_ACCUMULATOR_0_STKPTR_2_sqmuxa_0_0 (.A(N_161), .B(N_162), 
        .C(N_134), .Y(STKPTR_2_sqmuxa));
    DFN1E1P0 \STKPTR[6]  (.D(N_845), .CLK(PCLK), .PRE(PRESETN), .E(
        STKPTRe), .Q(\STKPTR[6]_net_1 ));
    NOR2B \un1_ACCUMULATOR_0_SMADDR_21_0[7]  (.A(\RAMRDATA[7] ), .B(
        \UROM.INSTR_CMD[1]_net_1 ), .Y(N_416));
    NOR2A \un1_ACCUMULATOR_0_RAMWDATA_i[9]  (.A(N_117), .B(
        RAMWDATA_sn_N_2), .Y(\RAMWDATA_i[9] ));
    NOR3B \un1_ACCUMULATOR_0_PWDATA_M[4]  (.A(USE_ACC_1), .B(
        \ACCUMULATOR[4]_net_1 ), .C(PWDATA_M_sn_N_2), .Y(PWDATA_M[4]));
    AND3 un37_SMADDR_I_8 (.A(\SMADDR[0]_net_1 ), .B(\SMADDR[1]_net_1 ), 
        .C(\SMADDR[2]_net_1 ), .Y(\un37_SMADDR.N_10 ));
    NOR2A \un1_ACCUMULATOR_0_RAMADDR[6]  (.A(I_17_0), .B(
        RAMADDR_1_sqmuxa), .Y(\RAMADDR[6] ));
    DFN1E1P0 \STKPTR[5]  (.D(N_844), .CLK(PCLK), .PRE(PRESETN), .E(
        STKPTRe), .Q(\STKPTR[5]_net_1 ));
    NOR2A \un1_ACCUMULATOR_0_PWDATA_M[0]  (.A(N_391), .B(
        PWDATA_M_sn_N_2), .Y(PWDATA_M[0]));
    NOR2A \un1_ACCUMULATOR_0_ICYCLE_ns_i_i_a2[0]  (.A(N_123), .B(
        \ICYCLE[0]_net_1 ), .Y(N_127));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT_7[0]  (.A(N_530), .B(N_549), .S(
        ACCUM_NEXT_sn_N_15_mux), .Y(N_559));
    AX1B un1_ACCUMULATOR_0_STKPTR_n1 (.A(STKPTR_2_sqmuxa), .B(
        \STKPTR[0]_net_1 ), .C(N_611), .Y(N_840));
    AO1 un1_ACCUMULATOR_0_STKPTRlde_0 (.A(N_96_i), .B(N_162), .C(
        \un1_ACCUMULATOR_0.STKPTRlde_0_0 ), .Y(STKPTRe));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT_2[5]  (.A(\xhdl_31.ALUOUT_4[5] ), 
        .B(\ACCUMULATOR[6]_net_1 ), .S(\UROM.INSTR_SCMD_0[2]_net_1 ), 
        .Y(N_515));
    MX2 \un17_ZREGISTER_ZREGISTER_18[5]  (.A(PWDATA_M[5]), .B(
        \un17_ZREGISTER.N_21_i ), .S(\UROM.INSTR_SCMD_0[0]_net_1 ), .Y(
        \ZREGISTER_18[5] ));
    MX2 \un17_ZREGISTER_ACCUM_IN_0[2]  (.A(\UROM.INSTR_DATA[2]_net_1 ), 
        .B(\RAMRDATA[2] ), .S(PADDR_M[12]), .Y(\ACCUM_IN_0[2] ));
    AND3 un1_STKPTRP1_I_18 (.A(\STKPTR[3]_net_1 ), .B(
        \STKPTR[4]_net_1 ), .C(\STKPTR[5]_net_1 ), .Y(
        \un1_STKPTRP1.U1.DWACT_FINC_E[2] ));
    AX1D un1_ACCUMULATOR_0_un1_ICYCLE_11_0_x2 (.A(
        \xhdl_41.xhdl_40_l3.un13_flagvalue ), .B(
        \un1_ACCUMULATOR_0.xhdl_41.flagvalue_1 ), .C(
        \UROM.INSTR_SCMD_0[0]_net_1 ), .Y(N_87_i));
    MX2 \un1_ACCUMULATOR_0_SMADDR_21_0[3]  (.A(
        \UROM.INSTR_ADDR[3]_net_1 ), .B(\RAMRDATA[3] ), .S(
        \UROM.INSTR_CMD_0[1]_net_1 ), .Y(N_412));
    DFN1E1C0 \ZREGISTER[4]  (.D(\ZREGISTER_18[4] ), .CLK(PCLK), .CLR(
        \genblk2.RSTSYNC2_1_net_1 ), .E(N_125), .Q(
        \ZREGISTER[4]_net_1 ));
    AO1 \un1_ACCUMULATOR_0_ACCUM_NEXT_0_1[0]  (.A(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_2_1_1[0] ), .B(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_2_1_0[0] ), .C(
        \ACCUM_NEXT_2_a4[0] ), .Y(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_1[0] ));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT[2]  (.A(N_561), .B(N_542), .S(
        ACCUM_NEXT_sn_N_13), .Y(\ACCUM_NEXT[2] ));
    NOR3B \un1_ACCUMULATOR_0_ACCUM_NEXT_0[4]  (.A(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_3[4] ), .B(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_2[4] ), .C(\ACCUM_NEXT_a6[4] ), 
        .Y(\ACCUM_NEXT[4] ));
    DFN1E0P0 \SMADDR[5]  (.D(\SMADDR_21[5] ), .CLK(PCLK), .PRE(
        \genblk2.RSTSYNC2_1_net_1 ), .E(un1_ICYCLE_6), .Q(
        \SMADDR[5]_net_1 ));
    AO1A \un1_ACCUMULATOR_0_ACCUM_NEXT_3_2[3]  (.A(
        \UROM.INSTR_CMD_0[1]_net_1 ), .B(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_2_a1_1[3] ), .C(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_3_0[3] ), .Y(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_3_2[3] ));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT[5]  (.A(N_564), .B(N_545), .S(
        ACCUM_NEXT_sn_N_13), .Y(\ACCUM_NEXT[5] ));
    DFN1E1C0 \ACCUMULATOR[2]  (.D(\ACCUM_NEXT[2] ), .CLK(PCLK), .CLR(
        \genblk2.RSTSYNC2_0_net_1 ), .E(ACCUMULATOR4), .Q(
        \ACCUMULATOR[2]_net_1 ));
    NOR2A \un1_ACCUMULATOR_0_ACCUM_NEXT_a3_0[4]  (.A(
        \UROM.INSTR_SCMD[1]_net_1 ), .B(\UROM.INSTR_SCMD[0]_net_1 ), 
        .Y(ACCUM_NEXT_sn_N_8));
    MX2 \un1_ACCUMULATOR_0_SMADDR_21[8]  (.A(N_430), .B(N_417), .S(
        SMADDR_0_sqmuxa_1), .Y(\SMADDR_21[8] ));
    OA1A \un1_ACCUMULATOR_0_ACCUM_NEXT_0_2[6]  (.A(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_a1_3[6] ), .B(
        \un1_ACCUMULATOR_0.i10_mux ), .C(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_0[6] ), .Y(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_2[6] ));
    OR2A \un1_ACCUMULATOR_0_URAM.un1_UROM.INSTR_MUXC_0_o2  (.A(N_90), 
        .B(PADDR_M[12]), .Y(\URAM.un1_UROM.INSTR_MUXC ));
    OR2 un1_ACCUMULATOR_0_STKPTR_c3 (.A(STKPTR_c2), .B(
        \STKPTR[3]_net_1 ), .Y(STKPTR_c3));
    MX2 \un1_ACCUMULATOR_0_RAMWDATA_0_i_m2[2]  (.A(I_7), .B(
        \SMADDR[2]_net_1 ), .S(DOISR_0_net_1), .Y(N_121));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT_0_d[7]  (.A(N_547), .B(
        \ACCUMULATOR_RNIC8M55[7]_net_1 ), .S(
        \un1_ACCUMULATOR_0.ACCUM_N_7_mux ), .Y(\ACCUM_NEXT_0_d[7] ));
    NOR3B \un1_ACCUMULATOR_0_to_logic_2.tmp_6[0]  (.A(
        \un1_ACCUMULATOR_0.to_logic_2.tmp_6_3[0] ), .B(
        \un1_ACCUMULATOR_0.to_logic_2.tmp_6_4[0] ), .C(\ACCUM_NEXT[7] )
        , .Y(\to_logic_2.tmp_6[0] ));
    MX2 \un1_ACCUMULATOR_0_SMADDR_21[10]  (.A(N_432), .B(N_419), .S(
        SMADDR_0_sqmuxa_1), .Y(\SMADDR_21[10] ));
    MX2 \un17_ZREGISTER_RAMWDATA[7]  (.A(N_456), .B(PWDATA_M[7]), .S(
        RAMWDATA_sn_N_2), .Y(\RAMWDATA[7] ));
    NOR2A un1_ACCUMULATOR_0_STKPTRlde_0_a2_1_0 (.A(
        \UROM.INSTR_SCMD[2]_net_1 ), .B(\UROM.INSTR_SCMD[1]_net_1 ), 
        .Y(\un1_ACCUMULATOR_0.STKPTRlde_0_a2_1_0 ));
    INV un1_ACCUMULATOR_0_un1_PWRITE_M_i (.A(d_m7_0_a5_2_0), .Y(
        PWRITE_M));
    NOR2A un1_ACCUMULATOR_0_STBFLAG_5_i_a2 (.A(
        \UROM.INSTR_CMD[1]_net_1 ), .B(\UROM.INSTR_CMD[0]_net_1 ), .Y(
        N_161));
    MAJ3X \un1_ACCUMULATOR_0_ACCUM_NEXT_1[5]  (.A(
        \ACCUMULATOR[5]_net_1 ), .B(\ACCUM_IN[5] ), .C(
        \UROM.INSTR_SCMD_0[1]_net_1 ), .Y(N_505));
    NOR3A \un1_ACCUMULATOR_0_xhdl_41.xhdl_40_l3.un13_flagvalue_4  (.A(
        \UROM.INSTR_DATA[2]_net_1 ), .B(\ZREGISTER[0]_net_1 ), .C(
        \ZREGISTER[7]_net_1 ), .Y(
        \un1_ACCUMULATOR_0.xhdl_41.xhdl_40_l3.un13_flagvalue_4 ));
    NOR3B \un1_ACCUMULATOR_0_PWDATA_M[6]  (.A(USE_ACC_1), .B(
        \ACCUMULATOR[6]_net_1 ), .C(PWDATA_M_sn_N_2), .Y(PWDATA_M[6]));
    OR2 \un1_ACCUMULATOR_0_xhdl_31.ALUOUT_4[4]  (.A(\ACCUM_IN[4] ), .B(
        \ACCUMULATOR[4]_net_1 ), .Y(\xhdl_31.ALUOUT_4[4] ));
    XOR2 un17_ZREGISTER_m28_0 (.A(\ZREGISTER[1]_net_1 ), .B(
        \un17_ZREGISTER.N_2_i ), .Y(\un17_ZREGISTER.m28_0 ));
    XA1 un1_ACCUMULATOR_0_m32_s (.A(\ACCUMULATOR[5]_net_1 ), .B(
        \un1_ACCUM_IN_0[5] ), .C(\un1_ACCUMULATOR_0.N_39 ), .Y(m32_s));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT[1]  (.A(N_560), .B(N_541), .S(
        ACCUM_NEXT_sn_N_13), .Y(\ACCUM_NEXT[1] ));
    NOR3B \un1_ACCUMULATOR_0_ACCUM_IN_a0_1[5]  (.A(
        \UROM.INSTR_CMD[0]_net_1 ), .B(\UROM.INSTR_CMD_0[1]_net_1 ), 
        .C(\UROM.INSTR_CMD[2]_net_1 ), .Y(
        \un1_ACCUMULATOR_0.ACCUM_IN_a0_1[5] ));
    DFN1E1P0 \STKPTR[2]  (.D(N_841), .CLK(PCLK), .PRE(PRESETN), .E(
        STKPTRe), .Q(\STKPTR[2]_net_1 ));
    NOR3A un1_ACCUMULATOR_0_STKPTRlde_0_a2_2 (.A(
        \UROM.INSTR_CMD[2]_net_1 ), .B(N_87_i), .C(N_94), .Y(N_162));
    MX2 \un1_ACCUMULATOR_0_SMADDR_21_0[2]  (.A(
        \UROM.INSTR_ADDR[0]_net_1 ), .B(\RAMRDATA[2] ), .S(
        \UROM.INSTR_CMD_0[1]_net_1 ), .Y(N_411));
    MX2 un1_ACCUMULATOR_0_m13 (.A(m13_d_0), .B(
        \un1_ACCUMULATOR_0.i2_mux ), .S(m13_s_0), .Y(
        \un1_ACCUMULATOR_0.i8_mux ));
    MX2 un1_ACCUMULATOR_0_STKPTR_44 (.A(\STKPTR[3]_net_1 ), .B(I_9_0), 
        .S(STKPTR_2_sqmuxa), .Y(N_615));
    NOR2A \un1_ACCUMULATOR_0_RAMWDATA_i[10]  (.A(N_116), .B(
        RAMWDATA_sn_N_2), .Y(\RAMWDATA_i[10] ));
    NOR3B \un1_ACCUMULATOR_0_ACCUM_NEXT_a2[6]  (.A(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_a2_1[4] ), .B(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_a2_0[6] ), .C(ACCUM_NEXT_sn_N_13)
        , .Y(\ACCUM_NEXT_a2[6] ));
    MX2A \un1_ACCUMULATOR_0_ACCUM_NEXT_0[2]  (.A(
        \ACCUMULATOR_RNI1OI7[3]_net_1 ), .B(\UROM.INSTR_DATA[2]_net_1 )
        , .S(\un1_ACCUMULATOR_0.ACCUM_N_7_mux_0 ), .Y(N_512));
    OR2B un1_ACCUMULATOR_0_ACCUM_m15_0_o6_0 (.A(\ACCUMULATOR[1]_net_1 )
        , .B(\ACCUMULATOR[0]_net_1 ), .Y(\un1_ACCUMULATOR_0.ACCUM_N_6 )
        );
    GND GND_i (.Y(GND));
    XOR2 un37_SMADDR_I_28 (.A(\un37_SMADDR.N_3 ), .B(
        \SMADDR[10]_net_1 ), .Y(I_28));
    XOR2 un37_SMADDR_I_17 (.A(\un37_SMADDR.N_7 ), .B(\SMADDR[6]_net_1 )
        , .Y(I_17));
    MX2 un1_ACCUMULATOR_0_SHIFTMSB (.A(\UROM.INSTR_DATA[0]_net_1 ), .B(
        N_352), .S(\UROM.INSTR_DATA[1]_net_1 ), .Y(SHIFTMSB));
    MX2 \un17_ZREGISTER_ZREGISTER_18_i_m2[3]  (.A(PWDATA_M[3]), .B(
        \un17_ZREGISTER.N_25_i ), .S(\UROM.INSTR_SCMD_0[0]_net_1 ), .Y(
        N_113));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT_5[0]  (.A(N_500), .B(PRDATA_M[0])
        , .S(\UROM.INSTR_CMD_0[1]_net_1 ), .Y(N_540));
    AXOI7 un1_ACCUMULATOR_0_un1_ICYCLE_8_i (.A(
        \un1_ACCUMULATOR_0.STKPTRlde_0_a2_0_0 ), .B(\ICYCLE[1]_net_1 ), 
        .C(\ICYCLE[0]_net_1 ), .Y(N_66));
    Minimal_SoC_COREABC_0_INSTRUCTIONS_Z2 \UROM.UROM  (.doins_2_0(
        \UROM.UROM.doins_2[1] ), .INSTR_CMD({\UROM.INSTR_CMD[2]_net_1 , 
        \UROM.INSTR_CMD[1]_net_1 }), .INSTRUCTION_11(\INSTRUCTION[14] )
        , .INSTRUCTION_25(\INSTRUCTION[28] ), .INSTRUCTION_0(
        \INSTRUCTION[3] ), .INSTRUCTION_24(\INSTRUCTION[27] ), 
        .INSTRUCTION_1(\INSTRUCTION[4] ), .INSTRUCTION_7(
        \INSTRUCTION[10] ), .INSTRUCTION_3(\INSTRUCTION[6] ), 
        .INSTRUCTION_2(\INSTRUCTION[5] ), .SMADDR({\SMADDR[11]_net_1 , 
        \SMADDR[10]_net_1 , \SMADDR[9]_net_1 , \SMADDR[8]_net_1 , 
        \SMADDR[7]_net_1 , \SMADDR[6]_net_1 , \SMADDR[5]_net_1 , 
        \SMADDR[4]_net_1 , \SMADDR[3]_net_1 , \SMADDR[2]_net_1 , 
        \SMADDR[1]_net_1 , \SMADDR[0]_net_1 }), .INSTR_SCMD({
        \UROM.INSTR_SCMD[2]_net_1 , \UROM.INSTR_SCMD[1]_net_1 }), 
        .INSTRUCTION_i_0(\INSTRUCTION_i[14] ), .ACCUM_NEXT_sn_N_7(
        ACCUM_NEXT_sn_N_7), .un1_ADDRESS_13_1_i_0(un1_ADDRESS_13_1_i_0)
        , .N_16(\UROM.UROM.N_16 ), .N_7(\UROM.UROM.N_7 ), .N_18(
        \UROM.UROM.N_18 ));
    AX1 \un1_ACCUMULATOR_0_ACCUM_NEXT_0[3]  (.A(
        \UROM.INSTR_SCMD[0]_net_1 ), .B(ACCUM_m16), .C(
        \ACCUMULATOR[2]_net_1 ), .Y(N_523));
    NOR2A \un1_ACCUMULATOR_0_ACCUM_NEXT_a3_2[4]  (.A(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_a3_1[4] ), .B(ACCUM_NEXT_sn_N_13)
        , .Y(\un1_ACCUMULATOR_0.ACCUM_NEXT_a3_2[4] ));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT_2[4]  (.A(\xhdl_31.ALUOUT_4[4] ), 
        .B(\ACCUMULATOR[5]_net_1 ), .S(\UROM.INSTR_SCMD_0[2]_net_1 ), 
        .Y(N_514));
    NOR2B \un1_ACCUMULATOR_0_un1_ACCUMULATOR_v_0_0[6]  (.A(PADDR_M[12])
        , .B(\RAMRDATA[7] ), .Y(
        \un1_ACCUMULATOR_0.un1_ACCUMULATOR_v_0_0[6] ));
    AO1 un1_ACCUMULATOR_0_STBACCUM_4_iv_i_o2 (.A(N_101), .B(
        \UROM.INSTR_CMD[1]_net_1 ), .C(N_94), .Y(N_106));
    DFN1C0 PENABLEI (.D(ICYCLE_1_sqmuxa_1), .CLK(PCLK), .CLR(PRESETN), 
        .Q(PENABLE_M));
    XNOR3 un17_ZREGISTER_m24 (.A(PWDATA_M[3]), .B(\ZREGISTER[3]_net_1 )
        , .C(\un17_ZREGISTER.i4_mux ), .Y(\un17_ZREGISTER.N_25_i ));
    MX2 un1_ACCUMULATOR_0_STKPTR_48 (.A(\STKPTR[5]_net_1 ), .B(I_14_0), 
        .S(STKPTR_2_sqmuxa), .Y(N_619));
    AND3 un37_SMADDR_I_31 (.A(\un37_SMADDR.U1.DWACT_FINC_E[6] ), .B(
        \SMADDR[9]_net_1 ), .C(\SMADDR[10]_net_1 ), .Y(
        \un37_SMADDR.N_2 ));
    NOR2B un1_ACCUMULATOR_0_m13_s (.A(\un1_ACCUMULATOR_0.N_37 ), .B(
        \un1_ACCUMULATOR_0.N_36 ), .Y(m13_s));
    DFN1 \UROM.INSTR_SCMD_0[1]  (.D(\INSTRUCTION[4] ), .CLK(PCLK), .Q(
        \UROM.INSTR_SCMD_0[1]_net_1 ));
    MX2 \un1_ACCUMULATOR_0_SMADDR_21[11]  (.A(N_433), .B(N_420), .S(
        SMADDR_0_sqmuxa_1), .Y(\SMADDR_21[11] ));
    XOR2 un1_STKPTRP1_I_5 (.A(\STKPTR[0]_net_1 ), .B(\STKPTR[1]_net_1 )
        , .Y(I_5_0));
    NOR2 \un1_ACCUMULATOR_0_xhdl_41.xhdl_40_l3.un13_flagvalue_1  (.A(
        \ZREGISTER[6]_net_1 ), .B(\ZREGISTER[5]_net_1 ), .Y(
        \un1_ACCUMULATOR_0.xhdl_41.xhdl_40_l3.un13_flagvalue_1 ));
    MX2A \un1_ACCUMULATOR_0_RAMADDR[0]  (.A(\STKPTR[0]_net_1 ), .B(
        \UROM.INSTR_ADDR[0]_net_1 ), .S(RAMADDR_1_sqmuxa), .Y(
        \RAMADDR[0] ));
    AO1A \un1_ACCUMULATOR_0_ACCUM_NEXT_0_2[1]  (.A(
        \UROM.INSTR_CMD_0[1]_net_1 ), .B(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_2_a1_1[1] ), .C(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_0[1] ), .Y(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_2[1] ));
    XOR2 un1_STKPTRP1_I_14 (.A(\un1_STKPTRP1.N_4 ), .B(
        \STKPTR[5]_net_1 ), .Y(I_14_0));
    NOR2A \un1_ACCUMULATOR_0_SMADDR_21_1[7]  (.A(I_20), .B(DOISR_net_1)
        , .Y(N_429));
    NOR2A \un1_ACCUMULATOR_0_ACCUM_NEXT_a0_2[6]  (.A(
        \un1_ACCUMULATOR_0.ACCUM_m3_0_a2_1 ), .B(ACCUM_NEXT_sn_N_13), 
        .Y(\un1_ACCUMULATOR_0.ACCUM_N_7_mux ));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT_5[3]  (.A(N_503), .B(PRDATA_M[3])
        , .S(\UROM.INSTR_CMD_0[1]_net_1 ), .Y(N_543));
    DFN1E0P0 \SMADDR[4]  (.D(\SMADDR_21[4] ), .CLK(PCLK), .PRE(
        \genblk2.RSTSYNC2_1_net_1 ), .E(un1_ICYCLE_6), .Q(
        \SMADDR[4]_net_1 ));
    NOR2B un37_SMADDR_I_25 (.A(\SMADDR[8]_net_1 ), .B(
        \un37_SMADDR.U1.DWACT_FINC_E[4] ), .Y(\un37_SMADDR.N_4 ));
    MX2 \un1_ACCUMULATOR_0_RAMWDATA_0_i_m2[9]  (.A(I_26), .B(
        \SMADDR[9]_net_1 ), .S(DOISR_0_net_1), .Y(N_117));
    DFN1E1C0 STD_ACCUM_ZERO (.D(\to_logic_2.tmp_6[0] ), .CLK(PCLK), 
        .CLR(PRESETN), .E(to_logic10), .Q(STD_ACCUM_ZERO_net_1));
    NOR2B un37_SMADDR_I_11 (.A(\SMADDR[3]_net_1 ), .B(
        \un37_SMADDR.U1.DWACT_FINC_E[0] ), .Y(\un37_SMADDR.N_9 ));
    MX2 \un1_ACCUMULATOR_0_RAMADDR[1]  (.A(I_5_0), .B(
        \UROM.INSTR_ADDR[1]_net_1 ), .S(RAMADDR_1_sqmuxa), .Y(
        \RAMADDR[1] ));
    AX1 un1_ACCUMULATOR_0_ACCUM_m16_0 (.A(\xhdl_31.ALUOUT22_0 ), .B(
        \ACCUM_IN_0[3] ), .C(\ACCUMULATOR[3]_net_1 ), .Y(
        \un1_ACCUMULATOR_0.N_36 ));
    MX2 \un1_ACCUMULATOR_0_RAMADDR[3]  (.A(I_9_0), .B(
        \UROM.INSTR_ADDR[3]_net_1 ), .S(RAMADDR_1_sqmuxa), .Y(
        \RAMADDR[3] ));
    AX1 un1_ACCUMULATOR_0_m26_0 (.A(\xhdl_31.ALUOUT22_0 ), .B(
        \ACCUM_IN_0[2] ), .C(\ACCUMULATOR[2]_net_1 ), .Y(
        \un1_ACCUMULATOR_0.N_35 ));
    MX2 \un1_ACCUMULATOR_0_RAMADDR[2]  (.A(I_7_0), .B(
        \UROM.INSTR_ADDR[0]_net_1 ), .S(RAMADDR_1_sqmuxa), .Y(
        \RAMADDR[2] ));
    XNOR2 un1_ACCUMULATOR_0_m26 (.A(\un1_ACCUMULATOR_0.N_35 ), .B(
        \un1_ACCUMULATOR_0.i2_mux ), .Y(\un1_ACCUMULATOR_0.N_27_i ));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT[0]  (.A(N_559), .B(N_540), .S(
        ACCUM_NEXT_sn_N_13), .Y(\ACCUM_NEXT[0] ));
    OR3 \un1_ACCUMULATOR_0_xhdl_31.ALUOUT[7]  (.A(
        \un1_ACCUMULATOR_0.un1_ACCUMULATOR_v_0_0[6] ), .B(
        \ACCUMULATOR[7]_net_1 ), .C(\xhdl_31.ALUOUT_4_a0[7] ), .Y(
        \xhdl_31.ALUOUT_4[7] ));
    NOR2A \un1_ACCUMULATOR_0_ACCUM_NEXT_2_a1_1[3]  (.A(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_2_1_0[3] ), .B(
        \UROM.INSTR_SCMD[2]_net_1 ), .Y(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_2_a1_1[3] ));
    OR3 \un1_ACCUMULATOR_0_ACCUM_NEXT_0[0]  (.A(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_1[0] ), .B(
        \ACCUM_NEXT_2_a0[0] ), .C(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_2[0] ), .Y(N_510));
    MX2 \un1_ACCUMULATOR_0_RAMWDATA_i[2]  (.A(N_121), .B(PWDATA_M[2]), 
        .S(RAMWDATA_sn_N_2), .Y(N_55));
    NOR2A \un1_ACCUMULATOR_0_RAMWDATA_i[11]  (.A(N_115), .B(
        RAMWDATA_sn_N_2), .Y(\RAMWDATA_i[11] ));
    NOR2A \un1_ACCUMULATOR_0_ACCUM_NEXT_a5_0[4]  (.A(
        \UROM.INSTR_CMD[1]_net_1 ), .B(ACCUM_NEXT_sn_N_13), .Y(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_a5_0[4] ));
    XNOR3 un17_ZREGISTER_m18 (.A(PWDATA_M[6]), .B(\ZREGISTER[6]_net_1 )
        , .C(\un17_ZREGISTER.i10_mux ), .Y(\un17_ZREGISTER.N_19_i ));
    NOR2 \UROM.INSTR_DATA_RNICAK4[1]  (.A(\ACCUMULATOR[1]_net_1 ), .B(
        \UROM.INSTR_DATA[1]_net_1 ), .Y(d_N_3_mux_0));
    XOR2 un37_SMADDR_I_20 (.A(\un37_SMADDR.N_6 ), .B(\SMADDR[7]_net_1 )
        , .Y(I_20));
    MX2 un1_ACCUMULATOR_0_SHIFTMSBs_iv (.A(\ACCUMULATOR[7]_net_1 ), .B(
        \ACCUMULATOR[0]_net_1 ), .S(\UROM.INSTR_DATA[0]_net_1 ), .Y(
        N_352));
    DFN1C0 STBFLAG (.D(N_61), .CLK(PCLK), .CLR(PRESETN), .Q(
        STBFLAG_net_1));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT_6[3]  (.A(N_523), .B(N_513), .S(
        ACCUM_NEXT_sn_N_8), .Y(N_552));
    AND2 un1_STKPTRP1_I_15 (.A(\STKPTR[3]_net_1 ), .B(
        \STKPTR[4]_net_1 ), .Y(\un1_STKPTRP1.U1.DWACT_FINC_E[1] ));
    MIN3 un17_ZREGISTER_m4 (.A(\un17_ZREGISTER.m3_N_4_mux ), .B(
        \un17_ZREGISTER.N_2_i ), .C(\ZREGISTER[1]_net_1 ), .Y(
        \un17_ZREGISTER.i2_mux ));
    DFN1E1C0 \ACCUMULATOR[3]  (.D(\ACCUM_NEXT[3] ), .CLK(PCLK), .CLR(
        \genblk2.RSTSYNC2_0_net_1 ), .E(ACCUMULATOR4), .Q(
        \ACCUMULATOR[3]_net_1 ));
    XA1B un1_ACCUMULATOR_0_STBRAM_7_0_0_a2_0_0 (.A(
        \UROM.INSTR_SCMD[2]_net_1 ), .B(\UROM.INSTR_SCMD[1]_net_1 ), 
        .C(\UROM.INSTR_SCMD[0]_net_1 ), .Y(
        \un1_ACCUMULATOR_0.STBRAM_7_0_0_a2_0 ));
    MX2 \un1_ACCUMULATOR_0_RAMWDATA_i[4]  (.A(N_119), .B(PWDATA_M[4]), 
        .S(RAMWDATA_sn_N_2), .Y(\RAMWDATA_i[4] ));
    MAJ3X \un1_ACCUMULATOR_0_ACCUM_NEXT_1[6]  (.A(
        \ACCUMULATOR[6]_net_1 ), .B(\ACCUM_IN[6] ), .C(
        \UROM.INSTR_SCMD_0[1]_net_1 ), .Y(N_506));
    DFN1E0C0 DOJMP (.D(\ICYCLE_i[1] ), .CLK(PCLK), .CLR(
        \genblk2.RSTSYNC2_1_net_1 ), .E(un1_ICYCLE_11), .Q(DOJMP_net_1)
        );
    XOR2 un1_STKPTRP1_I_20 (.A(\un1_STKPTRP1.N_2 ), .B(
        \STKPTR[7]_net_1 ), .Y(I_20_0));
    NOR3A un17_ZREGISTER_m7_m4_e (.A(\UROM.INSTR_SCMD_0[1]_net_1 ), .B(
        \UROM.INSTR_SCMD[0]_net_1 ), .C(\UROM.INSTR_CMD[0]_net_1 ), .Y(
        PWDATA_M_sn_N_2));
    NOR3A \un1_ACCUMULATOR_0_ACCUM_NEXT_2_a1_1[1]  (.A(
        \UROM.INSTR_DATA[1]_net_1 ), .B(PADDR_M[12]), .C(
        \UROM.INSTR_SCMD_0[2]_net_1 ), .Y(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_2_a1_1[1] ));
    NOR3C \un1_ACCUMULATOR_0_xhdl_31.ALUOUT_4_a0[7]  (.A(
        \un1_ACCUMULATOR_0.ACCUM_IN_a0_1[5] ), .B(\RAMRDATA[7] ), .C(
        N_93), .Y(\xhdl_31.ALUOUT_4_a0[7] ));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT_4[7]  (.A(IO_IN[7]), .B(
        \ACCUM_IN[7] ), .S(ACCUM_NEXT_sn_N_7), .Y(N_537));
    NOR3 un1_ACCUMULATOR_0_STBFLAG_5_i (.A(N_161), .B(
        \UROM.INSTR_CMD[2]_net_1 ), .C(N_106), .Y(N_61));
    DFN1E0P0 \SMADDR[1]  (.D(\SMADDR_21[1] ), .CLK(PCLK), .PRE(
        \genblk2.RSTSYNC2_1_net_1 ), .E(un1_ICYCLE_6), .Q(
        \SMADDR[1]_net_1 ));
    MX2 \un1_ACCUMULATOR_0_SMADDR_21[0]  (.A(N_422), .B(N_409), .S(
        SMADDR_0_sqmuxa_1), .Y(\SMADDR_21[0] ));
    AND3 un1_STKPTRP1_I_16 (.A(\un1_STKPTRP1.U1.DWACT_FINC_E[0] ), .B(
        \un1_STKPTRP1.U1.DWACT_FINC_E[1] ), .C(\STKPTR[5]_net_1 ), .Y(
        \un1_STKPTRP1.N_3 ));
    DFN1 \UROM.INSTR_DATA[0]  (.D(\INSTRUCTION_i[14] ), .CLK(PCLK), .Q(
        \UROM.INSTR_DATA[0]_net_1 ));
    AO1A un1_ACCUMULATOR_0_un1_ICYCLE_11_0 (.A(\ICYCLE[1]_net_1 ), .B(
        N_109), .C(\un1_ACCUMULATOR_0.un1_ICYCLE_11_0_0 ), .Y(
        un1_ICYCLE_11));
    MX2 un1_ACCUMULATOR_0_SHIFTLSBs_iv (.A(\ACCUMULATOR[0]_net_1 ), .B(
        \un1_ACCUMULATOR_0.ACCUMULATOR_m_0_0[7] ), .S(
        \UROM.INSTR_DATA[0]_net_1 ), .Y(N_357));
    MX2 \un1_ACCUMULATOR_0_PADDR_M_1[1]  (.A(
        \UROM.INSTR_ADDR[1]_net_1 ), .B(\ZREGISTER[1]_net_1 ), .S(
        \UROM.INSTR_SCMD_0[2]_net_1 ), .Y(PADDR_M[1]));
    MX2 \un1_ACCUMULATOR_0_ACCUM_IN_0[0]  (.A(
        \UROM.INSTR_DATA[0]_net_1 ), .B(\RAMRDATA[0] ), .S(PADDR_M[12])
        , .Y(\ACCUM_IN_0[0] ));
    DFN1E0C0 ISR_ACCUM_ZERO (.D(\to_logic_2.tmp_6[0] ), .CLK(PCLK), 
        .CLR(\genblk2.RSTSYNC2_1_net_1 ), .E(N_70), .Q(
        ISR_ACCUM_ZERO_net_1));
    DFN1E1C0 \ZREGISTER[7]  (.D(\ZREGISTER_18[7] ), .CLK(PCLK), .CLR(
        \genblk2.RSTSYNC2_1_net_1 ), .E(N_125), .Q(
        \ZREGISTER[7]_net_1 ));
    VCC VCC_i (.Y(PREADY_S));
    DFN1E1C0 STD_ACCUM_NEG (.D(\ACCUM_NEXT[7] ), .CLK(PCLK), .CLR(
        PRESETN), .E(to_logic10), .Q(STD_ACCUM_NEG_net_1));
    AO1 un1_ACCUMULATOR_0_STBRAM_7_0_0_0 (.A(
        \un1_ACCUMULATOR_0.STKPTRlde_0_a2_0_0 ), .B(N_166), .C(N_135), 
        .Y(\un1_ACCUMULATOR_0.STBRAM_7_0_0_0 ));
    NOR2B \un1_ACCUMULATOR_0_ACCUM_NEXT_a1_3[6]  (.A(
        \un1_ACCUMULATOR_0.N_39 ), .B(
        \un1_ACCUMULATOR_0.ACCUM_N_7_mux ), .Y(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_a1_3[6] ));
    MX2A un17_ZREGISTER_USE_ACC_1 (.A(\UROM.INSTR_SCMD[0]_net_1 ), .B(
        PADDR_M[12]), .S(\UROM.INSTR_CMD[0]_net_1 ), .Y(USE_ACC_1));
    DFN1E0P0 \SMADDR[7]  (.D(\SMADDR_21[7] ), .CLK(PCLK), .PRE(
        \genblk2.RSTSYNC2_1_net_1 ), .E(un1_ICYCLE_6), .Q(
        \SMADDR[7]_net_1 ));
    AOI1B \un1_ACCUMULATOR_0_ACCUM_NEXT_0_3[6]  (.A(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_a0_3[6] ), .B(
        \un1_ACCUMULATOR_0.i10_mux ), .C(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_1[6] ), .Y(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_3[6] ));
    MX2 \un1_ACCUMULATOR_0_ACCUM_IN_0[3]  (.A(
        \UROM.INSTR_DATA[2]_net_1 ), .B(\RAMRDATA[3] ), .S(PADDR_M[12])
        , .Y(\ACCUM_IN_0[3] ));
    NOR2A \un1_ACCUMULATOR_0_ACCUM_NEXT_a6[4]  (.A(ACCUM_NEXT_sn_N_13), 
        .B(N_544), .Y(\ACCUM_NEXT_a6[4] ));
    OA1C \un1_ACCUMULATOR_0_ACCUM_NEXT_0_0[6]  (.A(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_a5_0[4] ), .B(N_536), .C(
        \ACCUM_NEXT_a2[6] ), .Y(\un1_ACCUMULATOR_0.ACCUM_NEXT_0_0[6] ));
    XNOR2 un1_ACCUMULATOR_0_STKPTR_n6 (.A(N_620), .B(N_621), .Y(N_845));
    MX2 \un1_ACCUMULATOR_0_SMADDR_21_0[4]  (.A(
        \UROM.INSTR_ADDR[4]_net_1 ), .B(\RAMRDATA[4] ), .S(
        \UROM.INSTR_CMD_0[1]_net_1 ), .Y(N_413));
    AND3 un37_SMADDR_I_16 (.A(\un37_SMADDR.U1.DWACT_FINC_E[0] ), .B(
        \un37_SMADDR.U1.DWACT_FINC_E[1] ), .C(\SMADDR[5]_net_1 ), .Y(
        \un37_SMADDR.N_7 ));
    MX2 \un1_ACCUMULATOR_0_SMADDR_21_0[0]  (.A(
        \UROM.INSTR_ADDR[0]_net_1 ), .B(\RAMRDATA[0] ), .S(
        \UROM.INSTR_CMD_0[1]_net_1 ), .Y(N_409));
    MX2B un1_ACCUMULATOR_0_ACCUM_NEXT_sn_m12 (.A(ACCUM_NEXT_sn_N_11), 
        .B(\UROM.INSTR_CMD[0]_net_1 ), .S(\UROM.INSTR_CMD[1]_net_1 ), 
        .Y(ACCUM_NEXT_sn_N_13));
    DFN1 \UROM.INSTR_ADDR[1]  (.D(\UROM.UROM.doins_2[1] ), .CLK(PCLK), 
        .Q(\UROM.INSTR_ADDR[1]_net_1 ));
    NOR2B un1_ACCUMULATOR_0_m13_s_0 (.A(m13_s), .B(
        \un1_ACCUMULATOR_0.N_35 ), .Y(m13_s_0));
    NOR2A un17_ZREGISTER_m1tt_m3_0_a3_0 (.A(\UROM.INSTR_SCMD[1]_net_1 )
        , .B(\UROM.INSTR_CMD[0]_net_1 ), .Y(
        \un17_ZREGISTER.m1tt_m3_0_a3_0 ));
    DFN1E0P0 \SMADDR[2]  (.D(\SMADDR_21[2] ), .CLK(PCLK), .PRE(
        \genblk2.RSTSYNC2_1_net_1 ), .E(un1_ICYCLE_6), .Q(
        \SMADDR[2]_net_1 ));
    AO1A \un1_ACCUMULATOR_0_ICYCLE_ns_i_i[0]  (.A(\ICYCLE[1]_net_1 ), 
        .B(N_108), .C(N_127), .Y(\ICYCLE_ns_i_i[0] ));
    AX1B un1_ACCUMULATOR_0_STKPTR_n7 (.A(STKPTR_2_sqmuxa), .B(
        \un1_ACCUMULATOR_0.STKPTR_51_0 ), .C(N_623), .Y(N_846));
    DFN1 \UROM.INSTR_ADDR[0]  (.D(\INSTRUCTION[10] ), .CLK(PCLK), .Q(
        \UROM.INSTR_ADDR[0]_net_1 ));
    NOR2B un37_SMADDR_I_6 (.A(\SMADDR[1]_net_1 ), .B(\SMADDR[0]_net_1 )
        , .Y(\un37_SMADDR.N_11 ));
    AOI1 un1_ACCUMULATOR_0_ACCUM_NEXT_sn_m9 (.A(
        \UROM.INSTR_SCMD_0[0]_net_1 ), .B(\UROM.INSTR_SCMD_0[1]_net_1 )
        , .C(\UROM.INSTR_CMD_0[1]_net_1 ), .Y(ACCUM_NEXT_sn_N_15_mux));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT_6[0]  (.A(N_520), .B(N_510), .S(
        ACCUM_NEXT_sn_N_8), .Y(N_549));
    NOR3C \un1_ACCUMULATOR_0_ACCUM_NEXT_2_a0[3]  (.A(\RAMRDATA[3] ), 
        .B(\UROM.INSTR_CMD_0[1]_net_1 ), .C(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_2_a0_1[0] ), .Y(
        \ACCUM_NEXT_2_a0[3] ));
    MX2 \un1_ACCUMULATOR_0_RAMWDATA[1]  (.A(N_450), .B(PWDATA_M[1]), 
        .S(RAMWDATA_sn_N_2), .Y(\RAMWDATA[1] ));
    NOR3A \un1_ACCUMULATOR_0_ACCUM_NEXT_2_a0_1[0]  (.A(
        \UROM.INSTR_CMD[0]_net_1 ), .B(\UROM.INSTR_CMD[2]_net_1 ), .C(
        \UROM.INSTR_SCMD[2]_net_1 ), .Y(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_2_a0_1[0] ));
    MX2 \un1_ACCUMULATOR_0_RAMWDATA_0_i_m2[11]  (.A(I_32), .B(
        \SMADDR[11]_net_1 ), .S(DOISR_0_net_1), .Y(N_115));
    DFN1E1P0 \STKPTR[3]  (.D(N_842), .CLK(PCLK), .PRE(PRESETN), .E(
        STKPTRe), .Q(\STKPTR[3]_net_1 ));
    DFN1E1C0 \IO_OUT[7]  (.D(PWDATA_M[7]), .CLK(PCLK), .CLR(
        \genblk2.RSTSYNC2_0_net_1 ), .E(STBRAM_10_sqmuxa), .Q(
        IO_OUT[7]));
    OR3 \UROM.INSTR_CMD_RNIDL217[1]  (.A(d_N_4), .B(d_m7_0_0), .C(
        \UROM.INSTR_SCMD_RNI8FK52[1]_net_1 ), .Y(
        \UROM.INSTR_CMD_RNIDL217[1]_net_1 ));
    MX2 \un1_ACCUMULATOR_0_SMADDR_21[2]  (.A(N_424), .B(N_411), .S(
        SMADDR_0_sqmuxa_1), .Y(\SMADDR_21[2] ));
    DFN1C0 STBRAM (.D(STBRAM_7), .CLK(PCLK), .CLR(PRESETN), .Q(
        STBRAM_net_1));
    OA1A un1_ACCUMULATOR_0_ACCUM_m3_0_a2_2 (.A(N_93), .B(N_90), .C(
        \un1_ACCUMULATOR_0.ACCUM_m3_0_a2_2_1 ), .Y(
        \un1_ACCUMULATOR_0.ACCUM_N_7_mux_0 ));
    DFN1C0 \genblk2.RSTSYNC1  (.D(PREADY_S), .CLK(PCLK), .CLR(
        NSYSRESET), .Q(\genblk2.RSTSYNC1_net_1 ));
    MAJ3X \un1_ACCUMULATOR_0_ACCUM_NEXT_1[2]  (.A(
        \ACCUMULATOR[2]_net_1 ), .B(\ACCUM_IN[2] ), .C(
        \UROM.INSTR_SCMD_0[1]_net_1 ), .Y(N_502));
    NOR2A \un17_ZREGISTER_PWDATA_M[1]  (.A(N_392), .B(PWDATA_M_sn_N_2), 
        .Y(PWDATA_M[1]));
    AO18 un17_ZREGISTER_m7_0 (.A(\ZREGISTER[2]_net_1 ), .B(
        \un17_ZREGISTER.i2_mux ), .C(\un17_ZREGISTER.m7_N_7_mux ), .Y(
        \un17_ZREGISTER.i4_mux ));
    AND3 un37_SMADDR_I_22 (.A(\un37_SMADDR.U1.DWACT_FINC_E[0] ), .B(
        \un37_SMADDR.U1.DWACT_FINC_E[2] ), .C(
        \un37_SMADDR.U1.DWACT_FINC_E[3] ), .Y(\un37_SMADDR.N_5 ));
    MX2A un1_ACCUMULATOR_0_m7 (.A(\ACCUMULATOR[2]_net_1 ), .B(
        \un1_ACCUMULATOR_0.i2_mux ), .S(\un1_ACCUMULATOR_0.N_35 ), .Y(
        \un1_ACCUMULATOR_0.i4_mux ));
    NOR2B \un1_ACCUMULATOR_0_ACCUM_IN[6]  (.A(\RAMRDATA[6] ), .B(
        \un7_MUXIR[0] ), .Y(\ACCUM_IN[6] ));
    MAJ3X \un1_ACCUMULATOR_0_ACCUM_NEXT_1[3]  (.A(
        \ACCUMULATOR[3]_net_1 ), .B(\ACCUM_IN[3] ), .C(
        \UROM.INSTR_SCMD_0[1]_net_1 ), .Y(N_503));
    DFN1E1P0 \STKPTR[1]  (.D(N_840), .CLK(PCLK), .PRE(PRESETN), .E(
        STKPTRe), .Q(\STKPTR[1]_net_1 ));
    OA1A un17_ZREGISTER_m1_m1_0_a2_0 (.A(
        \un17_ZREGISTER.m1tt_m3_0_a3_0 ), .B(
        \UROM.INSTR_SCMD[0]_net_1 ), .C(\ZREGISTER[0]_net_1 ), .Y(
        \un17_ZREGISTER.m1_m1_0_a2_0 ));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT_7[2]  (.A(N_532), .B(N_551), .S(
        ACCUM_NEXT_sn_N_15_mux), .Y(N_561));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT_6[5]  (.A(\ACCUM_NEXT_6_d[5] ), 
        .B(\un1_ACCUMULATOR_0.N_21_i ), .S(\ACCUM_NEXT_6_s[5] ), .Y(
        N_554));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT[3]  (.A(N_562), .B(N_543), .S(
        ACCUM_NEXT_sn_N_13), .Y(\ACCUM_NEXT[3] ));
    OR3 \un1_ACCUMULATOR_0_ACCUM_NEXT_0[1]  (.A(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_2[1] ), .B(
        \ACCUM_NEXT_2_a0[1] ), .C(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_3[1] ), .Y(N_511));
    NOR3C un1_ACCUMULATOR_0_un1_DOISR_0_sqmuxa_0_a2 (.A(N_162), .B(
        N_161), .C(\UROM.INSTR_SCMD[1]_net_1 ), .Y(N_148));
    MX2 \un1_ACCUMULATOR_0_PADDR_M_1[3]  (.A(
        \UROM.INSTR_ADDR[3]_net_1 ), .B(\ZREGISTER[3]_net_1 ), .S(
        \UROM.INSTR_SCMD_0[2]_net_1 ), .Y(PADDR_M[3]));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT_0_0[1]  (.A(
        \ACCUMULATOR[1]_net_1 ), .B(\ACCUMULATOR[2]_net_1 ), .S(
        \UROM.INSTR_SCMD_0[2]_net_1 ), .Y(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_0[1] ));
    XNOR2 un17_ZREGISTER_m26_0 (.A(\ZREGISTER[2]_net_1 ), .B(
        \un17_ZREGISTER.i2_mux ), .Y(\un17_ZREGISTER.m26_0 ));
    NOR3A \un1_ACCUMULATOR_0_to_logic_2.tmp_6_4[0]  (.A(
        \un1_ACCUMULATOR_0.to_logic_2.tmp_6_0[0] ), .B(\ACCUM_NEXT[5] )
        , .C(\ACCUM_NEXT[6] ), .Y(
        \un1_ACCUMULATOR_0.to_logic_2.tmp_6_4[0] ));
    DFN1E1C0 \IO_OUT[5]  (.D(PWDATA_M[5]), .CLK(PCLK), .CLR(
        \genblk2.RSTSYNC2_0_net_1 ), .E(STBRAM_10_sqmuxa), .Q(
        IO_OUT[5]));
    MX2C un17_ZREGISTER_m7_m2 (.A(\UROM.INSTR_DATA[2]_net_1 ), .B(
        \ACCUMULATOR[2]_net_1 ), .S(USE_ACC_1), .Y(m7_m2));
    MX2 \un1_ACCUMULATOR_0_SMADDR_21[9]  (.A(N_431), .B(N_418), .S(
        SMADDR_0_sqmuxa_1), .Y(\SMADDR_21[9] ));
    DFN1E1C0 \ACCUMULATOR[5]  (.D(\ACCUM_NEXT[5] ), .CLK(PCLK), .CLR(
        \genblk2.RSTSYNC2_0_net_1 ), .E(ACCUMULATOR4), .Q(
        \ACCUMULATOR[5]_net_1 ));
    AND3 un1_STKPTRP1_I_8 (.A(\STKPTR[0]_net_1 ), .B(\STKPTR[1]_net_1 )
        , .C(\STKPTR[2]_net_1 ), .Y(\un1_STKPTRP1.N_6 ));
    AOI1B un1_ACCUMULATOR_0_ACCUM_m15_0_a6_0 (.A(\ACCUM_IN_0[0] ), .B(
        \ACCUMULATOR[0]_net_1 ), .C(
        \un1_ACCUMULATOR_0.ACCUM_m15_0_a6_0_1 ), .Y(ACCUM_m15_0_a6_0));
    DFN1 \UROM.INSTR_DATA[2]  (.D(\INSTRUCTION[28] ), .CLK(PCLK), .Q(
        \UROM.INSTR_DATA[2]_net_1 ));
    NOR3A un1_ACCUMULATOR_0_un1_ICYCLE_4_i_a2 (.A(N_165), .B(N_90), .C(
        N_94), .Y(N_125));
    MAJ3X \un1_ACCUMULATOR_0_ACCUM_NEXT_1[4]  (.A(
        \ACCUMULATOR[4]_net_1 ), .B(\ACCUM_IN[4] ), .C(
        \UROM.INSTR_SCMD_0[1]_net_1 ), .Y(N_504));
    DFN1E1C0 \IO_OUT[3]  (.D(PWDATA_M[3]), .CLK(PCLK), .CLR(
        \genblk2.RSTSYNC2_0_net_1 ), .E(STBRAM_10_sqmuxa), .Q(
        IO_OUT[3]));
    OR2A \un1_ACCUMULATOR_0_SMADDR_21_1[0]  (.A(\SMADDR[0]_net_1 ), .B(
        DOISR_net_1), .Y(N_422));
    MX2 \un17_ZREGISTER_ZREGISTER_18[6]  (.A(PWDATA_M[6]), .B(
        \un17_ZREGISTER.N_19_i ), .S(\UROM.INSTR_SCMD_0[0]_net_1 ), .Y(
        \ZREGISTER_18[6] ));
    OA1A un17_ZREGISTER_m3_m1_0_a2 (.A(\un17_ZREGISTER.m1tt_m3_0_a3_0 )
        , .B(\UROM.INSTR_SCMD_0[0]_net_1 ), .C(N_392), .Y(
        \un17_ZREGISTER.m3_N_4_mux ));
    DFN1E1C0 \ZREGISTER[1]  (.D(\ZREGISTER_18[1] ), .CLK(PCLK), .CLR(
        \genblk2.RSTSYNC2_1_net_1 ), .E(N_125), .Q(
        \ZREGISTER[1]_net_1 ));
    XOR2 un1_STKPTRP1_I_12 (.A(\un1_STKPTRP1.N_5 ), .B(
        \STKPTR[4]_net_1 ), .Y(I_12_0));
    NOR2A un1_ACCUMULATOR_0_ACCUM_NEXT_sn_m10 (.A(
        \UROM.INSTR_SCMD[0]_net_1 ), .B(\UROM.INSTR_SCMD[2]_net_1 ), 
        .Y(ACCUM_NEXT_sn_N_11));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT_3[0]  (.A(\un1_ACCUMULATOR0[0] ), 
        .B(SHIFTLSB), .S(\UROM.INSTR_SCMD_0[0]_net_1 ), .Y(N_520));
    DFN1E0P0 \SMADDR[6]  (.D(\SMADDR_21[6] ), .CLK(PCLK), .PRE(
        \genblk2.RSTSYNC2_1_net_1 ), .E(un1_ICYCLE_6), .Q(
        \SMADDR[6]_net_1 ));
    AND3 un1_STKPTRP1_I_13 (.A(\un1_STKPTRP1.U1.DWACT_FINC_E[0] ), .B(
        \STKPTR[3]_net_1 ), .C(\STKPTR[4]_net_1 ), .Y(
        \un1_STKPTRP1.N_4 ));
    NOR2A \un1_ACCUMULATOR_0_SMADDR_21_1[11]  (.A(I_32), .B(
        DOISR_net_1), .Y(N_433));
    NOR2 \un1_ACCUMULATOR_0_xhdl_41.xhdl_40_l3.un13_flagvalue_2  (.A(
        \ZREGISTER[3]_net_1 ), .B(\ZREGISTER[2]_net_1 ), .Y(
        \un1_ACCUMULATOR_0.xhdl_41.xhdl_40_l3.un13_flagvalue_2 ));
    XNOR3 un1_ACCUMULATOR_0_m20 (.A(\ACCUMULATOR[5]_net_1 ), .B(
        \un1_ACCUM_IN_0[5] ), .C(\un1_ACCUMULATOR_0.i8_mux ), .Y(
        \un1_ACCUMULATOR_0.N_21_i ));
    NOR2B \un1_ACCUMULATOR_0_un1_ACCUMULATOR_v_0_0[5]  (.A(PADDR_M[12])
        , .B(\RAMRDATA[6] ), .Y(
        \un1_ACCUMULATOR_0.un1_ACCUMULATOR_v_0_0[5] ));
    NOR3 un1_ACCUMULATOR_0_un1_m2_0_a2 (.A(\UROM.INSTR_SCMD[0]_net_1 ), 
        .B(\UROM.INSTR_SCMD_0[1]_net_1 ), .C(
        \UROM.INSTR_SCMD_0[2]_net_1 ), .Y(\xhdl_31.ALUOUT22_0 ));
    NOR2 \un1_ACCUMULATOR_0_to_logic_2.tmp_6_0[0]  (.A(\ACCUM_NEXT[1] )
        , .B(\ACCUM_NEXT[0] ), .Y(
        \un1_ACCUMULATOR_0.to_logic_2.tmp_6_0[0] ));
    OR2 un1_ACCUMULATOR_0_STKPTR_c4 (.A(STKPTR_c3), .B(
        \STKPTR[4]_net_1 ), .Y(STKPTR_c4));
    MX2 \un1_ACCUMULATOR_0_RAMWDATA_0[1]  (.A(I_5), .B(
        \SMADDR[1]_net_1 ), .S(DOISR_0_net_1), .Y(N_450));
    DFN1E1C0 \ZREGISTER[0]  (.D(N_114), .CLK(PCLK), .CLR(
        \genblk2.RSTSYNC2_1_net_1 ), .E(N_125), .Q(
        \ZREGISTER[0]_net_1 ));
    DFN1 \UROM.INSTR_MUXC  (.D(\INSTRUCTION[6] ), .CLK(PCLK), .Q(
        PADDR_M[12]));
    OA1 un1_ACCUMULATOR_0_m1 (.A(\xhdl_31.ALUOUT22_0 ), .B(
        \ACCUM_IN_0[0] ), .C(\ACCUMULATOR[0]_net_1 ), .Y(
        \un1_ACCUMULATOR_0.N_2_i ));
    AO1 un1_ACCUMULATOR_0_ACCUM_m15_0_1 (.A(
        \un1_ACCUMULATOR_0.ACCUM_m15_0_a6_1 ), .B(ACCUM_m15_0_o6_3), 
        .C(ACCUM_m15_0_a6_0), .Y(\un1_ACCUMULATOR_0.ACCUM_m15_0_1 ));
    NOR3 \ACCUMULATOR_RNIADDC[6]  (.A(\UROM.INSTR_SCMD_0[1]_net_1 ), 
        .B(\ACCUMULATOR[6]_net_1 ), .C(\UROM.INSTR_CMD[1]_net_1 ), .Y(
        d_N_5));
    NOR3A un1_ACCUMULATOR_0_STKPTRlde_0_a2_1 (.A(
        \un1_ACCUMULATOR_0.STKPTRlde_0_a2_1_0 ), .B(N_90), .C(N_94), 
        .Y(N_133));
    MX2 \un1_ACCUMULATOR_0_SMADDR_21[6]  (.A(N_428), .B(N_415), .S(
        SMADDR_0_sqmuxa_1), .Y(\SMADDR_21[6] ));
    DFN1E1C0 \ZREGISTER[5]  (.D(\ZREGISTER_18[5] ), .CLK(PCLK), .CLR(
        \genblk2.RSTSYNC2_1_net_1 ), .E(N_125), .Q(
        \ZREGISTER[5]_net_1 ));
    NOR3 un1_ACCUMULATOR_0_ACCUM_m3_0_a2_1 (.A(
        \UROM.INSTR_SCMD_0[0]_net_1 ), .B(\UROM.INSTR_SCMD_0[1]_net_1 )
        , .C(\UROM.INSTR_CMD_0[1]_net_1 ), .Y(
        \un1_ACCUMULATOR_0.ACCUM_m3_0_a2_1 ));
    DFN1 \UROM.INSTR_ADDR[3]  (.D(un1_ADDRESS_13_1_i_0), .CLK(PCLK), 
        .Q(\UROM.INSTR_ADDR[3]_net_1 ));
    DFN1E1C0 DOISR (.D(N_149), .CLK(PCLK), .CLR(
        \genblk2.RSTSYNC2_1_net_1 ), .E(N_66), .Q(DOISR_net_1));
    AND3 un37_SMADDR_I_29 (.A(\SMADDR[6]_net_1 ), .B(\SMADDR[7]_net_1 )
        , .C(\SMADDR[8]_net_1 ), .Y(\un37_SMADDR.U1.DWACT_FINC_E[5] ));
    DFN1E1C0 DOISR_0 (.D(N_149), .CLK(PCLK), .CLR(
        \genblk2.RSTSYNC2_0_net_1 ), .E(N_66), .Q(DOISR_0_net_1));
    MX2 un1_ACCUMULATOR_0_STKPTR_46 (.A(\STKPTR[4]_net_1 ), .B(I_12_0), 
        .S(STKPTR_2_sqmuxa), .Y(N_617));
    AO1A un1_ACCUMULATOR_0_ACCUM_m15_0_o6_3 (.A(\ACCUM_IN_0[0] ), .B(
        \un1_ACCUMULATOR_0.ACCUM_N_4 ), .C(
        \un1_ACCUMULATOR_0.ACCUM_N_6 ), .Y(ACCUM_m15_0_o6_3));
    OR3B \un1_ACCUMULATOR_0_to_logic_4.un4_READRAM_0_a3_0_o2  (.A(
        \UROM.INSTR_CMD[0]_net_1 ), .B(\UROM.INSTR_CMD_0[1]_net_1 ), 
        .C(\UROM.INSTR_CMD[2]_net_1 ), .Y(N_90));
    NOR2A \un1_ACCUMULATOR_0_ACCUM_NEXT_a2_1[4]  (.A(
        \UROM.INSTR_SCMD[0]_net_1 ), .B(\UROM.INSTR_CMD[1]_net_1 ), .Y(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_a2_1[4] ));
    DFN1E1C0 \ZREGISTER[3]  (.D(N_113), .CLK(PCLK), .CLR(
        \genblk2.RSTSYNC2_1_net_1 ), .E(N_125), .Q(
        \ZREGISTER[3]_net_1 ));
    NOR3B \un1_ACCUMULATOR_0_PWDATA_M[5]  (.A(USE_ACC_1), .B(
        \ACCUMULATOR[5]_net_1 ), .C(PWDATA_M_sn_N_2), .Y(PWDATA_M[5]));
    XOR2 un17_ZREGISTER_m12 (.A(\ZREGISTER[4]_net_1 ), .B(PWDATA_M[4]), 
        .Y(\un17_ZREGISTER.N_37 ));
    NOR2A \un1_ACCUMULATOR_0_ACCUM_NEXT_a6[6]  (.A(ACCUM_NEXT_sn_N_13), 
        .B(N_546), .Y(\ACCUM_NEXT_a6[6] ));
    NOR3C \un1_ACCUMULATOR_0_xhdl_41.xhdl_40_l3.un13_flagvalue  (.A(
        \un1_ACCUMULATOR_0.xhdl_41.xhdl_40_l3.un13_flagvalue_2 ), .B(
        \un1_ACCUMULATOR_0.xhdl_41.xhdl_40_l3.un13_flagvalue_1 ), .C(
        \un1_ACCUMULATOR_0.xhdl_41.xhdl_40_l3.un13_flagvalue_6 ), .Y(
        \xhdl_41.xhdl_40_l3.un13_flagvalue ));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT_3[1]  (.A(
        \un1_ACCUMULATOR_0.N_29_i ), .B(\ACCUMULATOR[0]_net_1 ), .S(
        \UROM.INSTR_SCMD_0[0]_net_1 ), .Y(N_521));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT_3[2]  (.A(
        \un1_ACCUMULATOR_0.N_27_i ), .B(\ACCUMULATOR[1]_net_1 ), .S(
        \UROM.INSTR_SCMD_0[0]_net_1 ), .Y(N_522));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT_6[1]  (.A(N_521), .B(N_511), .S(
        ACCUM_NEXT_sn_N_8), .Y(N_550));
    MX2 \un17_ZREGISTER_RAMWDATA_0[6]  (.A(I_17), .B(\SMADDR[6]_net_1 )
        , .S(DOISR_0_net_1), .Y(N_455));
    MX2 \un17_ZREGISTER_PWDATA_M_0[1]  (.A(\UROM.INSTR_DATA[1]_net_1 ), 
        .B(\ACCUMULATOR[1]_net_1 ), .S(USE_ACC_1), .Y(N_392));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT_2[6]  (.A(\xhdl_31.ALUOUT_4[6] ), 
        .B(\ACCUMULATOR[7]_net_1 ), .S(\UROM.INSTR_SCMD_0[2]_net_1 ), 
        .Y(N_516));
    Minimal_SoC_COREABC_0_RAMBLOCKS_0s_16s_15s \URAM.UR  (
        .ACCUMULATOR_0(\ACCUMULATOR[2]_net_1 ), .RAMRDATA({
        \RAMRDATA[11] , \RAMRDATA[10] , \RAMRDATA[9] , \RAMRDATA[8] , 
        \RAMRDATA[7] , \RAMRDATA[6] , \RAMRDATA[5] , \RAMRDATA[4] , 
        \RAMRDATA[3] , \RAMRDATA[2] , \RAMRDATA[1] , \RAMRDATA[0] }), 
        .RAMADDR({\RAMADDR[7] , \RAMADDR[6] , \RAMADDR[5] , 
        \RAMADDR[4] , \RAMADDR[3] , \RAMADDR[2] , \RAMADDR[1] , 
        \RAMADDR[0] }), .RAMWDATA_0(\RAMWDATA[1] ), .RAMWDATA_4(
        \RAMWDATA[5] ), .RAMWDATA_5(\RAMWDATA[6] ), .RAMWDATA_6(
        \RAMWDATA[7] ), .RAMWDATA_i_0(\RAMWDATA_i[4] ), .RAMWDATA_i_4(
        \RAMWDATA_i[8] ), .RAMWDATA_i_5(\RAMWDATA_i[9] ), 
        .RAMWDATA_i_6(\RAMWDATA_i[10] ), .RAMWDATA_i_7(
        \RAMWDATA_i[11] ), .d_N_5_mux(d_N_5_mux), .STBRAM(STBRAM_net_1)
        , .PCLK(PCLK), .RSTSYNC2_0(\genblk2.RSTSYNC2_0_net_1 ), .N_57(
        N_57), .N_55(N_55), .N_53(N_53));
    DFN1P0 \ICYCLE[1]  (.D(N_107_i), .CLK(PCLK), .PRE(PRESETN), .Q(
        \ICYCLE[1]_net_1 ));
    DFN1 \UROM.INSTR_SCMD[2]  (.D(\INSTRUCTION[5] ), .CLK(PCLK), .Q(
        \UROM.INSTR_SCMD[2]_net_1 ));
    OR3A un1_ACCUMULATOR_0_STBACCUM_4_iv_i_o2_0 (.A(\ICYCLE[0]_net_1 ), 
        .B(DOISR_0_net_1), .C(\ICYCLE[1]_net_1 ), .Y(N_94));
    MX2B un1_ACCUMULATOR_0_m13_d_0 (.A(m13_d_1), .B(
        \ACCUMULATOR[2]_net_1 ), .S(m13_s), .Y(m13_d_0));
    OR2 un1_ACCUMULATOR_0_STKPTR_c1 (.A(\STKPTR[1]_net_1 ), .B(
        \STKPTR[0]_net_1 ), .Y(STKPTR_c1));
    NOR2A un1_ACCUMULATOR_0_SMADDR_0_sqmuxa_2 (.A(
        \UROM.INSTR_SCMD[1]_net_1 ), .B(\UROM.INSTR_CMD[1]_net_1 ), .Y(
        SMADDR_0_sqmuxa_2));
    DFN1 \UROM.INSTR_DATA[1]  (.D(\INSTRUCTION[27] ), .CLK(PCLK), .Q(
        \UROM.INSTR_DATA[1]_net_1 ));
    NOR3 un1_ACCUMULATOR_0_STBACCUM_4_iv_i (.A(N_96_i), .B(
        \UROM.INSTR_CMD[2]_net_1 ), .C(N_106), .Y(N_59));
    NOR2B \un1_ACCUMULATOR_0_SMADDR_21_0[9]  (.A(\RAMRDATA[9] ), .B(
        \UROM.INSTR_CMD[1]_net_1 ), .Y(N_418));
    NOR2A \un1_ACCUMULATOR_0_SMADDR_21_1[9]  (.A(I_26), .B(DOISR_net_1)
        , .Y(N_431));
    DFN1 \UROM.INSTR_ADDR[4]  (.D(\INSTRUCTION[14] ), .CLK(PCLK), .Q(
        \UROM.INSTR_ADDR[4]_net_1 ));
    MX2 \un17_ZREGISTER_ZREGISTER_18[4]  (.A(PWDATA_M[4]), .B(
        \un17_ZREGISTER.N_23_i ), .S(\UROM.INSTR_SCMD_0[0]_net_1 ), .Y(
        \ZREGISTER_18[4] ));
    NOR2A \un1_ACCUMULATOR_0_ACCUM_NEXT_a3[4]  (.A(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_a3_2[4] ), .B(N_514), .Y(
        \ACCUM_NEXT_a3[4] ));
    AX1B un1_ACCUMULATOR_0_STKPTR_n2 (.A(STKPTR_2_sqmuxa), .B(
        STKPTR_c1), .C(N_613), .Y(N_841));
    OA1C \un1_ACCUMULATOR_0_ACCUM_NEXT_0_2[4]  (.A(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_a1_3[4] ), .B(
        \un1_ACCUMULATOR_0.i6_mux ), .C(\ACCUM_NEXT_a3[4] ), .Y(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_2[4] ));
    NOR3B un1_ACCUMULATOR_0_ACCUM_m15_0_a6_1_1 (.A(
        \un1_ACCUMULATOR_0.ACCUM_N_4 ), .B(
        \un1_ACCUMULATOR_0.ACCUM_N_7 ), .C(\ACCUMULATOR[2]_net_1 ), .Y(
        \un1_ACCUMULATOR_0.ACCUM_m15_0_a6_1_1 ));
    MX2 \un1_ACCUMULATOR_0_ACCUM_IN[3]  (.A(\UROM.INSTR_DATA[2]_net_1 )
        , .B(\RAMRDATA[3] ), .S(\un7_MUXIR[0] ), .Y(\ACCUM_IN[3] ));
    AND3 un37_SMADDR_I_24 (.A(\un37_SMADDR.U1.DWACT_FINC_E[0] ), .B(
        \un37_SMADDR.U1.DWACT_FINC_E[2] ), .C(
        \un37_SMADDR.U1.DWACT_FINC_E[3] ), .Y(
        \un37_SMADDR.U1.DWACT_FINC_E[4] ));
    NOR2 un1_ACCUMULATOR_0_un1_ICYCLE_4_i_a2_1 (.A(
        \UROM.INSTR_SCMD[1]_net_1 ), .B(\UROM.INSTR_SCMD[2]_net_1 ), 
        .Y(N_165));
    AO18 un17_ZREGISTER_m32 (.A(\ZREGISTER[6]_net_1 ), .B(
        \un17_ZREGISTER.i10_mux ), .C(PWDATA_M[6]), .Y(
        \un17_ZREGISTER.i12_mux ));
    XOR2 un1_STKPTRP1_I_17 (.A(\un1_STKPTRP1.N_3 ), .B(
        \STKPTR[6]_net_1 ), .Y(I_17_0));
    AND3 un37_SMADDR_I_18 (.A(\SMADDR[3]_net_1 ), .B(\SMADDR[4]_net_1 )
        , .C(\SMADDR[5]_net_1 ), .Y(\un37_SMADDR.U1.DWACT_FINC_E[2] ));
    OR2B \un1_ACCUMULATOR_0_un7_MUXIR_0_o2[0]  (.A(
        \UROM.INSTR_SCMD[1]_net_1 ), .B(\UROM.INSTR_SCMD[2]_net_1 ), 
        .Y(N_93));
    NOR2B \un1_ACCUMULATOR_0_SMADDR_21_0[6]  (.A(\RAMRDATA[6] ), .B(
        \UROM.INSTR_CMD[1]_net_1 ), .Y(N_415));
    NOR2A un1_ACCUMULATOR_0_ACCUM_m15_0_a6_3_0 (.A(
        \ACCUMULATOR[1]_net_1 ), .B(\ACCUMULATOR[2]_net_1 ), .Y(
        \un1_ACCUMULATOR_0.ACCUM_m15_0_a6_3_0 ));
    AX1D un1_ACCUMULATOR_0_m29 (.A(\xhdl_31.ALUOUT22_0 ), .B(
        \ACCUM_IN_0[0] ), .C(\ACCUMULATOR[0]_net_1 ), .Y(
        \un1_ACCUMULATOR0[0] ));
    DFN1E0P0 \SMADDR[10]  (.D(\SMADDR_21[10] ), .CLK(PCLK), .PRE(
        PRESETN), .E(un1_ICYCLE_6), .Q(\SMADDR[10]_net_1 ));
    NOR3A \un1_ACCUMULATOR_0_xhdl_41.xhdl_40_l3.un13_flagvalue_6  (.A(
        \un1_ACCUMULATOR_0.xhdl_41.xhdl_40_l3.un13_flagvalue_4 ), .B(
        \ZREGISTER[4]_net_1 ), .C(\ZREGISTER[1]_net_1 ), .Y(
        \un1_ACCUMULATOR_0.xhdl_41.xhdl_40_l3.un13_flagvalue_6 ));
    DFN1 \UROM.INSTR_SCMD[1]  (.D(\INSTRUCTION[4] ), .CLK(PCLK), .Q(
        \UROM.INSTR_SCMD[1]_net_1 ));
    NOR3A \un1_ACCUMULATOR_0_ACCUM_NEXT_a0_3[4]  (.A(
        \un1_ACCUMULATOR_0.ACCUM_m3_0_a2_1 ), .B(
        \un1_ACCUMULATOR_0.N_37 ), .C(ACCUM_NEXT_sn_N_13), .Y(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_a0_3[4] ));
    NOR3C \un1_ACCUMULATOR_0_ACCUM_NEXT_2_a0[0]  (.A(\RAMRDATA[0] ), 
        .B(\UROM.INSTR_CMD_0[1]_net_1 ), .C(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_2_a0_1[0] ), .Y(
        \ACCUM_NEXT_2_a0[0] ));
    XOR2 un37_SMADDR_I_5 (.A(\SMADDR[0]_net_1 ), .B(\SMADDR[1]_net_1 ), 
        .Y(I_5));
    NOR2A \un1_ACCUMULATOR_0_un1_ACCUMULATOR_v_0[6]  (.A(
        \un1_ACCUMULATOR_0.un1_ACCUMULATOR_v_0_0[6] ), .B(N_165), .Y(
        \un1_ACCUM_IN_0[7] ));
    MX2 \un1_ACCUMULATOR_0_ACCUM_IN[2]  (.A(\UROM.INSTR_DATA[2]_net_1 )
        , .B(\RAMRDATA[2] ), .S(\un7_MUXIR[0] ), .Y(\ACCUM_IN[2] ));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT_6_d[5]  (.A(
        \ACCUMULATOR[4]_net_1 ), .B(N_515), .S(ACCUM_NEXT_sn_N_8), .Y(
        \ACCUM_NEXT_6_d[5] ));
    XOR2 un37_SMADDR_I_23 (.A(\un37_SMADDR.N_5 ), .B(\SMADDR[8]_net_1 )
        , .Y(I_23));
    XO1 un1_ACCUMULATOR_0_STBACCUM_4_iv_i_o2_2 (.A(
        \UROM.INSTR_SCMD[0]_net_1 ), .B(N_93), .C(N_165), .Y(N_101));
    NOR2A \un1_ACCUMULATOR_0_SMADDR_21_1[8]  (.A(I_23), .B(DOISR_net_1)
        , .Y(N_430));
    MX2 \un1_ACCUMULATOR_0_SMADDR_21[3]  (.A(N_425), .B(N_412), .S(
        SMADDR_0_sqmuxa_1), .Y(\SMADDR_21[3] ));
    AND3 un1_STKPTRP1_I_19 (.A(\un1_STKPTRP1.U1.DWACT_FINC_E[0] ), .B(
        \un1_STKPTRP1.U1.DWACT_FINC_E[2] ), .C(\STKPTR[6]_net_1 ), .Y(
        \un1_STKPTRP1.N_2 ));
    AX1 un1_ACCUMULATOR_0_m18_0 (.A(\xhdl_31.ALUOUT22_0 ), .B(
        \un1_ACCUMULATOR_0.un1_ACCUMULATOR_v_0_0[5] ), .C(
        \ACCUMULATOR[6]_net_1 ), .Y(\un1_ACCUMULATOR_0.N_39 ));
    MX2 \un1_ACCUMULATOR_0_RAMWDATA_0_i_m2[8]  (.A(I_23), .B(
        \SMADDR[8]_net_1 ), .S(DOISR_0_net_1), .Y(N_118));
    OR2 un1_ACCUMULATOR_0_ACCUM_m15_0_o6 (.A(
        \UROM.INSTR_SCMD[1]_net_1 ), .B(\UROM.INSTR_SCMD[2]_net_1 ), 
        .Y(\un1_ACCUMULATOR_0.ACCUM_N_4 ));
    MX2 \un1_ACCUMULATOR_0_ACCUM_IN_0[1]  (.A(
        \UROM.INSTR_DATA[1]_net_1 ), .B(\RAMRDATA[1] ), .S(PADDR_M[12])
        , .Y(\ACCUM_IN_0[1] ));
    DFN1E1C0 \IO_OUT[1]  (.D(PWDATA_M[1]), .CLK(PCLK), .CLR(
        \genblk2.RSTSYNC2_0_net_1 ), .E(STBRAM_10_sqmuxa), .Q(
        IO_OUT[1]));
    NOR2B \ACCUMULATOR_RNINNN3[4]  (.A(\ACCUMULATOR[4]_net_1 ), .B(
        \ACCUMULATOR[3]_net_1 ), .Y(d_N_3_mux));
    AO1B \un1_ACCUMULATOR_0_ICYCLE_ns_i_i_o2_0[0]  (.A(PREADY_M), .B(
        PENABLE_M), .C(PSEL_M), .Y(N_123));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT_4[2]  (.A(IO_IN[2]), .B(
        \ACCUM_IN[2] ), .S(ACCUM_NEXT_sn_N_7), .Y(N_532));
    MAJ3X \un1_ACCUMULATOR_0_ACCUM_NEXT_1[0]  (.A(
        \ACCUMULATOR[0]_net_1 ), .B(\ACCUM_IN[0] ), .C(
        \UROM.INSTR_SCMD_0[1]_net_1 ), .Y(N_500));
    AX1C \un1_ACCUMULATOR_0_ZREGISTER_18[1]  (.A(
        \un17_ZREGISTER.m28_0 ), .B(\UROM.INSTR_SCMD_0[0]_net_1 ), .C(
        PWDATA_M[1]), .Y(\ZREGISTER_18[1] ));
    AO1B un1_ACCUMULATOR_0_un1_ICYCLE_11_0_0 (.A(
        \un1_ACCUMULATOR_0.un1_ICYCLE_11_0_a2_0_0 ), .B(
        \UROM.INSTR_CMD[1]_net_1 ), .C(\ICYCLE[0]_net_1 ), .Y(
        \un1_ACCUMULATOR_0.un1_ICYCLE_11_0_0 ));
    MX2 \un1_ACCUMULATOR_0_SMADDR_21[5]  (.A(N_427), .B(N_414), .S(
        SMADDR_0_sqmuxa_1), .Y(\SMADDR_21[5] ));
    XOR2 un37_SMADDR_I_7 (.A(\un37_SMADDR.N_11 ), .B(\SMADDR[2]_net_1 )
        , .Y(I_7));
    AO1 \un1_ACCUMULATOR_0_xhdl_41.flagvalue_0  (.A(ACCUM_NEG), .B(
        \UROM.INSTR_DATA[2]_net_1 ), .C(\UROM.INSTR_DATA[0]_net_1 ), 
        .Y(\un1_ACCUMULATOR_0.xhdl_41.flagvalue_0 ));
    XNOR2 un17_ZREGISTER_m22 (.A(\un17_ZREGISTER.N_37 ), .B(
        \un17_ZREGISTER.i6_mux ), .Y(\un17_ZREGISTER.N_23_i ));
    DFN1E1P0 \STKPTR[4]  (.D(N_843), .CLK(PCLK), .PRE(PRESETN), .E(
        STKPTRe), .Q(\STKPTR[4]_net_1 ));
    NOR3A un1_ACCUMULATOR_0_STBRAM_10_sqmuxa_0_a2 (.A(
        \un1_ACCUMULATOR_0.STBRAM_10_sqmuxa_0_a2_0 ), .B(N_90), .C(
        N_94), .Y(STBRAM_10_sqmuxa));
    OA1B \un1_ACCUMULATOR_0_ACCUM_NEXT_0_1[1]  (.A(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_2_a3_1[1] ), .B(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_2_a2_1[1] ), .C(
        \UROM.INSTR_SCMD_0[2]_net_1 ), .Y(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_1[1] ));
    NOR3A un1_ACCUMULATOR_0_ACCUM_m15_0_a6_0_1 (.A(
        \ACCUMULATOR[2]_net_1 ), .B(\ACCUMULATOR[1]_net_1 ), .C(
        \ACCUM_IN_0[2] ), .Y(\un1_ACCUMULATOR_0.ACCUM_m15_0_a6_0_1 ));
    NOR2B \un1_ACCUMULATOR_0_ACCUM_IN[4]  (.A(\RAMRDATA[4] ), .B(
        \un7_MUXIR[0] ), .Y(\ACCUM_IN[4] ));
    NOR2A \un1_ACCUMULATOR_0_SMADDR_21_1[3]  (.A(I_9), .B(DOISR_net_1), 
        .Y(N_425));
    NOR2A \un1_ACCUMULATOR_0_SMADDR_21_1[2]  (.A(I_7), .B(DOISR_net_1), 
        .Y(N_424));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT_6[2]  (.A(N_522), .B(N_512), .S(
        ACCUM_NEXT_sn_N_8), .Y(N_551));
    AND3 un37_SMADDR_I_30 (.A(\un37_SMADDR.U1.DWACT_FINC_E[0] ), .B(
        \un37_SMADDR.U1.DWACT_FINC_E[2] ), .C(
        \un37_SMADDR.U1.DWACT_FINC_E[5] ), .Y(
        \un37_SMADDR.U1.DWACT_FINC_E[6] ));
    MX2 \un1_ACCUMULATOR_0_SMADDR_21[1]  (.A(N_423), .B(N_410), .S(
        SMADDR_0_sqmuxa_1), .Y(\SMADDR_21[1] ));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT_4[4]  (.A(IO_IN[4]), .B(
        \ACCUM_IN[4] ), .S(ACCUM_NEXT_sn_N_7), .Y(N_534));
    MX2C un1_ACCUMULATOR_0_m32_d (.A(\ACCUMULATOR[6]_net_1 ), .B(
        \ACCUMULATOR[5]_net_1 ), .S(\un1_ACCUMULATOR_0.N_39 ), .Y(
        m32_d));
    AO18 un1_ACCUMULATOR_0_m16 (.A(\ACCUMULATOR[5]_net_1 ), .B(
        \un1_ACCUMULATOR_0.i8_mux ), .C(\un1_ACCUM_IN_0[5] ), .Y(
        \un1_ACCUMULATOR_0.i10_mux ));
    AO18 un17_ZREGISTER_m13 (.A(\ZREGISTER[4]_net_1 ), .B(
        \un17_ZREGISTER.i6_mux ), .C(PWDATA_M[4]), .Y(
        \un17_ZREGISTER.i8_mux ));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT_4[0]  (.A(IO_IN[0]), .B(
        \ACCUM_IN[0] ), .S(ACCUM_NEXT_sn_N_7), .Y(N_530));
    AND2 un37_SMADDR_I_15 (.A(\SMADDR[3]_net_1 ), .B(\SMADDR[4]_net_1 )
        , .Y(\un37_SMADDR.U1.DWACT_FINC_E[1] ));
    DFN1E1C0 \ACCUMULATOR[0]  (.D(\ACCUM_NEXT[0] ), .CLK(PCLK), .CLR(
        \genblk2.RSTSYNC2_0_net_1 ), .E(ACCUMULATOR4), .Q(
        \ACCUMULATOR[0]_net_1 ));
    XOR2 un1_ACCUMULATOR_0_STBACCUM_4_iv_i_x2 (.A(
        \UROM.INSTR_CMD[0]_net_1 ), .B(\UROM.INSTR_CMD[1]_net_1 ), .Y(
        N_96_i));
    NOR2A \un1_ACCUMULATOR_0_ACCUM_NEXT_2_a1_1[0]  (.A(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_2_1_0[0] ), .B(
        \UROM.INSTR_SCMD[2]_net_1 ), .Y(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_2_a1_1[0] ));
    DFN1E0C0 ISR_ACCUM_NEG (.D(\ACCUM_NEXT[7] ), .CLK(PCLK), .CLR(
        PRESETN), .E(N_70), .Q(ISR_ACCUM_NEG_net_1));
    NOR2A un1_ACCUMULATOR_0_to_logic10_0_a2 (.A(STBFLAG_net_1), .B(
        INTACT), .Y(to_logic10));
    MX2 \un1_ACCUMULATOR_0_SMADDR_21[4]  (.A(N_426), .B(N_413), .S(
        SMADDR_0_sqmuxa_1), .Y(\SMADDR_21[4] ));
    OR2B un1_ACCUMULATOR_0_un1_ICYCLE_8_i_a2 (.A(\ICYCLE[0]_net_1 ), 
        .B(\ICYCLE[1]_net_1 ), .Y(N_149));
    NOR3A un1_ACCUMULATOR_0_STBRAM_7_0_0_a2 (.A(
        \un1_ACCUMULATOR_0.STBRAM_7_0_0_a2_0 ), .B(N_90), .C(N_94), .Y(
        N_135));
    DFN1P0 \ICYCLE[0]  (.D(\ICYCLE_ns_i_i[0] ), .CLK(PCLK), .PRE(
        PRESETN), .Q(\ICYCLE[0]_net_1 ));
    AX1B un1_ACCUMULATOR_0_STKPTR_n3 (.A(STKPTR_2_sqmuxa), .B(
        STKPTR_c2), .C(N_615), .Y(N_842));
    MAJ3X \un1_ACCUMULATOR_0_ACCUM_NEXT_1[1]  (.A(
        \ACCUMULATOR[1]_net_1 ), .B(\ACCUM_IN[1] ), .C(
        \UROM.INSTR_SCMD_0[1]_net_1 ), .Y(N_501));
    DFN1E1C0 \ACCUMULATOR[6]  (.D(\ACCUM_NEXT[6] ), .CLK(PCLK), .CLR(
        \genblk2.RSTSYNC2_0_net_1 ), .E(ACCUMULATOR4), .Q(
        \ACCUMULATOR[6]_net_1 ));
    DFN1 \UROM.INSTR_CMD[0]  (.D(\UROM.UROM.N_18 ), .CLK(PCLK), .Q(
        \UROM.INSTR_CMD[0]_net_1 ));
    OR3A \un1_ACCUMULATOR_0_ICYCLE_ns_i_i_o2[0]  (.A(\ICYCLE[0]_net_1 )
        , .B(DOISR_0_net_1), .C(N_104), .Y(N_108));
    MX2 un1_ACCUMULATOR_0_ACCUM_ZERO_1 (.A(STD_ACCUM_ZERO_net_1), .B(
        ISR_ACCUM_ZERO_net_1), .S(INTACT), .Y(ACCUM_ZERO_1));
    AND3 un37_SMADDR_I_10 (.A(\SMADDR[0]_net_1 ), .B(\SMADDR[1]_net_1 )
        , .C(\SMADDR[2]_net_1 ), .Y(\un37_SMADDR.U1.DWACT_FINC_E[0] ));
    MX2 un1_ACCUMULATOR_0_SHIFTLSB (.A(\UROM.INSTR_DATA[0]_net_1 ), .B(
        N_357), .S(\UROM.INSTR_DATA[1]_net_1 ), .Y(SHIFTLSB));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT_4[6]  (.A(IO_IN[6]), .B(
        \ACCUM_IN[6] ), .S(ACCUM_NEXT_sn_N_7), .Y(N_536));
    OR2 \un1_ACCUMULATOR_0_xhdl_31.ALUOUT_4[6]  (.A(\ACCUM_IN[6] ), .B(
        \ACCUMULATOR[6]_net_1 ), .Y(\xhdl_31.ALUOUT_4[6] ));
    MX2 \un17_ZREGISTER_RAMWDATA[6]  (.A(N_455), .B(PWDATA_M[6]), .S(
        RAMWDATA_sn_N_2), .Y(\RAMWDATA[6] ));
    AO1D un1_ACCUMULATOR_0_PSELI_7_0_0 (.A(N_104), .B(N_94), .C(
        ICYCLE_1_sqmuxa_1), .Y(PSELI_7));
    MX2 \un1_ACCUMULATOR_0_RAMWDATA[5]  (.A(N_454), .B(PWDATA_M[5]), 
        .S(RAMWDATA_sn_N_2), .Y(\RAMWDATA[5] ));
    NOR2A \un1_ACCUMULATOR_0_SMADDR_21_1[10]  (.A(I_28), .B(
        DOISR_net_1), .Y(N_432));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT_5[1]  (.A(N_501), .B(PRDATA_M[1])
        , .S(\UROM.INSTR_CMD_0[1]_net_1 ), .Y(N_541));
    NOR3B \un1_ACCUMULATOR_0_ACCUM_NEXT_a1_3[4]  (.A(
        \un1_ACCUMULATOR_0.N_37 ), .B(
        \un1_ACCUMULATOR_0.ACCUM_m3_0_a2_1 ), .C(ACCUM_NEXT_sn_N_13), 
        .Y(\un1_ACCUMULATOR_0.ACCUM_NEXT_a1_3[4] ));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT_5[2]  (.A(N_502), .B(PRDATA_M[2])
        , .S(\UROM.INSTR_CMD_0[1]_net_1 ), .Y(N_542));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT_0_0[0]  (.A(
        \ACCUMULATOR[0]_net_1 ), .B(\ACCUMULATOR[1]_net_1 ), .S(
        \UROM.INSTR_SCMD_0[2]_net_1 ), .Y(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_0[0] ));
    NOR3B un1_ACCUMULATOR_0_ACCUM_m15_0_a6_2 (.A(
        \un1_ACCUMULATOR_0.ACCUM_N_6 ), .B(\ACCUMULATOR[2]_net_1 ), .C(
        \un1_ACCUMULATOR_0.ACCUM_N_4 ), .Y(ACCUM_m15_0_a6_2));
    NOR2A \UROM.INSTR_SCMD_RNI8FK52[1]  (.A(d_m7_0_a5_2_0), .B(N_537), 
        .Y(\UROM.INSTR_SCMD_RNI8FK52[1]_net_1 ));
    NOR2A un1_ACCUMULATOR_0_STBRAM_10_sqmuxa_0_a2_0 (.A(
        \UROM.INSTR_SCMD[0]_net_1 ), .B(N_93), .Y(
        \un1_ACCUMULATOR_0.STBRAM_10_sqmuxa_0_a2_0 ));
    OA1C \un1_ACCUMULATOR_0_ACCUM_NEXT_2_1_1[0]  (.A(
        \UROM.INSTR_CMD[0]_net_1 ), .B(\UROM.INSTR_CMD[2]_net_1 ), .C(
        \UROM.INSTR_SCMD[2]_net_1 ), .Y(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_2_1_1[0] ));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT_2[7]  (.A(\xhdl_31.ALUOUT_4[7] ), 
        .B(SHIFTMSB), .S(\UROM.INSTR_SCMD_0[2]_net_1 ), .Y(N_517));
    MX2 \un1_ACCUMULATOR_0_PWDATA_M_0[3]  (.A(
        \UROM.INSTR_DATA[2]_net_1 ), .B(\ACCUMULATOR[3]_net_1 ), .S(
        USE_ACC_1), .Y(N_394));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT_5[7]  (.A(N_507), .B(PRDATA_M[7])
        , .S(\UROM.INSTR_CMD_0[1]_net_1 ), .Y(N_547));
    OR2 \un1_ACCUMULATOR_0_ACCUM_IN_0[5]  (.A(
        \un1_ACCUMULATOR_0.un1_ACCUMULATOR_v_0_0[4] ), .B(
        \ACCUM_IN_a0[5] ), .Y(\ACCUM_IN[5] ));
    XOR2 un37_SMADDR_I_9 (.A(\un37_SMADDR.N_10 ), .B(\SMADDR[3]_net_1 )
        , .Y(I_9));
    NOR2A un1_ACCUMULATOR_0_STBRAM_7_0_0_a2_0_0_0 (.A(
        \UROM.INSTR_CMD[0]_net_1 ), .B(\UROM.INSTR_CMD[1]_net_1 ), .Y(
        \un1_ACCUMULATOR_0.STBRAM_7_0_0_a2_0_0 ));
    NOR3A \un1_ACCUMULATOR_0_ACCUM_NEXT_a4[6]  (.A(d_m7_0_a5_2_0), .B(
        ACCUM_NEXT_sn_N_13), .C(N_536), .Y(\ACCUM_NEXT_a4[6] ));
    NOR2B \un17_ZREGISTER_PADDR_M_1[6]  (.A(\ZREGISTER[6]_net_1 ), .B(
        \UROM.INSTR_SCMD[2]_net_1 ), .Y(PADDR_M[6]));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT_5[4]  (.A(N_504), .B(PRDATA_M[4])
        , .S(\UROM.INSTR_CMD_0[1]_net_1 ), .Y(N_544));
    AOI1 \un1_ACCUMULATOR_0_ACCUM_NEXT_0_1[4]  (.A(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_a0_3[4] ), .B(
        \un1_ACCUMULATOR_0.i6_mux ), .C(\ACCUM_NEXT_a4[4] ), .Y(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_1[4] ));
    MX2 un1_ACCUMULATOR_0_STKPTR_42 (.A(\STKPTR[2]_net_1 ), .B(I_7_0), 
        .S(STKPTR_2_sqmuxa), .Y(N_613));
    NOR2 un1_ACCUMULATOR_0_STKPTRlde_0_a2_3 (.A(\ICYCLE[0]_net_1 ), .B(
        \ICYCLE[1]_net_1 ), .Y(N_166));
    AO1A \un1_ACCUMULATOR_0_ACCUM_NEXT_0_2[0]  (.A(
        \UROM.INSTR_CMD_0[1]_net_1 ), .B(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_2_a1_1[0] ), .C(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_0[0] ), .Y(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_2[0] ));
    DFN1C0 \genblk2.RSTSYNC2  (.D(\genblk2.RSTSYNC1_net_1 ), .CLK(PCLK)
        , .CLR(NSYSRESET), .Q(PRESETN));
    MX2 un1_ACCUMULATOR_0_m32 (.A(m32_d), .B(
        \un1_ACCUMULATOR_0.i8_mux ), .S(m32_s), .Y(
        \un1_ACCUMULATOR_0.i12_mux ));
    AX1C \un17_ZREGISTER_ZREGISTER_18_i_m2[0]  (.A(
        \ZREGISTER[0]_net_1 ), .B(\UROM.INSTR_SCMD_0[0]_net_1 ), .C(
        PWDATA_M[0]), .Y(N_114));
    MX2 \un1_ACCUMULATOR_0_RAMADDR[4]  (.A(I_12_0), .B(
        \UROM.INSTR_ADDR[4]_net_1 ), .S(RAMADDR_1_sqmuxa), .Y(
        \RAMADDR[4] ));
    AO1 un1_ACCUMULATOR_0_ACCUM_m15_0_0 (.A(
        \un1_ACCUMULATOR_0.ACCUM_m15_0_a6_3_2 ), .B(\ACCUM_IN_0[2] ), 
        .C(ACCUM_m15_0_a6_2), .Y(\un1_ACCUMULATOR_0.ACCUM_m15_0_0 ));
    NOR2B \un1_ACCUMULATOR_0_SMADDR_21_0[5]  (.A(\RAMRDATA[5] ), .B(
        \UROM.INSTR_CMD[1]_net_1 ), .Y(N_414));
    MX2 un1_ACCUMULATOR_0_ACCUM_NEG (.A(STD_ACCUM_NEG_net_1), .B(
        ISR_ACCUM_NEG_net_1), .S(INTACT), .Y(ACCUM_NEG));
    INV un1_ACCUMULATOR_0_STKPTR_n0 (.A(\STKPTR[0]_net_1 ), .Y(N_839));
    NOR2B \un1_ACCUMULATOR_0_ACCUM_IN[7]  (.A(\RAMRDATA[7] ), .B(
        \un7_MUXIR[0] ), .Y(\ACCUM_IN[7] ));
    DFN1 \UROM.INSTR_CMD_0[1]  (.D(\UROM.UROM.N_7 ), .CLK(PCLK), .Q(
        \UROM.INSTR_CMD_0[1]_net_1 ));
    MX2 \un1_ACCUMULATOR_0_RAMWDATA_0[5]  (.A(I_14), .B(
        \SMADDR[5]_net_1 ), .S(DOISR_0_net_1), .Y(N_454));
    MX2A un1_ACCUMULATOR_0_m13_d_1 (.A(d_N_3_mux), .B(
        \xhdl_31.ALUOUT22_0 ), .S(\un1_ACCUMULATOR_0.m13_i2_mux ), .Y(
        m13_d_1));
    NOR2B \un1_ACCUMULATOR_0_ACCUM_NEXT_2_a4[3]  (.A(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_2_a4_0[0] ), .B(\RAMRDATA[3] ), 
        .Y(\ACCUM_NEXT_2_a4[3] ));
    MX2 un17_ZREGISTER_m16 (.A(m16_d), .B(\un17_ZREGISTER.i6_mux ), .S(
        m16_s), .Y(\un17_ZREGISTER.i10_mux ));
    NOR2B un17_ZREGISTER_m1_m1_0_a2 (.A(\un17_ZREGISTER.m1_m1_0_a2_0 ), 
        .B(N_391), .Y(\un17_ZREGISTER.N_2_i ));
    NOR2 \UROM.INSTR_SCMD_RNICF7A[0]  (.A(\UROM.INSTR_SCMD[0]_net_1 ), 
        .B(\UROM.INSTR_CMD[1]_net_1 ), .Y(d_m7_0_a5_1_0));
    NOR2A \un1_ACCUMULATOR_0_RAMADDR[5]  (.A(I_14_0), .B(
        RAMADDR_1_sqmuxa), .Y(\RAMADDR[5] ));
    NOR3A un1_ACCUMULATOR_0_PSELI_7_0_0_a2 (.A(\ICYCLE[1]_net_1 ), .B(
        \ICYCLE[0]_net_1 ), .C(N_123), .Y(ICYCLE_1_sqmuxa_1));
    NOR3A \un1_ACCUMULATOR_0_ACCUM_NEXT_0_3[4]  (.A(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_1[4] ), .B(\ACCUM_NEXT_a5[4] ), 
        .C(\ACCUM_NEXT_a2[4] ), .Y(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_3[4] ));
    NOR3 un1_ACCUMULATOR_0_ACCUM_m3_0_a2_2_1 (.A(PADDR_M[12]), .B(
        \ACCUMULATOR[2]_net_1 ), .C(\UROM.INSTR_SCMD_0[2]_net_1 ), .Y(
        \un1_ACCUMULATOR_0.ACCUM_m3_0_a2_2_1 ));
    MX2 \un1_ACCUMULATOR_0_ACCUM_IN[0]  (.A(\UROM.INSTR_DATA[0]_net_1 )
        , .B(\RAMRDATA[0] ), .S(\un7_MUXIR[0] ), .Y(\ACCUM_IN[0] ));
    NOR2A \un1_ACCUMULATOR_0_RAMADDR[7]  (.A(I_20_0), .B(
        RAMADDR_1_sqmuxa), .Y(\RAMADDR[7] ));
    MIN3 un17_ZREGISTER_m16_d (.A(PWDATA_M[5]), .B(
        \ZREGISTER[4]_net_1 ), .C(\ZREGISTER[5]_net_1 ), .Y(m16_d));
    XOR2 un37_SMADDR_I_32 (.A(\un37_SMADDR.N_2 ), .B(
        \SMADDR[11]_net_1 ), .Y(I_32));
    NOR2 un1_ACCUMULATOR_0_STKPTRlde_0_a2_0_0 (.A(INTACT), .B(INTREQ), 
        .Y(\un1_ACCUMULATOR_0.STKPTRlde_0_a2_0_0 ));
    NOR2A \un1_ACCUMULATOR_0_ACCUM_NEXT_2_1_0[0]  (.A(
        \UROM.INSTR_DATA[0]_net_1 ), .B(PADDR_M[12]), .Y(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_2_1_0[0] ));
    AND3 un1_STKPTRP1_I_10 (.A(\STKPTR[0]_net_1 ), .B(
        \STKPTR[1]_net_1 ), .C(\STKPTR[2]_net_1 ), .Y(
        \un1_STKPTRP1.U1.DWACT_FINC_E[0] ));
    DFN1E0P0 \SMADDR[3]  (.D(\SMADDR_21[3] ), .CLK(PCLK), .PRE(
        \genblk2.RSTSYNC2_1_net_1 ), .E(un1_ICYCLE_6), .Q(
        \SMADDR[3]_net_1 ));
    NOR2B \UROM.INSTR_SCMD_RNIV3U[1]  (.A(\UROM.INSTR_SCMD[1]_net_1 ), 
        .B(\UROM.INSTR_SCMD[0]_net_1 ), .Y(d_m7_0_a5_2_0));
    OA1C un1_ACCUMULATOR_0_RAMADDR_1_sqmuxa_0 (.A(
        \UROM.INSTR_SCMD[2]_net_1 ), .B(N_90), .C(DOISR_0_net_1), .Y(
        \un1_ACCUMULATOR_0.RAMADDR_1_sqmuxa_0 ));
    DFN1E1C0 \IO_OUT[2]  (.D(PWDATA_M[2]), .CLK(PCLK), .CLR(
        \genblk2.RSTSYNC2_0_net_1 ), .E(STBRAM_10_sqmuxa), .Q(
        IO_OUT[2]));
    XOR2 \un1_ACCUMULATOR_0_ICYCLE_ns_0_x2_i_x2[1]  (.A(
        \ICYCLE[0]_net_1 ), .B(\ICYCLE[1]_net_1 ), .Y(N_107_i));
    DFN1 \UROM.INSTR_SCMD_0[0]  (.D(\INSTRUCTION[3] ), .CLK(PCLK), .Q(
        \UROM.INSTR_SCMD_0[0]_net_1 ));
    AX1C \un1_ACCUMULATOR_0_ZREGISTER_18[2]  (.A(
        \un17_ZREGISTER.m26_0 ), .B(\UROM.INSTR_SCMD_0[0]_net_1 ), .C(
        PWDATA_M[2]), .Y(\ZREGISTER_18[2] ));
    MX2 un1_ACCUMULATOR_0_STKPTR_52 (.A(\STKPTR[7]_net_1 ), .B(I_20_0), 
        .S(STKPTR_2_sqmuxa), .Y(N_623));
    NOR2A \un1_ACCUMULATOR_0_SMADDR_21_1[6]  (.A(I_17), .B(DOISR_net_1)
        , .Y(N_428));
    AX1 un1_ACCUMULATOR_0_m12 (.A(\xhdl_31.ALUOUT22_0 ), .B(
        \un1_ACCUMULATOR_0.un1_ACCUMULATOR_v_0_0[3] ), .C(
        \ACCUMULATOR[4]_net_1 ), .Y(\un1_ACCUMULATOR_0.N_37 ));
    NOR2B \un1_ACCUMULATOR_0_SMADDR_21_0[11]  (.A(\RAMRDATA[11] ), .B(
        \UROM.INSTR_CMD[1]_net_1 ), .Y(N_420));
    DFN1E1C0 \ZREGISTER[2]  (.D(\ZREGISTER_18[2] ), .CLK(PCLK), .CLR(
        \genblk2.RSTSYNC2_1_net_1 ), .E(N_125), .Q(
        \ZREGISTER[2]_net_1 ));
    XOR2 un37_SMADDR_I_12 (.A(\un37_SMADDR.N_9 ), .B(\SMADDR[4]_net_1 )
        , .Y(I_12));
    XOR2 un1_STKPTRP1_I_7 (.A(\un1_STKPTRP1.N_7 ), .B(
        \STKPTR[2]_net_1 ), .Y(I_7_0));
    MX2 \un1_ACCUMULATOR_0_SMADDR_21_0[1]  (.A(
        \UROM.INSTR_ADDR[1]_net_1 ), .B(\RAMRDATA[1] ), .S(
        \UROM.INSTR_CMD_0[1]_net_1 ), .Y(N_410));
    NOR2A \un1_ACCUMULATOR_0_ACCUM_NEXT_2_1_0[3]  (.A(
        \UROM.INSTR_DATA[2]_net_1 ), .B(PADDR_M[12]), .Y(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_2_1_0[3] ));
    NOR2A \un1_ACCUMULATOR_0_ACCUM_NEXT_2_a4_0[0]  (.A(PADDR_M[12]), 
        .B(\UROM.INSTR_SCMD[2]_net_1 ), .Y(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_2_a4_0[0] ));
    DFN1E1P0 \STKPTR[0]  (.D(N_839), .CLK(PCLK), .PRE(PRESETN), .E(
        STKPTRe), .Q(\STKPTR[0]_net_1 ));
    MX2 \un1_ACCUMULATOR_0_PADDR_M_1[0]  (.A(
        \UROM.INSTR_ADDR[0]_net_1 ), .B(\ZREGISTER[0]_net_1 ), .S(
        \UROM.INSTR_SCMD_0[2]_net_1 ), .Y(PADDR_M[0]));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT_7[1]  (.A(N_531), .B(N_550), .S(
        ACCUM_NEXT_sn_N_15_mux), .Y(N_560));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT_5[6]  (.A(N_506), .B(PRDATA_M[6])
        , .S(\UROM.INSTR_CMD_0[1]_net_1 ), .Y(N_546));
    NOR2A un1_ACCUMULATOR_0_ACCUM_m1_e (.A(PADDR_M[12]), .B(
        \ACCUMULATOR[1]_net_1 ), .Y(\un1_ACCUMULATOR_0.ACCUM_N_3_mux ));
    NOR2B \un17_ZREGISTER_PADDR_M_1[5]  (.A(\ZREGISTER[5]_net_1 ), .B(
        \UROM.INSTR_SCMD[2]_net_1 ), .Y(PADDR_M[5]));
    NOR2 un17_ZREGISTER_m7_m4 (.A(PWDATA_M_sn_N_2), .B(m7_m2), .Y(
        \un17_ZREGISTER.m7_N_7_mux ));
    OR3 \un1_ACCUMULATOR_0_ACCUM_NEXT_3[3]  (.A(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_3_1[3] ), .B(
        \ACCUM_NEXT_2_a0[3] ), .C(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_3_2[3] ), .Y(N_513));
    AND3 un37_SMADDR_I_27 (.A(\un37_SMADDR.U1.DWACT_FINC_E[4] ), .B(
        \SMADDR[8]_net_1 ), .C(\SMADDR[9]_net_1 ), .Y(
        \un37_SMADDR.N_3 ));
    DFN1C0 PSELI (.D(PSELI_7), .CLK(PCLK), .CLR(PRESETN), .Q(PSEL_M));
    DFN1E1C0 \ACCUMULATOR[4]  (.D(\ACCUM_NEXT[4] ), .CLK(PCLK), .CLR(
        \genblk2.RSTSYNC2_0_net_1 ), .E(ACCUMULATOR4), .Q(
        \ACCUMULATOR[4]_net_1 ));
    OR2B un1_ACCUMULATOR_0_to_logic18_i (.A(STBFLAG_net_1), .B(INTACT), 
        .Y(N_70));
    DFN1E1C0 \ACCUMULATOR[1]  (.D(\ACCUM_NEXT[1] ), .CLK(PCLK), .CLR(
        \genblk2.RSTSYNC2_0_net_1 ), .E(ACCUMULATOR4), .Q(
        \ACCUMULATOR[1]_net_1 ));
    XNOR3 un17_ZREGISTER_ADD_8x8_fast_I43_Y (.A(PWDATA_M[7]), .B(
        \ZREGISTER[7]_net_1 ), .C(\un17_ZREGISTER.i12_mux ), .Y(
        \un17_ZREGISTER[7] ));
    DFN1E0P0 \SMADDR[0]  (.D(\SMADDR_21[0] ), .CLK(PCLK), .PRE(
        \genblk2.RSTSYNC2_0_net_1 ), .E(un1_ICYCLE_6), .Q(
        \SMADDR[0]_net_1 ));
    AO1 un1_ACCUMULATOR_0_un1_ICYCLE_6 (.A(SMADDR_0_sqmuxa_2), .B(
        SMADDR_0_sqmuxa_1), .C(N_149), .Y(un1_ICYCLE_6));
    MX2A un1_ACCUMULATOR_0_m10 (.A(\ACCUMULATOR[3]_net_1 ), .B(
        \un1_ACCUMULATOR_0.i4_mux ), .S(\un1_ACCUMULATOR_0.N_36 ), .Y(
        \un1_ACCUMULATOR_0.i6_mux ));
    MX2 \un1_ACCUMULATOR_0_RAMWDATA_0_i_m2[10]  (.A(I_28), .B(
        \SMADDR[10]_net_1 ), .S(DOISR_0_net_1), .Y(N_116));
    NOR2A un1_ACCUMULATOR_0_RAMWDATA_sn_m1_0_a2 (.A(
        \URAM.un1_UROM.INSTR_MUXC ), .B(DOISR_net_1), .Y(
        RAMWDATA_sn_N_2));
    NOR2B un1_STKPTRP1_I_6 (.A(\STKPTR[1]_net_1 ), .B(
        \STKPTR[0]_net_1 ), .Y(\un1_STKPTRP1.N_7 ));
    AO1 un1_ACCUMULATOR_0_STKPTRlde_0_0 (.A(
        \un1_ACCUMULATOR_0.STKPTRlde_0_a2_0_0 ), .B(N_166), .C(N_133), 
        .Y(\un1_ACCUMULATOR_0.STKPTRlde_0_0 ));
    NOR3B \un1_ACCUMULATOR_0_ACCUM_NEXT_0[6]  (.A(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_2[6] ), .B(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_0_3[6] ), .C(\ACCUM_NEXT_a6[6] ), 
        .Y(\ACCUM_NEXT[6] ));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT_4[3]  (.A(IO_IN[3]), .B(
        \ACCUM_IN[3] ), .S(ACCUM_NEXT_sn_N_7), .Y(N_533));
    MX2 \un1_ACCUMULATOR_0_RAMWDATA_i[0]  (.A(N_122), .B(PWDATA_M[0]), 
        .S(RAMWDATA_sn_N_2), .Y(N_57));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT_4[1]  (.A(IO_IN[1]), .B(
        \ACCUM_IN[1] ), .S(ACCUM_NEXT_sn_N_7), .Y(N_531));
    NOR2B un1_ACCUMULATOR_0_RAMADDR_1_sqmuxa (.A(
        \un1_ACCUMULATOR_0.RAMADDR_1_sqmuxa_0 ), .B(
        \URAM.un1_UROM.INSTR_MUXC ), .Y(RAMADDR_1_sqmuxa));
    AND2 un37_SMADDR_I_21 (.A(\SMADDR[6]_net_1 ), .B(\SMADDR[7]_net_1 )
        , .Y(\un37_SMADDR.U1.DWACT_FINC_E[3] ));
    NOR2A \un1_ACCUMULATOR_0_SMADDR_21_1[4]  (.A(I_12), .B(DOISR_net_1)
        , .Y(N_426));
    NOR3A \un1_ACCUMULATOR_0_ACCUM_NEXT_a4[4]  (.A(d_m7_0_a5_2_0), .B(
        ACCUM_NEXT_sn_N_13), .C(N_534), .Y(\ACCUM_NEXT_a4[4] ));
    DFN1E0P0 \SMADDR[8]  (.D(\SMADDR_21[8] ), .CLK(PCLK), .PRE(
        \genblk2.RSTSYNC2_1_net_1 ), .E(un1_ICYCLE_6), .Q(
        \SMADDR[8]_net_1 ));
    DFN1E1C0 \IO_OUT[4]  (.D(PWDATA_M[4]), .CLK(PCLK), .CLR(
        \genblk2.RSTSYNC2_0_net_1 ), .E(STBRAM_10_sqmuxa), .Q(
        IO_OUT[4]));
    DFN1 \UROM.INSTR_SCMD[0]  (.D(\INSTRUCTION[3] ), .CLK(PCLK), .Q(
        \UROM.INSTR_SCMD[0]_net_1 ));
    NOR2A \UROM.INSTR_CMD_RNI6PEE2[1]  (.A(\UROM.INSTR_CMD[1]_net_1 ), 
        .B(N_537), .Y(d_N_4));
    OR2 \un1_ACCUMULATOR_0_xhdl_31.ALUOUT_4[5]  (.A(\ACCUM_IN[5] ), .B(
        \ACCUMULATOR[5]_net_1 ), .Y(\xhdl_31.ALUOUT_4[5] ));
    MX2 \un17_ZREGISTER_PADDR_M_1[4]  (.A(\UROM.INSTR_ADDR[4]_net_1 ), 
        .B(\ZREGISTER[4]_net_1 ), .S(\UROM.INSTR_SCMD[2]_net_1 ), .Y(
        PADDR_M[4]));
    DFN1C0 \genblk2.RSTSYNC2_0  (.D(\genblk2.RSTSYNC1_net_1 ), .CLK(
        PCLK), .CLR(NSYSRESET), .Q(\genblk2.RSTSYNC2_0_net_1 ));
    OR3 un1_ACCUMULATOR_0_STKPTR_49 (.A(\STKPTR[5]_net_1 ), .B(
        STKPTR_c4), .C(STKPTR_2_sqmuxa), .Y(N_620));
    NOR3A \un1_ACCUMULATOR_0_ACCUM_NEXT_2_a2_1[1]  (.A(
        \UROM.INSTR_DATA[1]_net_1 ), .B(\UROM.INSTR_CMD[0]_net_1 ), .C(
        PADDR_M[12]), .Y(\un1_ACCUMULATOR_0.ACCUM_NEXT_2_a2_1[1] ));
    MX2 \un17_ZREGISTER_ZREGISTER_18[7]  (.A(PWDATA_M[7]), .B(
        \un17_ZREGISTER[7] ), .S(\UROM.INSTR_SCMD_0[0]_net_1 ), .Y(
        \ZREGISTER_18[7] ));
    NOR3B \un1_ACCUMULATOR_0_PWDATA_M[7]  (.A(USE_ACC_1), .B(
        \ACCUMULATOR[7]_net_1 ), .C(PWDATA_M_sn_N_2), .Y(PWDATA_M[7]));
    AX1D un1_ACCUMULATOR_0_ACCUM_m16 (.A(
        \un1_ACCUMULATOR_0.ACCUM_m15_0_1 ), .B(
        \un1_ACCUMULATOR_0.ACCUM_m15_0_2 ), .C(
        \un1_ACCUMULATOR_0.N_36 ), .Y(ACCUM_m16));
    DFN1E1P0 \STKPTR[7]  (.D(N_846), .CLK(PCLK), .PRE(PRESETN), .E(
        STKPTRe), .Q(\STKPTR[7]_net_1 ));
    NOR2A \un1_ACCUMULATOR_0_ACCUM_NEXT_a5[4]  (.A(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_a5_0[4] ), .B(N_534), .Y(
        \ACCUM_NEXT_a5[4] ));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT_5[5]  (.A(N_505), .B(PRDATA_M[5])
        , .S(\UROM.INSTR_CMD_0[1]_net_1 ), .Y(N_545));
    MX2 \un1_ACCUMULATOR_0_ACCUM_IN[1]  (.A(\UROM.INSTR_DATA[1]_net_1 )
        , .B(\RAMRDATA[1] ), .S(\un7_MUXIR[0] ), .Y(\ACCUM_IN[1] ));
    AND3 un37_SMADDR_I_19 (.A(\un37_SMADDR.U1.DWACT_FINC_E[0] ), .B(
        \un37_SMADDR.U1.DWACT_FINC_E[2] ), .C(\SMADDR[6]_net_1 ), .Y(
        \un37_SMADDR.N_6 ));
    AO1 \un1_ACCUMULATOR_0_xhdl_41.flagvalue_1  (.A(ACCUM_ZERO_1), .B(
        \UROM.INSTR_DATA[1]_net_1 ), .C(
        \un1_ACCUMULATOR_0.xhdl_41.flagvalue_0 ), .Y(
        \un1_ACCUMULATOR_0.xhdl_41.flagvalue_1 ));
    NOR2A un1_ACCUMULATOR_0_un1_ICYCLE_11_0_a2_0_0 (.A(
        \UROM.INSTR_CMD[0]_net_1 ), .B(\ICYCLE[1]_net_1 ), .Y(
        \un1_ACCUMULATOR_0.un1_ICYCLE_11_0_a2_0_0 ));
    NOR3B \un1_ACCUMULATOR_0_ACCUM_NEXT_a2[4]  (.A(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_a2_1[4] ), .B(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_a2_0[4] ), .C(ACCUM_NEXT_sn_N_13)
        , .Y(\ACCUM_NEXT_a2[4] ));
    XNOR2 \un1_ACCUMULATOR_0_RAMWDATA_0_i_m2[0]  (.A(DOISR_net_1), .B(
        \SMADDR[0]_net_1 ), .Y(N_122));
    MX2 \un17_ZREGISTER_RAMWDATA_0[7]  (.A(I_20), .B(\SMADDR[7]_net_1 )
        , .S(DOISR_0_net_1), .Y(N_456));
    AO1 un1_ACCUMULATOR_0_ACCUMULATOR4 (.A(d_m7_0_a5_2_0), .B(
        PENABLE_M), .C(STBACCUM_net_1), .Y(ACCUMULATOR4));
    DFN1E1C0 ISR (.D(N_166), .CLK(PCLK), .CLR(
        \genblk2.RSTSYNC2_0_net_1 ), .E(un1_DOISR_0_sqmuxa), .Q(INTACT)
        );
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT_4[5]  (.A(IO_IN[5]), .B(
        \ACCUM_IN[5] ), .S(ACCUM_NEXT_sn_N_7), .Y(N_535));
    NOR2A \un1_ACCUMULATOR_0_SMADDR_21_1[5]  (.A(I_14), .B(DOISR_net_1)
        , .Y(N_427));
    DFN1E0P0 \SMADDR[11]  (.D(\SMADDR_21[11] ), .CLK(PCLK), .PRE(
        PRESETN), .E(un1_ICYCLE_6), .Q(\SMADDR[11]_net_1 ));
    MX2 un1_ACCUMULATOR_0_STKPTR_40 (.A(\STKPTR[1]_net_1 ), .B(I_5_0), 
        .S(STKPTR_2_sqmuxa), .Y(N_611));
    MX2B \un1_ACCUMULATOR_0_ACCUM_NEXT_0[7]  (.A(\ACCUM_NEXT_0_d[7] ), 
        .B(\UROM.INSTR_CMD_RNIDL217[1]_net_1 ), .S(\ACCUM_NEXT_0_s[7] )
        , .Y(\ACCUM_NEXT[7] ));
    DFN1 \UROM.INSTR_CMD[1]  (.D(\UROM.UROM.N_7 ), .CLK(PCLK), .Q(
        \UROM.INSTR_CMD[1]_net_1 ));
    NOR3C \un1_ACCUMULATOR_0_ACCUM_NEXT_2_a0[1]  (.A(
        \un1_ACCUMULATOR_0.ACCUM_NEXT_2_a0_1[0] ), .B(
        \UROM.INSTR_CMD_0[1]_net_1 ), .C(\RAMRDATA[1] ), .Y(
        \ACCUM_NEXT_2_a0[1] ));
    DFN1 \UROM.INSTR_CMD[2]  (.D(\UROM.UROM.N_16 ), .CLK(PCLK), .Q(
        \UROM.INSTR_CMD[2]_net_1 ));
    AO18 un17_ZREGISTER_m10 (.A(\ZREGISTER[3]_net_1 ), .B(
        \un17_ZREGISTER.i4_mux ), .C(PWDATA_M[3]), .Y(
        \un17_ZREGISTER.i6_mux ));
    MX2 \un1_ACCUMULATOR_0_RAMWDATA_0_i_m2[4]  (.A(I_12), .B(
        \SMADDR[4]_net_1 ), .S(DOISR_0_net_1), .Y(N_119));
    MX2 \un1_ACCUMULATOR_0_ACCUM_NEXT_7[3]  (.A(N_533), .B(N_552), .S(
        ACCUM_NEXT_sn_N_15_mux), .Y(N_562));
    NOR3B un1_ACCUMULATOR_0_STKPTR_2_sqmuxa_0_a2_1 (.A(
        \UROM.INSTR_SCMD[0]_net_1 ), .B(\UROM.INSTR_SCMD_0[2]_net_1 ), 
        .C(\UROM.INSTR_SCMD_0[1]_net_1 ), .Y(
        \un1_ACCUMULATOR_0.STKPTR_2_sqmuxa_0_a2_1 ));
    NOR2B \un1_ACCUMULATOR_0_ACCUM_IN_a1[5]  (.A(\RAMRDATA[5] ), .B(
        PADDR_M[12]), .Y(\un1_ACCUMULATOR_0.un1_ACCUMULATOR_v_0_0[4] ));
    NOR2A \un1_ACCUMULATOR_0_un1_ACCUMULATOR_v_0[0]  (.A(
        \ACCUM_IN_0[1] ), .B(\xhdl_31.ALUOUT22_0 ), .Y(
        \un1_ACCUM_IN_0[1] ));
    
endmodule


module Minimal_SoC_CoreUARTapb_0_Clock_gen_0s_0s(
       CUARTl0OI,
       CUARTO1OI,
       CUARTll,
       CUARTIl,
       COREABC_0_PRESETN,
       SYSCLK_c,
       CUARTIl_0
    );
input  [7:0] CUARTl0OI;
input  [7:3] CUARTO1OI;
output CUARTll;
output CUARTIl;
input  COREABC_0_PRESETN;
input  SYSCLK_c;
output CUARTIl_0;

    wire CUARTO08, CUARTO08_0, CUARTO08_10_2, CUARTO08_3, CUARTO0_c3, 
        CUARTO0_25_0, \CUARTO0[11] , CUARTO0_c10, CUARTO0_15_0, 
        \CUARTO0[6] , CUARTO0_c5, N_18, \CUARTO0[1] , CUARTO0_c1, 
        \CUARTO0[0] , N_20, \CUARTO0[2] , CUARTO0_c2, N_22, 
        \CUARTO0[3] , N_31, N_32, \CUARTO0[8] , CUARTO0_c8, N_34, 
        \CUARTO0[9] , CUARTO0_c9, N_36, \CUARTO0[10] , 
        \CUARTO0_RNO[1] , \CUARTO0_RNO[2] , \CUARTO0_RNO[3] , 
        \CUARTO0_RNO[8] , \CUARTO0_RNO[9] , \CUARTO0_RNO[10] , 
        \CUARTO0_RNO[12] , N_40, \CUARTO0_RNO[11] , N_38, 
        \CUARTO0_RNO[7] , N_30, \CUARTO0_RNO[6] , N_28, 
        \CUARTO0_RNO[5] , CUARTO0_c4, N_26, \CUARTO0_RNO[4] , N_24, 
        \CUARTO0[12] , \CUARTO0[7] , \CUARTO0[5] , \CUARTO0[4] , 
        CUARTO08_2, CUARTO08_10_1, CUARTl05, \CUARTO1[2]_net_1 , 
        \CUARTO1[3]_net_1 , CUARTO1_c1, CUARTO1_e0, \CUARTO1[0]_net_1 , 
        \CUARTO1[1]_net_1 , CUARTO1_n1, CUARTO1_n2, CUARTO1_n3, 
        \CUARTO0_RNO[0] , CUARTl0_net_1, GND, VCC;
    
    MX2 \genblk1.CUARTO0_RNO_0[10]  (.A(\CUARTO0[10] ), .B(
        CUARTO1OI[5]), .S(CUARTO08_0), .Y(N_36));
    NOR3C CUARTl0_RNO (.A(\CUARTO1[2]_net_1 ), .B(\CUARTO1[3]_net_1 ), 
        .C(CUARTO1_c1), .Y(CUARTl05));
    OR2 \genblk1.CUARTO0_RNI0RQH1[10]  (.A(CUARTO0_c9), .B(
        \CUARTO0[10] ), .Y(CUARTO0_c10));
    OR2 \genblk1.CUARTO0_RNI8TLK[4]  (.A(\CUARTO0[4] ), .B(CUARTO0_c3), 
        .Y(CUARTO0_c4));
    AX1B \genblk1.CUARTO0_RNO[7]  (.A(CUARTO08), .B(CUARTO0_15_0), .C(
        N_30), .Y(\CUARTO0_RNO[7] ));
    OR2 \genblk1.CUARTO0_RNIUEHG[3]  (.A(\CUARTO0[3] ), .B(CUARTO0_c2), 
        .Y(CUARTO0_c3));
    NOR3B \genblk1.CUARTO0_RNIHBN22_0[9]  (.A(CUARTO08_10_2), .B(
        CUARTO08_3), .C(CUARTO0_c3), .Y(CUARTO08_0));
    DFN1C0 \genblk1.CUARTI0  (.D(CUARTO08), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .Q(CUARTIl));
    AX1B \genblk1.CUARTO0_RNO[3]  (.A(CUARTO08), .B(CUARTO0_c2), .C(
        N_22), .Y(\CUARTO0_RNO[3] ));
    OR2 \genblk1.CUARTO0_RNIL1DC[2]  (.A(\CUARTO0[2] ), .B(CUARTO0_c1), 
        .Y(CUARTO0_c2));
    OR2 \genblk1.CUARTO0_RNI9KC91[9]  (.A(CUARTO0_c8), .B(\CUARTO0[9] )
        , .Y(CUARTO0_c9));
    DFN1C0 \genblk1.CUARTO0[9]  (.D(\CUARTO0_RNO[9] ), .CLK(SYSCLK_c), 
        .CLR(COREABC_0_PRESETN), .Q(\CUARTO0[9] ));
    DFN1E1C0 \CUARTO1[1]  (.D(CUARTO1_n1), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(CUARTIl_0), .Q(\CUARTO1[1]_net_1 ));
    AX1B \genblk1.CUARTO0_RNO[10]  (.A(CUARTO08), .B(CUARTO0_c9), .C(
        N_36), .Y(\CUARTO0_RNO[10] ));
    VCC VCC_i (.Y(VCC));
    OR2 \genblk1.CUARTO0_RNO_0[12]  (.A(\CUARTO0[11] ), .B(CUARTO0_c10)
        , .Y(CUARTO0_25_0));
    MX2 \genblk1.CUARTO0_RNO_0[9]  (.A(\CUARTO0[9] ), .B(CUARTO1OI[4]), 
        .S(CUARTO08_0), .Y(N_34));
    XOR2 \CUARTO1_RNO[1]  (.A(\CUARTO1[1]_net_1 ), .B(
        \CUARTO1[0]_net_1 ), .Y(CUARTO1_n1));
    MX2 \genblk1.CUARTO0_RNO_0[8]  (.A(\CUARTO0[8] ), .B(CUARTO1OI[3]), 
        .S(CUARTO08_0), .Y(N_32));
    XOR2 \CUARTO1_RNO[2]  (.A(CUARTO1_c1), .B(\CUARTO1[2]_net_1 ), .Y(
        CUARTO1_n2));
    DFN1C0 \genblk1.CUARTO0[6]  (.D(\CUARTO0_RNO[6] ), .CLK(SYSCLK_c), 
        .CLR(COREABC_0_PRESETN), .Q(\CUARTO0[6] ));
    OR2 \genblk1.CUARTO0_RNO_0[7]  (.A(\CUARTO0[6] ), .B(CUARTO0_c5), 
        .Y(CUARTO0_15_0));
    MX2 \genblk1.CUARTO0_RNO_0[4]  (.A(\CUARTO0[4] ), .B(CUARTl0OI[4]), 
        .S(CUARTO08_0), .Y(N_24));
    DFN1E1C0 \CUARTO1[3]  (.D(CUARTO1_n3), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(CUARTIl_0), .Q(\CUARTO1[3]_net_1 ));
    AX1B \genblk1.CUARTO0_RNO[1]  (.A(CUARTO08_0), .B(\CUARTO0[0] ), 
        .C(N_18), .Y(\CUARTO0_RNO[1] ));
    DFN1C0 \genblk1.CUARTO0[1]  (.D(\CUARTO0_RNO[1] ), .CLK(SYSCLK_c), 
        .CLR(COREABC_0_PRESETN), .Q(\CUARTO0[1] ));
    AX1B \genblk1.CUARTO0_RNO[11]  (.A(CUARTO08), .B(CUARTO0_c10), .C(
        N_38), .Y(\CUARTO0_RNO[11] ));
    MX2 \genblk1.CUARTO0_RNO_0[3]  (.A(\CUARTO0[3] ), .B(CUARTl0OI[3]), 
        .S(CUARTO08), .Y(N_22));
    NOR2 \genblk1.CUARTO0_RNILT88[4]  (.A(\CUARTO0[5] ), .B(
        \CUARTO0[4] ), .Y(CUARTO08_10_1));
    NOR3A \genblk1.CUARTO0_RNIEVHG[7]  (.A(CUARTO08_10_1), .B(
        \CUARTO0[6] ), .C(\CUARTO0[7] ), .Y(CUARTO08_10_2));
    MX2 \genblk1.CUARTO0_RNO_0[11]  (.A(\CUARTO0[11] ), .B(
        CUARTO1OI[6]), .S(CUARTO08_0), .Y(N_38));
    DFN1C0 \genblk1.CUARTO0[7]  (.D(\CUARTO0_RNO[7] ), .CLK(SYSCLK_c), 
        .CLR(COREABC_0_PRESETN), .Q(\CUARTO0[7] ));
    AX1B \genblk1.CUARTO0_RNO[5]  (.A(CUARTO08), .B(CUARTO0_c4), .C(
        N_26), .Y(\CUARTO0_RNO[5] ));
    NOR2B CUARTl0_RNI1LGP (.A(CUARTl0_net_1), .B(CUARTIl), .Y(CUARTll));
    GND GND_i (.Y(GND));
    OR2 \genblk1.CUARTO0_RNIDL88[1]  (.A(\CUARTO0[1] ), .B(
        \CUARTO0[0] ), .Y(CUARTO0_c1));
    DFN1E1C0 \CUARTO1[2]  (.D(CUARTO1_n2), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(CUARTIl_0), .Q(\CUARTO1[2]_net_1 ));
    OR3A \genblk1.CUARTO0_RNO_1[8]  (.A(CUARTO08_10_2), .B(CUARTO0_c3), 
        .C(CUARTO08_0), .Y(N_31));
    MX2A \genblk1.CUARTO0_RNO[0]  (.A(\CUARTO0[0] ), .B(CUARTl0OI[0]), 
        .S(CUARTO08_0), .Y(\CUARTO0_RNO[0] ));
    OR3A \genblk1.CUARTO0_RNIQ0851[8]  (.A(CUARTO08_10_2), .B(
        CUARTO0_c3), .C(\CUARTO0[8] ), .Y(CUARTO0_c8));
    OR2 \genblk1.CUARTO0_RNIJCQO[5]  (.A(CUARTO0_c4), .B(\CUARTO0[5] ), 
        .Y(CUARTO0_c5));
    DFN1C0 \genblk1.CUARTO0[2]  (.D(\CUARTO0_RNO[2] ), .CLK(SYSCLK_c), 
        .CLR(COREABC_0_PRESETN), .Q(\CUARTO0[2] ));
    MX2 \genblk1.CUARTO0_RNO_0[5]  (.A(\CUARTO0[5] ), .B(CUARTl0OI[5]), 
        .S(CUARTO08_0), .Y(N_26));
    NOR3B \genblk1.CUARTO0_RNIHBN22[9]  (.A(CUARTO08_10_2), .B(
        CUARTO08_3), .C(CUARTO0_c3), .Y(CUARTO08));
    AX1C \CUARTO1_RNO[3]  (.A(\CUARTO1[2]_net_1 ), .B(CUARTO1_c1), .C(
        \CUARTO1[3]_net_1 ), .Y(CUARTO1_n3));
    MX2 \genblk1.CUARTO0_RNO_0[1]  (.A(\CUARTO0[1] ), .B(CUARTl0OI[1]), 
        .S(CUARTO08), .Y(N_18));
    AX1B \genblk1.CUARTO0_RNO[9]  (.A(CUARTO08), .B(CUARTO0_c8), .C(
        N_34), .Y(\CUARTO0_RNO[9] ));
    DFN1C0 \genblk1.CUARTO0[12]  (.D(\CUARTO0_RNO[12] ), .CLK(SYSCLK_c)
        , .CLR(COREABC_0_PRESETN), .Q(\CUARTO0[12] ));
    MX2 \genblk1.CUARTO0_RNO_1[12]  (.A(\CUARTO0[12] ), .B(
        CUARTO1OI[7]), .S(CUARTO08_0), .Y(N_40));
    XOR2 \CUARTO1_RNO[0]  (.A(\CUARTO1[0]_net_1 ), .B(CUARTIl), .Y(
        CUARTO1_e0));
    MX2 \genblk1.CUARTO0_RNO_0[2]  (.A(\CUARTO0[2] ), .B(CUARTl0OI[2]), 
        .S(CUARTO08), .Y(N_20));
    AX1B \genblk1.CUARTO0_RNO[12]  (.A(CUARTO08), .B(CUARTO0_25_0), .C(
        N_40), .Y(\CUARTO0_RNO[12] ));
    DFN1E1C0 CUARTl0 (.D(CUARTl05), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(CUARTIl_0), .Q(CUARTl0_net_1));
    NOR3A \genblk1.CUARTO0_RNI5TJ11[9]  (.A(CUARTO08_2), .B(
        \CUARTO0[9] ), .C(\CUARTO0[11] ), .Y(CUARTO08_3));
    MX2 \genblk1.CUARTO0_RNO_1[7]  (.A(\CUARTO0[7] ), .B(CUARTl0OI[7]), 
        .S(CUARTO08_0), .Y(N_30));
    XNOR2 \genblk1.CUARTO0_RNO[8]  (.A(N_32), .B(N_31), .Y(
        \CUARTO0_RNO[8] ));
    AX1B \genblk1.CUARTO0_RNO[6]  (.A(CUARTO08), .B(CUARTO0_c5), .C(
        N_28), .Y(\CUARTO0_RNO[6] ));
    DFN1C0 \genblk1.CUARTO0[8]  (.D(\CUARTO0_RNO[8] ), .CLK(SYSCLK_c), 
        .CLR(COREABC_0_PRESETN), .Q(\CUARTO0[8] ));
    NOR2B \CUARTO1_RNIBUIS[1]  (.A(\CUARTO1[1]_net_1 ), .B(
        \CUARTO1[0]_net_1 ), .Y(CUARTO1_c1));
    DFN1C0 \genblk1.CUARTO0[4]  (.D(\CUARTO0_RNO[4] ), .CLK(SYSCLK_c), 
        .CLR(COREABC_0_PRESETN), .Q(\CUARTO0[4] ));
    MX2 \genblk1.CUARTO0_RNO_0[6]  (.A(\CUARTO0[6] ), .B(CUARTl0OI[6]), 
        .S(CUARTO08_0), .Y(N_28));
    DFN1C0 \genblk1.CUARTO0[11]  (.D(\CUARTO0_RNO[11] ), .CLK(SYSCLK_c)
        , .CLR(COREABC_0_PRESETN), .Q(\CUARTO0[11] ));
    DFN1C0 \genblk1.CUARTI0_0  (.D(CUARTO08), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .Q(CUARTIl_0));
    NOR3 \genblk1.CUARTO0_RNIU11L[12]  (.A(\CUARTO0[10] ), .B(
        \CUARTO0[12] ), .C(\CUARTO0[8] ), .Y(CUARTO08_2));
    AX1B \genblk1.CUARTO0_RNO[2]  (.A(CUARTO08_0), .B(CUARTO0_c1), .C(
        N_20), .Y(\CUARTO0_RNO[2] ));
    DFN1C0 \genblk1.CUARTO0[5]  (.D(\CUARTO0_RNO[5] ), .CLK(SYSCLK_c), 
        .CLR(COREABC_0_PRESETN), .Q(\CUARTO0[5] ));
    DFN1C0 \genblk1.CUARTO0[0]  (.D(\CUARTO0_RNO[0] ), .CLK(SYSCLK_c), 
        .CLR(COREABC_0_PRESETN), .Q(\CUARTO0[0] ));
    DFN1C0 \CUARTO1[0]  (.D(CUARTO1_e0), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .Q(\CUARTO1[0]_net_1 ));
    AX1B \genblk1.CUARTO0_RNO[4]  (.A(CUARTO08), .B(CUARTO0_c3), .C(
        N_24), .Y(\CUARTO0_RNO[4] ));
    DFN1C0 \genblk1.CUARTO0[10]  (.D(\CUARTO0_RNO[10] ), .CLK(SYSCLK_c)
        , .CLR(COREABC_0_PRESETN), .Q(\CUARTO0[10] ));
    DFN1C0 \genblk1.CUARTO0[3]  (.D(\CUARTO0_RNO[3] ), .CLK(SYSCLK_c), 
        .CLR(COREABC_0_PRESETN), .Q(\CUARTO0[3] ));
    
endmodule


module Minimal_SoC_CoreUARTapb_0_Rx_async_0s_0s_0s_1s_2s_3s(
       CUARTOIII,
       CUARTO1OI,
       RX_c,
       OVERFLOW,
       FRAMING_ERR,
       CUARTI00,
       COREABC_0_PRESETN,
       SYSCLK_c,
       un1_CUARTOOl,
       CUARTllI,
       N_85,
       COREABC_0_APB3master_PWRITE,
       N_91_mux,
       CUARTIl_0,
       CoreAPB3_0_APBmslave1_PSELx,
       PARITY_ERR,
       COREABC_0_APB3master_PENABLE,
       CUARTIl
    );
output [7:0] CUARTOIII;
input  [2:0] CUARTO1OI;
input  RX_c;
output OVERFLOW;
output FRAMING_ERR;
output CUARTI00;
input  COREABC_0_PRESETN;
input  SYSCLK_c;
input  un1_CUARTOOl;
output CUARTllI;
input  N_85;
input  COREABC_0_APB3master_PWRITE;
output N_91_mux;
input  CUARTIl_0;
input  CoreAPB3_0_APBmslave1_PSELx;
output PARITY_ERR;
input  COREABC_0_APB3master_PENABLE;
input  CUARTIl;

    wire N_323, N_93, N_94, CUARTll0_0_sqmuxa, N_34, CUARTIlIl_e1_i_0, 
        N_32, CUARTIlIl_e2_i_0, N_30, CUARTIlIl_e3_i_0, N_78, 
        \CUARTll0[0]_net_1 , \CUARTll0[1]_net_1 , N_73_mux, N_36, 
        \CUARTIlIl_i_0[0] , N_409_i, N_409, m6_0, \CUARTIlIl[1]_net_1 , 
        N_71_mux, N_88, N_59, \CUARTIlIl[2]_net_1 , 
        \CUARTll0_ns_i_a2_0_0[1] , CUARTll019_i, 
        \CUARTll0_ns_i_a2_0_a3_0[1] , m63_0, N_67, 
        \CUARTO0Il_11_i_0[6] , \CUARTO0Il[7]_net_1 , 
        \CUARTO0Il_11_i_0[7] , N_101, CUARTOOll_0_sqmuxa_0_a4_0_a3_0, 
        N_94_1, N_71, CUARTI11_12_iv_0_a2_0_1, \CUARTl0Il[2]_net_1 , 
        \CUARTl0Il[3]_net_1 , CUARTll019_NE_1, \CUARTIOll[2]_net_1 , 
        CUARTll019_0, CUARTll019_NE_0, \CUARTl0Il[1]_net_1 , 
        \CUARTIOll[1]_net_1 , CUARTll019_3, CUARTIlIl_e3_i_o2_0, 
        m20_e_0, \CUARTIlIl[3]_net_1 , m42_1, m42_0, m32_e_0_a2_0, 
        N_401, N_22_0, N_44, N_98, N_99, CUARTOOll_0_sqmuxa, N_117, 
        i6_mux, N_404, N_100, N_80, N_94_3, N_405, N_111, N_413, N_105, 
        N_58, N_411, CUARTI115, N_71_i_i, CUARTI0Il_net_1, 
        CUARTlOl_1_sqmuxa, N_67_mux, \CUARTlOl_2[7] , N_400, N_46, 
        \CUARTIOll[3]_net_1 , \CUARTIOll[0]_net_1 , 
        \CUARTl0Il[0]_net_1 , \CUARTO0Il_11[2] , \CUARTO0Il[3]_net_1 , 
        \CUARTO0Il_11[1] , \CUARTO0Il[2]_net_1 , \CUARTO0Il_11[0] , 
        \CUARTO0Il[1]_net_1 , CUARTI11_12, CUARTI1115, N_408, N_107, 
        N_407, CUARTI01_0_sqmuxa, N_406, CUARTl1Il_net_1, 
        CUARTOOll_net_1, N_79, N_74_mux, i9_mux, i10_mux, 
        CUARTO1Il_1_sqmuxa, CUARTl1Il_4, CUARTl0Ile, N_7, N_54, 
        CUARTl0Il_n1, CUARTl0Il_n2, CUARTl0Il_n3, \CUARTO0Il_11[5] , 
        \CUARTO0Il[6]_net_1 , \CUARTO0Il_11[4] , \CUARTO0Il[5]_net_1 , 
        \CUARTO0Il_11[3] , \CUARTO0Il[4]_net_1 , CUARTOOll_2_sqmuxa, 
        N_15_0, \CUARTI1Il[0]_net_1 , N_80_mux, \CUARTI1Il[2]_net_1 , 
        \CUARTI1Il[1]_net_1 , i7_mux_1, i6_mux_0, N_70, 
        \CUARTO0Il[8]_net_1 , N_42, N_415, \CUARTO0Il[0]_net_1 , GND, 
        VCC;
    
    NOR2A \CUARTO1ll.CUARTI0I_8_CUARTlIll.CUARTIlIl8_i_i_0_a3_0_0  (.A(
        \CUARTIlIl[2]_net_1 ), .B(\CUARTIlIl[3]_net_1 ), .Y(m20_e_0));
    NOR2B \CUARTO1ll.CUARTI0I_8_m54  (.A(N_67_mux), .B(CUARTllI), .Y(
        CUARTl1Il_4));
    DFN1E0C0 CUARTO1Il (.D(un1_CUARTOOl), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(CUARTO1Il_1_sqmuxa), .Q(CUARTllI));
    NOR3A \CUARTO1ll.CUARTI0I_8_m32_0_a2  (.A(m32_e_0_a2_0), .B(
        \CUARTl0Il[2]_net_1 ), .C(\CUARTl0Il[0]_net_1 ), .Y(CUARTI1115)
        );
    MAJ3 \CUARTO1ll.CUARTI0I_8_m13  (.A(\CUARTI1Il[2]_net_1 ), .B(
        \CUARTI1Il[0]_net_1 ), .C(\CUARTI1Il[1]_net_1 ), .Y(i6_mux));
    NOR2B \CUARTO1ll.CUARTI0I_8_CUARTl0ll.CUARTI11_12_iv_0_a3  (.A(
        N_71_i_i), .B(un1_CUARTOOl), .Y(CUARTI11_12));
    NOR2B \CUARTO1ll.CUARTI0I_8_m63_0  (.A(N_67), .B(CUARTIl), .Y(
        m63_0));
    NOR2A \CUARTO1ll.CUARTI0I_8_m32_e_0_a2_0  (.A(\CUARTl0Il[3]_net_1 )
        , .B(\CUARTl0Il[1]_net_1 ), .Y(m32_e_0_a2_0));
    AX1A \CUARTO1ll.CUARTI0I_8_CUARTIlIl_e2_i_0  (.A(N_59), .B(CUARTIl)
        , .C(\CUARTIlIl[2]_net_1 ), .Y(CUARTIlIl_e2_i_0));
    NOR2B \CUARTO1ll.CUARTI0I_8_m20_e  (.A(m20_e_0), .B(
        \CUARTIlIl_i_0[0] ), .Y(N_80));
    OA1 \CUARTO1ll.CUARTI0I_8_CUARTl0Ile_0_a4_0  (.A(N_78), .B(
        N_71_mux), .C(CUARTIl_0), .Y(CUARTl0Ile));
    XA1C \CUARTO1ll.CUARTI0I_8_m50  (.A(\CUARTl0Il[2]_net_1 ), .B(
        N_413), .C(N_78), .Y(CUARTl0Il_n2));
    AO1D \CUARTO1ll.CUARTI0I_8_CUARTO0ll.CUARTO0Il_11_i_0[7]  (.A(
        \CUARTO0Il[7]_net_1 ), .B(N_409), .C(N_101), .Y(
        \CUARTO0Il_11_i_0[7] ));
    AOI1 \CUARTO1ll.CUARTI0I_8_CUARTIlIl_e2_i  (.A(N_323), .B(CUARTIl), 
        .C(CUARTIlIl_e2_i_0), .Y(N_32));
    DFN1E1C0 \CUARTll0[0]  (.D(N_400), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(CUARTIl_0), .Q(\CUARTll0[0]_net_1 ));
    DFN1E1C0 \CUARTl0Il[3]  (.D(CUARTl0Il_n3), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(CUARTl0Ile), .Q(\CUARTl0Il[3]_net_1 ));
    NOR2 \CUARTO1ll.CUARTI0I_8_m23_0_a2  (.A(\CUARTll0[0]_net_1 ), .B(
        \CUARTll0[1]_net_1 ), .Y(N_78));
    MX2C \CUARTO1ll.CUARTI0I_8_m45  (.A(N_73_mux), .B(CUARTll019_i), 
        .S(\CUARTll0[0]_net_1 ), .Y(N_46));
    MX2 \CUARTO1ll.CUARTI0I_8_m17  (.A(i7_mux_1), .B(N_15_0), .S(N_70), 
        .Y(i6_mux_0));
    OR3 \CUARTO1ll.CUARTI0I_8_CUARTlIll.CUARTIlIl8_i_i_0  (.A(N_93), 
        .B(N_94), .C(CUARTll0_0_sqmuxa), .Y(N_323));
    AX1A \CUARTO1ll.CUARTI0I_8_CUARTIlIl_e1_i_0  (.A(
        \CUARTIlIl_i_0[0] ), .B(CUARTIl_0), .C(\CUARTIlIl[1]_net_1 ), 
        .Y(CUARTIlIl_e1_i_0));
    DFN1E1C0 \CUARTl0Il[2]  (.D(CUARTl0Il_n2), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(CUARTl0Ile), .Q(\CUARTl0Il[2]_net_1 ));
    DFN1E1C0 \CUARTlOl[5]  (.D(\CUARTO0Il[5]_net_1 ), .CLK(SYSCLK_c), 
        .CLR(COREABC_0_PRESETN), .E(CUARTlOl_1_sqmuxa), .Q(
        CUARTOIII[5]));
    NOR2B \CUARTO1ll.CUARTI0I_8_m42  (.A(m42_1), .B(m42_0), .Y(
        N_73_mux));
    NOR2B \CUARTO1ll.CUARTI0I_8_CUARTOOll_0_sqmuxa_0_a4_0_a3_1  (.A(
        \CUARTIlIl_i_0[0] ), .B(\CUARTIlIl[1]_net_1 ), .Y(N_94_1));
    NOR2A \CUARTO0Il_RNO[0]  (.A(\CUARTO0Il[1]_net_1 ), .B(N_78), .Y(
        \CUARTO0Il_11[0] ));
    DFN1C0 \CUARTIlIl[2]  (.D(N_32), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .Q(\CUARTIlIl[2]_net_1 ));
    NOR2B \CUARTO1ll.CUARTI0I_8_m44  (.A(N_73_mux), .B(N_78), .Y(
        CUARTll0_0_sqmuxa));
    DFN1E1C0 CUARTl1Il (.D(CUARTl1Il_4), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(CUARTIl_0), .Q(CUARTl1Il_net_1));
    DFN1E1C0 CUARTI0Il (.D(N_42), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(CUARTIl_0), .Q(CUARTI0Il_net_1));
    OA1B \CUARTO1ll.CUARTI0I_8_CUARTO0ll.CUARTO0Il_11_i[6]  (.A(i6_mux)
        , .B(N_409), .C(\CUARTO0Il_11_i_0[6] ), .Y(N_405));
    NOR2B \CUARTO1ll.CUARTI0I_8_CUARTOOll_0_sqmuxa_0_a4_0_a3_0  (.A(
        N_94_1), .B(N_71), .Y(CUARTOOll_0_sqmuxa_0_a4_0_a3_0));
    AO1A \CUARTO1ll.CUARTI0I_8_CUARTO0ll.CUARTO0Il_11_i_0[6]  (.A(
        \CUARTO0Il[7]_net_1 ), .B(N_409), .C(N_78), .Y(
        \CUARTO0Il_11_i_0[6] ));
    GND GND_i (.Y(GND));
    NOR2B \CUARTO1ll.CUARTI0I_8_CUARTll0_ns_i_a2_0_a3_0_0[1]  (.A(
        \CUARTll0[0]_net_1 ), .B(\CUARTll0[1]_net_1 ), .Y(
        \CUARTll0_ns_i_a2_0_a3_0[1] ));
    NOR2A \CUARTO0Il_RNO[5]  (.A(\CUARTO0Il[6]_net_1 ), .B(N_78), .Y(
        \CUARTO0Il_11[5] ));
    DFN1E1C0 \CUARTlOl[0]  (.D(\CUARTO0Il[0]_net_1 ), .CLK(SYSCLK_c), 
        .CLR(COREABC_0_PRESETN), .E(CUARTlOl_1_sqmuxa), .Q(
        CUARTOIII[0]));
    AOI1 \CUARTO1ll.CUARTI0I_8_CUARTll0_ns_i_a2_0[1]  (.A(
        \CUARTll0_ns_i_a2_0_a3_0[1] ), .B(N_22_0), .C(
        \CUARTll0_ns_i_a2_0_0[1] ), .Y(N_401));
    NOR2A \CUARTO0Il_RNO[3]  (.A(\CUARTO0Il[4]_net_1 ), .B(N_78), .Y(
        \CUARTO0Il_11[3] ));
    XOR2 \CUARTIOll_RNIDG28[0]  (.A(\CUARTIOll[0]_net_1 ), .B(
        \CUARTl0Il[0]_net_1 ), .Y(CUARTll019_0));
    OR2B \CUARTO1ll.CUARTI0I_8_m33_i_o3  (.A(\CUARTl0Il[1]_net_1 ), .B(
        \CUARTl0Il[0]_net_1 ), .Y(N_413));
    DFN1E1C0 \CUARTO0Il[1]  (.D(\CUARTO0Il_11[1] ), .CLK(SYSCLK_c), 
        .CLR(COREABC_0_PRESETN), .E(CUARTl0Ile), .Q(
        \CUARTO0Il[1]_net_1 ));
    NOR3B \CUARTO1ll.CUARTI0I_8_CUARTOOll_0_sqmuxa_0_a4_0_a3  (.A(
        N_117), .B(CUARTOOll_0_sqmuxa_0_a4_0_a3_0), .C(i6_mux), .Y(
        CUARTOOll_0_sqmuxa));
    OR2A \CUARTO1ll.CUARTI0I_8_CUARTI11_1_sqmuxa_i  (.A(un1_CUARTOOl), 
        .B(N_105), .Y(N_406));
    NOR2 \CUARTO1ll.CUARTI0I_8_m15  (.A(\CUARTI1Il[1]_net_1 ), .B(
        \CUARTIlIl[1]_net_1 ), .Y(i7_mux_1));
    XA1C \CUARTO1ll.CUARTI0I_8_CUARTI0ll.CUARTI0Il_4_iv_i  (.A(
        CUARTI0Il_net_1), .B(N_415), .C(N_117), .Y(N_42));
    NOR2B \CUARTlOl_RNO[7]  (.A(\CUARTO0Il[7]_net_1 ), .B(CUARTO1OI[0])
        , .Y(\CUARTlOl_2[7] ));
    XOR2 \CUARTO1ll.CUARTI0I_8_m12  (.A(\CUARTI1Il[2]_net_1 ), .B(
        \CUARTI1Il[1]_net_1 ), .Y(N_70));
    VCC VCC_i (.Y(VCC));
    OR2A \CUARTO1ll.CUARTI0I_8_CUARTO11_1_sqmuxa_i  (.A(un1_CUARTOOl), 
        .B(N_107), .Y(N_408));
    XNOR2 \CUARTO1ll.CUARTI0I_8_m59  (.A(CUARTO1OI[1]), .B(
        CUARTO1OI[0]), .Y(N_79));
    DFN1P0 \CUARTIlIl[0]  (.D(N_36), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .Q(\CUARTIlIl_i_0[0] ));
    MX2C \CUARTO1ll.CUARTI0I_8_m46  (.A(N_46), .B(N_22_0), .S(
        \CUARTll0[1]_net_1 ), .Y(N_400));
    NOR3A CUARTI11_RNIB8N73 (.A(m6_0), .B(COREABC_0_APB3master_PWRITE), 
        .C(N_85), .Y(N_91_mux));
    NOR2 \CUARTO1ll.CUARTI0I_8_m14  (.A(\CUARTI1Il[0]_net_1 ), .B(
        \CUARTIlIl[1]_net_1 ), .Y(N_15_0));
    OA1B \CUARTO1ll.CUARTI0I_8_CUARTIlIl_e3_i_a3  (.A(N_59), .B(
        CUARTIlIl_e3_i_o2_0), .C(\CUARTIlIl[3]_net_1 ), .Y(N_88));
    NOR2A \CUARTO0Il_RNO[4]  (.A(\CUARTO0Il[5]_net_1 ), .B(N_78), .Y(
        \CUARTO0Il_11[4] ));
    NOR3B \CUARTO1ll.CUARTI0I_8_m58  (.A(m32_e_0_a2_0), .B(
        \CUARTl0Il[0]_net_1 ), .C(\CUARTl0Il[2]_net_1 ), .Y(N_74_mux));
    DFN1E1P0 \CUARTI1Il[0]  (.D(\CUARTI1Il[1]_net_1 ), .CLK(SYSCLK_c), 
        .PRE(COREABC_0_PRESETN), .E(CUARTIl_0), .Q(
        \CUARTI1Il[0]_net_1 ));
    NOR2A \CUARTO1ll.CUARTI0I_8_m9  (.A(N_71), .B(N_59), .Y(N_71_mux));
    DFN1E1C0 \CUARTIOll[1]  (.D(N_409_i), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(CUARTll0_0_sqmuxa), .Q(
        \CUARTIOll[1]_net_1 ));
    NOR3C \CUARTO1ll.CUARTI0I_8_CUARTlIll.CUARTIlIl8_i_i_0_a3_0  (.A(
        N_94_1), .B(m20_e_0), .C(N_94_3), .Y(N_94));
    MX2 \CUARTO1ll.CUARTI0I_8_m60  (.A(CUARTI1115), .B(i10_mux), .S(
        N_79), .Y(i9_mux));
    OR2B \CUARTO1ll.CUARTI0I_8_CUARTI11_1_sqmuxa_i_o2  (.A(N_71_mux), 
        .B(CUARTO1OI[1]), .Y(N_411));
    NOR2A \CUARTO0Il_RNO[1]  (.A(\CUARTO0Il[2]_net_1 ), .B(N_78), .Y(
        \CUARTO0Il_11[1] ));
    DFN1E1C0 \CUARTO0Il[4]  (.D(\CUARTO0Il_11[4] ), .CLK(SYSCLK_c), 
        .CLR(COREABC_0_PRESETN), .E(CUARTl0Ile), .Q(
        \CUARTO0Il[4]_net_1 ));
    NOR2B \CUARTO1ll.CUARTI0I_8_CUARTOOll_0_sqmuxa_0_a4_0_a3_2  (.A(
        \CUARTIlIl[3]_net_1 ), .B(\CUARTIlIl[2]_net_1 ), .Y(N_71));
    AOI1 \CUARTO1ll.CUARTI0I_8_CUARTO0ll.CUARTO0Il_11_i_a3[8]  (.A(
        CUARTO1OI[1]), .B(CUARTO1OI[0]), .C(\CUARTO0Il[8]_net_1 ), .Y(
        N_98));
    DFN1E1C0 CUARTOOll (.D(CUARTOOll_0_sqmuxa), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(CUARTIl_0), .Q(CUARTOOll_net_1));
    OR2 \CUARTO1ll.CUARTI0I_8_CUARTO0ll.CUARTO0Il_11_i_o2[6]  (.A(
        CUARTO1OI[1]), .B(CUARTO1OI[0]), .Y(N_409));
    NOR3B \CUARTO1ll.CUARTI0I_8_CUARTI11_1_sqmuxa_i_a3  (.A(N_58), .B(
        CUARTIl), .C(N_411), .Y(N_105));
    NOR3 \CUARTO1ll.CUARTI0I_8_CUARTO0ll.CUARTO0Il_11_i[7]  (.A(
        \CUARTO0Il_11_i_0[7] ), .B(N_78), .C(N_100), .Y(N_404));
    NOR2 \CUARTO1ll.CUARTI0I_8_m53  (.A(\CUARTl0Il[0]_net_1 ), .B(N_78)
        , .Y(N_54));
    INV \CUARTO1ll.CUARTI0I_8_N_409_i  (.A(N_409), .Y(N_409_i));
    DFN1E1C0 \CUARTO0Il[5]  (.D(\CUARTO0Il_11[5] ), .CLK(SYSCLK_c), 
        .CLR(COREABC_0_PRESETN), .E(CUARTl0Ile), .Q(
        \CUARTO0Il[5]_net_1 ));
    AOI1 \CUARTO1ll.CUARTI0I_8_CUARTIlIl_e1_i  (.A(N_323), .B(CUARTIl), 
        .C(CUARTIlIl_e1_i_0), .Y(N_34));
    AXO1 \CUARTO1ll.CUARTI0I_8_CUARTIlIl_e0_i  (.A(N_323), .B(CUARTIl), 
        .C(\CUARTIlIl_i_0[0] ), .Y(N_36));
    AO1 \CUARTO1ll.CUARTI0I_8_CUARTl0ll.CUARTI11_12_iv_0_o2  (.A(
        CUARTI1115), .B(CUARTO1OI[0]), .C(N_111), .Y(N_58));
    NOR2A \CUARTO1ll.CUARTI0I_8_m37_e  (.A(\CUARTll0[0]_net_1 ), .B(
        \CUARTll0[1]_net_1 ), .Y(N_67));
    OA1C \CUARTO1ll.CUARTI0I_8_CUARTll0_ns_i_a2_0_0[1]  (.A(
        \CUARTll0[0]_net_1 ), .B(CUARTll019_i), .C(\CUARTll0[1]_net_1 )
        , .Y(\CUARTll0_ns_i_a2_0_0[1] ));
    DFN1E1C0 \CUARTl0Il[1]  (.D(CUARTl0Il_n1), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(CUARTl0Ile), .Q(\CUARTl0Il[1]_net_1 ));
    XO1 \CUARTIOll_RNI295G[1]  (.A(\CUARTl0Il[1]_net_1 ), .B(
        \CUARTIOll[1]_net_1 ), .C(CUARTll019_3), .Y(CUARTll019_NE_0));
    OR2A \CUARTO1ll.CUARTI0I_8_un1_CUARTI0111_i  (.A(un1_CUARTOOl), .B(
        CUARTI01_0_sqmuxa), .Y(N_407));
    NOR2A \CUARTO1ll.CUARTI0I_8_m42_1  (.A(\CUARTIlIl_i_0[0] ), .B(
        \CUARTIlIl[2]_net_1 ), .Y(m42_1));
    OR2B \CUARTO1ll.CUARTI0I_8_CUARTIlIl_e3_i_o2_0  (.A(
        \CUARTIlIl[2]_net_1 ), .B(CUARTIl), .Y(CUARTIlIl_e3_i_o2_0));
    DFN1E1C0 CUARTI00_inst_1 (.D(CUARTOOll_2_sqmuxa), .CLK(SYSCLK_c), 
        .CLR(COREABC_0_PRESETN), .E(CUARTIl_0), .Q(CUARTI00));
    DFN1E1C0 CUARTI11 (.D(CUARTI11_12), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(N_406), .Q(PARITY_ERR));
    NOR3B \CUARTO1ll.CUARTI0I_8_CUARTO0ll.CUARTO0Il_11_i_a3_0[8]  (.A(
        CUARTO1OI[0]), .B(CUARTO1OI[1]), .C(i6_mux), .Y(N_99));
    DFN1E1P0 \CUARTIOll[3]  (.D(N_409), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .E(CUARTll0_0_sqmuxa), .Q(
        \CUARTIOll[3]_net_1 ));
    NOR3B \CUARTO1ll.CUARTI0I_8_m39  (.A(CUARTIl), .B(N_67_mux), .C(
        CUARTllI), .Y(CUARTlOl_1_sqmuxa));
    OR2 \CUARTIOll_RNI0EA01[1]  (.A(CUARTll019_NE_1), .B(
        CUARTll019_NE_0), .Y(CUARTll019_i));
    DFN1E1P0 \CUARTI1Il[2]  (.D(RX_c), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .E(CUARTIl_0), .Q(\CUARTI1Il[2]_net_1 ));
    DFN1E1C0 \CUARTlOl[7]  (.D(\CUARTlOl_2[7] ), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(CUARTlOl_1_sqmuxa), .Q(CUARTOIII[7]));
    AOI1 \CUARTO1ll.CUARTI0I_8_CUARTIlIl_e3_i  (.A(N_323), .B(CUARTIl), 
        .C(CUARTIlIl_e3_i_0), .Y(N_30));
    DFN1E1C0 \CUARTO0Il[0]  (.D(\CUARTO0Il_11[0] ), .CLK(SYSCLK_c), 
        .CLR(COREABC_0_PRESETN), .E(CUARTl0Ile), .Q(
        \CUARTO0Il[0]_net_1 ));
    XA1C \CUARTO1ll.CUARTI0I_8_m48  (.A(\CUARTl0Il[3]_net_1 ), .B(N_7), 
        .C(N_78), .Y(CUARTl0Il_n3));
    DFN1C0 \CUARTIlIl[1]  (.D(N_34), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .Q(\CUARTIlIl[1]_net_1 ));
    DFN1E1P0 \CUARTIOll[0]  (.D(N_79), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .E(CUARTll0_0_sqmuxa), .Q(
        \CUARTIOll[0]_net_1 ));
    NOR3 \CUARTO1ll.CUARTI0I_8_CUARTO0ll.CUARTO0Il_11_i[8]  (.A(N_78), 
        .B(N_98), .C(N_99), .Y(N_44));
    AO1 \CUARTO1ll.CUARTI0I_8_CUARTIlIl_e3_i_0  (.A(N_71_mux), .B(
        CUARTIl), .C(N_88), .Y(CUARTIlIl_e3_i_0));
    DFN1C0 \CUARTIlIl[3]  (.D(N_30), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .Q(\CUARTIlIl[3]_net_1 ));
    XOR3 \CUARTO1ll.CUARTI0I_8_CUARTl0ll.CUARTI11_12_iv_0_x2  (.A(
        CUARTO1OI[2]), .B(CUARTI0Il_net_1), .C(i6_mux), .Y(N_71_i_i));
    NOR3A \CUARTO1ll.CUARTI0I_8_CUARTl0ll.CUARTI11_12_iv_0_a2_0_1  (.A(
        \CUARTl0Il[2]_net_1 ), .B(\CUARTl0Il[3]_net_1 ), .C(
        CUARTO1OI[0]), .Y(CUARTI11_12_iv_0_a2_0_1));
    MX2B \CUARTO1ll.CUARTI0I_8_m20  (.A(i6_mux), .B(i6_mux_0), .S(N_80)
        , .Y(N_80_mux));
    DFN1E1C0 \CUARTlOl[2]  (.D(\CUARTO0Il[2]_net_1 ), .CLK(SYSCLK_c), 
        .CLR(COREABC_0_PRESETN), .E(CUARTlOl_1_sqmuxa), .Q(
        CUARTOIII[2]));
    NOR2B \CUARTO1ll.CUARTI0I_8_CUARTOOll_2_sqmuxa_0_a4_0_a3  (.A(
        N_117), .B(N_71_mux), .Y(CUARTOOll_2_sqmuxa));
    NOR2B \CUARTO1ll.CUARTI0I_8_CUARTlIll.CUARTIlIl8_i_i_0_a3_0_3  (.A(
        \CUARTll0[0]_net_1 ), .B(\CUARTll0[1]_net_1 ), .Y(N_94_3));
    DFN1E1C0 \CUARTO0Il[3]  (.D(\CUARTO0Il_11[3] ), .CLK(SYSCLK_c), 
        .CLR(COREABC_0_PRESETN), .E(CUARTl0Ile), .Q(
        \CUARTO0Il[3]_net_1 ));
    NOR2B \CUARTO1ll.CUARTI0I_8_CUARTO11_1_sqmuxa_i_a3  (.A(
        CUARTl1Il_net_1), .B(CUARTIl), .Y(N_107));
    DFN1E1C0 CUARTO11 (.D(un1_CUARTOOl), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(N_408), .Q(OVERFLOW));
    DFN1E1C0 \CUARTll0[1]  (.D(N_401), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(CUARTIl_0), .Q(\CUARTll0[1]_net_1 ));
    DFN1E1C0 \CUARTO0Il[2]  (.D(\CUARTO0Il_11[2] ), .CLK(SYSCLK_c), 
        .CLR(COREABC_0_PRESETN), .E(CUARTl0Ile), .Q(
        \CUARTO0Il[2]_net_1 ));
    DFN1E1C0 \CUARTIOll[2]  (.D(N_409_i), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(CUARTll0_0_sqmuxa), .Q(
        \CUARTIOll[2]_net_1 ));
    OR2A \CUARTO1ll.CUARTI0I_8_CUARTI0ll.CUARTI0Il_4_iv_i_o2  (.A(
        i6_mux), .B(N_411), .Y(N_415));
    NOR2A \CUARTO0Il_RNO[2]  (.A(\CUARTO0Il[3]_net_1 ), .B(N_78), .Y(
        \CUARTO0Il_11[2] ));
    NOR3A \CUARTO1ll.CUARTI0I_8_m35_0_a3  (.A(\CUARTl0Il[2]_net_1 ), 
        .B(\CUARTl0Il[3]_net_1 ), .C(N_413), .Y(CUARTI115));
    DFN1E1C0 \CUARTlOl[4]  (.D(\CUARTO0Il[4]_net_1 ), .CLK(SYSCLK_c), 
        .CLR(COREABC_0_PRESETN), .E(CUARTlOl_1_sqmuxa), .Q(
        CUARTOIII[4]));
    NOR3B \CUARTO1ll.CUARTI0I_8_CUARTO0ll.CUARTO0Il_11_i_a3_0[7]  (.A(
        CUARTO1OI[0]), .B(CUARTO1OI[1]), .C(\CUARTO0Il[8]_net_1 ), .Y(
        N_101));
    AOI1B CUARTO1Il_RNO (.A(m63_0), .B(i9_mux), .C(un1_CUARTOOl), .Y(
        CUARTO1Il_1_sqmuxa));
    DFN1E1C0 \CUARTlOl[1]  (.D(\CUARTO0Il[1]_net_1 ), .CLK(SYSCLK_c), 
        .CLR(COREABC_0_PRESETN), .E(CUARTlOl_1_sqmuxa), .Q(
        CUARTOIII[1]));
    DFN1E1C0 CUARTI01 (.D(CUARTI01_0_sqmuxa), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(N_407), .Q(FRAMING_ERR));
    NOR2A \CUARTO1ll.CUARTI0I_8_m42_0  (.A(\CUARTIlIl[3]_net_1 ), .B(
        \CUARTIlIl[1]_net_1 ), .Y(m42_0));
    NOR2 \CUARTO1ll.CUARTI0I_8_CUARTO0ll.CUARTO0Il_11_i_a3[7]  (.A(
        N_79), .B(i6_mux), .Y(N_100));
    DFN1E1P0 \CUARTI1Il[1]  (.D(\CUARTI1Il[2]_net_1 ), .CLK(SYSCLK_c), 
        .PRE(COREABC_0_PRESETN), .E(CUARTIl_0), .Q(
        \CUARTI1Il[1]_net_1 ));
    OA1A CUARTI11_RNI8OFQ2 (.A(COREABC_0_APB3master_PENABLE), .B(
        PARITY_ERR), .C(CoreAPB3_0_APBmslave1_PSELx), .Y(m6_0));
    DFN1E1C0 \CUARTlOl[3]  (.D(\CUARTO0Il[3]_net_1 ), .CLK(SYSCLK_c), 
        .CLR(COREABC_0_PRESETN), .E(CUARTlOl_1_sqmuxa), .Q(
        CUARTOIII[3]));
    NOR2A \CUARTO1ll.CUARTI0I_8_m37  (.A(N_67), .B(CUARTll019_i), .Y(
        N_67_mux));
    MX2 \CUARTO1ll.CUARTI0I_8_m55  (.A(CUARTI115), .B(N_74_mux), .S(
        CUARTO1OI[0]), .Y(i10_mux));
    NOR2B \CUARTO1ll.CUARTI0I_8_un1_CUARTI0111_i_a3  (.A(
        CUARTOOll_net_1), .B(CUARTIl), .Y(CUARTI01_0_sqmuxa));
    NOR2B \CUARTO1ll.CUARTI0I_8_CUARTlIll.CUARTIlIl8_i_i_0_a3  (.A(
        i6_mux), .B(N_78), .Y(N_93));
    DFN1E1C0 \CUARTlOl[6]  (.D(\CUARTO0Il[6]_net_1 ), .CLK(SYSCLK_c), 
        .CLR(COREABC_0_PRESETN), .E(CUARTlOl_1_sqmuxa), .Q(
        CUARTOIII[6]));
    XA1B \CUARTO1ll.CUARTI0I_8_m52  (.A(\CUARTl0Il[0]_net_1 ), .B(
        \CUARTl0Il[1]_net_1 ), .C(N_78), .Y(CUARTl0Il_n1));
    OR2A \CUARTO1ll.CUARTI0I_8_m34_i  (.A(\CUARTl0Il[2]_net_1 ), .B(
        N_413), .Y(N_7));
    NOR2A \CUARTO1ll.CUARTI0I_8_CUARTl0ll.CUARTI11_12_iv_0_a2_0  (.A(
        CUARTI11_12_iv_0_a2_0_1), .B(N_413), .Y(N_111));
    XO1 \CUARTIOll_RNIU45G[2]  (.A(\CUARTl0Il[2]_net_1 ), .B(
        \CUARTIOll[2]_net_1 ), .C(CUARTll019_0), .Y(CUARTll019_NE_1));
    MX2A \CUARTO1ll.CUARTI0I_8_m21  (.A(N_71_mux), .B(N_80_mux), .S(
        \CUARTll0[0]_net_1 ), .Y(N_22_0));
    DFN1E1C0 \CUARTO0Il[6]  (.D(N_405), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(CUARTl0Ile), .Q(\CUARTO0Il[6]_net_1 ));
    OR2A \CUARTO1ll.CUARTI0I_8_m6_i_o3  (.A(\CUARTIlIl[1]_net_1 ), .B(
        \CUARTIlIl_i_0[0] ), .Y(N_59));
    DFN1E1C0 \CUARTl0Il[0]  (.D(N_54), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(CUARTl0Ile), .Q(\CUARTl0Il[0]_net_1 ));
    DFN1E1C0 \CUARTO0Il[7]  (.D(N_404), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(CUARTl0Ile), .Q(\CUARTO0Il[7]_net_1 ));
    XOR2 \CUARTIOll_RNIJM28[3]  (.A(\CUARTIOll[3]_net_1 ), .B(
        \CUARTl0Il[3]_net_1 ), .Y(CUARTll019_3));
    NOR2A \CUARTO1ll.CUARTI0I_8_CUARTI0ll.CUARTI0Il_4_iv_i_a2  (.A(
        \CUARTll0[1]_net_1 ), .B(\CUARTll0[0]_net_1 ), .Y(N_117));
    DFN1E1C0 \CUARTO0Il[8]  (.D(N_44), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(CUARTl0Ile), .Q(\CUARTO0Il[8]_net_1 ));
    
endmodule


module Minimal_SoC_CoreUARTapb_0_Tx_async_0s_0s_0s_1s_2s_3s_4s_5s_6s(
       CUARTO1I,
       CUARTO1OI,
       TX_c,
       COREABC_0_PRESETN,
       SYSCLK_c,
       TXRDY,
       CUARTll,
       CUARTO1I5
    );
input  [7:0] CUARTO1I;
input  [2:0] CUARTO1OI;
output TX_c;
input  COREABC_0_PRESETN;
input  SYSCLK_c;
output TXRDY;
input  CUARTll;
input  CUARTO1I5;

    wire CUARTO1I5_i, \CUARTlI0l_ns_0_a2_0[5] , N_93, 
        \CUARTlI0l_ns_i_0_a2_0_0[3] , \CUARTlI0l[2]_net_1 , 
        \CUARTlI0l_ns_0_a2_1_1[5] , \CUARTll0l[2]_net_1 , 
        \CUARTll0l[1]_net_1 , \CUARTll0l[3]_net_1 , N_172, 
        \CUARTlI0l[0]_net_1 , \CUARTlI0l[1]_net_1 , N_61, 
        \CUARTlI0l[4]_net_1 , \CUARTlI0l[3]_net_1 , CUARTll1_4, N_59, 
        N_60, N_9, N_31, N_46, N_7, N_33, N_47, N_23_i, 
        CUARTOl0l_1_sqmuxa, N_164, N_51, N_52, CUARTO00l_net_1, N_34, 
        CUARTO00l_5, \CUARTlI0l[5]_net_1 , N_87, N_88, N_5, 
        un1_CUARTO00l_1_sqmuxa, \CUARTlI0l_ns[5] , N_44, 
        \CUARTlI0l_ns[4] , \CUARTlI0l_RNO[3]_net_1 , 
        \CUARTll0l[0]_net_1 , N_30, N_28, N_29, N_25, N_24, N_27, N_26, 
        \CUARTIl0l[0]_net_1 , \CUARTIl0l[1]_net_1 , 
        \CUARTIl0l[2]_net_1 , \CUARTIl0l[3]_net_1 , 
        \CUARTIl0l[4]_net_1 , \CUARTIl0l[5]_net_1 , 
        \CUARTIl0l[6]_net_1 , \CUARTIl0l[7]_net_1 , \CUARTlI0l_ns[0] , 
        N_56, \CUARTlI0l_ns[2] , \CUARTll0l_RNO[0]_net_1 , 
        \CUARTlI0l_ns[1] , GND, VCC;
    
    XA1 CUARTll1_RNO_1 (.A(CUARTO1OI[2]), .B(CUARTO00l_net_1), .C(
        \CUARTlI0l[4]_net_1 ), .Y(N_59));
    OR2 CUARTO00l_RNO_0 (.A(N_88), .B(\CUARTlI0l[5]_net_1 ), .Y(
        un1_CUARTO00l_1_sqmuxa));
    DFN1E0C0 \CUARTIl0l[0]  (.D(CUARTO1I[0]), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(N_164), .Q(\CUARTIl0l[0]_net_1 ));
    DFN1C0 \CUARTll0l[1]  (.D(N_9), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .Q(\CUARTll0l[1]_net_1 ));
    NOR2A \CUARTlI0l_RNI4NH21_0[3]  (.A(CUARTll), .B(
        \CUARTlI0l[3]_net_1 ), .Y(N_46));
    NOR2B \CUARTlI0l_RNO_0[0]  (.A(\CUARTlI0l[5]_net_1 ), .B(CUARTll), 
        .Y(N_56));
    DFN1C0 \CUARTll0l[2]  (.D(N_7), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .Q(\CUARTll0l[2]_net_1 ));
    OR2B \CUARTll0l_RNI44LR[0]  (.A(\CUARTll0l[0]_net_1 ), .B(CUARTll), 
        .Y(N_31));
    AO1 \CUARTlI0l_RNO[4]  (.A(N_88), .B(N_93), .C(N_51), .Y(
        \CUARTlI0l_ns[4] ));
    AO1 \CUARTlI0l_RNO[0]  (.A(\CUARTlI0l[0]_net_1 ), .B(TXRDY), .C(
        N_56), .Y(\CUARTlI0l_ns[0] ));
    DFN1E0C0 \CUARTIl0l[6]  (.D(CUARTO1I[6]), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(N_164), .Q(\CUARTIl0l[6]_net_1 ));
    XA1C CUARTO00l_RNO (.A(CUARTO00l_net_1), .B(N_34), .C(
        \CUARTlI0l[5]_net_1 ), .Y(CUARTO00l_5));
    NOR2A \CUARTlI0l_RNO_0[4]  (.A(\CUARTlI0l[4]_net_1 ), .B(CUARTll), 
        .Y(N_51));
    VCC VCC_i (.Y(VCC));
    NOR2A \CUARTlI0l_RNO[1]  (.A(\CUARTlI0l[0]_net_1 ), .B(TXRDY), .Y(
        \CUARTlI0l_ns[1] ));
    OR3B \CUARTll0l_RNID5UV[2]  (.A(\CUARTll0l[1]_net_1 ), .B(
        \CUARTll0l[2]_net_1 ), .C(N_31), .Y(N_33));
    DFN1E0C0 \CUARTIl0l[4]  (.D(CUARTO1I[4]), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(N_164), .Q(\CUARTIl0l[4]_net_1 ));
    DFN1E0C0 \CUARTIl0l[5]  (.D(CUARTO1I[5]), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(N_164), .Q(\CUARTIl0l[5]_net_1 ));
    MX2 \CUARTll0l_RNILA7R1[2]  (.A(N_28), .B(N_29), .S(
        \CUARTll0l[2]_net_1 ), .Y(N_30));
    MX2 \CUARTll0l_RNI0LHS[1]  (.A(N_25), .B(N_24), .S(
        \CUARTll0l[1]_net_1 ), .Y(N_29));
    DFN1C0 \CUARTlI0l[5]  (.D(\CUARTlI0l_ns[5] ), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .Q(\CUARTlI0l[5]_net_1 ));
    DFN1C0 \CUARTll0l[3]  (.D(N_5), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .Q(\CUARTll0l[3]_net_1 ));
    DFN1E0P0 CUARTOl0l (.D(CUARTO1I5_i), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .E(CUARTOl0l_1_sqmuxa), .Q(TXRDY));
    NOR2A \CUARTlI0l_RNO_0[3]  (.A(N_93), .B(\CUARTlI0l[2]_net_1 ), .Y(
        \CUARTlI0l_ns_i_0_a2_0_0[3] ));
    XA1C \CUARTll0l_RNO[1]  (.A(\CUARTll0l[1]_net_1 ), .B(N_31), .C(
        N_46), .Y(N_9));
    DFN1E0P0 CUARTll1 (.D(CUARTll1_4), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .E(N_172), .Q(TX_c));
    OR3 CUARTll1_RNO (.A(N_59), .B(N_61), .C(N_60), .Y(CUARTll1_4));
    MX2 \CUARTll0l_RNIG4HS[1]  (.A(N_27), .B(N_26), .S(
        \CUARTll0l[1]_net_1 ), .Y(N_28));
    MX2 \CUARTIl0l_RNIGK6D[6]  (.A(\CUARTIl0l[6]_net_1 ), .B(
        \CUARTIl0l[7]_net_1 ), .S(\CUARTll0l[0]_net_1 ), .Y(N_24));
    MX2 \CUARTIl0l_RNI486D[0]  (.A(\CUARTIl0l[0]_net_1 ), .B(
        \CUARTIl0l[1]_net_1 ), .S(\CUARTll0l[0]_net_1 ), .Y(N_27));
    DFN1E0C0 \CUARTIl0l[1]  (.D(CUARTO1I[1]), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(N_164), .Q(\CUARTIl0l[1]_net_1 ));
    DFN1C0 \CUARTlI0l[2]  (.D(\CUARTlI0l_ns[2] ), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .Q(\CUARTlI0l[2]_net_1 ));
    MX2 \CUARTIl0l_RNICG6D[4]  (.A(\CUARTIl0l[4]_net_1 ), .B(
        \CUARTIl0l[5]_net_1 ), .S(\CUARTll0l[0]_net_1 ), .Y(N_25));
    DFN1E0C0 \CUARTIl0l[2]  (.D(CUARTO1I[2]), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(N_164), .Q(\CUARTIl0l[2]_net_1 ));
    DFN1E1C0 CUARTO00l (.D(CUARTO00l_5), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(un1_CUARTO00l_1_sqmuxa), .Q(
        CUARTO00l_net_1));
    GND GND_i (.Y(GND));
    OR2B \CUARTlI0l_RNI3MH21[2]  (.A(\CUARTlI0l[2]_net_1 ), .B(CUARTll)
        , .Y(N_164));
    NOR3A \CUARTll0l_RNO[2]  (.A(N_33), .B(N_47), .C(N_46), .Y(N_7));
    NOR3B \CUARTll0l_RNIFJD6[3]  (.A(\CUARTll0l[2]_net_1 ), .B(
        \CUARTll0l[1]_net_1 ), .C(\CUARTll0l[3]_net_1 ), .Y(
        \CUARTlI0l_ns_0_a2_1_1[5] ));
    MX2 \CUARTlI0l_RNO_1[5]  (.A(\CUARTlI0l[5]_net_1 ), .B(
        \CUARTlI0l[4]_net_1 ), .S(CUARTll), .Y(N_44));
    DFN1C0 \CUARTll0l[0]  (.D(\CUARTll0l_RNO[0]_net_1 ), .CLK(SYSCLK_c)
        , .CLR(COREABC_0_PRESETN), .Q(\CUARTll0l[0]_net_1 ));
    MX2 \CUARTIl0l_RNI8C6D[2]  (.A(\CUARTIl0l[2]_net_1 ), .B(
        \CUARTIl0l[3]_net_1 ), .S(\CUARTll0l[0]_net_1 ), .Y(N_26));
    NOR3 CUARTll1_RNO_2 (.A(\CUARTlI0l[2]_net_1 ), .B(
        \CUARTlI0l[4]_net_1 ), .C(\CUARTlI0l[3]_net_1 ), .Y(N_61));
    OA1C \CUARTll0l_RNO_0[2]  (.A(\CUARTll0l[1]_net_1 ), .B(N_31), .C(
        \CUARTll0l[2]_net_1 ), .Y(N_47));
    AOI1 \CUARTlI0l_RNO[3]  (.A(\CUARTlI0l_ns_i_0_a2_0_0[3] ), .B(
        CUARTll), .C(N_52), .Y(\CUARTlI0l_RNO[3]_net_1 ));
    NOR2A \CUARTll0l_RNI6BFO[0]  (.A(\CUARTlI0l_ns_0_a2_1_1[5] ), .B(
        N_23_i), .Y(N_93));
    AO1 \CUARTlI0l_RNO[5]  (.A(\CUARTlI0l_ns_0_a2_0[5] ), .B(N_87), .C(
        N_44), .Y(\CUARTlI0l_ns[5] ));
    NOR3 CUARTll1_RNO_0 (.A(\CUARTlI0l[0]_net_1 ), .B(
        \CUARTlI0l[1]_net_1 ), .C(CUARTll), .Y(N_172));
    DFN1C0 \CUARTlI0l[4]  (.D(\CUARTlI0l_ns[4] ), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .Q(\CUARTlI0l[4]_net_1 ));
    INV CUARTOl0l_RNO (.A(CUARTO1I5), .Y(CUARTO1I5_i));
    DFN1E0C0 \CUARTIl0l[3]  (.D(CUARTO1I[3]), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(N_164), .Q(\CUARTIl0l[3]_net_1 ));
    OR2A \CUARTll0l_RNIRSBT1[3]  (.A(N_30), .B(\CUARTll0l[3]_net_1 ), 
        .Y(N_34));
    NOR2A \CUARTlI0l_RNO_1[3]  (.A(N_164), .B(\CUARTlI0l[3]_net_1 ), 
        .Y(N_52));
    NOR2B \CUARTlI0l_RNI4NH21[3]  (.A(\CUARTlI0l[3]_net_1 ), .B(
        CUARTll), .Y(N_87));
    AO1A \CUARTlI0l_RNO[2]  (.A(CUARTll), .B(\CUARTlI0l[2]_net_1 ), .C(
        \CUARTlI0l[1]_net_1 ), .Y(\CUARTlI0l_ns[2] ));
    NOR2A \CUARTlI0l_RNO_0[5]  (.A(N_93), .B(CUARTO1OI[1]), .Y(
        \CUARTlI0l_ns_0_a2_0[5] ));
    XOR2 \CUARTll0l_RNINN1I[0]  (.A(\CUARTll0l[0]_net_1 ), .B(
        CUARTO1OI[0]), .Y(N_23_i));
    DFN1C0 \CUARTlI0l[1]  (.D(\CUARTlI0l_ns[1] ), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .Q(\CUARTlI0l[1]_net_1 ));
    NOR2A CUARTOl0l_RNO_0 (.A(N_164), .B(CUARTO1I5), .Y(
        CUARTOl0l_1_sqmuxa));
    NOR2A CUARTll1_RNO_3 (.A(\CUARTlI0l[3]_net_1 ), .B(N_34), .Y(N_60));
    AXOI5 \CUARTll0l_RNO[0]  (.A(\CUARTlI0l[3]_net_1 ), .B(CUARTll), 
        .C(\CUARTll0l[0]_net_1 ), .Y(\CUARTll0l_RNO[0]_net_1 ));
    NOR2B \CUARTlI0l_RNIP0FI1[3]  (.A(N_87), .B(CUARTO1OI[1]), .Y(N_88)
        );
    DFN1C0 \CUARTlI0l[3]  (.D(\CUARTlI0l_RNO[3]_net_1 ), .CLK(SYSCLK_c)
        , .CLR(COREABC_0_PRESETN), .Q(\CUARTlI0l[3]_net_1 ));
    DFN1P0 \CUARTlI0l[0]  (.D(\CUARTlI0l_ns[0] ), .CLK(SYSCLK_c), .PRE(
        COREABC_0_PRESETN), .Q(\CUARTlI0l[0]_net_1 ));
    XA1C \CUARTll0l_RNO[3]  (.A(\CUARTll0l[3]_net_1 ), .B(N_33), .C(
        N_46), .Y(N_5));
    DFN1E0C0 \CUARTIl0l[7]  (.D(CUARTO1I[7]), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(N_164), .Q(\CUARTIl0l[7]_net_1 ));
    
endmodule


module Minimal_SoC_CoreUARTapb_0_COREUART_0s_0s_0s_15s_0s_0s(
       CUARTOIII,
       CUARTO1OI,
       CUARTl0OI,
       COREABC_0_APB3master_PWDATA,
       COREABC_0_APB3master_PADDR_0,
       COREABC_0_APB3master_PENABLE,
       PARITY_ERR,
       N_91_mux,
       N_85,
       FRAMING_ERR,
       OVERFLOW,
       RX_c,
       TXRDY,
       TX_c,
       COREABC_0_PRESETN,
       SYSCLK_c,
       RXRDY,
       N_84_mux,
       N_83_mux,
       COREABC_0_APB3master_PWRITE,
       CoreAPB3_0_APBmslave1_PSELx,
       m12_e_0
    );
output [7:0] CUARTOIII;
input  [7:0] CUARTO1OI;
input  [7:0] CUARTl0OI;
input  [7:0] COREABC_0_APB3master_PWDATA;
input  COREABC_0_APB3master_PADDR_0;
input  COREABC_0_APB3master_PENABLE;
output PARITY_ERR;
output N_91_mux;
input  N_85;
output FRAMING_ERR;
output OVERFLOW;
input  RX_c;
output TXRDY;
output TX_c;
input  COREABC_0_PRESETN;
input  SYSCLK_c;
output RXRDY;
input  N_84_mux;
input  N_83_mux;
input  COREABC_0_APB3master_PWRITE;
input  CoreAPB3_0_APBmslave1_PSELx;
output m12_e_0;

    wire CUARTO1I5_1, un1_CUARTOOl_1_net_1, un1_CUARTOOl_net_1, 
        CUARTO1I5, RXRDY4, CUARTllI, CUARTI00, \CUARTO1I[0]_net_1 , 
        \CUARTO1I[1]_net_1 , \CUARTO1I[2]_net_1 , \CUARTO1I[3]_net_1 , 
        \CUARTO1I[4]_net_1 , \CUARTO1I[5]_net_1 , \CUARTO1I[6]_net_1 , 
        \CUARTO1I[7]_net_1 , CUARTll, CUARTIl, CUARTIl_0, GND, VCC;
    
    DFN1E1C0 \genblk1.RXRDY  (.D(CUARTllI), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(RXRDY4), .Q(RXRDY));
    Minimal_SoC_CoreUARTapb_0_Clock_gen_0s_0s CUARTOO1 (.CUARTl0OI({
        CUARTl0OI[7], CUARTl0OI[6], CUARTl0OI[5], CUARTl0OI[4], 
        CUARTl0OI[3], CUARTl0OI[2], CUARTl0OI[1], CUARTl0OI[0]}), 
        .CUARTO1OI({CUARTO1OI[7], CUARTO1OI[6], CUARTO1OI[5], 
        CUARTO1OI[4], CUARTO1OI[3]}), .CUARTll(CUARTll), .CUARTIl(
        CUARTIl), .COREABC_0_PRESETN(COREABC_0_PRESETN), .SYSCLK_c(
        SYSCLK_c), .CUARTIl_0(CUARTIl_0));
    NOR2B \CUARTl10.CUARTO1I5  (.A(CUARTO1I5_1), .B(N_84_mux), .Y(
        CUARTO1I5));
    DFN1E1C0 \CUARTO1I[3]  (.D(COREABC_0_APB3master_PWDATA[3]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(CUARTO1I5), .Q(
        \CUARTO1I[3]_net_1 ));
    VCC VCC_i (.Y(VCC));
    DFN1E1C0 \CUARTO1I[7]  (.D(COREABC_0_APB3master_PWDATA[7]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(CUARTO1I5), .Q(
        \CUARTO1I[7]_net_1 ));
    OR2B un1_CUARTOOl (.A(un1_CUARTOOl_1_net_1), .B(N_83_mux), .Y(
        un1_CUARTOOl_net_1));
    Minimal_SoC_CoreUARTapb_0_Rx_async_0s_0s_0s_1s_2s_3s CUARTO01 (
        .CUARTOIII({CUARTOIII[7], CUARTOIII[6], CUARTOIII[5], 
        CUARTOIII[4], CUARTOIII[3], CUARTOIII[2], CUARTOIII[1], 
        CUARTOIII[0]}), .CUARTO1OI({CUARTO1OI[2], CUARTO1OI[1], 
        CUARTO1OI[0]}), .RX_c(RX_c), .OVERFLOW(OVERFLOW), .FRAMING_ERR(
        FRAMING_ERR), .CUARTI00(CUARTI00), .COREABC_0_PRESETN(
        COREABC_0_PRESETN), .SYSCLK_c(SYSCLK_c), .un1_CUARTOOl(
        un1_CUARTOOl_net_1), .CUARTllI(CUARTllI), .N_85(N_85), 
        .COREABC_0_APB3master_PWRITE(COREABC_0_APB3master_PWRITE), 
        .N_91_mux(N_91_mux), .CUARTIl_0(CUARTIl_0), 
        .CoreAPB3_0_APBmslave1_PSELx(CoreAPB3_0_APBmslave1_PSELx), 
        .PARITY_ERR(PARITY_ERR), .COREABC_0_APB3master_PENABLE(
        COREABC_0_APB3master_PENABLE), .CUARTIl(CUARTIl));
    GND GND_i (.Y(GND));
    DFN1E1C0 \CUARTO1I[6]  (.D(COREABC_0_APB3master_PWDATA[6]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(CUARTO1I5), .Q(
        \CUARTO1I[6]_net_1 ));
    Minimal_SoC_CoreUARTapb_0_Tx_async_0s_0s_0s_1s_2s_3s_4s_5s_6s 
        CUARTIO1 (.CUARTO1I({\CUARTO1I[7]_net_1 , \CUARTO1I[6]_net_1 , 
        \CUARTO1I[5]_net_1 , \CUARTO1I[4]_net_1 , \CUARTO1I[3]_net_1 , 
        \CUARTO1I[2]_net_1 , \CUARTO1I[1]_net_1 , \CUARTO1I[0]_net_1 })
        , .CUARTO1OI({CUARTO1OI[2], CUARTO1OI[1], CUARTO1OI[0]}), 
        .TX_c(TX_c), .COREABC_0_PRESETN(COREABC_0_PRESETN), .SYSCLK_c(
        SYSCLK_c), .TXRDY(TXRDY), .CUARTll(CUARTll), .CUARTO1I5(
        CUARTO1I5));
    DFN1E1C0 \CUARTO1I[5]  (.D(COREABC_0_APB3master_PWDATA[5]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(CUARTO1I5), .Q(
        \CUARTO1I[5]_net_1 ));
    OR2A \genblk1.RXRDY_RNO  (.A(CUARTllI), .B(CUARTI00), .Y(RXRDY4));
    DFN1E1C0 \CUARTO1I[1]  (.D(COREABC_0_APB3master_PWDATA[1]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(CUARTO1I5), .Q(
        \CUARTO1I[1]_net_1 ));
    DFN1E1C0 \CUARTO1I[2]  (.D(COREABC_0_APB3master_PWDATA[2]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(CUARTO1I5), .Q(
        \CUARTO1I[2]_net_1 ));
    DFN1E1C0 \CUARTO1I[0]  (.D(COREABC_0_APB3master_PWDATA[0]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(CUARTO1I5), .Q(
        \CUARTO1I[0]_net_1 ));
    NOR2B \CUARTl10.CUARTO1I5_0  (.A(CoreAPB3_0_APBmslave1_PSELx), .B(
        COREABC_0_APB3master_PWRITE), .Y(m12_e_0));
    NOR3A un1_CUARTOOl_1 (.A(CoreAPB3_0_APBmslave1_PSELx), .B(
        COREABC_0_APB3master_PWRITE), .C(COREABC_0_APB3master_PADDR_0), 
        .Y(un1_CUARTOOl_1_net_1));
    DFN1E1C0 \CUARTO1I[4]  (.D(COREABC_0_APB3master_PWDATA[4]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(CUARTO1I5), .Q(
        \CUARTO1I[4]_net_1 ));
    NOR2A \CUARTl10.CUARTO1I5_1  (.A(m12_e_0), .B(
        COREABC_0_APB3master_PADDR_0), .Y(CUARTO1I5_1));
    
endmodule


module Minimal_SoC_CoreUARTapb_0_CoreUARTapb_Z4(
       COREABC_0_APB3master_PWDATA,
       CoreAPB3_0_APBmslave1_PRDATA,
       COREABC_0_APB3master_PADDR_0_0,
       COREABC_0_APB3master_PADDR,
       CoreAPB3_0_APBmslave1_PSELx,
       COREABC_0_APB3master_PWRITE,
       TX_c,
       RX_c,
       COREABC_0_PRESETN,
       SYSCLK_c,
       COREABC_0_APB3master_PENABLE
    );
input  [7:0] COREABC_0_APB3master_PWDATA;
output [7:0] CoreAPB3_0_APBmslave1_PRDATA;
input  COREABC_0_APB3master_PADDR_0_0;
input  [4:2] COREABC_0_APB3master_PADDR;
input  CoreAPB3_0_APBmslave1_PSELx;
input  COREABC_0_APB3master_PWRITE;
output TX_c;
input  RX_c;
input  COREABC_0_PRESETN;
input  SYSCLK_c;
input  COREABC_0_APB3master_PENABLE;

    wire N_33_0, \CUARTOIII[4] , N_34_0, FRAMING_ERR, N_35_0, N_37_0, 
        N_69, N_38_0, \CUARTOIII[3] , N_39_0, OVERFLOW, N_40_0, N_42_0, 
        N_72, N_43_0, \CUARTOIII[2] , N_44_0, PARITY_ERR, N_45_0, 
        N_47_0, N_75, N_48_0, \CUARTOIII[1] , N_49_0, RXRDY, N_50_0, 
        N_52_0, N_78, N_53_0, \CUARTOIII[0] , N_54_0, TXRDY, N_55_0, 
        N_57_0, N_81, \CUARTl0OI[4]_net_1 , \CUARTO1OI[4]_net_1 , 
        \CUARTl0OI[3]_net_1 , \CUARTO1OI[3]_net_1 , 
        \CUARTl0OI[2]_net_1 , \CUARTO1OI[2]_net_1 , 
        \CUARTl0OI[1]_net_1 , \CUARTO1OI[1]_net_1 , 
        \CUARTl0OI[0]_net_1 , \CUARTO1OI[0]_net_1 , N_83_mux, N_84_mux, 
        CUARTO1OI4, m12_e_0, CUARTl0OI4, N_63, \CUARTl0OI[6]_net_1 , 
        \CUARTO1OI[6]_net_1 , N_29_0, N_27_0, N_85, N_66, 
        \CUARTl0OI[5]_net_1 , \CUARTO1OI[5]_net_1 , i36_i, 
        \CUARTl0OI[7]_net_1 , \CUARTO1OI[7]_net_1 , N_32_0, N_30_0, 
        \CUARTOIII[5] , \CUARTOIII[6] , N_26_0, N_24_0, \CUARTOIII[7] , 
        N_91_mux, GND, VCC;
    
    DFN1E1C0 \CUARTOOII[1]  (.D(N_52_0), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(N_91_mux), .Q(
        CoreAPB3_0_APBmslave1_PRDATA[1]));
    DFN1E1C0 \CUARTO1OI[2]  (.D(COREABC_0_APB3master_PWDATA[2]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(CUARTO1OI4), .Q(
        \CUARTO1OI[2]_net_1 ));
    MX2C \CUARTOOII_RNO_1[3]  (.A(\CUARTl0OI[3]_net_1 ), .B(
        \CUARTO1OI[3]_net_1 ), .S(COREABC_0_APB3master_PADDR_0_0), .Y(
        N_72));
    DFN1E1C0 \CUARTl0OI[7]  (.D(COREABC_0_APB3master_PWDATA[7]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(CUARTl0OI4), .Q(
        \CUARTl0OI[7]_net_1 ));
    MX2C \CUARTOOII_RNO_1[4]  (.A(\CUARTl0OI[4]_net_1 ), .B(
        \CUARTO1OI[4]_net_1 ), .S(COREABC_0_APB3master_PADDR_0_0), .Y(
        N_69));
    Minimal_SoC_CoreUARTapb_0_COREUART_0s_0s_0s_15s_0s_0s CUARTlOlI (
        .CUARTOIII({\CUARTOIII[7] , \CUARTOIII[6] , \CUARTOIII[5] , 
        \CUARTOIII[4] , \CUARTOIII[3] , \CUARTOIII[2] , \CUARTOIII[1] , 
        \CUARTOIII[0] }), .CUARTO1OI({\CUARTO1OI[7]_net_1 , 
        \CUARTO1OI[6]_net_1 , \CUARTO1OI[5]_net_1 , 
        \CUARTO1OI[4]_net_1 , \CUARTO1OI[3]_net_1 , 
        \CUARTO1OI[2]_net_1 , \CUARTO1OI[1]_net_1 , 
        \CUARTO1OI[0]_net_1 }), .CUARTl0OI({\CUARTl0OI[7]_net_1 , 
        \CUARTl0OI[6]_net_1 , \CUARTl0OI[5]_net_1 , 
        \CUARTl0OI[4]_net_1 , \CUARTl0OI[3]_net_1 , 
        \CUARTl0OI[2]_net_1 , \CUARTl0OI[1]_net_1 , 
        \CUARTl0OI[0]_net_1 }), .COREABC_0_APB3master_PWDATA({
        COREABC_0_APB3master_PWDATA[7], COREABC_0_APB3master_PWDATA[6], 
        COREABC_0_APB3master_PWDATA[5], COREABC_0_APB3master_PWDATA[4], 
        COREABC_0_APB3master_PWDATA[3], COREABC_0_APB3master_PWDATA[2], 
        COREABC_0_APB3master_PWDATA[1], COREABC_0_APB3master_PWDATA[0]})
        , .COREABC_0_APB3master_PADDR_0(COREABC_0_APB3master_PADDR[3]), 
        .COREABC_0_APB3master_PENABLE(COREABC_0_APB3master_PENABLE), 
        .PARITY_ERR(PARITY_ERR), .N_91_mux(N_91_mux), .N_85(N_85), 
        .FRAMING_ERR(FRAMING_ERR), .OVERFLOW(OVERFLOW), .RX_c(RX_c), 
        .TXRDY(TXRDY), .TX_c(TX_c), .COREABC_0_PRESETN(
        COREABC_0_PRESETN), .SYSCLK_c(SYSCLK_c), .RXRDY(RXRDY), 
        .N_84_mux(N_84_mux), .N_83_mux(N_83_mux), 
        .COREABC_0_APB3master_PWRITE(COREABC_0_APB3master_PWRITE), 
        .CoreAPB3_0_APBmslave1_PSELx(CoreAPB3_0_APBmslave1_PSELx), 
        .m12_e_0(m12_e_0));
    NOR3B \CUARTOOII_RNO_0[7]  (.A(COREABC_0_APB3master_PADDR_0_0), .B(
        \CUARTOIII[7] ), .C(COREABC_0_APB3master_PADDR[4]), .Y(N_24_0));
    MX2 \CUARTOOII_RNO_0[2]  (.A(N_43_0), .B(N_44_0), .S(
        COREABC_0_APB3master_PADDR[4]), .Y(N_45_0));
    MX2B \CUARTOOII_RNO[1]  (.A(N_50_0), .B(N_78), .S(
        COREABC_0_APB3master_PADDR[3]), .Y(N_52_0));
    DFN1E1C0 \CUARTl0OI[6]  (.D(COREABC_0_APB3master_PWDATA[6]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(CUARTl0OI4), .Q(
        \CUARTl0OI[6]_net_1 ));
    DFN1E1C0 \CUARTOOII[3]  (.D(N_42_0), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(N_91_mux), .Q(
        CoreAPB3_0_APBmslave1_PRDATA[3]));
    DFN1E1C0 \CUARTO1OI[7]  (.D(COREABC_0_APB3master_PWDATA[7]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(CUARTO1OI4), .Q(
        \CUARTO1OI[7]_net_1 ));
    NOR2A \CUARTOOII_RNO_3[3]  (.A(OVERFLOW), .B(
        COREABC_0_APB3master_PADDR[2]), .Y(N_39_0));
    DFN1E1C0 \CUARTl0OI[5]  (.D(COREABC_0_APB3master_PWDATA[5]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(CUARTl0OI4), .Q(
        \CUARTl0OI[5]_net_1 ));
    DFN1E1C0 \CUARTOOII[2]  (.D(N_47_0), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(N_91_mux), .Q(
        CoreAPB3_0_APBmslave1_PRDATA[2]));
    NOR2A \CUARTOOII_RNO_3[1]  (.A(RXRDY), .B(
        COREABC_0_APB3master_PADDR[2]), .Y(N_49_0));
    VCC VCC_i (.Y(VCC));
    NOR2A \CUARTOOII_RNO_3[0]  (.A(TXRDY), .B(
        COREABC_0_APB3master_PADDR[2]), .Y(N_54_0));
    MX2C \CUARTOOII_RNO_1[0]  (.A(\CUARTl0OI[0]_net_1 ), .B(
        \CUARTO1OI[0]_net_1 ), .S(COREABC_0_APB3master_PADDR_0_0), .Y(
        N_81));
    MX2C \CUARTOOII_RNO_1[7]  (.A(\CUARTl0OI[7]_net_1 ), .B(
        \CUARTO1OI[7]_net_1 ), .S(COREABC_0_APB3master_PADDR_0_0), .Y(
        i36_i));
    DFN1E1C0 \CUARTl0OI[3]  (.D(COREABC_0_APB3master_PWDATA[3]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(CUARTl0OI4), .Q(
        \CUARTl0OI[3]_net_1 ));
    MX2B \CUARTOOII_RNO[7]  (.A(N_24_0), .B(i36_i), .S(
        COREABC_0_APB3master_PADDR[3]), .Y(N_26_0));
    DFN1E1C0 \CUARTOOII[4]  (.D(N_37_0), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(N_91_mux), .Q(
        CoreAPB3_0_APBmslave1_PRDATA[4]));
    NOR2B \CUARTOOII_RNO_2[1]  (.A(\CUARTOIII[1] ), .B(
        COREABC_0_APB3master_PADDR[2]), .Y(N_48_0));
    MX2B \CUARTOOII_RNO[2]  (.A(N_45_0), .B(N_75), .S(
        COREABC_0_APB3master_PADDR[3]), .Y(N_47_0));
    NOR3C m17 (.A(COREABC_0_APB3master_PADDR[3]), .B(m12_e_0), .C(
        N_84_mux), .Y(CUARTl0OI4));
    NOR2A \CUARTOOII_RNO_3[2]  (.A(PARITY_ERR), .B(
        COREABC_0_APB3master_PADDR[2]), .Y(N_44_0));
    NOR3B m9 (.A(COREABC_0_APB3master_PENABLE), .B(
        COREABC_0_APB3master_PADDR_0_0), .C(
        COREABC_0_APB3master_PADDR[4]), .Y(N_83_mux));
    MX2 \CUARTOOII_RNO_0[4]  (.A(N_33_0), .B(N_34_0), .S(
        COREABC_0_APB3master_PADDR[4]), .Y(N_35_0));
    NOR2B \CUARTOOII_RNO_2[4]  (.A(\CUARTOIII[4] ), .B(
        COREABC_0_APB3master_PADDR[2]), .Y(N_33_0));
    NOR2B \CUARTOOII_RNO_2[3]  (.A(\CUARTOIII[3] ), .B(
        COREABC_0_APB3master_PADDR[2]), .Y(N_38_0));
    MX2C \CUARTOOII_RNO_1[6]  (.A(\CUARTl0OI[6]_net_1 ), .B(
        \CUARTO1OI[6]_net_1 ), .S(COREABC_0_APB3master_PADDR_0_0), .Y(
        N_63));
    NOR2B \CUARTOOII_RNO_2[0]  (.A(\CUARTOIII[0] ), .B(
        COREABC_0_APB3master_PADDR[2]), .Y(N_53_0));
    GND GND_i (.Y(GND));
    MX2C \CUARTOOII_RNO_1[5]  (.A(\CUARTl0OI[5]_net_1 ), .B(
        \CUARTO1OI[5]_net_1 ), .S(COREABC_0_APB3master_PADDR_0_0), .Y(
        N_66));
    DFN1E1C0 \CUARTOOII[0]  (.D(N_57_0), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(N_91_mux), .Q(
        CoreAPB3_0_APBmslave1_PRDATA[0]));
    NOR2B \CUARTOOII_RNO_2[2]  (.A(\CUARTOIII[2] ), .B(
        COREABC_0_APB3master_PADDR[2]), .Y(N_43_0));
    MX2B \CUARTOOII_RNO[6]  (.A(N_27_0), .B(N_63), .S(
        COREABC_0_APB3master_PADDR[3]), .Y(N_29_0));
    DFN1E1C0 \CUARTO1OI[5]  (.D(COREABC_0_APB3master_PWDATA[5]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(CUARTO1OI4), .Q(
        \CUARTO1OI[5]_net_1 ));
    DFN1E1C0 \CUARTl0OI[2]  (.D(COREABC_0_APB3master_PWDATA[2]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(CUARTl0OI4), .Q(
        \CUARTl0OI[2]_net_1 ));
    MX2B \CUARTOOII_RNO[0]  (.A(N_55_0), .B(N_81), .S(
        COREABC_0_APB3master_PADDR[3]), .Y(N_57_0));
    DFN1E1C0 \CUARTOOII[6]  (.D(N_29_0), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(N_91_mux), .Q(
        CoreAPB3_0_APBmslave1_PRDATA[6]));
    DFN1E1C0 \CUARTl0OI[0]  (.D(COREABC_0_APB3master_PWDATA[0]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(CUARTl0OI4), .Q(
        \CUARTl0OI[0]_net_1 ));
    MX2B \CUARTOOII_RNO[3]  (.A(N_40_0), .B(N_72), .S(
        COREABC_0_APB3master_PADDR[3]), .Y(N_42_0));
    DFN1E1C0 \CUARTl0OI[1]  (.D(COREABC_0_APB3master_PWDATA[1]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(CUARTl0OI4), .Q(
        \CUARTl0OI[1]_net_1 ));
    MX2B \CUARTOOII_RNO[5]  (.A(N_30_0), .B(N_66), .S(
        COREABC_0_APB3master_PADDR[3]), .Y(N_32_0));
    MX2 \CUARTOOII_RNO_0[3]  (.A(N_38_0), .B(N_39_0), .S(
        COREABC_0_APB3master_PADDR[4]), .Y(N_40_0));
    NOR2A \CUARTOOII_RNO_3[4]  (.A(FRAMING_ERR), .B(
        COREABC_0_APB3master_PADDR[2]), .Y(N_34_0));
    DFN1E1C0 \CUARTOOII[7]  (.D(N_26_0), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(N_91_mux), .Q(
        CoreAPB3_0_APBmslave1_PRDATA[7]));
    MX2 \CUARTOOII_RNO_0[1]  (.A(N_48_0), .B(N_49_0), .S(
        COREABC_0_APB3master_PADDR[4]), .Y(N_50_0));
    DFN1E1C0 \CUARTOOII[5]  (.D(N_32_0), .CLK(SYSCLK_c), .CLR(
        COREABC_0_PRESETN), .E(N_91_mux), .Q(
        CoreAPB3_0_APBmslave1_PRDATA[5]));
    NOR2B m4_e (.A(COREABC_0_APB3master_PADDR[4]), .B(
        COREABC_0_APB3master_PADDR[3]), .Y(N_85));
    NOR3B \CUARTOOII_RNO_0[6]  (.A(COREABC_0_APB3master_PADDR_0_0), .B(
        \CUARTOIII[6] ), .C(COREABC_0_APB3master_PADDR[4]), .Y(N_27_0));
    DFN1E1C0 \CUARTO1OI[6]  (.D(COREABC_0_APB3master_PWDATA[6]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(CUARTO1OI4), .Q(
        \CUARTO1OI[6]_net_1 ));
    NOR3B \CUARTOOII_RNO_0[5]  (.A(COREABC_0_APB3master_PADDR_0_0), .B(
        \CUARTOIII[5] ), .C(COREABC_0_APB3master_PADDR[4]), .Y(N_30_0));
    MX2C \CUARTOOII_RNO_1[2]  (.A(\CUARTl0OI[2]_net_1 ), .B(
        \CUARTO1OI[2]_net_1 ), .S(COREABC_0_APB3master_PADDR_0_0), .Y(
        N_75));
    MX2C \CUARTOOII_RNO_1[1]  (.A(\CUARTl0OI[1]_net_1 ), .B(
        \CUARTO1OI[1]_net_1 ), .S(COREABC_0_APB3master_PADDR_0_0), .Y(
        N_78));
    MX2 \CUARTOOII_RNO_0[0]  (.A(N_53_0), .B(N_54_0), .S(
        COREABC_0_APB3master_PADDR[4]), .Y(N_55_0));
    DFN1E1C0 \CUARTO1OI[3]  (.D(COREABC_0_APB3master_PWDATA[3]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(CUARTO1OI4), .Q(
        \CUARTO1OI[3]_net_1 ));
    DFN1E1C0 \CUARTO1OI[1]  (.D(COREABC_0_APB3master_PWDATA[1]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(CUARTO1OI4), .Q(
        \CUARTO1OI[1]_net_1 ));
    MX2B \CUARTOOII_RNO[4]  (.A(N_35_0), .B(N_69), .S(
        COREABC_0_APB3master_PADDR[3]), .Y(N_37_0));
    DFN1E1C0 \CUARTO1OI[4]  (.D(COREABC_0_APB3master_PWDATA[4]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(CUARTO1OI4), .Q(
        \CUARTO1OI[4]_net_1 ));
    NOR3C m12 (.A(COREABC_0_APB3master_PADDR[3]), .B(m12_e_0), .C(
        N_83_mux), .Y(CUARTO1OI4));
    DFN1E1C0 \CUARTO1OI[0]  (.D(COREABC_0_APB3master_PWDATA[0]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(CUARTO1OI4), .Q(
        \CUARTO1OI[0]_net_1 ));
    NOR3A m14 (.A(COREABC_0_APB3master_PENABLE), .B(
        COREABC_0_APB3master_PADDR[4]), .C(
        COREABC_0_APB3master_PADDR_0_0), .Y(N_84_mux));
    DFN1E1C0 \CUARTl0OI[4]  (.D(COREABC_0_APB3master_PWDATA[4]), .CLK(
        SYSCLK_c), .CLR(COREABC_0_PRESETN), .E(CUARTl0OI4), .Q(
        \CUARTl0OI[4]_net_1 ));
    
endmodule


module Minimal_SoC(
       NSYSRESET,
       RX,
       SYSCLK,
       GPIO,
       TX
    );
input  NSYSRESET;
input  RX;
input  SYSCLK;
output [7:0] GPIO;
output TX;

    wire INTACT, \PRDATA_S[0] , \PRDATA_S[1] , \PRDATA_S[2] , 
        \PRDATA_S[3] , \PRDATA_S[4] , \PRDATA_S[5] , \PRDATA_S[6] , 
        \PRDATA_S[7] , PSLVERR_S, PREADY_S, COREABC_0_PRESETN, 
        COREABC_0_APB3master_PENABLE, COREABC_0_APB3master_PWRITE, 
        COREABC_0_APB3master_PSELx, \COREABC_0_APB3master_PADDR[0] , 
        \COREABC_0_APB3master_PADDR[1] , 
        \COREABC_0_APB3master_PADDR[2] , 
        \COREABC_0_APB3master_PADDR[3] , 
        \COREABC_0_APB3master_PADDR[4] , 
        \COREABC_0_APB3master_PADDR[5] , 
        \COREABC_0_APB3master_PADDR[6] , 
        \COREABC_0_APB3master_PADDR[7] , 
        \COREABC_0_APB3master_PADDR[8] , 
        \COREABC_0_APB3master_PADDR[9] , 
        \COREABC_0_APB3master_PADDR[10] , 
        \COREABC_0_APB3master_PADDR[11] , 
        \COREABC_0_APB3master_PADDR[12] , 
        \COREABC_0_APB3master_PADDR[13] , 
        \COREABC_0_APB3master_PADDR[14] , 
        \COREABC_0_APB3master_PADDR[15] , 
        \COREABC_0_APB3master_PADDR[16] , 
        \COREABC_0_APB3master_PADDR[17] , 
        \COREABC_0_APB3master_PADDR[18] , 
        \COREABC_0_APB3master_PADDR[19] , 
        \COREABC_0_APB3master_PWDATA[0] , 
        \COREABC_0_APB3master_PWDATA[1] , 
        \COREABC_0_APB3master_PWDATA[2] , 
        \COREABC_0_APB3master_PWDATA[3] , 
        \COREABC_0_APB3master_PWDATA[4] , 
        \COREABC_0_APB3master_PWDATA[5] , 
        \COREABC_0_APB3master_PWDATA[6] , 
        \COREABC_0_APB3master_PWDATA[7] , CoreTimer_0_TIMINT, VCC, GND, 
        \CoreAPB3_0_APBmslave0_PRDATA[0] , 
        \CoreAPB3_0_APBmslave0_PRDATA[1] , 
        \CoreAPB3_0_APBmslave0_PRDATA[2] , 
        \CoreAPB3_0_APBmslave0_PRDATA[3] , 
        \CoreAPB3_0_APBmslave0_PRDATA[4] , 
        \CoreAPB3_0_APBmslave0_PRDATA[5] , 
        \CoreAPB3_0_APBmslave0_PRDATA[6] , 
        \CoreAPB3_0_APBmslave0_PRDATA[7] , 
        \CoreAPB3_0_APBmslave1_PRDATA[0] , 
        \CoreAPB3_0_APBmslave1_PRDATA[1] , 
        \CoreAPB3_0_APBmslave1_PRDATA[2] , 
        \CoreAPB3_0_APBmslave1_PRDATA[3] , 
        \CoreAPB3_0_APBmslave1_PRDATA[4] , 
        \CoreAPB3_0_APBmslave1_PRDATA[5] , 
        \CoreAPB3_0_APBmslave1_PRDATA[6] , 
        \CoreAPB3_0_APBmslave1_PRDATA[7] , 
        \COREABC_0_APB3master_PRDATA[0] , 
        \COREABC_0_APB3master_PRDATA[1] , 
        \COREABC_0_APB3master_PRDATA[2] , 
        \COREABC_0_APB3master_PRDATA[3] , 
        \COREABC_0_APB3master_PRDATA[4] , 
        \COREABC_0_APB3master_PRDATA[5] , 
        \COREABC_0_APB3master_PRDATA[6] , 
        \COREABC_0_APB3master_PRDATA[7] , NSYSRESET_c, RX_c, SYSCLK_c, 
        \GPIO_c[0] , \GPIO_c[1] , \GPIO_c[2] , \GPIO_c[3] , 
        \GPIO_c[4] , \GPIO_c[5] , \GPIO_c[6] , \GPIO_c[7] , TX_c, 
        CoreAPB3_0_APBmslave1_PSELx, CoreAPB3_0_APBmslave0_PSELx, 
        PRESETN, \COREABC_0_APB3master_PADDR_0[2] ;
    
    CLKINT COREABC_0_PRESETN_RNIUAJ1 (.A(PRESETN), .Y(
        COREABC_0_PRESETN));
    CoreAPB3_Z3 CoreAPB3_0 (.COREABC_0_APB3master_PRDATA({
        \COREABC_0_APB3master_PRDATA[7] , 
        \COREABC_0_APB3master_PRDATA[6] , 
        \COREABC_0_APB3master_PRDATA[5] , 
        \COREABC_0_APB3master_PRDATA[4] , 
        \COREABC_0_APB3master_PRDATA[3] , 
        \COREABC_0_APB3master_PRDATA[2] , 
        \COREABC_0_APB3master_PRDATA[1] , 
        \COREABC_0_APB3master_PRDATA[0] }), 
        .CoreAPB3_0_APBmslave1_PRDATA({
        \CoreAPB3_0_APBmslave1_PRDATA[7] , 
        \CoreAPB3_0_APBmslave1_PRDATA[6] , 
        \CoreAPB3_0_APBmslave1_PRDATA[5] , 
        \CoreAPB3_0_APBmslave1_PRDATA[4] , 
        \CoreAPB3_0_APBmslave1_PRDATA[3] , 
        \CoreAPB3_0_APBmslave1_PRDATA[2] , 
        \CoreAPB3_0_APBmslave1_PRDATA[1] , 
        \CoreAPB3_0_APBmslave1_PRDATA[0] }), 
        .CoreAPB3_0_APBmslave0_PRDATA({
        \CoreAPB3_0_APBmslave0_PRDATA[7] , 
        \CoreAPB3_0_APBmslave0_PRDATA[6] , 
        \CoreAPB3_0_APBmslave0_PRDATA[5] , 
        \CoreAPB3_0_APBmslave0_PRDATA[4] , 
        \CoreAPB3_0_APBmslave0_PRDATA[3] , 
        \CoreAPB3_0_APBmslave0_PRDATA[2] , 
        \CoreAPB3_0_APBmslave0_PRDATA[1] , 
        \CoreAPB3_0_APBmslave0_PRDATA[0] }), 
        .COREABC_0_APB3master_PADDR({\COREABC_0_APB3master_PADDR[19] , 
        \COREABC_0_APB3master_PADDR[18] , 
        \COREABC_0_APB3master_PADDR[17] , 
        \COREABC_0_APB3master_PADDR[16] }), 
        .CoreAPB3_0_APBmslave0_PSELx(CoreAPB3_0_APBmslave0_PSELx), 
        .COREABC_0_APB3master_PSELx(COREABC_0_APB3master_PSELx), 
        .CoreAPB3_0_APBmslave1_PSELx(CoreAPB3_0_APBmslave1_PSELx));
    INBUF RX_pad (.PAD(RX), .Y(RX_c));
    INBUF NSYSRESET_pad (.PAD(NSYSRESET), .Y(NSYSRESET_c));
    CoreTimer_32s_0s_15s_0s CoreTimer_0 (.CoreAPB3_0_APBmslave0_PRDATA({
        \CoreAPB3_0_APBmslave0_PRDATA[7] , 
        \CoreAPB3_0_APBmslave0_PRDATA[6] , 
        \CoreAPB3_0_APBmslave0_PRDATA[5] , 
        \CoreAPB3_0_APBmslave0_PRDATA[4] , 
        \CoreAPB3_0_APBmslave0_PRDATA[3] , 
        \CoreAPB3_0_APBmslave0_PRDATA[2] , 
        \CoreAPB3_0_APBmslave0_PRDATA[1] , 
        \CoreAPB3_0_APBmslave0_PRDATA[0] }), 
        .COREABC_0_APB3master_PWDATA({\COREABC_0_APB3master_PWDATA[7] , 
        \COREABC_0_APB3master_PWDATA[6] , 
        \COREABC_0_APB3master_PWDATA[5] , 
        \COREABC_0_APB3master_PWDATA[4] , 
        \COREABC_0_APB3master_PWDATA[3] , 
        \COREABC_0_APB3master_PWDATA[2] , 
        \COREABC_0_APB3master_PWDATA[1] , 
        \COREABC_0_APB3master_PWDATA[0] }), 
        .COREABC_0_APB3master_PADDR({\COREABC_0_APB3master_PADDR[4] , 
        \COREABC_0_APB3master_PADDR[3] , 
        \COREABC_0_APB3master_PADDR[2] }), 
        .COREABC_0_APB3master_PADDR_0_0(
        \COREABC_0_APB3master_PADDR_0[2] ), .COREABC_0_PRESETN(
        COREABC_0_PRESETN), .SYSCLK_c(SYSCLK_c), .CoreTimer_0_TIMINT(
        CoreTimer_0_TIMINT), .COREABC_0_APB3master_PENABLE(
        COREABC_0_APB3master_PENABLE), .COREABC_0_APB3master_PWRITE(
        COREABC_0_APB3master_PWRITE), .CoreAPB3_0_APBmslave0_PSELx(
        CoreAPB3_0_APBmslave0_PSELx));
    VCC VCC_i (.Y(VCC));
    OUTBUF TX_pad (.D(TX_c), .PAD(TX));
    OUTBUF \GPIO_pad[5]  (.D(\GPIO_c[5] ), .PAD(GPIO[5]));
    OUTBUF \GPIO_pad[0]  (.D(\GPIO_c[0] ), .PAD(GPIO[0]));
    BUFF \COREABC_0_PADDR_M_RNIUKR2[2]  (.A(
        \COREABC_0_APB3master_PADDR[2] ), .Y(
        \COREABC_0_APB3master_PADDR_0[2] ));
    CLKBUF SYSCLK_pad (.PAD(SYSCLK), .Y(SYSCLK_c));
    GND GND_i (.Y(GND));
    OUTBUF \GPIO_pad[1]  (.D(\GPIO_c[1] ), .PAD(GPIO[1]));
    OUTBUF \GPIO_pad[6]  (.D(\GPIO_c[6] ), .PAD(GPIO[6]));
    OUTBUF \GPIO_pad[3]  (.D(\GPIO_c[3] ), .PAD(GPIO[3]));
    OUTBUF \GPIO_pad[2]  (.D(\GPIO_c[2] ), .PAD(GPIO[2]));
    OUTBUF \GPIO_pad[7]  (.D(\GPIO_c[7] ), .PAD(GPIO[7]));
    Minimal_SoC_COREABC_0_COREABC_Z1 COREABC_0 (.PCLK(SYSCLK_c), 
        .NSYSRESET(NSYSRESET_c), .PRESETN(PRESETN), .PENABLE_M(
        COREABC_0_APB3master_PENABLE), .PWRITE_M(
        COREABC_0_APB3master_PWRITE), .PSEL_M(
        COREABC_0_APB3master_PSELx), .PADDR_M({
        \COREABC_0_APB3master_PADDR[19] , 
        \COREABC_0_APB3master_PADDR[18] , 
        \COREABC_0_APB3master_PADDR[17] , 
        \COREABC_0_APB3master_PADDR[16] , 
        \COREABC_0_APB3master_PADDR[15] , 
        \COREABC_0_APB3master_PADDR[14] , 
        \COREABC_0_APB3master_PADDR[13] , 
        \COREABC_0_APB3master_PADDR[12] , 
        \COREABC_0_APB3master_PADDR[11] , 
        \COREABC_0_APB3master_PADDR[10] , 
        \COREABC_0_APB3master_PADDR[9] , 
        \COREABC_0_APB3master_PADDR[8] , 
        \COREABC_0_APB3master_PADDR[7] , 
        \COREABC_0_APB3master_PADDR[6] , 
        \COREABC_0_APB3master_PADDR[5] , 
        \COREABC_0_APB3master_PADDR[4] , 
        \COREABC_0_APB3master_PADDR[3] , 
        \COREABC_0_APB3master_PADDR[2] , 
        \COREABC_0_APB3master_PADDR[1] , 
        \COREABC_0_APB3master_PADDR[0] }), .PWDATA_M({
        \COREABC_0_APB3master_PWDATA[7] , 
        \COREABC_0_APB3master_PWDATA[6] , 
        \COREABC_0_APB3master_PWDATA[5] , 
        \COREABC_0_APB3master_PWDATA[4] , 
        \COREABC_0_APB3master_PWDATA[3] , 
        \COREABC_0_APB3master_PWDATA[2] , 
        \COREABC_0_APB3master_PWDATA[1] , 
        \COREABC_0_APB3master_PWDATA[0] }), .PRDATA_M({
        \COREABC_0_APB3master_PRDATA[7] , 
        \COREABC_0_APB3master_PRDATA[6] , 
        \COREABC_0_APB3master_PRDATA[5] , 
        \COREABC_0_APB3master_PRDATA[4] , 
        \COREABC_0_APB3master_PRDATA[3] , 
        \COREABC_0_APB3master_PRDATA[2] , 
        \COREABC_0_APB3master_PRDATA[1] , 
        \COREABC_0_APB3master_PRDATA[0] }), .PREADY_M(VCC), .PSLVERR_M(
        GND), .IO_IN({\GPIO_c[7] , \GPIO_c[6] , \GPIO_c[5] , 
        \GPIO_c[4] , \GPIO_c[3] , \GPIO_c[2] , \GPIO_c[1] , 
        \GPIO_c[0] }), .IO_OUT({\GPIO_c[7] , \GPIO_c[6] , \GPIO_c[5] , 
        \GPIO_c[4] , \GPIO_c[3] , \GPIO_c[2] , \GPIO_c[1] , 
        \GPIO_c[0] }), .INTREQ(CoreTimer_0_TIMINT), .INTACT(INTACT), 
        .INITDATVAL(GND), .INITDONE(VCC), .INITADDR({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .INITDATA({GND, GND, 
        GND, GND, GND, GND, GND, GND, GND}), .PSEL_S(GND), .PENABLE_S(
        GND), .PWRITE_S(GND), .PADDR_S({GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND}), .PWDATA_S({GND, GND, GND, GND, 
        GND, GND, GND, GND}), .PRDATA_S({\PRDATA_S[7] , \PRDATA_S[6] , 
        \PRDATA_S[5] , \PRDATA_S[4] , \PRDATA_S[3] , \PRDATA_S[2] , 
        \PRDATA_S[1] , \PRDATA_S[0] }), .PSLVERR_S(PSLVERR_S), 
        .PREADY_S(PREADY_S));
    Minimal_SoC_CoreUARTapb_0_CoreUARTapb_Z4 CoreUARTapb_0 (
        .COREABC_0_APB3master_PWDATA({\COREABC_0_APB3master_PWDATA[7] , 
        \COREABC_0_APB3master_PWDATA[6] , 
        \COREABC_0_APB3master_PWDATA[5] , 
        \COREABC_0_APB3master_PWDATA[4] , 
        \COREABC_0_APB3master_PWDATA[3] , 
        \COREABC_0_APB3master_PWDATA[2] , 
        \COREABC_0_APB3master_PWDATA[1] , 
        \COREABC_0_APB3master_PWDATA[0] }), 
        .CoreAPB3_0_APBmslave1_PRDATA({
        \CoreAPB3_0_APBmslave1_PRDATA[7] , 
        \CoreAPB3_0_APBmslave1_PRDATA[6] , 
        \CoreAPB3_0_APBmslave1_PRDATA[5] , 
        \CoreAPB3_0_APBmslave1_PRDATA[4] , 
        \CoreAPB3_0_APBmslave1_PRDATA[3] , 
        \CoreAPB3_0_APBmslave1_PRDATA[2] , 
        \CoreAPB3_0_APBmslave1_PRDATA[1] , 
        \CoreAPB3_0_APBmslave1_PRDATA[0] }), 
        .COREABC_0_APB3master_PADDR_0_0(
        \COREABC_0_APB3master_PADDR_0[2] ), 
        .COREABC_0_APB3master_PADDR({\COREABC_0_APB3master_PADDR[4] , 
        \COREABC_0_APB3master_PADDR[3] , 
        \COREABC_0_APB3master_PADDR[2] }), 
        .CoreAPB3_0_APBmslave1_PSELx(CoreAPB3_0_APBmslave1_PSELx), 
        .COREABC_0_APB3master_PWRITE(COREABC_0_APB3master_PWRITE), 
        .TX_c(TX_c), .RX_c(RX_c), .COREABC_0_PRESETN(COREABC_0_PRESETN)
        , .SYSCLK_c(SYSCLK_c), .COREABC_0_APB3master_PENABLE(
        COREABC_0_APB3master_PENABLE));
    OUTBUF \GPIO_pad[4]  (.D(\GPIO_c[4] ), .PAD(GPIO[4]));
    
endmodule
