`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4
// File used only for Simulation


module PLLBA(
       CLKA,
       EXTFB,
       POWERDOWN,
       GLA,
       LOCK,
       GLB,
       YB,
       GLC,
       YC,
       OADIV0,
       OADIV1,
       OADIV2,
       OADIV3,
       OADIV4,
       OAMUX0,
       OAMUX1,
       OAMUX2,
       DLYGLA0,
       DLYGLA1,
       DLYGLA2,
       DLYGLA3,
       DLYGLA4,
       OBDIV0,
       OBDIV1,
       OBDIV2,
       OBDIV3,
       OBDIV4,
       OBMUX0,
       OBMUX1,
       OBMUX2,
       DLYYB0,
       DLYYB1,
       DLYYB2,
       DLYYB3,
       DLYYB4,
       DLYGLB0,
       DLYGLB1,
       DLYGLB2,
       DLYGLB3,
       DLYGLB4,
       OCDIV0,
       OCDIV1,
       OCDIV2,
       OCDIV3,
       OCDIV4,
       OCMUX0,
       OCMUX1,
       OCMUX2,
       DLYYC0,
       DLYYC1,
       DLYYC2,
       DLYYC3,
       DLYYC4,
       DLYGLC0,
       DLYGLC1,
       DLYGLC2,
       DLYGLC3,
       DLYGLC4,
       FINDIV0,
       FINDIV1,
       FINDIV2,
       FINDIV3,
       FINDIV4,
       FINDIV5,
       FINDIV6,
       FBDIV0,
       FBDIV1,
       FBDIV2,
       FBDIV3,
       FBDIV4,
       FBDIV5,
       FBDIV6,
       FBDLY0,
       FBDLY1,
       FBDLY2,
       FBDLY3,
       FBDLY4,
       FBSEL0,
       FBSEL1,
       XDLYSEL,
       VCOSEL0,
       VCOSEL1,
       VCOSEL2
    );
input  CLKA;
input  EXTFB;
input  POWERDOWN;
output GLA;
output LOCK;
output GLB;
output YB;
output GLC;
output YC;
input  OADIV0;
input  OADIV1;
input  OADIV2;
input  OADIV3;
input  OADIV4;
input  OAMUX0;
input  OAMUX1;
input  OAMUX2;
input  DLYGLA0;
input  DLYGLA1;
input  DLYGLA2;
input  DLYGLA3;
input  DLYGLA4;
input  OBDIV0;
input  OBDIV1;
input  OBDIV2;
input  OBDIV3;
input  OBDIV4;
input  OBMUX0;
input  OBMUX1;
input  OBMUX2;
input  DLYYB0;
input  DLYYB1;
input  DLYYB2;
input  DLYYB3;
input  DLYYB4;
input  DLYGLB0;
input  DLYGLB1;
input  DLYGLB2;
input  DLYGLB3;
input  DLYGLB4;
input  OCDIV0;
input  OCDIV1;
input  OCDIV2;
input  OCDIV3;
input  OCDIV4;
input  OCMUX0;
input  OCMUX1;
input  OCMUX2;
input  DLYYC0;
input  DLYYC1;
input  DLYYC2;
input  DLYYC3;
input  DLYYC4;
input  DLYGLC0;
input  DLYGLC1;
input  DLYGLC2;
input  DLYGLC3;
input  DLYGLC4;
input  FINDIV0;
input  FINDIV1;
input  FINDIV2;
input  FINDIV3;
input  FINDIV4;
input  FINDIV5;
input  FINDIV6;
input  FBDIV0;
input  FBDIV1;
input  FBDIV2;
input  FBDIV3;
input  FBDIV4;
input  FBDIV5;
input  FBDIV6;
input  FBDLY0;
input  FBDLY1;
input  FBDLY2;
input  FBDLY3;
input  FBDLY4;
input  FBSEL0;
input  FBSEL1;
input  XDLYSEL;
input  VCOSEL0;
input  VCOSEL1;
input  VCOSEL2;

    wire GND, SDOUT, FB, EXTFBDLY, GLADLY, LOCKDLY, GLBDLY, YBDLY, 
        GLCDLY, YCDLY, VCODLY;
    wire GND_power_net1;
    assign GND = GND_power_net1;
    
    PLL_SDF #( .VCOFREQUENCY(32.000000) )  pll_sdf_0 (.CLKA(CLKA), 
        .EXTFB(EXTFBDLY), .POWERDOWN(POWERDOWN), .GLAOUT(GLADLY), 
        .LOCKOUT(LOCKDLY), .GLBOUT(GLBDLY), .YBOUT(YBDLY), .GLCOUT(
        GLCDLY), .YCOUT(YCDLY), .OADIV0(OADIV0), .OADIV1(OADIV1), 
        .OADIV2(OADIV2), .OADIV3(OADIV3), .OADIV4(OADIV4), .OAMUX0(
        OAMUX0), .OAMUX1(OAMUX1), .OAMUX2(OAMUX2), .DLYGLA0(DLYGLA0), 
        .DLYGLA1(DLYGLA1), .DLYGLA2(DLYGLA2), .DLYGLA3(DLYGLA3), 
        .DLYGLA4(DLYGLA4), .OBDIV0(OBDIV0), .OBDIV1(OBDIV1), .OBDIV2(
        OBDIV2), .OBDIV3(OBDIV3), .OBDIV4(OBDIV4), .OBMUX0(OBMUX0), 
        .OBMUX1(OBMUX1), .OBMUX2(OBMUX2), .DLYYB0(DLYYB0), .DLYYB1(
        DLYYB1), .DLYYB2(DLYYB2), .DLYYB3(DLYYB3), .DLYYB4(DLYYB4), 
        .DLYGLB0(DLYGLB0), .DLYGLB1(DLYGLB1), .DLYGLB2(DLYGLB2), 
        .DLYGLB3(DLYGLB3), .DLYGLB4(DLYGLB4), .OCDIV0(OCDIV0), .OCDIV1(
        OCDIV1), .OCDIV2(OCDIV2), .OCDIV3(OCDIV3), .OCDIV4(OCDIV4), 
        .OCMUX0(OCMUX0), .OCMUX1(OCMUX1), .OCMUX2(OCMUX2), .DLYYC0(
        DLYYC0), .DLYYC1(DLYYC1), .DLYYC2(DLYYC2), .DLYYC3(DLYYC3), 
        .DLYYC4(DLYYC4), .DLYGLC0(DLYGLC0), .DLYGLC1(DLYGLC1), 
        .DLYGLC2(DLYGLC2), .DLYGLC3(DLYGLC3), .DLYGLC4(DLYGLC4), 
        .FINDIV0(FINDIV0), .FINDIV1(FINDIV1), .FINDIV2(FINDIV2), 
        .FINDIV3(FINDIV3), .FINDIV4(FINDIV4), .FINDIV5(FINDIV5), 
        .FINDIV6(FINDIV6), .FBDIV0(FBDIV0), .FBDIV1(FBDIV1), .FBDIV2(
        FBDIV2), .FBDIV3(FBDIV3), .FBDIV4(FBDIV4), .FBDIV5(FBDIV5), 
        .FBDIV6(FBDIV6), .FBDLY0(FBDLY0), .FBDLY1(FBDLY1), .FBDLY2(
        FBDLY2), .FBDLY3(FBDLY3), .FBDLY4(FBDLY4), .FBSEL0(FBSEL0), 
        .FBSEL1(FBSEL1), .XDLYSEL(XDLYSEL), .VCOSEL0(VCOSEL0), 
        .VCOSEL1(VCOSEL1), .VCOSEL2(VCOSEL2), .INTFB(FB), .VCOOUT(
        VCODLY));
    PLL_DLY_SDF #( .VCOFREQUENCY(32.000000) )  pll_dly_sdf_0 (.GLA(GLA)
        , .LOCK(LOCK), .GLB(GLB), .YB(YB), .GLC(GLC), .YC(YC), .GLAIN(
        GLADLY), .LOCKIN(LOCKDLY), .GLBIN(GLBDLY), .YBIN(YBDLY), 
        .GLCIN(GLCDLY), .YCIN(YCDLY), .EXTFBOUT(EXTFBDLY), .EXTFBIN(
        EXTFB), .VCOIN(VCODLY), .PLLOUT(FB));
    GND GND_power_inst1 (.Y(GND_power_net1));
    
endmodule


module Minimal_SoC(
       NSYSRESET,
       Power_Down,
       RX,
       SCL_MCU,
       SPISDI,
       SYSCLK,
       SCL_Sensor,
       SPISCLKO,
       SPISDO,
       SPISS,
       TX,
       SDA_MCU,
       SDA_Sensors
    );
input  NSYSRESET;
input  Power_Down;
input  RX;
input  SCL_MCU;
input  SPISDI;
input  SYSCLK;
output SCL_Sensor;
output SPISCLKO;
output SPISDO;
output SPISS;
output TX;
inout  SDA_MCU;
inout  SDA_Sensors;

    wire INTACT, VCC, BIBUF_0_Y, BIBUF_1_Y, GLA, COREABC_0_PRESETN_0, 
        COREABC_0_APB3master_PENABLE, COREABC_0_APB3master_PWRITE, 
        COREABC_0_APB3master_PSELx, \COREABC_0_APB3master_PADDR[2] , 
        \COREABC_0_APB3master_PADDR[3] , 
        \COREABC_0_APB3master_PADDR[4] , 
        \COREABC_0_APB3master_PADDR[5] , 
        \COREABC_0_APB3master_PADDR[6] , 
        \COREABC_0_APB3master_PADDR[12] , 
        \COREABC_0_APB3master_PADDR[13] , 
        \COREABC_0_APB3master_PWDATA[0] , 
        \COREABC_0_APB3master_PWDATA[1] , 
        \COREABC_0_APB3master_PWDATA[2] , 
        \COREABC_0_APB3master_PWDATA[3] , 
        \COREABC_0_APB3master_PWDATA[4] , 
        \COREABC_0_APB3master_PWDATA[5] , 
        \COREABC_0_APB3master_PWDATA[6] , 
        \COREABC_0_APB3master_PWDATA[7] , 
        \COREABC_0_APB3master_PWDATA[8] , 
        \COREABC_0_APB3master_PWDATA[9] , 
        \COREABC_0_APB3master_PWDATA[10] , 
        \COREABC_0_APB3master_PWDATA[11] , 
        \COREABC_0_APB3master_PWDATA[12] , 
        \COREABC_0_APB3master_PWDATA[13] , 
        \COREABC_0_APB3master_PWDATA[14] , 
        \COREABC_0_APB3master_PWDATA[15] , CoreUARTapb_0_TXRDY, 
        \CoreAPB3_0_APBmslave0_PRDATA[8] , 
        \CoreAPB3_0_APBmslave0_PRDATA[9] , 
        \CoreAPB3_0_APBmslave0_PRDATA[10] , 
        \CoreAPB3_0_APBmslave0_PRDATA[11] , 
        \CoreAPB3_0_APBmslave0_PRDATA[12] , 
        \CoreAPB3_0_APBmslave0_PRDATA[13] , 
        \CoreAPB3_0_APBmslave0_PRDATA[14] , 
        \CoreAPB3_0_APBmslave0_PRDATA[15] , RXRDY, N_7, N_9, N_11, 
        N_13, N_15, N_17, \PRDATA_iv_i[6] , N_21, 
        \CORESPI_0.USPI.SPIMODE , \CORESPI_0.USPI.cfg_cmdsize[0] , 
        \CORESPI_0.USPI.cfg_cmdsize[1] , 
        \CORESPI_0.USPI.cfg_cmdsize[2] , 
        \CORESPI_0.USPI.clk_div_val[1] , 
        \CORESPI_0.USPI.clk_div_val[2] , 
        \CORESPI_0.USPI.clk_div_val[4] , 
        \CORESPI_0.USPI.clk_div_val[6] , 
        \CORESPI_0.USPI.master_ssel_out , \CoreTimer_0.iTimInt , 
        \CORESPI_0.USPI.URF.cfg_ssel[2] , 
        \CORESPI_0.USPI.URF.cfg_ssel[6] , 
        \CORESPI_0.USPI.URF.int_raw[6] , 
        \CORESPI_0.USPI.URF.int_raw[4] , 
        \CORESPI_0.USPI.URF.int_raw[2] , 
        \CORESPI_0.USPI.URF.int_raw[1] , NSYSRESET_c, Power_Down_c, 
        RX_c, SPISDI_c, SYSCLK_c, SCL_MCU_c_c, SPISCLKO_c, SPISDO_c, 
        SPISS_c, TX_c, \CORESPI_0.USPI.URF.N_62 , 
        \CORESPI_0.USPI.URF.control1_m[0] , 
        \CORESPI_0.USPI.URF.int_raw_m[0] , 
        \CORESPI_0.USPI.URF.rdata53 , \CORESPI_0.USPI.URF.control17 , 
        \CORESPI_0.USPI.URF.cfg_ssel_m[0] , 
        \CORESPI_0.USPI.URF.control19 , \CORESPI_0.USPI.URF.N_127 , 
        \CoreTimer_0.DataOut_1_sqmuxa_2 , \CORESPI_0.USPI.URF.N_125 , 
        \CORESPI_0.USPI.rx_fifo_data_out[0] , 
        \CoreAPB3_0_APBmslave1_PRDATA_i_1[0] , 
        \CORESPI_0.USPI.un1_PADDR , 
        \CORESPI_0.USPI.URF.int_masked_m[0] , 
        \CORESPI_0.USPI.URF.N_126 , CoreAPB3_0_APBmslave1_PSELx, 
        \CORESPI_0.USPI.URF.control110 , \CORESPI_0.USPI.URF.N_120_1 , 
        \CoreTimer_0.iTimInt_m_2 , CoreAPB3_0_APBmslave0_PSELx, N_73, 
        \CORESPI_0.USPI.URF.first_frame_m , 
        \CORESPI_0.USPI.URF.int_masked_m[6] , 
        \CORESPI_0.USPI.URF.CLK_DIV_m[0] , 
        \CORESPI_0.USPI.URF.cfg_ssel_m[1] , 
        \CORESPI_0.USPI.URF.status_byte_m[1] , 
        \CORESPI_0.USPI.URF.control1_m[1] , 
        \CORESPI_0.USPI.URF.rx_fifo_empty_m , 
        \CORESPI_0.USPI.URF.control1_m[2] , 
        \CORESPI_0.USPI.URF.int_raw_m_0[2] , 
        \CORESPI_0.USPI.URF.cfg_ssel_m[4] , 
        \CORESPI_0.USPI.URF.control2_m[7] , 
        \CORESPI_0.USPI.URF.control1_m[7] , 
        \CORESPI_0.USPI.URF.int_masked_m[7] , 
        \CoreAPB3_0_APBmslave1_PRDATA_i_1[7] , 
        \CoreAPB3_0_APBmslave1_PRDATA_i_1[6] , 
        \CoreAPB3_0_APBmslave1_PRDATA_i_1[5] , 
        \CoreAPB3_0_APBmslave1_PRDATA_i_1[4] , 
        \CoreAPB3_0_APBmslave1_PRDATA_i_1[3] , 
        \CoreAPB3_0_APBmslave1_PRDATA_i_1[2] , 
        \CoreAPB3_0_APBmslave1_PRDATA_i_1[1] , 
        \CORESPI_0.USPI.prdata_regs[5] , 
        \CORESPI_0.USPI.rx_fifo_data_out[2] , 
        \CORESPI_0.USPI.rx_fifo_data_out[1] , 
        \CORESPI_0.USPI.URF.rdata_iv_4[7] , 
        \CORESPI_0.USPI.URF.rdata_iv_3[4] , 
        \CORESPI_0.USPI.URF.rdata_0_iv_2[3] , 
        \CORESPI_0.USPI.URF.rdata_0_iv_3[3] , 
        \CoreAPB3_0.u_mux_p_to_b3.PRDATA_iv_i_1[7] , 
        \CoreAPB3_0.u_mux_p_to_b3.PRDATA_iv_i_1[4] , 
        \CoreAPB3_0.u_mux_p_to_b3.PRDATA_iv_i_1[3] , 
        \COREABC_0_PADDR_M_RNIGF1UA[13]_net_1 , d_N_3_i_0_li, 
        \CORESPI_0.USPI.URF.control110_0_a2_0 , d_N_5_mux, d_N_5_mux_0, 
        \CoreTimer_0.un2_PrescaleEn_0 , 
        \CORESPI_0.USPI.URF.int_masked_m_0_a2_0[2] , 
        \CORESPI_0.USPI.URF.rdata_iv_3_0[6] , 
        \CoreAPB3_0_APBmslave0_PRDATA_i_0[7] , 
        \CoreAPB3_0_APBmslave0_PRDATA_i_0[6] , 
        \CoreAPB3_0_APBmslave0_PRDATA_i_0[5] , 
        \CoreAPB3_0_APBmslave0_PRDATA_i_0[4] , 
        \CoreAPB3_0_APBmslave0_PRDATA_i_0[3] , 
        \CoreAPB3_0_APBmslave0_PRDATA_i_0[2] , 
        \CoreAPB3_0_APBmslave0_PRDATA_i_0[1] , 
        \CoreAPB3_0_APBmslave0_PRDATA_i_0[0] , RXRDY_i, PRESETN, 
        \PADDR_M[2] , \COREABC_0_APB3master_PADDR_0[3] , 
        \CoreAPB3_0/N_72 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2_3[1]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a1[0]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2_1[1]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_2[1]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2_0[1]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_35 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2_3[0]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2_1[0]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_3[0]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2_0[0]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2_3[2]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2_1[2]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_2[2]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2_0[2]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_1[5]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_0[5]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_6[0]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_4[0]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_3[0]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_0[0]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_5[1]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_4[1]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_1[1]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_0[1]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_3[1]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_6[2]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_4[2]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_3[2]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_2[2]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_1[2]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_0[2]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_1[6]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_0[6]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_2_3[6]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_a2_0[6]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_2_2[6]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_2_0[6]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_a0[6]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_a3[6]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_a1_2[6]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_m3_0_a2_2_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_m3_0_a2_0_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_m8_0_a2_4_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_m8_0_a2_2_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_m2_e_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_m4_0_a2_1_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_a1_0[6]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_a0_0[6]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_1_0[4]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_50 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_1_0[7]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_a4[6]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_49 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_N_9_mux , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_N_17_mux , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_N_7_mux , GND, 
        \CoreTimer_0/un1_PreScale8_0_0 , 
        \CoreTimer_0/CtrlReg_RNINQA54[2]_net_1 , 
        \CoreTimer_0/un1_m6_i_a3_5 , \CoreTimer_0/LoadEnReg_net_1 , 
        \CoreTimer_0/Counte_0 , \CoreTimer_0/un1_CtrlReg , 
        \CoreTimer_0/Count_RNIC07P9[22]_net_1 , 
        \CoreTimer_0/un1_PreScale8_0 , \CoreTimer_0/Count_26_0 , 
        \CoreTimer_0/N_9_0 , \CoreTimer_0/Count[9]_net_1 , 
        \CoreTimer_0/Count[10]_net_1 , 
        \CoreTimer_0/PrdataNext_1_0_iv_1[0] , 
        \CoreTimer_0/CtrlReg_m[0] , 
        \CoreTimer_0/PrdataNext_1_0_iv_0[0] , 
        \CoreTimer_0/TimerPre_m[0] , 
        \CoreTimer_0/PrdataNext_1_0_iv_0[1] , 
        \CoreTimer_0/TimerPre[1]_net_1 , 
        \CoreTimer_0/DataOut_3_sqmuxa_net_1 , 
        \CoreTimer_0/CtrlReg_m[1] , 
        \CoreTimer_0/PrdataNext_1_0_iv_0[2] , 
        \CoreTimer_0/TimerPre[2]_net_1 , \CoreTimer_0/CtrlReg_m[2] , 
        \CoreTimer_0/un1_m6_i_a3_4 , \CoreTimer_0/N_26_0 , 
        \CoreTimer_0/m32_0 , \CoreTimer_0/m32_m6_e_1 , 
        \CoreTimer_0/un1_m6_i_a3_2 , \CoreTimer_0/Count[26]_net_1 , 
        \CoreTimer_0/Count[25]_net_1 , \CoreTimer_0/Count[27]_net_1 , 
        \CoreTimer_0/CtrlReg[2]_net_1 , \CoreTimer_0/IntClrEn_0 , 
        \CoreTimer_0/un1_NextCountPulse_0_sqmuxa_2 , 
        \CoreTimer_0/PreScale_c3 , \CoreTimer_0/N_563_tz , 
        \CoreTimer_0/un1_NextCountPulse_0_sqmuxa_1 , 
        \CoreTimer_0/NextCountPulse_0_sqmuxa_2 , 
        \CoreTimer_0/CountPulse_RNO_10_net_1 , 
        \CoreTimer_0/NextCountPulse_0_sqmuxa_3 , 
        \CoreTimer_0/m32_m6_e_7 , \CoreTimer_0/m32_m6_e_4 , 
        \CoreTimer_0/m32_m6_e_5 , \CoreTimer_0/m32_m6_e_3 , 
        \CoreTimer_0/Count[22]_net_1 , \CoreTimer_0/Count[23]_net_1 , 
        \CoreTimer_0/Count[24]_net_1 , \CoreTimer_0/Count[28]_net_1 , 
        \CoreTimer_0/Count[29]_net_1 , \CoreTimer_0/RawTimInt_m_2_0 , 
        \CoreTimer_0/RawTimInt_net_1 , \CoreTimer_0/m23_m6_e_0_0 , 
        \CoreTimer_0/NextCountPulse_0_sqmuxa_7_7_0 , 
        \CoreTimer_0/PreScale[7]_net_1 , 
        \CoreTimer_0/PreScale[6]_net_1 , \CoreTimer_0/m23_m4_e_0_8 , 
        \CoreTimer_0/m23_m4_e_0_5 , \CoreTimer_0/m23_m4_e_0_4 , 
        \CoreTimer_0/m23_m4_e_0_6 , \CoreTimer_0/m23_m4_e_0_3 , 
        \CoreTimer_0/Count[17]_net_1 , \CoreTimer_0/Count[16]_net_1 , 
        \CoreTimer_0/m23_m4_e_0_1 , \CoreTimer_0/Count[19]_net_1 , 
        \CoreTimer_0/Count[18]_net_1 , \CoreTimer_0/Count[14]_net_1 , 
        \CoreTimer_0/Count[15]_net_1 , \CoreTimer_0/Count[13]_net_1 , 
        \CoreTimer_0/Count[12]_net_1 , \CoreTimer_0/Count[20]_net_1 , 
        \CoreTimer_0/Count[21]_net_1 , \CoreTimer_0/m11_m6_e_6 , 
        \CoreTimer_0/m11_m6_e_4 , \CoreTimer_0/Count[8]_net_1 , 
        \CoreTimer_0/Count[7]_net_1 , \CoreTimer_0/m11_m6_e_5 , 
        \CoreTimer_0/m11_m6_e_2 , \CoreTimer_0/Count[4]_net_1 , 
        \CoreTimer_0/Count[6]_net_1 , \CoreTimer_0/Count[11]_net_1 , 
        \CoreTimer_0/Count[3]_net_1 , \CoreTimer_0/Count[5]_net_1 , 
        \CoreTimer_0/NextCountPulse_0_sqmuxa_2_0 , 
        \CoreTimer_0/PreScale[2]_net_1 , 
        \CoreTimer_0/TimerPre[0]_net_1 , 
        \CoreTimer_0/NextCountPulse_0_sqmuxa_6_2_1 , 
        \CoreTimer_0/TimerPre[3]_net_1 , \CoreTimer_0/N_12_0 , 
        \CoreTimer_0/N_24_0 , \CoreTimer_0/N_3_0 , 
        \CoreTimer_0/N_560_tz , \CoreTimer_0/N_560_tz_tz , 
        \CoreTimer_0/NextCountPulse_0_sqmuxa_1_2 , 
        \CoreTimer_0/N_561_tz_tz , \CoreTimer_0/OneShotClr_1 , 
        \CoreTimer_0/CtrlEn_net_1 , \CoreTimer_0/RawTimInt_m_2 , 
        \CoreTimer_0/iTimInt_m_1 , 
        \CoreTimer_0/DataOut_1_sqmuxa_net_1 , 
        \CoreTimer_0/PrdataNextEn_net_1 , \CoreTimer_0/PreScale_c1 , 
        \CoreTimer_0/NextCountPulse_0_sqmuxa_2_3 , 
        \CoreTimer_0/NextCountPulse48 , 
        \CoreTimer_0/PreScale[8]_net_1 , 
        \CoreTimer_0/PreScale[9]_net_1 , 
        \CoreTimer_0/NextCountPulse_0_sqmuxa_7_7 , 
        \CoreTimer_0/NextCountPulse_0_sqmuxa_5_3 , 
        \CoreTimer_0/un1_NextCountPulse_0_sqmuxa , 
        \CoreTimer_0/NextCountPulse_0_sqmuxa_7 , 
        \CoreTimer_0/PreScale_c8 , \CoreTimer_0/IntClrEn , 
        \CoreTimer_0/un4_CtrlEn_net_1 , \CoreTimer_0/PrdataNext_1[0] , 
        \CoreTimer_0/Count_m[0] , \CoreTimer_0/Load_m[0] , 
        \CoreTimer_0/PrdataNext_1[2] , \CoreTimer_0/Count_m[2] , 
        \CoreTimer_0/Load_m[2] , \CoreTimer_0/PrdataNext_1[1] , 
        \CoreTimer_0/Count_m[1] , \CoreTimer_0/Load_m[1] , 
        \CoreTimer_0/PrdataNext_1[3] , \CoreTimer_0/Count_m[3] , 
        \CoreTimer_0/TimerPre_m[3] , \CoreTimer_0/Load_m[3] , 
        \CoreTimer_0/un1_PreScale8 , \CoreTimer_0/PreScale[1]_net_1 , 
        \CoreTimer_0/PreScale[0]_net_1 , 
        \CoreTimer_0/PreScale[4]_net_1 , \CoreTimer_0/N_431_i , 
        \CoreTimer_0/N_428_i , \CoreTimer_0/N_21_0 , 
        \CoreTimer_0/N_426_i , \CoreTimer_0/N_19_0 , 
        \CoreTimer_0/N_430_i , \CoreTimer_0/N_23_0 , 
        \CoreTimer_0/N_429_i , \CoreTimer_0/N_22_0 , 
        \CoreTimer_0/N_427_i , \CoreTimer_0/N_20_0 , 
        \CoreTimer_0/N_437_i , \CoreTimer_0/N_31_0 , 
        \CoreTimer_0/Count[30]_net_1 , \CoreTimer_0/N_438_i , 
        \CoreTimer_0/Count_66_0 , \CoreTimer_0/Count[31]_net_1 , 
        \CoreTimer_0/PreScale_n8 , \CoreTimer_0/PreScale8 , 
        \CoreTimer_0/PreScale_n9 , \CoreTimer_0/PreScale_n7 , 
        \CoreTimer_0/PreScale_82_0 , \CoreTimer_0/PreScale_n6 , 
        \CoreTimer_0/PreScale_c5 , \CoreTimer_0/PreScale_n5 , 
        \CoreTimer_0/PreScale[5]_net_1 , \CoreTimer_0/PreScale_c4 , 
        \CoreTimer_0/PreScale_n4 , \CoreTimer_0/PreScale_n3 , 
        \CoreTimer_0/PreScale[3]_net_1 , \CoreTimer_0/PreScale_c2 , 
        \CoreTimer_0/PreScale_n2 , \CoreTimer_0/N_67_mux , 
        \CoreTimer_0/Count[2]_net_1 , \CoreTimer_0/N_4_0 , 
        \CoreTimer_0/N_5_0 , \CoreTimer_0/N_6_0 , \CoreTimer_0/N_7_0 , 
        \CoreTimer_0/N_8_0 , \CoreTimer_0/N_14_0 , 
        \CoreTimer_0/N_15_0 , \CoreTimer_0/N_16_0 , 
        \CoreTimer_0/N_18_0 , \CoreTimer_0/N_30_0 , 
        \CoreTimer_0/N_409 , \CoreTimer_0/N_202 , 
        \CoreTimer_0/Load[2]_net_1 , \CoreTimer_0/N_418 , 
        \CoreTimer_0/N_220 , \CoreTimer_0/Load[11]_net_1 , 
        \CoreTimer_0/N_414 , \CoreTimer_0/N_212 , 
        \CoreTimer_0/Load[7]_net_1 , \CoreTimer_0/N_422 , 
        \CoreTimer_0/N_228 , \CoreTimer_0/Load[15]_net_1 , 
        \CoreTimer_0/PrdataNext_1[15] , \CoreTimer_0/Load_m[15] , 
        \CoreTimer_0/N_420 , \CoreTimer_0/N_223 , \CoreTimer_0/N_224 , 
        \CoreTimer_0/Load[13]_net_1 , \CoreTimer_0/PrdataNext_1[13] , 
        \CoreTimer_0/Load_m[13] , \CoreTimer_0/N_421 , 
        \CoreTimer_0/N_226 , \CoreTimer_0/Load[14]_net_1 , 
        \CoreTimer_0/PrdataNext_1[14] , \CoreTimer_0/Load_m[14] , 
        \CoreTimer_0/PrdataNext_1[11] , \CoreTimer_0/Load_m[11] , 
        \CoreTimer_0/N_416 , \CoreTimer_0/N_216 , 
        \CoreTimer_0/Load[9]_net_1 , \CoreTimer_0/PrdataNext_1[9] , 
        \CoreTimer_0/Load_m[9] , \CoreTimer_0/N_417 , 
        \CoreTimer_0/N_217 , \CoreTimer_0/N_218 , 
        \CoreTimer_0/Load[10]_net_1 , \CoreTimer_0/PrdataNext_1[10] , 
        \CoreTimer_0/Load_m[10] , \CoreTimer_0/N_419 , 
        \CoreTimer_0/N_222 , \CoreTimer_0/Load[12]_net_1 , 
        \CoreTimer_0/PrdataNext_1[12] , \CoreTimer_0/Load_m[12] , 
        \CoreTimer_0/PrdataNext_1[7] , \CoreTimer_0/Load_m[7] , 
        \CoreTimer_0/N_412 , \CoreTimer_0/N_208 , 
        \CoreTimer_0/Load[5]_net_1 , \CoreTimer_0/PrdataNext_1[5] , 
        \CoreTimer_0/Load_m[5] , \CoreTimer_0/N_411 , 
        \CoreTimer_0/N_206 , \CoreTimer_0/Load[4]_net_1 , 
        \CoreTimer_0/PrdataNext_1[4] , \CoreTimer_0/Load_m[4] , 
        \CoreTimer_0/N_29_0 , \CoreTimer_0/N_28_0 , 
        \CoreTimer_0/N_27_0 , \CoreTimer_0/N_17_0 , 
        \CoreTimer_0/N_49_0 , \CoreTimer_0/N_47_0 , 
        \CoreTimer_0/N_45_0 , \CoreTimer_0/N_43_0 , 
        \CoreTimer_0/N_41_0 , \CoreTimer_0/N_39_0 , 
        \CoreTimer_0/N_37_0 , \CoreTimer_0/N_35_0 , 
        \CoreTimer_0/N_204 , \CoreTimer_0/Load[3]_net_1 , 
        \CoreTimer_0/N_410 , \CoreTimer_0/CountPulse_net_1 , 
        \CoreTimer_0/CtrlReg[0]_net_1 , \CoreTimer_0/TimeOut , 
        \CoreTimer_0/CountIsZeroReg_i_0 , \CoreTimer_0/Counte , 
        \CoreTimer_0/NxtRawTimInt , \CoreTimer_0/IntClr_i_0 , 
        \CoreTimer_0/Load_m[6] , \CoreTimer_0/Load[6]_net_1 , 
        \CoreTimer_0/PrdataNext_1[6] , \CoreTimer_0/N_210 , 
        \CoreTimer_0/N_413 , \CoreTimer_0/Load_m[8] , 
        \CoreTimer_0/Load[8]_net_1 , \CoreTimer_0/PrdataNext_1[8] , 
        \CoreTimer_0/N_214 , \CoreTimer_0/N_415 , \CoreTimer_0/N_200 , 
        \CoreTimer_0/Count[1]_net_1 , \CoreTimer_0/Load[1]_net_1 , 
        \CoreTimer_0/N_407 , \CoreTimer_0/Count[0]_net_1 , 
        \CoreTimer_0/Load[0]_net_1 , \CoreTimer_0/N_408 , 
        \CoreTimer_0/un2_CtrlEn_net_1 , \CoreTimer_0/CtrlReg[1]_net_1 , 
        \CoreTimer_0/LoadEn_net_1 , \CoreTimer_0/PrescaleEn_net_1 , 
        \CoreTimer_0/un1_NextCountPulse63 , 
        \CoreTimer_0/NextCountPulse , \CoreTimer_0/PreScale_n1 , 
        \CoreTimer_0/PreScale_RNO[0]_net_1 , 
        \CORESPI_0/USPI/clk_div_val[0] , 
        \CORESPI_0/USPI/clk_div_val[3] , 
        \CORESPI_0/USPI/clk_div_val[5] , 
        \CORESPI_0/USPI/clk_div_val[7] , \CORESPI_0/USPI/cfg_ssel[0] , 
        \CORESPI_0/USPI/SPISS_2[0] , \CORESPI_0/USPI/fifo_mem_q[4] , 
        \CORESPI_0/USPI/fiforsttx , \CORESPI_0/USPI/fiforstrx , 
        \CORESPI_0/USPI/cfg_enable , \CORESPI_0/USPI/rx_fifo_read , 
        \CORESPI_0/USPI/tx_fifo_write , \CORESPI_0/USPI/active , 
        \CORESPI_0/USPI/rx_pktend , \CORESPI_0/USPI/rx_cmdsize , 
        \CORESPI_0/USPI/tx_channel_underflow , \CORESPI_0/USPI/N_34 , 
        \CORESPI_0/USPI/tx_fifo_full_i_0 , 
        \CORESPI_0/USPI/cfg_frameurun , \CORESPI_0/USPI/rx_done_i_0 , 
        \CORESPI_0/USPI/tx_done , \CORESPI_0/USPI/rx_fifo_empty , 
        \CORESPI_0/USPI/tx_fifo_last_in , 
        \CORESPI_0/USPI/tx_fifo_data_out[0] , 
        \CORESPI_0/USPI/tx_fifo_data_out[1] , 
        \CORESPI_0/USPI/tx_fifo_data_out[2] , 
        \CORESPI_0/USPI/tx_fifo_data_out[3] , 
        \CORESPI_0/USPI/tx_fifo_last_out , 
        \CORESPI_0/USPI/tx_fifo_read , \CORESPI_0/USPI/tx_fifo_empty , 
        \CORESPI_0/USPI/tx_fifo_empty_i , 
        \CORESPI_0/USPI/rx_fifo_data_in[0] , 
        \CORESPI_0/USPI/rx_fifo_data_in[1] , 
        \CORESPI_0/USPI/rx_fifo_data_in[2] , 
        \CORESPI_0/USPI/rx_fifo_data_in[3] , 
        \CORESPI_0/USPI/rx_fifo_first_in , 
        \CORESPI_0/USPI/rx_fifo_write , 
        \CORESPI_0/USPI/UCC/mtx_re_q1_i , 
        \CORESPI_0/USPI/UCC/mtx_re_q1_net_1 , 
        \CORESPI_0/USPI/UCC/txfifo_davailable_i , 
        \CORESPI_0/USPI/UCC/txfifo_davailable_net_1 , 
        \CORESPI_0/USPI/UCC/msrxp_alldone_i , 
        \CORESPI_0/USPI/UCC/msrxp_alldone_net_1 , 
        \CORESPI_0/USPI/UCC/SYNC2_stxp_strobetx_i , 
        \CORESPI_0/USPI/UCC/SYNC2_stxp_strobetx_net_1 , 
        \CORESPI_0/USPI/UCC/SYNC2_stxp_dataerr_i , 
        \CORESPI_0/USPI/UCC/SYNC2_stxp_dataerr_net_1 , 
        \CORESPI_0/USPI/UCC/mtx_state_i[3] , 
        \CORESPI_0/USPI/UCC/mtx_state[3]_net_1 , 
        \CORESPI_0/USPI/UCC/stxs_state_i , 
        \CORESPI_0/USPI/UCC/stxs_state_net_1 , 
        \CORESPI_0/USPI/UCC/un1_sresetn_16 , 
        \CORESPI_0/USPI/UCC/mtx_state_0_sqmuxa , 
        \CORESPI_0/USPI/UCC/N_98 , \CORESPI_0/USPI/UCC/N_97_2 , 
        \CORESPI_0/USPI/UCC/mtx_bitsel[4]_net_1 , 
        \CORESPI_0/USPI/UCC/N_28_i , 
        \CORESPI_0/USPI/UCC/mtx_bitsel[3]_net_1 , 
        \CORESPI_0/USPI/UCC/mtx_bitsel[2]_net_1 , 
        \CORESPI_0/USPI/UCC/N_476_2 , \CORESPI_0/USPI/UCC/N_595 , 
        \CORESPI_0/USPI/UCC/N_596 , \CORESPI_0/USPI/UCC/N_597 , 
        \CORESPI_0/USPI/UCC/N_42 , \CORESPI_0/USPI/UCC/N_602 , 
        \CORESPI_0/USPI/UCC/un1_sresetn_11_0_a2_0 , 
        \CORESPI_0/USPI/UCC/mtx_bitsel[0]_net_1 , 
        \CORESPI_0/USPI/UCC/mtx_bitsel[1]_net_1 , 
        \CORESPI_0/USPI/UCC/mtx_consecutive_0_sqmuxa_0_a2_1 , 
        \CORESPI_0/USPI/UCC/mtx_lastframe_net_1 , 
        \CORESPI_0/USPI/UCC/mtx_state_ns_0_0_a2_1[5] , 
        \CORESPI_0/USPI/UCC/N_70_1 , \CORESPI_0/USPI/UCC/N_92 , 
        \CORESPI_0/USPI/UCC/mtx_state_ns_0_i_0[3] , 
        \CORESPI_0/USPI/UCC/spi_clk_tick_net_1 , 
        \CORESPI_0/USPI/UCC/mtx_state_ns_0_i_a2_0[3] , 
        \CORESPI_0/USPI/UCC/N_604_i_0 , 
        \CORESPI_0/USPI/UCC/mtx_spi_data_out_2_iv_i_2 , 
        \CORESPI_0/USPI/UCC/mtx_datahold[0]_net_1 , 
        \CORESPI_0/USPI/UCC/mtx_spi_data_out_2_iv_i_1 , 
        \CORESPI_0/USPI/UCC/N_35 , \CORESPI_0/USPI/UCC/N_36 , 
        \CORESPI_0/USPI/UCC/N_23 , 
        \CORESPI_0/USPI/UCC/mtx_state_ns_i_i_a2_0_0[2] , 
        \CORESPI_0/USPI/UCC/stxs_checkorun_m_0 , 
        \CORESPI_0/USPI/UCC/stxs_checkorun , 
        \CORESPI_0/USPI/UCC/stxs_checkorun_i_m_0 , 
        \CORESPI_0/USPI/UCC/mtx_state_ns_i_0_a2_0[1] , 
        \CORESPI_0/USPI/UCC/mtx_state[5]_net_1 , 
        \CORESPI_0/USPI/UCC/rx_cmdsize_4_1 , 
        \CORESPI_0/USPI/UCC/msrxp_frames[0]_net_1 , 
        \CORESPI_0/USPI/UCC/rx_cmdsize_4_0 , 
        \CORESPI_0/USPI/UCC/un1_sresetn_4_i , 
        \CORESPI_0/USPI/UCC/spi_clk_nextd4_NE_5 , 
        \CORESPI_0/USPI/UCC/spi_clk_nextd4_2 , 
        \CORESPI_0/USPI/UCC/spi_clk_nextd4_3 , 
        \CORESPI_0/USPI/UCC/spi_clk_nextd4_NE_3 , 
        \CORESPI_0/USPI/UCC/spi_clk_nextd4_NE_4 , 
        \CORESPI_0/USPI/UCC/spi_clk_nextd4_6 , 
        \CORESPI_0/USPI/UCC/spi_clk_nextd4_7 , 
        \CORESPI_0/USPI/UCC/spi_clk_nextd4_NE_1 , 
        \CORESPI_0/USPI/UCC/spi_clk_count[1]_net_1 , 
        \CORESPI_0/USPI/UCC/clk_div_val_reg[1]_net_1 , 
        \CORESPI_0/USPI/UCC/spi_clk_nextd4_0 , 
        \CORESPI_0/USPI/UCC/spi_clk_count[5]_net_1 , 
        \CORESPI_0/USPI/UCC/clk_div_val_reg[5]_net_1 , 
        \CORESPI_0/USPI/UCC/spi_clk_nextd4_4 , 
        \CORESPI_0/USPI/UCC/stxs_midbit_2_1 , 
        \CORESPI_0/USPI/UCC/stxs_bitcnt[0] , 
        \CORESPI_0/USPI/UCC/stxs_bitcnt[4] , 
        \CORESPI_0/USPI/UCC/stxs_bitcnt[1] , 
        \CORESPI_0/USPI/UCC/stxs_datareg_1_sqmuxa_0 , 
        \CORESPI_0/USPI/UCC/stxs_direct , 
        \CORESPI_0/USPI/UCC/active_1 , 
        \CORESPI_0/USPI/UCC/mtx_busy_net_1 , 
        \CORESPI_0/USPI/UCC/mtx_rxbusy_net_1 , 
        \CORESPI_0/USPI/UCC/stxs_strobetx_2_sqmuxa_2 , 
        \CORESPI_0/USPI/UCC/stxs_datareg4_3 , 
        \CORESPI_0/USPI/UCC/stxs_strobetx_2_sqmuxa_1 , 
        \CORESPI_0/USPI/UCC/stxs_datareg4_3_0 , 
        \CORESPI_0/USPI/UCC/stxs_datareg4_2 , 
        \CORESPI_0/USPI/UCC/SYNC1_stxs_txready_i_0 , 
        \CORESPI_0/USPI/UCC/msrxs_strobe_1_sqmuxa_0 , 
        \CORESPI_0/USPI/UCC/mtx_midbit_i_0 , 
        \CORESPI_0/USPI/UCC/stxs_midbit , 
        \CORESPI_0/USPI/UCC/mtx_consecutive_0_sqmuxa , 
        \CORESPI_0/USPI/UCC/N_49 , 
        \CORESPI_0/USPI/UCC/mtx_state_RNO[3]_net_1 , 
        \CORESPI_0/USPI/UCC/N_66 , \CORESPI_0/USPI/UCC/mtx_bitsele , 
        \CORESPI_0/USPI/UCC/N_79 , \CORESPI_0/USPI/UCC/N_78 , 
        \CORESPI_0/USPI/UCC/mtx_datahold[1]_net_1 , 
        \CORESPI_0/USPI/UCC/mtx_spi_data_out_RNO_net_1 , 
        \CORESPI_0/USPI/UCC/stxs_lastbit_3 , 
        \CORESPI_0/USPI/UCC/stxs_bitsel[0]_net_1 , 
        \CORESPI_0/USPI/UCC/stxs_bitsel[1]_net_1 , 
        \CORESPI_0/USPI/UCC/mtx_state_ns[0] , 
        \CORESPI_0/USPI/UCC/N_76 , \CORESPI_0/USPI/UCC/N_77 , 
        \CORESPI_0/USPI/UCC/mtx_state_RNO[1]_net_1 , 
        \CORESPI_0/USPI/UCC/N_75 , \CORESPI_0/USPI/UCC/N_74 , 
        \CORESPI_0/USPI/UCC/N_86 , 
        \CORESPI_0/USPI/UCC/mtx_state[4]_net_1 , 
        \CORESPI_0/USPI/UCC/txfifo_dhold_dec[0] , 
        \CORESPI_0/USPI/UCC/N_85 , 
        \CORESPI_0/USPI/UCC/mtx_state_RNINJM1[1]_net_1 , 
        \CORESPI_0/USPI/UCC/mtx_state[1]_net_1 , 
        \CORESPI_0/USPI/UCC/N_56 , 
        \CORESPI_0/USPI/UCC/mtx_state[0]_net_1 , 
        \CORESPI_0/USPI/UCC/N_43 , \CORESPI_0/USPI/UCC/N_71 , 
        \CORESPI_0/USPI/UCC/rx_cmdsize_4 , 
        \CORESPI_0/USPI/UCC/rx_cmdsize_2_1 , 
        \CORESPI_0/USPI/UCC/rx_cmdsize_2_2 , 
        \CORESPI_0/USPI/UCC/spi_data_out_iv_0 , 
        \CORESPI_0/USPI/UCC/spi_data_out_iv_0_tz , 
        \CORESPI_0/USPI/UCC/stxs_txzeros , 
        \CORESPI_0/USPI/UCC/stxs_datareg[3] , 
        \CORESPI_0/USPI/UCC/txfifo_datadelay[3]_net_1 , 
        \CORESPI_0/USPI/UCC/mtx_spi_data_out_net_1 , 
        \CORESPI_0/USPI/UCC/spi_clk_count_n2 , 
        \CORESPI_0/USPI/UCC/spi_clk_count_c1 , 
        \CORESPI_0/USPI/UCC/spi_clk_count[2]_net_1 , 
        \CORESPI_0/USPI/UCC/spi_clk_count_1_sqmuxa , 
        \CORESPI_0/USPI/UCC/spi_clk_count_n3 , 
        \CORESPI_0/USPI/UCC/spi_clk_count_c2 , 
        \CORESPI_0/USPI/UCC/spi_clk_count[3]_net_1 , 
        \CORESPI_0/USPI/UCC/spi_clk_count_n4 , 
        \CORESPI_0/USPI/UCC/spi_clk_count_c3 , 
        \CORESPI_0/USPI/UCC/spi_clk_count[4]_net_1 , 
        \CORESPI_0/USPI/UCC/spi_clk_count_n5 , 
        \CORESPI_0/USPI/UCC/spi_clk_count_c4 , 
        \CORESPI_0/USPI/UCC/spi_clk_count_n6 , 
        \CORESPI_0/USPI/UCC/spi_clk_count_c5 , 
        \CORESPI_0/USPI/UCC/spi_clk_count[6]_net_1 , 
        \CORESPI_0/USPI/UCC/spi_clk_count_n7 , 
        \CORESPI_0/USPI/UCC/spi_clk_count_20_0 , 
        \CORESPI_0/USPI/UCC/spi_clk_count[7]_net_1 , 
        \CORESPI_0/USPI/UCC/stxs_bitcnt_n2 , 
        \CORESPI_0/USPI/UCC/stxs_bitcnt_c1 , 
        \CORESPI_0/USPI/UCC/stxs_bitcnt[2] , 
        \CORESPI_0/USPI/UCC/stxs_bitcnt_0_sqmuxa , 
        \CORESPI_0/USPI/UCC/stxs_bitcnt_n3 , 
        \CORESPI_0/USPI/UCC/stxs_bitcnt_c2 , 
        \CORESPI_0/USPI/UCC/stxs_bitcnt[3] , 
        \CORESPI_0/USPI/UCC/stxs_bitcnt_n4 , 
        \CORESPI_0/USPI/UCC/stxs_bitcnt_101_0 , 
        \CORESPI_0/USPI/UCC/SYNC3_stxp_dataerr_i_0 , 
        \CORESPI_0/USPI/UCC/msrxp_pktend5 , 
        \CORESPI_0/USPI/UCC/SYNC3_msrxp_pktsel_net_1 , 
        \CORESPI_0/USPI/UCC/mtx_alldone_net_1 , 
        \CORESPI_0/USPI/UCC/CO1 , 
        \CORESPI_0/USPI/UCC/msrxp_frames[1]_net_1 , 
        \CORESPI_0/USPI/UCC/clk_div_val_reg[0]_net_1 , 
        \CORESPI_0/USPI/UCC/spi_clk_count[0]_net_1 , 
        \CORESPI_0/USPI/UCC/clk_div_val_reg[2]_net_1 , 
        \CORESPI_0/USPI/UCC/clk_div_val_reg[3]_net_1 , 
        \CORESPI_0/USPI/UCC/spi_clk_tick_4 , 
        \CORESPI_0/USPI/UCC/spi_clk_count_n0 , 
        \CORESPI_0/USPI/UCC/spi_clk_count_n1 , 
        \CORESPI_0/USPI/UCC/mtx_state_ns[5] , 
        \CORESPI_0/USPI/UCC/N_91 , \CORESPI_0/USPI/UCC/N_20 , 
        \CORESPI_0/USPI/UCC/un1_msrxp_strobe , 
        \CORESPI_0/USPI/UCC/msrxp_frames_4[0] , 
        \CORESPI_0/USPI/UCC/msrxp_frames_4[1] , 
        \CORESPI_0/USPI/UCC/msrxp_frames_4[2] , 
        \CORESPI_0/USPI/UCC/msrxp_frames[2]_net_1 , 
        \CORESPI_0/USPI/UCC/clk_div_val_reg[7]_net_1 , 
        \CORESPI_0/USPI/UCC/clk_div_val_reg[6]_net_1 , 
        \CORESPI_0/USPI/UCC/clk_div_val_reg[4]_net_1 , 
        \CORESPI_0/USPI/UCC/msrxs_pktsel , 
        \CORESPI_0/USPI/UCC/stxs_pktsel_net_1 , 
        \CORESPI_0/USPI/UCC/mtx_pktsel_net_1 , 
        \CORESPI_0/USPI/UCC/N_65 , \CORESPI_0/USPI/UCC/N_64 , 
        \CORESPI_0/USPI/UCC/N_53 , \CORESPI_0/USPI/UCC/N_47 , 
        \CORESPI_0/USPI/UCC/mtx_state_RNO[4]_net_1 , 
        \CORESPI_0/USPI/UCC/stxs_checkorun_5_iv , 
        \CORESPI_0/USPI/UCC/stxs_checkorun_0_sqmuxa , 
        \CORESPI_0/USPI/UCC/cfg_frameurun_m , 
        \CORESPI_0/USPI/UCC/clock_rx_fe , 
        \CORESPI_0/USPI/UCC/clock_rx_q3_net_1 , 
        \CORESPI_0/USPI/UCC/clock_rx_q2_net_1 , 
        \CORESPI_0/USPI/UCC/un1_stxs_bitsel_1 , 
        \CORESPI_0/USPI/UCC/stxs_state_RNIV3DN_net_1 , 
        \CORESPI_0/USPI/UCC/un1_stxs_strobetx14_2 , 
        \CORESPI_0/USPI/UCC/N_598 , 
        \CORESPI_0/USPI/UCC/stxs_bitcnt_n1 , 
        \CORESPI_0/USPI/UCC/N_614 , 
        \CORESPI_0/USPI/UCC/stxs_datareg_10[0] , 
        \CORESPI_0/USPI/UCC/un1_stxs_datareg_2_sqmuxa , 
        \CORESPI_0/USPI/UCC/stxs_strobetx5 , 
        \CORESPI_0/USPI/UCC/stxs_dataerr , 
        \CORESPI_0/USPI/UCC/stxs_checkorun_1_sqmuxa , 
        \CORESPI_0/USPI/UCC/stxs_strobetx_0_sqmuxa , 
        \CORESPI_0/USPI/UCC/stxs_datareg_1_sqmuxa_2 , 
        \CORESPI_0/USPI/UCC/stxs_midbit_3 , 
        \CORESPI_0/USPI/UCC/stxs_dataerr_m , 
        \CORESPI_0/USPI/UCC/stxs_dataerr_5 , 
        \CORESPI_0/USPI/UCC/N_335 , 
        \CORESPI_0/USPI/UCC/txfifo_datadelay[0]_net_1 , 
        \CORESPI_0/USPI/UCC/stxs_datareg[0] , 
        \CORESPI_0/USPI/UCC/N_336 , 
        \CORESPI_0/USPI/UCC/txfifo_datadelay[1]_net_1 , 
        \CORESPI_0/USPI/UCC/stxs_datareg[1] , 
        \CORESPI_0/USPI/UCC/N_337 , 
        \CORESPI_0/USPI/UCC/txfifo_datadelay[2]_net_1 , 
        \CORESPI_0/USPI/UCC/stxs_datareg[2] , 
        \CORESPI_0/USPI/UCC/stxs_datareg_10[1] , 
        \CORESPI_0/USPI/UCC/stxs_datareg_10[2] , 
        \CORESPI_0/USPI/UCC/stxs_datareg_10[3] , 
        \CORESPI_0/USPI/UCC/N_615 , \CORESPI_0/USPI/UCC/N_616 , 
        \CORESPI_0/USPI/UCC/msrxp_alldone_0_sqmuxa , 
        \CORESPI_0/USPI/UCC/SYNC2_msrxp_strobe_net_1 , 
        \CORESPI_0/USPI/UCC/SYNC3_msrxp_strobe_net_1 , 
        \CORESPI_0/USPI/UCC/msrxp_alldone_4 , 
        \CORESPI_0/USPI/UCC/stxp_lastframe_net_1 , 
        \CORESPI_0/USPI/UCC/mtx_re_d , 
        \CORESPI_0/USPI/UCC/mtx_re_q2_i_0 , 
        \CORESPI_0/USPI/UCC/msrxs_first_2 , 
        \CORESPI_0/USPI/UCC/stxs_first , 
        \CORESPI_0/USPI/UCC/mtx_firstrx_net_1 , 
        \CORESPI_0/USPI/UCC/msrxs_shiftreg_5[2] , 
        \CORESPI_0/USPI/UCC/msrxs_shiftreg[1]_net_1 , 
        \CORESPI_0/USPI/UCC/msrxs_first5 , 
        \CORESPI_0/USPI/UCC/clock_rx_re , 
        \CORESPI_0/USPI/UCC/clock_rx_re_slave , 
        \CORESPI_0/USPI/UCC/mtx_lastbit_net_1 , 
        \CORESPI_0/USPI/UCC/stxs_lastbit , 
        \CORESPI_0/USPI/UCC/msrxs_shiftreg_5[1] , 
        \CORESPI_0/USPI/UCC/msrxs_shiftreg[0]_net_1 , 
        \CORESPI_0/USPI/UCC/spi_di_mux , 
        \CORESPI_0/USPI/UCC/data_rx_q2_net_1 , 
        \CORESPI_0/USPI/UCC/msrxs_datain_0_sqmuxa_1 , 
        \CORESPI_0/USPI/UCC/un1_msrxs_datain_1_sqmuxa_1 , 
        \CORESPI_0/USPI/UCC/msrxs_shiftreg_5[0] , 
        \CORESPI_0/USPI/UCC/cfg_enable_P1_net_1 , 
        \CORESPI_0/USPI/UCC/stxs_state4 , 
        \CORESPI_0/USPI/UCC/mtx_consecutive_net_1 , 
        \CORESPI_0/USPI/UCC/N_61 , 
        \CORESPI_0/USPI/UCC/mtx_oen_0_sqmuxa , 
        \CORESPI_0/USPI/UCC/N_50 , 
        \CORESPI_0/USPI/UCC/mtx_fiforead_0_sqmuxa , 
        \CORESPI_0/USPI/UCC/mtx_lastframe_1_sqmuxa , 
        \CORESPI_0/USPI/UCC/N_593 , 
        \CORESPI_0/USPI/UCC/mtx_datahold[2]_net_1 , 
        \CORESPI_0/USPI/UCC/txfifo_dhold_dec[2] , 
        \CORESPI_0/USPI/UCC/N_45 , 
        \CORESPI_0/USPI/UCC/stxs_state_RNO_net_1 , 
        \CORESPI_0/USPI/UCC/un1_stxs_state4[0] , 
        \CORESPI_0/USPI/UCC/stx_async_reset_ok_2 , 
        \CORESPI_0/USPI/UCC/N_93 , \CORESPI_0/USPI/UCC/un1_sresetn_11 , 
        \CORESPI_0/USPI/UCC/N_62 , 
        \CORESPI_0/USPI/UCC/stxs_pktsel_RNO_net_1 , 
        \CORESPI_0/USPI/UCC/stxs_bitsel_6[1] , 
        \CORESPI_0/USPI/UCC/I_10_3 , 
        \CORESPI_0/USPI/UCC/stxs_bitsel_6[0] , 
        \CORESPI_0/USPI/UCC/DWACT_ADD_CI_0_partial_sum[0] , 
        \CORESPI_0/USPI/UCC/stxp_strobe , 
        \CORESPI_0/USPI/UCC/SYNC3_stxp_strobetx_i_0 , 
        \CORESPI_0/USPI/UCC/stxp_lastframe_5 , 
        \CORESPI_0/USPI/UCC/mtx_fiforead_net_1 , 
        \CORESPI_0/USPI/UCC/un1_txfifo_read , 
        \CORESPI_0/USPI/UCC/N_39 , 
        \CORESPI_0/USPI/UCC/ssel_rx_q2_RNIBQH6_net_1 , 
        \CORESPI_0/USPI/UCC/stx_async_reset_ok_net_1 , 
        \CORESPI_0/USPI/UCC/ssel_rx_q2_net_1 , 
        \CORESPI_0/USPI/UCC/mtx_re_net_1 , 
        \CORESPI_0/USPI/UCC/mtx_first_net_1 , 
        \CORESPI_0/USPI/UCC/SYNC1_stxp_dataerr_net_1 , 
        \CORESPI_0/USPI/UCC/SYNC1_stxp_strobetx_net_1 , 
        \CORESPI_0/USPI/UCC/stxs_strobetx , 
        \CORESPI_0/USPI/UCC/clock_rx_q1_net_1 , 
        \CORESPI_0/USPI/UCC/clock_rx_mux1 , 
        \CORESPI_0/USPI/UCC/data_rx_q1_net_1 , 
        \CORESPI_0/USPI/UCC/ssel_rx_q1_net_1 , 
        \CORESPI_0/USPI/UCC/SYNC1_msrxp_pktsel_net_1 , 
        \CORESPI_0/USPI/UCC/SYNC1_msrxp_strobe_net_1 , 
        \CORESPI_0/USPI/UCC/msrxs_strobe_net_1 , 
        \CORESPI_0/USPI/UCC/msrxs_shiftreg[2]_net_1 , 
        \CORESPI_0/USPI/UCC/DWACT_ADD_CI_0_TMP[0] , 
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_2[0] , 
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_1[0] , 
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_TMP[0] , 
        \CORESPI_0/USPI/UTXF/counter_q[1]_net_1 , 
        \CORESPI_0/USPI/UTXF/counter_q[2]_net_1 , 
        \CORESPI_0/USPI/UTXF/counter_q[4]_net_1 , 
        \CORESPI_0/USPI/UTXF/wr_pointer_d_1_sqmuxa_1 , 
        \CORESPI_0/USPI/UTXF/fifo_mem_d[3]_0_sqmuxa , 
        \CORESPI_0/USPI/UTXF/wr_pointer_q[1]_net_1 , 
        \CORESPI_0/USPI/UTXF/wr_pointer_q[0]_net_1 , 
        \CORESPI_0/USPI/UTXF/wr_pointer_d9 , 
        \CORESPI_0/USPI/UTXF/awe1 , \CORESPI_0/USPI/UTXF/awe2 , 
        \CORESPI_0/USPI/UTXF/awe0 , 
        \CORESPI_0/USPI/UTXF/empty_out_2_0_a3_3 , 
        \CORESPI_0/USPI/UTXF/N_38 , \CORESPI_0/USPI/UTXF/N_42 , 
        \CORESPI_0/USPI/UTXF/empty_out_2_0_a3_2 , 
        \CORESPI_0/USPI/UTXF/N_44 , \CORESPI_0/USPI/UTXF/N_40 , 
        \CORESPI_0/USPI/UTXF/N_36 , 
        \CORESPI_0/USPI/UTXF/full_out_2_0_a3_2 , 
        \CORESPI_0/USPI/UTXF/full_out_2_0_a3_1 , 
        \CORESPI_0/USPI/UTXF/N_11 , 
        \CORESPI_0/USPI/UTXF/un1_data_out_dx_i_0_li[3] , 
        \CORESPI_0/USPI/UTXF/counter_d_0_sqmuxa_1_1 , 
        \CORESPI_0/USPI/UTXF/rd_pointer_d_1_sqmuxa_2 , 
        \CORESPI_0/USPI/UTXF/counter_d_0_sqmuxa_0 , 
        \CORESPI_0/USPI/UTXF/full_out_2 , \CORESPI_0/USPI/UTXF/N_34 , 
        \CORESPI_0/USPI/UTXF/rd_pointer_q_3[0] , 
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_partial_sum[0] , 
        \CORESPI_0/USPI/UTXF/N_50 , 
        \CORESPI_0/USPI/UTXF/rd_pointer_q_3[1] , 
        \CORESPI_0/USPI/UTXF/I_10_0 , 
        \CORESPI_0/USPI/UTXF/empty_out_2 , \CORESPI_0/USPI/UTXF/N_21 , 
        \CORESPI_0/USPI/UTXF/N_19 , \CORESPI_0/USPI/UTXF/N_17 , 
        \CORESPI_0/USPI/UTXF/N_15 , \CORESPI_0/USPI/UTXF/N_13 , 
        \CORESPI_0/USPI/UTXF/N_32 , \CORESPI_0/USPI/UTXF/ram0_1 , 
        \CORESPI_0/USPI/UTXF/ram1_1 , 
        \CORESPI_0/USPI/UTXF/rd_pointer_q[0]_net_1 , 
        \CORESPI_0/USPI/UTXF/N_37 , \CORESPI_0/USPI/UTXF/ram2_1 , 
        \CORESPI_0/USPI/UTXF/ram3_1 , 
        \CORESPI_0/USPI/UTXF/rd_pointer_q[1]_net_1 , 
        \CORESPI_0/USPI/UTXF/wr_pointer_q_3[0] , 
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_partial_sum_0[0] , 
        \CORESPI_0/USPI/UTXF/N_52 , 
        \CORESPI_0/USPI/UTXF/wr_pointer_q_3[1] , 
        \CORESPI_0/USPI/UTXF/I_10 , 
        \CORESPI_0/USPI/UTXF/un1_counter_q0[5] , 
        \CORESPI_0/USPI/UTXF/un1_counter_q1[5] , 
        \CORESPI_0/USPI/UTXF/un1_counter_q0[4] , 
        \CORESPI_0/USPI/UTXF/un1_counter_q1[4] , 
        \CORESPI_0/USPI/UTXF/un1_counter_q0[3] , 
        \CORESPI_0/USPI/UTXF/un1_counter_q1[3] , 
        \CORESPI_0/USPI/UTXF/un1_counter_q0[2] , 
        \CORESPI_0/USPI/UTXF/un1_counter_q1[2] , 
        \CORESPI_0/USPI/UTXF/un1_counter_q0[1] , 
        \CORESPI_0/USPI/UTXF/un1_counter_q1[1] , 
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_partial_sum_1[0] , 
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_partial_sum_2[0] , 
        \CORESPI_0/USPI/UTXF/N_33 , \CORESPI_0/USPI/UTXF/N_38_0 , 
        \CORESPI_0/USPI/UTXF/ram2_2 , \CORESPI_0/USPI/UTXF/ram3_2 , 
        \CORESPI_0/USPI/UTXF/ram0_2 , \CORESPI_0/USPI/UTXF/ram1_2 , 
        \CORESPI_0/USPI/UTXF/N_35 , \CORESPI_0/USPI/UTXF/ram0_4 , 
        \CORESPI_0/USPI/UTXF/ram1_4 , \CORESPI_0/USPI/UTXF/N_40_0 , 
        \CORESPI_0/USPI/UTXF/ram2_4 , \CORESPI_0/USPI/UTXF/ram3_4 , 
        \CORESPI_0/USPI/UTXF/N_34_0 , \CORESPI_0/USPI/UTXF/ram0_3 , 
        \CORESPI_0/USPI/UTXF/ram1_3 , \CORESPI_0/USPI/UTXF/N_39 , 
        \CORESPI_0/USPI/UTXF/ram2_3 , \CORESPI_0/USPI/UTXF/ram3_3 , 
        \CORESPI_0/USPI/UTXF/fifo_mem_q[4] , 
        \CORESPI_0/USPI/UTXF/N_31 , \CORESPI_0/USPI/UTXF/N_36_0 , 
        \CORESPI_0/USPI/UTXF/ram2_0 , \CORESPI_0/USPI/UTXF/ram3_0 , 
        \CORESPI_0/USPI/UTXF/ram0_0 , \CORESPI_0/USPI/UTXF/ram1_0 , 
        \CORESPI_0/USPI/UTXF/counter_q[0]_net_1 , 
        \CORESPI_0/USPI/UTXF/counter_q[3]_net_1 , 
        \CORESPI_0/USPI/UTXF/counter_q[5]_net_1 , 
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_pog_array_1_0[0] , 
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_pog_array_0_1[0] , 
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_pog_array_0_2[0] , 
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_2_0[0] , 
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_1_0[0] , 
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_1_1[0] , 
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_0_2[0] , 
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_0_3[0] , 
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_12_1_0[0] , 
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_pog_array_0_3[0] , 
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_0_4[0] , 
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_12_0[0] , 
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_pog_array_0[0] , 
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_TMP_2[0] , 
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_0_1[0] , 
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_2[0] , 
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_1[0] , 
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_TMP[0] , 
        \CORESPI_0/USPI/URXF/counter_q[1]_net_1 , 
        \CORESPI_0/USPI/URXF/counter_q[2]_net_1 , 
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_12_1[0] , 
        \CORESPI_0/USPI/URXF/counter_q[4]_net_1 , 
        \CORESPI_0/USPI/URXF/full_out_2_0_a3_2 , 
        \CORESPI_0/USPI/URXF/N_57 , \CORESPI_0/USPI/URXF/N_56 , 
        \CORESPI_0/USPI/URXF/N_11 , 
        \CORESPI_0/USPI/URXF/full_out_2_0_a3_1 , 
        \CORESPI_0/USPI/URXF/N_61 , \CORESPI_0/USPI/URXF/N_60 , 
        \CORESPI_0/USPI/URXF/N_38 , 
        \CORESPI_0/USPI/URXF/full_out_2_0_a3_0 , 
        \CORESPI_0/USPI/URXF/N_46 , \CORESPI_0/USPI/URXF/N_44 , 
        \CORESPI_0/USPI/URXF/empty_out_2_0_a3_3 , 
        \CORESPI_0/USPI/URXF/N_42 , 
        \CORESPI_0/USPI/URXF/empty_out_2_0_a3_1 , 
        \CORESPI_0/USPI/URXF/empty_out_2_0_a3_2 , 
        \CORESPI_0/USPI/URXF/rd_pointer_d_1_sqmuxa_2_0_a3_0 , 
        \CORESPI_0/USPI/URXF/un1_data_out_dx_i_0_li[3] , 
        \CORESPI_0/USPI/URXF/awe0 , 
        \CORESPI_0/USPI/URXF/fifo_mem_d[3]_0_sqmuxa , 
        \CORESPI_0/USPI/URXF/wr_pointer_q[0]_net_1 , 
        \CORESPI_0/USPI/URXF/wr_pointer_q[1]_net_1 , 
        \CORESPI_0/USPI/URXF/awe1 , \CORESPI_0/USPI/URXF/awe2 , 
        \CORESPI_0/USPI/URXF/full_out_2 , \CORESPI_0/USPI/URXF/N_52 , 
        \CORESPI_0/USPI/URXF/rd_pointer_d_1_sqmuxa_2 , 
        \CORESPI_0/USPI/URXF/rx_fifo_data_out[3] , 
        \CORESPI_0/USPI/URXF/N_32 , \CORESPI_0/USPI/URXF/ram0_1 , 
        \CORESPI_0/USPI/URXF/ram1_1 , 
        \CORESPI_0/USPI/URXF/rd_pointer_q[0]_net_1 , 
        \CORESPI_0/USPI/URXF/N_33 , \CORESPI_0/USPI/URXF/ram0_2 , 
        \CORESPI_0/USPI/URXF/ram1_2 , \CORESPI_0/USPI/URXF/N_34 , 
        \CORESPI_0/USPI/URXF/ram0_3 , \CORESPI_0/USPI/URXF/ram1_3 , 
        \CORESPI_0/USPI/URXF/N_35 , \CORESPI_0/USPI/URXF/ram0_4 , 
        \CORESPI_0/USPI/URXF/ram1_4 , \CORESPI_0/USPI/URXF/N_37 , 
        \CORESPI_0/USPI/URXF/ram2_1 , \CORESPI_0/USPI/URXF/ram3_1 , 
        \CORESPI_0/USPI/URXF/N_38_0 , \CORESPI_0/USPI/URXF/ram2_2 , 
        \CORESPI_0/USPI/URXF/ram3_2 , \CORESPI_0/USPI/URXF/N_39 , 
        \CORESPI_0/USPI/URXF/ram2_3 , \CORESPI_0/USPI/URXF/ram3_3 , 
        \CORESPI_0/USPI/URXF/N_40 , \CORESPI_0/USPI/URXF/ram2_4 , 
        \CORESPI_0/USPI/URXF/ram3_4 , 
        \CORESPI_0/USPI/URXF/rd_pointer_q[1]_net_1 , 
        \CORESPI_0/USPI/URXF/full_out_i_0 , \CORESPI_0/USPI/URXF/N_66 , 
        \CORESPI_0/USPI/URXF/N_65 , \CORESPI_0/USPI/URXF/N_63 , 
        \CORESPI_0/USPI/URXF/N_58 , 
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_partial_sum[0] , 
        \CORESPI_0/USPI/URXF/un1_counter_q1[1] , 
        \CORESPI_0/USPI/URXF/un1_counter_q1[2] , 
        \CORESPI_0/USPI/URXF/un1_counter_q0[3] , 
        \CORESPI_0/USPI/URXF/un1_counter_q0[4] , 
        \CORESPI_0/USPI/URXF/un1_counter_q1[4] , 
        \CORESPI_0/USPI/URXF/un1_counter_q1[5] , 
        \CORESPI_0/USPI/URXF/N_31 , \CORESPI_0/USPI/URXF/ram0_0 , 
        \CORESPI_0/USPI/URXF/ram1_0 , \CORESPI_0/USPI/URXF/N_36 , 
        \CORESPI_0/USPI/URXF/ram2_0 , \CORESPI_0/USPI/URXF/ram3_0 , 
        \CORESPI_0/USPI/URXF/rd_pointer_q_3[0] , 
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_partial_sum_1[0] , 
        \CORESPI_0/USPI/URXF/rd_pointer_q_3[1] , 
        \CORESPI_0/USPI/URXF/I_10_2 , 
        \CORESPI_0/USPI/URXF/counter_d_0_sqmuxa_2 , 
        \CORESPI_0/USPI/URXF/N_13 , \CORESPI_0/USPI/URXF/N_15 , 
        \CORESPI_0/USPI/URXF/N_17 , \CORESPI_0/USPI/URXF/N_19 , 
        \CORESPI_0/USPI/URXF/N_21 , \CORESPI_0/USPI/URXF/empty_out_2 , 
        \CORESPI_0/USPI/URXF/counter_d_0_sqmuxa_1_0 , 
        \CORESPI_0/USPI/URXF/wr_pointer_d_1_sqmuxa_1 , 
        \CORESPI_0/USPI/URXF/N_54 , 
        \CORESPI_0/USPI/URXF/wr_pointer_q_3[1] , 
        \CORESPI_0/USPI/URXF/I_10_1 , 
        \CORESPI_0/USPI/URXF/wr_pointer_q_3[0] , 
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_partial_sum_2[0] , 
        \CORESPI_0/USPI/URXF/counter_q[0]_net_1 , 
        \CORESPI_0/USPI/URXF/counter_q[3]_net_1 , 
        \CORESPI_0/USPI/URXF/counter_q[5]_net_1 , 
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_pog_array_1_0[0] , 
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_pog_array_0_1[0] , 
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_pog_array_0_2[0] , 
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_2_0[0] , 
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_1_0[0] , 
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_1_1[0] , 
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_0_2[0] , 
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_0_3[0] , 
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_12_1_0[0] , 
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_pog_array_0_3[0] , 
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_0_4[0] , 
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_12_0[0] , 
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_pog_array_0[0] , 
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_TMP_2[0] , 
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_0_1[0] , 
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_partial_sum[3] , 
        \CORESPI_0/USPI/URF/rdata54 , 
        \CORESPI_0/USPI/URF/sticky[1]_net_1 , 
        \CORESPI_0/USPI/URF/sticky[0]_net_1 , 
        \CORESPI_0/USPI/URF/rdata_iv_4_0[7] , 
        \CORESPI_0/USPI/URF/int_raw_m[7] , 
        \CORESPI_0/USPI/URF/rdata_0_iv_2_1[3] , 
        \CORESPI_0/USPI/URF/int_masked_m[3] , 
        \CORESPI_0/USPI/URF/int_raw_m[3] , 
        \CORESPI_0/USPI/URF/CLK_DIV_m[3] , 
        \CORESPI_0/USPI/URF/rdata_iv_4[5] , 
        \CORESPI_0/USPI/URF/int_masked_m_0_a2_0[5] , 
        \CORESPI_0/USPI/URF/rdata_iv_2[5] , 
        \CORESPI_0/USPI/URF/rdata_iv_3[5] , 
        \CORESPI_0/USPI/URF/control2[5]_net_1 , 
        \CORESPI_0/USPI/URF/int_raw_m[5] , 
        \CORESPI_0/USPI/URF/control1_m[5] , 
        \CORESPI_0/USPI/URF/CLK_DIV_m[5] , 
        \CORESPI_0/USPI/URF/rdata_iv_1[5] , 
        \CORESPI_0/USPI/URF/cfg_m1_0_a2_0_1 , 
        \CORESPI_0/USPI/URF/int_m1_e_0_1 , 
        \CORESPI_0/USPI/URF/int_raw_30_i_a2_0_0[0] , 
        \CORESPI_0/USPI/URF/int_raw_33_i_a2_0_0[1] , 
        \CORESPI_0/USPI/URF/control2[6]_net_1 , 
        \CORESPI_0/USPI/URF/control1_m[6] , 
        \CORESPI_0/USPI/URF/int_raw_27_i_a2_0_0[7]_net_1 , 
        \CORESPI_0/USPI/URF/N_63 , \CORESPI_0/USPI/URF/N_61 , 
        \CORESPI_0/USPI/URF/control1[4]_net_1 , 
        \CORESPI_0/USPI/URF/int_raw[5]_net_1 , 
        \CORESPI_0/USPI/URF/cfg_ssel[5]_net_1 , 
        \CORESPI_0/USPI/URF/control1_m1_e_2_0 , 
        \CORESPI_0/USPI/URF/control1[7]_net_1 , 
        \CORESPI_0/USPI/URF/int_m1_e_0 , 
        \CORESPI_0/USPI/URF/control1_m1_e_1_0 , 
        \CORESPI_0/USPI/URF/control1_m1_e_0 , 
        \CORESPI_0/USPI/URF/control1[5]_net_1 , 
        \CORESPI_0/USPI/URF/control1_m1_e_0_0 , 
        \CORESPI_0/USPI/URF/rdata_0_iv_4_0[3] , 
        \CORESPI_0/USPI/URF/control1_RNIQUAD[3]_net_1 , 
        \CORESPI_0/USPI/URF/int_raw[3]_net_1 , 
        \CORESPI_0/USPI/URF/CLK_m2_e_0_1 , 
        \CORESPI_0/USPI/URF/cfg_m3_e_1 , 
        \CORESPI_0/USPI/URF/cfg_ssel[4]_net_1 , 
        \CORESPI_0/USPI/URF/rdata53_m1_e_1 , 
        \CORESPI_0/USPI/URF/prdata_1_i_o2_0_net_1 , 
        \CORESPI_0/USPI/URF/N_128 , 
        \CORESPI_0/USPI/URF/int_raw[0]_net_1 , 
        \CORESPI_0/USPI/URF/control1[3]_net_1 , 
        \CORESPI_0/USPI/URF/N_120 , \CORESPI_0/USPI/URF/N_66 , 
        \CORESPI_0/USPI/URF/clr_rxfifo_5 , 
        \CORESPI_0/USPI/URF/clr_txfifo_5 , 
        \CORESPI_0/USPI/URF/int_masked_m[4] , 
        \CORESPI_0/USPI/URF/control2[4]_net_1 , 
        \CORESPI_0/USPI/URF/control2[7]_net_1 , 
        \CORESPI_0/USPI/URF/int_raw[7]_net_1 , 
        \CORESPI_0/USPI/URF/N_113 , \CORESPI_0/USPI/URF/N_117 , 
        \CORESPI_0/USPI/URF/cfg_ssel_m[7] , 
        \CORESPI_0/USPI/URF/active_m_net_1 , 
        \CORESPI_0/USPI/URF/control2_m[4] , 
        \CORESPI_0/USPI/URF/control1_m[4] , 
        \CORESPI_0/USPI/URF/cfg_ssel[3]_net_1 , 
        \CORESPI_0/USPI/URF/int_raw_36[2] , \CORESPI_0/USPI/URF/N_87 , 
        \CORESPI_0/USPI/URF/int_raw_39[3] , \CORESPI_0/USPI/URF/N_86 , 
        \CORESPI_0/USPI/URF/int_raw_42[4] , \CORESPI_0/USPI/URF/N_85 , 
        \CORESPI_0/USPI/URF/int_raw_45[5] , \CORESPI_0/USPI/URF/N_84 , 
        \CORESPI_0/USPI/URF/int_raw_48[6] , \CORESPI_0/USPI/URF/N_83 , 
        \CORESPI_0/USPI/URF/int_raw_51[7] , \CORESPI_0/USPI/URF/N_82 , 
        \CORESPI_0/USPI/URF/cfg_ssel[1]_net_1 , 
        \CORESPI_0/USPI/URF/control1[2]_net_1 , 
        \CORESPI_0/USPI/URF/cfg_ssel[7]_net_1 , 
        \CORESPI_0/USPI/URF/N_24 , \CORESPI_0/USPI/URF/N_67 , 
        \CORESPI_0/USPI/URF/N_26 , \CORESPI_0/USPI/URF/N_28 , 
        \CORESPI_0/USPI/URF/N_30 , \CORESPI_0/USPI/URF/N_32 , 
        \CORESPI_0/USPI/URF/N_34_0 , \CORESPI_0/USPI/URF/N_44 , 
        \CORESPI_0/USPI/URF/N_46 , \CORESPI_0/USPI/URF/N_48 , 
        \CORESPI_0/USPI/URF/N_52 , \CORESPI_0/USPI/URF/N_22 , 
        \CORESPI_0/USPI/URF/N_119 , \CORESPI_0/USPI/URF/N_118 , 
        \CORESPI_0/USPI/UCON/tx_fifo_last_0_a2_0 , 
        \CORESPI_0/USPI/UCON/N_18 , 
        \CORESPI_0/USPI/UCON/rx_fifo_read_0_a2_1_0_net_1 , 
        \CORESPI_0/USPI/UCON/rx_fifo_read_0_a2_1_net_1 , 
        \CORESPI_0/USPI/UCON/tx_fifo_write_0_a2_0_net_1 , 
        \CORESPI_0/USPI/UCON/un1_PADDR_1_net_1 , \COREABC_0/I_5_0 , 
        \COREABC_0/I_7_0 , \COREABC_0/I_9_0 , \COREABC_0/I_12_0 , 
        \COREABC_0/I_14_0 , \COREABC_0/I_17_0 , \COREABC_0/I_20_0 , 
        \COREABC_0/I_5 , \COREABC_0/I_7 , \COREABC_0/I_9 , 
        \COREABC_0/I_12 , \COREABC_0/I_14 , \COREABC_0/I_17 , 
        \COREABC_0/I_20 , \COREABC_0/I_23 , \COREABC_0/I_26 , 
        \COREABC_0/I_28 , \COREABC_0/I_32 , \COREABC_0/RAMADDR[0] , 
        \COREABC_0/RAMADDR[1] , \COREABC_0/RAMADDR[2] , 
        \COREABC_0/RAMADDR[3] , \COREABC_0/RAMADDR[4] , 
        \COREABC_0/RAMADDR[5] , \COREABC_0/RAMADDR[6] , 
        \COREABC_0/RAMADDR[7] , \COREABC_0/RAMRDATA[0] , 
        \COREABC_0/RAMRDATA[1] , \COREABC_0/RAMRDATA[2] , 
        \COREABC_0/RAMRDATA[3] , \COREABC_0/RAMRDATA[4] , 
        \COREABC_0/RAMRDATA[5] , \COREABC_0/RAMRDATA[6] , 
        \COREABC_0/RAMRDATA[7] , \COREABC_0/RAMRDATA[8] , 
        \COREABC_0/RAMRDATA[9] , \COREABC_0/RAMRDATA[10] , 
        \COREABC_0/RAMRDATA[11] , \COREABC_0/RAMRDATA[12] , 
        \COREABC_0/RAMRDATA[13] , \COREABC_0/RAMRDATA[14] , 
        \COREABC_0/RAMRDATA[15] , \COREABC_0/ACCUMULATOR[0] , 
        \COREABC_0/ACCUMULATOR[1] , \COREABC_0/ACCUMULATOR[2] , 
        \COREABC_0/ACCUMULATOR[3] , \COREABC_0/ACCUMULATOR[4] , 
        \COREABC_0/ACCUMULATOR[5] , \COREABC_0/ACCUMULATOR[6] , 
        \COREABC_0/ACCUMULATOR[7] , \COREABC_0/SMADDR[0] , 
        \COREABC_0/SMADDR[1] , \COREABC_0/SMADDR[2] , 
        \COREABC_0/SMADDR[3] , \COREABC_0/SMADDR[4] , 
        \COREABC_0/SMADDR[5] , \COREABC_0/SMADDR[6] , 
        \COREABC_0/SMADDR[7] , \COREABC_0/SMADDR[8] , 
        \COREABC_0/SMADDR[9] , \COREABC_0/SMADDR[10] , 
        \COREABC_0/SMADDR[11] , \COREABC_0/DOISR , 
        \COREABC_0/UROM.INSTR_SCMD[0]_net_1 , 
        \COREABC_0/UROM.INSTR_DATA[0]_net_1 , 
        \COREABC_0/UROM.INSTR_DATA[1]_net_1 , 
        \COREABC_0/UROM.INSTR_CMD[1]_net_1 , \COREABC_0/ZREGISTER[0] , 
        \COREABC_0/ZREGISTER[1] , \COREABC_0/ZREGISTER[2] , 
        \COREABC_0/ZREGISTER[3] , \COREABC_0/ZREGISTER[4] , 
        \COREABC_0/ZREGISTER[5] , \COREABC_0/ZREGISTER[6] , 
        \COREABC_0/ZREGISTER[7] , \COREABC_0/ZREGISTER[8] , 
        \COREABC_0/ZREGISTER[9] , \COREABC_0/ZREGISTER[10] , 
        \COREABC_0/ZREGISTER[11] , \COREABC_0/ZREGISTER[12] , 
        \COREABC_0/ZREGISTER[13] , \COREABC_0/ZREGISTER[14] , 
        \COREABC_0/ZREGISTER[15] , \COREABC_0/UROM.INSTR_CMD[2]_net_1 , 
        \COREABC_0/UROM.INSTR_CMD[0]_net_1 , 
        \COREABC_0/UROM.INSTR_SCMD[1]_net_1 , 
        \COREABC_0/UROM.INSTR_SCMD[2]_net_1 , 
        \COREABC_0/genblk2.RSTSYNC1_net_1 , 
        \COREABC_0/UROM.INSTR_ADDR[0]_net_1 , 
        \COREABC_0/UROM.INSTR_ADDR[1]_net_1 , 
        \COREABC_0/UROM.INSTR_ADDR[2]_net_1 , 
        \COREABC_0/UROM.INSTR_ADDR[3]_net_1 , 
        \COREABC_0/UROM.INSTR_ADDR[4]_net_1 , 
        \COREABC_0/UROM.INSTR_ADDR[5]_net_1 , 
        \COREABC_0/UROM.INSTR_DATA[2]_net_1 , 
        \COREABC_0/UROM.INSTR_DATA[3]_net_1 , 
        \COREABC_0/UROM.INSTR_DATA[4]_net_1 , 
        \COREABC_0/UROM.INSTR_DATA[5]_net_1 , 
        \COREABC_0/UROM.INSTR_DATA[6]_net_1 , 
        \COREABC_0/UROM.INSTR_DATA[7]_net_1 , \COREABC_0/DOJMP , 
        \COREABC_0/STBFLAG_net_1 , \COREABC_0/STD_ACCUM_ZERO , 
        \COREABC_0/ISR_ACCUM_ZERO , \COREABC_0/STD_ACCUM_NEG , 
        \COREABC_0/ISR_ACCUM_NEG , \COREABC_0/STBACCUM_net_1 , 
        \COREABC_0/ACCUMULATOR[15] , \COREABC_0/ACCUMULATOR[8] , 
        \COREABC_0/ACCUMULATOR[9] , \COREABC_0/ACCUMULATOR[10] , 
        \COREABC_0/ACCUMULATOR[11] , \COREABC_0/ACCUMULATOR[12] , 
        \COREABC_0/ACCUMULATOR[13] , \COREABC_0/ACCUMULATOR[14] , 
        \COREABC_0/STKPTR[0] , \COREABC_0/STKPTR[1] , 
        \COREABC_0/STKPTR[2] , \COREABC_0/STKPTR[3] , 
        \COREABC_0/STKPTR[4] , \COREABC_0/STKPTR[5] , 
        \COREABC_0/STKPTR[6] , \COREABC_0/STKPTR[7] , 
        \COREABC_0/STBACCUM_4 , \COREABC_0/PSELI_7 , 
        \COREABC_0/STBFLAG_5 , \COREABC_0/STBRAM_net_1 , 
        \COREABC_0/RAMWDATA[0] , \COREABC_0/RAMWDATA[1] , 
        \COREABC_0/RAMWDATA[2] , \COREABC_0/RAMWDATA[4] , 
        \COREABC_0/RAMWDATA[7] , \COREABC_0/RAMWDATA[8] , 
        \COREABC_0/STBRAM_7 , \COREABC_0/ICYCLE[0]_net_1 , 
        \COREABC_0/ICYCLE[1]_net_1 , \COREABC_0/ICYCLE_1_sqmuxa_1 , 
        \COREABC_0/INSTRUCTION[3] , \COREABC_0/INSTRUCTION[4] , 
        \COREABC_0/INSTRUCTION[5] , \COREABC_0/INSTRUCTION[6] , 
        \COREABC_0/INSTRUCTION[7] , \COREABC_0/INSTRUCTION[10] , 
        \COREABC_0/INSTRUCTION[11] , \COREABC_0/INSTRUCTION[12] , 
        \COREABC_0/INSTRUCTION[13] , \COREABC_0/INSTRUCTION[14] , 
        \COREABC_0/INSTRUCTION[15] , \COREABC_0/INSTRUCTION[26] , 
        \COREABC_0/INSTRUCTION[27] , \COREABC_0/INSTRUCTION[28] , 
        \COREABC_0/INSTRUCTION[29] , \COREABC_0/INSTRUCTION[30] , 
        \COREABC_0/INSTRUCTION[31] , \COREABC_0/INSTRUCTION[32] , 
        \COREABC_0/m260_0 , \COREABC_0/m249_0 , \COREABC_0/m236_0 , 
        \COREABC_0/INSTRUCTION[33] , \COREABC_0/ICYCLE_ns_i[0] , 
        \COREABC_0/N_1141_i , \COREABC_0/N_237 , \COREABC_0/N_240 , 
        \COREABC_0/N_245 , \COREABC_0/N_81_0 , \COREABC_0/N_85_0 , 
        \COREABC_0/N_89 , \COREABC_0/un37_SMADDR.U1.DWACT_FINC_E[0] , 
        \COREABC_0/un37_SMADDR.U1.DWACT_FINC_E[1] , 
        \COREABC_0/un37_SMADDR.U1.DWACT_FINC_E[2] , 
        \COREABC_0/un37_SMADDR.U1.DWACT_FINC_E[3] , 
        \COREABC_0/un37_SMADDR.U1.DWACT_FINC_E[4] , 
        \COREABC_0/un37_SMADDR.U1.DWACT_FINC_E[5] , 
        \COREABC_0/un37_SMADDR.U1.DWACT_FINC_E[6] , 
        \COREABC_0/un37_SMADDR.N_2 , \COREABC_0/un37_SMADDR.N_3 , 
        \COREABC_0/un37_SMADDR.N_5 , \COREABC_0/un37_SMADDR.N_6 , 
        \COREABC_0/un37_SMADDR.N_7 , \COREABC_0/un37_SMADDR.N_8 , 
        \COREABC_0/un37_SMADDR.N_10 , 
        \COREABC_0/un1_STKPTRP1.U1.DWACT_FINC_E[0] , 
        \COREABC_0/un1_STKPTRP1.U1.DWACT_FINC_E[1] , 
        \COREABC_0/un1_STKPTRP1.U1.DWACT_FINC_E[2] , 
        \COREABC_0/un1_STKPTRP1.N_2 , \COREABC_0/un1_STKPTRP1.N_3 , 
        \COREABC_0/un1_STKPTRP1.N_4 , \COREABC_0/un1_STKPTRP1.N_6 , 
        \COREABC_0/ALUOUT_7_sqmuxa , \COREABC_0/ACCUM_IN[6] , 
        \COREABC_0/PRDATA_M_m[6] , \COREABC_0/ICYCLE24.ICYCLE24 , 
        \COREABC_0/ALUOUT_2_sqmuxa , \COREABC_0/xhdl_31.ALUOUT_4[7] , 
        \COREABC_0/xhdl_31.ALUOUT_5_m[7] , \COREABC_0/ALUOUT_3_sqmuxa , 
        \COREABC_0/ACCUM_IN[7] , \COREABC_0/un1_ACCUMULATOR_m[12] , 
        \COREABC_0/un1_ACCUM_NEXT9_1 , 
        \COREABC_0/xhdl_31.ALUOUT_4_m[12] , 
        \COREABC_0/xhdl_31.ALUOUT_5_m[12] , 
        \COREABC_0/ACCUMULATOR_m_0[11] , \COREABC_0/ALUOUT_6_sqmuxa , 
        \COREABC_0/ACCUM_IN[12] , \COREABC_0/PRDATA_M_m[12] , 
        \COREABC_0/un1_ACCUMULATOR[14] , 
        \COREABC_0/xhdl_31.ALUOUT_4_m[14] , 
        \COREABC_0/xhdl_31.ALUOUT_5_m[14] , 
        \COREABC_0/ACCUMULATOR_m_0[13] , \COREABC_0/ACCUMULATOR_m[15] , 
        \COREABC_0/ACCUM_IN[14] , \COREABC_0/PRDATA_M_m[14] , 
        \COREABC_0/ACCUM_NEXT[4] , \COREABC_0/ACCUMULATOR4 , 
        \COREABC_0/un1_ACCUMULATOR.N222 , \COREABC_0/un5[12] , 
        \COREABC_0/un1_ACCUMULATOR.I76_un1_Y , 
        \COREABC_0/un1_ACCUMULATOR.I93_un1_Y , 
        \COREABC_0/un1_ACCUMULATOR.I95_un1_Y , 
        \COREABC_0/un1_ACCUMULATOR.N304 , 
        \COREABC_0/un1_ACCUMULATOR.N354 , 
        \COREABC_0/un1_ACCUMULATOR.N285 , 
        \COREABC_0/un1_ACCUMULATOR.N293 , 
        \COREABC_0/un1_ACCUMULATOR.N292 , 
        \COREABC_0/un1_ACCUMULATOR.N223 , \COREABC_0/ACCUM_NEXT[5] , 
        \COREABC_0/un7_MUXIR[0] , \COREABC_0/ACCUM_IN[1] , 
        \COREABC_0/ALUOUT_1_sqmuxa , \COREABC_0/un5[1] , 
        \COREABC_0/ACCUM_NEXT[14] , \COREABC_0/ACCUM_NEXT[12] , 
        \COREABC_0/ACCUM_NEXT[0] , \COREABC_0/SHIFTLSB_m , 
        \COREABC_0/xhdl_31.ALUOUT_5_m[0] , 
        \COREABC_0/xhdl_31.ALUOUT_4_m[0] , 
        \COREABC_0/un1_ACCUMULATOR_m[0] , 
        \COREABC_0/xhdl_31.ALUOUT_3_m[0] , \COREABC_0/ACCUM_IN[0] , 
        \COREABC_0/N_389 , \COREABC_0/SHIFTLSB , \COREABC_0/un5[0] , 
        \COREABC_0/un1_ACCUMULATOR.N204 , \COREABC_0/ACCUM_NEXT10 , 
        \COREABC_0/PRDATA_M_m[4] , \COREABC_0/ACCUMULATOR_m[5] , 
        \COREABC_0/ACCUMULATOR_m_0[3] , 
        \COREABC_0/xhdl_31.ALUOUT_5_m[4] , 
        \COREABC_0/xhdl_31.ALUOUT_4_m[4] , 
        \COREABC_0/un1_ACCUMULATOR_m[4] , 
        \COREABC_0/xhdl_31.ALUOUT_3_m[4] , \COREABC_0/ACCUM_IN[4] , 
        \COREABC_0/un1_ACCUMULATOR.N247 , \COREABC_0/N_1214 , 
        \COREABC_0/STKPTRe , \COREABC_0/STKPTR_2_sqmuxa , 
        \COREABC_0/N_564 , \COREABC_0/RAMADDR_1_sqmuxa , 
        \COREABC_0/URAM.un1_UROM.INSTR_SLOT , 
        \COREABC_0/to_logic_4.un4_READRAM , 
        \COREABC_0/STKPTR_1_sqmuxa , \COREABC_0/N_493_1 , 
        \COREABC_0/STKPTR_0_sqmuxa , \COREABC_0/STKPTR_0_sqmuxa_2 , 
        \COREABC_0/STBRAM_4_sqmuxa , \COREABC_0/STBRAM_4_sqmuxa_2 , 
        \COREABC_0/ALUOUT_6_sqmuxa_2 , \COREABC_0/DOISR_0_sqmuxa , 
        \COREABC_0/N_1219 , \COREABC_0/N_574 , \COREABC_0/N_573 , 
        \COREABC_0/N_1218 , \COREABC_0/N_572 , \COREABC_0/N_1217 , 
        \COREABC_0/N_570 , \COREABC_0/N_1216 , \COREABC_0/N_568 , 
        \COREABC_0/N_1215 , \COREABC_0/N_566 , \COREABC_0/STKPTR_c4 , 
        \COREABC_0/STKPTR_c3 , \COREABC_0/STKPTR_c2 , 
        \COREABC_0/STKPTR_c1 , \COREABC_0/un1_ICYCLE_8 , 
        \COREABC_0/ISR_1_sqmuxa_1 , \COREABC_0/DOJMP_1_sqmuxa , 
        \COREABC_0/N_681 , \COREABC_0/un1_ICYCLE_4 , 
        \COREABC_0/STBRAM_5_sqmuxa , \COREABC_0/N_695 , 
        \COREABC_0/N_692 , \COREABC_0/STBACCUM_4_sqmuxa , 
        \COREABC_0/STBFLAG_2_m , \COREABC_0/STBFLAG_2 , 
        \COREABC_0/un1_ICYCLE_11 , \COREABC_0/un1_DOISR_0_sqmuxa , 
        \COREABC_0/ISR4 , \COREABC_0/ACCUMULATOR_m_0[2] , 
        \COREABC_0/ACCUM_IN[3] , \COREABC_0/PRDATA_M_m[3] , 
        \COREABC_0/un1_ACCUMULATOR[6] , 
        \COREABC_0/xhdl_31.ALUOUT_4[6] , 
        \COREABC_0/xhdl_31.ALUOUT_5_m[6] , 
        \COREABC_0/ACCUMULATOR_m_0[5] , \COREABC_0/ACCUMULATOR_m[7] , 
        \COREABC_0/un1_ACCUMULATOR[7] , \COREABC_0/ACCUMULATOR_m_0[6] , 
        \COREABC_0/ACCUMULATOR_m[8] , \COREABC_0/PRDATA_M_m[7] , 
        \COREABC_0/un1_ACCUMULATOR_m[11] , 
        \COREABC_0/ACCUMULATOR_m_0[10] , \COREABC_0/ACCUMULATOR_m[12] , 
        \COREABC_0/ACCUM_NEXT[1] , \COREABC_0/ACCUM_NEXT[2] , 
        \COREABC_0/ACCUM_NEXT[3] , \COREABC_0/ACCUM_NEXT[6] , 
        \COREABC_0/ACCUM_NEXT[7] , \COREABC_0/ACCUM_NEXT[11] , 
        \COREABC_0/ACCUM_NEXT[13] , \COREABC_0/ACCUM_NEXT[15] , 
        \COREABC_0/un1_ACCUMULATOR.N237 , \COREABC_0/un5[11] , 
        \COREABC_0/un1_ACCUMULATOR.N243 , 
        \COREABC_0/un1_ACCUMULATOR.N254 , 
        \COREABC_0/un1_ACCUMULATOR.N257 , 
        \COREABC_0/un1_ACCUMULATOR.N258 , 
        \COREABC_0/un1_ACCUMULATOR.N291 , 
        \COREABC_0/un1_ACCUMULATOR.N264 , 
        \COREABC_0/un1_ACCUMULATOR.N260 , 
        \COREABC_0/un1_ACCUMULATOR.N290 , 
        \COREABC_0/un1_ACCUMULATOR.I78_un1_Y , 
        \COREABC_0/un1_ACCUMULATOR.I85_un1_Y , 
        \COREABC_0/un1_ACCUMULATOR.N306 , 
        \COREABC_0/un1_ACCUMULATOR.N299 , 
        \COREABC_0/un1_ACCUMULATOR.N298 , 
        \COREABC_0/un1_ACCUMULATOR.I96_un1_Y , 
        \COREABC_0/un1_ACCUMULATOR.N356 , \COREABC_0/ACCUM_NEXT[10] , 
        \COREABC_0/ACCUM_NEXT9 , \COREABC_0/ACCUM_IN[2] , 
        \COREABC_0/ACCUM_IN[11] , \COREABC_0/xhdl_31.MSEL[1] , 
        \COREABC_0/ALUOUT_1_sqmuxa_1 , \COREABC_0/MUX1[7] , 
        \COREABC_0/USE_ACC_1 , \COREABC_0/xhdl_31.ALUOUT_3_m[6] , 
        \COREABC_0/xhdl_31.ALUOUT_3_m[11] , \COREABC_0/PRDATA_M_m[11] , 
        \COREABC_0/un1_ACCUMULATOR.N283 , \COREABC_0/PRDATA_M_m[15] , 
        \COREABC_0/ACCUMULATOR_m_0[14] , 
        \COREABC_0/xhdl_31.ALUOUT_5_m[15] , 
        \COREABC_0/xhdl_31.ALUOUT_4_m[15] , 
        \COREABC_0/xhdl_31.ALUOUT_3_m[15] , \COREABC_0/ACCUM_IN[15] , 
        \COREABC_0/N_384 , \COREABC_0/SHIFTMSB , 
        \COREABC_0/un1_ACCUMULATOR.N246 , 
        \COREABC_0/un1_ACCUMULATOR.I92_un1_Y , \COREABC_0/N_492 , 
        \COREABC_0/N_500 , \COREABC_0/N_490_i , 
        \COREABC_0/un1_ACCUMULATOR.I74_un1_Y , 
        \COREABC_0/un1_ACCUMULATOR.N287 , 
        \COREABC_0/un1_ACCUMULATOR.N294 , 
        \COREABC_0/un1_ACCUMULATOR.N295 , 
        \COREABC_0/un1_ACCUMULATOR.N252 , 
        \COREABC_0/un1_ACCUMULATOR.N256 , \COREABC_0/SMADDR_21[4] , 
        \COREABC_0/un1_ICYCLE_6 , \COREABC_0/N_427 , \COREABC_0/N_440 , 
        \COREABC_0/SMADDR_0_sqmuxa_1 , \COREABC_0/SMADDR_21[0] , 
        \COREABC_0/SMADDR_21[5] , \COREABC_0/ZREGISTER_26[0] , 
        \COREABC_0/N_1220 , \COREABC_0/un33_ZREGISTER.N204 , 
        \COREABC_0/N_428 , \COREABC_0/N_441 , \COREABC_0/N_576 , 
        \COREABC_0/MUX1[0] , \COREABC_0/N_423 , \COREABC_0/N_436 , 
        \COREABC_0/N_462 , \COREABC_0/IO_IN_m[1] , 
        \COREABC_0/ACCUMULATOR_m[0] , \COREABC_0/ACCUMULATOR_m[2] , 
        \COREABC_0/xhdl_31.ALUOUT_4_m[1] , 
        \COREABC_0/xhdl_31.ALUOUT_5_m[1] , 
        \COREABC_0/un1_ACCUMULATOR_m[1] , 
        \COREABC_0/xhdl_31.ALUOUT_3_m[1] , \COREABC_0/PRDATA_M_m[2] , 
        \COREABC_0/IO_IN_m[2] , \COREABC_0/ACCUMULATOR_m_0[1] , 
        \COREABC_0/xhdl_31.ALUOUT_4_m[2] , 
        \COREABC_0/xhdl_31.ALUOUT_5_m[2] , 
        \COREABC_0/un1_ACCUMULATOR_m[2] , 
        \COREABC_0/xhdl_31.ALUOUT_3_m[2] , 
        \COREABC_0/xhdl_31.ALUOUT_4_m[3] , 
        \COREABC_0/xhdl_31.ALUOUT_5_m[3] , 
        \COREABC_0/un1_ACCUMULATOR_m[3] , 
        \COREABC_0/xhdl_31.ALUOUT_3_m[3] , \COREABC_0/PRDATA_M_m[5] , 
        \COREABC_0/ACCUMULATOR_m_0[4] , \COREABC_0/ACCUMULATOR_m[6] , 
        \COREABC_0/xhdl_31.ALUOUT_5_m[5] , \COREABC_0/ACCUM_NEXT[8] , 
        \COREABC_0/PRDATA_M_m[8] , \COREABC_0/ACCUMULATOR_m_0[7] , 
        \COREABC_0/ACCUMULATOR_m[9] , 
        \COREABC_0/xhdl_31.ALUOUT_4_m[8] , 
        \COREABC_0/xhdl_31.ALUOUT_5_m[8] , \COREABC_0/ACCUM_NEXT[9] , 
        \COREABC_0/PRDATA_M_m[9] , \COREABC_0/ACCUMULATOR_m_0[8] , 
        \COREABC_0/ACCUMULATOR_m[10] , 
        \COREABC_0/xhdl_31.ALUOUT_4_m[9] , 
        \COREABC_0/xhdl_31.ALUOUT_5_m[9] , \COREABC_0/PRDATA_M_m[10] , 
        \COREABC_0/ACCUMULATOR_m_0[9] , \COREABC_0/ACCUMULATOR_m[11] , 
        \COREABC_0/xhdl_31.ALUOUT_4_m[10] , 
        \COREABC_0/xhdl_31.ALUOUT_5_m[10] , 
        \COREABC_0/xhdl_31.ALUOUT_4_m[11] , \COREABC_0/PRDATA_M_m[13] , 
        \COREABC_0/ACCUMULATOR_m_0[12] , \COREABC_0/ACCUMULATOR_m[14] , 
        \COREABC_0/xhdl_31.ALUOUT_4_m[13] , 
        \COREABC_0/un1_ACCUMULATOR_m[13] , 
        \COREABC_0/xhdl_31.ALUOUT_3_m[13] , 
        \COREABC_0/un33_ZREGISTER[15] , 
        \COREABC_0/un33_ZREGISTER.N348 , \COREABC_0/un33_ZREGISTER[2] , 
        \COREABC_0/un33_ZREGISTER.N277 , \COREABC_0/un33_ZREGISTER[1] , 
        \COREABC_0/un33_ZREGISTER[3] , \COREABC_0/un33_ZREGISTER.N306 , 
        \COREABC_0/un33_ZREGISTER[4] , \COREABC_0/un33_ZREGISTER.N304 , 
        \COREABC_0/un33_ZREGISTER[5] , \COREABC_0/un33_ZREGISTER[6] , 
        \COREABC_0/un33_ZREGISTER[7] , \COREABC_0/un33_ZREGISTER.N365 , 
        \COREABC_0/un33_ZREGISTER[8] , \COREABC_0/un33_ZREGISTER.N362 , 
        \COREABC_0/un33_ZREGISTER[9] , \COREABC_0/un33_ZREGISTER[11] , 
        \COREABC_0/un33_ZREGISTER[12] , \COREABC_0/un33_ZREGISTER[13] , 
        \COREABC_0/un33_ZREGISTER[14] , \COREABC_0/un33_ZREGISTER[10] , 
        \COREABC_0/un1_ACCUMULATOR[5] , 
        \COREABC_0/un1_ACCUMULATOR.N371 , \COREABC_0/un5[5] , 
        \COREABC_0/un1_ACCUMULATOR[8] , \COREABC_0/un1_ACCUMULATOR[9] , 
        \COREABC_0/un1_ACCUMULATOR.N352 , \COREABC_0/un5[13] , 
        \COREABC_0/un1_ACCUMULATOR[10] , \COREABC_0/un5[10] , 
        \COREABC_0/ACCUM_IN[13] , \COREABC_0/ACCUM_IN[10] , 
        \COREABC_0/ACCUM_IN[9] , \COREABC_0/ACCUM_IN[8] , 
        \COREABC_0/ACCUM_IN[5] , 
        \COREABC_0/xhdl_41.xhdl_40_l4.un17_flagvalue , 
        \COREABC_0/xhdl_41.xhdl_40_l6.un25_flagvalue , 
        \COREABC_0/ZREGISTER_26[7] , \COREABC_0/MUX1[2] , 
        \COREABC_0/xhdl_41.flagvalue , 
        \COREABC_0/xhdl_41.xhdl_40_l1.un5_flagvalue , 
        \COREABC_0/MUX1[3] , \COREABC_0/MUX1[1] , 
        \COREABC_0/ZREGISTER_26[3] , \COREABC_0/ZREGISTER_26[2] , 
        \COREABC_0/ZREGISTER_26[1] , \COREABC_0/N_437 , 
        \COREABC_0/N_463 , \COREABC_0/SMADDR_21[1] , \COREABC_0/N_424 , 
        \COREABC_0/ACCUM_NEG , \COREABC_0/ACCUM_ZERO_1 , 
        \COREABC_0/MUX1[4] , \COREABC_0/ZREGISTER_26[4] , 
        \COREABC_0/N_466 , \COREABC_0/N_464 , \COREABC_0/to_logic10 , 
        \COREABC_0/to_logic18 , \COREABC_0/N_1213 , 
        \COREABC_0/xhdl_31.ALUOUT_5[11] , \COREABC_0/N_430 , 
        \COREABC_0/N_434 , \COREABC_0/N_447 , \COREABC_0/N_443 , 
        \COREABC_0/N_438 , \COREABC_0/N_469 , 
        \COREABC_0/SMADDR_21[11] , \COREABC_0/SMADDR_21[7] , 
        \COREABC_0/SMADDR_21[2] , \COREABC_0/N_425 , 
        \COREABC_0/xhdl_31.ALUOUT_5[13] , \COREABC_0/N_429 , 
        \COREABC_0/MUX1[6] , \COREABC_0/MUX1[5] , 
        \COREABC_0/ZREGISTER_26[15] , \COREABC_0/ZREGISTER_26[14] , 
        \COREABC_0/ZREGISTER_26[13] , \COREABC_0/ZREGISTER_26[12] , 
        \COREABC_0/ZREGISTER_26[8] , \COREABC_0/ZREGISTER_26[6] , 
        \COREABC_0/ZREGISTER_26[5] , \COREABC_0/N_442 , 
        \COREABC_0/N_470 , \COREABC_0/SMADDR_21[6] , 
        \COREABC_0/xhdl_31.ALUOUT_4[5] , \COREABC_0/N_274_mux_0 , 
        \COREABC_0/N_10_1 , \COREABC_0/N_11_1 , \COREABC_0/N_12_1 , 
        \COREABC_0/N_14_1 , \COREABC_0/N_15_1 , \COREABC_0/N_16_1 , 
        \COREABC_0/N_17_1 , \COREABC_0/N_18_1 , \COREABC_0/N_22_1 , 
        \COREABC_0/N_23_1 , \COREABC_0/N_24_1 , \COREABC_0/N_25_1 , 
        \COREABC_0/N_26_1 , \COREABC_0/N_27_1 , \COREABC_0/N_28_1 , 
        \COREABC_0/N_30_1 , \COREABC_0/N_33_1 , \COREABC_0/N_34_1 , 
        \COREABC_0/N_35_1 , \COREABC_0/N_37_1 , \COREABC_0/N_38_1 , 
        \COREABC_0/N_39_1 , \COREABC_0/N_40_1 , \COREABC_0/N_43_1 , 
        \COREABC_0/N_45_0 , \COREABC_0/N_46_0 , \COREABC_0/N_47_0 , 
        \COREABC_0/N_48 , \COREABC_0/N_53_0 , \COREABC_0/i39_mux , 
        \COREABC_0/N_54_0 , \COREABC_0/N_57_0 , \COREABC_0/N_58_0 , 
        \COREABC_0/N_59_0 , \COREABC_0/N_61 , \COREABC_0/N_62_0 , 
        \COREABC_0/N_63_0 , \COREABC_0/N_65_0 , \COREABC_0/N_66 , 
        \COREABC_0/N_67 , \COREABC_0/N_69_0 , \COREABC_0/N_267_0 , 
        \COREABC_0/N_270_0 , \COREABC_0/N_79_0 , \COREABC_0/N_83_0 , 
        \COREABC_0/N_88_0 , \COREABC_0/N_90_0 , \COREABC_0/N_91_0 , 
        \COREABC_0/N_92_0 , \COREABC_0/N_93 , \COREABC_0/N_94 , 
        \COREABC_0/i9_mux_0_0 , \COREABC_0/N_103_0 , 
        \COREABC_0/N_105_0 , \COREABC_0/N_106 , \COREABC_0/N_109_0 , 
        \COREABC_0/N_111_0 , \COREABC_0/N_113 , \COREABC_0/N_115_0 , 
        \COREABC_0/N_116_0 , \COREABC_0/N_117_0 , \COREABC_0/N_123_0 , 
        \COREABC_0/N_124_0 , \COREABC_0/N_125_0 , 
        \COREABC_0/i9_mux_1_0 , \COREABC_0/N_127_0 , 
        \COREABC_0/N_128_0 , \COREABC_0/N_129_0 , \COREABC_0/N_130_0 , 
        \COREABC_0/N_131_0 , \COREABC_0/N_132_0 , \COREABC_0/N_133_0 , 
        \COREABC_0/N_134_0 , \COREABC_0/N_135 , \COREABC_0/N_136_0 , 
        \COREABC_0/N_139_0 , \COREABC_0/N_277_mux_0 , 
        \COREABC_0/N_141_0 , \COREABC_0/N_142_0 , \COREABC_0/N_143_0 , 
        \COREABC_0/N_144 , \COREABC_0/N_145_0 , \COREABC_0/N_146_0 , 
        \COREABC_0/N_147_0 , \COREABC_0/N_148_0 , \COREABC_0/N_149_0 , 
        \COREABC_0/N_150_0 , \COREABC_0/N_151_0 , \COREABC_0/N_152_0 , 
        \COREABC_0/N_153 , \COREABC_0/N_154_0 , \COREABC_0/N_155_0 , 
        \COREABC_0/N_156 , \COREABC_0/N_158 , \COREABC_0/N_159_0 , 
        \COREABC_0/N_160_0 , \COREABC_0/N_161_0 , \COREABC_0/N_162_0 , 
        \COREABC_0/N_163_0 , \COREABC_0/N_164_0 , \COREABC_0/N_165_0 , 
        \COREABC_0/N_166_0 , \COREABC_0/N_167_0 , \COREABC_0/N_168_0 , 
        \COREABC_0/N_170_0 , \COREABC_0/N_171_0 , \COREABC_0/N_172_0 , 
        \COREABC_0/N_173_0 , \COREABC_0/N_174_0 , \COREABC_0/N_175_0 , 
        \COREABC_0/N_176_0 , \COREABC_0/N_177 , \COREABC_0/N_178 , 
        \COREABC_0/N_179_0 , \COREABC_0/N_180 , \COREABC_0/N_182 , 
        \COREABC_0/N_183 , \COREABC_0/N_184 , \COREABC_0/N_185_0 , 
        \COREABC_0/N_186_0 , \COREABC_0/N_187_0 , \COREABC_0/N_188 , 
        \COREABC_0/N_189_0 , \COREABC_0/N_190_0 , \COREABC_0/N_192_0 , 
        \COREABC_0/N_193_0 , \COREABC_0/N_194_0 , \COREABC_0/N_195 , 
        \COREABC_0/N_196_0 , \COREABC_0/N_198 , \COREABC_0/N_199 , 
        \COREABC_0/N_200_0 , \COREABC_0/N_201 , \COREABC_0/N_202 , 
        \COREABC_0/N_203_0 , \COREABC_0/N_204 , \COREABC_0/N_205 , 
        \COREABC_0/N_207_0 , \COREABC_0/N_208_0 , \COREABC_0/N_209_0 , 
        \COREABC_0/N_210 , \COREABC_0/N_211 , \COREABC_0/N_212 , 
        \COREABC_0/N_213 , \COREABC_0/N_214 , \COREABC_0/N_216 , 
        \COREABC_0/N_217 , \COREABC_0/N_220 , \COREABC_0/N_278_mux , 
        \COREABC_0/N_221 , \COREABC_0/N_222_0 , \COREABC_0/N_225_0 , 
        \COREABC_0/N_279_mux , \COREABC_0/N_227_0 , \COREABC_0/N_228 , 
        \COREABC_0/N_229_0 , \COREABC_0/N_230_0 , \COREABC_0/N_231 , 
        \COREABC_0/N_232_0 , \COREABC_0/N_233 , \COREABC_0/N_234_0 , 
        \COREABC_0/N_235 , \COREABC_0/N_236 , \COREABC_0/N_238 , 
        \COREABC_0/N_239 , \COREABC_0/N_240_0 , \COREABC_0/N_241 , 
        \COREABC_0/N_242 , \COREABC_0/N_243_0 , \COREABC_0/N_244 , 
        \COREABC_0/N_245_0 , \COREABC_0/N_246_0 , \COREABC_0/N_249_0 , 
        \COREABC_0/N_280_mux , \COREABC_0/N_251_0 , 
        \COREABC_0/N_252_0 , \COREABC_0/N_253_0 , \COREABC_0/N_254_0 , 
        \COREABC_0/N_255_0 , \COREABC_0/N_256_0 , \COREABC_0/N_257 , 
        \COREABC_0/N_258_0 , \COREABC_0/N_259 , \COREABC_0/N_260 , 
        \COREABC_0/i11_mux , \COREABC_0/i11_mux_0 , 
        \COREABC_0/N_276_mux_0 , \COREABC_0/i11_mux_1 , 
        \COREABC_0/N_281_mux , \COREABC_0/i12_mux , 
        \COREABC_0/i12_mux_0 , \COREABC_0/i12_mux_1 , 
        \COREABC_0/N_277_0 , \COREABC_0/N_278_0 , \COREABC_0/N_279 , 
        \COREABC_0/to_logic_2.tmp_6[0] , 
        \COREABC_0/un1_ACCUMULATOR.N234 , 
        \COREABC_0/un1_ACCUMULATOR.N220 , 
        \COREABC_0/un1_ACCUMULATOR.N213 , 
        \COREABC_0/un1_ACCUMULATOR.N217 , 
        \COREABC_0/un1_ACCUMULATOR.N268 , 
        \COREABC_0/un1_ACCUMULATOR.N272 , 
        \COREABC_0/un1_ACCUMULATOR.N214 , 
        \COREABC_0/un1_ACCUMULATOR.N211 , 
        \COREABC_0/un1_ACCUMULATOR.N208 , 
        \COREABC_0/un1_ACCUMULATOR.I40_un1_Y , 
        \COREABC_0/un1_ACCUMULATOR.N207 , 
        \COREABC_0/un1_ACCUMULATOR.N275 , 
        \COREABC_0/un1_ACCUMULATOR.I94_un1_Y , 
        \COREABC_0/un1_ACCUMULATOR.N302 , 
        \COREABC_0/un1_ACCUMULATOR.N303 , 
        \COREABC_0/un1_ACCUMULATOR.N296 , 
        \COREABC_0/un1_ACCUMULATOR.I84_un1_Y , 
        \COREABC_0/un1_ACCUMULATOR.N297 , 
        \COREABC_0/un1_ACCUMULATOR.I82_un1_Y , 
        \COREABC_0/un1_ACCUMULATOR.N289 , 
        \COREABC_0/un1_ACCUMULATOR.N271 , 
        \COREABC_0/un1_ACCUMULATOR.N267 , 
        \COREABC_0/un1_ACCUMULATOR.N266 , 
        \COREABC_0/un1_ACCUMULATOR.N270 , 
        \COREABC_0/un1_ACCUMULATOR.N265 , 
        \COREABC_0/un1_ACCUMULATOR.N269 , 
        \COREABC_0/un1_ACCUMULATOR.N263 , 
        \COREABC_0/un1_ACCUMULATOR.N259 , 
        \COREABC_0/un1_ACCUMULATOR.N262 , 
        \COREABC_0/un1_ACCUMULATOR.N261 , 
        \COREABC_0/un1_ACCUMULATOR.N216 , 
        \COREABC_0/un1_ACCUMULATOR.N219 , 
        \COREABC_0/un1_ACCUMULATOR.N226 , 
        \COREABC_0/un1_ACCUMULATOR.N229 , 
        \COREABC_0/un1_ACCUMULATOR.N235 , 
        \COREABC_0/un1_ACCUMULATOR.N231 , 
        \COREABC_0/un1_ACCUMULATOR.N300 , 
        \COREABC_0/un1_ACCUMULATOR.I86_un1_Y , 
        \COREABC_0/un1_ACCUMULATOR.I80_un1_Y , 
        \COREABC_0/un1_ACCUMULATOR.N273 , 
        \COREABC_0/un1_ACCUMULATOR.I66_un1_Y , 
        \COREABC_0/un1_ACCUMULATOR.I38_un1_Y , 
        \COREABC_0/un33_ZREGISTER.N243 , 
        \COREABC_0/un33_ZREGISTER.N234 , 
        \COREABC_0/un33_ZREGISTER.N223 , 
        \COREABC_0/un33_ZREGISTER.N220 , 
        \COREABC_0/un33_ZREGISTER.N213 , 
        \COREABC_0/un33_ZREGISTER.N255 , 
        \COREABC_0/un33_ZREGISTER.N252 , 
        \COREABC_0/un33_ZREGISTER.N268 , 
        \COREABC_0/un33_ZREGISTER.N272 , 
        \COREABC_0/un33_ZREGISTER.N214 , 
        \COREABC_0/un33_ZREGISTER.N276 , 
        \COREABC_0/un33_ZREGISTER.N211 , 
        \COREABC_0/un33_ZREGISTER.N208 , 
        \COREABC_0/un33_ZREGISTER.N207 , 
        \COREABC_0/un33_ZREGISTER.N275 , 
        \COREABC_0/un33_ZREGISTER.N210 , 
        \COREABC_0/un33_ZREGISTER.N244 , 
        \COREABC_0/un33_ZREGISTER.N283 , 
        \COREABC_0/un33_ZREGISTER.N256 , 
        \COREABC_0/un33_ZREGISTER.N292 , 
        \COREABC_0/un33_ZREGISTER.N285 , 
        \COREABC_0/un33_ZREGISTER.N293 , 
        \COREABC_0/un33_ZREGISTER.I96_un1_Y , 
        \COREABC_0/un33_ZREGISTER.I95_un1_Y , 
        \COREABC_0/un33_ZREGISTER.I94_un1_Y , 
        \COREABC_0/un33_ZREGISTER.I93_un1_Y , 
        \COREABC_0/un33_ZREGISTER.N302 , 
        \COREABC_0/un33_ZREGISTER.I87_un1_Y , 
        \COREABC_0/un33_ZREGISTER.N298 , 
        \COREABC_0/un33_ZREGISTER.N299 , 
        \COREABC_0/un33_ZREGISTER.N296 , 
        \COREABC_0/un33_ZREGISTER.N297 , 
        \COREABC_0/un33_ZREGISTER.N295 , 
        \COREABC_0/un33_ZREGISTER.N294 , 
        \COREABC_0/un33_ZREGISTER.I82_un1_Y , 
        \COREABC_0/un33_ZREGISTER.N291 , 
        \COREABC_0/un33_ZREGISTER.N290 , 
        \COREABC_0/un33_ZREGISTER.N289 , 
        \COREABC_0/un33_ZREGISTER.N287 , 
        \COREABC_0/un33_ZREGISTER.N271 , 
        \COREABC_0/un33_ZREGISTER.N267 , 
        \COREABC_0/un33_ZREGISTER.N266 , 
        \COREABC_0/un33_ZREGISTER.N270 , 
        \COREABC_0/un33_ZREGISTER.N265 , 
        \COREABC_0/un33_ZREGISTER.N269 , 
        \COREABC_0/un33_ZREGISTER.N264 , 
        \COREABC_0/un33_ZREGISTER.N263 , 
        \COREABC_0/un33_ZREGISTER.N260 , 
        \COREABC_0/un33_ZREGISTER.N259 , 
        \COREABC_0/un33_ZREGISTER.N258 , 
        \COREABC_0/un33_ZREGISTER.N262 , 
        \COREABC_0/un33_ZREGISTER.N257 , 
        \COREABC_0/un33_ZREGISTER.N261 , 
        \COREABC_0/un33_ZREGISTER.N254 , 
        \COREABC_0/un33_ZREGISTER.N216 , 
        \COREABC_0/un33_ZREGISTER.N222 , 
        \COREABC_0/un33_ZREGISTER.N219 , 
        \COREABC_0/un33_ZREGISTER.N226 , 
        \COREABC_0/un33_ZREGISTER.N225 , 
        \COREABC_0/un33_ZREGISTER.N229 , 
        \COREABC_0/un33_ZREGISTER.N228 , 
        \COREABC_0/un33_ZREGISTER.N235 , 
        \COREABC_0/un33_ZREGISTER.N231 , 
        \COREABC_0/un33_ZREGISTER.N238 , 
        \COREABC_0/un33_ZREGISTER.N237 , 
        \COREABC_0/un33_ZREGISTER.N240 , 
        \COREABC_0/un33_ZREGISTER.I97_un1_Y , 
        \COREABC_0/un33_ZREGISTER.N300 , 
        \COREABC_0/un33_ZREGISTER.I86_un1_Y , 
        \COREABC_0/un33_ZREGISTER.N301 , 
        \COREABC_0/un33_ZREGISTER.N273 , 
        \COREABC_0/un33_ZREGISTER.N274 , 
        \COREABC_0/un1_ACCUMULATOR.ICYCLE_ns_i_a2_1[0] , 
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux , 
        \COREABC_0/un1_ACCUMULATOR.un7_m1_e_0_1 , 
        \COREABC_0/ADD_16x16_fast_I1_P0N_a0 , 
        \COREABC_0/ADD_16x16_fast_I1_P0N_a1 , 
        \COREABC_0/ADD_16x16_fast_I4_P0N_a0 , 
        \COREABC_0/ADD_16x16_fast_I4_P0N_a1 , \COREABC_0/ADD_m3_2 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_N_6_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I4_P0N_a1_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I1_P0N_a0_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I1_P0N_a1_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I4_P0N_0_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_m4_0_a2_0 , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[15] , 
        \COREABC_0/ADD_m1_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_N_5_mux_1 , 
        \COREABC_0/Ram256x16_R0C0_RNI8F5K2_1 , \COREABC_0/d_N_5_mux_0 , 
        \COREABC_0/ADD_m1_1 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_N_5_mux_2 , 
        \COREABC_0/Ram256x16_R0C0_RNIENH81_1 , \COREABC_0/d_N_5_mux_1 , 
        \COREABC_0/un1_m2 , \COREABC_0/d_N_3_mux , 
        \COREABC_0/ADD_m1_2 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_N_5_mux_3 , 
        \COREABC_0/Ram256x16_R0C0_RNIENH81_0 , \COREABC_0/d_N_5_mux_2 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_N_5_mux_4 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_N_4_2 , 
        \COREABC_0/ADD_16x16_fast_I23_Y_a1 , 
        \COREABC_0/ADD_16x16_fast_I23_Y_a4 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I23_Y_3 , 
        \COREABC_0/ADD_m1_3 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_N_5_mux_5 , 
        \COREABC_0/Ram256x16_R0C0_RNI8F5K2_0 , \COREABC_0/d_N_5_mux_3 , 
        \COREABC_0/ADD_m1_4 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_N_5_mux_6 , 
        \COREABC_0/Ram256x16_R0C0_RNI8F5K2 , \COREABC_0/d_N_5_mux_4 , 
        \COREABC_0/ADD_m2_1 , \COREABC_0/ADD_16x16_fast_I0_CO1_0_a0 , 
        \COREABC_0/ADD_16x16_fast_I0_CO1_0_a1 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_N_3_mux_0 , 
        \COREABC_0/ADD_16x16_fast_I3_G0N_a0 , 
        \COREABC_0/ADD_16x16_fast_I3_G0N_a1 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_N_4_0_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_N_5_mux_7 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_i3_mux , \COREABC_0/ADD_m2_e , 
        \COREABC_0/ADD_16x16_fast_I6_G0N_a0 , 
        \COREABC_0/ADD_16x16_fast_I6_G0N_a1 , 
        \COREABC_0/ADD_16x16_fast_I4_G0N_a0 , 
        \COREABC_0/ADD_16x16_fast_I4_G0N_a1 , 
        \COREABC_0/r_m1tt_N_3_mux , \COREABC_0/r_m1_N_6_mux , 
        \COREABC_0/Ram256x16_R0C0_RNIENH81 , 
        \COREABC_0/UROM.INSTR_SCMD_RNIOF7U[1]_net_1 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_N_6_3 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_N_7_1 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_N_3_mux_3 , 
        \COREABC_0/r_N_5_mux , 
        \COREABC_0/UROM.INSTR_DATA_RNI24171[1]_net_1 , 
        \COREABC_0/UROM.INSTR_DATA_RNIECK4[2]_net_1 , 
        \COREABC_0/ADD_m5_i , \COREABC_0/un1_ACCUMULATOR.ADD_N_11 , 
        \COREABC_0/d_N_3_mux_0 , \COREABC_0/ADD_16x16_fast_I21_Y_a0 , 
        \COREABC_0/ADD_16x16_fast_I21_Y_a1 , 
        \COREABC_0/ADD_16x16_fast_I21_Y_a4 , 
        \COREABC_0/ADD_16x16_fast_I21_Y_a5 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I21_Y_3 , 
        \COREABC_0/ACCUMULATOR_RNIGS2K54[15]_net_1 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_N_5_mux_9 , 
        \COREABC_0/ADD_m3_0_a3_2 , \COREABC_0/ADD_m3_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_N_7_2 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_N_8_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_N_7_mux_1 , 
        \COREABC_0/ADD_m3_a0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_N_5_mux_12 , 
        \COREABC_0/ADD_m1_e_10 , \COREABC_0/Ram256x16_R0C0_RNI4G911_1 , 
        \COREABC_0/Ram256x16_R0C0_RNIM7AA , 
        \COREABC_0/un1_ACCUMULATOR.ADD_N_4_10 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I28_Y_0_tz_tz_tz_tz , 
        \COREABC_0/un1_ACCUMULATOR.STBACCAPB_0 , 
        \COREABC_0/un1_ACCUMULATOR.m7_0_2 , 
        \COREABC_0/un1_ACCUMULATOR.ICYCLE_1_sqmuxa_1_0_a3_0 , 
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.xhdl_40_l3.un13_flagvalue_1 , 
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.xhdl_40_l3.un13_flagvalue_2 , 
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.xhdl_40_l3.un13_flagvalue_4 , 
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.xhdl_40_l3.un13_flagvalue_5 , 
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.xhdl_40_l3.un13_flagvalue_6 , 
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.xhdl_40_l3.un13_flagvalue_8 , 
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.xhdl_40_l3.un13_flagvalue_10 , 
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.xhdl_40_l3.un13_flagvalue_12 , 
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.xhdl_40_l3.un13_flagvalue_13 , 
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.xhdl_40_l3.un13_flagvalue_14 , 
        \COREABC_0/un1_ACCUMULATOR.STBRAM_7_0_a3_1_1 , 
        \COREABC_0/un1_ACCUMULATOR.ICYCLE_ns_i_a2_0[0] , 
        \COREABC_0/un1_ACCUMULATOR.ICYCLE_ns_i_a2_1_0[0] , 
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.flagvalue_0 , 
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.flagvalue_2 , 
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.flagvalue_3 , 
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.flagvalue_5 , 
        \COREABC_0/un1_ACCUMULATOR.SMADDR_0_sqmuxa_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_m2_2_a0_0 , 
        \COREABC_0/un1_ACCUMULATOR.m97_0_0 , 
        \COREABC_0/un1_ACCUMULATOR.DOJMP_1_sqmuxa_1 , 
        \COREABC_0/un1_ACCUMULATOR.STKPTR_0_sqmuxa_0 , 
        \COREABC_0/un1_ACCUMULATOR.ISR_1_sqmuxa_1_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_m3_2_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_m3_2_1 , 
        \COREABC_0/un1_ACCUMULATOR.un1_ICYCLE_6_0 , 
        \COREABC_0/un1_ACCUMULATOR.ISR_1_sqmuxa_0 , 
        \COREABC_0/un1_ACCUMULATOR.STBRAM_7_0_a3_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I0_CO1_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_m3_i_a3_1_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_m3_a1_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_m5_i_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_m5_0_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_m1_e_1_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I28_Y_a3_1 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_m1_e_4_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_m1_e_8_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I28_Y_1_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I28_Y_1_2 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I28_Y_a2_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I28_Y_a2_2 , 
        \COREABC_0/un1_ACCUMULATOR.RAMADDR_1_sqmuxa_0 , 
        \COREABC_0/un1_ACCUMULATOR.un1_m1_e_0_0 , 
        \COREABC_0/un1_ACCUMULATOR.un1_ACCUM_NEXT9_1_0 , 
        \COREABC_0/un1_ACCUMULATOR.un1_ACCUM_NEXT9_1_1 , 
        \COREABC_0/un1_ACCUMULATOR.ALUOUT_5_sqmuxa_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I2_G0N_0_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I2_G0N_0_1 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_m3_0_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I3_G0N_0_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I6_G0N_0_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I4_G0N_0_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_m3_1_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_m3_9_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_m3_9_1 , 
        \COREABC_0/un1_ACCUMULATOR.xhdl_31.ALUOUT_3_m_0[14] , 
        \COREABC_0/un1_ACCUMULATOR.xhdl_31.ALUOUT_3_m_0[8] , 
        \COREABC_0/un1_ACCUMULATOR.xhdl_31.ALUOUT_3_m_0[10] , 
        \COREABC_0/un1_ACCUMULATOR.xhdl_31.ALUOUT_3_m_0[9] , 
        \COREABC_0/un1_ACCUMULATOR.xhdl_31.ALUOUT_3_m_0[12] , 
        \COREABC_0/un1_ACCUMULATOR.ALUOUT_2_sqmuxa_0 , 
        \COREABC_0/un1_ACCUMULATOR.xhdl_31.ALUOUT_3_m_0[5] , 
        \COREABC_0/un1_ACCUMULATOR.xhdl_31.ALUOUT_3_m_0[7] , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I28_Y_0_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I21_Y_0_1 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I23_Y_0_1 , 
        \COREABC_0/un1_ACCUMULATOR.STKPTR_51_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I18_un1_Y_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I26_un1_Y_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I107_Y_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_m1_0_a2_0_1 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I63_Y_0 , 
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I98_un1_Y_0 , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5_1[15] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5_2[15] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5_3[15] , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I108_Y_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I109_Y_0 , 
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I98_Y_0 , 
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I96_Y_0 , 
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I94_un1_Y_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I98_un1_Y_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I97_un1_Y_0 , 
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I111_Y_0 , 
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I97_Y_0 , 
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I92_un1_Y_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I110_Y_0 , 
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I93_un1_Y_0 , 
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I112_Y_0 , 
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I115_Y_0 , 
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I117_Y_0 , 
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I94_Y_0 , 
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I94_Y_1 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I93_un1_Y_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I112_Y_0 , 
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I116_Y_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I95_Y_0 , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[3] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_2[3] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_3[3] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[3] , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I98_Y_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I97_Y_0 , 
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I92_Y_0 , 
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I92_Y_1 , 
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I92_Y_2 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I92_un1_Y_0 , 
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I93_Y_0 , 
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I93_Y_1 , 
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I93_Y_2 , 
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I119_Y_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I113_Y_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I94_Y_0 , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[2] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_2[2] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_3[2] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[2] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[1] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_3[1] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_4[1] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_6[1] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_0[0] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[0] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_2[0] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[0] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_6[0] , 
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I95_Y_0 , 
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I95_Y_1 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I118_Y_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I114_Y_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I93_Y_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I93_Y_1 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I93_Y_2 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I116_Y_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I115_Y_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I117_Y_0 , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[4] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_3[4] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_4[4] , 
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I120_Y_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I119_Y_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I92_Y_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I92_Y_1 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I92_Y_2 , 
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I118_Y_0 , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I120_Y_0 , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_0[5] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_2[5] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_3[5] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[5] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[6] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_2[6] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_3[6] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[6] , 
        \COREABC_0/r_m1_0 , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_0[7] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_2[7] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_3[7] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[7] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_0[12] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[12] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_3[12] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_4[12] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_0[8] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[8] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_4[8] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[8] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_0[9] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[9] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_4[9] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[9] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_0[10] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[10] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_4[10] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[10] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[11] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_2[11] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_3[11] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[11] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[13] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_2[13] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_3[13] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[13] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_0[14] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[14] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_4[14] , 
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[14] , 
        \COREABC_0/un1_ACCUMULATOR.to_logic_2.tmp_6_1[0] , 
        \COREABC_0/un1_ACCUMULATOR.to_logic_2.tmp_6_2[0] , 
        \COREABC_0/un1_ACCUMULATOR.to_logic_2.tmp_6_3[0] , 
        \COREABC_0/un1_ACCUMULATOR.to_logic_2.tmp_6_6[0] , 
        \COREABC_0/un1_ACCUMULATOR.to_logic_2.tmp_6_7[0] , 
        \COREABC_0/un1_ACCUMULATOR.to_logic_2.tmp_6_9[0] , 
        \COREABC_0/un1_ACCUMULATOR.to_logic_2.tmp_6_11[0] , 
        \COREABC_0/un1_ACCUMULATOR.to_logic_2.tmp_6_12[0] , 
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I0_CO1_0_a2_out , 
        \COREABC_0/ICYCLE_i[1] , \COREABC_0/ICYCLE_i[0] , 
        \COREABC_0/un1_ACCUMULATOR.ADD_N_4_i , 
        \COREABC_0/r_m1_N_6_mux_0 , 
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_0 , 
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_1 , 
        \COREABC_0/UROM.INSTR_SCMD_0[0]_net_1 , \COREABC_0/DOISR_0 , 
        \COREABC_0/SMADDR_0[5] , \COREABC_0/SMADDR_0[3] , 
        \COREABC_0/SMADDR_0[2] , \COREABC_0/SMADDR_1[2] , 
        \COREABC_0/SMADDR_0[1] , \COREABC_0/SMADDR_1[1] , 
        \COREABC_0/SMADDR_0[0] , \COREABC_0/genblk2.RSTSYNC2_0_net_1 , 
        \COREABC_0/genblk2.RSTSYNC2_1_net_1 , 
        \COREABC_0/genblk2.RSTSYNC2_2_net_1 , 
        \COREABC_0/URAM.UR/UG3.UR_xhdl12/r_m1_2_0 , 
        \COREABC_0/URAM.UR/UG3.UR_xhdl12/r_m1_0_0 , 
        \COREABC_0/URAM.UR/UG3.UR_xhdl12/r_m1_4_0 , 
        \COREABC_0/URAM.UR/UG3.UR_xhdl12/Ram256x16_R0C0_RNI4G911_net_1 , 
        \COREABC_0/URAM.UR/UG3.UR_xhdl12/Ram256x16_R0C0_RNIDHJ71_net_1 , 
        \COREABC_0/URAM.UR/UG3.UR_xhdl12/Ram256x16_R0C0_RNIDHJ71_0_net_1 , 
        \COREABC_0/URAM.UR/UG3.UR_xhdl12/Ram256x16_R0C0_RNI4G911_0_net_1 , 
        \COREABC_0/URAM.UR/UG3.UR_xhdl12/Ram256x16_R0C0_RNIDHJ71_1_net_1 , 
        \COREABC_0/URAM.UR/UG3.UR_xhdl12/WEAP , 
        \CoreUARTapb_0/m6_0_net_1 , \CoreUARTapb_0/m18_0_net_1 , 
        \CoreUARTapb_0/CUARTl0OI4 , \CoreUARTapb_0/N_117_mux , 
        \CoreUARTapb_0/CUARTO1OI4 , \CoreUARTapb_0/N_4_0 , 
        \CoreUARTapb_0/CUARTI1OI4 , \CoreUARTapb_0/N_51_0 , 
        \CoreUARTapb_0/CUARTOIII[7] , \CoreUARTapb_0/N_53_0 , 
        \CoreUARTapb_0/i27_i , \CoreUARTapb_0/N_54_0 , 
        \CoreUARTapb_0/CUARTOIII[6] , \CoreUARTapb_0/N_56_0 , 
        \CoreUARTapb_0/i26_i , \CoreUARTapb_0/N_57_0 , 
        \CoreUARTapb_0/CUARTOIII[5] , \CoreUARTapb_0/N_59_0 , 
        \CoreUARTapb_0/i25_i , \CoreUARTapb_0/N_70_0 , 
        \CoreUARTapb_0/CUARTOIII[2] , \CoreUARTapb_0/N_74 , 
        \CoreUARTapb_0/i1_mux , \CoreUARTapb_0/N_76 , 
        \CoreUARTapb_0/i22_i , \CoreUARTapb_0/N_77 , 
        \CoreUARTapb_0/CUARTOIII[1] , \CoreUARTapb_0/N_81 , 
        \CoreUARTapb_0/i10_mux , \CoreUARTapb_0/N_83 , 
        \CoreUARTapb_0/i21_i , \CoreUARTapb_0/N_84 , 
        \CoreUARTapb_0/CUARTOIII[0] , \CoreUARTapb_0/N_88 , 
        \CoreUARTapb_0/i9_mux , \CoreUARTapb_0/N_90 , 
        \CoreUARTapb_0/i20_i , \CoreUARTapb_0/CUARTOOII[7]_net_1 , 
        \CoreUARTapb_0/PARITY_ERR_0 , 
        \CoreUARTapb_0/CUARTOOII[6]_net_1 , 
        \CoreUARTapb_0/CUARTOOII[5]_net_1 , 
        \CoreUARTapb_0/CUARTOOII[4]_net_1 , 
        \CoreUARTapb_0/CUARTOIII[4] , 
        \CoreUARTapb_0/CUARTOOII[3]_net_1 , 
        \CoreUARTapb_0/CUARTOIII[3] , \CoreUARTapb_0/PARITY_ERR , 
        \CoreUARTapb_0/CUARTOOII[2]_net_1 , 
        \CoreUARTapb_0/CUARTOOII[1]_net_1 , 
        \CoreUARTapb_0/CUARTI1OI[2] , \CoreUARTapb_0/CUARTI1OI[1] , 
        \CoreUARTapb_0/CUARTI1OI[0] , 
        \CoreUARTapb_0/CUARTl0OI[7]_net_1 , 
        \CoreUARTapb_0/CUARTO1OI[7]_net_1 , 
        \CoreUARTapb_0/CUARTl0OI[6]_net_1 , 
        \CoreUARTapb_0/CUARTO1OI[6]_net_1 , 
        \CoreUARTapb_0/CUARTl0OI[5]_net_1 , 
        \CoreUARTapb_0/CUARTO1OI[5]_net_1 , 
        \CoreUARTapb_0/CUARTl0OI[2]_net_1 , 
        \CoreUARTapb_0/CUARTO1OI[2]_net_1 , 
        \CoreUARTapb_0/CUARTl0OI[1]_net_1 , 
        \CoreUARTapb_0/CUARTO1OI[1]_net_1 , 
        \CoreUARTapb_0/CUARTl0OI[0]_net_1 , 
        \CoreUARTapb_0/CUARTO1OI[0]_net_1 , \CoreUARTapb_0/i23_i , 
        \CoreUARTapb_0/CUARTl0OI[3]_net_1 , 
        \CoreUARTapb_0/CUARTO1OI[3]_net_1 , \CoreUARTapb_0/i24_i , 
        \CoreUARTapb_0/CUARTl0OI[4]_net_1 , 
        \CoreUARTapb_0/CUARTO1OI[4]_net_1 , \CoreUARTapb_0/N_69_0 , 
        \CoreUARTapb_0/N_67_0 , \CoreUARTapb_0/N_65_0 , 
        \CoreUARTapb_0/N_66_0 , \CoreUARTapb_0/OVERFLOW , 
        \CoreUARTapb_0/N_64_0 , \CoreUARTapb_0/N_62_0 , 
        \CoreUARTapb_0/N_60_0 , \CoreUARTapb_0/N_61_0 , 
        \CoreUARTapb_0/FRAMING_ERR , \CoreUARTapb_0/N_3_0 , 
        \CoreUARTapb_0/CUARTOOII[0]_net_1 , \CoreUARTapb_0/N_124_mux , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO1I5_i , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO1I5 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOl0_i , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOl0_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/un1_CUARTO1l_1_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/un1_CUARTO1l_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/un2_CUARTO1l , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO105 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOl0_1_sqmuxa , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIOl4 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTll0[0]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTll0[1]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTll0_ns[0] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO004 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIOl[0]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTlOl[0] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIOl[1]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTlOl[1] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIOl[2]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTlOl[2] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIOl[5]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTlOl[5] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIOl[6]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTlOl[6] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIOl[7]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTlOl[7] , 
        \CoreUARTapb_0/CUARTlOlI/N_102_i , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIOl[4]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTlOl[4] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIOl[3]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTlOl[3] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTl1l_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTI1l , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOI0_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIll_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO1I[0]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO1I[1]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO1I[2]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO1I[3]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO1I[4]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO1I[5]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO1I[6]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO1I[7]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTl1I[0] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTl1I[1] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTl1I[2] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTl1I[3] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTl1I[4] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTl1I[5] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTl1I[6] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTl1I[7] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIl , 
        \CoreUARTapb_0/CUARTlOlI/CUARTll , 
        \CoreUARTapb_0/CUARTlOlI/CUARTI1I[0] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTI1I[1] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTI1I[2] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTI1I[3] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTI1I[4] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTI1I[5] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTI1I[6] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTI1I[7] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO0l_i , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIIl , 
        \CoreUARTapb_0/CUARTlOlI/CUARTlIOl , 
        \CoreUARTapb_0/CUARTlOlI/CUARTI0I , 
        \CoreUARTapb_0/CUARTlOlI/CUARTI0l , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI11_12 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_140_mux , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_120_i , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_120 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0I_9_i , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0I_9 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0_239_d , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/m25_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl[3]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0[1]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0[0]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/m66_0 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0Il_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0I5_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il[0]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il[3]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0I5_0 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il[2]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il[1]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll019_NE_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIOll[1]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll019_0 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll019_NE_0 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIOll[3]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll019_2 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/m17_0 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl[1]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl[2]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/m3_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/m3_0 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_117_mux , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_122 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll019_i , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_140 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTlOl_1_sqmuxa , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0I5 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_115_mux , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_114_mux , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl[0]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTOOll_0_sqmuxa , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/i1_mux , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/un1_CUARTI0111 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI01_0_sqmuxa , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il_n2 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_118 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_123 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il_n3 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_124 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_11[0] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[1]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_11[1] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[2]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_11[2] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[3]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_11[3] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[4]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTOOll_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_130_mux , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_28_i , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl_e0 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_309 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTlOl_2[7] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[7]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_52 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_49 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_48 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_44 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_27_i , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_11[7] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_9[7] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_177 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[8]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_7 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_85 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_86 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_120_mux , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_11[5] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[6]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0Il_4 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_110_mux , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_131_mux , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_138 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_110 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0I10 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0I23 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0I_8 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_11[8] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_385_mux , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/i4_mux , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_385 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/i17_mux_0 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_137_mux , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_136_mux , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_384 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il_n1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_382 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0_0_sqmuxa , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_29_0 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_38 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_129_mux , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_380 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_40 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI1Il[1]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI1Il[0]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI1Il[2]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/i11_mux , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIOll[2]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIOll[0]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_11[4] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[5]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[0]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/genblk2.CUARTl11/CUARTl00I[0] , 
        \CoreUARTapb_0/CUARTlOlI/genblk2.CUARTl11/CUARTl00I[1] , 
        \CoreUARTapb_0/CUARTlOlI/genblk2.CUARTl11/CUARTl00I[2] , 
        \CoreUARTapb_0/CUARTlOlI/genblk2.CUARTl11/CUARTl00I[3] , 
        \CoreUARTapb_0/CUARTlOlI/genblk2.CUARTl11/CUARTl00I[4] , 
        \CoreUARTapb_0/CUARTlOlI/genblk2.CUARTl11/CUARTl00I[5] , 
        \CoreUARTapb_0/CUARTlOlI/genblk2.CUARTl11/CUARTl00I[6] , 
        \CoreUARTapb_0/CUARTlOlI/genblk2.CUARTl11/CUARTl00I[7] , 
        \CoreUARTapb_0/CUARTlOlI/genblk2.CUARTl11/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTO0l , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_ns_i[6] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_167 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_ns[6] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_ns_0_a2_0[5] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_213 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTI00l20_i_a3_0_a2_0 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[1]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[6]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_ns_i_0_a2_0_0[3] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[2]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_ns_0_a2_1_1[5] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l[2]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l[1]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l[3]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[0]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_62 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[4]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[3]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll1_4 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_60 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_61 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_10 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_31 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_47 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l_RNO[2]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_33 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_48 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_52 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_53 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_159 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_58 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[5]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTO00l_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_34 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTO00l_5 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_88 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_87 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l_RNO[3]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/un1_CUARTO00l_1_sqmuxa , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_ns[5] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_44 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_ns[4] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_RNO[3]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_ns[2] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_ns[0] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l[0]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_24 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTIl0l[6]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTIl0l[7]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_25 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTIl0l[4]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTIl0l[5]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_26 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTIl0l[2]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTIl0l[3]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_27 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTIl0l[0]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTIl0l[1]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_28 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_29 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_30 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_12 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[1] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[0] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[3] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/DWACT_FDEC_E[0] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[8] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/DWACT_FDEC_E[4] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/DWACT_FDEC_E[7] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/DWACT_FDEC_E[6] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/un1_CUARTO0_0_sqmuxa_2 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_0_sqmuxa , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_0_sqmuxa_1_3 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/un1_CUARTO0_0_sqmuxa_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_111 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_0_sqmuxa_2 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTI0_17_i_0 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTI0_17_i_a5_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_110_2 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_112 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO08_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTOOI4_2 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_0_sqmuxa_2_2 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTOOI , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_0_sqmuxa_2_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1[2]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_0_sqmuxa_1_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_0_sqmuxa_0 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTOOI4_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1[1]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTI0_17_i_a5_0 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTI0_0_sqmuxa_5_2_0 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTI0_0_sqmuxa_4_3_0 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1[0]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTI0_0_sqmuxa_6_2_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTOOI4_11_2 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[11] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[12] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[9] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO08_8_0 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[7] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[5] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_RNII49F8[0]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_558_tz , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO08 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTI0_0_sqmuxa_5_2 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTI0_0_sqmuxa_6_2 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTI0_0_sqmuxa_4_3 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/un1_CUARTO1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/un1_CUARTO1_3 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTl05 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1[3]_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_c1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTI0_RNO , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTOOI4_8 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[4] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[6] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTOOI4_11 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[10] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTOOI4 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[7] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_121 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[6] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_120 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[3] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_117 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/I_20 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/I_17 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/I_9 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[12] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_126 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[11] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_125 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[4] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_118 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[1] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_115 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/I_35 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/I_32 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/I_12 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/I_5 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[2] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTl0_net_1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_n2 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_n3 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_116 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/I_7 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_122 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/I_23 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[2] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[8] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_n1 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[10] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_124 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[5] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_119 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/I_28 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/I_14 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_e0 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_114 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[0] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_123 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/I_26 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[9] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_3 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/DWACT_FDEC_E[2] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/DWACT_FDEC_E[5] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_4 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/DWACT_FDEC_E[3] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_6 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_7 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_8 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/DWACT_FDEC_E[1] , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_9 , 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_11 , 
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/CUARTl00I[0] , 
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/CUARTl00I[1] , 
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/CUARTl00I[2] , 
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/CUARTl00I[3] , 
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/CUARTl00I[4] , 
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/CUARTl00I[5] , 
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/CUARTl00I[6] , 
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/CUARTl00I[7] , 
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTO0I_1 , 
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTlIOl , 
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTlIl , 
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTOIl_1[1] , 
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTOIl_1[5] , 
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTOIl_1[7] , 
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTOIl_1[6] , 
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTOIl_1[2] , 
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTOIl_1[4] , 
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTOIl_1[3] , 
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTOIl_1[0] , 
        \SPISDI_pad/U0/NET1 , \SPISDO_pad/U0/NET1 , 
        \SPISDO_pad/U0/NET2 , \Power_Down_pad/U0/NET1 , 
        \SYSCLK_pad/U0/NET1 , \SPISS_pad/U0/NET1 , \SPISS_pad/U0/NET2 , 
        \BIBUF_1/U0/NET1 , \BIBUF_1/U0/NET2 , \BIBUF_1/U0/NET3 , 
        \RX_pad/U0/NET1 , \NSYSRESET_pad/U0/NET1 , \TX_pad/U0/NET1 , 
        \TX_pad/U0/NET2 , \BIBUF_0/U0/NET1 , \BIBUF_0/U0/NET2 , 
        \BIBUF_0/U0/NET3 , \SCL_Sensor_pad/U0/NET1 , 
        \SCL_Sensor_pad/U0/NET2 , \SPISCLKO_pad/U0/NET1 , 
        \SPISCLKO_pad/U0/NET2 , \SCL_MCU_pad/U0/NET1 , 
        \COREABC_0/STD_ACCUM_NEG/Y , \COREABC_0/ZREGISTER[14]/Y , 
        \COREABC_0/ZREGISTER[10]/Y , \COREABC_0/ISR_ACCUM_ZERO/Y , 
        \COREABC_0/SMADDR[5]/Y , \COREABC_0/ACCUMULATOR[15]/Y , 
        \CORESPI_0/USPI/UCC/stxs_lastbit/Y , \COREABC_0/SMADDR_0[5]/Y , 
        \COREABC_0/STKPTR[5]/Y , \COREABC_0/SMADDR_0[0]/Y , 
        \COREABC_0/SMADDR_0[2]/Y , \COREABC_0/SMADDR[1]/Y , 
        \COREABC_0/DOISR_0/Y , \COREABC_0/ACCUMULATOR[5]/Y , 
        \COREABC_0/DOJMP/Y , \CORESPI_0/USPI/UCC/stxs_first/Y , 
        \COREABC_0/ZREGISTER[15]/Y , \COREABC_0/SMADDR_0[3]/Y , 
        \COREABC_0/ACCUMULATOR[14]/Y , \COREABC_0/ZREGISTER[13]/Y , 
        \COREABC_0/SMADDR[10]/Y , \COREABC_0/SMADDR[6]/Y , 
        \CORESPI_0/USPI/UCC/stxs_direct/Y , \COREABC_0/SMADDR_0[1]/Y , 
        \COREABC_0/ACCUMULATOR[12]/Y , \COREABC_0/DOISR/Y , 
        \CORESPI_0/USPI/UCC/stxs_bitcnt[3]/Y , 
        \COREABC_0/ISR_ACCUM_NEG/Y , \COREABC_0/ZREGISTER[3]/Y , 
        \CORESPI_0/USPI/UCC/stxs_txzeros/Y , \COREABC_0/SMADDR[2]/Y , 
        \COREABC_0/SMADDR[7]/Y , \COREABC_0/ACCUMULATOR[10]/Y , 
        \COREABC_0/ZREGISTER[7]/Y , \COREABC_0/SMADDR[9]/Y , 
        \CORESPI_0/USPI/UCC/stxs_midbit/Y , 
        \CORESPI_0/USPI/UCC/stxs_strobetx/Y , \COREABC_0/STKPTR[4]/Y , 
        \COREABC_0/STD_ACCUM_ZERO/Y , \COREABC_0/SMADDR[0]/Y , 
        \COREABC_0/SMADDR[8]/Y , \COREABC_0/ACCUMULATOR[7]/Y , 
        \COREABC_0/STKPTR[2]/Y , \COREABC_0/STKPTR[0]/Y , 
        \COREABC_0/ZREGISTER[5]/Y , \COREABC_0/ACCUMULATOR[9]/Y , 
        \CORESPI_0/USPI/UCC/stxs_datareg[1]/Y , 
        \COREABC_0/ACCUMULATOR[8]/Y , \COREABC_0/ZREGISTER[12]/Y , 
        \CORESPI_0/USPI/UCC/stxs_bitcnt[2]/Y , 
        \COREABC_0/ZREGISTER[2]/Y , 
        \CORESPI_0/USPI/UCC/stxs_dataerr/Y , \COREABC_0/SMADDR[4]/Y , 
        \COREABC_0/ZREGISTER[11]/Y , \COREABC_0/SMADDR_1[1]/Y , 
        \COREABC_0/ACCUMULATOR[0]/Y , 
        \CORESPI_0/USPI/UCC/stxs_bitcnt[4]/Y , 
        \COREABC_0/ZREGISTER[1]/Y , \COREABC_0/ZREGISTER[6]/Y , 
        \CORESPI_0/USPI/UCC/stxs_datareg[0]/Y , 
        \CORESPI_0/USPI/UCC/stxs_datareg[2]/Y , 
        \COREABC_0/ACCUMULATOR[2]/Y , \COREABC_0/STKPTR[3]/Y , 
        \COREABC_0/ACCUMULATOR[3]/Y , \COREABC_0/STKPTR[1]/Y , 
        \COREABC_0/ZREGISTER[8]/Y , 
        \CORESPI_0/USPI/UCC/stxs_bitcnt[1]/Y , 
        \COREABC_0/ZREGISTER[4]/Y , \COREABC_0/STKPTR[6]/Y , 
        \CORESPI_0/USPI/UCC/stxs_datareg[3]/Y , \COREABC_0/ISR/Y , 
        \COREABC_0/ACCUMULATOR[11]/Y , \COREABC_0/ACCUMULATOR[6]/Y , 
        \COREABC_0/SMADDR[3]/Y , \CORESPI_0/USPI/UCC/stxs_checkorun/Y , 
        \COREABC_0/SMADDR_1[2]/Y , \COREABC_0/ACCUMULATOR[1]/Y , 
        \COREABC_0/ACCUMULATOR[4]/Y , \COREABC_0/ZREGISTER[0]/Y , 
        \COREABC_0/SMADDR[11]/Y , 
        \CORESPI_0/USPI/UCC/stxs_bitcnt[0]/Y , \COREABC_0/STKPTR[7]/Y , 
        \COREABC_0/ACCUMULATOR[13]/Y , \COREABC_0/ZREGISTER[9]/Y , 
        AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    NOR3C \CORESPI_0/USPI/URF/rx_fifo_empty_m  (.A(
        \CORESPI_0.USPI.URF.N_125 ), .B(\CORESPI_0.USPI.URF.N_127 ), 
        .C(\CORESPI_0/USPI/rx_fifo_empty ), .Y(
        \CORESPI_0.USPI.URF.rx_fifo_empty_m ));
    OR2A \CORESPI_0/USPI/UCC/mtx_bitsel_RNIGBN21[4]  (.A(
        \CORESPI_0/USPI/UCC/N_92 ), .B(
        \CORESPI_0/USPI/UCC/mtx_bitsel[4]_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/N_23 ));
    DFN1C0 \COREABC_0/ACCUMULATOR[13]/U1  (.D(
        \COREABC_0/ACCUMULATOR[13]/Y ), .CLK(GLA), .CLR(PRESETN), .Q(
        \COREABC_0/ACCUMULATOR[13] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m188_0  (.A(\COREABC_0/N_166_0 ), 
        .B(\COREABC_0/N_30_1 ), .S(\COREABC_0/SMADDR_0[1] ), .Y(
        \COREABC_0/N_189_0 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_m122_0  (.A(\COREABC_0/N_30_1 ), 
        .B(\COREABC_0/SMADDR[1] ), .Y(\COREABC_0/N_123_0 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I93_Y_2  (.A(
        \COREABC_0/un1_ACCUMULATOR.N285 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N292 ), .C(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I93_Y_1 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I93_Y_2 ));
    NOR3 \COREABC_0/un1_ACCUMULATOR_ADD_m3_7  (.A(\COREABC_0/ADD_m1_4 )
        , .B(\COREABC_0/ACCUMULATOR[2] ), .C(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_0 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_5_mux_6 ));
    AND3B \CORESPI_0/USPI/UTXF/wr_pointer_d_1_sqmuxa_1_0_a3  (.A(
        \CORESPI_0/USPI/fiforsttx ), .B(
        \CORESPI_0/USPI/UTXF/wr_pointer_d9 ), .C(
        \CORESPI_0/USPI/UTXF/fifo_mem_d[3]_0_sqmuxa ), .Y(
        \CORESPI_0/USPI/UTXF/wr_pointer_d_1_sqmuxa_1 ));
    NOR2A 
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTIlOl_RNO_3  
        (.A(\CoreUARTapb_0/CUARTlOlI/CUARTlOl[3] ), .B(
        \CoreUARTapb_0/PARITY_ERR ), .Y(
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTOIl_1[3] )
        );
    NOR2A \CoreUARTapb_0/CUARTOOII_RNO_3[4]  (.A(
        \CoreUARTapb_0/FRAMING_ERR ), .B(
        \COREABC_0_APB3master_PADDR[2] ), .Y(\CoreUARTapb_0/N_61_0 ));
    MX2 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTIl0l_RNIGK6D[6]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTIl0l[6]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTIl0l[7]_net_1 ), .S(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l[0]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_24 ));
    DFN1 \CoreUARTapb_0/CUARTlOlI/genblk2.CUARTl11/CUARTOOOI[3]  (.D(
        \CoreUARTapb_0/CUARTlOlI/genblk2.CUARTl11/CUARTl00I[3] ), .CLK(
        GLA), .Q(\CoreUARTapb_0/CUARTlOlI/CUARTI1I[3] ));
    DFN1C0 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTI0  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTI0_RNO ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTIl ));
    DFN1C0 \CORESPI_0/USPI/UCC/mtx_firstrx  (.D(
        \CORESPI_0/USPI/UCC/mtx_first_net_1 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/mtx_firstrx_net_1 ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_m149_0  (.A(\COREABC_0/N_14_1 ), 
        .B(\COREABC_0/SMADDR[2] ), .Y(\COREABC_0/N_150_0 ));
    OA1C \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl_RNIO6CA3[3]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_122 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl[3]_net_1 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/i1_mux ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_129_mux ));
    NOR2A \CORESPI_0/USPI/UCC/msrxs_shiftreg_RNO[2]  (.A(
        \CORESPI_0/USPI/UCC/msrxs_shiftreg[1]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/msrxs_first5 ), .Y(
        \CORESPI_0/USPI/UCC/msrxs_shiftreg_5[2] ));
    IOPAD_TRI \SCL_Sensor_pad/U0/U0  (.D(\SCL_Sensor_pad/U0/NET1 ), .E(
        \SCL_Sensor_pad/U0/NET2 ), .PAD(SCL_Sensor));
    AO1A \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNI3DHSS4  (.A(
        \COREABC_0/ACCUMULATOR_RNIGS2K54[15]_net_1 ), .B(
        \COREABC_0/un1_ACCUM_NEXT9_1 ), .C(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[15] ), .Y(
        \COREABC_0/ACCUM_NEXT[15] ));
    MX2 \COREABC_0/ISR/U0  (.A(INTACT), .B(\COREABC_0/ICYCLE_i[0] ), 
        .S(\COREABC_0/un1_DOISR_0_sqmuxa ), .Y(\COREABC_0/ISR/Y ));
    NOR2 \COREABC_0/un1_ACCUMULATOR_ADD_N_5_mux_i_1  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_5_mux_7 ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_6_0 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N272 ));
    OR3B \COREABC_0/un1_ACCUMULATOR_un1_ICYCLE_4  (.A(
        \COREABC_0/N_493_1 ), .B(\COREABC_0/STBRAM_4_sqmuxa_2 ), .C(
        \COREABC_0/UROM.INSTR_SCMD[2]_net_1 ), .Y(
        \COREABC_0/un1_ICYCLE_4 ));
    AOI1 \COREABC_0/un1_ACCUMULATOR_RAMADDR_1_sqmuxa_0  (.A(
        \COREABC_0/to_logic_4.un4_READRAM ), .B(
        \COREABC_0/UROM.INSTR_SCMD[2]_net_1 ), .C(\COREABC_0/DOISR_0 ), 
        .Y(\COREABC_0/un1_ACCUMULATOR.RAMADDR_1_sqmuxa_0 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m39_0  (.A(\COREABC_0/N_37_1 ), .B(
        \COREABC_0/N_39_1 ), .S(\COREABC_0/SMADDR_1[1] ), .Y(
        \COREABC_0/N_40_1 ));
    MX2C \CoreUARTapb_0/CUARTOOII_RNO_1[3]  (.A(
        \CoreUARTapb_0/CUARTl0OI[3]_net_1 ), .B(
        \CoreUARTapb_0/CUARTO1OI[3]_net_1 ), .S(
        \COREABC_0_APB3master_PADDR[2] ), .Y(\CoreUARTapb_0/i23_i ));
    NOR3C \CoreTimer_0/CountPulse_RNO_9  (.A(\CoreTimer_0/PreScale_c1 )
        , .B(\CoreTimer_0/NextCountPulse_0_sqmuxa_2_0 ), .C(
        \CoreTimer_0/NextCountPulse_0_sqmuxa_2_3 ), .Y(
        \CoreTimer_0/NextCountPulse_0_sqmuxa_2 ));
    AO1B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I23_Y_4  (.A(
        \COREABC_0/ACCUMULATOR[10] ), .B(\COREABC_0/ACCUMULATOR[11] ), 
        .C(\COREABC_0/r_m1_N_6_mux ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I23_Y_3 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m244_0  (.A(\COREABC_0/N_144 ), .B(
        \COREABC_0/N_25_1 ), .S(\COREABC_0/SMADDR_0[2] ), .Y(
        \COREABC_0/N_245_0 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_PWDATA_M[10]  (.A(
        \COREABC_0/ACCUMULATOR[10] ), .B(\COREABC_0/USE_ACC_1 ), .Y(
        \COREABC_0_APB3master_PWDATA[10] ));
    DFN1E1 \CORESPI_0/USPI/URXF/fifo_mem_q_fifo_mem_q_ram0_[1]  (.D(
        \CORESPI_0/USPI/rx_fifo_data_in[0] ), .CLK(GLA), .E(
        \CORESPI_0/USPI/URXF/awe0 ), .Q(\CORESPI_0/USPI/URXF/ram0_1 ));
    NOR3 \CORESPI_0/USPI/URXF/counter_q_RNO[5]  (.A(
        \CORESPI_0/USPI/URXF/N_57 ), .B(\CORESPI_0/USPI/URXF/N_56 ), 
        .C(\CORESPI_0/USPI/fiforstrx ), .Y(\CORESPI_0/USPI/URXF/N_19 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m161_0  (.A(\COREABC_0/N_160_0 ), 
        .B(\COREABC_0/N_161_0 ), .S(\COREABC_0/SMADDR[5] ), .Y(
        \COREABC_0/N_162_0 ));
    DFN1C0 \COREABC_0/ZREGISTER[6]/U1  (.D(\COREABC_0/ZREGISTER[6]/Y ), 
        .CLK(GLA), .CLR(\COREABC_0/genblk2.RSTSYNC2_2_net_1 ), .Q(
        \COREABC_0/ZREGISTER[6] ));
    MX2 \CORESPI_0/USPI/UTXF/fifo_mem_q_fifo_mem_q_ram2__RNI5RBQ[0]  (
        .A(\CORESPI_0/USPI/UTXF/ram2_0 ), .B(
        \CORESPI_0/USPI/UTXF/ram3_0 ), .S(
        \CORESPI_0/USPI/UTXF/rd_pointer_q[0]_net_1 ), .Y(
        \CORESPI_0/USPI/UTXF/N_36_0 ));
    NOR2 \COREABC_0/un1_ACCUMULATOR_ADD_m3_1_a1_0  (.A(
        \COREABC_0/ACCUMULATOR[1] ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I1_P0N_a1_0 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_m3_a1_0 ));
    NOR3B \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l_RNIFJD6[3]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l[2]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l[1]_net_1 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l[3]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_ns_0_a2_1_1[5] ));
    NOR3A \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0_RNO[5]  (
        .A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_119 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_RNII49F8[0]_net_1 ), 
        .C(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/un1_CUARTO0_0_sqmuxa_2 ), 
        .Y(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[5] ));
    AO1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I94_Y_0  (.A(
        \COREABC_0/un33_ZREGISTER.N259 ), .B(
        \COREABC_0/un33_ZREGISTER.N256 ), .C(
        \COREABC_0/un33_ZREGISTER.N255 ), .Y(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I94_Y_0 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I36_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N213 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N217 ), .C(
        \COREABC_0/un1_ACCUMULATOR.N216 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N271 ));
    NOR2A \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_RNO[8]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_385_mux ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_123 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_11[8] ));
    MX2 \CoreTimer_0/Count_RNO_1[13]  (.A(
        \CoreTimer_0/Count[13]_net_1 ), .B(
        \CoreTimer_0/Load[13]_net_1 ), .S(
        \CoreTimer_0/un1_PreScale8_0 ), .Y(\CoreTimer_0/N_224 ));
    AO1 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_1_0[4]  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA_i_0[4] ), .B(\CoreAPB3_0/N_72 ), 
        .C(\CoreAPB3_0/u_mux_p_to_b3/N_35 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_1_0[4]_net_1 ));
    OR3A \CORESPI_0/USPI/URF/prdata_1_i_o2  (.A(
        \COREABC_0_APB3master_PADDR[13] ), .B(
        \CORESPI_0/USPI/URF/prdata_1_i_o2_0_net_1 ), .C(
        \COREABC_0_APB3master_PADDR[12] ), .Y(
        \CORESPI_0.USPI.URF.N_62 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIHNAD34  (.A(
        \COREABC_0/un1_ACCUMULATOR[10] ), .B(
        \COREABC_0/un1_ACCUM_NEXT9_1 ), .C(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[10] ), .Y(
        \COREABC_0/ACCUM_NEXT[10] ));
    XA1A \COREABC_0/un1_ACCUMULATOR_ISR_1_sqmuxa_1  (.A(
        \COREABC_0/UROM.INSTR_SCMD_0[0]_net_1 ), .B(
        \COREABC_0/xhdl_41.flagvalue ), .C(
        \COREABC_0/un1_ACCUMULATOR.ISR_1_sqmuxa_1_0 ), .Y(
        \COREABC_0/ISR_1_sqmuxa_1 ));
    NOR2 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNI93FN78  (.A(
        \COREABC_0/ACCUM_NEXT[11] ), .B(\COREABC_0/ACCUM_NEXT[10] ), 
        .Y(\COREABC_0/un1_ACCUMULATOR.to_logic_2.tmp_6_7[0] ));
    DFN1P0 \CORESPI_0/USPI/UCC/SYNC2_msrxp_strobe  (.D(
        \CORESPI_0/USPI/UCC/SYNC1_msrxp_strobe_net_1 ), .CLK(GLA), 
        .PRE(COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/SYNC2_msrxp_strobe_net_1 ));
    NOR2A \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll1_RNO_2  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[3]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_34 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_61 ));
    XO1 \CORESPI_0/USPI/UCC/clk_div_val_reg_RNIAB6O[5]  (.A(
        \CORESPI_0/USPI/UCC/spi_clk_count[5]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/clk_div_val_reg[5]_net_1 ), .C(
        \CORESPI_0/USPI/UCC/spi_clk_nextd4_4 ), .Y(
        \CORESPI_0/USPI/UCC/spi_clk_nextd4_NE_1 ));
    OA1C \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_a1_0[6]  (.A(
        \CORESPI_0.USPI.SPIMODE ), .B(\CORESPI_0.USPI.master_ssel_out )
        , .C(\CORESPI_0.USPI.URF.N_62 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_a1_0[6]_net_1 ));
    DFN1E1C0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIOll[2]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_120 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0_0_sqmuxa ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIOll[2]_net_1 ));
    NOR2B \CoreTimer_0/PreScale_RNI0O73[4]  (.A(
        \CoreTimer_0/PreScale[4]_net_1 ), .B(\CoreTimer_0/PreScale_c3 )
        , .Y(\CoreTimer_0/PreScale_c4 ));
    OR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2_3[2]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a1[0]_net_1 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2_1[2]_net_1 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_2[2]_net_1 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2_3[2]_net_1 ));
    DFN1C0 \COREABC_0/ACCUMULATOR[10]/U1  (.D(
        \COREABC_0/ACCUMULATOR[10]/Y ), .CLK(GLA), .CLR(PRESETN), .Q(
        \COREABC_0/ACCUMULATOR[10] ));
    NOR2B \CORESPI_0/USPI/UCC/stxs_strobetx_RNO  (.A(
        \CORESPI_0/USPI/UCC/stxs_checkorun_0_sqmuxa ), .B(
        \CORESPI_0/USPI/UCC/stxs_state_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/stxs_strobetx_0_sqmuxa ));
    AO1 \COREABC_0/un1_ACCUMULATOR_PSELI_7_0  (.A(\COREABC_0/N_692 ), 
        .B(\COREABC_0/ICYCLE24.ICYCLE24 ), .C(
        \COREABC_0/ICYCLE_1_sqmuxa_1 ), .Y(\COREABC_0/PSELI_7 ));
    DFN1C0 \CORESPI_0/USPI/UCC/mtx_state[2]  (.D(
        \CORESPI_0/USPI/UCC/N_20 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(\CORESPI_0/USPI/UCC/N_604_i_0 ));
    XOR3 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I121_Y  (.A(
        \COREABC_0_APB3master_PWDATA[15] ), .B(
        \COREABC_0/ZREGISTER[15] ), .C(\COREABC_0/un33_ZREGISTER.N348 )
        , .Y(\COREABC_0/un33_ZREGISTER[15] ));
    MX2C \CoreUARTapb_0/CUARTOOII_RNO_1[5]  (.A(
        \CoreUARTapb_0/CUARTl0OI[5]_net_1 ), .B(
        \CoreUARTapb_0/CUARTO1OI[5]_net_1 ), .S(
        \COREABC_0_APB3master_PADDR[2] ), .Y(\CoreUARTapb_0/i25_i ));
    MX2 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0_RNO_0[11]  (
        .A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/I_32 ), .B(
        \CoreUARTapb_0/CUARTO1OI[6]_net_1 ), .S(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO08 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_125 ));
    XA1B \CoreTimer_0/Count_RNO[17]  (.A(\CoreTimer_0/Count[17]_net_1 )
        , .B(\CoreTimer_0/N_17_0 ), .C(\CoreTimer_0/un1_PreScale8_0_0 )
        , .Y(\CoreTimer_0/N_47_0 ));
    OA1B \CoreUARTapb_0/CUARTlOlI/CUARTll0_RNO[0]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTll0[1]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO004 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTll0[0]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTll0_ns[0] ));
    XOR2 \CORESPI_0/USPI/URXF/un1_counter_q_1_I_18  (.A(
        \CORESPI_0/USPI/URXF/counter_q[3]_net_1 ), .B(
        \CORESPI_0/USPI/URXF/counter_d_0_sqmuxa_2 ), .Y(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_partial_sum[3] ));
    AND2 \CORESPI_0/USPI/UTXF/un1_counter_q_0_I_35  (.A(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_pog_array_0_1[0] ), .B(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_pog_array_0_2[0] ), .Y(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_pog_array_1_0[0] ));
    XA1B \CoreTimer_0/Count_RNO[19]  (.A(\CoreTimer_0/Count[19]_net_1 )
        , .B(\CoreTimer_0/N_19_0 ), .C(\CoreTimer_0/un1_PreScale8 ), 
        .Y(\CoreTimer_0/N_426_i ));
    XOR2 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I120_Y_0  (.A(
        \COREABC_0/ZREGISTER[14] ), .B(
        \COREABC_0_APB3master_PWDATA[14] ), .Y(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I120_Y_0 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m172_0  (.A(\COREABC_0/N_38_1 ), .B(
        \COREABC_0/N_25_1 ), .S(\COREABC_0/SMADDR[2] ), .Y(
        \COREABC_0/N_173_0 ));
    DFN1 \COREABC_0/UROM.INSTR_CMD[2]  (.D(\COREABC_0/m236_0 ), .CLK(
        GLA), .Q(\COREABC_0/UROM.INSTR_CMD[2]_net_1 ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNI923GG4  (.A(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_4[12] ), .B(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_3[12] ), .C(
        \COREABC_0/un1_ACCUMULATOR_m[12] ), .Y(
        \COREABC_0/ACCUM_NEXT[12] ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ACCUM_NEXT_iv_0[9]  (.A(
        \COREABC_0/un1_ACCUMULATOR.xhdl_31.ALUOUT_3_m_0[9] ), .B(
        \COREABC_0/ACCUM_IN[9] ), .C(\COREABC_0/PRDATA_M_m[9] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_0[9] ));
    MX2 \CORESPI_0/USPI/UTXF/fifo_mem_q_fifo_mem_q_ram0__RNI3DJ9[1]  (
        .A(\CORESPI_0/USPI/UTXF/ram0_1 ), .B(
        \CORESPI_0/USPI/UTXF/ram1_1 ), .S(
        \CORESPI_0/USPI/UTXF/rd_pointer_q[0]_net_1 ), .Y(
        \CORESPI_0/USPI/UTXF/N_32 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_RAMWDATA_0[1]  (.A(\COREABC_0/I_5 ), 
        .B(\COREABC_0_APB3master_PWDATA[1] ), .S(
        \COREABC_0/URAM.un1_UROM.INSTR_SLOT ), .Y(\COREABC_0/N_463 ));
    OA1 \CoreTimer_0/RawTimInt_RNO  (.A(\CoreTimer_0/RawTimInt_net_1 ), 
        .B(\CoreTimer_0/TimeOut ), .C(\CoreTimer_0/IntClr_i_0 ), .Y(
        \CoreTimer_0/NxtRawTimInt ));
    XOR3 \CORESPI_0/USPI/UCC/rx_cmdsize_RNO_1  (.A(
        \CORESPI_0/USPI/UCC/msrxp_frames[0]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/msrxp_frames[1]_net_1 ), .C(
        \CORESPI_0.USPI.cfg_cmdsize[1] ), .Y(
        \CORESPI_0/USPI/UCC/rx_cmdsize_2_1 ));
    NOR2A \CORESPI_0/USPI/URF/control1_RNIRGCA[7]  (.A(
        \CORESPI_0/USPI/URF/control1[7]_net_1 ), .B(
        \COREABC_0_APB3master_PADDR[2] ), .Y(
        \CORESPI_0/USPI/URF/control1_m1_e_2_0 ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_ALUOUT_1_sqmuxa  (.A(
        \COREABC_0/ALUOUT_1_sqmuxa_1 ), .B(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_1 ), .C(
        \COREABC_0/UROM.INSTR_SCMD[1]_net_1 ), .Y(
        \COREABC_0/ALUOUT_1_sqmuxa ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ACCUM_NEXT_iv_3[13]  (.A(
        \COREABC_0/xhdl_31.ALUOUT_3_m[13] ), .B(
        \COREABC_0/PRDATA_M_m[13] ), .C(\COREABC_0/ACCUMULATOR_m[14] ), 
        .Y(\COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_3[13] ));
    NOR3C \CORESPI_0/USPI/UCC/mtx_first_RNO_1  (.A(
        \CORESPI_0/USPI/UCC/spi_clk_tick_net_1 ), .B(
        \CORESPI_0/USPI/UCC/mtx_state[4]_net_1 ), .C(
        \CORESPI_0/USPI/UCC/txfifo_dhold_dec[0] ), .Y(
        \CORESPI_0/USPI/UCC/N_86 ));
    NOR3A \CORESPI_0/USPI/UCC/mtx_consecutive_RNO_1  (.A(
        \CORESPI_0/USPI/UCC/mtx_bitsel[0]_net_1 ), .B(
        \CORESPI_0/USPI/tx_fifo_empty ), .C(
        \CORESPI_0/USPI/UCC/mtx_lastframe_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/mtx_consecutive_0_sqmuxa_0_a2_1 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ACCUM_NEXT_iv_1[14]  (.A(
        \COREABC_0/ACCUM_IN[14] ), .B(\COREABC_0/ALUOUT_7_sqmuxa ), .C(
        \COREABC_0/ACCUMULATOR_m_0[13] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[14] ));
    XNOR2 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/un3_CUARTO0_I_20  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_7 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[7] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/I_20 ));
    NOR2A \CORESPI_0/USPI/UCC/msrxs_shiftreg_RNO[0]  (.A(
        \CORESPI_0/USPI/UCC/spi_di_mux ), .B(
        \CORESPI_0/USPI/UCC/msrxs_first5 ), .Y(
        \CORESPI_0/USPI/UCC/msrxs_shiftreg_5[0] ));
    DFN1E1P0 \CoreTimer_0/Count[11]  (.D(\CoreTimer_0/N_418 ), .CLK(
        GLA), .PRE(COREABC_0_PRESETN_0), .E(\CoreTimer_0/Counte_0 ), 
        .Q(\CoreTimer_0/Count[11]_net_1 ));
    NOR2 \COREABC_0/un1_ACCUMULATOR_xhdl_m2_0_a2_1  (.A(
        \COREABC_0/UROM.INSTR_SCMD[2]_net_1 ), .B(
        \COREABC_0/un1_ACCUMULATOR.un7_m1_e_0_1 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_1 ));
    DFN1P0 \COREABC_0/SMADDR[11]/U1  (.D(\COREABC_0/SMADDR[11]/Y ), 
        .CLK(GLA), .PRE(PRESETN), .Q(\COREABC_0/SMADDR[11] ));
    NOR2B \COREABC_0/ACCUMULATOR_RNIPK7R[14]  (.A(
        \COREABC_0/ACCUMULATOR[14] ), .B(\COREABC_0/ACCUMULATOR[13] ), 
        .Y(\COREABC_0/d_N_3_mux_0 ));
    DFN1 \COREABC_0/UROM.INSTR_DATA[4]  (.D(
        \COREABC_0/INSTRUCTION[30] ), .CLK(GLA), .Q(
        \COREABC_0/UROM.INSTR_DATA[4]_net_1 ));
    OA1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I94_un1_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N302 ), .B(
        \COREABC_0/un33_ZREGISTER.I87_un1_Y ), .C(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I94_un1_Y_0 ), .Y(
        \COREABC_0/un33_ZREGISTER.I94_un1_Y ));
    XNOR2 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/un3_CUARTO0_I_32  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_3 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[11] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/I_32 ));
    OR2 \COREABC_0/un1_ACCUMULATOR_ICYCLE_ns_i_a2_1[0]  (.A(
        \COREABC_0/ICYCLE[1]_net_1 ), .B(\COREABC_0/ICYCLE24.ICYCLE24 )
        , .Y(\COREABC_0/un1_ACCUMULATOR.ICYCLE_ns_i_a2_1[0] ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNI6VM0E  (.A(
        \COREABC_0/xhdl_31.ALUOUT_4_m[12] ), .B(
        \COREABC_0/xhdl_31.ALUOUT_5_m[12] ), .C(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[12] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_4[12] ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I32_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N219 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N223 ), .C(
        \COREABC_0/un1_ACCUMULATOR.N222 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N267 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_SMADDR_21_0[0]  (.A(
        \COREABC_0/UROM.INSTR_ADDR[0]_net_1 ), .B(
        \COREABC_0/RAMRDATA[0] ), .S(
        \COREABC_0/UROM.INSTR_CMD[1]_net_1 ), .Y(\COREABC_0/N_423 ));
    NOR2 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il_RNIGS42[2]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il[2]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il[0]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/m3_1 ));
    DFN1E1C0 \CoreTimer_0/Load[14]  (.D(
        \COREABC_0_APB3master_PWDATA[14] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreTimer_0/LoadEn_net_1 ), .Q(
        \CoreTimer_0/Load[14]_net_1 ));
    NOR3A \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIJ3DL0A  (.A(
        \COREABC_0/un1_ACCUMULATOR.to_logic_2.tmp_6_2[0] ), .B(
        \COREABC_0/ACCUM_NEXT[6] ), .C(\COREABC_0/ACCUM_NEXT[8] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.to_logic_2.tmp_6_6[0] ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ACCUM_NEXT_iv_3[3]  (.A(
        \COREABC_0/ACCUM_NEXT10 ), .B(
        \COREABC_0/xhdl_31.ALUOUT_3_m[3] ), .C(
        \COREABC_0/xhdl_31.ALUOUT_5_m[3] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_3[3] ));
    MX2 \COREABC_0/ZREGISTER[14]/U0  (.A(\COREABC_0/ZREGISTER_26[14] ), 
        .B(\COREABC_0/ZREGISTER[14] ), .S(\COREABC_0/un1_ICYCLE_4 ), 
        .Y(\COREABC_0/ZREGISTER[14]/Y ));
    DFN1E0C0 \CoreUARTapb_0/CUARTlOlI/CUARTIOl[3]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTl1I[3] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTlOlI/CUARTIOl4 ), 
        .Q(\CoreUARTapb_0/CUARTlOlI/CUARTIOl[3]_net_1 ));
    MAJ3 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I36_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N213 ), .B(
        \COREABC_0_APB3master_PWDATA[4] ), .C(\COREABC_0/ZREGISTER[4] )
        , .Y(\COREABC_0/un33_ZREGISTER.N271 ));
    MAJ3 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I20_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N237 ), .B(
        \COREABC_0_APB3master_PWDATA[12] ), .C(
        \COREABC_0/ZREGISTER[12] ), .Y(\COREABC_0/un33_ZREGISTER.N255 )
        );
    DFN1P0 \COREABC_0/STKPTR[2]/U1  (.D(\COREABC_0/STKPTR[2]/Y ), .CLK(
        GLA), .PRE(\COREABC_0/genblk2.RSTSYNC2_2_net_1 ), .Q(
        \COREABC_0/STKPTR[2] ));
    MX2B \CORESPI_0/USPI/URXF/fifo_mem_q_fifo_mem_q_ram1__RNICL975[4]  
        (.A(\CORESPI_0.USPI.URF.N_62 ), .B(
        \CORESPI_0/USPI/URXF/rx_fifo_data_out[3] ), .S(
        \CORESPI_0.USPI.un1_PADDR ), .Y(d_N_3_i_0_li));
    DFN1 \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/CUARTOOOI[2]  (.D(
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/CUARTl00I[2] ), 
        .CLK(GLA), .Q(\CoreUARTapb_0/CUARTlOlI/CUARTl1I[2] ));
    AO1 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2_1[2]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA_i_1[2] ), .B(
        \COREABC_0_APB3master_PADDR[12] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2_0[2]_net_1 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2_1[2]_net_1 ));
    AND2 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I98_un1_Y_0  (.A(
        \COREABC_0/un1_ACCUMULATOR.N303 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N204 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I98_un1_Y_0 ));
    NOR3C \CORESPI_0/USPI/UCON/rx_fifo_read_0_a2  (.A(
        \CoreTimer_0.un2_PrescaleEn_0 ), .B(
        \CORESPI_0/USPI/UCON/rx_fifo_read_0_a2_1_0_net_1 ), .C(
        \CORESPI_0/USPI/UCON/rx_fifo_read_0_a2_1_net_1 ), .Y(
        \CORESPI_0/USPI/rx_fifo_read ));
    MX2 \COREABC_0/un1_ACCUMULATOR_PWDATA_M[5]  (.A(
        \COREABC_0/UROM.INSTR_DATA[5]_net_1 ), .B(\COREABC_0/MUX1[5] ), 
        .S(\COREABC_0/USE_ACC_1 ), .Y(\COREABC_0_APB3master_PWDATA[5] )
        );
    NOR3C \CoreTimer_0/PreScale_RNICC65[7]  (.A(
        \CoreTimer_0/NextCountPulse_0_sqmuxa_5_3 ), .B(
        \CoreTimer_0/NextCountPulse_0_sqmuxa_7_7_0 ), .C(
        \CoreTimer_0/PreScale_c3 ), .Y(
        \CoreTimer_0/NextCountPulse_0_sqmuxa_7_7 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m230  (.A(\COREABC_0/N_230_0 ), .B(
        \COREABC_0/N_45_0 ), .S(\COREABC_0/SMADDR_0[1] ), .Y(
        \COREABC_0/N_231 ));
    NOR2 \CORESPI_0/USPI/UTXF/counter_q_RNO[5]  (.A(
        \CORESPI_0/USPI/UTXF/N_34 ), .B(\CORESPI_0/USPI/fiforsttx ), 
        .Y(\CORESPI_0/USPI/UTXF/N_19 ));
    NOR3A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_m3_0_a2_2  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_m3_0_a2_0_net_1 ), .B(
        \CoreAPB3_0.u_mux_p_to_b3.PRDATA_iv_i_1[7] ), .C(
        \CORESPI_0.USPI.URF.control1_m[7] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_m3_0_a2_2_net_1 ));
    AX1C \CORESPI_0/USPI/URXF/un1_counter_q_0_I_22  (.A(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_1[0] ), .B(
        \CORESPI_0/USPI/URXF/counter_q[2]_net_1 ), .C(
        \CORESPI_0/USPI/URXF/counter_q[3]_net_1 ), .Y(
        \CORESPI_0/USPI/URXF/un1_counter_q0[3] ));
    MX2 \COREABC_0/ACCUMULATOR[7]/U0  (.A(\COREABC_0/ACCUMULATOR[7] ), 
        .B(\COREABC_0/ACCUM_NEXT[7] ), .S(\COREABC_0/ACCUMULATOR4 ), 
        .Y(\COREABC_0/ACCUMULATOR[7]/Y ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNI8PFTC  (.A(
        \COREABC_0/xhdl_31.ALUOUT_4_m[9] ), .B(
        \COREABC_0/xhdl_31.ALUOUT_5_m[9] ), .C(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[9] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_4[9] ));
    NOR2 \CORESPI_0/USPI/URXF/un1_counter_q_m_i_a3_0[3]  (.A(
        \CORESPI_0/USPI/URXF/un1_counter_q0[3] ), .B(
        \CORESPI_0/USPI/rx_fifo_read ), .Y(\CORESPI_0/USPI/URXF/N_61 ));
    AX1 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I114_Y_0  (.A(
        \COREABC_0/r_m1_N_6_mux_0 ), .B(
        \COREABC_0/un1_ACCUMULATOR.un1_m1_e_0_0 ), .C(
        \COREABC_0/ACCUMULATOR[8] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I114_Y_0 ));
    DFN1E1P0 \CoreTimer_0/Count[10]  (.D(\CoreTimer_0/N_417 ), .CLK(
        GLA), .PRE(COREABC_0_PRESETN_0), .E(\CoreTimer_0/Counte_0 ), 
        .Q(\CoreTimer_0/Count[10]_net_1 ));
    XOR2 \CORESPI_0/USPI/UTXF/un1_rd_pointer_q_I_8  (.A(
        \CORESPI_0/USPI/UTXF/rd_pointer_q[0]_net_1 ), .B(
        \CORESPI_0/USPI/UTXF/rd_pointer_d_1_sqmuxa_2 ), .Y(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_partial_sum[0] ));
    XA1 \CORESPI_0/USPI/UCC/spi_clk_count_RNO[5]  (.A(
        \CORESPI_0/USPI/UCC/spi_clk_count_c4 ), .B(
        \CORESPI_0/USPI/UCC/spi_clk_count[5]_net_1 ), .C(
        \CORESPI_0/USPI/UCC/spi_clk_count_1_sqmuxa ), .Y(
        \CORESPI_0/USPI/UCC/spi_clk_count_n5 ));
    MX2 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0_RNO_0[12]  (
        .A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/I_35 ), .B(
        \CoreUARTapb_0/CUARTO1OI[7]_net_1 ), .S(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO08 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_126 ));
    OR2 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I13_P0N  (.A(
        \COREABC_0/ZREGISTER[13] ), .B(
        \COREABC_0_APB3master_PWDATA[13] ), .Y(
        \COREABC_0/un33_ZREGISTER.N244 ));
    NOR3A \CoreTimer_0/Count_RNIMBQ51[16]  (.A(
        \CoreTimer_0/m23_m4_e_0_3 ), .B(\CoreTimer_0/Count[17]_net_1 ), 
        .C(\CoreTimer_0/Count[16]_net_1 ), .Y(
        \CoreTimer_0/m23_m4_e_0_6 ));
    AX1B \CoreUARTapb_0/CUARTlOlI/CUARTOO1/un3_CUARTO0_I_26  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[8] ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/DWACT_FDEC_E[4] ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[9] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/I_26 ));
    DFN1C0 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[2]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_ns[2] ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[2]_net_1 ));
    DFN1C0 \CORESPI_0/USPI/URXF/rd_pointer_q[1]  (.D(
        \CORESPI_0/USPI/URXF/rd_pointer_q_3[1] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/URXF/rd_pointer_q[1]_net_1 ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_SMADDR_21_1[11]  (.A(
        \COREABC_0/I_32 ), .B(\COREABC_0/DOISR ), .Y(\COREABC_0/N_447 )
        );
    OR2B \COREABC_0/un1_ACCUMULATOR_un1_UROM.INSTR_CMD_3_0_o3  (.A(
        \COREABC_0/UROM.INSTR_CMD[0]_net_1 ), .B(
        \COREABC_0/UROM.INSTR_CMD[1]_net_1 ), .Y(\COREABC_0/N_681 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_ACCUM_IN[4]  (.A(
        \COREABC_0/UROM.INSTR_DATA[4]_net_1 ), .B(
        \COREABC_0/RAMRDATA[4] ), .S(\COREABC_0/un7_MUXIR[0] ), .Y(
        \COREABC_0/ACCUM_IN[4] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m216_0  (.A(\COREABC_0/N_216 ), .B(
        \COREABC_0/N_145_0 ), .S(\COREABC_0/SMADDR_1[1] ), .Y(
        \COREABC_0/N_217 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ACCUMULATOR_m[14]  (.A(
        \COREABC_0/ACCUMULATOR[14] ), .B(\COREABC_0/ALUOUT_6_sqmuxa ), 
        .Y(\COREABC_0/ACCUMULATOR_m[14] ));
    DFN1E1C0 \CoreUARTapb_0/CUARTOOII[3]  (.D(\CoreUARTapb_0/N_69_0 ), 
        .CLK(GLA), .CLR(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/N_124_mux ), .Q(
        \CoreUARTapb_0/CUARTOOII[3]_net_1 ));
    MX2 \COREABC_0/STKPTR[2]/U0  (.A(\COREABC_0/STKPTR[2] ), .B(
        \COREABC_0/N_1215 ), .S(\COREABC_0/STKPTRe ), .Y(
        \COREABC_0/STKPTR[2]/Y ));
    AO1 \CoreTimer_0/CountPulse_RNO_4  (.A(\CoreTimer_0/PreScale_c3 ), 
        .B(\CoreTimer_0/N_563_tz ), .C(
        \CoreTimer_0/un1_NextCountPulse_0_sqmuxa_1 ), .Y(
        \CoreTimer_0/un1_NextCountPulse_0_sqmuxa_2 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ACCUM_IN[9]  (.A(
        \COREABC_0/RAMRDATA[9] ), .B(\COREABC_0/un7_MUXIR[0] ), .Y(
        \COREABC_0/ACCUM_IN[9] ));
    DFN1C0 \CoreUARTapb_0/CUARTlOlI/CUARTl1l  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTI1l ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTl1l_net_1 ));
    DFN1C0 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[4]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_ns[4] ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[4]_net_1 ));
    NOR2B \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I49_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N256 ), .B(
        \COREABC_0/un33_ZREGISTER.N260 ), .Y(
        \COREABC_0/un33_ZREGISTER.N287 ));
    DFN1P0 \COREABC_0/SMADDR_0[2]/U1  (.D(\COREABC_0/SMADDR_0[2]/Y ), 
        .CLK(GLA), .PRE(\COREABC_0/genblk2.RSTSYNC2_0_net_1 ), .Q(
        \COREABC_0/SMADDR_0[2] ));
    XOR2 \CORESPI_0/USPI/UTXF/un1_wr_pointer_q_I_8  (.A(
        \CORESPI_0/USPI/UTXF/wr_pointer_q[0]_net_1 ), .B(
        \CORESPI_0/USPI/UTXF/wr_pointer_d_1_sqmuxa_1 ), .Y(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_partial_sum_0[0] ));
    MX2C \CoreUARTapb_0/CUARTOOII_RNI87NR1[6]  (.A(
        \CoreUARTapb_0/CUARTOOII[6]_net_1 ), .B(
        \CoreUARTapb_0/CUARTOIII[6] ), .S(\CoreUARTapb_0/PARITY_ERR_0 )
        , .Y(\CoreAPB3_0_APBmslave1_PRDATA_i_1[6] ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_un1_ACCUMULATOR_v[12]  (.A(
        \COREABC_0/ACCUM_IN[13] ), .B(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux ), .Y(
        \COREABC_0/un5[13] ));
    DFN1E1 \CORESPI_0/USPI/URXF/fifo_mem_q_fifo_mem_q_ram1_[4]  (.D(
        \CORESPI_0/USPI/rx_fifo_data_in[3] ), .CLK(GLA), .E(
        \CORESPI_0/USPI/URXF/awe1 ), .Q(\CORESPI_0/USPI/URXF/ram1_4 ));
    NOR3C \CoreAPB3_0/u_mux_p_to_b3/PRDATA_m2_e  (.A(
        \CoreTimer_0.un2_PrescaleEn_0 ), .B(
        \CORESPI_0.USPI.clk_div_val[4] ), .C(
        \CORESPI_0.USPI.URF.control110_0_a2_0 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_m2_e_net_1 ));
    OA1B \COREABC_0/un1_ACCUMULATOR_ADD_m1_e_2  (.A(
        \COREABC_0/ADD_m3_a0 ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_m3_1_0 ), .C(
        \COREABC_0/un1_ACCUMULATOR.N207 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_3_mux_0 ));
    DFN1E1 \CORESPI_0/USPI/URXF/fifo_mem_q_fifo_mem_q_ram3_[4]  (.D(
        \CORESPI_0/USPI/rx_fifo_data_in[3] ), .CLK(GLA), .E(
        \CORESPI_0/USPI/URXF/N_54 ), .Q(\CORESPI_0/USPI/URXF/ram3_4 ));
    DFN1E1C0 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1[1]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_n1 ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTIl ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1[1]_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_ZREGISTER_26[8]  (.A(
        \COREABC_0_APB3master_PWDATA[8] ), .B(
        \COREABC_0/un33_ZREGISTER[8] ), .S(
        \COREABC_0/UROM.INSTR_SCMD[0]_net_1 ), .Y(
        \COREABC_0/ZREGISTER_26[8] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m131_0  (.A(\COREABC_0/N_10_1 ), .B(
        \COREABC_0/N_22_1 ), .S(\COREABC_0/SMADDR_0[3] ), .Y(
        \COREABC_0/N_132_0 ));
    MX2 \CORESPI_0/USPI/URF/control2_RNO[7]  (.A(
        \COREABC_0_APB3master_PWDATA[7] ), .B(
        \CORESPI_0/USPI/URF/control2[7]_net_1 ), .S(
        \CORESPI_0/USPI/URF/N_67 ), .Y(\CORESPI_0/USPI/URF/N_22 ));
    XA1 \COREABC_0/un1_ACCUMULATOR_m114_0  (.A(\COREABC_0/SMADDR_0[2] )
        , .B(\COREABC_0/SMADDR_0[1] ), .C(\COREABC_0/N_11_1 ), .Y(
        \COREABC_0/N_115_0 ));
    XOR2 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I119_Y_0  (.A(
        \COREABC_0/ZREGISTER[13] ), .B(
        \COREABC_0_APB3master_PWDATA[13] ), .Y(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I119_Y_0 ));
    NOR3A \CORESPI_0/USPI/UTXF/wr_pointer_q_RNO[1]  (.A(
        \CORESPI_0/USPI/UTXF/I_10 ), .B(\CORESPI_0/USPI/fiforsttx ), 
        .C(\CORESPI_0/USPI/UTXF/N_52 ), .Y(
        \CORESPI_0/USPI/UTXF/wr_pointer_q_3[1] ));
    NOR2 \CORESPI_0/USPI/URXF/empty_out_RNIC46L  (.A(
        \CORESPI_0/USPI/rx_fifo_write ), .B(
        \CORESPI_0/USPI/rx_fifo_empty ), .Y(
        \CORESPI_0/USPI/URXF/counter_d_0_sqmuxa_2 ));
    DFN1P0 \CORESPI_0/USPI/URF/int_raw[7]  (.D(
        \CORESPI_0/USPI/URF/int_raw_51[7] ), .CLK(GLA), .PRE(
        COREABC_0_PRESETN_0), .Q(\CORESPI_0/USPI/URF/int_raw[7]_net_1 )
        );
    DFN1E1P0 \CoreTimer_0/Count[8]  (.D(\CoreTimer_0/N_415 ), .CLK(GLA)
        , .PRE(COREABC_0_PRESETN_0), .E(\CoreTimer_0/Counte ), .Q(
        \CoreTimer_0/Count[8]_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_ZREGISTER_26[4]  (.A(
        \COREABC_0_APB3master_PWDATA[4] ), .B(
        \COREABC_0/un33_ZREGISTER[4] ), .S(
        \COREABC_0/UROM.INSTR_SCMD[0]_net_1 ), .Y(
        \COREABC_0/ZREGISTER_26[4] ));
    NOR2B \CoreUARTapb_0/CUARTOOII_RNO_2[3]  (.A(
        \CoreUARTapb_0/CUARTOIII[3] ), .B(
        \COREABC_0_APB3master_PADDR[2] ), .Y(\CoreUARTapb_0/N_65_0 ));
    DFN1E1C0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTlOl[4]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[4]_net_1 ), .CLK(
        GLA), .CLR(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTlOl_1_sqmuxa ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTlOl[4] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_SMADDR_21[0]  (.A(\COREABC_0/N_436 )
        , .B(\COREABC_0/N_423 ), .S(\COREABC_0/SMADDR_0_sqmuxa_1 ), .Y(
        \COREABC_0/SMADDR_21[0] ));
    DFN1E1C0 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTO00l  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTO00l_5 ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/un1_CUARTO00l_1_sqmuxa ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTO00l_net_1 ));
    DFN1E1 \CORESPI_0/USPI/UTXF/fifo_mem_q_fifo_mem_q_ram1_[1]  (.D(
        \COREABC_0_APB3master_PWDATA[0] ), .CLK(GLA), .E(
        \CORESPI_0/USPI/UTXF/awe1 ), .Q(\CORESPI_0/USPI/UTXF/ram1_1 ));
    DFN1E0C0 \CORESPI_0/USPI/UCC/stxp_lastframe  (.D(
        \CORESPI_0/USPI/UCC/stxp_lastframe_5 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/UCC/un1_txfifo_read ), 
        .Q(\CORESPI_0/USPI/UCC/stxp_lastframe_net_1 ));
    DFN1E1 \CORESPI_0/USPI/UTXF/fifo_mem_q_fifo_mem_q_ram3_[1]  (.D(
        \COREABC_0_APB3master_PWDATA[0] ), .CLK(GLA), .E(
        \CORESPI_0/USPI/UTXF/N_52 ), .Q(\CORESPI_0/USPI/UTXF/ram3_1 ));
    INV \CORESPI_0/USPI/UCC/mtx_re_q2_RNO  (.A(
        \CORESPI_0/USPI/UCC/mtx_re_q1_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/mtx_re_q1_i ));
    DFN1E1C0 \CORESPI_0/USPI/UCC/mtx_bitsel[3]  (.D(
        \CORESPI_0/USPI/UCC/N_596 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/UCC/mtx_bitsele ), .Q(
        \CORESPI_0/USPI/UCC/mtx_bitsel[3]_net_1 ));
    MX2 \CoreUARTapb_0/CUARTlOlI/CUARTIOl_RNI4KTV[1]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIOl[1]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTlOl[1] ), .S(
        \CoreUARTapb_0/PARITY_ERR_0 ), .Y(\CoreUARTapb_0/CUARTOIII[1] )
        );
    NOR2 \CORESPI_0/USPI/UCON/rx_fifo_read_0_a2_1_0  (.A(
        \COREABC_0_APB3master_PADDR[6] ), .B(\CORESPI_0.USPI.URF.N_62 )
        , .Y(\CORESPI_0/USPI/UCON/rx_fifo_read_0_a2_1_0_net_1 ));
    NOR2B \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I13_G0N  (.A(
        \COREABC_0/ZREGISTER[13] ), .B(
        \COREABC_0_APB3master_PWDATA[13] ), .Y(
        \COREABC_0/un33_ZREGISTER.N243 ));
    AND2 \CORESPI_0/USPI/UTXF/un1_counter_q_0_I_8  (.A(
        \CORESPI_0/USPI/UTXF/counter_q[4]_net_1 ), .B(
        \CORESPI_0/USPI/UTXF/counter_d_0_sqmuxa_0 ), .Y(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_0_4[0] ));
    MX2 \COREABC_0/ACCUMULATOR[8]/U0  (.A(\COREABC_0/ACCUMULATOR[8] ), 
        .B(\COREABC_0/ACCUM_NEXT[8] ), .S(\COREABC_0/ACCUMULATOR4 ), 
        .Y(\COREABC_0/ACCUMULATOR[8]/Y ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m263_0  (.A(
        \COREABC_0/UROM.INSTR_ADDR[3]_net_1 ), .B(
        \COREABC_0/RAMRDATA[3] ), .S(
        \COREABC_0/UROM.INSTR_CMD[1]_net_1 ), .Y(\COREABC_0/i39_mux ));
    NOR3C \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il_RNI81B22[1]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/m3_0 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/m3_1 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_28_i ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_137_mux ));
    NOR2B \CORESPI_0/USPI/UCC/mtx_lastbit_RNIID3J1  (.A(
        \CORESPI_0/USPI/UCC/clock_rx_re ), .B(
        \CORESPI_0/USPI/UCC/msrxs_first5 ), .Y(
        \CORESPI_0/USPI/UCC/msrxs_datain_0_sqmuxa_1 ));
    DFN1E0C0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il[0]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_382 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_130_mux ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il[0]_net_1 ));
    MX2 \COREABC_0/SMADDR[8]/U0  (.A(\COREABC_0/N_59_0 ), .B(
        \COREABC_0/SMADDR[8] ), .S(\COREABC_0/un1_ICYCLE_6 ), .Y(
        \COREABC_0/SMADDR[8]/Y ));
    NOR2B \CORESPI_0/USPI/URF/control110_0_a2  (.A(
        \CORESPI_0.USPI.URF.control110_0_a2_0 ), .B(
        \CoreTimer_0.un2_PrescaleEn_0 ), .Y(
        \CORESPI_0.USPI.URF.control110 ));
    NOR2B \CORESPI_0/USPI/UCC/mtx_bitsel_RNIRN4N[1]  (.A(
        \CORESPI_0/USPI/UCC/mtx_bitsel[1]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/mtx_bitsel[0]_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/N_42 ));
    DFN1C1 \CORESPI_0/USPI/UCC/stxs_bitsel[0]  (.D(
        \CORESPI_0/USPI/UCC/stxs_bitsel_6[0] ), .CLK(GLA), .CLR(
        \CORESPI_0/USPI/UCC/ssel_rx_q2_RNIBQH6_net_1 ), .Q(
        \CORESPI_0/USPI/UCC/stxs_bitsel[0]_net_1 ));
    NOR2B \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I12_G0N  (.A(
        \COREABC_0/ZREGISTER[12] ), .B(
        \COREABC_0_APB3master_PWDATA[12] ), .Y(
        \COREABC_0/un33_ZREGISTER.N240 ));
    NOR3B \CORESPI_0/USPI/URXF/empty_out_RNIC21J4  (.A(
        \CORESPI_0/USPI/URXF/rd_pointer_d_1_sqmuxa_2_0_a3_0 ), .B(
        \CORESPI_0/USPI/rx_fifo_read ), .C(
        \CORESPI_0/USPI/URXF/un1_data_out_dx_i_0_li[3] ), .Y(
        \CORESPI_0/USPI/URXF/rd_pointer_d_1_sqmuxa_2 ));
    NOR2 \CORESPI_0/USPI/UTXF/counter_q_RNO[1]  (.A(
        \CORESPI_0/USPI/UTXF/N_42 ), .B(\CORESPI_0/USPI/fiforsttx ), 
        .Y(\CORESPI_0/USPI/UTXF/N_17 ));
    DFN1C0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl[0]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl_e0 ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl[0]_net_1 ));
    OR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_1[3]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/N_35 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/N_50 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/N_49 ), .Y(
        \CoreAPB3_0.u_mux_p_to_b3.PRDATA_iv_i_1[3] ));
    AO1 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_1[7]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA_i_1[7] ), .B(
        \COREABC_0_APB3master_PADDR[12] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_1_0[7]_net_1 ), .Y(
        \CoreAPB3_0.u_mux_p_to_b3.PRDATA_iv_i_1[7] ));
    NOR2B \CoreUARTapb_0/CUARTOOII_RNO_0[7]  (.A(
        \CoreUARTapb_0/CUARTOIII[7] ), .B(\CORESPI_0.USPI.URF.N_120_1 )
        , .Y(\CoreUARTapb_0/N_51_0 ));
    XOR2 \COREABC_0/un37_SMADDR_I_20  (.A(\COREABC_0/un37_SMADDR.N_6 ), 
        .B(\COREABC_0/SMADDR[7] ), .Y(\COREABC_0/I_20 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ADD_m1_e_8_0  (.A(
        \COREABC_0/ACCUMULATOR[9] ), .B(\COREABC_0/RAMRDATA[9] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_m1_e_8_0 ));
    DFN1C0 \COREABC_0/ZREGISTER[4]/U1  (.D(\COREABC_0/ZREGISTER[4]/Y ), 
        .CLK(GLA), .CLR(\COREABC_0/genblk2.RSTSYNC2_2_net_1 ), .Q(
        \COREABC_0/ZREGISTER[4] ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ACCUM_NEXT_iv_1[11]  (.A(
        \COREABC_0/ACCUM_IN[11] ), .B(\COREABC_0/ALUOUT_7_sqmuxa ), .C(
        \COREABC_0/ACCUMULATOR_m_0[10] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[11] ));
    DFN1C0 \CORESPI_0/USPI/UCC/SYNC2_msrxp_pktsel  (.D(
        \CORESPI_0/USPI/UCC/SYNC1_msrxp_pktsel_net_1 ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/un1_sresetn_4_i ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I4_P0N_a1  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I4_P0N_a1_0 ), .B(
        \COREABC_0/r_m1_N_6_mux_0 ), .Y(
        \COREABC_0/ADD_16x16_fast_I4_P0N_a1 ));
    NOR3A \CoreTimer_0/CountPulse_RNO_7  (.A(
        \CoreTimer_0/PreScale[6]_net_1 ), .B(
        \CoreTimer_0/TimerPre[0]_net_1 ), .C(
        \CoreTimer_0/TimerPre[3]_net_1 ), .Y(
        \CoreTimer_0/NextCountPulse_0_sqmuxa_6_2_1 ));
    MX2 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0_RNO_0[3]  (
        .A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/I_9 ), .B(
        \CoreUARTapb_0/CUARTl0OI[3]_net_1 ), .S(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO08 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_117 ));
    NOR2B \CORESPI_0/USPI/URXF/un1_counter_q_0_I_29  (.A(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_2[0] ), .B(
        \CORESPI_0/USPI/URXF/counter_q[4]_net_1 ), .Y(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_12_1[0] ));
    MX2 \CORESPI_0/USPI/URXF/fifo_mem_q_fifo_mem_q_ram1__RNI9SN72[3]  
        (.A(\CORESPI_0/USPI/URXF/N_34 ), .B(\CORESPI_0/USPI/URXF/N_39 )
        , .S(\CORESPI_0/USPI/URXF/rd_pointer_q[1]_net_1 ), .Y(
        \CORESPI_0.USPI.rx_fifo_data_out[2] ));
    AND2A \COREABC_0/un1_ACCUMULATOR_ICYCLE_1_sqmuxa_1_0_a3_0  (.A(
        COREABC_0_APB3master_PENABLE), .B(COREABC_0_APB3master_PSELx), 
        .Y(\COREABC_0/un1_ACCUMULATOR.ICYCLE_1_sqmuxa_1_0_a3_0 ));
    NOR2A \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_RNO_0[6]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[7]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_123 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_86 ));
    DFN1C0 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0[2]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[2] ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[2] ));
    NOR3B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_6[0]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_4[0]_net_1 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_3[0]_net_1 ), .C(
        \CORESPI_0.USPI.URF.control1_m[0] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_6[0]_net_1 ));
    MX2 \CoreUARTapb_0/CUARTlOlI/CUARTIOl_RNIG0UV[7]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIOl[7]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTlOl[7] ), .S(
        \CoreUARTapb_0/PARITY_ERR_0 ), .Y(\CoreUARTapb_0/CUARTOIII[7] )
        );
    NOR2B \CoreTimer_0/PreScale_RNO_0[7]  (.A(
        \CoreTimer_0/PreScale[6]_net_1 ), .B(\CoreTimer_0/PreScale_c5 )
        , .Y(\CoreTimer_0/PreScale_82_0 ));
    DFN1E1 \CORESPI_0/USPI/UTXF/fifo_mem_q_fifo_mem_q_ram0_[2]  (.D(
        \COREABC_0_APB3master_PWDATA[1] ), .CLK(GLA), .E(
        \CORESPI_0/USPI/UTXF/awe0 ), .Q(\CORESPI_0/USPI/UTXF/ram0_2 ));
    NOR3C \CoreTimer_0/iPRDATA_RNO_3[0]  (.A(
        \CoreTimer_0/PrdataNextEn_net_1 ), .B(
        \CoreTimer_0/un2_CtrlEn_net_1 ), .C(
        \CoreTimer_0/CtrlReg[0]_net_1 ), .Y(\CoreTimer_0/CtrlReg_m[0] )
        );
    MX2 \COREABC_0/un1_ACCUMULATOR_m225  (.A(\COREABC_0/N_220 ), .B(
        \COREABC_0/N_225_0 ), .S(\COREABC_0/SMADDR_0[0] ), .Y(
        \COREABC_0/INSTRUCTION[3] ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_m14_0  (.A(
        \COREABC_0/N_274_mux_0 ), .B(\COREABC_0/SMADDR[4] ), .Y(
        \COREABC_0/N_15_1 ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I97_un1_Y_0  (.A(
        \COREABC_0/un1_ACCUMULATOR.N217 ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I63_Y_0 ), .C(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_3_mux_0 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I97_un1_Y_0 ));
    NOR3 \CORESPI_0/USPI/UCC/mtx_state_RNO[1]  (.A(
        \CORESPI_0/USPI/SPISS_2[0] ), .B(\CORESPI_0/USPI/UCC/N_75 ), 
        .C(\CORESPI_0/USPI/UCC/N_74 ), .Y(
        \CORESPI_0/USPI/UCC/mtx_state_RNO[1]_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_SMADDR_21_0[1]  (.A(
        \COREABC_0/UROM.INSTR_ADDR[1]_net_1 ), .B(
        \COREABC_0/RAMRDATA[1] ), .S(
        \COREABC_0/UROM.INSTR_CMD[1]_net_1 ), .Y(\COREABC_0/N_424 ));
    NOR3C \CoreTimer_0/iPRDATA_RNO_2[3]  (.A(
        \CoreTimer_0/PrdataNextEn_net_1 ), .B(
        \CORESPI_0.USPI.URF.N_127 ), .C(\CoreTimer_0/Load[3]_net_1 ), 
        .Y(\CoreTimer_0/Load_m[3] ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I26_un1_Y_0  (.A(
        \COREABC_0/un1_ACCUMULATOR.un1_m1_e_0_0 ), .B(
        \COREABC_0/ACCUMULATOR[8] ), .C(\COREABC_0/r_m1_N_6_mux_0 ), 
        .Y(\COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I26_un1_Y_0 ));
    MX2 \COREABC_0/SMADDR[9]/U0  (.A(\COREABC_0/N_63_0 ), .B(
        \COREABC_0/SMADDR[9] ), .S(\COREABC_0/un1_ICYCLE_6 ), .Y(
        \COREABC_0/SMADDR[9]/Y ));
    NOR2B \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTOOI_RNIRHCQ  
        (.A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTOOI ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1[0]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTI0_0_sqmuxa_4_3_0 ));
    NOR3A \CORESPI_0/USPI/URXF/wr_pointer_q_RNO[0]  (.A(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_partial_sum_2[0] ), .B(
        \CORESPI_0/USPI/fiforstrx ), .C(\CORESPI_0/USPI/URXF/N_54 ), 
        .Y(\CORESPI_0/USPI/URXF/wr_pointer_q_3[0] ));
    AO1 \CoreTimer_0/CountPulse_RNI2LVFO  (.A(
        \CoreTimer_0/un1_CtrlReg ), .B(
        \CoreTimer_0/Count_RNIC07P9[22]_net_1 ), .C(
        \CoreTimer_0/un1_PreScale8_0_0 ), .Y(\CoreTimer_0/Counte ));
    NOR2A \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_RNO[1]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[2]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_123 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_11[1] ));
    AO1 \CORESPI_0/USPI/UCC/stxs_bitsel_RNO[1]  (.A(
        \CORESPI_0/USPI/UCC/un1_stxs_state4[0] ), .B(
        \CORESPI_0/USPI/UCC/clock_rx_fe ), .C(
        \CORESPI_0/USPI/UCC/I_10_3 ), .Y(
        \CORESPI_0/USPI/UCC/stxs_bitsel_6[1] ));
    MX2 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTIl0l_RNI486D[0]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTIl0l[0]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTIl0l[1]_net_1 ), .S(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l[0]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_27 ));
    DFN1E1P0 \CoreTimer_0/Count[25]  (.D(\CoreTimer_0/N_43_0 ), .CLK(
        GLA), .PRE(COREABC_0_PRESETN_0), .E(\CoreTimer_0/Counte_0 ), 
        .Q(\CoreTimer_0/Count[25]_net_1 ));
    DFN1C1 \CORESPI_0/USPI/UCC/stxs_bitcnt[2]/U1  (.D(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[2]/Y ), .CLK(GLA), .CLR(
        \CORESPI_0/USPI/UCC/ssel_rx_q2_RNIBQH6_net_1 ), .Q(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[2] ));
    NOR3C \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_a0[6]  (.A(
        \CORESPI_0.USPI.URF.control110_0_a2_0 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_a0_0[6]_net_1 ), .C(
        \CoreTimer_0.DataOut_1_sqmuxa_2 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_a0[6]_net_1 ));
    NOR2 \CORESPI_0/USPI/UCC/stxp_lastframe_RNO_0  (.A(
        \CORESPI_0/USPI/UCC/stxp_strobe ), .B(\CORESPI_0.USPI.SPIMODE )
        , .Y(\CORESPI_0/USPI/UCC/un1_txfifo_read ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ACCUM_NEXT_iv_1[8]  (.A(
        \COREABC_0/ACCUM_IN[8] ), .B(\COREABC_0/ALUOUT_7_sqmuxa ), .C(
        \COREABC_0/ACCUMULATOR_m_0[7] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[8] ));
    DFN1E1C0 \CoreUARTapb_0/CUARTOOII[6]  (.D(\CoreUARTapb_0/N_56_0 ), 
        .CLK(GLA), .CLR(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/N_124_mux ), .Q(
        \CoreUARTapb_0/CUARTOOII[6]_net_1 ));
    DFN1E1C0 \CoreUARTapb_0/CUARTl0OI[6]  (.D(
        \COREABC_0_APB3master_PWDATA[6] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTl0OI4 ), .Q(
        \CoreUARTapb_0/CUARTl0OI[6]_net_1 ));
    NOR2B \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I0_CO1  (.A(
        \COREABC_0/ZREGISTER[0] ), .B(\COREABC_0_APB3master_PWDATA[0] )
        , .Y(\COREABC_0/un33_ZREGISTER.N204 ));
    XOR2 \CORESPI_0/USPI/UTXF/un1_counter_q_1_I_21  (.A(
        \CORESPI_0/USPI/UTXF/counter_q[4]_net_1 ), .B(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_2[0] ), .Y(
        \CORESPI_0/USPI/UTXF/un1_counter_q1[4] ));
    AND3 \COREABC_0/un37_SMADDR_I_27  (.A(
        \COREABC_0/un37_SMADDR.U1.DWACT_FINC_E[4] ), .B(
        \COREABC_0/SMADDR[8] ), .C(\COREABC_0/SMADDR[9] ), .Y(
        \COREABC_0/un37_SMADDR.N_3 ));
    XA1 \COREABC_0/un1_ACCUMULATOR_un1_ACCUMULATOR_m[13]  (.A(
        \COREABC_0/un1_ACCUMULATOR.N352 ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I119_Y_0 ), .C(
        \COREABC_0/un1_ACCUM_NEXT9_1 ), .Y(
        \COREABC_0/un1_ACCUMULATOR_m[13] ));
    DFN1C0 \CORESPI_0/USPI/URXF/counter_q[3]  (.D(
        \CORESPI_0/USPI/URXF/N_15 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/URXF/counter_q[3]_net_1 ));
    MX2 \COREABC_0/ACCUMULATOR[14]/U0  (.A(\COREABC_0/ACCUMULATOR[14] )
        , .B(\COREABC_0/ACCUM_NEXT[14] ), .S(\COREABC_0/ACCUMULATOR4 ), 
        .Y(\COREABC_0/ACCUMULATOR[14]/Y ));
    NOR2A \CoreTimer_0/CountPulse_RNO_13  (.A(
        \CoreTimer_0/PreScale[2]_net_1 ), .B(
        \CoreTimer_0/TimerPre[0]_net_1 ), .Y(
        \CoreTimer_0/NextCountPulse_0_sqmuxa_2_0 ));
    XOR2 \COREABC_0/un37_SMADDR_I_32  (.A(\COREABC_0/un37_SMADDR.N_2 ), 
        .B(\COREABC_0/SMADDR[11] ), .Y(\COREABC_0/I_32 ));
    DFN1E1C0 \CoreUARTapb_0/CUARTOOII[0]  (.D(\CoreUARTapb_0/N_90 ), 
        .CLK(GLA), .CLR(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/N_124_mux ), .Q(
        \CoreUARTapb_0/CUARTOOII[0]_net_1 ));
    MX2 \CoreUARTapb_0/CUARTlOlI/CUARTIOl_RNI6MTV[2]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIOl[2]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTlOl[2] ), .S(
        \CoreUARTapb_0/PARITY_ERR_0 ), .Y(\CoreUARTapb_0/CUARTOIII[2] )
        );
    DFN1E1P0 \CoreTimer_0/Count[1]  (.D(\CoreTimer_0/N_408 ), .CLK(GLA)
        , .PRE(COREABC_0_PRESETN_0), .E(\CoreTimer_0/Counte ), .Q(
        \CoreTimer_0/Count[1]_net_1 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ACCUMULATOR_m[10]  (.A(
        \COREABC_0/ACCUMULATOR[10] ), .B(\COREABC_0/ALUOUT_6_sqmuxa ), 
        .Y(\COREABC_0/ACCUMULATOR_m[10] ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_xhdl_31.ALUOUT_3_m_0[7]  (.A(
        \COREABC_0/ACCUMULATOR[7] ), .B(\COREABC_0/ALUOUT_1_sqmuxa ), 
        .Y(\COREABC_0/un1_ACCUMULATOR.xhdl_31.ALUOUT_3_m_0[7] ));
    AO1 \COREABC_0/un1_ACCUMULATOR_un1_DOISR_0_sqmuxa  (.A(
        \COREABC_0/un1_ACCUMULATOR.ISR_1_sqmuxa_0 ), .B(
        \COREABC_0/ISR_1_sqmuxa_1 ), .C(\COREABC_0/DOISR_0_sqmuxa ), 
        .Y(\COREABC_0/un1_DOISR_0_sqmuxa ));
    AO1 \CoreTimer_0/iPRDATA_RNO_1[1]  (.A(
        \CoreTimer_0/TimerPre[1]_net_1 ), .B(
        \CoreTimer_0/DataOut_3_sqmuxa_net_1 ), .C(
        \CoreTimer_0/CtrlReg_m[1] ), .Y(
        \CoreTimer_0/PrdataNext_1_0_iv_0[1] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m151_0  (.A(\COREABC_0/N_45_0 ), .B(
        \COREABC_0/N_144 ), .S(\COREABC_0/SMADDR_1[2] ), .Y(
        \COREABC_0/N_152_0 ));
    AO1 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2_1[0]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA_i_1[0] ), .B(
        \COREABC_0_APB3master_PADDR[12] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2_0[0]_net_1 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2_1[0]_net_1 ));
    NOR2A \CoreTimer_0/Count_RNIVGM98[26]  (.A(\CoreTimer_0/N_27_0 ), 
        .B(\CoreTimer_0/Count[26]_net_1 ), .Y(\CoreTimer_0/N_28_0 ));
    NOR3C \COREABC_0/un1_ACCUMULATOR_xhdl_31.ALUOUT_3_m[4]  (.A(
        \COREABC_0/ALUOUT_1_sqmuxa ), .B(\COREABC_0/ACCUMULATOR[4] ), 
        .C(\COREABC_0/ACCUM_IN[4] ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_3_m[4] ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_m25_0  (.A(\COREABC_0/N_16_1 ), 
        .B(\COREABC_0/SMADDR[3] ), .Y(\COREABC_0/N_26_1 ));
    AX1C \CORESPI_0/USPI/URXF/un1_wr_pointer_q_I_10  (.A(
        \CORESPI_0/USPI/URXF/wr_pointer_q[0]_net_1 ), .B(
        \CORESPI_0/USPI/URXF/wr_pointer_d_1_sqmuxa_1 ), .C(
        \CORESPI_0/USPI/URXF/wr_pointer_q[1]_net_1 ), .Y(
        \CORESPI_0/USPI/URXF/I_10_1 ));
    DFN1C1 \CORESPI_0/USPI/UCC/stxs_bitcnt[0]/U1  (.D(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[0]/Y ), .CLK(GLA), .CLR(
        \CORESPI_0/USPI/UCC/ssel_rx_q2_RNIBQH6_net_1 ), .Q(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[0] ));
    DFN1C0 \CORESPI_0/USPI/UCC/ssel_rx_q1  (.D(VCC), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(\CORESPI_0/USPI/UCC/ssel_rx_q1_net_1 )
        );
    AND3 \COREABC_0/un1_STKPTRP1_I_16  (.A(
        \COREABC_0/un1_STKPTRP1.U1.DWACT_FINC_E[0] ), .B(
        \COREABC_0/un1_STKPTRP1.U1.DWACT_FINC_E[1] ), .C(
        \COREABC_0/STKPTR[5] ), .Y(\COREABC_0/un1_STKPTRP1.N_3 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_m10_0  (.A(\COREABC_0/N_10_1 ), 
        .B(\COREABC_0/SMADDR[3] ), .Y(\COREABC_0/N_11_1 ));
    AO1 \CORESPI_0/USPI/URF/control2_RNIPDM51[5]  (.A(
        \CORESPI_0/USPI/URF/control2[5]_net_1 ), .B(
        \CORESPI_0.USPI.URF.control17 ), .C(
        \CORESPI_0/USPI/URF/int_raw_m[5] ), .Y(
        \CORESPI_0/USPI/URF/rdata_iv_3[5] ));
    DFN1E1C0 \CoreTimer_0/Load[4]  (.D(
        \COREABC_0_APB3master_PWDATA[4] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreTimer_0/LoadEn_net_1 ), .Q(
        \CoreTimer_0/Load[4]_net_1 ));
    DFN1E1P0 \CoreTimer_0/Count[0]  (.D(\CoreTimer_0/N_407 ), .CLK(GLA)
        , .PRE(COREABC_0_PRESETN_0), .E(\CoreTimer_0/Counte ), .Q(
        \CoreTimer_0/Count[0]_net_1 ));
    XNOR2 \COREABC_0/un1_ACCUMULATOR_ADD_m1_0  (.A(
        \COREABC_0/RAMRDATA[6] ), .B(
        \COREABC_0/UROM.INSTR_DATA[6]_net_1 ), .Y(\COREABC_0/ADD_m1_0 )
        );
    AND3 \COREABC_0/un37_SMADDR_I_24  (.A(
        \COREABC_0/un37_SMADDR.U1.DWACT_FINC_E[0] ), .B(
        \COREABC_0/un37_SMADDR.U1.DWACT_FINC_E[2] ), .C(
        \COREABC_0/un37_SMADDR.U1.DWACT_FINC_E[3] ), .Y(
        \COREABC_0/un37_SMADDR.U1.DWACT_FINC_E[4] ));
    XA1 \COREABC_0/un1_ACCUMULATOR_xhdl_31.ALUOUT_5_m[15]  (.A(
        \COREABC_0/ACCUMULATOR[15] ), .B(\COREABC_0/ACCUM_IN[15] ), .C(
        \COREABC_0/ALUOUT_3_sqmuxa ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_5_m[15] ));
    DFN1C0 \CORESPI_0/USPI/UTXF/rd_pointer_q[1]  (.D(
        \CORESPI_0/USPI/UTXF/rd_pointer_q_3[1] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UTXF/rd_pointer_q[1]_net_1 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ACCUMULATOR_m[15]  (.A(
        \COREABC_0/ACCUMULATOR[15] ), .B(\COREABC_0/ALUOUT_6_sqmuxa ), 
        .Y(\COREABC_0/ACCUMULATOR_m[15] ));
    NOR3 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I21_Y_0_1  (.A(
        \COREABC_0/ADD_16x16_fast_I21_Y_a1 ), .B(
        \COREABC_0/ADD_16x16_fast_I21_Y_a0 ), .C(
        \COREABC_0/ADD_16x16_fast_I21_Y_a4 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I21_Y_0_1 ));
    AO1A \CORESPI_0/USPI/UCC/mtx_spi_data_out_RNO_0  (.A(
        \CORESPI_0/USPI/UCC/mtx_datahold[0]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/N_476_2 ), .C(
        \CORESPI_0/USPI/UCC/mtx_spi_data_out_2_iv_i_1 ), .Y(
        \CORESPI_0/USPI/UCC/mtx_spi_data_out_2_iv_i_2 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m87_0  (.A(\COREABC_0/I_32 ), .B(
        \COREABC_0_APB3master_PWDATA[11] ), .S(
        \COREABC_0/URAM.un1_UROM.INSTR_SLOT ), .Y(\COREABC_0/N_88_0 ));
    AX1C \CORESPI_0/USPI/UTXF/un1_rd_pointer_q_I_10  (.A(
        \CORESPI_0/USPI/UTXF/rd_pointer_q[0]_net_1 ), .B(
        \CORESPI_0/USPI/UTXF/rd_pointer_d_1_sqmuxa_2 ), .C(
        \CORESPI_0/USPI/UTXF/rd_pointer_q[1]_net_1 ), .Y(
        \CORESPI_0/USPI/UTXF/I_10_0 ));
    AO1 \CORESPI_0/USPI/UCC/stxs_state_RNIBT1H1  (.A(
        \CORESPI_0/USPI/UCC/un1_stxs_bitsel_1 ), .B(
        \CORESPI_0/USPI/UCC/stxs_state_net_1 ), .C(
        \CORESPI_0/USPI/UCC/un1_stxs_strobetx14_2 ), .Y(
        \CORESPI_0/USPI/UCC/un1_stxs_datareg_2_sqmuxa ));
    AO1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I28_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N225 ), .B(
        \COREABC_0/un33_ZREGISTER.N229 ), .C(
        \COREABC_0/un33_ZREGISTER.N228 ), .Y(
        \COREABC_0/un33_ZREGISTER.N263 ));
    XA1 \COREABC_0/un1_ACCUMULATOR_un1_ACCUMULATOR_m[4]  (.A(
        \COREABC_0/un1_ACCUMULATOR.N304 ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I110_Y_0 ), .C(
        \COREABC_0/un1_ACCUM_NEXT9_1 ), .Y(
        \COREABC_0/un1_ACCUMULATOR_m[4] ));
    IOPAD_IN_U \Power_Down_pad/U0/U0  (.PAD(Power_Down), .Y(
        \Power_Down_pad/U0/NET1 ));
    DFN1E1C0 \CORESPI_0/USPI/UCC/msrxs_datain[0]  (.D(
        \CORESPI_0/USPI/UCC/spi_di_mux ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(
        \CORESPI_0/USPI/UCC/msrxs_datain_0_sqmuxa_1 ), .Q(
        \CORESPI_0/USPI/rx_fifo_data_in[0] ));
    INV \COREABC_0/URAM.UR/UG3.UR_xhdl12/WEBUBBLEA  (.A(
        \COREABC_0/STBRAM_net_1 ), .Y(
        \COREABC_0/URAM.UR/UG3.UR_xhdl12/WEAP ));
    NOR2B \CoreTimer_0/PreScale_RNITC91[1]  (.A(
        \CoreTimer_0/PreScale[1]_net_1 ), .B(
        \CoreTimer_0/PreScale[0]_net_1 ), .Y(\CoreTimer_0/PreScale_c1 )
        );
    DFN1C0 \COREABC_0/ZREGISTER[5]/U1  (.D(\COREABC_0/ZREGISTER[5]/Y ), 
        .CLK(GLA), .CLR(\COREABC_0/genblk2.RSTSYNC2_2_net_1 ), .Q(
        \COREABC_0/ZREGISTER[5] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_ACCUM_NEG  (.A(
        \COREABC_0/STD_ACCUM_NEG ), .B(\COREABC_0/ISR_ACCUM_NEG ), .S(
        INTACT), .Y(\COREABC_0/ACCUM_NEG ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_to_logic18  (.A(
        \COREABC_0/STBFLAG_net_1 ), .B(INTACT), .Y(
        \COREABC_0/to_logic18 ));
    AO1 \CoreTimer_0/iPRDATA_RNO_1[2]  (.A(
        \CoreTimer_0/TimerPre[2]_net_1 ), .B(
        \CoreTimer_0/DataOut_3_sqmuxa_net_1 ), .C(
        \CoreTimer_0/CtrlReg_m[2] ), .Y(
        \CoreTimer_0/PrdataNext_1_0_iv_0[2] ));
    DFN1C0 \COREABC_0/ZREGISTER[10]/U1  (.D(
        \COREABC_0/ZREGISTER[10]/Y ), .CLK(GLA), .CLR(
        \COREABC_0/genblk2.RSTSYNC2_1_net_1 ), .Q(
        \COREABC_0/ZREGISTER[10] ));
    DFN1E1P0 \CORESPI_0/USPI/UCC/mtx_bitsel[1]  (.D(
        \CORESPI_0/USPI/UCC/N_602 ), .CLK(GLA), .PRE(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/UCC/mtx_bitsele ), .Q(
        \CORESPI_0/USPI/UCC/mtx_bitsel[1]_net_1 ));
    DFN1P0 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[0]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_ns[0] ), .CLK(GLA), 
        .PRE(COREABC_0_PRESETN_0), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[0]_net_1 ));
    NOR3C \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I61_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N223 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N220 ), .C(
        \COREABC_0/un1_ACCUMULATOR.N272 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N299 ));
    DFN1E1 \CORESPI_0/USPI/URXF/fifo_mem_q_fifo_mem_q_ram2_[1]  (.D(
        \CORESPI_0/USPI/rx_fifo_data_in[0] ), .CLK(GLA), .E(
        \CORESPI_0/USPI/URXF/awe2 ), .Q(\CORESPI_0/USPI/URXF/ram2_1 ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I1_P0N_a0  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I1_P0N_a0_0 ), .B(
        \COREABC_0/r_m1_N_6_mux ), .Y(
        \COREABC_0/ADD_16x16_fast_I1_P0N_a0 ));
    DFN1E0C0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il[2]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il_n2 ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_130_mux ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il[2]_net_1 ));
    NOR3A 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0_RNI5TJ11[10]  
        (.A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTOOI4_11_2 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[8] ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[10] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTOOI4_11 ));
    DFN1C0 \COREABC_0/ZREGISTER[0]/U1  (.D(\COREABC_0/ZREGISTER[0]/Y ), 
        .CLK(GLA), .CLR(\COREABC_0/genblk2.RSTSYNC2_2_net_1 ), .Q(
        \COREABC_0/ZREGISTER[0] ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIGLB2K  (.A(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[2] ), .B(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_2[2] ), .C(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_3[2] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[2] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m121_0  (.A(\COREABC_0/i11_mux_1 ), 
        .B(\COREABC_0/N_281_mux ), .S(\COREABC_0/SMADDR_1[1] ), .Y(
        \COREABC_0/i9_mux_1_0 ));
    DFN1C0 \COREABC_0/ACCUMULATOR[5]/U1  (.D(
        \COREABC_0/ACCUMULATOR[5]/Y ), .CLK(GLA), .CLR(
        \COREABC_0/genblk2.RSTSYNC2_0_net_1 ), .Q(
        \COREABC_0/ACCUMULATOR[5] ));
    XOR2 \COREABC_0/un37_SMADDR_I_9  (.A(\COREABC_0/un37_SMADDR.N_10 ), 
        .B(\COREABC_0/SMADDR[3] ), .Y(\COREABC_0/I_9 ));
    NOR2B \CORESPI_0/USPI/UCC/mtx_bitsel_RNIQJ9E1[3]  (.A(
        \CORESPI_0/USPI/UCC/N_92 ), .B(\CORESPI_0/USPI/UCC/N_476_2 ), 
        .Y(\CORESPI_0/USPI/UCC/N_97_2 ));
    NOR3C \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_RNII49F8[0]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_558_tz ), .B(
        \CoreUARTapb_0/CUARTI1OI[0] ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO08 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_RNII49F8[0]_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m155  (.A(\COREABC_0/N_151_0 ), .B(
        \COREABC_0/N_155_0 ), .S(\COREABC_0/SMADDR_0[5] ), .Y(
        \COREABC_0/N_156 ));
    DFN1E0C0 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTIl0l[3]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTI1I[3] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_159 ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTIl0l[3]_net_1 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I47_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N254 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N258 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N285 ));
    AX1B \COREABC_0/ACCUMULATOR_RNIGS2K54[15]  (.A(
        \COREABC_0/un1_ACCUMULATOR.I92_un1_Y ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I92_Y_2 ), .C(
        \COREABC_0/r_m1_0 ), .Y(
        \COREABC_0/ACCUMULATOR_RNIGS2K54[15]_net_1 ));
    DFN1E1C0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl[3]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_44 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTlOlI/CUARTIl ), 
        .Q(\CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl[3]_net_1 ));
    MX2 \CORESPI_0/USPI/UCC/stxs_bitcnt[3]/U0  (.A(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[3] ), .B(
        \CORESPI_0/USPI/UCC/stxs_bitcnt_n3 ), .S(
        \CORESPI_0/USPI/UCC/clock_rx_fe ), .Y(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[3]/Y ));
    XNOR2 \COREABC_0/un1_ACCUMULATOR_ADD_m1_4  (.A(
        \COREABC_0/RAMRDATA[2] ), .B(
        \COREABC_0/UROM.INSTR_DATA[2]_net_1 ), .Y(\COREABC_0/ADD_m1_4 )
        );
    MX2 \COREABC_0/un1_ACCUMULATOR_SMADDR_21[5]  (.A(\COREABC_0/N_441 )
        , .B(\COREABC_0/N_428 ), .S(\COREABC_0/SMADDR_0_sqmuxa_1 ), .Y(
        \COREABC_0/SMADDR_21[5] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m233_0  (.A(\COREABC_0/N_233 ), .B(
        \COREABC_0/N_22_1 ), .S(\COREABC_0/SMADDR[2] ), .Y(
        \COREABC_0/N_234_0 ));
    AO1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I84_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N297 ), .B(
        \COREABC_0/un33_ZREGISTER.N304 ), .C(
        \COREABC_0/un33_ZREGISTER.N296 ), .Y(
        \COREABC_0/un33_ZREGISTER.N362 ));
    NOR3B \CORESPI_0/USPI/URXF/fifo_mem_q_awe2  (.A(
        \CORESPI_0/USPI/URXF/wr_pointer_q[1]_net_1 ), .B(
        \CORESPI_0/USPI/URXF/fifo_mem_d[3]_0_sqmuxa ), .C(
        \CORESPI_0/USPI/URXF/wr_pointer_q[0]_net_1 ), .Y(
        \CORESPI_0/USPI/URXF/awe2 ));
    DFN1C0 \COREABC_0/ACCUMULATOR[0]/U1  (.D(
        \COREABC_0/ACCUMULATOR[0]/Y ), .CLK(GLA), .CLR(
        \COREABC_0/genblk2.RSTSYNC2_0_net_1 ), .Q(
        \COREABC_0/ACCUMULATOR[0] ));
    XOR2 \CORESPI_0/USPI/UTXF/un1_counter_q_0_I_13  (.A(
        \CORESPI_0/USPI/UTXF/counter_q[4]_net_1 ), .B(
        \CORESPI_0/USPI/UTXF/counter_d_0_sqmuxa_0 ), .Y(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_pog_array_0_3[0] ));
    NOR2A \CoreTimer_0/Count_RNIIHQT5[18]  (.A(\CoreTimer_0/N_18_0 ), 
        .B(\CoreTimer_0/Count[18]_net_1 ), .Y(\CoreTimer_0/N_19_0 ));
    AO1A \COREABC_0/un1_ACCUMULATOR_ADD_m3_i_0  (.A(
        \COREABC_0/r_m1_N_6_mux_0 ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_m3_i_a3_1_0 ), .C(
        \COREABC_0/ACCUMULATOR[12] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_4_10 ));
    DFN1P0 \CoreTimer_0/iPRDATA[1]  (.D(\CoreTimer_0/PrdataNext_1[1] ), 
        .CLK(GLA), .PRE(COREABC_0_PRESETN_0), .Q(
        \CoreAPB3_0_APBmslave0_PRDATA_i_0[1] ));
    XA1B \CoreTimer_0/PreScale_RNO[2]  (.A(
        \CoreTimer_0/PreScale[2]_net_1 ), .B(\CoreTimer_0/PreScale_c1 )
        , .C(\CoreTimer_0/PreScale8 ), .Y(\CoreTimer_0/PreScale_n2 ));
    OR3 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/un3_CUARTO0_I_27  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/DWACT_FDEC_E[4] ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[8] ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[9] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_4 ));
    AX1 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I113_Y_0  (.A(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_0 ), .B(
        \COREABC_0/ACCUM_IN[7] ), .C(\COREABC_0/ACCUMULATOR[7] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I113_Y_0 ));
    NOR2A \CORESPI_0/USPI/UCC/stxp_lastframe_RNO  (.A(
        \CORESPI_0/USPI/tx_fifo_last_out ), .B(
        \CORESPI_0.USPI.SPIMODE ), .Y(
        \CORESPI_0/USPI/UCC/stxp_lastframe_5 ));
    DFN1E1C0 \CORESPI_0/USPI/URF/cfg_ssel[7]  (.D(
        \COREABC_0_APB3master_PWDATA[7] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/URF/N_119 ), .Q(
        \CORESPI_0/USPI/URF/cfg_ssel[7]_net_1 ));
    DFN1C1 \CORESPI_0/USPI/UCC/stxs_bitcnt[1]/U1  (.D(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[1]/Y ), .CLK(GLA), .CLR(
        \CORESPI_0/USPI/UCC/ssel_rx_q2_RNIBQH6_net_1 ), .Q(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[1] ));
    NOR2B \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTOOll_RNISA1M  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTOOll_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTIl ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI01_0_sqmuxa ));
    OA1 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNI87UP1  (.A(
        \COREABC_0/ACCUMULATOR[8] ), .B(\COREABC_0/ACCUM_IN[8] ), .C(
        \COREABC_0/ALUOUT_2_sqmuxa ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_4_m[8] ));
    DFN1E1C0 \CoreTimer_0/CtrlReg[2]  (.D(
        \COREABC_0_APB3master_PWDATA[2] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreTimer_0/CtrlEn_net_1 ), .Q(
        \CoreTimer_0/CtrlReg[2]_net_1 ));
    NOR2A \CORESPI_0/USPI/UCC/mtx_state_RNO_0[2]  (.A(
        \CORESPI_0/USPI/UCC/N_604_i_0 ), .B(
        \CORESPI_0/USPI/UCC/spi_clk_tick_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/mtx_state_ns_i_i_a2_0_0[2] ));
    MX2 \CORESPI_0/USPI/UCC/stxs_checkorun/U0  (.A(
        \CORESPI_0/USPI/UCC/stxs_checkorun ), .B(
        \CORESPI_0/USPI/UCC/stxs_checkorun_5_iv ), .S(
        \CORESPI_0/USPI/UCC/clock_rx_fe ), .Y(
        \CORESPI_0/USPI/UCC/stxs_checkorun/Y ));
    NOR2B \CORESPI_0/USPI/UCC/spi_clk_count_RNIVO56[1]  (.A(
        \CORESPI_0/USPI/UCC/spi_clk_count[1]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/spi_clk_count[0]_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/spi_clk_count_c1 ));
    DFN1C0 \CORESPI_0/USPI/URXF/counter_q[0]  (.D(
        \CORESPI_0/USPI/URXF/N_13 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/URXF/counter_q[0]_net_1 ));
    MX2 \COREABC_0/STKPTR[0]/U0  (.A(\COREABC_0/STKPTR[0] ), .B(
        \COREABC_0/N_1213 ), .S(\COREABC_0/STKPTRe ), .Y(
        \COREABC_0/STKPTR[0]/Y ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m112  (.A(
        \COREABC_0_APB3master_PWDATA[11] ), .B(
        \COREABC_0/un33_ZREGISTER[11] ), .S(
        \COREABC_0/UROM.INSTR_SCMD_0[0]_net_1 ), .Y(\COREABC_0/N_113 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I84_un1_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N297 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N304 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.I84_un1_Y ));
    IOIN_IB \SYSCLK_pad/U0/U1  (.YIN(\SYSCLK_pad/U0/NET1 ), .Y(
        SYSCLK_c));
    NOR2B 
        \COREABC_0/un1_ACCUMULATOR_xhdl_41.xhdl_40_l4.un17_flagvalue  
        (.A(CoreUARTapb_0_TXRDY), .B(
        \COREABC_0/UROM.INSTR_DATA[4]_net_1 ), .Y(
        \COREABC_0/xhdl_41.xhdl_40_l4.un17_flagvalue ));
    AO1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I22_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N234 ), .B(
        \COREABC_0/un33_ZREGISTER.N238 ), .C(
        \COREABC_0/un33_ZREGISTER.N237 ), .Y(
        \COREABC_0/un33_ZREGISTER.N257 ));
    DFN1C0 \CORESPI_0/USPI/UCC/SYNC3_msrxp_pktsel  (.D(
        \CORESPI_0/USPI/UCC/un1_sresetn_4_i ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/SYNC3_msrxp_pktsel_net_1 ));
    AOI1B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_0[0]  (.A(
        \CORESPI_0.USPI.cfg_cmdsize[0] ), .B(
        \CORESPI_0.USPI.URF.control17 ), .C(
        \COREABC_0_APB3master_PADDR[13] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_0[0]_net_1 ));
    NOR3B \CORESPI_0/USPI/URF/int_raw_RNISE09[3]  (.A(
        \CORESPI_0/USPI/URF/int_raw[3]_net_1 ), .B(
        \CORESPI_0.USPI.URF.N_125 ), .C(
        \COREABC_0_APB3master_PADDR[2] ), .Y(
        \CORESPI_0/USPI/URF/int_m1_e_0_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m207_0  (.A(\COREABC_0/N_207_0 ), 
        .B(\COREABC_0/N_164_0 ), .S(\COREABC_0/SMADDR_1[1] ), .Y(
        \COREABC_0/N_208_0 ));
    DFN1C1 \CORESPI_0/USPI/UCC/stxs_midbit/U1  (.D(
        \CORESPI_0/USPI/UCC/stxs_midbit/Y ), .CLK(GLA), .CLR(
        \CORESPI_0/USPI/UCC/ssel_rx_q2_RNIBQH6_net_1 ), .Q(
        \CORESPI_0/USPI/UCC/stxs_midbit ));
    NOR2A \CORESPI_0/USPI/UCC/mtx_bitsel_RNIB3SP1[4]  (.A(
        \CORESPI_0/USPI/UCC/N_476_2 ), .B(\CORESPI_0/USPI/UCC/N_23 ), 
        .Y(\CORESPI_0/USPI/UCC/txfifo_dhold_dec[0] ));
    OR2A \CoreTimer_0/Count_RNO_0[31]  (.A(\CoreTimer_0/N_31_0 ), .B(
        \CoreTimer_0/Count[30]_net_1 ), .Y(\CoreTimer_0/Count_66_0 ));
    DFN1 \COREABC_0/UROM.INSTR_ADDR[1]  (.D(
        \COREABC_0/INSTRUCTION[11] ), .CLK(GLA), .Q(
        \COREABC_0/UROM.INSTR_ADDR[1]_net_1 ));
    XOR2 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I117_Y_0  (.A(
        \COREABC_0/ACCUMULATOR[11] ), .B(\COREABC_0/un5[11] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I117_Y_0 ));
    DFN1E1P0 \CORESPI_0/USPI/URF/CLK_DIV[0]  (.D(
        \COREABC_0_APB3master_PWDATA[0] ), .CLK(GLA), .PRE(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/URF/N_120 ), .Q(
        \CORESPI_0/USPI/clk_div_val[0] ));
    DFN1E1C0 \CORESPI_0/USPI/URF/control1[7]  (.D(
        \COREABC_0_APB3master_PWDATA[7] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/URF/N_118 ), .Q(
        \CORESPI_0/USPI/URF/control1[7]_net_1 ));
    XNOR2 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/un3_CUARTO0_I_5  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[0] ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[1] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/I_5 ));
    NOR2A 
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTIlOl_RNO_1  
        (.A(\CoreUARTapb_0/CUARTlOlI/CUARTlOl[1] ), .B(
        \CoreUARTapb_0/PARITY_ERR ), .Y(
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTOIl_1[1] )
        );
    MX2B \CoreUARTapb_0/CUARTOOII_RNO[4]  (.A(\CoreUARTapb_0/N_62_0 ), 
        .B(\CoreUARTapb_0/i24_i ), .S(
        \COREABC_0_APB3master_PADDR_0[3] ), .Y(\CoreUARTapb_0/N_64_0 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m146_0  (.A(\COREABC_0/N_11_1 ), .B(
        \COREABC_0/N_144 ), .S(\COREABC_0/SMADDR_1[2] ), .Y(
        \COREABC_0/N_147_0 ));
    DFN1E0C0 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTIl0l[5]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTI1I[5] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_159 ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTIl0l[5]_net_1 ));
    NOR2A \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0_RNITI1T_0[0]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0[0]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0[1]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0_239_d ));
    MX2 \COREABC_0/ZREGISTER[15]/U0  (.A(\COREABC_0/ZREGISTER_26[15] ), 
        .B(\COREABC_0/ZREGISTER[15] ), .S(\COREABC_0/un1_ICYCLE_4 ), 
        .Y(\COREABC_0/ZREGISTER[15]/Y ));
    MX2C \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I2_P0N_0  (.A(
        \COREABC_0/d_N_5_mux_4 ), .B(
        \COREABC_0/Ram256x16_R0C0_RNI8F5K2 ), .S(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_5_mux_6 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N211 ));
    DFN1C0 \COREABC_0/ISR_ACCUM_NEG/U1  (.D(
        \COREABC_0/ISR_ACCUM_NEG/Y ), .CLK(GLA), .CLR(
        \COREABC_0/genblk2.RSTSYNC2_2_net_1 ), .Q(
        \COREABC_0/ISR_ACCUM_NEG ));
    NOR2B \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I51_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N258 ), .B(
        \COREABC_0/un33_ZREGISTER.N262 ), .Y(
        \COREABC_0/un33_ZREGISTER.N289 ));
    AO1 \CoreTimer_0/iPRDATA_RNO[14]  (.A(
        \CoreTimer_0/Count[14]_net_1 ), .B(
        \CoreTimer_0/DataOut_1_sqmuxa_net_1 ), .C(
        \CoreTimer_0/Load_m[14] ), .Y(\CoreTimer_0/PrdataNext_1[14] ));
    XA1C \CORESPI_0/USPI/URXF/un1_counter_q_m_i_a3_0[2]  (.A(
        \CORESPI_0/USPI/URXF/counter_q[2]_net_1 ), .B(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_1[0] ), .C(
        \CORESPI_0/USPI/rx_fifo_read ), .Y(\CORESPI_0/USPI/URXF/N_63 ));
    DFN1E1C0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl[2]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_49 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTlOlI/CUARTIl ), 
        .Q(\CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl[2]_net_1 ));
    XOR2 \CORESPI_0/USPI/URXF/un1_counter_q_1_I_11  (.A(
        \CORESPI_0/USPI/URXF/counter_q[3]_net_1 ), .B(
        \CORESPI_0/USPI/URXF/counter_d_0_sqmuxa_2 ), .Y(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_pog_array_0_2[0] ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNID7E9P  (.A(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_2[0] ), .B(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[0] ), .C(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[0] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_6[0] ));
    AX1D \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I116_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.I80_un1_Y ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I97_Y_0 ), .C(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I116_Y_0 ), .Y(
        \COREABC_0/un1_ACCUMULATOR[10] ));
    DFN1P0 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTOl0l  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO0l_i ), .CLK(GLA), .PRE(
        COREABC_0_PRESETN_0), .Q(CoreUARTapb_0_TXRDY));
    MX2C \CoreUARTapb_0/CUARTOOII_RNO_1[6]  (.A(
        \CoreUARTapb_0/CUARTl0OI[6]_net_1 ), .B(
        \CoreUARTapb_0/CUARTO1OI[6]_net_1 ), .S(
        \COREABC_0_APB3master_PADDR[2] ), .Y(\CoreUARTapb_0/i26_i ));
    MX2C \CoreUARTapb_0/CUARTOOII_RNO_1[7]  (.A(
        \CoreUARTapb_0/CUARTl0OI[7]_net_1 ), .B(
        \CoreUARTapb_0/CUARTO1OI[7]_net_1 ), .S(
        \COREABC_0_APB3master_PADDR[2] ), .Y(\CoreUARTapb_0/i27_i ));
    XOR3 \CORESPI_0/USPI/URXF/un1_counter_q_1_I_26  (.A(
        \CORESPI_0/USPI/URXF/counter_q[5]_net_1 ), .B(
        \CORESPI_0/USPI/URXF/counter_d_0_sqmuxa_2 ), .C(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_12_1_0[0] ), .Y(
        \CORESPI_0/USPI/URXF/un1_counter_q1[5] ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I6_G0N_a1  (.A(
        \COREABC_0/r_m1_N_6_mux ), .B(
        \COREABC_0/UROM.INSTR_DATA[6]_net_1 ), .Y(
        \COREABC_0/ADD_16x16_fast_I6_G0N_a1 ));
    NOR3A 
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTIlOl_RNO  
        (.A(\CoreUARTapb_0/CUARTlOlI/CUARTO004 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTll0[1]_net_1 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTll0[0]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTlIOl )
        );
    NOR3C \COREABC_0/un1_ACCUMULATOR_PRDATA_M_m[12]  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[12] ), .B(
        CoreAPB3_0_APBmslave0_PSELx), .C(\COREABC_0/ICYCLE24.ICYCLE24 )
        , .Y(\COREABC_0/PRDATA_M_m[12] ));
    AOI1 \CoreTimer_0/iPRDATA_RNO[7]  (.A(\CoreTimer_0/Count[7]_net_1 )
        , .B(\CoreTimer_0/DataOut_1_sqmuxa_net_1 ), .C(
        \CoreTimer_0/Load_m[7] ), .Y(\CoreTimer_0/PrdataNext_1[7] ));
    NOR2A 
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTIlOl_RNO_2  
        (.A(\CoreUARTapb_0/CUARTlOlI/CUARTlOl[2] ), .B(
        \CoreUARTapb_0/PARITY_ERR ), .Y(
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTOIl_1[2] )
        );
    MX2 \COREABC_0/un1_ACCUMULATOR_m171_0  (.A(\COREABC_0/N_170_0 ), 
        .B(\COREABC_0/N_171_0 ), .S(\COREABC_0/SMADDR[1] ), .Y(
        \COREABC_0/N_172_0 ));
    NOR2B \CoreTimer_0/iPRDATA_RNO_5[0]  (.A(
        \CoreTimer_0/DataOut_3_sqmuxa_net_1 ), .B(
        \CoreTimer_0/TimerPre[0]_net_1 ), .Y(
        \CoreTimer_0/TimerPre_m[0] ));
    MX2 \CORESPI_0/USPI/UCC/stxs_midbit/U0  (.A(
        \CORESPI_0/USPI/UCC/stxs_midbit ), .B(
        \CORESPI_0/USPI/UCC/stxs_midbit_3 ), .S(
        \CORESPI_0/USPI/UCC/clock_rx_fe ), .Y(
        \CORESPI_0/USPI/UCC/stxs_midbit/Y ));
    OA1B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_a4[6]  (.A(
        \CORESPI_0.USPI.URF.int_masked_m[6] ), .B(
        \CORESPI_0.USPI.URF.rdata_iv_3_0[6] ), .C(
        \CORESPI_0.USPI.URF.N_62 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_a4[6]_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m142_0  (.A(\COREABC_0/N_142_0 ), 
        .B(\COREABC_0/N_16_1 ), .S(\COREABC_0/SMADDR_0[3] ), .Y(
        \COREABC_0/N_143_0 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I92_Y_1  (.A(
        \COREABC_0/un1_ACCUMULATOR.N247 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N243 ), .C(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I92_Y_0 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I92_Y_1 ));
    NOR3B \CoreTimer_0/iPRDATA_RNO_7[0]  (.A(
        \CoreTimer_0/RawTimInt_m_2_0 ), .B(
        \COREABC_0_APB3master_PADDR[2] ), .C(
        \COREABC_0_APB3master_PADDR_0[3] ), .Y(
        \CoreTimer_0/RawTimInt_m_2 ));
    NOR2B \CORESPI_0/USPI/UCC/stxs_bitcnt_RNIO1A41[2]  (.A(
        \CORESPI_0/USPI/UCC/stxs_bitcnt_c1 ), .B(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[2] ), .Y(
        \CORESPI_0/USPI/UCC/stxs_bitcnt_c2 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_RAMWDATA[2]  (.A(\COREABC_0/N_464 ), 
        .B(\COREABC_0/SMADDR_0[2] ), .S(\COREABC_0/DOISR_0 ), .Y(
        \COREABC_0/RAMWDATA[2] ));
    NOR2A \CoreTimer_0/Count_RNIB2DV[2]  (.A(\CoreTimer_0/N_67_mux ), 
        .B(\CoreTimer_0/Count[2]_net_1 ), .Y(\CoreTimer_0/N_3_0 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_PADDR_M_1[5]  (.A(
        \COREABC_0/UROM.INSTR_ADDR[5]_net_1 ), .B(
        \COREABC_0/ZREGISTER[5] ), .S(
        \COREABC_0/UROM.INSTR_SCMD[2]_net_1 ), .Y(
        \COREABC_0_APB3master_PADDR[5] ));
    MX2C \CoreUARTapb_0/CUARTOOII_RNO_1[2]  (.A(
        \CoreUARTapb_0/CUARTl0OI[2]_net_1 ), .B(
        \CoreUARTapb_0/CUARTO1OI[2]_net_1 ), .S(
        \COREABC_0_APB3master_PADDR[2] ), .Y(\CoreUARTapb_0/i22_i ));
    NOR2 \CoreTimer_0/Count_RNI1EVI[26]  (.A(
        \CoreTimer_0/Count[26]_net_1 ), .B(
        \CoreTimer_0/Count[27]_net_1 ), .Y(\CoreTimer_0/m32_m6_e_3 ));
    NOR3C \CORESPI_0/USPI/URF/control1_RNIML8M[5]  (.A(
        \CORESPI_0/USPI/URF/int_raw[3]_net_1 ), .B(
        \CORESPI_0/USPI/URF/control1[5]_net_1 ), .C(
        \CORESPI_0.USPI.URF.N_126 ), .Y(
        \CORESPI_0/USPI/URF/int_masked_m[3] ));
    AO1 \CoreTimer_0/CountPulse_RNO_5  (.A(
        \CoreTimer_0/NextCountPulse_0_sqmuxa_6_2_1 ), .B(
        \CoreTimer_0/NextCountPulse_0_sqmuxa_5_3 ), .C(
        \CoreTimer_0/N_560_tz ), .Y(\CoreTimer_0/N_563_tz ));
    OR3 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/un3_CUARTO0_I_31  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/DWACT_FDEC_E[6] ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[9] ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[10] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_3 ));
    AO1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I85_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N299 ), .B(
        \COREABC_0/un33_ZREGISTER.N306 ), .C(
        \COREABC_0/un33_ZREGISTER.N298 ), .Y(
        \COREABC_0/un33_ZREGISTER.N365 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_xhdl_41.flagvalue  (.A(
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.xhdl_40_l3.un13_flagvalue_14 )
        , .B(
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.xhdl_40_l3.un13_flagvalue_13 )
        , .C(\COREABC_0/un1_ACCUMULATOR.xhdl_41.flagvalue_5 ), .Y(
        \COREABC_0/xhdl_41.flagvalue ));
    NOR3C \CORESPI_0/USPI/URF/int_raw_RNO_0[4]  (.A(
        \CoreTimer_0.DataOut_1_sqmuxa_2 ), .B(
        \CORESPI_0/USPI/URF/int_raw_27_i_a2_0_0[7]_net_1 ), .C(
        \COREABC_0_APB3master_PWDATA[4] ), .Y(
        \CORESPI_0/USPI/URF/N_85 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m256  (.A(\COREABC_0/N_256_0 ), .B(
        \COREABC_0/N_17_1 ), .S(\COREABC_0/SMADDR_0[2] ), .Y(
        \COREABC_0/N_257 ));
    AO1A \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I8_P0N  (.A(
        \COREABC_0/r_m1_N_6_mux_0 ), .B(
        \COREABC_0/un1_ACCUMULATOR.un1_m1_e_0_0 ), .C(
        \COREABC_0/ACCUMULATOR[8] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N229 ));
    MX2 \CORESPI_0/USPI/UCC/stxs_datareg[0]/U0  (.A(
        \CORESPI_0/USPI/UCC/stxs_datareg_10[0] ), .B(
        \CORESPI_0/USPI/UCC/stxs_datareg[0] ), .S(
        \CORESPI_0/USPI/UCC/stxs_datareg_1_sqmuxa_2 ), .Y(
        \CORESPI_0/USPI/UCC/stxs_datareg[0]/Y ));
    NOR2B \CORESPI_0/USPI/URF/int_raw_RNITTNE[5]  (.A(
        \CORESPI_0/USPI/URF/int_raw[5]_net_1 ), .B(
        \CORESPI_0.USPI.URF.rdata53 ), .Y(
        \CORESPI_0/USPI/URF/int_raw_m[5] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m94_0  (.A(\COREABC_0/N_91_0 ), .B(
        \COREABC_0/N_94 ), .S(\COREABC_0/SMADDR_0[0] ), .Y(
        \COREABC_0/INSTRUCTION[7] ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_m16_0  (.A(\COREABC_0/N_16_1 ), 
        .B(\COREABC_0/SMADDR[3] ), .Y(\COREABC_0/N_17_1 ));
    DFN1C0 \CORESPI_0/USPI/URF/int_raw[2]  (.D(
        \CORESPI_0/USPI/URF/int_raw_36[2] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(\CORESPI_0.USPI.URF.int_raw[2] ));
    NOR3B \CORESPI_0/USPI/URF/control1_RNIPPPO[3]  (.A(
        \CORESPI_0/USPI/URF/rdata_0_iv_4_0[3] ), .B(
        \CoreTimer_0.DataOut_1_sqmuxa_2 ), .C(
        \COREABC_0_APB3master_PADDR[2] ), .Y(
        \CORESPI_0.USPI.URF.rdata_0_iv_3[3] ));
    NOR3B \CORESPI_0/USPI/UCON/un1_PADDR  (.A(
        \COREABC_0_APB3master_PADDR[3] ), .B(
        \CORESPI_0/USPI/UCON/un1_PADDR_1_net_1 ), .C(
        \COREABC_0_APB3master_PADDR[2] ), .Y(
        \CORESPI_0.USPI.un1_PADDR ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ACCUM_IN[13]  (.A(
        \COREABC_0/RAMRDATA[13] ), .B(\COREABC_0/un7_MUXIR[0] ), .Y(
        \COREABC_0/ACCUM_IN[13] ));
    DFN1C0 \CORESPI_0/USPI/URF/control2[7]  (.D(
        \CORESPI_0/USPI/URF/N_22 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/URF/control2[7]_net_1 ));
    DFN1C0 \COREABC_0/ACCUMULATOR[12]/U1  (.D(
        \COREABC_0/ACCUMULATOR[12]/Y ), .CLK(GLA), .CLR(PRESETN), .Q(
        \COREABC_0/ACCUMULATOR[12] ));
    NOR3A \CORESPI_0/USPI/UCC/stxs_bitcnt_RNIQ3A41[4]  (.A(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[0] ), .B(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[4] ), .C(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[1] ), .Y(
        \CORESPI_0/USPI/UCC/stxs_midbit_2_1 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ACCUM_IN[11]  (.A(
        \COREABC_0/RAMRDATA[11] ), .B(\COREABC_0/un7_MUXIR[0] ), .Y(
        \COREABC_0/ACCUM_IN[11] ));
    NOR3B \CORESPI_0/USPI/URF/control1_RNIO9RL[2]  (.A(
        \CORESPI_0.USPI.URF.N_127 ), .B(
        \CORESPI_0/USPI/URF/control1[2]_net_1 ), .C(
        \CORESPI_0/USPI/URF/N_61 ), .Y(
        \CORESPI_0.USPI.URF.control1_m[2] ));
    MX2 \CORESPI_0/USPI/URF/control2_RNO[6]  (.A(
        \COREABC_0_APB3master_PWDATA[6] ), .B(
        \CORESPI_0/USPI/URF/control2[6]_net_1 ), .S(
        \CORESPI_0/USPI/URF/N_67 ), .Y(\CORESPI_0/USPI/URF/N_24 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m253_0  (.A(\COREABC_0/N_152_0 ), 
        .B(\COREABC_0/N_230_0 ), .S(\COREABC_0/SMADDR_0[1] ), .Y(
        \COREABC_0/N_254_0 ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_m118_0  (.A(\COREABC_0/N_30_1 ), 
        .B(\COREABC_0/SMADDR[5] ), .Y(\COREABC_0/i11_mux_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m269  (.A(\COREABC_0/I_17 ), .B(
        \COREABC_0_APB3master_PWDATA[6] ), .S(
        \COREABC_0/URAM.un1_UROM.INSTR_SLOT ), .Y(\COREABC_0/N_270_0 ));
    OR2 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_RNID0JS[1]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1[1]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1[2]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/un1_CUARTO1 ));
    AO1A \CORESPI_0/USPI/UCC/mtx_rxbusy_RNO  (.A(
        \CORESPI_0/USPI/UCC/N_604_i_0 ), .B(
        \CORESPI_0/USPI/UCC/mtx_busy_net_1 ), .C(
        \CORESPI_0/USPI/UCC/N_62 ), .Y(\CORESPI_0/USPI/UCC/N_39 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m241  (.A(\COREABC_0/N_241 ), .B(
        \COREABC_0/N_27_1 ), .S(\COREABC_0/SMADDR_0[1] ), .Y(
        \COREABC_0/N_242 ));
    DFN1E0C0 \CoreUARTapb_0/CUARTlOlI/CUARTIOl[1]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTl1I[1] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTlOlI/CUARTIOl4 ), 
        .Q(\CoreUARTapb_0/CUARTlOlI/CUARTIOl[1]_net_1 ));
    OAI1 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl_RNIRL183[3]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_123 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_28_i ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTIl ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_130_mux ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_PRDATA_M_m[5]  (.A(N_17), .B(
        \COREABC_0/ICYCLE24.ICYCLE24 ), .Y(\COREABC_0/PRDATA_M_m[5] ));
    XA1 \COREABC_0/un1_ACCUMULATOR_m201  (.A(\COREABC_0/SMADDR_0[3] ), 
        .B(\COREABC_0/SMADDR_0[2] ), .C(\COREABC_0/N_16_1 ), .Y(
        \COREABC_0/N_202 ));
    NOR3A \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_RNI8PJK1[0]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTI00l20_i_a3_0_a2_0 ), 
        .B(\CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[0]_net_1 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTll ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_167 ));
    OA1 \COREABC_0/un1_ACCUMULATOR_STKPTR_2_sqmuxa  (.A(
        \COREABC_0/ISR_1_sqmuxa_1 ), .B(\COREABC_0/STBRAM_5_sqmuxa ), 
        .C(\COREABC_0/N_493_1 ), .Y(\COREABC_0/STKPTR_2_sqmuxa ));
    AND2 \CORESPI_0/USPI/UTXF/un1_counter_q_0_I_1  (.A(
        \CORESPI_0/USPI/UTXF/counter_q[0]_net_1 ), .B(
        \CORESPI_0/USPI/UTXF/counter_d_0_sqmuxa_0 ), .Y(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_TMP_2[0] ));
    MX2 \CoreUARTapb_0/CUARTOOII_RNO_0[3]  (.A(\CoreUARTapb_0/N_65_0 ), 
        .B(\CoreUARTapb_0/N_66_0 ), .S(\COREABC_0_APB3master_PADDR[4] )
        , .Y(\CoreUARTapb_0/N_67_0 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIQ0I26  (.A(
        \COREABC_0/xhdl_31.ALUOUT_5[13] ), .B(
        \COREABC_0/ALUOUT_3_sqmuxa ), .C(
        \COREABC_0/xhdl_31.ALUOUT_4_m[13] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_2[13] ));
    DFN1 \CoreUARTapb_0/CUARTlOlI/genblk2.CUARTl11/CUARTOOOI[5]  (.D(
        \CoreUARTapb_0/CUARTlOlI/genblk2.CUARTl11/CUARTl00I[5] ), .CLK(
        GLA), .Q(\CoreUARTapb_0/CUARTlOlI/CUARTI1I[5] ));
    NOR3C \CORESPI_0/USPI/URF/int_raw_RNINOBN[4]  (.A(
        \CORESPI_0/USPI/URF/control2[4]_net_1 ), .B(
        \CORESPI_0.USPI.URF.int_raw[4] ), .C(
        \CORESPI_0.USPI.URF.N_126 ), .Y(
        \CORESPI_0/USPI/URF/int_masked_m[4] ));
    MX2C \COREABC_0/un1_ACCUMULATOR_m65  (.A(\COREABC_0/I_28 ), .B(
        \COREABC_0/N_65_0 ), .S(\COREABC_0/DOJMP ), .Y(
        \COREABC_0/N_66 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_m90_0  (.A(\COREABC_0/N_90_0 ), 
        .B(\COREABC_0/SMADDR[5] ), .Y(\COREABC_0/N_91_0 ));
    NOR2A 
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTIlOl_RNO_0  
        (.A(\CoreUARTapb_0/CUARTlOlI/CUARTlOl[0] ), .B(
        \CoreUARTapb_0/PARITY_ERR ), .Y(
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTOIl_1[0] )
        );
    XA1 \COREABC_0/un1_ACCUMULATOR_xhdl_31.ALUOUT_5_m[8]  (.A(
        \COREABC_0/ACCUMULATOR[8] ), .B(\COREABC_0/ACCUM_IN[8] ), .C(
        \COREABC_0/ALUOUT_3_sqmuxa ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_5_m[8] ));
    DFN1C0 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[5]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_ns[5] ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[5]_net_1 ));
    DFN1 \COREABC_0/UROM.INSTR_CMD[0]  (.D(\COREABC_0/m260_0 ), .CLK(
        GLA), .Q(\COREABC_0/UROM.INSTR_CMD[0]_net_1 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_m29_0  (.A(\COREABC_0/N_14_1 ), 
        .B(\COREABC_0/SMADDR[2] ), .Y(\COREABC_0/N_30_1 ));
    MX2A \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I17_Y_0  (.A(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_0 ), .B(
        \COREABC_0/d_N_3_mux_0 ), .S(\COREABC_0/ADD_m5_i ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N252 ));
    NOR3B \CORESPI_0/USPI/URF/control19_m1_e  (.A(
        \COREABC_0_APB3master_PADDR[5] ), .B(
        \COREABC_0_APB3master_PADDR[2] ), .C(
        \COREABC_0_APB3master_PADDR[6] ), .Y(
        \CORESPI_0.USPI.URF.control110_0_a2_0 ));
    DFN1C0 \CoreTimer_0/PreScale[2]  (.D(\CoreTimer_0/PreScale_n2 ), 
        .CLK(GLA), .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreTimer_0/PreScale[2]_net_1 ));
    NOR3A \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNI8OQVJG  (.A(
        \COREABC_0/un1_ACCUMULATOR.to_logic_2.tmp_6_7[0] ), .B(
        \COREABC_0/ACCUM_NEXT[12] ), .C(\COREABC_0/ACCUM_NEXT[9] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.to_logic_2.tmp_6_11[0] ));
    NOR3C \CoreTimer_0/iPRDATA_RNO_2[1]  (.A(
        \CoreTimer_0/PrdataNextEn_net_1 ), .B(
        \CORESPI_0.USPI.URF.N_127 ), .C(\CoreTimer_0/Load[1]_net_1 ), 
        .Y(\CoreTimer_0/Load_m[1] ));
    XOR2 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I116_Y_0  (.A(
        \COREABC_0/ZREGISTER[10] ), .B(
        \COREABC_0_APB3master_PWDATA[10] ), .Y(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I116_Y_0 ));
    OA1 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_RNIBJ922[0]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1[0]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/un1_CUARTO1 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTI0_0_sqmuxa_6_2_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTI0_0_sqmuxa_6_2 ));
    AO1 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2_0[0]  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA_i_0[0] ), .B(\CoreAPB3_0/N_72 ), 
        .C(\CoreAPB3_0/u_mux_p_to_b3/N_35 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2_0[0]_net_1 ));
    AOI1 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_RNO[3]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_ns_i_0_a2_0_0[3] ), 
        .B(\CoreUARTapb_0/CUARTlOlI/CUARTll ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_53 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_RNO[3]_net_1 ));
    NOR2 \CORESPI_0/USPI/URF/control1_RNISN6G[3]  (.A(
        \COREABC_0_APB3master_PADDR[6] ), .B(
        \CORESPI_0/USPI/URF/control1_RNIQUAD[3]_net_1 ), .Y(
        \CORESPI_0/USPI/URF/rdata_0_iv_4_0[3] ));
    AO1 \COREABC_0_PADDR_M_RNIGF1UA[13]  (.A(d_N_3_i_0_li), .B(
        \COREABC_0_APB3master_PADDR[13] ), .C(
        \CoreAPB3_0.u_mux_p_to_b3.PRDATA_iv_i_1[3] ), .Y(
        \COREABC_0_PADDR_M_RNIGF1UA[13]_net_1 ));
    AX1B \CoreUARTapb_0/CUARTlOlI/CUARTOO1/un3_CUARTO0_I_7  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[1] ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[0] ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[2] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/I_7 ));
    MX2 \CORESPI_0/USPI/UTXF/fifo_mem_q_fifo_mem_q_ram2__RNI9VBQ[2]  (
        .A(\CORESPI_0/USPI/UTXF/ram2_2 ), .B(
        \CORESPI_0/USPI/UTXF/ram3_2 ), .S(
        \CORESPI_0/USPI/UTXF/rd_pointer_q[0]_net_1 ), .Y(
        \CORESPI_0/USPI/UTXF/N_38_0 ));
    AX1C \CORESPI_0/USPI/URXF/un1_rd_pointer_q_I_10  (.A(
        \CORESPI_0/USPI/URXF/rd_pointer_q[0]_net_1 ), .B(
        \CORESPI_0/USPI/URXF/rd_pointer_d_1_sqmuxa_2 ), .C(
        \CORESPI_0/USPI/URXF/rd_pointer_q[1]_net_1 ), .Y(
        \CORESPI_0/USPI/URXF/I_10_2 ));
    MX2 \CORESPI_0/USPI/UCC/stxs_datareg_RNI1847[3]  (.A(
        \CORESPI_0/USPI/UCC/stxs_datareg[3] ), .B(
        \CORESPI_0/USPI/UCC/txfifo_datadelay[3]_net_1 ), .S(
        \CORESPI_0/USPI/UCC/stxs_direct ), .Y(
        \CORESPI_0/USPI/UCC/spi_data_out_iv_0_tz ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_PRDATA_M_m[3]  (.A(N_13), .B(
        \COREABC_0/ICYCLE24.ICYCLE24 ), .Y(\COREABC_0/PRDATA_M_m[3] ));
    XA1B \CoreTimer_0/Count_RNO[20]  (.A(\CoreTimer_0/Count[20]_net_1 )
        , .B(\CoreTimer_0/N_20_0 ), .C(\CoreTimer_0/un1_PreScale8 ), 
        .Y(\CoreTimer_0/N_427_i ));
    MX2 \CORESPI_0/USPI/URF/control2_RNO[1]  (.A(
        \COREABC_0_APB3master_PWDATA[0] ), .B(
        \CORESPI_0.USPI.cfg_cmdsize[0] ), .S(\CORESPI_0/USPI/URF/N_67 )
        , .Y(\CORESPI_0/USPI/URF/N_34_0 ));
    DFN1 \COREABC_0/UROM.INSTR_DATA[1]  (.D(
        \COREABC_0/INSTRUCTION[27] ), .CLK(GLA), .Q(
        \COREABC_0/UROM.INSTR_DATA[1]_net_1 ));
    DFN1 \COREABC_0/UROM.INSTR_SLOT[1]  (.D(\COREABC_0/INSTRUCTION[7] )
        , .CLK(GLA), .Q(\COREABC_0_APB3master_PADDR[13] ));
    NOR3C \COREABC_0/un1_ACCUMULATOR_ALUOUT_6_sqmuxa  (.A(
        \COREABC_0/UROM.INSTR_SCMD[1]_net_1 ), .B(
        \COREABC_0/ACCUM_NEXT9 ), .C(\COREABC_0/ALUOUT_6_sqmuxa_2 ), 
        .Y(\COREABC_0/ALUOUT_6_sqmuxa ));
    DFN1E1C0 \CORESPI_0/USPI/URF/control1[3]  (.D(
        \COREABC_0_APB3master_PWDATA[3] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/URF/N_118 ), .Q(
        \CORESPI_0/USPI/URF/control1[3]_net_1 ));
    AX1 \CoreTimer_0/Count_RNO[8]  (.A(\CoreTimer_0/un1_PreScale8_0 ), 
        .B(\CoreTimer_0/N_8_0 ), .C(\CoreTimer_0/N_214 ), .Y(
        \CoreTimer_0/N_415 ));
    NOR3C \CoreTimer_0/iPRDATA_RNO_0[6]  (.A(
        \CoreTimer_0/PrdataNextEn_net_1 ), .B(
        \CORESPI_0.USPI.URF.N_127 ), .C(\CoreTimer_0/Load[6]_net_1 ), 
        .Y(\CoreTimer_0/Load_m[6] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m44_0  (.A(\COREABC_0/N_16_1 ), .B(
        \COREABC_0/N_10_1 ), .S(\COREABC_0/SMADDR_0[3] ), .Y(
        \COREABC_0/N_45_0 ));
    NOR2 \CoreTimer_0/Count_RNIN51J[31]  (.A(
        \CoreTimer_0/Count[31]_net_1 ), .B(
        \CoreTimer_0/Count[30]_net_1 ), .Y(\CoreTimer_0/m32_0 ));
    DFN1C0 \CORESPI_0/USPI/UCC/spi_clk_count[2]  (.D(
        \CORESPI_0/USPI/UCC/spi_clk_count_n2 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/spi_clk_count[2]_net_1 ));
    NOR2A \CORESPI_0/USPI/UCC/mtx_state_RNI4QSQ1[3]  (.A(
        \CORESPI_0/USPI/UCC/N_61 ), .B(\CORESPI_0/USPI/UCC/N_23 ), .Y(
        \CORESPI_0/USPI/UCC/N_49 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m98_0  (.A(\COREABC_0/N_276_mux_0 ), 
        .B(\COREABC_0/N_46_0 ), .S(\COREABC_0/SMADDR_0[5] ), .Y(
        \COREABC_0/i11_mux_0 ));
    DFN1C0 \CORESPI_0/USPI/URF/clr_rxfifo  (.D(
        \CORESPI_0/USPI/URF/clr_rxfifo_5 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(\CORESPI_0/USPI/fiforstrx ));
    AO1A \COREABC_0/un1_ACCUMULATOR_STBACCUM_4_iv  (.A(
        \COREABC_0/UROM.INSTR_CMD[0]_net_1 ), .B(\COREABC_0/N_695 ), 
        .C(\COREABC_0/STBFLAG_2_m ), .Y(\COREABC_0/STBACCUM_4 ));
    NOR2B \CoreTimer_0/iPRDATA_RNO_1[3]  (.A(
        \CoreTimer_0/DataOut_3_sqmuxa_net_1 ), .B(
        \CoreTimer_0/TimerPre[3]_net_1 ), .Y(
        \CoreTimer_0/TimerPre_m[3] ));
    OA1A \COREABC_0/un1_ACCUMULATOR_PWDATA_M_v[4]  (.A(
        \COREABC_0/UROM.INSTR_SCMD[1]_net_1 ), .B(
        \COREABC_0/UROM.INSTR_CMD[0]_net_1 ), .C(
        \COREABC_0/ACCUMULATOR[4] ), .Y(\COREABC_0/MUX1[4] ));
    AX1C \CORESPI_0/USPI/UTXF/un1_wr_pointer_q_I_10  (.A(
        \CORESPI_0/USPI/UTXF/wr_pointer_q[0]_net_1 ), .B(
        \CORESPI_0/USPI/UTXF/wr_pointer_d_1_sqmuxa_1 ), .C(
        \CORESPI_0/USPI/UTXF/wr_pointer_q[1]_net_1 ), .Y(
        \CORESPI_0/USPI/UTXF/I_10 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m187_0  (.A(\COREABC_0/N_177 ), .B(
        \COREABC_0/N_187_0 ), .S(\COREABC_0/SMADDR_0[1] ), .Y(
        \COREABC_0/N_188 ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIP4VKD  (.A(
        \COREABC_0/xhdl_31.ALUOUT_4_m[10] ), .B(
        \COREABC_0/xhdl_31.ALUOUT_5_m[10] ), .C(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[10] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_4[10] ));
    DFN1C0 \CORESPI_0/USPI/URF/control2[6]  (.D(
        \CORESPI_0/USPI/URF/N_24 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/URF/control2[6]_net_1 ));
    NOR2A \CORESPI_0/USPI/URF/control110_0_a2_0  (.A(
        \COREABC_0_APB3master_PADDR[5] ), .B(
        \COREABC_0_APB3master_PADDR[6] ), .Y(
        \CORESPI_0.USPI.URF.N_125 ));
    MX2 \COREABC_0/SMADDR[1]/U0  (.A(\COREABC_0/SMADDR_21[1] ), .B(
        \COREABC_0/SMADDR[1] ), .S(\COREABC_0/un1_ICYCLE_6 ), .Y(
        \COREABC_0/SMADDR[1]/Y ));
    INV \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTI00l_RNO  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_ns[6] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_ns_i[6] ));
    OR2 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I5_P0N  (.A(
        \COREABC_0/ZREGISTER[5] ), .B(\COREABC_0_APB3master_PWDATA[5] )
        , .Y(\COREABC_0/un33_ZREGISTER.N220 ));
    NOR3B \CORESPI_0/USPI/URF/control1_RNIRCRL[5]  (.A(
        \CORESPI_0/USPI/URF/control1_m1_e_0 ), .B(
        \CoreTimer_0.DataOut_1_sqmuxa_2 ), .C(
        \CORESPI_0/USPI/URF/N_61 ), .Y(
        \CORESPI_0/USPI/URF/control1_m[5] ));
    DFN1E1 \CORESPI_0/USPI/UTXF/fifo_mem_q_fifo_mem_q_ram2_[2]  (.D(
        \COREABC_0_APB3master_PWDATA[1] ), .CLK(GLA), .E(
        \CORESPI_0/USPI/UTXF/awe2 ), .Q(\CORESPI_0/USPI/UTXF/ram2_2 ));
    DFN1E1C0 \CORESPI_0/USPI/URF/cfg_ssel[4]  (.D(
        \COREABC_0_APB3master_PWDATA[4] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/URF/N_119 ), .Q(
        \CORESPI_0/USPI/URF/cfg_ssel[4]_net_1 ));
    DFN1E0C0 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTIl0l[7]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTI1I[7] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_159 ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTIl0l[7]_net_1 ));
    DFN1C0 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[6]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_ns[6] ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[6]_net_1 ));
    INV \CORESPI_0/USPI/UCC/SYNC1_stxs_txready_RNO  (.A(
        \CORESPI_0/USPI/UCC/txfifo_davailable_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/txfifo_davailable_i ));
    OR3 \CoreTimer_0/CountPulse_RNO_1  (.A(
        \CoreTimer_0/NextCountPulse_0_sqmuxa_7 ), .B(
        \CoreTimer_0/un1_NextCountPulse_0_sqmuxa_2 ), .C(
        \CoreTimer_0/PreScale_c8 ), .Y(
        \CoreTimer_0/un1_NextCountPulse_0_sqmuxa ));
    NOR3C \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I63_Y_0  (.A(
        \COREABC_0/un1_ACCUMULATOR.N211 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N214 ), .C(
        \COREABC_0/un1_ACCUMULATOR.N220 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I63_Y_0 ));
    NOR2 \CoreTimer_0/Count_RNI5IVI[28]  (.A(
        \CoreTimer_0/Count[28]_net_1 ), .B(
        \CoreTimer_0/Count[29]_net_1 ), .Y(\CoreTimer_0/m32_m6_e_1 ));
    OA1A \COREABC_0/un1_ACCUMULATOR_PWDATA_M_v[6]  (.A(
        \COREABC_0/UROM.INSTR_SCMD[1]_net_1 ), .B(
        \COREABC_0/UROM.INSTR_CMD[0]_net_1 ), .C(
        \COREABC_0/ACCUMULATOR[6] ), .Y(\COREABC_0/MUX1[6] ));
    MX2 \COREABC_0/STKPTR[4]/U0  (.A(\COREABC_0/STKPTR[4] ), .B(
        \COREABC_0/N_1217 ), .S(\COREABC_0/STKPTRe ), .Y(
        \COREABC_0/STKPTR[4]/Y ));
    DFN1P0 \CoreTimer_0/iPRDATA[3]  (.D(\CoreTimer_0/PrdataNext_1[3] ), 
        .CLK(GLA), .PRE(COREABC_0_PRESETN_0), .Q(
        \CoreAPB3_0_APBmslave0_PRDATA_i_0[3] ));
    NOR2 \CORESPI_0/USPI/UTXF/counter_d_i_0[2]  (.A(
        \CORESPI_0/USPI/UTXF/N_40 ), .B(\CORESPI_0/USPI/fiforsttx ), 
        .Y(\CORESPI_0/USPI/UTXF/N_11 ));
    DFN1P0 \COREABC_0/SMADDR_1[2]/U1  (.D(\COREABC_0/SMADDR_1[2]/Y ), 
        .CLK(GLA), .PRE(\COREABC_0/genblk2.RSTSYNC2_0_net_1 ), .Q(
        \COREABC_0/SMADDR_1[2] ));
    MX2 \COREABC_0/ACCUMULATOR[0]/U0  (.A(\COREABC_0/ACCUMULATOR[0] ), 
        .B(\COREABC_0/ACCUM_NEXT[0] ), .S(\COREABC_0/ACCUMULATOR4 ), 
        .Y(\COREABC_0/ACCUMULATOR[0]/Y ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m197  (.A(\COREABC_0/N_18_1 ), .B(
        \COREABC_0/N_12_1 ), .S(\COREABC_0/SMADDR_0[1] ), .Y(
        \COREABC_0/N_198 ));
    DFN1C0 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0[5]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[5] ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[5] ));
    OR3 \CoreTimer_0/iPRDATA_RNO_1[0]  (.A(\CoreTimer_0/CtrlReg_m[0] ), 
        .B(\CoreTimer_0/PrdataNext_1_0_iv_0[0] ), .C(
        \CoreTimer_0/TimerPre_m[0] ), .Y(
        \CoreTimer_0/PrdataNext_1_0_iv_1[0] ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_IO_IN_m[1]  (.A(RXRDY_i), .B(
        \COREABC_0/ACCUM_NEXT10 ), .Y(\COREABC_0/IO_IN_m[1] ));
    DFN1E1 \CORESPI_0/USPI/URXF/fifo_mem_q_fifo_mem_q_ram0_[0]  (.D(
        \CORESPI_0/USPI/rx_fifo_first_in ), .CLK(GLA), .E(
        \CORESPI_0/USPI/URXF/awe0 ), .Q(\CORESPI_0/USPI/URXF/ram0_0 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ACCUMULATOR_m[2]  (.A(
        \COREABC_0/ACCUMULATOR[2] ), .B(\COREABC_0/ALUOUT_6_sqmuxa ), 
        .Y(\COREABC_0/ACCUMULATOR_m[2] ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I28_Y_1_0  (.A(
        \COREABC_0/ACCUMULATOR[7] ), .B(\COREABC_0/RAMRDATA[7] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I28_Y_1_0 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I28_Y_0  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I28_Y_a2_2 ), .B(
        \COREABC_0/r_m1_N_6_mux_0 ), .C(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I28_Y_0_0 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N263 ));
    DFN1C0 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0[0]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[0] ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[0] ));
    DFN1E1P0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI1Il[2]  (.D(RX_c), 
        .CLK(GLA), .PRE(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTIl ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI1Il[2]_net_1 ));
    NOR2A \CoreTimer_0/Count_RNISQOJ2[7]  (.A(\CoreTimer_0/N_7_0 ), .B(
        \CoreTimer_0/Count[7]_net_1 ), .Y(\CoreTimer_0/N_8_0 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m206_0  (.A(\COREABC_0/N_143_0 ), 
        .B(\COREABC_0/N_14_1 ), .S(\COREABC_0/SMADDR_1[2] ), .Y(
        \COREABC_0/N_207_0 ));
    NOR3A \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0_RNO[7]  (
        .A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_121 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_RNII49F8[0]_net_1 ), 
        .C(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/un1_CUARTO0_0_sqmuxa_2 ), 
        .Y(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[7] ));
    MX2 \CORESPI_0/USPI/URF/control2_RNO[4]  (.A(
        \COREABC_0_APB3master_PWDATA[4] ), .B(
        \CORESPI_0/USPI/URF/control2[4]_net_1 ), .S(
        \CORESPI_0/USPI/URF/N_67 ), .Y(\CORESPI_0/USPI/URF/N_28 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_m46  (.A(\COREABC_0/N_26_1 ), .B(
        \COREABC_0/SMADDR[2] ), .Y(\COREABC_0/N_47_0 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ISR_1_sqmuxa_1_0  (.A(
        \COREABC_0/UROM.INSTR_CMD[2]_net_1 ), .B(
        \COREABC_0/ICYCLE24.ICYCLE24 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ISR_1_sqmuxa_1_0 ));
    MX2C \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0_RNO_0[0]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_114_mux ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_28_i ), .S(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0[1]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_29_0 ));
    DFN1P0 \COREABC_0/SMADDR[0]/U1  (.D(\COREABC_0/SMADDR[0]/Y ), .CLK(
        GLA), .PRE(\COREABC_0/genblk2.RSTSYNC2_1_net_1 ), .Q(
        \COREABC_0/SMADDR[0] ));
    OA1C \COREABC_0/un1_ACCUMULATOR_ADD_m2_0_a2_2  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_m1_e_4_0 ), .B(
        \COREABC_0/r_m1_N_6_mux_0 ), .C(\COREABC_0/ACCUMULATOR[11] ), 
        .Y(\COREABC_0/un1_ACCUMULATOR.ADD_N_5_mux_9 ));
    DFN1C0 \COREABC_0/ACCUMULATOR[6]/U1  (.D(
        \COREABC_0/ACCUMULATOR[6]/Y ), .CLK(GLA), .CLR(
        \COREABC_0/genblk2.RSTSYNC2_0_net_1 ), .Q(
        \COREABC_0/ACCUMULATOR[6] ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIQS35J  (.A(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_3[6] ), .B(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_2[6] ), .C(
        \COREABC_0/PRDATA_M_m[6] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[6] ));
    NOR3C \CORESPI_0/USPI/URF/int_raw_RNO_0[1]  (.A(
        \CoreTimer_0.DataOut_1_sqmuxa_2 ), .B(
        \CORESPI_0/USPI/URF/int_raw_27_i_a2_0_0[7]_net_1 ), .C(
        \CORESPI_0/USPI/URF/int_raw_33_i_a2_0_0[1] ), .Y(
        \CORESPI_0/USPI/URF/N_117 ));
    NOR2A \CORESPI_0/USPI/UCC/mtx_bitsel_RNIRN4N_0[1]  (.A(
        \CORESPI_0/USPI/UCC/mtx_bitsel[1]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/mtx_bitsel[0]_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/N_50 ));
    OA1 \CoreTimer_0/iPRDATA_RNO_4[0]  (.A(\CoreTimer_0/iTimInt_m_1 ), 
        .B(\CoreTimer_0/RawTimInt_m_2 ), .C(
        \CoreTimer_0/PrdataNextEn_net_1 ), .Y(
        \CoreTimer_0/PrdataNext_1_0_iv_0[0] ));
    DFN1E1P0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIOll[3]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_120_i ), .CLK(GLA), .PRE(
        COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0_0_sqmuxa ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIOll[3]_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m215_0  (.A(\COREABC_0/N_16_1 ), .B(
        \COREABC_0/N_22_1 ), .S(\COREABC_0/SMADDR_1[2] ), .Y(
        \COREABC_0/N_216 ));
    DFN1E1P0 \CoreTimer_0/Count[15]  (.D(\CoreTimer_0/N_422 ), .CLK(
        GLA), .PRE(COREABC_0_PRESETN_0), .E(\CoreTimer_0/Counte_0 ), 
        .Q(\CoreTimer_0/Count[15]_net_1 ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I23_Y_0  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I23_Y_0_1 ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I23_Y_3 ), .C(
        \COREABC_0/ADD_16x16_fast_I21_Y_a4 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N258 ));
    MX2 \CORESPI_0/USPI/UTXF/fifo_mem_q_fifo_mem_q_ram2__RNI7TBQ[1]  (
        .A(\CORESPI_0/USPI/UTXF/ram2_1 ), .B(
        \CORESPI_0/USPI/UTXF/ram3_1 ), .S(
        \CORESPI_0/USPI/UTXF/rd_pointer_q[0]_net_1 ), .Y(
        \CORESPI_0/USPI/UTXF/N_37 ));
    MX2C \CoreUARTapb_0/CUARTOOII_RNIBANR1[7]  (.A(
        \CoreUARTapb_0/CUARTOOII[7]_net_1 ), .B(
        \CoreUARTapb_0/CUARTOIII[7] ), .S(\CoreUARTapb_0/PARITY_ERR_0 )
        , .Y(\CoreAPB3_0_APBmslave1_PRDATA_i_1[7] ));
    INV \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIO0_1_RNO  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0I_9 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0I_9_i ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIFVQ7T  (.A(N_9), 
        .B(\COREABC_0/ICYCLE24.ICYCLE24 ), .C(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_6[1] ), .Y(
        \COREABC_0/ACCUM_NEXT[1] ));
    MX2C \CORESPI_0/USPI/UTXF/un1_counter_q_m_i[4]  (.A(
        \CORESPI_0/USPI/UTXF/un1_counter_q0[4] ), .B(
        \CORESPI_0/USPI/UTXF/un1_counter_q1[4] ), .S(
        \CORESPI_0/USPI/tx_fifo_write ), .Y(\CORESPI_0/USPI/UTXF/N_36 )
        );
    DFN1 \CoreUARTapb_0/CUARTlOlI/genblk2.CUARTl11/CUARTOOOI[7]  (.D(
        \CoreUARTapb_0/CUARTlOlI/genblk2.CUARTl11/CUARTl00I[7] ), .CLK(
        GLA), .Q(\CoreUARTapb_0/CUARTlOlI/CUARTI1I[7] ));
    MX2 \CoreTimer_0/CountPulse_RNO  (.A(
        \CoreTimer_0/NextCountPulse48 ), .B(
        \CoreTimer_0/un1_NextCountPulse_0_sqmuxa ), .S(
        \CoreTimer_0/un1_NextCountPulse63 ), .Y(
        \CoreTimer_0/NextCountPulse ));
    OR2 \CORESPI_0/USPI/UCC/SYNC1_msrxp_pktsel_RNO  (.A(
        \CORESPI_0/USPI/UCC/stxs_pktsel_net_1 ), .B(
        \CORESPI_0/USPI/UCC/mtx_pktsel_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/msrxs_pktsel ));
    MX2 \CORESPI_0/USPI/UCC/stxs_datareg_RNO_0[1]  (.A(
        \CORESPI_0/USPI/UCC/txfifo_datadelay[0]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/stxs_datareg[0] ), .S(
        \CORESPI_0/USPI/UCC/stxs_bitcnt_0_sqmuxa ), .Y(
        \CORESPI_0/USPI/UCC/N_335 ));
    NOR3C \COREABC_0/un1_ACCUMULATOR_m104_0  (.A(
        \COREABC_0/SMADDR_0[2] ), .B(\COREABC_0/N_11_1 ), .C(
        \COREABC_0/SMADDR_0[1] ), .Y(\COREABC_0/N_105_0 ));
    DFN1P0 \COREABC_0/SMADDR[7]/U1  (.D(\COREABC_0/SMADDR[7]/Y ), .CLK(
        GLA), .PRE(\COREABC_0/genblk2.RSTSYNC2_1_net_1 ), .Q(
        \COREABC_0/SMADDR[7] ));
    MX2 \CoreUARTapb_0/CUARTlOlI/CUARTIOl_RNIEUTV[6]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIOl[6]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTlOl[6] ), .S(
        \CoreUARTapb_0/PARITY_ERR_0 ), .Y(\CoreUARTapb_0/CUARTOIII[6] )
        );
    AO1B \CORESPI_0/USPI/UCC/mtx_state_RNO_1[3]  (.A(
        \CORESPI_0/USPI/UCC/N_97_2 ), .B(\CORESPI_0/USPI/UCC/N_70_1 ), 
        .C(\CORESPI_0/USPI/UCC/mtx_state[4]_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/N_66 ));
    MX2 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il_RNI4BJK4[3]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_136_mux ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_137_mux ), .S(
        \CoreUARTapb_0/CUARTO1OI[0]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/i17_mux_0 ));
    AOI1A \COREABC_0/un1_ACCUMULATOR_ISR4  (.A(RXRDY), .B(
        \CoreTimer_0.iTimInt ), .C(INTACT), .Y(\COREABC_0/ISR4 ));
    AO1 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_0[6]  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA_i_0[6] ), .B(\CoreAPB3_0/N_72 ), 
        .C(\CoreAPB3_0/u_mux_p_to_b3/N_35 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_0[6]_net_1 ));
    OR3 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_RNIG7V07[0]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_0_sqmuxa ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_0_sqmuxa_1_3 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/un1_CUARTO0_0_sqmuxa_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/un1_CUARTO0_0_sqmuxa_2 ));
    MX2 \CoreTimer_0/Count_RNO_0[8]  (.A(\CoreTimer_0/Count[8]_net_1 ), 
        .B(\CoreTimer_0/Load[8]_net_1 ), .S(
        \CoreTimer_0/un1_PreScale8_0 ), .Y(\CoreTimer_0/N_214 ));
    DFN1C0 \COREABC_0/STD_ACCUM_NEG/U1  (.D(
        \COREABC_0/STD_ACCUM_NEG/Y ), .CLK(GLA), .CLR(
        \COREABC_0/genblk2.RSTSYNC2_2_net_1 ), .Q(
        \COREABC_0/STD_ACCUM_NEG ));
    OR2 \COREABC_0/un1_ACCUMULATOR_xhdl_31.MSEL[1]  (.A(
        \COREABC_0/to_logic_4.un4_READRAM ), .B(
        \COREABC_0/UROM.INSTR_SCMD[1]_net_1 ), .Y(
        \COREABC_0/xhdl_31.MSEL[1] ));
    DFN1 \COREABC_0/UROM.INSTR_ADDR[5]  (.D(
        \COREABC_0/INSTRUCTION[15] ), .CLK(GLA), .Q(
        \COREABC_0/UROM.INSTR_ADDR[5]_net_1 ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIDOPPH  (.A(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_3[7] ), .B(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_2[7] ), .C(
        \COREABC_0/PRDATA_M_m[7] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[7] ));
    XA1 \CORESPI_0/USPI/UCC/spi_clk_count_RNO[7]  (.A(
        \CORESPI_0/USPI/UCC/spi_clk_count_20_0 ), .B(
        \CORESPI_0/USPI/UCC/spi_clk_count[7]_net_1 ), .C(
        \CORESPI_0/USPI/UCC/spi_clk_count_1_sqmuxa ), .Y(
        \CORESPI_0/USPI/UCC/spi_clk_count_n7 ));
    NOR2 \CORESPI_0/USPI/UCC/mtx_bitsel_RNIRN4N_1[1]  (.A(
        \CORESPI_0/USPI/UCC/mtx_bitsel[1]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/mtx_bitsel[0]_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/N_476_2 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_RAMADDR[4]  (.A(\COREABC_0/I_12_0 ), 
        .B(\COREABC_0/UROM.INSTR_ADDR[4]_net_1 ), .S(
        \COREABC_0/RAMADDR_1_sqmuxa ), .Y(\COREABC_0/RAMADDR[4] ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIMJV73  (.A(
        \COREABC_0/ACCUMULATOR[3] ), .B(\COREABC_0/ALUOUT_6_sqmuxa ), 
        .C(\COREABC_0/xhdl_31.ALUOUT_4_m[2] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_2[2] ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_ACCUMULATOR_m_0[3]  (.A(
        \COREABC_0/un1_ACCUMULATOR.ALUOUT_5_sqmuxa_0 ), .B(
        \COREABC_0/ACCUMULATOR[3] ), .C(\COREABC_0/xhdl_31.MSEL[1] ), 
        .Y(\COREABC_0/ACCUMULATOR_m_0[3] ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNI6G1QI  (.A(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_0[8] ), .B(
        \COREABC_0/ACCUMULATOR_m[9] ), .C(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_4[8] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[8] ));
    OR2 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I38_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.I38_un1_Y ), .B(
        \COREABC_0/un1_ACCUMULATOR.N213 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N273 ));
    DFN1P0 \COREABC_0/SMADDR[1]/U1  (.D(\COREABC_0/SMADDR[1]/Y ), .CLK(
        GLA), .PRE(\COREABC_0/genblk2.RSTSYNC2_1_net_1 ), .Q(
        \COREABC_0/SMADDR[1] ));
    DFN1E1C0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTlOl[7]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTlOl_2[7] ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTlOl_1_sqmuxa ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTlOl[7] ));
    NOR3C \COREABC_0/un1_ACCUMULATOR_PRDATA_M_m[11]  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[11] ), .B(
        CoreAPB3_0_APBmslave0_PSELx), .C(\COREABC_0/ICYCLE24.ICYCLE24 )
        , .Y(\COREABC_0/PRDATA_M_m[11] ));
    IOPAD_IN \SCL_MCU_pad/U0/U0  (.PAD(SCL_MCU), .Y(
        \SCL_MCU_pad/U0/NET1 ));
    AO1A \CORESPI_0/USPI/UCC/msrxs_first_RNO  (.A(
        \CORESPI_0.USPI.SPIMODE ), .B(\CORESPI_0/USPI/UCC/stxs_first ), 
        .C(\CORESPI_0/USPI/UCC/mtx_firstrx_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/msrxs_first_2 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_SMADDR_21[4]  (.A(\COREABC_0/N_440 )
        , .B(\COREABC_0/N_427 ), .S(\COREABC_0/SMADDR_0_sqmuxa_1 ), .Y(
        \COREABC_0/SMADDR_21[4] ));
    AO1C \COREABC_0/un1_ACCUMULATOR_ACCUM_NEXT9  (.A(
        \COREABC_0/r_m1tt_N_3_mux ), .B(
        \COREABC_0/to_logic_4.un4_READRAM ), .C(
        \COREABC_0/UROM.INSTR_CMD[1]_net_1 ), .Y(
        \COREABC_0/ACCUM_NEXT9 ));
    AOI1 \COREABC_0_PADDR_M_RNI227E8[13]  (.A(
        \COREABC_0_APB3master_PADDR[13] ), .B(
        \CORESPI_0.USPI.URF.N_62 ), .C(
        \CoreAPB3_0.u_mux_p_to_b3.PRDATA_iv_i_1[7] ), .Y(d_N_5_mux_0));
    AX1 \CoreTimer_0/Count_RNO[9]  (.A(\CoreTimer_0/un1_PreScale8_0_0 )
        , .B(\CoreTimer_0/N_9_0 ), .C(\CoreTimer_0/N_216 ), .Y(
        \CoreTimer_0/N_416 ));
    DFN1C0 \COREABC_0/ZREGISTER[2]/U1  (.D(\COREABC_0/ZREGISTER[2]/Y ), 
        .CLK(GLA), .CLR(\COREABC_0/genblk2.RSTSYNC2_2_net_1 ), .Q(
        \COREABC_0/ZREGISTER[2] ));
    AO1 \CORESPI_0/USPI/URXF/un1_counter_q_1_I_28  (.A(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_pog_array_0_1[0] ), .B(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_1_0[0] ), .C(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_0_2[0] ), .Y(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_12_0[0] ));
    NOR2B \CORESPI_0/USPI/UCC/stxs_direct_RNIIUSE  (.A(
        \CORESPI_0/USPI/UCC/stxs_direct ), .B(
        \CORESPI_0/USPI/UCC/stxs_state_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/stxs_datareg_1_sqmuxa_0 ));
    DFN1C0 \CoreTimer_0/iPRDATA[15]  (.D(
        \CoreTimer_0/PrdataNext_1[15] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(\CoreAPB3_0_APBmslave0_PRDATA[15] ));
    XOR2 \CORESPI_0/USPI/URXF/un1_counter_q_1_I_10  (.A(
        \CORESPI_0/USPI/URXF/counter_q[2]_net_1 ), .B(
        \CORESPI_0/USPI/URXF/counter_d_0_sqmuxa_2 ), .Y(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_pog_array_0_1[0] ));
    XOR2 \CORESPI_0/USPI/URXF/un1_counter_q_0_I_17  (.A(
        \CORESPI_0/USPI/URXF/counter_q[0]_net_1 ), .B(
        \CORESPI_0/USPI/URXF/counter_d_0_sqmuxa_1_0 ), .Y(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_partial_sum[0] ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ACCUM_NEXT_iv_1[12]  (.A(
        \COREABC_0/ACCUM_IN[12] ), .B(\COREABC_0/ALUOUT_7_sqmuxa ), .C(
        \COREABC_0/ACCUMULATOR_m_0[11] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[12] ));
    OA1 \CORESPI_0/USPI/URF/int_raw_RNIBFL61[3]  (.A(
        \CORESPI_0/USPI/URF/cfg_m1_0_a2_0_1 ), .B(
        \CORESPI_0/USPI/URF/int_m1_e_0_1 ), .C(
        \CoreTimer_0.DataOut_1_sqmuxa_2 ), .Y(
        \CORESPI_0/USPI/URF/rdata_iv_1[5] ));
    DFN1E0C0 \CORESPI_0/USPI/UCC/mtx_busy  (.D(
        \CORESPI_0/USPI/UCC/N_604_i_0 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/UCC/N_62 ), .Q(
        \CORESPI_0/USPI/UCC/mtx_busy_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_ACCUM_ZERO_1  (.A(
        \COREABC_0/STD_ACCUM_ZERO ), .B(\COREABC_0/ISR_ACCUM_ZERO ), 
        .S(INTACT), .Y(\COREABC_0/ACCUM_ZERO_1 ));
    MX2 \CORESPI_0/USPI/URXF/fifo_mem_q_fifo_mem_q_ram2__RNI7RKU[4]  (
        .A(\CORESPI_0/USPI/URXF/ram2_4 ), .B(
        \CORESPI_0/USPI/URXF/ram3_4 ), .S(
        \CORESPI_0/USPI/URXF/rd_pointer_q[0]_net_1 ), .Y(
        \CORESPI_0/USPI/URXF/N_40 ));
    NOR2B \CORESPI_0/USPI/URF/int_raw_RNIVVNE[7]  (.A(
        \CORESPI_0/USPI/URF/int_raw[7]_net_1 ), .B(
        \CORESPI_0.USPI.URF.rdata53 ), .Y(
        \CORESPI_0/USPI/URF/int_raw_m[7] ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I2_G0N_0_0  (.A(
        \COREABC_0/ACCUMULATOR[2] ), .B(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_1 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I2_G0N_0_0 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ACCUM_NEXT_iv_0[10]  (.A(
        \COREABC_0/un1_ACCUMULATOR.xhdl_31.ALUOUT_3_m_0[10] ), .B(
        \COREABC_0/ACCUM_IN[10] ), .C(\COREABC_0/PRDATA_M_m[10] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_0[10] ));
    MX2B \COREABC_0/un1_ACCUMULATOR_ADD_m4_0_a2_2  (.A(
        \COREABC_0/UROM.INSTR_DATA_RNI24171[1]_net_1 ), .B(
        \COREABC_0/r_N_5_mux ), .S(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_3_mux_3 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.I40_un1_Y ));
    NOR2A \CORESPI_0/USPI/UCC/mtx_state_RNO[4]  (.A(
        \CORESPI_0/USPI/UCC/N_65 ), .B(\CORESPI_0/USPI/SPISS_2[0] ), 
        .Y(\CORESPI_0/USPI/UCC/mtx_state_RNO[4]_net_1 ));
    MX2 \CoreUARTapb_0/CUARTlOlI/CUARTIOl_RNI8OTV[3]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIOl[3]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTlOl[3] ), .S(
        \CoreUARTapb_0/PARITY_ERR_0 ), .Y(\CoreUARTapb_0/CUARTOIII[3] )
        );
    DFN1E0C0 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTIl0l[4]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTI1I[4] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_159 ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTIl0l[4]_net_1 ));
    NOR2B \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I31_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N223 ), .B(
        \COREABC_0/un33_ZREGISTER.N226 ), .Y(
        \COREABC_0/un33_ZREGISTER.N266 ));
    FIFO4K18 
        \CoreUARTapb_0/CUARTlOlI/genblk3_CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTIlOl  
        (.AEVAL11(GND), .AEVAL10(GND), .AEVAL9(GND), .AEVAL8(GND), 
        .AEVAL7(GND), .AEVAL6(GND), .AEVAL5(GND), .AEVAL4(GND), 
        .AEVAL3(VCC), .AEVAL2(GND), .AEVAL1(GND), .AEVAL0(GND), 
        .AFVAL11(GND), .AFVAL10(VCC), .AFVAL9(VCC), .AFVAL8(VCC), 
        .AFVAL7(VCC), .AFVAL6(VCC), .AFVAL5(VCC), .AFVAL4(VCC), 
        .AFVAL3(VCC), .AFVAL2(GND), .AFVAL1(GND), .AFVAL0(GND), .WD17(
        GND), .WD16(GND), .WD15(GND), .WD14(GND), .WD13(GND), .WD12(
        GND), .WD11(GND), .WD10(GND), .WD9(GND), .WD8(GND), .WD7(
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTOIl_1[7] )
        , .WD6(
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTOIl_1[6] )
        , .WD5(
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTOIl_1[5] )
        , .WD4(
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTOIl_1[4] )
        , .WD3(
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTOIl_1[3] )
        , .WD2(
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTOIl_1[2] )
        , .WD1(
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTOIl_1[1] )
        , .WD0(
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTOIl_1[0] )
        , .WW0(VCC), .WW1(VCC), .WW2(GND), .RW0(VCC), .RW1(VCC), .RW2(
        GND), .RPIPE(GND), .WEN(
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTO0I_1 )
        , .REN(
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTlIOl )
        , .WBLK(GND), .RBLK(GND), .WCLK(GLA), .RCLK(GLA), .RESET(
        COREABC_0_PRESETN_0), .ESTOP(VCC), .FSTOP(VCC), .RD17(), .RD16(
        ), .RD15(), .RD14(), .RD13(), .RD12(), .RD11(), .RD10(), .RD9()
        , .RD8(), .RD7(
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/CUARTl00I[7] ), 
        .RD6(\CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/CUARTl00I[6] ), 
        .RD5(\CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/CUARTl00I[5] ), 
        .RD4(\CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/CUARTl00I[4] ), 
        .RD3(\CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/CUARTl00I[3] ), 
        .RD2(\CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/CUARTl00I[2] ), 
        .RD1(\CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/CUARTl00I[1] ), 
        .RD0(\CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/CUARTl00I[0] ), 
        .FULL(), .AFULL(\CoreUARTapb_0/CUARTlOlI/CUARTI0l ), .EMPTY(
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTlIl )
        , .AEMPTY());
    NOR3C \COREABC_0/un1_ACCUMULATOR_xhdl_31.ALUOUT_3_m[1]  (.A(
        \COREABC_0/ALUOUT_1_sqmuxa ), .B(\COREABC_0/ACCUMULATOR[1] ), 
        .C(\COREABC_0/ACCUM_IN[1] ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_3_m[1] ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I23_Y_a4  (.A(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux ), .B(
        \COREABC_0/ACCUMULATOR[10] ), .Y(
        \COREABC_0/ADD_16x16_fast_I23_Y_a4 ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_ACCUMULATOR_m[0]  (.A(
        \COREABC_0/un1_ACCUMULATOR.ALUOUT_5_sqmuxa_0 ), .B(
        \COREABC_0/ACCUMULATOR[0] ), .C(\COREABC_0/xhdl_31.MSEL[1] ), 
        .Y(\COREABC_0/ACCUMULATOR_m[0] ));
    AOI1 \CoreTimer_0/iPRDATA_RNO[6]  (.A(\CoreTimer_0/Count[6]_net_1 )
        , .B(\CoreTimer_0/DataOut_1_sqmuxa_net_1 ), .C(
        \CoreTimer_0/Load_m[6] ), .Y(\CoreTimer_0/PrdataNext_1[6] ));
    IOTRI_OB_EB \SPISDO_pad/U0/U1  (.D(SPISDO_c), .E(VCC), .DOUT(
        \SPISDO_pad/U0/NET1 ), .EOUT(\SPISDO_pad/U0/NET2 ));
    XOR2 \COREABC_0/un37_SMADDR_I_28  (.A(\COREABC_0/un37_SMADDR.N_3 ), 
        .B(\COREABC_0/SMADDR[10] ), .Y(\COREABC_0/I_28 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIPMV73  (.A(
        \COREABC_0/ACCUMULATOR[4] ), .B(\COREABC_0/ALUOUT_6_sqmuxa ), 
        .C(\COREABC_0/xhdl_31.ALUOUT_4_m[3] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_2[3] ));
    DFN1P0 \COREABC_0/STKPTR[6]/U1  (.D(\COREABC_0/STKPTR[6]/Y ), .CLK(
        GLA), .PRE(PRESETN), .Q(\COREABC_0/STKPTR[6] ));
    AO1A \COREABC_0/un1_ACCUMULATOR_ADD_m3_i  (.A(
        \COREABC_0/r_m1_N_6_mux_0 ), .B(
        \COREABC_0/un1_ACCUMULATOR.un1_m1_e_0_0 ), .C(
        \COREABC_0/ACCUMULATOR[8] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_4_2 ));
    NOR2 \COREABC_0/un1_ACCUMULATOR_un1_ACCUM_NEXT9_1_0  (.A(
        \COREABC_0/UROM.INSTR_CMD[1]_net_1 ), .B(
        \COREABC_0/UROM.INSTR_SCMD[0]_net_1 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.un1_ACCUM_NEXT9_1_0 ));
    DFN1E1 \CORESPI_0/USPI/URXF/fifo_mem_q_fifo_mem_q_ram1_[2]  (.D(
        \CORESPI_0/USPI/rx_fifo_data_in[1] ), .CLK(GLA), .E(
        \CORESPI_0/USPI/URXF/awe1 ), .Q(\CORESPI_0/USPI/URXF/ram1_2 ));
    AO1 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTI0_RNO_0  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTI0_17_i_a5_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_110_2 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_112 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTI0_17_i_0 ));
    AOI1 \CoreTimer_0/iPRDATA_RNO[5]  (.A(\CoreTimer_0/Count[5]_net_1 )
        , .B(\CoreTimer_0/DataOut_1_sqmuxa_net_1 ), .C(
        \CoreTimer_0/Load_m[5] ), .Y(\CoreTimer_0/PrdataNext_1[5] ));
    DFN1E1 \CORESPI_0/USPI/URXF/fifo_mem_q_fifo_mem_q_ram3_[2]  (.D(
        \CORESPI_0/USPI/rx_fifo_data_in[1] ), .CLK(GLA), .E(
        \CORESPI_0/USPI/URXF/N_54 ), .Q(\CORESPI_0/USPI/URXF/ram3_2 ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ACCUM_NEXT_iv_3[11]  (.A(
        \COREABC_0/xhdl_31.ALUOUT_3_m[11] ), .B(
        \COREABC_0/PRDATA_M_m[11] ), .C(\COREABC_0/ACCUMULATOR_m[12] ), 
        .Y(\COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_3[11] ));
    OR2 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I5_P0N  (.A(
        \COREABC_0/un5[5] ), .B(\COREABC_0/ACCUMULATOR[5] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N220 ));
    DFN1E1C0 \CORESPI_0/USPI/URF/control1[6]  (.D(
        \COREABC_0_APB3master_PWDATA[6] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/URF/N_118 ), .Q(
        \CORESPI_0/USPI/cfg_frameurun ));
    AND2 \CORESPI_0/USPI/UCC/un1_stxs_bitsel_3_I_1  (.A(
        \CORESPI_0/USPI/UCC/stxs_bitsel[0]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/stxs_state_RNIV3DN_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/DWACT_ADD_CI_0_TMP[0] ));
    DFN1C0 \CORESPI_0/USPI/UCC/clock_rx_q1  (.D(
        \CORESPI_0/USPI/UCC/clock_rx_mux1 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/clock_rx_q1_net_1 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ISR_1_sqmuxa_0  (.A(
        \COREABC_0/UROM.INSTR_SCMD[1]_net_1 ), .B(\COREABC_0/N_493_1 ), 
        .Y(\COREABC_0/un1_ACCUMULATOR.ISR_1_sqmuxa_0 ));
    OA1C \CORESPI_0/USPI/URF/sticky_RNO[1]  (.A(
        \CORESPI_0/USPI/rx_done_i_0 ), .B(
        \CORESPI_0/USPI/URF/sticky[1]_net_1 ), .C(
        \CORESPI_0/USPI/rx_fifo_read ), .Y(\CORESPI_0/USPI/URF/N_46 ));
    DFN1C1 \CORESPI_0/USPI/UCC/stxs_checkorun/U1  (.D(
        \CORESPI_0/USPI/UCC/stxs_checkorun/Y ), .CLK(GLA), .CLR(
        \CORESPI_0/USPI/UCC/ssel_rx_q2_RNIBQH6_net_1 ), .Q(
        \CORESPI_0/USPI/UCC/stxs_checkorun ));
    MX2 \CoreTimer_0/Count_RNO_0[2]  (.A(\CoreTimer_0/Count[2]_net_1 ), 
        .B(\CoreTimer_0/Load[2]_net_1 ), .S(
        \CoreTimer_0/un1_PreScale8_0_0 ), .Y(\CoreTimer_0/N_202 ));
    AO1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I92_Y  (.A(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I92_un1_Y_0 ), .B(
        \COREABC_0/un33_ZREGISTER.N365 ), .C(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I92_Y_2 ), .Y(
        \COREABC_0/un33_ZREGISTER.N348 ));
    DFN1C0 \CORESPI_0/USPI/UCC/SYNC1_stxp_strobetx  (.D(
        \CORESPI_0/USPI/UCC/stxs_strobetx ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/SYNC1_stxp_strobetx_net_1 ));
    DFN1E1P0 \CORESPI_0/USPI/UCC/clk_div_val_reg[0]  (.D(
        \CORESPI_0/USPI/clk_div_val[0] ), .CLK(GLA), .PRE(
        COREABC_0_PRESETN_0), .E(
        \CORESPI_0/USPI/UCC/mtx_state_RNINJM1[1]_net_1 ), .Q(
        \CORESPI_0/USPI/UCC/clk_div_val_reg[0]_net_1 ));
    NOR2A \CORESPI_0/USPI/UCC/mtx_state_RNO_1[0]  (.A(
        \CORESPI_0/USPI/UCC/mtx_state[0]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/spi_clk_tick_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/N_77 ));
    NOR2B \CORESPI_0/USPI/UCC/spi_clk_count_RNI5MEF[4]  (.A(
        \CORESPI_0/USPI/UCC/spi_clk_count_c3 ), .B(
        \CORESPI_0/USPI/UCC/spi_clk_count[4]_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/spi_clk_count_c4 ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I21_Y_a4  (.A(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux ), .B(
        \COREABC_0/ACCUMULATOR[11] ), .Y(
        \COREABC_0/ADD_16x16_fast_I21_Y_a4 ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_m199_0  (.A(\COREABC_0/N_15_1 ), 
        .B(\COREABC_0/SMADDR[3] ), .Y(\COREABC_0/N_200_0 ));
    AO1 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2_1[1]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA_i_1[1] ), .B(
        \COREABC_0_APB3master_PADDR[12] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2_0[1]_net_1 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2_1[1]_net_1 ));
    DFN1E1P0 \CORESPI_0/USPI/UCC/clk_div_val_reg[2]  (.D(
        \CORESPI_0.USPI.clk_div_val[2] ), .CLK(GLA), .PRE(
        COREABC_0_PRESETN_0), .E(
        \CORESPI_0/USPI/UCC/mtx_state_RNINJM1[1]_net_1 ), .Q(
        \CORESPI_0/USPI/UCC/clk_div_val_reg[2]_net_1 ));
    NOR2B \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I57_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N268 ), .B(
        \COREABC_0/un33_ZREGISTER.N264 ), .Y(
        \COREABC_0/un33_ZREGISTER.N295 ));
    AX1 \CoreTimer_0/Count_RNO[6]  (.A(\CoreTimer_0/un1_PreScale8_0 ), 
        .B(\CoreTimer_0/N_6_0 ), .C(\CoreTimer_0/N_210 ), .Y(
        \CoreTimer_0/N_413 ));
    DFN1C0 \CORESPI_0/USPI/UCC/txfifo_datadelay[1]  (.D(
        \CORESPI_0/USPI/tx_fifo_data_out[1] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/txfifo_datadelay[1]_net_1 ));
    OR3B \CoreTimer_0/IntClr_RNO  (.A(\CoreTimer_0/IntClrEn_0 ), .B(
        \CoreTimer_0/un4_CtrlEn_net_1 ), .C(
        \COREABC_0_APB3master_PADDR[2] ), .Y(\CoreTimer_0/IntClrEn ));
    XA1 \CORESPI_0/USPI/UCC/stxs_bitcnt_RNO[1]  (.A(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[1] ), .B(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[0] ), .C(
        \CORESPI_0/USPI/UCC/stxs_bitcnt_0_sqmuxa ), .Y(
        \CORESPI_0/USPI/UCC/stxs_bitcnt_n1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m163_0  (.A(\COREABC_0/N_132_0 ), 
        .B(\COREABC_0/N_11_1 ), .S(\COREABC_0/SMADDR_1[2] ), .Y(
        \COREABC_0/N_164_0 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m160_0  (.A(\COREABC_0/N_27_1 ), .B(
        \COREABC_0/N_128_0 ), .S(\COREABC_0/SMADDR_1[1] ), .Y(
        \COREABC_0/N_161_0 ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_ACCUMULATOR_m_0[1]  (.A(
        \COREABC_0/un1_ACCUMULATOR.ALUOUT_5_sqmuxa_0 ), .B(
        \COREABC_0/ACCUMULATOR[1] ), .C(\COREABC_0/xhdl_31.MSEL[1] ), 
        .Y(\COREABC_0/ACCUMULATOR_m_0[1] ));
    OR3 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll1_RNO  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_60 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_62 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_61 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll1_4 ));
    DFN1E0C0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il[1]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il_n1 ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_130_mux ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il[1]_net_1 ));
    OR2 \COREABC_0/un1_ACCUMULATOR_xhdl_31.ALUOUT_4[7]  (.A(
        \COREABC_0/ACCUM_IN[7] ), .B(\COREABC_0/ACCUMULATOR[7] ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_4[7] ));
    AO1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I24_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N231 ), .B(
        \COREABC_0/un33_ZREGISTER.N235 ), .C(
        \COREABC_0/un33_ZREGISTER.N234 ), .Y(
        \COREABC_0/un33_ZREGISTER.N259 ));
    DFN1C0 \CoreUARTapb_0/CUARTlOlI/CUARTll0[1]  (.D(
        \CoreUARTapb_0/CUARTlOlI/N_102_i ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTll0[1]_net_1 ));
    NOR3C \CORESPI_0/USPI/UCON/tx_fifo_write_0_a2  (.A(
        \CoreTimer_0.un2_PrescaleEn_0 ), .B(
        \CORESPI_0/USPI/UCON/rx_fifo_read_0_a2_1_0_net_1 ), .C(
        \CORESPI_0/USPI/UCON/tx_fifo_write_0_a2_0_net_1 ), .Y(
        \CORESPI_0/USPI/tx_fifo_write ));
    DFN1C0 \COREABC_0/STBACCUM  (.D(\COREABC_0/STBACCUM_4 ), .CLK(GLA), 
        .CLR(PRESETN), .Q(\COREABC_0/STBACCUM_net_1 ));
    NOR3B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_a1_2[6]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_a1_0[6]_net_1 ), .B(
        \CORESPI_0.USPI.URF.N_125 ), .C(
        \COREABC_0_APB3master_PADDR[2] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_a1_2[6]_net_1 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I45_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N252 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N256 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N283 ));
    DFN1E1P0 \CoreTimer_0/Count[7]  (.D(\CoreTimer_0/N_414 ), .CLK(GLA)
        , .PRE(COREABC_0_PRESETN_0), .E(\CoreTimer_0/Counte ), .Q(
        \CoreTimer_0/Count[7]_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_RAMWDATA[0]  (.A(\COREABC_0/N_462 ), 
        .B(\COREABC_0/SMADDR_0[0] ), .S(\COREABC_0/DOISR_0 ), .Y(
        \COREABC_0/RAMWDATA[0] ));
    DFN1E1 \CORESPI_0/USPI/UTXF/fifo_mem_q_fifo_mem_q_ram0_[4]  (.D(
        \COREABC_0_APB3master_PWDATA[3] ), .CLK(GLA), .E(
        \CORESPI_0/USPI/UTXF/awe0 ), .Q(\CORESPI_0/USPI/UTXF/ram0_4 ));
    NOR2B \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I63_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N274 ), .B(
        \COREABC_0/un33_ZREGISTER.N270 ), .Y(
        \COREABC_0/un33_ZREGISTER.N301 ));
    NOR2B \CORESPI_0/USPI/URXF/un1_counter_q_0_I_27  (.A(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_TMP[0] ), .B(
        \CORESPI_0/USPI/URXF/counter_q[1]_net_1 ), .Y(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_1[0] ));
    NOR2B \CoreTimer_0/LoadEn  (.A(\CORESPI_0.USPI.URF.N_127 ), .B(
        \CoreTimer_0/un4_CtrlEn_net_1 ), .Y(\CoreTimer_0/LoadEn_net_1 )
        );
    DFN1P0 \CoreTimer_0/CountIsZeroReg  (.D(
        \CoreTimer_0/Count_RNIC07P9[22]_net_1 ), .CLK(GLA), .PRE(
        COREABC_0_PRESETN_0), .Q(\CoreTimer_0/CountIsZeroReg_i_0 ));
    AXOI5 \COREABC_0/URAM.UR/UG3.UR_xhdl12/Ram256x16_R0C0_RNIND8B_1  (
        .A(\COREABC_0/r_m1tt_N_3_mux ), .B(\COREABC_0/RAMRDATA[2] ), 
        .C(\COREABC_0_APB3master_PADDR[12] ), .Y(
        \COREABC_0/URAM.UR/UG3.UR_xhdl12/r_m1_4_0 ));
    DFN1C1 \CORESPI_0/USPI/UCC/stxs_strobetx/U1  (.D(
        \CORESPI_0/USPI/UCC/stxs_strobetx/Y ), .CLK(GLA), .CLR(
        \CORESPI_0/USPI/UCC/ssel_rx_q2_RNIBQH6_net_1 ), .Q(
        \CORESPI_0/USPI/UCC/stxs_strobetx ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_m208_0  (.A(\COREABC_0/N_37_1 ), 
        .B(\COREABC_0/SMADDR[1] ), .Y(\COREABC_0/N_209_0 ));
    NOR2 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIEG5OV3  (.A(
        \COREABC_0/ACCUM_NEXT[4] ), .B(\COREABC_0/ACCUM_NEXT[5] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.to_logic_2.tmp_6_3[0] ));
    AX1 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I112_Y_0  (.A(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_1 ), .B(
        \COREABC_0/ACCUM_IN[6] ), .C(\COREABC_0/ACCUMULATOR[6] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I112_Y_0 ));
    NOR3B \CORESPI_0/USPI/UTXF/fifo_mem_q_awe1  (.A(
        \CORESPI_0/USPI/UTXF/fifo_mem_d[3]_0_sqmuxa ), .B(
        \CORESPI_0/USPI/UTXF/wr_pointer_q[0]_net_1 ), .C(
        \CORESPI_0/USPI/UTXF/wr_pointer_q[1]_net_1 ), .Y(
        \CORESPI_0/USPI/UTXF/awe1 ));
    DFN1C1 \CORESPI_0/USPI/UCC/stxs_lastbit/U1  (.D(
        \CORESPI_0/USPI/UCC/stxs_lastbit/Y ), .CLK(GLA), .CLR(
        \CORESPI_0/USPI/UCC/ssel_rx_q2_RNIBQH6_net_1 ), .Q(
        \CORESPI_0/USPI/UCC/stxs_lastbit ));
    OR3 \COREABC_0/URAM.UR/UG3.UR_xhdl12/Ram256x16_R0C0_RNI8F5K2_1  (
        .A(
        \COREABC_0/URAM.UR/UG3.UR_xhdl12/Ram256x16_R0C0_RNI4G911_net_1 )
        , .B(
        \COREABC_0/URAM.UR/UG3.UR_xhdl12/Ram256x16_R0C0_RNIDHJ71_net_1 )
        , .C(\COREABC_0/URAM.UR/UG3.UR_xhdl12/r_m1_2_0 ), .Y(
        \COREABC_0/Ram256x16_R0C0_RNI8F5K2_1 ));
    DFN1E1C0 \CoreTimer_0/CtrlReg[1]  (.D(
        \COREABC_0_APB3master_PWDATA[1] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreTimer_0/CtrlEn_net_1 ), .Q(
        \CoreTimer_0/CtrlReg[1]_net_1 ));
    NOR3A \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0_RNI3P2R2[0]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_114_mux ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0[1]_net_1 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0[0]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0_0_sqmuxa ));
    MX2 \CoreTimer_0/Count_RNO_0[14]  (.A(
        \CoreTimer_0/Count[14]_net_1 ), .B(
        \CoreTimer_0/Load[14]_net_1 ), .S(
        \CoreTimer_0/un1_PreScale8_0 ), .Y(\CoreTimer_0/N_226 ));
    NOR2A \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_RNO[3]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[4]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_123 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_11[3] ));
    AO1D \CORESPI_0/USPI/URXF/un1_counter_q_m_i[4]  (.A(
        \CORESPI_0/USPI/URXF/un1_counter_q0[4] ), .B(
        \CORESPI_0/USPI/rx_fifo_read ), .C(\CORESPI_0/USPI/URXF/N_58 ), 
        .Y(\CORESPI_0/USPI/URXF/N_38 ));
    XNOR2 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/un3_CUARTO0_I_14  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_9 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[5] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/I_14 ));
    OR3 \CORESPI_0/USPI/UCC/mtx_bitsel_n1_i  (.A(
        \CORESPI_0/USPI/UCC/N_476_2 ), .B(\CORESPI_0/USPI/UCC/N_42 ), 
        .C(\CORESPI_0/USPI/UCC/un1_sresetn_16 ), .Y(
        \CORESPI_0/USPI/UCC/N_602 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m165_0  (.A(\COREABC_0/N_17_1 ), .B(
        \COREABC_0/N_14_1 ), .S(\COREABC_0/SMADDR[2] ), .Y(
        \COREABC_0/N_166_0 ));
    DFN1C0 \COREABC_0/ZREGISTER[13]/U1  (.D(
        \COREABC_0/ZREGISTER[13]/Y ), .CLK(GLA), .CLR(
        \COREABC_0/genblk2.RSTSYNC2_1_net_1 ), .Q(
        \COREABC_0/ZREGISTER[13] ));
    NOR3A \CoreUARTapb_0/m18  (.A(\CoreUARTapb_0/m18_0_net_1 ), .B(
        \COREABC_0_APB3master_PADDR[4] ), .C(
        \COREABC_0_APB3master_PADDR[2] ), .Y(\CoreUARTapb_0/N_117_mux )
        );
    AOI1 \COREABC_0_PADDR_M_RNIML6E8[13]  (.A(
        \COREABC_0_APB3master_PADDR[13] ), .B(
        \CORESPI_0.USPI.URF.N_62 ), .C(
        \CoreAPB3_0.u_mux_p_to_b3.PRDATA_iv_i_1[4] ), .Y(d_N_5_mux));
    NOR3C \CoreTimer_0/Count_RNIG9KR3[4]  (.A(\CoreTimer_0/m11_m6_e_6 )
        , .B(\CoreTimer_0/m11_m6_e_5 ), .C(\CoreTimer_0/N_3_0 ), .Y(
        \CoreTimer_0/N_12_0 ));
    NOR3C \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I96_un1_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N306 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N299 ), .C(
        \COREABC_0/un1_ACCUMULATOR.N291 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.I96_un1_Y ));
    XOR3 \CORESPI_0/USPI/UTXF/un1_counter_q_0_I_26  (.A(
        \CORESPI_0/USPI/UTXF/counter_q[5]_net_1 ), .B(
        \CORESPI_0/USPI/UTXF/counter_d_0_sqmuxa_0 ), .C(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_12_1_0[0] ), .Y(
        \CORESPI_0/USPI/UTXF/un1_counter_q0[5] ));
    NOR2A \CORESPI_0/USPI/UCC/spi_clk_tick_RNITL0P  (.A(
        \CORESPI_0/USPI/UCC/mtx_state_RNINJM1[1]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/N_53 ), .Y(\CORESPI_0/USPI/UCC/N_45 ));
    DFN1P0 \CORESPI_0/USPI/UCC/mtx_state[0]  (.D(
        \CORESPI_0/USPI/UCC/mtx_state_ns[0] ), .CLK(GLA), .PRE(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/mtx_state[0]_net_1 ));
    DFN1E1C0 \CoreTimer_0/Load[1]  (.D(
        \COREABC_0_APB3master_PWDATA[1] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreTimer_0/LoadEn_net_1 ), .Q(
        \CoreTimer_0/Load[1]_net_1 ));
    AO1A \CORESPI_0/USPI/URF/int_raw_RNO[5]  (.A(
        \CORESPI_0/USPI/URF/N_84 ), .B(
        \CORESPI_0/USPI/URF/int_raw[5]_net_1 ), .C(
        \CORESPI_0/USPI/rx_pktend ), .Y(
        \CORESPI_0/USPI/URF/int_raw_45[5] ));
    OR2 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I66_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.I66_un1_Y ), .B(
        \COREABC_0/un1_ACCUMULATOR.N273 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N304 ));
    NOR2A \CoreTimer_0/Count_RNIVDQU1[5]  (.A(\CoreTimer_0/N_5_0 ), .B(
        \CoreTimer_0/Count[5]_net_1 ), .Y(\CoreTimer_0/N_6_0 ));
    AO1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I92_Y_1  (.A(
        \COREABC_0/un33_ZREGISTER.N252 ), .B(
        \COREABC_0/un33_ZREGISTER.N255 ), .C(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I92_Y_0 ), .Y(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I92_Y_1 ));
    NOR3C \COREABC_0/un1_ACCUMULATOR_xhdl_31.ALUOUT_3_m[6]  (.A(
        \COREABC_0/ALUOUT_1_sqmuxa ), .B(\COREABC_0/ACCUMULATOR[6] ), 
        .C(\COREABC_0/ACCUM_IN[6] ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_3_m[6] ));
    MX2 \COREABC_0/ACCUMULATOR[10]/U0  (.A(\COREABC_0/ACCUMULATOR[10] )
        , .B(\COREABC_0/ACCUM_NEXT[10] ), .S(\COREABC_0/ACCUMULATOR4 ), 
        .Y(\COREABC_0/ACCUMULATOR[10]/Y ));
    MX2A \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0_RNO_0[0]  (
        .A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[0] ), .B(
        \CoreUARTapb_0/CUARTl0OI[0]_net_1 ), .S(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO08 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_114 ));
    NOR3B \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il_RNIVDB11[3]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_124 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0_239_d ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il[3]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0I23 ));
    NOR3B \CORESPI_0/USPI/URF/rdata53_0_a2_0  (.A(
        \COREABC_0_APB3master_PADDR[2] ), .B(
        \COREABC_0_APB3master_PADDR[4] ), .C(\CORESPI_0/USPI/URF/N_61 )
        , .Y(\CORESPI_0/USPI/URF/N_128 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m238  (.A(\COREABC_0/N_238 ), .B(
        \COREABC_0/N_132_0 ), .S(\COREABC_0/SMADDR_0[2] ), .Y(
        \COREABC_0/N_239 ));
    NOR2B \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTI0_RNO_3  (.A(
        \CoreUARTapb_0/CUARTI1OI[0] ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1[2]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTI0_17_i_a5_0 ));
    XA1A \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l_RNI6BFO[0]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l[0]_net_1 ), .B(
        \CoreUARTapb_0/CUARTO1OI[0]_net_1 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_ns_0_a2_1_1[5] ), 
        .Y(\CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_213 ));
    XA1 \COREABC_0/un1_ACCUMULATOR_m141_0  (.A(\COREABC_0/SMADDR[4] ), 
        .B(\COREABC_0/SMADDR[6] ), .C(\COREABC_0/N_274_mux_0 ), .Y(
        \COREABC_0/N_142_0 ));
    AX1D \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I107_Y_0  (.A(
        \COREABC_0/ADD_16x16_fast_I0_CO1_0_a1 ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I0_CO1_0 ), .C(
        \COREABC_0/ACCUMULATOR[1] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I107_Y_0 ));
    DFN1C0 \CoreTimer_0/PreScale[0]  (.D(
        \CoreTimer_0/PreScale_RNO[0]_net_1 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(\CoreTimer_0/PreScale[0]_net_1 ));
    DFN1 \COREABC_0/UROM.INSTR_ADDR[3]  (.D(
        \COREABC_0/INSTRUCTION[13] ), .CLK(GLA), .Q(
        \COREABC_0/UROM.INSTR_ADDR[3]_net_1 ));
    OR2 \COREABC_0/un1_ACCUMULATOR_xhdl_31.ALUOUT_4[5]  (.A(
        \COREABC_0/ACCUM_IN[5] ), .B(\COREABC_0/ACCUMULATOR[5] ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_4[5] ));
    INV \COREABC_0/DOJMP_RNO  (.A(\COREABC_0/ICYCLE[1]_net_1 ), .Y(
        \COREABC_0/ICYCLE_i[1] ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I29_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N226 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N229 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N264 ));
    DFN1C0 \CoreTimer_0/PreScale[7]  (.D(\CoreTimer_0/PreScale_n7 ), 
        .CLK(GLA), .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreTimer_0/PreScale[7]_net_1 ));
    NOR2B \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I93_un1_Y_0  (.A(
        \COREABC_0/un33_ZREGISTER.N285 ), .B(
        \COREABC_0/un33_ZREGISTER.N293 ), .Y(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I93_un1_Y_0 ));
    NOR3C \CORESPI_0/USPI/URXF/empty_out_RNO_0  (.A(
        \CORESPI_0/USPI/URXF/N_44 ), .B(\CORESPI_0/USPI/URXF/N_42 ), 
        .C(\CORESPI_0/USPI/URXF/empty_out_2_0_a3_1 ), .Y(
        \CORESPI_0/USPI/URXF/empty_out_2_0_a3_3 ));
    NOR2B \CoreTimer_0/iPRDATA_RNO_8[0]  (.A(
        \CoreTimer_0/RawTimInt_net_1 ), .B(
        \COREABC_0_APB3master_PADDR[4] ), .Y(
        \CoreTimer_0/RawTimInt_m_2_0 ));
    AO1D \CORESPI_0/USPI/UCC/mtx_state_RNO_2[3]  (.A(
        \CORESPI_0/USPI/UCC/mtx_state[3]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/spi_clk_tick_net_1 ), .C(
        \CORESPI_0/USPI/SPISS_2[0] ), .Y(
        \CORESPI_0/USPI/UCC/mtx_state_ns_0_i_0[3] ));
    NOR2B \CORESPI_0/USPI/UCC/rx_cmdsize_RNO_3  (.A(
        \CORESPI_0/USPI/rx_fifo_write ), .B(
        \CORESPI_0/USPI/UCC/un1_sresetn_4_i ), .Y(
        \CORESPI_0/USPI/UCC/rx_cmdsize_4_0 ));
    NOR3C \CoreTimer_0/CountPulse_RNO_0  (.A(
        \CoreTimer_0/PreScale[8]_net_1 ), .B(
        \CoreTimer_0/PreScale[9]_net_1 ), .C(
        \CoreTimer_0/NextCountPulse_0_sqmuxa_7_7 ), .Y(
        \CoreTimer_0/NextCountPulse48 ));
    DFN1C0 \CORESPI_0/USPI/UCC/mtx_spi_data_out  (.D(
        \CORESPI_0/USPI/UCC/mtx_spi_data_out_RNO_net_1 ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/mtx_spi_data_out_net_1 ));
    MX2 \CORESPI_0/USPI/UCC/mtx_state_RNO_0[4]  (.A(
        \CORESPI_0/USPI/UCC/mtx_state[4]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/mtx_state[3]_net_1 ), .S(
        \CORESPI_0/USPI/UCC/spi_clk_tick_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/N_65 ));
    DFN1E1C0 \CoreUARTapb_0/CUARTlOlI/CUARTO1I[4]  (.D(
        \COREABC_0_APB3master_PWDATA[4] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTlOlI/CUARTO1I5 ), 
        .Q(\CoreUARTapb_0/CUARTlOlI/CUARTO1I[4]_net_1 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_m92  (.A(\COREABC_0/N_92_0 ), .B(
        \COREABC_0/SMADDR[1] ), .Y(\COREABC_0/N_93 ));
    DFN1C1 \CORESPI_0/USPI/UCC/stxs_bitcnt[4]/U1  (.D(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[4]/Y ), .CLK(GLA), .CLR(
        \CORESPI_0/USPI/UCC/ssel_rx_q2_RNIBQH6_net_1 ), .Q(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[4] ));
    MX2 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTIl0l_RNI8C6D[2]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTIl0l[2]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTIl0l[3]_net_1 ), .S(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l[0]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_26 ));
    AND2 \CORESPI_0/USPI/UTXF/un1_counter_q_0_I_9  (.A(
        \CORESPI_0/USPI/UTXF/counter_q[3]_net_1 ), .B(
        \CORESPI_0/USPI/UTXF/counter_d_0_sqmuxa_0 ), .Y(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_0_3[0] ));
    MX2 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0_RNO_0[4]  (
        .A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/I_12 ), .B(
        \CoreUARTapb_0/CUARTl0OI[4]_net_1 ), .S(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO08 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_118 ));
    NOR2B \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I86_un1_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N301 ), .B(
        \COREABC_0/un33_ZREGISTER.N277 ), .Y(
        \COREABC_0/un33_ZREGISTER.I86_un1_Y ));
    NOR2B \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I4_G0N  (.A(
        \COREABC_0/ZREGISTER[4] ), .B(\COREABC_0_APB3master_PWDATA[4] )
        , .Y(\COREABC_0/un33_ZREGISTER.N216 ));
    OA1C \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI11_0_RNICJJ31  (.A(
        COREABC_0_APB3master_PENABLE), .B(\CoreUARTapb_0/PARITY_ERR_0 )
        , .C(COREABC_0_APB3master_PWRITE), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_115_mux ));
    MX2 \COREABC_0/un1_ACCUMULATOR_ZREGISTER_26[12]  (.A(
        \COREABC_0_APB3master_PWDATA[12] ), .B(
        \COREABC_0/un33_ZREGISTER[12] ), .S(
        \COREABC_0/UROM.INSTR_SCMD_0[0]_net_1 ), .Y(
        \COREABC_0/ZREGISTER_26[12] ));
    XA1 \COREABC_0/un1_ACCUMULATOR_xhdl_31.ALUOUT_5_m[3]  (.A(
        \COREABC_0/ACCUMULATOR[3] ), .B(\COREABC_0/ACCUM_IN[3] ), .C(
        \COREABC_0/ALUOUT_3_sqmuxa ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_5_m[3] ));
    NOR3A \CORESPI_0/USPI/URF/int_masked_m_0_a2_0[0]  (.A(
        \CORESPI_0/USPI/URF/rdata53_m1_e_1 ), .B(
        \COREABC_0_APB3master_PADDR[2] ), .C(
        \COREABC_0_APB3master_PADDR[3] ), .Y(
        \CORESPI_0.USPI.URF.N_126 ));
    DFN1E1C0 \CORESPI_0/USPI/URF/cfg_ssel[6]  (.D(
        \COREABC_0_APB3master_PWDATA[6] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/URF/N_119 ), .Q(
        \CORESPI_0.USPI.URF.cfg_ssel[6] ));
    OR3 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/un3_CUARTO0_I_22  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/DWACT_FDEC_E[0] ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/DWACT_FDEC_E[2] ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/DWACT_FDEC_E[3] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_6 ));
    DFN1 \COREABC_0/UROM.INSTR_SLOT[0]  (.D(\COREABC_0/INSTRUCTION[6] )
        , .CLK(GLA), .Q(\COREABC_0_APB3master_PADDR[12] ));
    NOR3A \CoreTimer_0/Count_RNIJLAI1[7]  (.A(\CoreTimer_0/m11_m6_e_4 )
        , .B(\CoreTimer_0/Count[8]_net_1 ), .C(
        \CoreTimer_0/Count[7]_net_1 ), .Y(\CoreTimer_0/m11_m6_e_6 ));
    AO1C \CORESPI_0/USPI/URF/int_raw_RNO[6]  (.A(
        \CORESPI_0/USPI/URF/N_83 ), .B(\CORESPI_0.USPI.URF.int_raw[6] )
        , .C(\CORESPI_0/USPI/rx_fifo_empty ), .Y(
        \CORESPI_0/USPI/URF/int_raw_48[6] ));
    OA1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I25_Y  (.A(
        \COREABC_0_APB3master_PWDATA[9] ), .B(\COREABC_0/ZREGISTER[9] )
        , .C(\COREABC_0/un33_ZREGISTER.N235 ), .Y(
        \COREABC_0/un33_ZREGISTER.N260 ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_un1_m1_e_0_0  (.A(
        \COREABC_0/RAMRDATA[8] ), .B(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux ), .Y(
        \COREABC_0/un1_ACCUMULATOR.un1_m1_e_0_0 ));
    NOR2 \COREABC_0/un1_ACCUMULATOR_ADD_m5_i_a5_0  (.A(
        \COREABC_0/ACCUMULATOR[13] ), .B(\COREABC_0/RAMRDATA[13] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_11 ));
    MX2 \CoreUARTapb_0/CUARTOOII_RNO_0[4]  (.A(\CoreUARTapb_0/N_60_0 ), 
        .B(\CoreUARTapb_0/N_61_0 ), .S(\COREABC_0_APB3master_PADDR[4] )
        , .Y(\CoreUARTapb_0/N_62_0 ));
    NOR3A \COREABC_0/URAM.UR/UG3.UR_xhdl12/Ram256x16_R0C0_RNI4G911_0  
        (.A(\COREABC_0/un1_ACCUMULATOR.un7_m1_e_0_1 ), .B(
        \COREABC_0/r_m1tt_N_3_mux ), .C(\COREABC_0/RAMRDATA[2] ), .Y(
        \COREABC_0/URAM.UR/UG3.UR_xhdl12/Ram256x16_R0C0_RNI4G911_0_net_1 )
        );
    OA1A \COREABC_0/un1_ACCUMULATOR_PWDATA_M_v[7]  (.A(
        \COREABC_0/UROM.INSTR_SCMD[1]_net_1 ), .B(
        \COREABC_0/UROM.INSTR_CMD[0]_net_1 ), .C(
        \COREABC_0/ACCUMULATOR[7] ), .Y(\COREABC_0/MUX1[7] ));
    NOR2B \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I94_un1_Y_0  (.A(
        \COREABC_0/un33_ZREGISTER.N287 ), .B(
        \COREABC_0/un33_ZREGISTER.N295 ), .Y(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I94_un1_Y_0 ));
    AO1 \CORESPI_0/USPI/UCC/stxs_bitsel_RNO[0]  (.A(
        \CORESPI_0/USPI/UCC/un1_stxs_state4[0] ), .B(
        \CORESPI_0/USPI/UCC/clock_rx_fe ), .C(
        \CORESPI_0/USPI/UCC/DWACT_ADD_CI_0_partial_sum[0] ), .Y(
        \CORESPI_0/USPI/UCC/stxs_bitsel_6[0] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_ZREGISTER_26[6]  (.A(
        \COREABC_0_APB3master_PWDATA[6] ), .B(
        \COREABC_0/un33_ZREGISTER[6] ), .S(
        \COREABC_0/UROM.INSTR_SCMD[0]_net_1 ), .Y(
        \COREABC_0/ZREGISTER_26[6] ));
    MX2 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2[7]  (.A(d_N_5_mux_0), 
        .B(\CORESPI_0.USPI.URF.rdata_iv_4[7] ), .S(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_N_7_mux ), .Y(N_21));
    OR2 \COREABC_0/un1_ACCUMULATOR_STKPTR_c1  (.A(
        \COREABC_0/STKPTR[1] ), .B(\COREABC_0/STKPTR[0] ), .Y(
        \COREABC_0/STKPTR_c1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_PWDATA_M[3]  (.A(
        \COREABC_0/UROM.INSTR_DATA[3]_net_1 ), .B(\COREABC_0/MUX1[3] ), 
        .S(\COREABC_0/USE_ACC_1 ), .Y(\COREABC_0_APB3master_PWDATA[3] )
        );
    OA1 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNI98UP1  (.A(
        \COREABC_0/ACCUMULATOR[9] ), .B(\COREABC_0/ACCUM_IN[9] ), .C(
        \COREABC_0/ALUOUT_2_sqmuxa ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_4_m[9] ));
    NOR2A \CORESPI_0/USPI/UCC/spi_clk_count_RNO[0]  (.A(
        \CORESPI_0/USPI/UCC/spi_clk_count_1_sqmuxa ), .B(
        \CORESPI_0/USPI/UCC/spi_clk_count[0]_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/spi_clk_count_n0 ));
    XA1B \CoreTimer_0/Count_RNO[30]  (.A(\CoreTimer_0/N_31_0 ), .B(
        \CoreTimer_0/Count[30]_net_1 ), .C(\CoreTimer_0/un1_PreScale8 )
        , .Y(\CoreTimer_0/N_437_i ));
    DFN1E1C0 \CoreUARTapb_0/genblk1.CUARTI1OI[1]  (.D(
        \COREABC_0_APB3master_PWDATA[1] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTI1OI4 ), .Q(
        \CoreUARTapb_0/CUARTI1OI[1] ));
    NOR2A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_a0_0[6]  (.A(
        \CORESPI_0.USPI.URF.cfg_ssel[6] ), .B(
        \CORESPI_0.USPI.URF.N_62 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_a0_0[6]_net_1 ));
    NOR2B \CORESPI_0/USPI/UCC/mtx_state_RNI0J1I2[4]  (.A(
        \CORESPI_0/USPI/UCC/N_91 ), .B(
        \CORESPI_0/USPI/UCC/txfifo_dhold_dec[0] ), .Y(
        \CORESPI_0/USPI/UCC/N_98 ));
    DFN1E1C0 \CoreUARTapb_0/CUARTlOlI/CUARTO1I[5]  (.D(
        \COREABC_0_APB3master_PWDATA[5] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTlOlI/CUARTO1I5 ), 
        .Q(\CoreUARTapb_0/CUARTlOlI/CUARTO1I[5]_net_1 ));
    NOR2 \COREABC_0/UROM.INSTR_SLOT_RNI2NF51[0]  (.A(
        \COREABC_0_APB3master_PADDR[12] ), .B(
        \COREABC_0/UROM.INSTR_SCMD_RNIOF7U[1]_net_1 ), .Y(
        \COREABC_0/r_m1_N_6_mux_0 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_RAMADDR_1_sqmuxa  (.A(
        \COREABC_0/un1_ACCUMULATOR.RAMADDR_1_sqmuxa_0 ), .B(
        \COREABC_0/URAM.un1_UROM.INSTR_SLOT ), .Y(
        \COREABC_0/RAMADDR_1_sqmuxa ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I62_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N273 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N270 ), .C(
        \COREABC_0/un1_ACCUMULATOR.N269 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N300 ));
    OA1B \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0_RNIN0TO3[1]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_114_mux ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/i1_mux ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0[1]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/i11_mux ));
    DFN1E1 \CORESPI_0/USPI/URXF/fifo_mem_q_fifo_mem_q_ram1_[3]  (.D(
        \CORESPI_0/USPI/rx_fifo_data_in[2] ), .CLK(GLA), .E(
        \CORESPI_0/USPI/URXF/awe1 ), .Q(\CORESPI_0/USPI/URXF/ram1_3 ));
    DFN1E1 \CORESPI_0/USPI/URXF/fifo_mem_q_fifo_mem_q_ram3_[3]  (.D(
        \CORESPI_0/USPI/rx_fifo_data_in[2] ), .CLK(GLA), .E(
        \CORESPI_0/USPI/URXF/N_54 ), .Q(\CORESPI_0/USPI/URXF/ram3_3 ));
    AO1 \CoreTimer_0/iPRDATA_RNO[11]  (.A(
        \CoreTimer_0/Count[11]_net_1 ), .B(
        \CoreTimer_0/DataOut_1_sqmuxa_net_1 ), .C(
        \CoreTimer_0/Load_m[11] ), .Y(\CoreTimer_0/PrdataNext_1[11] ));
    AND3B \COREABC_0/un1_ACCUMULATOR_DOISR_0_sqmuxa  (.A(
        \COREABC_0/ICYCLE[0]_net_1 ), .B(\COREABC_0/ICYCLE[1]_net_1 ), 
        .C(\COREABC_0/ISR4 ), .Y(\COREABC_0/DOISR_0_sqmuxa ));
    DFN1E1C0 \CORESPI_0/USPI/URF/control1[2]  (.D(
        \COREABC_0_APB3master_PWDATA[2] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/URF/N_118 ), .Q(
        \CORESPI_0/USPI/URF/control1[2]_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m34_0  (.A(\COREABC_0/N_33_1 ), .B(
        \COREABC_0/N_34_1 ), .S(\COREABC_0/SMADDR_1[1] ), .Y(
        \COREABC_0/N_35_1 ));
    XA1A \COREABC_0/un1_ACCUMULATOR_STBRAM_7_0_a3_2  (.A(
        \COREABC_0/UROM.INSTR_SCMD_0[0]_net_1 ), .B(
        \COREABC_0/xhdl_41.flagvalue ), .C(
        \COREABC_0/STKPTR_0_sqmuxa_2 ), .Y(\COREABC_0/N_500 ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIQVB2K  (.A(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_2[3] ), .B(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[3] ), .C(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_3[3] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[3] ));
    MX2 \CORESPI_0/USPI/URF/control2_RNO[5]  (.A(
        \COREABC_0_APB3master_PWDATA[5] ), .B(
        \CORESPI_0/USPI/URF/control2[5]_net_1 ), .S(
        \CORESPI_0/USPI/URF/N_67 ), .Y(\CORESPI_0/USPI/URF/N_26 ));
    XOR2 \COREABC_0/un1_ACCUMULATOR_STBRAM_7_0_x3_0  (.A(
        \COREABC_0/UROM.INSTR_SCMD[1]_net_1 ), .B(
        \COREABC_0/UROM.INSTR_SCMD[2]_net_1 ), .Y(\COREABC_0/N_490_i ));
    MX2 \CoreTimer_0/Count_RNO_0[9]  (.A(\CoreTimer_0/Count[9]_net_1 ), 
        .B(\CoreTimer_0/Load[9]_net_1 ), .S(
        \CoreTimer_0/un1_PreScale8_0 ), .Y(\CoreTimer_0/N_216 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_STBFLAG_5  (.A(\COREABC_0/N_695 ), 
        .B(\COREABC_0/STBFLAG_2 ), .S(\COREABC_0/STBACCUM_4_sqmuxa ), 
        .Y(\COREABC_0/STBFLAG_5 ));
    NOR2A \CoreTimer_0/Count_RNITJ992[6]  (.A(\CoreTimer_0/N_6_0 ), .B(
        \CoreTimer_0/Count[6]_net_1 ), .Y(\CoreTimer_0/N_7_0 ));
    INV \CORESPI_0/USPI/UCC/SYNC3_stxp_strobetx_RNO  (.A(
        \CORESPI_0/USPI/UCC/SYNC2_stxp_strobetx_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/SYNC2_stxp_strobetx_i ));
    XOR2 \COREABC_0/un37_SMADDR_I_5  (.A(\COREABC_0/SMADDR[0] ), .B(
        \COREABC_0/SMADDR[1] ), .Y(\COREABC_0/I_5 ));
    NOR2A \CoreTimer_0/Count_RNI65S91[3]  (.A(\CoreTimer_0/N_3_0 ), .B(
        \CoreTimer_0/Count[3]_net_1 ), .Y(\CoreTimer_0/N_4_0 ));
    NOR2B \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I82_un1_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N302 ), .B(
        \COREABC_0/un33_ZREGISTER.N295 ), .Y(
        \COREABC_0/un33_ZREGISTER.I82_un1_Y ));
    DFN1C0 \CORESPI_0/USPI/URF/sticky[1]  (.D(
        \CORESPI_0/USPI/URF/N_46 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(\CORESPI_0/USPI/URF/sticky[1]_net_1 ));
    IOPAD_TRI \SPISDO_pad/U0/U0  (.D(\SPISDO_pad/U0/NET1 ), .E(
        \SPISDO_pad/U0/NET2 ), .PAD(SPISDO));
    MX2 \CoreUARTapb_0/CUARTlOlI/CUARTIOl_RNIAQTV[4]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIOl[4]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTlOl[4] ), .S(
        \CoreUARTapb_0/PARITY_ERR_0 ), .Y(\CoreUARTapb_0/CUARTOIII[4] )
        );
    MX2 \COREABC_0/un1_ACCUMULATOR_m133_0  (.A(\COREABC_0/N_131_0 ), 
        .B(\COREABC_0/N_133_0 ), .S(\COREABC_0/SMADDR_1[1] ), .Y(
        \COREABC_0/N_134_0 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m130_0  (.A(\COREABC_0/N_14_1 ), .B(
        \COREABC_0/N_130_0 ), .S(\COREABC_0/SMADDR_1[2] ), .Y(
        \COREABC_0/N_131_0 ));
    DFN1E0P0 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll1  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll1_4 ), .CLK(GLA), 
        .PRE(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_167 ), .Q(TX_c));
    OR3A \CoreTimer_0/Count_RNO_0[11]  (.A(\CoreTimer_0/N_9_0 ), .B(
        \CoreTimer_0/Count[9]_net_1 ), .C(
        \CoreTimer_0/Count[10]_net_1 ), .Y(\CoreTimer_0/Count_26_0 ));
    DFN1C0 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0[6]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[6] ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[6] ));
    XNOR2 \CoreTimer_0/Count_RNO[10]  (.A(\CoreTimer_0/N_217 ), .B(
        \CoreTimer_0/N_218 ), .Y(\CoreTimer_0/N_417 ));
    NOR3 \CORESPI_0/USPI/URF/control15_0_a2_0  (.A(
        \COREABC_0_APB3master_PADDR_0[3] ), .B(
        \COREABC_0_APB3master_PADDR[4] ), .C(
        \COREABC_0_APB3master_PADDR[2] ), .Y(
        \CORESPI_0.USPI.URF.N_127 ));
    OR3 \CORESPI_0/USPI/URF/int_raw_RNIKO2P1[3]  (.A(
        \CORESPI_0/USPI/URF/int_masked_m[3] ), .B(
        \CORESPI_0/USPI/URF/int_raw_m[3] ), .C(
        \CORESPI_0/USPI/URF/CLK_DIV_m[3] ), .Y(
        \CORESPI_0/USPI/URF/rdata_0_iv_2_1[3] ));
    NOR2A \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_RNO[0]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[1]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_123 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_11[0] ));
    DFN1C0 \COREABC_0/ACCUMULATOR[11]/U1  (.D(
        \COREABC_0/ACCUMULATOR[11]/Y ), .CLK(GLA), .CLR(PRESETN), .Q(
        \COREABC_0/ACCUMULATOR[11] ));
    NOR2A \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_RNO[4]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[5]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_123 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_11[4] ));
    NOR2A \CORESPI_0/USPI/UCC/stxs_dataerr_RNISQLI  (.A(
        \CORESPI_0/USPI/UCC/txfifo_davailable_net_1 ), .B(
        \CORESPI_0/USPI/UCC/stxs_dataerr ), .Y(
        \CORESPI_0/USPI/UCC/stxs_strobetx5 ));
    NOR2 \COREABC_0/UROM.INSTR_SLOT_RNI2NF51_0[0]  (.A(
        \COREABC_0_APB3master_PADDR[12] ), .B(
        \COREABC_0/UROM.INSTR_SCMD_RNIOF7U[1]_net_1 ), .Y(
        \COREABC_0/r_m1_N_6_mux ));
    NOR3C \CoreTimer_0/iPRDATA_RNO_3[2]  (.A(
        \CoreTimer_0/PrdataNextEn_net_1 ), .B(
        \CoreTimer_0/un2_CtrlEn_net_1 ), .C(
        \CoreTimer_0/CtrlReg[2]_net_1 ), .Y(\CoreTimer_0/CtrlReg_m[2] )
        );
    DFN1E1 \CORESPI_0/USPI/URXF/fifo_mem_q_fifo_mem_q_ram2_[0]  (.D(
        \CORESPI_0/USPI/rx_fifo_first_in ), .CLK(GLA), .E(
        \CORESPI_0/USPI/URXF/awe2 ), .Q(\CORESPI_0/USPI/URXF/ram2_0 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m82_0  (.A(\COREABC_0/I_28 ), .B(
        \COREABC_0_APB3master_PWDATA[10] ), .S(
        \COREABC_0/URAM.un1_UROM.INSTR_SLOT ), .Y(\COREABC_0/N_83_0 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m239_0  (.A(\COREABC_0/N_239 ), .B(
        \COREABC_0/N_23_1 ), .S(\COREABC_0/SMADDR[1] ), .Y(
        \COREABC_0/N_240_0 ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I0_CO1_0_a1  (.A(
        \COREABC_0/RAMRDATA[0] ), .B(\COREABC_0/ACCUMULATOR[0] ), .C(
        \COREABC_0/r_m1_N_6_mux_0 ), .Y(
        \COREABC_0/ADD_16x16_fast_I0_CO1_0_a1 ));
    NOR3A \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0_RNO[4]  (
        .A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_118 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_RNII49F8[0]_net_1 ), 
        .C(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/un1_CUARTO0_0_sqmuxa_2 ), 
        .Y(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[4] ));
    NOR3C \CoreTimer_0/iPRDATA_RNO_0[15]  (.A(
        \CoreTimer_0/PrdataNextEn_net_1 ), .B(
        \CORESPI_0.USPI.URF.N_127 ), .C(\CoreTimer_0/Load[15]_net_1 ), 
        .Y(\CoreTimer_0/Load_m[15] ));
    DFN1C0 \CORESPI_0/USPI/UCC/SYNC1_msrxp_pktsel  (.D(
        \CORESPI_0/USPI/UCC/msrxs_pktsel ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/SYNC1_msrxp_pktsel_net_1 ));
    DFN1C0 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l[1]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_10 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l[1]_net_1 ));
    DFN1E1P0 \CORESPI_0/USPI/UCC/mtx_first  (.D(
        \CORESPI_0/USPI/UCC/N_45 ), .CLK(GLA), .PRE(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/UCC/N_43 ), .Q(
        \CORESPI_0/USPI/UCC/mtx_first_net_1 ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_DOJMP_1_sqmuxa_1  (.A(
        \COREABC_0/N_681 ), .B(\COREABC_0/UROM.INSTR_CMD[2]_net_1 ), 
        .C(\COREABC_0/DOISR ), .Y(
        \COREABC_0/un1_ACCUMULATOR.DOJMP_1_sqmuxa_1 ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ACCUM_NEXT_iv_3[2]  (.A(
        \COREABC_0/xhdl_31.ALUOUT_3_m[2] ), .B(\COREABC_0/IO_IN_m[2] ), 
        .C(\COREABC_0/xhdl_31.ALUOUT_5_m[2] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_3[2] ));
    XA1B \COREABC_0/un1_ACCUMULATOR_un1_m2  (.A(
        \COREABC_0/RAMRDATA[5] ), .B(
        \COREABC_0/UROM.INSTR_DATA[5]_net_1 ), .C(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux ), .Y(
        \COREABC_0/un1_m2 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m30_0  (.A(\COREABC_0/N_28_1 ), .B(
        \COREABC_0/N_30_1 ), .S(\COREABC_0/SMADDR[0] ), .Y(
        \COREABC_0/i12_mux ));
    DFN1E1C0 \CORESPI_0/USPI/URF/CLK_DIV[5]  (.D(
        \COREABC_0_APB3master_PWDATA[5] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/URF/N_120 ), .Q(
        \CORESPI_0/USPI/clk_div_val[5] ));
    OA1B \CORESPI_0/USPI/URF/sticky_RNO[0]  (.A(
        \CORESPI_0/USPI/tx_done ), .B(
        \CORESPI_0/USPI/URF/sticky[0]_net_1 ), .C(
        \CORESPI_0/USPI/tx_fifo_write ), .Y(\CORESPI_0/USPI/URF/N_44 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNITH1JP2  (.A(
        \COREABC_0/un1_ACCUMULATOR[7] ), .B(
        \COREABC_0/un1_ACCUM_NEXT9_1 ), .C(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[7] ), .Y(
        \COREABC_0/ACCUM_NEXT[7] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m108_0  (.A(
        \COREABC_0_APB3master_PWDATA[9] ), .B(
        \COREABC_0/un33_ZREGISTER[9] ), .S(
        \COREABC_0/UROM.INSTR_SCMD_0[0]_net_1 ), .Y(
        \COREABC_0/N_109_0 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m135_0  (.A(\COREABC_0/N_26_1 ), .B(
        \COREABC_0/N_128_0 ), .S(\COREABC_0/SMADDR_1[1] ), .Y(
        \COREABC_0/N_136_0 ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_ACCUMULATOR_m_0[12]  (.A(
        \COREABC_0/un1_ACCUMULATOR.ALUOUT_5_sqmuxa_0 ), .B(
        \COREABC_0/ACCUMULATOR[12] ), .C(\COREABC_0/xhdl_31.MSEL[1] ), 
        .Y(\COREABC_0/ACCUMULATOR_m_0[12] ));
    NOR2B \CoreTimer_0/CountPulse_RNIRNFE  (.A(
        \CoreTimer_0/CountPulse_net_1 ), .B(
        \CoreTimer_0/CtrlReg[0]_net_1 ), .Y(\CoreTimer_0/un1_CtrlReg ));
    DFN1E1P0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIOll[0]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_7 ), .CLK(GLA), .PRE(
        COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0_0_sqmuxa ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIOll[0]_net_1 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIMSH26  (.A(
        \COREABC_0/xhdl_31.ALUOUT_5[11] ), .B(
        \COREABC_0/ALUOUT_3_sqmuxa ), .C(
        \COREABC_0/xhdl_31.ALUOUT_4_m[11] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_2[11] ));
    DFN1E0C0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[4]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_11[4] ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_130_mux ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[4]_net_1 ));
    MX2 \CoreTimer_0/Count_RNO_1[10]  (.A(
        \CoreTimer_0/Count[10]_net_1 ), .B(
        \CoreTimer_0/Load[10]_net_1 ), .S(
        \CoreTimer_0/un1_PreScale8_0 ), .Y(\CoreTimer_0/N_218 ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIEG1OK  (.A(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_2[13] ), .B(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[13] ), .C(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_3[13] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[13] ));
    DFN1C0 \CORESPI_0/USPI/UCC/spi_clk_count[3]  (.D(
        \CORESPI_0/USPI/UCC/spi_clk_count_n3 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/spi_clk_count[3]_net_1 ));
    DFN1P0 \COREABC_0/SMADDR_1[1]/U1  (.D(\COREABC_0/SMADDR_1[1]/Y ), 
        .CLK(GLA), .PRE(\COREABC_0/genblk2.RSTSYNC2_0_net_1 ), .Q(
        \COREABC_0/SMADDR_1[1] ));
    MX2 \COREABC_0/ZREGISTER[4]/U0  (.A(\COREABC_0/ZREGISTER_26[4] ), 
        .B(\COREABC_0/ZREGISTER[4] ), .S(\COREABC_0/un1_ICYCLE_4 ), .Y(
        \COREABC_0/ZREGISTER[4]/Y ));
    MX2 \COREABC_0/un1_ACCUMULATOR_RAMADDR[2]  (.A(\COREABC_0/I_7_0 ), 
        .B(\COREABC_0/UROM.INSTR_ADDR[2]_net_1 ), .S(
        \COREABC_0/RAMADDR_1_sqmuxa ), .Y(\COREABC_0/RAMADDR[2] ));
    NOR3 \CORESPI_0/USPI/UCON/rx_fifo_read_0_a2_1_1  (.A(
        \COREABC_0_APB3master_PADDR[5] ), .B(
        COREABC_0_APB3master_PWRITE), .C(
        \COREABC_0_APB3master_PADDR[2] ), .Y(
        \CORESPI_0/USPI/UCON/rx_fifo_read_0_a2_1_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m189_0  (.A(\COREABC_0/N_188 ), .B(
        \COREABC_0/N_189_0 ), .S(\COREABC_0/SMADDR_0[5] ), .Y(
        \COREABC_0/N_190_0 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_xhdl_31.ALUOUT_3_m_0[8]  (.A(
        \COREABC_0/ACCUMULATOR[8] ), .B(\COREABC_0/ALUOUT_1_sqmuxa ), 
        .Y(\COREABC_0/un1_ACCUMULATOR.xhdl_31.ALUOUT_3_m_0[8] ));
    MX2 \COREABC_0/ZREGISTER[0]/U0  (.A(\COREABC_0/ZREGISTER_26[0] ), 
        .B(\COREABC_0/ZREGISTER[0] ), .S(\COREABC_0/un1_ICYCLE_4 ), .Y(
        \COREABC_0/ZREGISTER[0]/Y ));
    AND2A \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_0  (.A(
        \COREABC_0/UROM.INSTR_SCMD[0]_net_1 ), .B(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ALUOUT_2_sqmuxa_0 ));
    OA1A \COREABC_0/un1_ACCUMULATOR_PWDATA_M_v[3]  (.A(
        \COREABC_0/UROM.INSTR_SCMD[1]_net_1 ), .B(
        \COREABC_0/UROM.INSTR_CMD[0]_net_1 ), .C(
        \COREABC_0/ACCUMULATOR[3] ), .Y(\COREABC_0/MUX1[3] ));
    NOR2 \CoreTimer_0/Count_RNIR5TI[14]  (.A(
        \CoreTimer_0/Count[14]_net_1 ), .B(
        \CoreTimer_0/Count[15]_net_1 ), .Y(\CoreTimer_0/m23_m4_e_0_4 ));
    XA1 \COREABC_0/un1_ACCUMULATOR_xhdl_31.ALUOUT_5_m[10]  (.A(
        \COREABC_0/ACCUMULATOR[10] ), .B(\COREABC_0/ACCUM_IN[10] ), .C(
        \COREABC_0/ALUOUT_3_sqmuxa ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_5_m[10] ));
    DFN1C0 \COREABC_0/ISR/U1  (.D(\COREABC_0/ISR/Y ), .CLK(GLA), .CLR(
        \COREABC_0/genblk2.RSTSYNC2_1_net_1 ), .Q(INTACT));
    MX2 \CoreTimer_0/Count_RNO_0[4]  (.A(\CoreTimer_0/Count[4]_net_1 ), 
        .B(\CoreTimer_0/Load[4]_net_1 ), .S(
        \CoreTimer_0/un1_PreScale8_0 ), .Y(\CoreTimer_0/N_206 ));
    AO1A \CORESPI_0/USPI/URF/int_raw_RNO[4]  (.A(
        \CORESPI_0/USPI/URF/N_85 ), .B(\CORESPI_0.USPI.URF.int_raw[4] )
        , .C(\CORESPI_0/USPI/rx_cmdsize ), .Y(
        \CORESPI_0/USPI/URF/int_raw_42[4] ));
    DFN1C0 \CoreUARTapb_0/CUARTlOlI/CUARTOI0  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTl1l_net_1 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTOI0_net_1 ));
    OR3 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/un3_CUARTO0_I_33  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[9] ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[10] ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[11] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/DWACT_FDEC_E[7] ));
    DFN1C0 \CORESPI_0/USPI/URF/int_raw[3]  (.D(
        \CORESPI_0/USPI/URF/int_raw_39[3] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(\CORESPI_0/USPI/URF/int_raw[3]_net_1 )
        );
    OR2 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I11_P0N  (.A(
        \COREABC_0/ZREGISTER[11] ), .B(
        \COREABC_0_APB3master_PWDATA[11] ), .Y(
        \COREABC_0/un33_ZREGISTER.N238 ));
    DFN1 \COREABC_0/UROM.INSTR_DATA[0]  (.D(
        \COREABC_0/INSTRUCTION[26] ), .CLK(GLA), .Q(
        \COREABC_0/UROM.INSTR_DATA[0]_net_1 ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ADD_m5_i  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_m5_i_0 ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_11 ), .C(
        \COREABC_0/r_m1_N_6_mux_0 ), .Y(\COREABC_0/ADD_m5_i ));
    OR3A \CoreTimer_0/Count_RNO_0[13]  (.A(\CoreTimer_0/N_12_0 ), .B(
        \CoreTimer_0/Count[12]_net_1 ), .C(
        \CoreTimer_0/un1_PreScale8_0 ), .Y(\CoreTimer_0/N_223 ));
    DFN1C0 \CORESPI_0/USPI/UCC/mtx_state[5]  (.D(
        \CORESPI_0/USPI/UCC/mtx_state_ns[5] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/mtx_state[5]_net_1 ));
    MX2C \CoreUARTapb_0/CUARTOOII_RNO_3[2]  (.A(
        \CoreUARTapb_0/PARITY_ERR ), .B(\CoreUARTapb_0/CUARTI1OI[2] ), 
        .S(\COREABC_0_APB3master_PADDR[2] ), .Y(\CoreUARTapb_0/i1_mux )
        );
    OA1 \CORESPI_0/USPI/URXF/empty_out_RNO_1  (.A(
        \CORESPI_0/USPI/URXF/N_57 ), .B(\CORESPI_0/USPI/URXF/N_56 ), 
        .C(\CORESPI_0/USPI/URXF/N_38 ), .Y(
        \CORESPI_0/USPI/URXF/empty_out_2_0_a3_2 ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_m38_0  (.A(\COREABC_0/N_38_1 ), 
        .B(\COREABC_0/SMADDR[2] ), .Y(\COREABC_0/N_39_1 ));
    NOR2B \CORESPI_0/USPI/UTXF/full_out_RNO_1  (.A(
        \CORESPI_0/USPI/UTXF/N_11 ), .B(\CORESPI_0/USPI/UTXF/N_38 ), 
        .Y(\CORESPI_0/USPI/UTXF/full_out_2_0_a3_1 ));
    DFN1P0 \CORESPI_0/USPI/URXF/empty_out  (.D(
        \CORESPI_0/USPI/URXF/empty_out_2 ), .CLK(GLA), .PRE(
        COREABC_0_PRESETN_0), .Q(\CORESPI_0/USPI/rx_fifo_empty ));
    NOR3C \COREABC_0/un1_ACCUMULATOR_ALUOUT_3_sqmuxa  (.A(
        \COREABC_0/ALUOUT_1_sqmuxa_1 ), .B(
        \COREABC_0/UROM.INSTR_SCMD[1]_net_1 ), .C(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_0 ), .Y(
        \COREABC_0/ALUOUT_3_sqmuxa ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_ADD_m2_i_a3  (.A(
        \COREABC_0/un1_ACCUMULATOR.N211 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N214 ), .C(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_3_mux_0 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_7_1 ));
    AO1 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_RNI2FSA1[1]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1[1]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1[2]_net_1 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1[0]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/un1_CUARTO1_3 ));
    XA1B \CoreTimer_0/PreScale_RNO[3]  (.A(
        \CoreTimer_0/PreScale[3]_net_1 ), .B(\CoreTimer_0/PreScale_c2 )
        , .C(\CoreTimer_0/PreScale8 ), .Y(\CoreTimer_0/PreScale_n3 ));
    NOR3C \CORESPI_0/USPI/UTXF/full_out_RNIIRPK3  (.A(
        \CORESPI_0/USPI/tx_fifo_write ), .B(
        \CORESPI_0/USPI/tx_fifo_full_i_0 ), .C(
        \CORESPI_0/USPI/UTXF/wr_pointer_d9 ), .Y(
        \CORESPI_0/USPI/UTXF/N_52 ));
    MX2 \COREABC_0/SMADDR[5]/U0  (.A(\COREABC_0/SMADDR_21[5] ), .B(
        \COREABC_0/SMADDR[5] ), .S(\COREABC_0/un1_ICYCLE_6 ), .Y(
        \COREABC_0/SMADDR[5]/Y ));
    MX2C \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0_RNO[0]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_29_0 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_38 ), .S(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0[0]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_380 ));
    NOR2 
        \COREABC_0/un1_ACCUMULATOR_xhdl_41.xhdl_40_l3.un13_flagvalue_6  
        (.A(\COREABC_0/ZREGISTER[6] ), .B(\COREABC_0/ZREGISTER[5] ), 
        .Y(
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.xhdl_40_l3.un13_flagvalue_6 )
        );
    DFN1 \CoreUARTapb_0/CUARTlOlI/genblk2.CUARTl11/CUARTOOOI[4]  (.D(
        \CoreUARTapb_0/CUARTlOlI/genblk2.CUARTl11/CUARTl00I[4] ), .CLK(
        GLA), .Q(\CoreUARTapb_0/CUARTlOlI/CUARTI1I[4] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_ACCUM_IN[1]  (.A(
        \COREABC_0/UROM.INSTR_DATA[1]_net_1 ), .B(
        \COREABC_0/RAMRDATA[1] ), .S(\COREABC_0/un7_MUXIR[0] ), .Y(
        \COREABC_0/ACCUM_IN[1] ));
    NOR3B \CoreTimer_0/CtrlReg_RNIOLNE3[2]  (.A(
        \CoreTimer_0/CtrlEn_net_1 ), .B(\CoreTimer_0/CtrlReg[2]_net_1 )
        , .C(\COREABC_0_APB3master_PWDATA[2] ), .Y(
        \CoreTimer_0/OneShotClr_1 ));
    NOR2A \CORESPI_0/USPI/UCC/cfg_enable_P1_RNIFQBQ1  (.A(
        \CORESPI_0/USPI/UCC/N_45 ), .B(\CORESPI_0/USPI/UCC/N_56 ), .Y(
        \CORESPI_0/USPI/UCC/mtx_state_0_sqmuxa ));
    AO1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I40_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N207 ), .B(
        \COREABC_0/un33_ZREGISTER.N211 ), .C(
        \COREABC_0/un33_ZREGISTER.N210 ), .Y(
        \COREABC_0/un33_ZREGISTER.N275 ));
    NOR3A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_2_2[6]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_2_0[6]_net_1 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_a0[6]_net_1 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_a3[6]_net_1 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_2_2[6]_net_1 ));
    MAJ3 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I26_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N228 ), .B(
        \COREABC_0_APB3master_PWDATA[9] ), .C(\COREABC_0/ZREGISTER[9] )
        , .Y(\COREABC_0/un33_ZREGISTER.N261 ));
    AO1 \CORESPI_0/USPI/UCC/mtx_consecutive_RNO_0  (.A(
        \CORESPI_0/USPI/UCC/un1_sresetn_11_0_a2_0 ), .B(
        \CORESPI_0/USPI/UCC/N_49 ), .C(\CORESPI_0/USPI/UCC/N_78 ), .Y(
        \CORESPI_0/USPI/UCC/un1_sresetn_11 ));
    OA1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I37_Y  (.A(
        \COREABC_0_APB3master_PWDATA[4] ), .B(\COREABC_0/ZREGISTER[4] )
        , .C(\COREABC_0/un33_ZREGISTER.N214 ), .Y(
        \COREABC_0/un33_ZREGISTER.N272 ));
    NOR3C \CoreTimer_0/iPRDATA_RNO_0[8]  (.A(
        \CoreTimer_0/PrdataNextEn_net_1 ), .B(
        \CORESPI_0.USPI.URF.N_127 ), .C(\CoreTimer_0/Load[8]_net_1 ), 
        .Y(\CoreTimer_0/Load_m[8] ));
    NOR3A \CORESPI_0/USPI/URXF/rd_pointer_q_RNO[0]  (.A(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_partial_sum_1[0] ), .B(
        \CORESPI_0/USPI/fiforstrx ), .C(\CORESPI_0/USPI/URXF/N_52 ), 
        .Y(\CORESPI_0/USPI/URXF/rd_pointer_q_3[0] ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I4_P0N_a1_0  (.A(
        \COREABC_0/UROM.INSTR_DATA[4]_net_1 ), .B(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_1 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I4_P0N_a1_0 ));
    NOR2A \CORESPI_0/USPI/UCC/stxs_state_RNI9VKJ_0  (.A(
        \CORESPI_0/USPI/UCC/stxs_state_net_1 ), .B(
        \CORESPI_0/USPI/UCC/un1_stxs_bitsel_1 ), .Y(
        \CORESPI_0/USPI/UCC/stxs_bitcnt_0_sqmuxa ));
    AX1C \COREABC_0/un37_SMADDR_I_26  (.A(\COREABC_0/SMADDR[8] ), .B(
        \COREABC_0/un37_SMADDR.U1.DWACT_FINC_E[4] ), .C(
        \COREABC_0/SMADDR[9] ), .Y(\COREABC_0/I_26 ));
    XA1 \COREABC_0/un1_ACCUMULATOR_xhdl_31.ALUOUT_5_m[12]  (.A(
        \COREABC_0/ACCUMULATOR[12] ), .B(\COREABC_0/ACCUM_IN[12] ), .C(
        \COREABC_0/ALUOUT_3_sqmuxa ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_5_m[12] ));
    AX1D \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I114_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N296 ), .B(
        \COREABC_0/un1_ACCUMULATOR.I84_un1_Y ), .C(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I114_Y_0 ), .Y(
        \COREABC_0/un1_ACCUMULATOR[8] ));
    XOR3 \CORESPI_0/USPI/URXF/un1_counter_q_1_I_21  (.A(
        \CORESPI_0/USPI/URXF/counter_q[4]_net_1 ), .B(
        \CORESPI_0/USPI/URXF/counter_d_0_sqmuxa_2 ), .C(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_2_0[0] ), .Y(
        \CORESPI_0/USPI/URXF/un1_counter_q1[4] ));
    DFN1E1C0 \CORESPI_0/USPI/UCC/clk_div_val_reg[3]  (.D(
        \CORESPI_0/USPI/clk_div_val[3] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(
        \CORESPI_0/USPI/UCC/mtx_state_RNINJM1[1]_net_1 ), .Q(
        \CORESPI_0/USPI/UCC/clk_div_val_reg[3]_net_1 ));
    DFN1E1P0 \CoreTimer_0/Count[2]  (.D(\CoreTimer_0/N_409 ), .CLK(GLA)
        , .PRE(COREABC_0_PRESETN_0), .E(\CoreTimer_0/Counte ), .Q(
        \CoreTimer_0/Count[2]_net_1 ));
    NOR3B \CORESPI_0/USPI/UCC/stxs_lastbit_RNO  (.A(
        \CORESPI_0/USPI/UCC/stxs_bitsel[0]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/stxs_state_net_1 ), .C(
        \CORESPI_0/USPI/UCC/stxs_bitsel[1]_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/stxs_lastbit_3 ));
    OA1A \COREABC_0/un1_ACCUMULATOR_PWDATA_M_v[5]  (.A(
        \COREABC_0/UROM.INSTR_SCMD[1]_net_1 ), .B(
        \COREABC_0/UROM.INSTR_CMD[0]_net_1 ), .C(
        \COREABC_0/ACCUMULATOR[5] ), .Y(\COREABC_0/MUX1[5] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m153_0  (.A(\COREABC_0/N_153 ), .B(
        \COREABC_0/N_144 ), .S(\COREABC_0/SMADDR_1[2] ), .Y(
        \COREABC_0/N_154_0 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m150_0  (.A(\COREABC_0/N_150_0 ), 
        .B(\COREABC_0/N_12_1 ), .S(\COREABC_0/SMADDR_1[1] ), .Y(
        \COREABC_0/N_151_0 ));
    AO1 \CORESPI_0/USPI/UTXF/un1_counter_q_0_I_28  (.A(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_pog_array_0_1[0] ), .B(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_1_0[0] ), .C(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_0_2[0] ), .Y(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_12_0[0] ));
    NOR2A \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0I_RNIDS1N  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTI0l ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTI0I ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO105 ));
    DFN1E1P0 \CoreTimer_0/Count[23]  (.D(\CoreTimer_0/N_430_i ), .CLK(
        GLA), .PRE(COREABC_0_PRESETN_0), .E(\CoreTimer_0/Counte_0 ), 
        .Q(\CoreTimer_0/Count[23]_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_ZREGISTER_26[3]  (.A(
        \COREABC_0_APB3master_PWDATA[3] ), .B(
        \COREABC_0/un33_ZREGISTER[3] ), .S(
        \COREABC_0/UROM.INSTR_SCMD[0]_net_1 ), .Y(
        \COREABC_0/ZREGISTER_26[3] ));
    DFN1C0 \CORESPI_0/USPI/UTXF/counter_q[3]  (.D(
        \CORESPI_0/USPI/UTXF/N_15 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UTXF/counter_q[3]_net_1 ));
    XOR2 \COREABC_0/un1_STKPTRP1_I_20  (.A(
        \COREABC_0/un1_STKPTRP1.N_2 ), .B(\COREABC_0/STKPTR[7] ), .Y(
        \COREABC_0/I_20_0 ));
    MX2 \CORESPI_0/USPI/URF/control2_RNO[3]  (.A(
        \COREABC_0_APB3master_PWDATA[2] ), .B(
        \CORESPI_0.USPI.cfg_cmdsize[2] ), .S(\CORESPI_0/USPI/URF/N_67 )
        , .Y(\CORESPI_0/USPI/URF/N_30 ));
    OR3 \CoreTimer_0/CountPulse_RNO_6  (.A(
        \CoreTimer_0/NextCountPulse_0_sqmuxa_2 ), .B(
        \CoreTimer_0/CountPulse_RNO_10_net_1 ), .C(
        \CoreTimer_0/NextCountPulse_0_sqmuxa_3 ), .Y(
        \CoreTimer_0/un1_NextCountPulse_0_sqmuxa_1 ));
    AO1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I95_Y_1  (.A(
        \COREABC_0/un33_ZREGISTER.N289 ), .B(
        \COREABC_0/un33_ZREGISTER.N296 ), .C(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I95_Y_0 ), .Y(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I95_Y_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m212_0  (.A(\COREABC_0/N_211 ), .B(
        \COREABC_0/N_212 ), .S(\COREABC_0/SMADDR_1[1] ), .Y(
        \COREABC_0/N_213 ));
    NOR2B \CoreUARTapb_0/CUARTOOII_RNO_2[1]  (.A(
        \CoreUARTapb_0/CUARTOIII[1] ), .B(
        \COREABC_0_APB3master_PADDR[2] ), .Y(\CoreUARTapb_0/N_77 ));
    NOR3A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_m8_0_a2_2  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_m3_0_a2_0_net_1 ), .B(
        \CoreAPB3_0.u_mux_p_to_b3.PRDATA_iv_i_1[4] ), .C(
        \CORESPI_0.USPI.URF.cfg_ssel_m[4] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_m8_0_a2_2_net_1 ));
    MX2 \COREABC_0/ZREGISTER[5]/U0  (.A(\COREABC_0/ZREGISTER_26[5] ), 
        .B(\COREABC_0/ZREGISTER[5] ), .S(\COREABC_0/un1_ICYCLE_4 ), .Y(
        \COREABC_0/ZREGISTER[5]/Y ));
    DFN1E1C0 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTl0  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTl05 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTlOlI/CUARTIl ), 
        .Q(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTl0_net_1 ));
    DFN1P0 \COREABC_0/SMADDR[3]/U1  (.D(\COREABC_0/SMADDR[3]/Y ), .CLK(
        GLA), .PRE(\COREABC_0/genblk2.RSTSYNC2_1_net_1 ), .Q(
        \COREABC_0/SMADDR[3] ));
    NOR3B \CoreUARTapb_0/CUARTlOlI/CUARTl10.CUARTO1I5  (.A(
        CoreAPB3_0_APBmslave1_PSELx), .B(\CoreUARTapb_0/N_117_mux ), 
        .C(\COREABC_0_APB3master_PADDR[3] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO1I5 ));
    XA1 \COREABC_0/un1_ACCUMULATOR_un1_ACCUMULATOR_m[0]  (.A(
        \COREABC_0/ACCUMULATOR[0] ), .B(\COREABC_0/un5[0] ), .C(
        \COREABC_0/un1_ACCUM_NEXT9_1 ), .Y(
        \COREABC_0/un1_ACCUMULATOR_m[0] ));
    DFN1C0 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0[1]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[1] ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[1] ));
    NOR2B \CORESPI_0/USPI/URXF/full_out_RNO_1  (.A(
        \CORESPI_0/USPI/URXF/N_46 ), .B(\CORESPI_0/USPI/URXF/N_44 ), 
        .Y(\CORESPI_0/USPI/URXF/full_out_2_0_a3_0 ));
    PLLBA \Minimal_SoC_with_PLL_0/Core  (.CLKA(SYSCLK_c), .EXTFB(GND), 
        .POWERDOWN(Power_Down_c), .GLA(GLA), .LOCK(), .GLB(), .YB(), 
        .GLC(), .YC(), .OADIV0(GND), .OADIV1(GND), .OADIV2(GND), 
        .OADIV3(GND), .OADIV4(GND), .OAMUX0(GND), .OAMUX1(GND), 
        .OAMUX2(VCC), .DLYGLA0(GND), .DLYGLA1(GND), .DLYGLA2(GND), 
        .DLYGLA3(GND), .DLYGLA4(GND), .OBDIV0(AFLSDF_GND), .OBDIV1(
        AFLSDF_GND), .OBDIV2(AFLSDF_GND), .OBDIV3(AFLSDF_GND), .OBDIV4(
        AFLSDF_GND), .OBMUX0(AFLSDF_GND), .OBMUX1(AFLSDF_GND), .OBMUX2(
        AFLSDF_GND), .DLYYB0(AFLSDF_GND), .DLYYB1(AFLSDF_GND), .DLYYB2(
        AFLSDF_GND), .DLYYB3(AFLSDF_GND), .DLYYB4(AFLSDF_GND), 
        .DLYGLB0(AFLSDF_GND), .DLYGLB1(AFLSDF_GND), .DLYGLB2(
        AFLSDF_GND), .DLYGLB3(AFLSDF_GND), .DLYGLB4(AFLSDF_GND), 
        .OCDIV0(AFLSDF_GND), .OCDIV1(AFLSDF_GND), .OCDIV2(AFLSDF_GND), 
        .OCDIV3(AFLSDF_GND), .OCDIV4(AFLSDF_GND), .OCMUX0(AFLSDF_GND), 
        .OCMUX1(AFLSDF_GND), .OCMUX2(AFLSDF_GND), .DLYYC0(AFLSDF_GND), 
        .DLYYC1(AFLSDF_GND), .DLYYC2(AFLSDF_GND), .DLYYC3(AFLSDF_GND), 
        .DLYYC4(AFLSDF_GND), .DLYGLC0(AFLSDF_GND), .DLYGLC1(AFLSDF_GND)
        , .DLYGLC2(AFLSDF_GND), .DLYGLC3(AFLSDF_GND), .DLYGLC4(
        AFLSDF_GND), .FINDIV0(VCC), .FINDIV1(GND), .FINDIV2(VCC), 
        .FINDIV3(GND), .FINDIV4(GND), .FINDIV5(GND), .FINDIV6(GND), 
        .FBDIV0(VCC), .FBDIV1(GND), .FBDIV2(VCC), .FBDIV3(GND), 
        .FBDIV4(GND), .FBDIV5(GND), .FBDIV6(GND), .FBDLY0(GND), 
        .FBDLY1(GND), .FBDLY2(GND), .FBDLY3(GND), .FBDLY4(GND), 
        .FBSEL0(VCC), .FBSEL1(GND), .XDLYSEL(GND), .VCOSEL0(GND), 
        .VCOSEL1(GND), .VCOSEL2(GND));
    NOR3C \CORESPI_0/USPI/URXF/un1_counter_q_0_I_33  (.A(
        \CORESPI_0/USPI/URXF/counter_q[2]_net_1 ), .B(
        \CORESPI_0/USPI/URXF/counter_q[3]_net_1 ), .C(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_1[0] ), .Y(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_2[0] ));
    DFN1C0 \CoreTimer_0/PreScale[4]  (.D(\CoreTimer_0/PreScale_n4 ), 
        .CLK(GLA), .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreTimer_0/PreScale[4]_net_1 ));
    NOR3C \COREABC_0/un1_ACCUMULATOR_xhdl_31.ALUOUT_3_m[3]  (.A(
        \COREABC_0/ALUOUT_1_sqmuxa ), .B(\COREABC_0/ACCUMULATOR[3] ), 
        .C(\COREABC_0/ACCUM_IN[3] ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_3_m[3] ));
    XOR2 \CORESPI_0/USPI/UTXF/un1_counter_q_1_I_23  (.A(
        \CORESPI_0/USPI/UTXF/counter_q[2]_net_1 ), .B(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_1[0] ), .Y(
        \CORESPI_0/USPI/UTXF/un1_counter_q1[2] ));
    MX2 \CORESPI_0/USPI/URXF/fifo_mem_q_fifo_mem_q_ram1__RNITFN72[0]  
        (.A(\CORESPI_0/USPI/URXF/N_31 ), .B(\CORESPI_0/USPI/URXF/N_36 )
        , .S(\CORESPI_0/USPI/URXF/rd_pointer_q[1]_net_1 ), .Y(
        \CORESPI_0/USPI/fifo_mem_q[4] ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_PWDATA_M[15]  (.A(
        \COREABC_0/ACCUMULATOR[15] ), .B(\COREABC_0/USE_ACC_1 ), .Y(
        \COREABC_0_APB3master_PWDATA[15] ));
    OA1 \COREABC_0/un1_ACCUMULATOR_ACCUM_NEXT_iv_0[5]  (.A(
        \COREABC_0/un1_ACCUMULATOR.xhdl_31.ALUOUT_3_m_0[5] ), .B(
        \COREABC_0/ALUOUT_7_sqmuxa ), .C(\COREABC_0/ACCUM_IN[5] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_0[5] ));
    OA1 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I92_un1_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N298 ), .B(
        \COREABC_0/un1_ACCUMULATOR.I85_un1_Y ), .C(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I92_un1_Y_0 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.I92_un1_Y ));
    NOR2A \CORESPI_0/USPI/UCC/clock_rx_q3_RNI3249_0  (.A(
        \CORESPI_0/USPI/UCC/clock_rx_q2_net_1 ), .B(
        \CORESPI_0/USPI/UCC/clock_rx_q3_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/clock_rx_re_slave ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_SMADDR_21_1[7]  (.A(
        \COREABC_0/I_20 ), .B(\COREABC_0/DOISR ), .Y(\COREABC_0/N_443 )
        );
    MX2 \COREABC_0/un1_ACCUMULATOR_m205_0  (.A(\COREABC_0/N_199 ), .B(
        \COREABC_0/N_205 ), .S(\COREABC_0/SMADDR[0] ), .Y(
        \COREABC_0/INSTRUCTION[6] ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_m11_0  (.A(\COREABC_0/N_11_1 ), 
        .B(\COREABC_0/SMADDR[2] ), .Y(\COREABC_0/N_12_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m117_0  (.A(\COREABC_0/N_116_0 ), 
        .B(\COREABC_0/N_117_0 ), .S(\COREABC_0/SMADDR_0[0] ), .Y(
        \COREABC_0/INSTRUCTION[31] ));
    DFN1P0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0I  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0I_9 ), .CLK(GLA), 
        .PRE(COREABC_0_PRESETN_0), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTI0I ));
    AOI1B \CORESPI_0/USPI/UCC/mtx_state_RNO_1[1]  (.A(
        \CORESPI_0/USPI/UCC/mtx_state[0]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/N_56 ), .C(
        \CORESPI_0/USPI/UCC/mtx_state_ns_i_0_a2_0[1] ), .Y(
        \CORESPI_0/USPI/UCC/N_74 ));
    NOR3A \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0_RNO[11]  (
        .A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_125 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_RNII49F8[0]_net_1 ), 
        .C(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/un1_CUARTO0_0_sqmuxa_2 ), 
        .Y(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[11] ));
    AND3B \COREABC_0/URAM.UR/UG3.UR_xhdl12/Ram256x16_R0C0_RNI4G911_1  
        (.A(\COREABC_0/RAMRDATA[3] ), .B(\COREABC_0/r_m1tt_N_3_mux ), 
        .C(\COREABC_0/un1_ACCUMULATOR.un7_m1_e_0_1 ), .Y(
        \COREABC_0/Ram256x16_R0C0_RNI4G911_1 ));
    NOR2 \COREABC_0/UROM.INSTR_DATA_RNIECK4[2]  (.A(
        \COREABC_0/UROM.INSTR_DATA[2]_net_1 ), .B(
        \COREABC_0/ACCUMULATOR[2] ), .Y(
        \COREABC_0/UROM.INSTR_DATA_RNIECK4[2]_net_1 ));
    AOI1 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_1[2]  (.A(
        \CORESPI_0.USPI.URF.int_raw[2] ), .B(
        \CORESPI_0.USPI.URF.rdata53 ), .C(\CORESPI_0.USPI.un1_PADDR ), 
        .Y(\CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_1[2]_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m123_0  (.A(\COREABC_0/N_34_1 ), .B(
        \COREABC_0/N_47_0 ), .S(\COREABC_0/SMADDR_1[1] ), .Y(
        \COREABC_0/N_124_0 ));
    NOR3C \COREABC_0/un1_ACCUMULATOR_m120_0  (.A(
        \COREABC_0/SMADDR_1[2] ), .B(\COREABC_0/SMADDR_0[5] ), .C(
        \COREABC_0/N_45_0 ), .Y(\COREABC_0/N_281_mux ));
    MX2 \COREABC_0/SMADDR[3]/U0  (.A(\COREABC_0/N_54_0 ), .B(
        \COREABC_0/SMADDR[3] ), .S(\COREABC_0/un1_ICYCLE_6 ), .Y(
        \COREABC_0/SMADDR[3]/Y ));
    NOR2A \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_RNO_0[5]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_213 ), .B(
        \CoreUARTapb_0/CUARTO1OI[1]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_ns_0_a2_0[5] ));
    DFN1C0 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTOOI  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTOOI4 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTOOI ));
    MX2 \CoreTimer_0/Count_RNO_0[7]  (.A(\CoreTimer_0/Count[7]_net_1 ), 
        .B(\CoreTimer_0/Load[7]_net_1 ), .S(
        \CoreTimer_0/un1_PreScale8_0 ), .Y(\CoreTimer_0/N_212 ));
    DFN1E1P0 \CORESPI_0/USPI/URF/CLK_DIV[1]  (.D(
        \COREABC_0_APB3master_PWDATA[1] ), .CLK(GLA), .PRE(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/URF/N_120 ), .Q(
        \CORESPI_0.USPI.clk_div_val[1] ));
    AO1A \COREABC_0/un1_ACCUMULATOR_ALUOUT_1_sqmuxa_2  (.A(
        \COREABC_0/UROM.INSTR_CMD[1]_net_1 ), .B(
        \COREABC_0/UROM.INSTR_SCMD[0]_net_1 ), .C(
        \COREABC_0/UROM.INSTR_SCMD_RNIOF7U[1]_net_1 ), .Y(
        \COREABC_0/ALUOUT_1_sqmuxa_1 ));
    NOR2 \CoreTimer_0/TimerPre_RNIJMUR[2]  (.A(
        \CoreTimer_0/TimerPre[2]_net_1 ), .B(
        \CoreTimer_0/TimerPre[3]_net_1 ), .Y(
        \CoreTimer_0/NextCountPulse_0_sqmuxa_2_3 ));
    NOR2B \CORESPI_0/USPI/URF/int_raw_RNIP719[5]  (.A(
        \CORESPI_0/USPI/URF/int_raw[5]_net_1 ), .B(
        \CORESPI_0/USPI/URF/control2[5]_net_1 ), .Y(
        \CORESPI_0/USPI/URF/int_masked_m_0_a2_0[5] ));
    OA1C \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2[2]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_6[2]_net_1 ), .B(
        \CORESPI_0.USPI.URF.rx_fifo_empty_m ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2_3[2]_net_1 ), .Y(N_11));
    NOR3C \CORESPI_0/USPI/UTXF/empty_out_RNO_1  (.A(
        \CORESPI_0/USPI/UTXF/N_44 ), .B(\CORESPI_0/USPI/UTXF/N_40 ), 
        .C(\CORESPI_0/USPI/UTXF/N_36 ), .Y(
        \CORESPI_0/USPI/UTXF/empty_out_2_0_a3_2 ));
    OR3 \COREABC_0/URAM.UR/UG3.UR_xhdl12/Ram256x16_R0C0_RNI8F5K2_0  (
        .A(\COREABC_0/Ram256x16_R0C0_RNI4G911_1 ), .B(
        \COREABC_0/URAM.UR/UG3.UR_xhdl12/Ram256x16_R0C0_RNIDHJ71_0_net_1 )
        , .C(\COREABC_0/URAM.UR/UG3.UR_xhdl12/r_m1_0_0 ), .Y(
        \COREABC_0/Ram256x16_R0C0_RNI8F5K2_0 ));
    DFN1E1 \CORESPI_0/USPI/UTXF/fifo_mem_q_fifo_mem_q_ram2_[4]  (.D(
        \COREABC_0_APB3master_PWDATA[3] ), .CLK(GLA), .E(
        \CORESPI_0/USPI/UTXF/awe2 ), .Q(\CORESPI_0/USPI/UTXF/ram2_4 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_xhdl_41.flagvalue_0  (.A(RXRDY_i), 
        .B(\COREABC_0/UROM.INSTR_DATA[5]_net_1 ), .C(
        \COREABC_0/UROM.INSTR_DATA[0]_net_1 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.flagvalue_0 ));
    OA1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I17_Y  (.A(
        \COREABC_0_APB3master_PWDATA[14] ), .B(
        \COREABC_0/ZREGISTER[14] ), .C(\COREABC_0/un33_ZREGISTER.N244 )
        , .Y(\COREABC_0/un33_ZREGISTER.N252 ));
    DFN1P0 \COREABC_0/STKPTR[1]/U1  (.D(\COREABC_0/STKPTR[1]/Y ), .CLK(
        GLA), .PRE(\COREABC_0/genblk2.RSTSYNC2_2_net_1 ), .Q(
        \COREABC_0/STKPTR[1] ));
    MX2C \CoreUARTapb_0/CUARTOOII_RNI54NR1[5]  (.A(
        \CoreUARTapb_0/CUARTOOII[5]_net_1 ), .B(
        \CoreUARTapb_0/CUARTOIII[5] ), .S(\CoreUARTapb_0/PARITY_ERR_0 )
        , .Y(\CoreAPB3_0_APBmslave1_PRDATA_i_1[5] ));
    DFN1C0 \CORESPI_0/USPI/UCC/stx_async_reset_ok  (.D(
        \CORESPI_0/USPI/UCC/stx_async_reset_ok_2 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/stx_async_reset_ok_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m229_0  (.A(\COREABC_0/N_153 ), .B(
        \COREABC_0/N_45_0 ), .S(\COREABC_0/SMADDR[2] ), .Y(
        \COREABC_0/N_230_0 ));
    AND3B \CORESPI_0/USPI/UTXF/fifo_mem_q_awe0  (.A(
        \CORESPI_0/USPI/UTXF/wr_pointer_q[1]_net_1 ), .B(
        \CORESPI_0/USPI/UTXF/wr_pointer_q[0]_net_1 ), .C(
        \CORESPI_0/USPI/UTXF/fifo_mem_d[3]_0_sqmuxa ), .Y(
        \CORESPI_0/USPI/UTXF/awe0 ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_m36_0  (.A(\COREABC_0/N_26_1 ), 
        .B(\COREABC_0/SMADDR[2] ), .Y(\COREABC_0/N_37_1 ));
    AO1B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_o2[0]  (.A(
        \COREABC_0_APB3master_PADDR[13] ), .B(
        \COREABC_0_APB3master_PADDR[12] ), .C(
        COREABC_0_APB3master_PSELx), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_35 ));
    NOR3B \CoreUARTapb_0/CUARTlOlI/CUARTO01/m99_e  (.A(
        \CoreUARTapb_0/CUARTO1OI[1]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTIl ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOI0_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_140 ));
    AX1B \CoreUARTapb_0/CUARTlOlI/CUARTOO1/un3_CUARTO0_I_35  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/DWACT_FDEC_E[7] ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/DWACT_FDEC_E[6] ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[12] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/I_35 ));
    DFN1E1C0 \CORESPI_0/USPI/UCC/msrxs_shiftreg[0]  (.D(
        \CORESPI_0/USPI/UCC/msrxs_shiftreg_5[0] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/UCC/clock_rx_re ), .Q(
        \CORESPI_0/USPI/UCC/msrxs_shiftreg[0]_net_1 ));
    NOR3C \CoreUARTapb_0/m20  (.A(\COREABC_0_APB3master_PADDR_0[3] ), 
        .B(CoreAPB3_0_APBmslave1_PSELx), .C(\CoreUARTapb_0/N_117_mux ), 
        .Y(\CoreUARTapb_0/CUARTl0OI4 ));
    MX2 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0_RNO_0[1]  (
        .A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/I_5 ), .B(
        \CoreUARTapb_0/CUARTl0OI[1]_net_1 ), .S(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO08 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_115 ));
    DFN1C0 \CORESPI_0/USPI/UCC/mtx_fiforead  (.D(
        \CORESPI_0/USPI/UCC/mtx_lastframe_1_sqmuxa ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/mtx_fiforead_net_1 ));
    NOR3A \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0_RNO[1]  (
        .A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_115 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_RNII49F8[0]_net_1 ), 
        .C(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/un1_CUARTO0_0_sqmuxa_2 ), 
        .Y(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[1] ));
    NOR3B \CORESPI_0/USPI/URF/un1_CLK_DIV_1_sqmuxa_i_a2  (.A(
        \CORESPI_0.USPI.URF.N_120_1 ), .B(\CORESPI_0.USPI.URF.N_125 ), 
        .C(\CORESPI_0/USPI/URF/N_66 ), .Y(\CORESPI_0/USPI/URF/N_120 ));
    OR3 \CORESPI_0/USPI/UCC/clk_div_val_reg_RNISTBG1[1]  (.A(
        \CORESPI_0/USPI/UCC/spi_clk_nextd4_2 ), .B(
        \CORESPI_0/USPI/UCC/spi_clk_nextd4_3 ), .C(
        \CORESPI_0/USPI/UCC/spi_clk_nextd4_NE_3 ), .Y(
        \CORESPI_0/USPI/UCC/spi_clk_nextd4_NE_5 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_SHIFTLSBs_iv  (.A(
        \COREABC_0/ACCUMULATOR[0] ), .B(\COREABC_0/ACCUMULATOR[15] ), 
        .S(\COREABC_0/UROM.INSTR_DATA[0]_net_1 ), .Y(\COREABC_0/N_389 )
        );
    MX2 \COREABC_0/un1_ACCUMULATOR_m125_0  (.A(\COREABC_0/i9_mux_1_0 ), 
        .B(\COREABC_0/N_125_0 ), .S(\COREABC_0/SMADDR[0] ), .Y(
        \COREABC_0/INSTRUCTION[28] ));
    AX1D \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I112_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N300 ), .B(
        \COREABC_0/un1_ACCUMULATOR.I86_un1_Y ), .C(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I112_Y_0 ), .Y(
        \COREABC_0/un1_ACCUMULATOR[6] ));
    OR3 
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTIlOl_RNO_8  
        (.A(\CoreUARTapb_0/PARITY_ERR_0 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTI0I ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTI0l ), .Y(
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTO0I_1 )
        );
    NOR2A \CORESPI_0/USPI/UTXF/empty_out_RNI74MJ1  (.A(
        \CORESPI_0/USPI/UTXF/fifo_mem_q[4] ), .B(
        \CORESPI_0/USPI/tx_fifo_empty ), .Y(
        \CORESPI_0/USPI/tx_fifo_last_out ));
    DFN1C0 \CORESPI_0/USPI/UCC/spi_clk_tick  (.D(
        \CORESPI_0/USPI/UCC/spi_clk_tick_4 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/spi_clk_tick_net_1 ));
    NOR2B \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il_RNIFR42[1]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il[1]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il[0]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_118 ));
    MX2 \CORESPI_0/USPI/UCC/clock_rx_q3_RNIF9K21  (.A(
        \CORESPI_0/USPI/UCC/clock_rx_re_slave ), .B(
        \CORESPI_0/USPI/UCC/mtx_re_d ), .S(\CORESPI_0.USPI.SPIMODE ), 
        .Y(\CORESPI_0/USPI/UCC/clock_rx_re ));
    NOR3C \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il_RNIVDB11[1]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/m3_0 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/m3_1 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0_239_d ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0I10 ));
    AOI1B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_0[2]  (.A(
        \CORESPI_0.USPI.cfg_cmdsize[2] ), .B(
        \CORESPI_0.USPI.URF.control17 ), .C(
        \COREABC_0_APB3master_PADDR[13] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_0[2]_net_1 ));
    DFN1E1C0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTlOl[3]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[3]_net_1 ), .CLK(
        GLA), .CLR(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTlOl_1_sqmuxa ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTlOl[3] ));
    OA1A \COREABC_0/un1_ACCUMULATOR_ICYCLE_ns_i_a2_0[0]  (.A(
        \COREABC_0/UROM.INSTR_CMD[2]_net_1 ), .B(
        \COREABC_0/ICYCLE[1]_net_1 ), .C(\COREABC_0/ICYCLE[0]_net_1 ), 
        .Y(\COREABC_0/un1_ACCUMULATOR.ICYCLE_ns_i_a2_0[0] ));
    AND3C \COREABC_0/un1_ACCUMULATOR_ADD_m3_a0  (.A(
        \COREABC_0/ACCUMULATOR[1] ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I1_P0N_a0_0 ), .C(
        \COREABC_0/r_m1_N_6_mux ), .Y(\COREABC_0/ADD_m3_a0 ));
    OR3B \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l_RNID5UV[2]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l[1]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l[2]_net_1 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_31 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_33 ));
    NOR2B \CoreAPB3_0/iPSELS_0_a3[0]  (.A(N_73), .B(\CoreAPB3_0/N_72 ), 
        .Y(CoreAPB3_0_APBmslave0_PSELx));
    OA1 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIL1M52  (.A(
        \COREABC_0/ACCUMULATOR[14] ), .B(\COREABC_0/ACCUM_IN[14] ), .C(
        \COREABC_0/ALUOUT_2_sqmuxa ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_4_m[14] ));
    XA1 \CORESPI_0/USPI/UCON/tx_fifo_write_0_a2_0  (.A(
        \COREABC_0_APB3master_PADDR[2] ), .B(
        \COREABC_0_APB3master_PADDR[5] ), .C(
        COREABC_0_APB3master_PWRITE), .Y(
        \CORESPI_0/USPI/UCON/tx_fifo_write_0_a2_0_net_1 ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_SMADDR_21_1[5]  (.A(
        \COREABC_0/I_14 ), .B(\COREABC_0/DOISR ), .Y(\COREABC_0/N_441 )
        );
    OR2 \COREABC_0/un1_ACCUMULATOR_STKPTR_c4  (.A(
        \COREABC_0/STKPTR_c3 ), .B(\COREABC_0/STKPTR[4] ), .Y(
        \COREABC_0/STKPTR_c4 ));
    MX2B \CoreUARTapb_0/CUARTOOII_RNO[6]  (.A(\CoreUARTapb_0/N_54_0 ), 
        .B(\CoreUARTapb_0/i26_i ), .S(
        \COREABC_0_APB3master_PADDR_0[3] ), .Y(\CoreUARTapb_0/N_56_0 ));
    IOPAD_IN \SYSCLK_pad/U0/U0  (.PAD(SYSCLK), .Y(\SYSCLK_pad/U0/NET1 )
        );
    AO1A \CORESPI_0/USPI/URF/int_raw_RNO[3]  (.A(
        \CORESPI_0/USPI/URF/N_86 ), .B(
        \CORESPI_0/USPI/URF/int_raw[3]_net_1 ), .C(
        \CORESPI_0/USPI/tx_channel_underflow ), .Y(
        \CORESPI_0/USPI/URF/int_raw_39[3] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m196_0  (.A(\COREABC_0/N_194_0 ), 
        .B(\COREABC_0/N_196_0 ), .S(\COREABC_0/SMADDR_0[0] ), .Y(
        \COREABC_0/INSTRUCTION[11] ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I74_un1_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N287 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N294 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.I74_un1_Y ));
    MX2 \CORESPI_0/USPI/UCC/stxs_datareg_RNO_0[3]  (.A(
        \CORESPI_0/USPI/UCC/txfifo_datadelay[2]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/stxs_datareg[2] ), .S(
        \CORESPI_0/USPI/UCC/stxs_bitcnt_0_sqmuxa ), .Y(
        \CORESPI_0/USPI/UCC/N_337 ));
    AOI1 \CORESPI_0/USPI/UCC/mtx_state_RNO[3]  (.A(
        \CORESPI_0/USPI/UCC/mtx_state_ns_0_i_a2_0[3] ), .B(
        \CORESPI_0/USPI/UCC/N_66 ), .C(
        \CORESPI_0/USPI/UCC/mtx_state_ns_0_i_0[3] ), .Y(
        \CORESPI_0/USPI/UCC/mtx_state_RNO[3]_net_1 ));
    AX1D \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I115_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.I82_un1_Y ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I98_Y_0 ), .C(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I115_Y_0 ), .Y(
        \COREABC_0/un1_ACCUMULATOR[9] ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ACCUM_NEXT_iv_3[12]  (.A(
        \COREABC_0/ACCUMULATOR[13] ), .B(\COREABC_0/ALUOUT_6_sqmuxa ), 
        .C(\COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_0[12] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_3[12] ));
    NOR2A \CORESPI_0/USPI/UCC/stxs_bitcnt_RNO[0]  (.A(
        \CORESPI_0/USPI/UCC/stxs_bitcnt_0_sqmuxa ), .B(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[0] ), .Y(
        \CORESPI_0/USPI/UCC/N_598 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_un1_ICYCLE_6  (.A(
        \COREABC_0/un1_ACCUMULATOR.SMADDR_0_sqmuxa_0 ), .B(
        \COREABC_0/SMADDR_0_sqmuxa_1 ), .C(
        \COREABC_0/un1_ACCUMULATOR.un1_ICYCLE_6_0 ), .Y(
        \COREABC_0/un1_ICYCLE_6 ));
    NOR3A \CORESPI_0/USPI/UTXF/rd_pointer_q_RNO[0]  (.A(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_partial_sum[0] ), .B(
        \CORESPI_0/USPI/fiforsttx ), .C(\CORESPI_0/USPI/UTXF/N_50 ), 
        .Y(\CORESPI_0/USPI/UTXF/rd_pointer_q_3[0] ));
    NOR2A \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_RNI0BEN[0]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[0]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTIIl ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_ns[6] ));
    MX2 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2[4]  (.A(d_N_5_mux), .B(
        \CORESPI_0.USPI.URF.rdata_iv_3[4] ), .S(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_N_17_mux ), .Y(N_15));
    NOR2A \CoreTimer_0/Count_RNIFQ608[25]  (.A(\CoreTimer_0/N_26_0 ), 
        .B(\CoreTimer_0/Count[25]_net_1 ), .Y(\CoreTimer_0/N_27_0 ));
    DFN1C0 \CoreTimer_0/PreScale[8]  (.D(\CoreTimer_0/PreScale_n8 ), 
        .CLK(GLA), .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreTimer_0/PreScale[8]_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m173_0  (.A(\COREABC_0/N_23_1 ), .B(
        \COREABC_0/N_16_1 ), .S(\COREABC_0/SMADDR[2] ), .Y(
        \COREABC_0/N_174_0 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_m170_0  (.A(\COREABC_0/N_38_1 ), 
        .B(\COREABC_0/SMADDR[2] ), .Y(\COREABC_0/N_171_0 ));
    NOR3C \COREABC_0/un1_ACCUMULATOR_PRDATA_M_m[9]  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[9] ), .B(
        CoreAPB3_0_APBmslave0_PSELx), .C(\COREABC_0/ICYCLE24.ICYCLE24 )
        , .Y(\COREABC_0/PRDATA_M_m[9] ));
    OA1C \COREABC_0/URAM.UR/UG3.UR_xhdl12/Ram256x16_R0C0_RNI3DM21  (.A(
        \COREABC_0/RAMRDATA[7] ), .B(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_0 ), .C(
        \COREABC_0/ACCUMULATOR[7] ), .Y(\COREABC_0/d_N_5_mux_1 ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_ADD_m3_2  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_m3_2_1 ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_m3_2_0 ), .C(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_0 ), .Y(
        \COREABC_0/ADD_m3_2 ));
    AO1C \CoreTimer_0/CountPulse_RNO_2  (.A(
        \CoreTimer_0/TimerPre[0]_net_1 ), .B(
        \CoreTimer_0/NextCountPulse_0_sqmuxa_1_2 ), .C(
        \CoreTimer_0/TimerPre[3]_net_1 ), .Y(
        \CoreTimer_0/un1_NextCountPulse63 ));
    MX2C \CoreUARTapb_0/CUARTOOII_RNO[0]  (.A(\CoreUARTapb_0/N_88 ), 
        .B(\CoreUARTapb_0/i20_i ), .S(
        \COREABC_0_APB3master_PADDR_0[3] ), .Y(\CoreUARTapb_0/N_90 ));
    AND2 \CORESPI_0/USPI/UTXF/un1_counter_q_1_I_1  (.A(
        \CORESPI_0/USPI/UTXF/counter_q[0]_net_1 ), .B(
        \CORESPI_0/USPI/UTXF/counter_d_0_sqmuxa_1_1 ), .Y(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_TMP[0] ));
    DFN1C0 \CORESPI_0/USPI/URF/control2[1]  (.D(
        \CORESPI_0/USPI/URF/N_34_0 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(\CORESPI_0.USPI.cfg_cmdsize[0] ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_m192_0  (.A(\COREABC_0/N_128_0 ), 
        .B(\COREABC_0/SMADDR[1] ), .Y(\COREABC_0/N_193_0 ));
    IOTRI_OB_EB \TX_pad/U0/U1  (.D(TX_c), .E(VCC), .DOUT(
        \TX_pad/U0/NET1 ), .EOUT(\TX_pad/U0/NET2 ));
    DFN1C0 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0[9]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[9] ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[9] ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I93_un1_Y_0  (.A(
        \COREABC_0/un1_ACCUMULATOR.N285 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N293 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I93_un1_Y_0 ));
    AND2 \CORESPI_0/USPI/URXF/un1_counter_q_1_I_6  (.A(
        \CORESPI_0/USPI/URXF/counter_q[2]_net_1 ), .B(
        \CORESPI_0/USPI/URXF/counter_d_0_sqmuxa_2 ), .Y(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_0_2[0] ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIIQJG5  (.A(
        \COREABC_0/xhdl_31.ALUOUT_4[7] ), .B(
        \COREABC_0/ALUOUT_2_sqmuxa ), .C(
        \COREABC_0/xhdl_31.ALUOUT_5_m[7] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_2[7] ));
    XA1 \COREABC_0/un1_ACCUMULATOR_xhdl_31.ALUOUT_5_m[6]  (.A(
        \COREABC_0/ACCUMULATOR[6] ), .B(\COREABC_0/ACCUM_IN[6] ), .C(
        \COREABC_0/ALUOUT_3_sqmuxa ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_5_m[6] ));
    DFN1E1C0 \CORESPI_0/USPI/UCC/msrxs_datain[1]  (.D(
        \CORESPI_0/USPI/UCC/msrxs_shiftreg[0]_net_1 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(
        \CORESPI_0/USPI/UCC/msrxs_datain_0_sqmuxa_1 ), .Q(
        \CORESPI_0/USPI/rx_fifo_data_in[1] ));
    DFN1P0 \CORESPI_0/USPI/UCC/SYNC1_msrxp_strobe  (.D(
        \CORESPI_0/USPI/UCC/msrxs_strobe_net_1 ), .CLK(GLA), .PRE(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/SYNC1_msrxp_strobe_net_1 ));
    DFN1 \COREABC_0/UROM.INSTR_DATA[7]  (.D(
        \COREABC_0/INSTRUCTION[33] ), .CLK(GLA), .Q(
        \COREABC_0/UROM.INSTR_DATA[7]_net_1 ));
    OR2 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I10_P0N  (.A(
        \COREABC_0/un5[10] ), .B(\COREABC_0/ACCUMULATOR[10] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N235 ));
    OA1 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I93_un1_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N300 ), .B(
        \COREABC_0/un1_ACCUMULATOR.I86_un1_Y ), .C(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I93_un1_Y_0 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.I93_un1_Y ));
    NOR3B \COREABC_0/UROM.INSTR_DATA_RNI24171[1]  (.A(
        \COREABC_0/UROM.INSTR_DATA[1]_net_1 ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_m4_0_a2_0 ), .C(
        \COREABC_0/UROM.INSTR_DATA_RNIECK4[2]_net_1 ), .Y(
        \COREABC_0/UROM.INSTR_DATA_RNI24171[1]_net_1 ));
    AO1A \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I26_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_5_mux_4 ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I26_un1_Y_0 ), .C(
        \COREABC_0/un1_ACCUMULATOR.N231 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N261 ));
    OR2 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/un3_CUARTO0_I_21  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[6] ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[7] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/DWACT_FDEC_E[3] ));
    MX2 \COREABC_0/ZREGISTER[8]/U0  (.A(\COREABC_0/ZREGISTER_26[8] ), 
        .B(\COREABC_0/ZREGISTER[8] ), .S(\COREABC_0/un1_ICYCLE_4 ), .Y(
        \COREABC_0/ZREGISTER[8]/Y ));
    NOR2B \CoreTimer_0/Count_RNIC07P9[24]  (.A(
        \CoreTimer_0/un1_m6_i_a3_4 ), .B(\CoreTimer_0/N_26_0 ), .Y(
        \CoreTimer_0/un1_m6_i_a3_5 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ACCUMULATOR_m[11]  (.A(
        \COREABC_0/ACCUMULATOR[11] ), .B(\COREABC_0/ALUOUT_6_sqmuxa ), 
        .Y(\COREABC_0/ACCUMULATOR_m[11] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_ACCUM_IN[5]  (.A(
        \COREABC_0/UROM.INSTR_DATA[5]_net_1 ), .B(
        \COREABC_0/RAMRDATA[5] ), .S(\COREABC_0/un7_MUXIR[0] ), .Y(
        \COREABC_0/ACCUM_IN[5] ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_STBFLAG_5k_0_a2_0_a2  (.A(
        \COREABC_0/N_692 ), .B(\COREABC_0/UROM.INSTR_CMD[1]_net_1 ), 
        .Y(\COREABC_0/N_695 ));
    MX2 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0_RNO_0[6]  (
        .A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/I_17 ), .B(
        \CoreUARTapb_0/CUARTl0OI[6]_net_1 ), .S(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO08 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_120 ));
    DFN1C0 \CoreTimer_0/iPRDATA[11]  (.D(
        \CoreTimer_0/PrdataNext_1[11] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(\CoreAPB3_0_APBmslave0_PRDATA[11] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m175_0  (.A(\COREABC_0/N_172_0 ), 
        .B(\COREABC_0/N_175_0 ), .S(\COREABC_0/SMADDR[5] ), .Y(
        \COREABC_0/N_176_0 ));
    XNOR2 \COREABC_0/URAM.UR/UG3.UR_xhdl12/Ram256x16_R0C0_RNIENH81_1  
        (.A(\COREABC_0/r_m1_N_6_mux ), .B(\COREABC_0/RAMRDATA[7] ), .Y(
        \COREABC_0/Ram256x16_R0C0_RNIENH81_1 ));
    XOR2 \CORESPI_0/USPI/URXF/un1_counter_q_1_I_13  (.A(
        \CORESPI_0/USPI/URXF/counter_q[4]_net_1 ), .B(
        \CORESPI_0/USPI/URXF/counter_d_0_sqmuxa_2 ), .Y(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_pog_array_0_3[0] ));
    MX2 \CoreTimer_0/Count_RNO_0[5]  (.A(\CoreTimer_0/Count[5]_net_1 ), 
        .B(\CoreTimer_0/Load[5]_net_1 ), .S(
        \CoreTimer_0/un1_PreScale8_0 ), .Y(\CoreTimer_0/N_208 ));
    DFN1P0 \CORESPI_0/USPI/URXF/full_out  (.D(
        \CORESPI_0/USPI/URXF/full_out_2 ), .CLK(GLA), .PRE(
        COREABC_0_PRESETN_0), .Q(\CORESPI_0/USPI/URXF/full_out_i_0 ));
    DFN1P0 \COREABC_0/SMADDR_0[5]/U1  (.D(\COREABC_0/SMADDR_0[5]/Y ), 
        .CLK(GLA), .PRE(\COREABC_0/genblk2.RSTSYNC2_0_net_1 ), .Q(
        \COREABC_0/SMADDR_0[5] ));
    NOR2A \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_RNIOGUJ[2]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1[2]_net_1 ), .B(
        \CoreUARTapb_0/CUARTI1OI[1] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_0_sqmuxa_2_1 ));
    IOPAD_TRI \SPISCLKO_pad/U0/U0  (.D(\SPISCLKO_pad/U0/NET1 ), .E(
        \SPISCLKO_pad/U0/NET2 ), .PAD(SPISCLKO));
    MX2 \COREABC_0/un1_ACCUMULATOR_RAMADDR[3]  (.A(\COREABC_0/I_9_0 ), 
        .B(\COREABC_0/UROM.INSTR_ADDR[3]_net_1 ), .S(
        \COREABC_0/RAMADDR_1_sqmuxa ), .Y(\COREABC_0/RAMADDR[3] ));
    OR2B \CoreTimer_0/CtrlReg_RNI9LMM[1]  (.A(
        \CoreTimer_0/CtrlReg[1]_net_1 ), .B(
        \CoreTimer_0/RawTimInt_net_1 ), .Y(\CoreTimer_0.iTimInt ));
    MX2C \CoreUARTapb_0/CUARTOOII_RNIA2FL1[1]  (.A(
        \CoreUARTapb_0/CUARTOOII[1]_net_1 ), .B(
        \CoreUARTapb_0/CUARTOIII[1] ), .S(\CoreUARTapb_0/PARITY_ERR ), 
        .Y(\CoreAPB3_0_APBmslave1_PRDATA_i_1[1] ));
    XOR2 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I119_Y_0  (.A(
        \COREABC_0/ACCUMULATOR[13] ), .B(\COREABC_0/un5[13] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I119_Y_0 ));
    MX2 \CORESPI_0/USPI/UCC/stxs_datareg[1]/U0  (.A(
        \CORESPI_0/USPI/UCC/stxs_datareg_10[1] ), .B(
        \CORESPI_0/USPI/UCC/stxs_datareg[1] ), .S(
        \CORESPI_0/USPI/UCC/stxs_datareg_1_sqmuxa_2 ), .Y(
        \CORESPI_0/USPI/UCC/stxs_datareg[1]/Y ));
    MX2 \CoreTimer_0/Count_RNO_0[12]  (.A(
        \CoreTimer_0/Count[12]_net_1 ), .B(
        \CoreTimer_0/Load[12]_net_1 ), .S(
        \CoreTimer_0/un1_PreScale8_0 ), .Y(\CoreTimer_0/N_222 ));
    OR3C \CoreTimer_0/Count_RNIC07P9[22]  (.A(\CoreTimer_0/N_12_0 ), 
        .B(\CoreTimer_0/m23_m4_e_0_8 ), .C(\CoreTimer_0/m32_m6_e_7 ), 
        .Y(\CoreTimer_0/Count_RNIC07P9[22]_net_1 ));
    XOR2 \CORESPI_0/USPI/UTXF/un1_counter_q_0_I_14  (.A(
        \CORESPI_0/USPI/UTXF/counter_q[1]_net_1 ), .B(
        \CORESPI_0/USPI/UTXF/counter_d_0_sqmuxa_0 ), .Y(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_pog_array_0[0] ));
    NOR2A \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTOOI_RNI73OH  
        (.A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTOOI ), .B(
        \CoreUARTapb_0/CUARTI1OI[1] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTI0_0_sqmuxa_5_2_0 ));
    NOR2A \CORESPI_0/USPI/UCC/msrxp_pktend_RNO  (.A(
        \CORESPI_0/USPI/UCC/SYNC3_msrxp_pktsel_net_1 ), .B(
        \CORESPI_0/USPI/UCC/un1_sresetn_4_i ), .Y(
        \CORESPI_0/USPI/UCC/msrxp_pktend5 ));
    DFN1C0 \CoreTimer_0/iPRDATA[13]  (.D(
        \CoreTimer_0/PrdataNext_1[13] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(\CoreAPB3_0_APBmslave0_PRDATA[13] ));
    NOR2A \CORESPI_0/USPI/UCC/msrxs_shiftreg_RNO[1]  (.A(
        \CORESPI_0/USPI/UCC/msrxs_shiftreg[0]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/msrxs_first5 ), .Y(
        \CORESPI_0/USPI/UCC/msrxs_shiftreg_5[1] ));
    OR3 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/un3_CUARTO0_I_19  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/DWACT_FDEC_E[0] ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/DWACT_FDEC_E[2] ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[6] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_7 ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ADD_m4_0  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_4_0_0 ), .B(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_0 ), .C(
        \COREABC_0/ADD_m3_0_a3_2 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_4_i ));
    NOR3B \CoreTimer_0/un4_CtrlEn  (.A(COREABC_0_APB3master_PWRITE), 
        .B(CoreAPB3_0_APBmslave0_PSELx), .C(
        COREABC_0_APB3master_PENABLE), .Y(
        \CoreTimer_0/un4_CtrlEn_net_1 ));
    NOR3A \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0_RNO[6]  (
        .A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_120 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_RNII49F8[0]_net_1 ), 
        .C(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/un1_CUARTO0_0_sqmuxa_2 ), 
        .Y(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[6] ));
    DFN1 \COREABC_0/UROM.INSTR_DATA[2]  (.D(
        \COREABC_0/INSTRUCTION[28] ), .CLK(GLA), .Q(
        \COREABC_0/UROM.INSTR_DATA[2]_net_1 ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_ACCUMULATOR_m_0[14]  (.A(
        \COREABC_0/un1_ACCUMULATOR.ALUOUT_5_sqmuxa_0 ), .B(
        \COREABC_0/ACCUMULATOR[14] ), .C(\COREABC_0/xhdl_31.MSEL[1] ), 
        .Y(\COREABC_0/ACCUMULATOR_m_0[14] ));
    NOR2B \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTI0_RNO_2  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTI0_0_sqmuxa_4_3_0 ), .B(
        \CoreUARTapb_0/CUARTI1OI[2] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_112 ));
    XOR2 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I118_Y_0  (.A(
        \COREABC_0/ACCUMULATOR[12] ), .B(\COREABC_0/un5[12] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I118_Y_0 ));
    NOR3C \CORESPI_0/USPI/UTXF/un1_counter_q_1_I_33  (.A(
        \CORESPI_0/USPI/UTXF/counter_q[2]_net_1 ), .B(
        \CORESPI_0/USPI/UTXF/counter_q[3]_net_1 ), .C(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_1[0] ), .Y(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_2[0] ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_SMADDR_21_0[6]  (.A(
        \COREABC_0/RAMRDATA[6] ), .B(
        \COREABC_0/UROM.INSTR_CMD[1]_net_1 ), .Y(\COREABC_0/N_429 ));
    DFN1E1C0 \CoreUARTapb_0/CUARTl0OI[7]  (.D(
        \COREABC_0_APB3master_PWDATA[7] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTl0OI4 ), .Q(
        \CoreUARTapb_0/CUARTl0OI[7]_net_1 ));
    DFN1E1C0 \CoreTimer_0/TimerPre[1]  (.D(
        \COREABC_0_APB3master_PWDATA[1] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreTimer_0/PrescaleEn_net_1 ), .Q(
        \CoreTimer_0/TimerPre[1]_net_1 ));
    MX2 \CORESPI_0/USPI/UTXF/fifo_mem_q_fifo_mem_q_ram0__RNINGP81[3]  
        (.A(\CORESPI_0/USPI/UTXF/N_34_0 ), .B(
        \CORESPI_0/USPI/UTXF/N_39 ), .S(
        \CORESPI_0/USPI/UTXF/rd_pointer_q[1]_net_1 ), .Y(
        \CORESPI_0/USPI/tx_fifo_data_out[2] ));
    AND3 \COREABC_0/un37_SMADDR_I_13  (.A(
        \COREABC_0/un37_SMADDR.U1.DWACT_FINC_E[0] ), .B(
        \COREABC_0/SMADDR_0[3] ), .C(\COREABC_0/SMADDR[4] ), .Y(
        \COREABC_0/un37_SMADDR.N_8 ));
    DFN1E1C0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIOll[1]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_120 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0_0_sqmuxa ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIOll[1]_net_1 ));
    NOR2A \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_RNO[5]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[6]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_123 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_11[5] ));
    DFN1E0C0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[5]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_11[5] ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_130_mux ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[5]_net_1 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_STBRAM_7_0  (.A(
        \COREABC_0/un1_ACCUMULATOR.STBRAM_7_0_a3_0 ), .B(
        \COREABC_0/N_492 ), .C(\COREABC_0/DOISR_0_sqmuxa ), .Y(
        \COREABC_0/STBRAM_7 ));
    NOR2A 
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTIlOl_RNIPF2P  
        (.A(\CoreUARTapb_0/CUARTlOlI/CUARTOl0_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTlIl )
        , .Y(\CoreUARTapb_0/CUARTlOlI/CUARTO004 ));
    DFN1E1 \CORESPI_0/USPI/UTXF/fifo_mem_q_fifo_mem_q_ram0_[0]  (.D(
        \CORESPI_0/USPI/tx_fifo_last_in ), .CLK(GLA), .E(
        \CORESPI_0/USPI/UTXF/awe0 ), .Q(\CORESPI_0/USPI/UTXF/ram0_0 ));
    DFN1C0 \COREABC_0/ZREGISTER[11]/U1  (.D(
        \COREABC_0/ZREGISTER[11]/Y ), .CLK(GLA), .CLR(
        \COREABC_0/genblk2.RSTSYNC2_1_net_1 ), .Q(
        \COREABC_0/ZREGISTER[11] ));
    AO1 \CORESPI_0/USPI/UCC/stxs_pktsel_RNO  (.A(
        \CORESPI_0/USPI/UCC/un1_stxs_state4[0] ), .B(
        \CORESPI_0/USPI/UCC/clock_rx_fe ), .C(
        \CORESPI_0/USPI/UCC/stxs_pktsel_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/stxs_pktsel_RNO_net_1 ));
    AO1A \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I22_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_5_mux_9 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N234 ), .C(
        \COREABC_0/un1_ACCUMULATOR.N237 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N257 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I51_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N258 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N262 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N289 ));
    XA1 \CORESPI_0/USPI/UCC/stxs_bitcnt_RNO[3]  (.A(
        \CORESPI_0/USPI/UCC/stxs_bitcnt_c2 ), .B(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[3] ), .C(
        \CORESPI_0/USPI/UCC/stxs_bitcnt_0_sqmuxa ), .Y(
        \CORESPI_0/USPI/UCC/stxs_bitcnt_n3 ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_m91_0  (.A(\COREABC_0/N_17_1 ), 
        .B(\COREABC_0/SMADDR[2] ), .Y(\COREABC_0/N_92_0 ));
    XNOR2 \COREABC_0/un1_ACCUMULATOR_ADD_m1_1  (.A(
        \COREABC_0/RAMRDATA[7] ), .B(
        \COREABC_0/UROM.INSTR_DATA[7]_net_1 ), .Y(\COREABC_0/ADD_m1_1 )
        );
    NOR2A \COREABC_0/un1_ACCUMULATOR_ADD_m3_i_a3_1_0  (.A(
        \COREABC_0/RAMRDATA[12] ), .B(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_m3_i_a3_1_0 ));
    DFN1E1C0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0Il  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0Il_4 ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTIl ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0Il_net_1 ));
    NOR2B \CORESPI_0/USPI/URF/control19_m1_0_a2  (.A(
        \CoreTimer_0.DataOut_1_sqmuxa_2 ), .B(
        \CORESPI_0.USPI.URF.control110_0_a2_0 ), .Y(
        \CORESPI_0.USPI.URF.control19 ));
    IOPAD_TRI \SPISS_pad/U0/U0  (.D(\SPISS_pad/U0/NET1 ), .E(
        \SPISS_pad/U0/NET2 ), .PAD(SPISS));
    MX2 \COREABC_0/un1_ACCUMULATOR_PADDR_M_1[2]  (.A(
        \COREABC_0/UROM.INSTR_ADDR[2]_net_1 ), .B(
        \COREABC_0/ZREGISTER[2] ), .S(
        \COREABC_0/UROM.INSTR_SCMD[2]_net_1 ), .Y(\PADDR_M[2] ));
    NOR3 \COREABC_0/un1_ACCUMULATOR_ADD_m2_0_a2_0  (.A(
        \COREABC_0/ADD_16x16_fast_I4_P0N_a1 ), .B(
        \COREABC_0/ACCUMULATOR[4] ), .C(
        \COREABC_0/ADD_16x16_fast_I4_P0N_a0 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_5_mux_7 ));
    AO1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I42_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N208 ), .B(
        \COREABC_0/un33_ZREGISTER.N204 ), .C(
        \COREABC_0/un33_ZREGISTER.N207 ), .Y(
        \COREABC_0/un33_ZREGISTER.N277 ));
    DFN1C1 \CORESPI_0/USPI/UCC/stxs_dataerr/U1  (.D(
        \CORESPI_0/USPI/UCC/stxs_dataerr/Y ), .CLK(GLA), .CLR(
        \CORESPI_0/USPI/UCC/ssel_rx_q2_RNIBQH6_net_1 ), .Q(
        \CORESPI_0/USPI/UCC/stxs_dataerr ));
    NOR3B \CoreUARTapb_0/m6  (.A(\CoreUARTapb_0/m6_0_net_1 ), .B(
        \CoreUARTapb_0/N_4_0 ), .C(\COREABC_0_APB3master_PADDR_0[3] ), 
        .Y(\CoreUARTapb_0/CUARTI1OI4 ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_un1_ACCUMULATOR_v[0]  (.A(
        \COREABC_0/ACCUM_IN[1] ), .B(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_1 ), .Y(
        \COREABC_0/un5[1] ));
    NOR3B \CoreAPB3_0/iPSELS_0_a2[1]  (.A(N_73), .B(
        \COREABC_0_APB3master_PADDR[12] ), .C(
        \COREABC_0_APB3master_PADDR[13] ), .Y(
        CoreAPB3_0_APBmslave1_PSELx));
    MX2 \COREABC_0/un1_ACCUMULATOR_RAMWDATA[1]  (.A(\COREABC_0/N_463 ), 
        .B(\COREABC_0/SMADDR_0[1] ), .S(\COREABC_0/DOISR_0 ), .Y(
        \COREABC_0/RAMWDATA[1] ));
    AND3 \COREABC_0/un37_SMADDR_I_22  (.A(
        \COREABC_0/un37_SMADDR.U1.DWACT_FINC_E[0] ), .B(
        \COREABC_0/un37_SMADDR.U1.DWACT_FINC_E[2] ), .C(
        \COREABC_0/un37_SMADDR.U1.DWACT_FINC_E[3] ), .Y(
        \COREABC_0/un37_SMADDR.N_5 ));
    IOTRI_OB_EB \SPISS_pad/U0/U1  (.D(SPISS_c), .E(VCC), .DOUT(
        \SPISS_pad/U0/NET1 ), .EOUT(\SPISS_pad/U0/NET2 ));
    IOIN_IB \RX_pad/U0/U1  (.YIN(\RX_pad/U0/NET1 ), .Y(RX_c));
    DFN1C0 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[3]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_RNO[3]_net_1 ), 
        .CLK(GLA), .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[3]_net_1 ));
    DFN1E1C0 \CORESPI_0/USPI/UCC/mtx_consecutive  (.D(
        \CORESPI_0/USPI/UCC/mtx_consecutive_0_sqmuxa ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .E(
        \CORESPI_0/USPI/UCC/un1_sresetn_11 ), .Q(
        \CORESPI_0/USPI/UCC/mtx_consecutive_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_PADDR_M_1[4]  (.A(
        \COREABC_0/UROM.INSTR_ADDR[4]_net_1 ), .B(
        \COREABC_0/ZREGISTER[4] ), .S(
        \COREABC_0/UROM.INSTR_SCMD[2]_net_1 ), .Y(
        \COREABC_0_APB3master_PADDR[4] ));
    AOI1 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_1[1]  (.A(
        \CORESPI_0.USPI.URF.int_raw[1] ), .B(
        \CORESPI_0.USPI.URF.rdata53 ), .C(\CORESPI_0.USPI.un1_PADDR ), 
        .Y(\CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_1[1]_net_1 ));
    XNOR2 \COREABC_0/un1_ACCUMULATOR_ADD_m1_3  (.A(
        \COREABC_0/RAMRDATA[3] ), .B(
        \COREABC_0/UROM.INSTR_DATA[3]_net_1 ), .Y(\COREABC_0/ADD_m1_3 )
        );
    DFN1E1C0 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1[3]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_n3 ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTIl ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1[3]_net_1 ));
    DFN1E1C0 \CORESPI_0/USPI/UCC/clk_div_val_reg[6]  (.D(
        \CORESPI_0.USPI.clk_div_val[6] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(
        \CORESPI_0/USPI/UCC/mtx_state_RNINJM1[1]_net_1 ), .Q(
        \CORESPI_0/USPI/UCC/clk_div_val_reg[6]_net_1 ));
    OR2A \CORESPI_0/USPI/URF/un1_CLK_DIV_1_sqmuxa_1_i_o2  (.A(
        COREABC_0_APB3master_PWRITE), .B(\CORESPI_0.USPI.URF.N_62 ), 
        .Y(\CORESPI_0/USPI/URF/N_63 ));
    NOR2 \CoreTimer_0/Count_RNIL1VI[20]  (.A(
        \CoreTimer_0/Count[20]_net_1 ), .B(
        \CoreTimer_0/Count[21]_net_1 ), .Y(\CoreTimer_0/m23_m4_e_0_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_RAMWDATA_0[4]  (.A(\COREABC_0/I_12 )
        , .B(\COREABC_0_APB3master_PWDATA[4] ), .S(
        \COREABC_0/URAM.un1_UROM.INSTR_SLOT ), .Y(\COREABC_0/N_466 ));
    NOR3A \CORESPI_0/USPI/UTXF/wr_pointer_q_RNO[0]  (.A(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_partial_sum_0[0] ), .B(
        \CORESPI_0/USPI/fiforsttx ), .C(\CORESPI_0/USPI/UTXF/N_52 ), 
        .Y(\CORESPI_0/USPI/UTXF/wr_pointer_q_3[0] ));
    DFN1E1C0 \CoreUARTapb_0/CUARTOOII[2]  (.D(\CoreUARTapb_0/N_76 ), 
        .CLK(GLA), .CLR(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/N_124_mux ), .Q(
        \CoreUARTapb_0/CUARTOOII[2]_net_1 ));
    NOR3C \CoreTimer_0/Count_RNIIG7D7[23]  (.A(\CoreTimer_0/N_12_0 ), 
        .B(\CoreTimer_0/m23_m4_e_0_8 ), .C(\CoreTimer_0/m23_m6_e_0_0 ), 
        .Y(\CoreTimer_0/N_24_0 ));
    OA1B \CORESPI_0/USPI/UCC/clk_div_val_reg_RNI57QF3[1]  (.A(
        \CORESPI_0/USPI/UCC/spi_clk_nextd4_NE_4 ), .B(
        \CORESPI_0/USPI/UCC/spi_clk_nextd4_NE_5 ), .C(
        \CORESPI_0/USPI/SPISS_2[0] ), .Y(
        \CORESPI_0/USPI/UCC/spi_clk_count_1_sqmuxa ));
    NOR2B \CORESPI_0/USPI/UCC/UCLKMUX1/clkout  (.A(SPISCLKO_c), .B(
        \CORESPI_0.USPI.SPIMODE ), .Y(
        \CORESPI_0/USPI/UCC/clock_rx_mux1 ));
    DFN1E1C0 \CORESPI_0/USPI/UCC/mtx_bitsel[2]  (.D(
        \CORESPI_0/USPI/UCC/N_595 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/UCC/mtx_bitsele ), .Q(
        \CORESPI_0/USPI/UCC/mtx_bitsel[2]_net_1 ));
    NOR2A \CORESPI_0/USPI/UTXF/empty_out_RNIO4OO1  (.A(
        \CORESPI_0/USPI/tx_fifo_read ), .B(
        \CORESPI_0/USPI/tx_fifo_empty ), .Y(
        \CORESPI_0/USPI/UTXF/counter_d_0_sqmuxa_0 ));
    NOR2B \CORESPI_0/USPI/URF/int_raw_RNIOONE[0]  (.A(
        \CORESPI_0/USPI/URF/int_raw[0]_net_1 ), .B(
        \CORESPI_0.USPI.URF.rdata53 ), .Y(
        \CORESPI_0.USPI.URF.int_raw_m[0] ));
    IOPAD_IN_U \NSYSRESET_pad/U0/U0  (.PAD(NSYSRESET), .Y(
        \NSYSRESET_pad/U0/NET1 ));
    OA1C \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2[0]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_6[0]_net_1 ), .B(
        \CORESPI_0.USPI.URF.first_frame_m ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2_3[0]_net_1 ), .Y(N_7));
    NOR2A \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I1_P0N_a1_0  (.A(
        \COREABC_0/UROM.INSTR_DATA[1]_net_1 ), .B(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I1_P0N_a1_0 ));
    NOR3C \CORESPI_0/USPI/UTXF/full_out_RNO_0  (.A(
        \CORESPI_0/USPI/UTXF/N_44 ), .B(\CORESPI_0/USPI/UTXF/N_42 ), 
        .C(\CORESPI_0/USPI/UTXF/N_36 ), .Y(
        \CORESPI_0/USPI/UTXF/full_out_2_0_a3_2 ));
    AND3 \COREABC_0/un37_SMADDR_I_8  (.A(\COREABC_0/SMADDR_0[0] ), .B(
        \COREABC_0/SMADDR_0[1] ), .C(\COREABC_0/SMADDR_0[2] ), .Y(
        \COREABC_0/un37_SMADDR.N_10 ));
    NOR2B \CORESPI_0/USPI/UCC/stxs_bitcnt_RNIFL6O[1]  (.A(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[1] ), .B(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[0] ), .Y(
        \CORESPI_0/USPI/UCC/stxs_bitcnt_c1 ));
    NOR3C \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I87_un1_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N272 ), .B(
        \COREABC_0/un33_ZREGISTER.N276 ), .C(
        \COREABC_0/un33_ZREGISTER.N204 ), .Y(
        \COREABC_0/un33_ZREGISTER.I87_un1_Y ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I59_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N266 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N270 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N297 ));
    AO1 \CORESPI_0/USPI/UCC/mtx_pktsel_RNO  (.A(
        \CORESPI_0/USPI/UCC/N_64 ), .B(
        \CORESPI_0/USPI/UCC/spi_clk_tick_net_1 ), .C(
        \CORESPI_0/USPI/SPISS_2[0] ), .Y(\CORESPI_0/USPI/UCC/N_47 ));
    DFN1C0 \COREABC_0/ZREGISTER[8]/U1  (.D(\COREABC_0/ZREGISTER[8]/Y ), 
        .CLK(GLA), .CLR(\COREABC_0/genblk2.RSTSYNC2_2_net_1 ), .Q(
        \COREABC_0/ZREGISTER[8] ));
    NOR2B \CoreTimer_0/CtrlEn  (.A(\CoreTimer_0/un2_CtrlEn_net_1 ), .B(
        \CoreTimer_0/un4_CtrlEn_net_1 ), .Y(\CoreTimer_0/CtrlEn_net_1 )
        );
    NOR2B \CoreUARTapb_0/m6_0  (.A(CoreAPB3_0_APBmslave1_PSELx), .B(
        \COREABC_0_APB3master_PADDR[4] ), .Y(
        \CoreUARTapb_0/m6_0_net_1 ));
    AND2 \CORESPI_0/USPI/URXF/un1_counter_q_1_I_1  (.A(
        \CORESPI_0/USPI/URXF/counter_q[0]_net_1 ), .B(
        \CORESPI_0/USPI/URXF/counter_d_0_sqmuxa_2 ), .Y(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_TMP_2[0] ));
    XA1B \CORESPI_0/USPI/UCC/mtx_bitsel_n4_0  (.A(
        \CORESPI_0/USPI/UCC/N_97_2 ), .B(
        \CORESPI_0/USPI/UCC/mtx_bitsel[4]_net_1 ), .C(
        \CORESPI_0/USPI/UCC/un1_sresetn_16 ), .Y(
        \CORESPI_0/USPI/UCC/N_597 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m204  (.A(\COREABC_0/N_203_0 ), .B(
        \COREABC_0/N_204 ), .S(\COREABC_0/SMADDR_0[5] ), .Y(
        \COREABC_0/N_205 ));
    NOR2B \CORESPI_0/USPI/URF/cfg_ssel_RNIH2LT[7]  (.A(
        \CORESPI_0/USPI/URF/cfg_ssel[7]_net_1 ), .B(
        \CORESPI_0.USPI.URF.control19 ), .Y(
        \CORESPI_0/USPI/URF/cfg_ssel_m[7] ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I95_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.I95_un1_Y ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I95_Y_0 ), .C(
        \COREABC_0/un1_ACCUMULATOR.I76_un1_Y ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N354 ));
    MX2 \COREABC_0/SMADDR[0]/U0  (.A(\COREABC_0/SMADDR_21[0] ), .B(
        \COREABC_0/SMADDR[0] ), .S(\COREABC_0/un1_ICYCLE_6 ), .Y(
        \COREABC_0/SMADDR[0]/Y ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_xhdl_31.ALUOUT_3_m_0[10]  (.A(
        \COREABC_0/ACCUMULATOR[10] ), .B(\COREABC_0/ALUOUT_1_sqmuxa ), 
        .Y(\COREABC_0/un1_ACCUMULATOR.xhdl_31.ALUOUT_3_m_0[10] ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_m41_0  (.A(\COREABC_0/i12_mux_0 ), 
        .B(\COREABC_0/SMADDR[5] ), .Y(\COREABC_0/INSTRUCTION[10] ));
    NOR3C \CoreTimer_0/DataOut_1_sqmuxa  (.A(
        \CoreTimer_0.DataOut_1_sqmuxa_2 ), .B(
        \COREABC_0_APB3master_PADDR[2] ), .C(
        \CoreTimer_0/PrdataNextEn_net_1 ), .Y(
        \CoreTimer_0/DataOut_1_sqmuxa_net_1 ));
    OR2 \CORESPI_0/USPI/UCC/mtx_state_RNIGRBQ1[0]  (.A(
        \CORESPI_0/USPI/UCC/N_93 ), .B(\CORESPI_0/USPI/UCC/N_53 ), .Y(
        \CORESPI_0/USPI/UCC/N_62 ));
    OR3A \CORESPI_0/USPI/URF/control2_6_i_o2[7]  (.A(
        \CORESPI_0/USPI/URF/rdata53_m1_e_1 ), .B(
        \COREABC_0_APB3master_PADDR[2] ), .C(\CORESPI_0/USPI/URF/N_66 )
        , .Y(\CORESPI_0/USPI/URF/N_67 ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_ADD_m4_0_a2_0  (.A(
        \COREABC_0/ACCUMULATOR[1] ), .B(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_m4_0_a2_0 ));
    DFN1 \CoreUARTapb_0/CUARTlOlI/genblk2.CUARTl11/CUARTOOOI[6]  (.D(
        \CoreUARTapb_0/CUARTlOlI/genblk2.CUARTl11/CUARTl00I[6] ), .CLK(
        GLA), .Q(\CoreUARTapb_0/CUARTlOlI/CUARTI1I[6] ));
    AO1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I60_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N271 ), .B(
        \COREABC_0/un33_ZREGISTER.N268 ), .C(
        \COREABC_0/un33_ZREGISTER.N267 ), .Y(
        \COREABC_0/un33_ZREGISTER.N298 ));
    DFN1E1C0 \CoreUARTapb_0/CUARTlOlI/CUARTO10  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO105 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/un2_CUARTO1l ), .Q(
        \CoreUARTapb_0/OVERFLOW ));
    DFN1C0 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l[0]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_12 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l[0]_net_1 ));
    DFN1C0 \CORESPI_0/USPI/UCC/data_rx_q1  (.D(SPISDI_c), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/data_rx_q1_net_1 ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_SMADDR_21_1[2]  (.A(
        \COREABC_0/I_7 ), .B(\COREABC_0/DOISR ), .Y(\COREABC_0/N_438 ));
    DFN1E1C0 \CoreUARTapb_0/CUARTlOlI/CUARTO1I[0]  (.D(
        \COREABC_0_APB3master_PWDATA[0] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTlOlI/CUARTO1I5 ), 
        .Q(\CoreUARTapb_0/CUARTlOlI/CUARTO1I[0]_net_1 ));
    AX1C \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_RNO[3]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1[2]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_c1 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1[3]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_n3 ));
    NOR3A \CoreTimer_0/Count_RNIOFS51[18]  (.A(
        \CoreTimer_0/m23_m4_e_0_1 ), .B(\CoreTimer_0/Count[19]_net_1 ), 
        .C(\CoreTimer_0/Count[18]_net_1 ), .Y(
        \CoreTimer_0/m23_m4_e_0_5 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m186_0  (.A(\COREABC_0/N_144 ), .B(
        \COREABC_0/N_17_1 ), .S(\COREABC_0/SMADDR_0[2] ), .Y(
        \COREABC_0/N_187_0 ));
    NOR2 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIIR6IV1  (.A(
        \COREABC_0/ACCUM_NEXT[0] ), .B(\COREABC_0/ACCUM_NEXT[2] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.to_logic_2.tmp_6_1[0] ));
    AO1 \CORESPI_0/USPI/UCC/stxs_state_RNO  (.A(
        \CORESPI_0/USPI/UCC/stxs_state4 ), .B(
        \CORESPI_0/USPI/UCC/clock_rx_fe ), .C(
        \CORESPI_0/USPI/UCC/stxs_state_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/stxs_state_RNO_net_1 ));
    DFN1C0 \CORESPI_0/USPI/UCC/spi_clk_count[5]  (.D(
        \CORESPI_0/USPI/UCC/spi_clk_count_n5 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/spi_clk_count[5]_net_1 ));
    DFN1E1P0 \CoreTimer_0/Count[13]  (.D(\CoreTimer_0/N_420 ), .CLK(
        GLA), .PRE(COREABC_0_PRESETN_0), .E(\CoreTimer_0/Counte_0 ), 
        .Q(\CoreTimer_0/Count[13]_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_ACCUM_IN[3]  (.A(
        \COREABC_0/UROM.INSTR_DATA[3]_net_1 ), .B(
        \COREABC_0/RAMRDATA[3] ), .S(\COREABC_0/un7_MUXIR[0] ), .Y(
        \COREABC_0/ACCUM_IN[3] ));
    NOR2A \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_RNO_1[6]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/i1_mux ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_123 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_85 ));
    DFN1E1C0 \CoreUARTapb_0/CUARTlOlI/CUARTO1I[2]  (.D(
        \COREABC_0_APB3master_PWDATA[2] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTlOlI/CUARTO1I5 ), 
        .Q(\CoreUARTapb_0/CUARTlOlI/CUARTO1I[2]_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_ZREGISTER_26[2]  (.A(
        \COREABC_0_APB3master_PWDATA[2] ), .B(
        \COREABC_0/un33_ZREGISTER[2] ), .S(
        \COREABC_0/UROM.INSTR_SCMD[0]_net_1 ), .Y(
        \COREABC_0/ZREGISTER_26[2] ));
    XOR3 \CORESPI_0/USPI/UTXF/un1_counter_q_0_I_21  (.A(
        \CORESPI_0/USPI/UTXF/counter_q[4]_net_1 ), .B(
        \CORESPI_0/USPI/UTXF/counter_d_0_sqmuxa_0 ), .C(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_2_0[0] ), .Y(
        \CORESPI_0/USPI/UTXF/un1_counter_q0[4] ));
    INV 
        \CoreUARTapb_0/CUARTlOlI/genblk2.CUARTl11/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTIlOl_RNI0CDE  
        (.A(
        \CoreUARTapb_0/CUARTlOlI/genblk2.CUARTl11/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTO0l )
        , .Y(\CoreUARTapb_0/CUARTlOlI/CUARTO0l_i ));
    NOR2 \CORESPI_0/USPI/UCC/stxs_bitsel_RNIDTB5[1]  (.A(
        \CORESPI_0/USPI/UCC/stxs_bitsel[0]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/stxs_bitsel[1]_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/un1_stxs_bitsel_1 ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_SHIFTLSB_m  (.A(
        \COREABC_0/un1_ACCUMULATOR.ALUOUT_5_sqmuxa_0 ), .B(
        \COREABC_0/SHIFTLSB ), .C(\COREABC_0/xhdl_31.MSEL[1] ), .Y(
        \COREABC_0/SHIFTLSB_m ));
    MX2C \CORESPI_0/USPI/UTXF/un1_counter_q_m_i[5]  (.A(
        \CORESPI_0/USPI/UTXF/un1_counter_q0[5] ), .B(
        \CORESPI_0/USPI/UTXF/un1_counter_q1[5] ), .S(
        \CORESPI_0/USPI/tx_fifo_write ), .Y(\CORESPI_0/USPI/UTXF/N_34 )
        );
    DFN1C0 \CORESPI_0/USPI/URXF/counter_q[5]  (.D(
        \CORESPI_0/USPI/URXF/N_19 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/URXF/counter_q[5]_net_1 ));
    NOR3B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a1[0]  (.A(
        \CORESPI_0.USPI.URF.N_62 ), .B(
        \COREABC_0_APB3master_PADDR[13] ), .C(
        \CORESPI_0.USPI.un1_PADDR ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a1[0]_net_1 ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIG4632G1  (.A(
        \COREABC_0/un1_ACCUMULATOR.to_logic_2.tmp_6_11[0] ), .B(
        \COREABC_0/un1_ACCUMULATOR.to_logic_2.tmp_6_12[0] ), .C(
        \COREABC_0/ACCUM_NEXT[15] ), .Y(
        \COREABC_0/to_logic_2.tmp_6[0] ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_ALUOUT_6_sqmuxa_2  (.A(
        \COREABC_0/UROM.INSTR_SCMD[2]_net_1 ), .B(
        \COREABC_0/UROM.INSTR_SCMD[0]_net_1 ), .Y(
        \COREABC_0/ALUOUT_6_sqmuxa_2 ));
    XNOR2 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/un3_CUARTO0_I_28  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_4 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[10] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/I_28 ));
    NOR3C \CoreTimer_0/iPRDATA_RNO_0[5]  (.A(
        \CoreTimer_0/PrdataNextEn_net_1 ), .B(
        \CORESPI_0.USPI.URF.N_127 ), .C(\CoreTimer_0/Load[5]_net_1 ), 
        .Y(\CoreTimer_0/Load_m[5] ));
    MX2A \CORESPI_0/USPI/URF/control1_RNIQUAD[3]  (.A(
        \CORESPI_0/USPI/URF/control1[3]_net_1 ), .B(
        \CORESPI_0/USPI/tx_fifo_full_i_0 ), .S(
        \COREABC_0_APB3master_PADDR[5] ), .Y(
        \CORESPI_0/USPI/URF/control1_RNIQUAD[3]_net_1 ));
    FIFO4K18 
        \CoreUARTapb_0/CUARTlOlI/genblk2_CUARTl11/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTIlOl  
        (.AEVAL11(GND), .AEVAL10(GND), .AEVAL9(GND), .AEVAL8(GND), 
        .AEVAL7(GND), .AEVAL6(GND), .AEVAL5(GND), .AEVAL4(GND), 
        .AEVAL3(VCC), .AEVAL2(GND), .AEVAL1(GND), .AEVAL0(GND), 
        .AFVAL11(GND), .AFVAL10(VCC), .AFVAL9(VCC), .AFVAL8(VCC), 
        .AFVAL7(VCC), .AFVAL6(VCC), .AFVAL5(VCC), .AFVAL4(VCC), 
        .AFVAL3(VCC), .AFVAL2(GND), .AFVAL1(GND), .AFVAL0(GND), .WD17(
        GND), .WD16(GND), .WD15(GND), .WD14(GND), .WD13(GND), .WD12(
        GND), .WD11(GND), .WD10(GND), .WD9(GND), .WD8(GND), .WD7(
        \CoreUARTapb_0/CUARTlOlI/CUARTO1I[7]_net_1 ), .WD6(
        \CoreUARTapb_0/CUARTlOlI/CUARTO1I[6]_net_1 ), .WD5(
        \CoreUARTapb_0/CUARTlOlI/CUARTO1I[5]_net_1 ), .WD4(
        \CoreUARTapb_0/CUARTlOlI/CUARTO1I[4]_net_1 ), .WD3(
        \CoreUARTapb_0/CUARTlOlI/CUARTO1I[3]_net_1 ), .WD2(
        \CoreUARTapb_0/CUARTlOlI/CUARTO1I[2]_net_1 ), .WD1(
        \CoreUARTapb_0/CUARTlOlI/CUARTO1I[1]_net_1 ), .WD0(
        \CoreUARTapb_0/CUARTlOlI/CUARTO1I[0]_net_1 ), .WW0(VCC), .WW1(
        VCC), .WW2(GND), .RW0(VCC), .RW1(VCC), .RW2(GND), .RPIPE(GND), 
        .WEN(\CoreUARTapb_0/CUARTlOlI/CUARTIll_net_1 ), .REN(
        \CoreUARTapb_0/CUARTlOlI/CUARTlIOl ), .WBLK(GND), .RBLK(GND), 
        .WCLK(GLA), .RCLK(GLA), .RESET(COREABC_0_PRESETN_0), .ESTOP(
        VCC), .FSTOP(VCC), .RD17(), .RD16(), .RD15(), .RD14(), .RD13(), 
        .RD12(), .RD11(), .RD10(), .RD9(), .RD8(), .RD7(
        \CoreUARTapb_0/CUARTlOlI/genblk2.CUARTl11/CUARTl00I[7] ), .RD6(
        \CoreUARTapb_0/CUARTlOlI/genblk2.CUARTl11/CUARTl00I[6] ), .RD5(
        \CoreUARTapb_0/CUARTlOlI/genblk2.CUARTl11/CUARTl00I[5] ), .RD4(
        \CoreUARTapb_0/CUARTlOlI/genblk2.CUARTl11/CUARTl00I[4] ), .RD3(
        \CoreUARTapb_0/CUARTlOlI/genblk2.CUARTl11/CUARTl00I[3] ), .RD2(
        \CoreUARTapb_0/CUARTlOlI/genblk2.CUARTl11/CUARTl00I[2] ), .RD1(
        \CoreUARTapb_0/CUARTlOlI/genblk2.CUARTl11/CUARTl00I[1] ), .RD0(
        \CoreUARTapb_0/CUARTlOlI/genblk2.CUARTl11/CUARTl00I[0] ), 
        .FULL(), .AFULL(
        \CoreUARTapb_0/CUARTlOlI/genblk2.CUARTl11/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTO0l )
        , .EMPTY(\CoreUARTapb_0/CUARTlOlI/CUARTIIl ), .AEMPTY());
    AX1B \COREABC_0/un1_ACCUMULATOR_STKPTR_n1  (.A(
        \COREABC_0/STKPTR_2_sqmuxa ), .B(\COREABC_0/STKPTR[0] ), .C(
        \COREABC_0/N_564 ), .Y(\COREABC_0/N_1214 ));
    DFN1E1C0 \CoreUARTapb_0/CUARTOOII[4]  (.D(\CoreUARTapb_0/N_64_0 ), 
        .CLK(GLA), .CLR(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/N_124_mux ), .Q(
        \CoreUARTapb_0/CUARTOOII[4]_net_1 ));
    NOR3A \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0_RNO[9]  (
        .A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_123 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_RNII49F8[0]_net_1 ), 
        .C(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/un1_CUARTO0_0_sqmuxa_2 ), 
        .Y(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[9] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m198  (.A(\COREABC_0/N_198 ), .B(
        \COREABC_0/N_46_0 ), .S(\COREABC_0/SMADDR_0[5] ), .Y(
        \COREABC_0/N_199 ));
    DFN1E1C0 \CORESPI_0/USPI/UCC/msrxp_frames[2]  (.D(
        \CORESPI_0/USPI/UCC/msrxp_frames_4[2] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/UCC/un1_msrxp_strobe )
        , .Q(\CORESPI_0/USPI/UCC/msrxp_frames[2]_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m24_0  (.A(\COREABC_0/N_10_1 ), .B(
        \COREABC_0/N_16_1 ), .S(\COREABC_0/SMADDR_0[3] ), .Y(
        \COREABC_0/N_25_1 ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_STBACCUM_4_sqmuxa_0_a3  (.A(
        \COREABC_0/N_692 ), .B(\COREABC_0/N_681 ), .Y(
        \COREABC_0/STBACCUM_4_sqmuxa ));
    NOR3A \CORESPI_0/USPI/UCC/stxs_bitcnt_RNI1BBS1[4]  (.A(
        \CORESPI_0/USPI/UCC/stxs_datareg4_2 ), .B(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[0] ), .C(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[4] ), .Y(
        \CORESPI_0/USPI/UCC/stxs_datareg4_3_0 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ACCUM_IN[15]  (.A(
        \COREABC_0/RAMRDATA[15] ), .B(\COREABC_0/un7_MUXIR[0] ), .Y(
        \COREABC_0/ACCUM_IN[15] ));
    AX1 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I120_Y_0  (.A(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_1 ), .B(
        \COREABC_0/ACCUM_IN[14] ), .C(\COREABC_0/ACCUMULATOR[14] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I120_Y_0 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m182_0  (.A(\COREABC_0/N_170_0 ), 
        .B(\COREABC_0/N_182 ), .S(\COREABC_0/SMADDR_0[1] ), .Y(
        \COREABC_0/N_183 ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_SMADDR_21_1[6]  (.A(
        \COREABC_0/I_17 ), .B(\COREABC_0/DOISR ), .Y(\COREABC_0/N_442 )
        );
    OR2B \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_RNI3MH21[2]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[2]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTll ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_159 ));
    DFN1E1C0 \CoreUARTapb_0/CUARTl0OI[4]  (.D(
        \COREABC_0_APB3master_PWDATA[4] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTl0OI4 ), .Q(
        \CoreUARTapb_0/CUARTl0OI[4]_net_1 ));
    NOR2B \CoreTimer_0/iPRDATA_RNO_0[1]  (.A(
        \CoreTimer_0/Count[1]_net_1 ), .B(
        \CoreTimer_0/DataOut_1_sqmuxa_net_1 ), .Y(
        \CoreTimer_0/Count_m[1] ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ACCUM_NEXT_iv_1[3]  (.A(
        \COREABC_0/ACCUM_IN[3] ), .B(\COREABC_0/ALUOUT_7_sqmuxa ), .C(
        \COREABC_0/ACCUMULATOR_m_0[2] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[3] ));
    NOR3C \CoreTimer_0/iPRDATA_RNO_0[13]  (.A(
        \CoreTimer_0/PrdataNextEn_net_1 ), .B(
        \CORESPI_0.USPI.URF.N_127 ), .C(\CoreTimer_0/Load[13]_net_1 ), 
        .Y(\CoreTimer_0/Load_m[13] ));
    DFN1P0 \CORESPI_0/USPI/UCC/mtx_re_q2  (.D(
        \CORESPI_0/USPI/UCC/mtx_re_q1_i ), .CLK(GLA), .PRE(
        COREABC_0_PRESETN_0), .Q(\CORESPI_0/USPI/UCC/mtx_re_q2_i_0 ));
    DFN1C0 \CORESPI_0/USPI/UTXF/counter_q[4]  (.D(
        \CORESPI_0/USPI/UTXF/N_21 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UTXF/counter_q[4]_net_1 ));
    OA1 \CORESPI_0/USPI/URXF/full_out_RNO_0  (.A(
        \CORESPI_0/USPI/URXF/N_61 ), .B(\CORESPI_0/USPI/URXF/N_60 ), 
        .C(\CORESPI_0/USPI/URXF/N_38 ), .Y(
        \CORESPI_0/USPI/URXF/full_out_2_0_a3_1 ));
    NOR2B \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_RNO_0[0]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[5]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTll ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_58 ));
    AO1A \CORESPI_0/USPI/UCC/mtx_rxbusy_RNI335J1  (.A(
        \CORESPI_0/USPI/tx_fifo_empty ), .B(\CORESPI_0.USPI.SPIMODE ), 
        .C(\CORESPI_0/USPI/UCC/active_1 ), .Y(\CORESPI_0/USPI/active ));
    NOR2B \CoreUARTapb_0/CUARTOOII_RNO_2[2]  (.A(
        \CoreUARTapb_0/CUARTOIII[2] ), .B(
        \COREABC_0_APB3master_PADDR[2] ), .Y(\CoreUARTapb_0/N_70_0 ));
    XOR3 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I113_Y  (.A(
        \COREABC_0_APB3master_PWDATA[7] ), .B(\COREABC_0/ZREGISTER[7] )
        , .C(\COREABC_0/un33_ZREGISTER.N365 ), .Y(
        \COREABC_0/un33_ZREGISTER[7] ));
    NOR3 \COREABC_0/un1_ACCUMULATOR_ADD_m3_4  (.A(\COREABC_0/ADD_m1_1 )
        , .B(\COREABC_0/ACCUMULATOR[7] ), .C(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_0 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_5_mux_2 ));
    DFN1C0 \CORESPI_0/USPI/URXF/rd_pointer_q[0]  (.D(
        \CORESPI_0/USPI/URXF/rd_pointer_q_3[0] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/URXF/rd_pointer_q[0]_net_1 ));
    DFN1 \COREABC_0/UROM.INSTR_SCMD[0]  (.D(\COREABC_0/INSTRUCTION[3] )
        , .CLK(GLA), .Q(\COREABC_0/UROM.INSTR_SCMD[0]_net_1 ));
    NOR2A \CORESPI_0/USPI/URF/control1_RNIQFCA[6]  (.A(
        \CORESPI_0/USPI/cfg_frameurun ), .B(
        \COREABC_0_APB3master_PADDR[2] ), .Y(
        \CORESPI_0/USPI/URF/control1_m1_e_1_0 ));
    NOR2A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_m3_0_a2_0  (.A(
        \COREABC_0_APB3master_PADDR[13] ), .B(
        \CORESPI_0.USPI.URF.N_62 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_m3_0_a2_0_net_1 ));
    NOR2A 
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTIlOl_RNO_5  
        (.A(\CoreUARTapb_0/CUARTlOlI/CUARTlOl[5] ), .B(
        \CoreUARTapb_0/PARITY_ERR ), .Y(
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTOIl_1[5] )
        );
    DFN1 \COREABC_0/UROM.INSTR_SCMD_0[0]  (.D(
        \COREABC_0/INSTRUCTION[3] ), .CLK(GLA), .Q(
        \COREABC_0/UROM.INSTR_SCMD_0[0]_net_1 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ACCUMULATOR_m[9]  (.A(
        \COREABC_0/ACCUMULATOR[9] ), .B(\COREABC_0/ALUOUT_6_sqmuxa ), 
        .Y(\COREABC_0/ACCUMULATOR_m[9] ));
    DFN1P0 \COREABC_0/SMADDR[9]/U1  (.D(\COREABC_0/SMADDR[9]/Y ), .CLK(
        GLA), .PRE(\COREABC_0/genblk2.RSTSYNC2_1_net_1 ), .Q(
        \COREABC_0/SMADDR[9] ));
    MX2A \CoreUARTapb_0/CUARTOOII_RNO_0[2]  (.A(\CoreUARTapb_0/N_70_0 )
        , .B(\CoreUARTapb_0/i1_mux ), .S(
        \COREABC_0_APB3master_PADDR[4] ), .Y(\CoreUARTapb_0/N_74 ));
    NOR2B \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I1_G0N  (.A(
        \COREABC_0/ZREGISTER[1] ), .B(\COREABC_0_APB3master_PWDATA[1] )
        , .Y(\COREABC_0/un33_ZREGISTER.N207 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_STKPTR_44  (.A(
        \COREABC_0/STKPTR[3] ), .B(\COREABC_0/I_9_0 ), .S(
        \COREABC_0/STKPTR_2_sqmuxa ), .Y(\COREABC_0/N_568 ));
    NOR2B \CORESPI_0/USPI/UCC/stxs_strobetx_RNO_1  (.A(
        \CORESPI_0/USPI/UCC/stxs_state_net_1 ), .B(
        \CORESPI_0/USPI/UCC/stxs_datareg4_3 ), .Y(
        \CORESPI_0/USPI/UCC/stxs_strobetx_2_sqmuxa_2 ));
    XA1A \COREABC_0/un1_ACCUMULATOR_un1_ACCUMULATOR_m[2]  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_3_mux_0 ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I108_Y_0 ), .C(
        \COREABC_0/un1_ACCUM_NEXT9_1 ), .Y(
        \COREABC_0/un1_ACCUMULATOR_m[2] ));
    MX2 \CORESPI_0/USPI/UTXF/fifo_mem_q_fifo_mem_q_ram0__RNIJCP81[2]  
        (.A(\CORESPI_0/USPI/UTXF/N_33 ), .B(
        \CORESPI_0/USPI/UTXF/N_38_0 ), .S(
        \CORESPI_0/USPI/UTXF/rd_pointer_q[1]_net_1 ), .Y(
        \CORESPI_0/USPI/tx_fifo_data_out[1] ));
    AOI1B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_m8_0_a2  (.A(
        \CORESPI_0.USPI.URF.int_raw[4] ), .B(
        \CORESPI_0.USPI.URF.rdata53 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_m8_0_a2_4_net_1 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_N_17_mux ));
    INV \CORESPI_0/USPI/UCC/SYNC3_stxp_dataerr_RNO  (.A(
        \CORESPI_0/USPI/UCC/SYNC2_stxp_dataerr_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/SYNC2_stxp_dataerr_i ));
    CLKINT \COREABC_0_PADDR_M_RNIUKR2[2]  (.A(\PADDR_M[2] ), .Y(
        \COREABC_0_APB3master_PADDR[2] ));
    NOR2B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_1[3]  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA_i_0[3] ), .B(\CoreAPB3_0/N_72 ), 
        .Y(\CoreAPB3_0/u_mux_p_to_b3/N_50 ));
    NOR3A \CORESPI_0/USPI/URF/cfg_ssel_RNIDP1L[4]  (.A(
        \CORESPI_0/USPI/URF/cfg_ssel[4]_net_1 ), .B(
        \COREABC_0_APB3master_PADDR[4] ), .C(
        \COREABC_0_APB3master_PADDR[3] ), .Y(
        \CORESPI_0/USPI/URF/cfg_m3_e_1 ));
    DFN1 \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/CUARTOOOI[0]  (.D(
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/CUARTl00I[0] ), 
        .CLK(GLA), .Q(\CoreUARTapb_0/CUARTlOlI/CUARTl1I[0] ));
    OR3 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_RNI1QS66[0]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTI0_0_sqmuxa_5_2 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTI0_0_sqmuxa_6_2 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTI0_0_sqmuxa_4_3 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_558_tz ));
    MX2 \CORESPI_0/USPI/UCC/stxs_bitcnt[0]/U0  (.A(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[0] ), .B(
        \CORESPI_0/USPI/UCC/N_598 ), .S(
        \CORESPI_0/USPI/UCC/clock_rx_fe ), .Y(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[0]/Y ));
    XOR2 \COREABC_0/un1_STKPTRP1_I_17  (.A(
        \COREABC_0/un1_STKPTRP1.N_3 ), .B(\COREABC_0/STKPTR[6] ), .Y(
        \COREABC_0/I_17_0 ));
    XNOR2 \COREABC_0/un1_ACCUMULATOR_ADD_m1_2  (.A(
        \COREABC_0/RAMRDATA[1] ), .B(
        \COREABC_0/UROM.INSTR_DATA[1]_net_1 ), .Y(\COREABC_0/ADD_m1_2 )
        );
    NOR3B \CORESPI_0/USPI/UCON/tx_fifo_last_0_a2  (.A(
        \CORESPI_0/USPI/UCON/N_18 ), .B(
        \CORESPI_0/USPI/UCON/tx_fifo_last_0_a2_0 ), .C(
        \COREABC_0_APB3master_PADDR[2] ), .Y(
        \CORESPI_0/USPI/tx_fifo_last_in ));
    XNOR2 \COREABC_0/URAM.UR/UG3.UR_xhdl12/Ram256x16_R0C0_RNIENH81_0  
        (.A(\COREABC_0/r_m1_N_6_mux ), .B(\COREABC_0/RAMRDATA[1] ), .Y(
        \COREABC_0/Ram256x16_R0C0_RNIENH81_0 ));
    DFN1P0 \CoreTimer_0/iPRDATA[0]  (.D(\CoreTimer_0/PrdataNext_1[0] ), 
        .CLK(GLA), .PRE(COREABC_0_PRESETN_0), .Q(
        \CoreAPB3_0_APBmslave0_PRDATA_i_0[0] ));
    XOR2 \CORESPI_0/USPI/UTXF/un1_counter_q_0_I_17  (.A(
        \CORESPI_0/USPI/UTXF/counter_q[0]_net_1 ), .B(
        \CORESPI_0/USPI/UTXF/counter_d_0_sqmuxa_0 ), .Y(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_partial_sum_1[0] ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_m20_0  (.A(
        \COREABC_0/SMADDR_0[0] ), .B(\COREABC_0/i11_mux ), .C(
        \COREABC_0/SMADDR_0[1] ), .Y(\COREABC_0/INSTRUCTION[29] ));
    OA1 \CORESPI_0/USPI/URXF/full_out_RNO_2  (.A(
        \CORESPI_0/USPI/URXF/N_57 ), .B(\CORESPI_0/USPI/URXF/N_56 ), 
        .C(\CORESPI_0/USPI/URXF/N_11 ), .Y(
        \CORESPI_0/USPI/URXF/full_out_2_0_a3_2 ));
    DFN1P0 \COREABC_0/SMADDR[4]/U1  (.D(\COREABC_0/SMADDR[4]/Y ), .CLK(
        GLA), .PRE(\COREABC_0/genblk2.RSTSYNC2_1_net_1 ), .Q(
        \COREABC_0/SMADDR[4] ));
    NOR2B \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_RNI4NH21[3]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[3]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTll ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_87 ));
    NOR2B \CORESPI_0/USPI/URF/int_raw_RNO_1[1]  (.A(
        \CORESPI_0/USPI/rx_done_i_0 ), .B(
        \COREABC_0_APB3master_PWDATA[1] ), .Y(
        \CORESPI_0/USPI/URF/int_raw_33_i_a2_0_0[1] ));
    NOR2B \CoreUARTapb_0/m3  (.A(\CoreUARTapb_0/N_3_0 ), .B(
        COREABC_0_APB3master_PWRITE), .Y(\CoreUARTapb_0/N_4_0 ));
    DFN1E1C0 \CORESPI_0/USPI/UCC/clk_div_val_reg[7]  (.D(
        \CORESPI_0/USPI/clk_div_val[7] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(
        \CORESPI_0/USPI/UCC/mtx_state_RNINJM1[1]_net_1 ), .Q(
        \CORESPI_0/USPI/UCC/clk_div_val_reg[7]_net_1 ));
    AO1 \CoreTimer_0/iPRDATA_RNO[12]  (.A(
        \CoreTimer_0/Count[12]_net_1 ), .B(
        \CoreTimer_0/DataOut_1_sqmuxa_net_1 ), .C(
        \CoreTimer_0/Load_m[12] ), .Y(\CoreTimer_0/PrdataNext_1[12] ));
    NOR2A \CORESPI_0/USPI/UCC/mtx_state_RNILF5O[4]  (.A(
        \CORESPI_0/USPI/UCC/mtx_state[4]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/N_53 ), .Y(\CORESPI_0/USPI/UCC/N_91 ));
    NOR3A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_m8_0_a2_4  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_m8_0_a2_2_net_1 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_m2_e_net_1 ), .C(
        \CORESPI_0.USPI.URF.int_raw_m_0[2] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_m8_0_a2_4_net_1 ));
    OA1 \CORESPI_0/USPI/UCC/msrxp_alldone_RNO  (.A(
        \CORESPI_0/USPI/UCC/mtx_lastframe_net_1 ), .B(
        \CORESPI_0/USPI/UCC/stxp_lastframe_net_1 ), .C(
        \CORESPI_0/USPI/UCC/msrxp_alldone_0_sqmuxa ), .Y(
        \CORESPI_0/USPI/UCC/msrxp_alldone_4 ));
    NOR3B \CoreUARTapb_0/CUARTlOlI/un1_CUARTO1l  (.A(
        \CoreUARTapb_0/CUARTlOlI/un1_CUARTO1l_1_net_1 ), .B(
        \CoreUARTapb_0/N_3_0 ), .C(\COREABC_0_APB3master_PADDR[3] ), 
        .Y(\CoreUARTapb_0/CUARTlOlI/un1_CUARTO1l_net_1 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_PWDATA_M[8]  (.A(
        \COREABC_0/ACCUMULATOR[8] ), .B(\COREABC_0/USE_ACC_1 ), .Y(
        \COREABC_0_APB3master_PWDATA[8] ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIKM1OK  (.A(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_0[14] ), .B(
        \COREABC_0/ACCUMULATOR_m[15] ), .C(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_4[14] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[14] ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_m13_0  (.A(\COREABC_0/N_10_1 ), 
        .B(\COREABC_0/SMADDR[3] ), .Y(\COREABC_0/N_14_1 ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I94_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.I74_un1_Y ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I94_Y_0 ), .C(
        \COREABC_0/un1_ACCUMULATOR.I94_un1_Y ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N352 ));
    AO1 \CoreTimer_0/iPRDATA_RNO[9]  (.A(\CoreTimer_0/Count[9]_net_1 ), 
        .B(\CoreTimer_0/DataOut_1_sqmuxa_net_1 ), .C(
        \CoreTimer_0/Load_m[9] ), .Y(\CoreTimer_0/PrdataNext_1[9] ));
    XA1 \COREABC_0/un1_ACCUMULATOR_un1_ACCUMULATOR_m[3]  (.A(
        \COREABC_0/un1_ACCUMULATOR.N306 ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I109_Y_0 ), .C(
        \COREABC_0/un1_ACCUM_NEXT9_1 ), .Y(
        \COREABC_0/un1_ACCUMULATOR_m[3] ));
    DFN1C0 \CORESPI_0/USPI/URF/control2[4]  (.D(
        \CORESPI_0/USPI/URF/N_28 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/URF/control2[4]_net_1 ));
    NOR3B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_3[0]  (.A(
        \COREABC_0_APB3master_PADDR[13] ), .B(
        \CORESPI_0.USPI.un1_PADDR ), .C(
        \CORESPI_0.USPI.rx_fifo_data_out[0] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_3[0]_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_SMADDR_21[7]  (.A(\COREABC_0/N_443 )
        , .B(\COREABC_0/N_430 ), .S(\COREABC_0/SMADDR_0_sqmuxa_1 ), .Y(
        \COREABC_0/SMADDR_21[7] ));
    NOR3C \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa  (.A(
        \COREABC_0/UROM.INSTR_SCMD[1]_net_1 ), .B(
        \COREABC_0/ACCUM_NEXT9 ), .C(
        \COREABC_0/un1_ACCUMULATOR.ALUOUT_2_sqmuxa_0 ), .Y(
        \COREABC_0/ALUOUT_2_sqmuxa ));
    NOR3C \COREABC_0/un1_ACCUMULATOR_PRDATA_M_m[15]  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[15] ), .B(
        CoreAPB3_0_APBmslave0_PSELx), .C(\COREABC_0/ICYCLE24.ICYCLE24 )
        , .Y(\COREABC_0/PRDATA_M_m[15] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m202_0  (.A(\COREABC_0/N_201 ), .B(
        \COREABC_0/N_202 ), .S(\COREABC_0/SMADDR_1[1] ), .Y(
        \COREABC_0/N_203_0 ));
    NOR2A \CoreTimer_0/Count_RNO_0[23]  (.A(\CoreTimer_0/N_22_0 ), .B(
        \CoreTimer_0/Count[22]_net_1 ), .Y(\CoreTimer_0/N_23_0 ));
    NOR3A \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0_RNO[8]  (
        .A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_122 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_RNII49F8[0]_net_1 ), 
        .C(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/un1_CUARTO0_0_sqmuxa_2 ), 
        .Y(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[8] ));
    DFN1P0 \COREABC_0/STKPTR[7]/U1  (.D(\COREABC_0/STKPTR[7]/Y ), .CLK(
        GLA), .PRE(PRESETN), .Q(\COREABC_0/STKPTR[7] ));
    NOR2A \CoreTimer_0/CountPulse_RNO_3  (.A(
        \CoreTimer_0/NextCountPulse_0_sqmuxa_7_7 ), .B(
        \CoreTimer_0/TimerPre[3]_net_1 ), .Y(
        \CoreTimer_0/NextCountPulse_0_sqmuxa_7 ));
    NOR3A \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I0_CO1_0_a0  (.A(
        \COREABC_0/ACCUMULATOR[0] ), .B(
        \COREABC_0/UROM.INSTR_SCMD[2]_net_1 ), .C(
        \COREABC_0/un1_ACCUMULATOR.un7_m1_e_0_1 ), .Y(
        \COREABC_0/ADD_16x16_fast_I0_CO1_0_a0 ));
    NOR3C \CORESPI_0/USPI/URXF/wr_pointer_q_RNIR1H31[1]  (.A(
        \CORESPI_0/USPI/URXF/wr_pointer_q[0]_net_1 ), .B(
        \CORESPI_0/USPI/URXF/wr_pointer_q[1]_net_1 ), .C(
        \CORESPI_0/USPI/URXF/fifo_mem_d[3]_0_sqmuxa ), .Y(
        \CORESPI_0/USPI/URXF/N_54 ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNI5MFTC  (.A(
        \COREABC_0/xhdl_31.ALUOUT_4_m[8] ), .B(
        \COREABC_0/xhdl_31.ALUOUT_5_m[8] ), .C(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[8] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_4[8] ));
    DFN1E1P0 \CoreTimer_0/Count[31]  (.D(\CoreTimer_0/N_438_i ), .CLK(
        GLA), .PRE(COREABC_0_PRESETN_0), .E(\CoreTimer_0/Counte ), .Q(
        \CoreTimer_0/Count[31]_net_1 ));
    DFN1E1C0 \CORESPI_0/USPI/UCC/mtx_datahold[0]  (.D(
        \CORESPI_0/USPI/tx_fifo_data_out[0] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(
        \CORESPI_0/USPI/UCC/mtx_fiforead_0_sqmuxa ), .Q(
        \CORESPI_0/USPI/UCC/mtx_datahold[0]_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_RAMADDR[5]  (.A(\COREABC_0/I_14_0 ), 
        .B(\COREABC_0/UROM.INSTR_ADDR[5]_net_1 ), .S(
        \COREABC_0/RAMADDR_1_sqmuxa ), .Y(\COREABC_0/RAMADDR[5] ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ACCUM_NEXT_iv_0[14]  (.A(
        \COREABC_0/un1_ACCUMULATOR.xhdl_31.ALUOUT_3_m_0[14] ), .B(
        \COREABC_0/ACCUM_IN[14] ), .C(\COREABC_0/PRDATA_M_m[14] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_0[14] ));
    NOR2B \CoreTimer_0/PreScale_RNIT4U1[2]  (.A(
        \CoreTimer_0/PreScale[2]_net_1 ), .B(\CoreTimer_0/PreScale_c1 )
        , .Y(\CoreTimer_0/PreScale_c2 ));
    MX2 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTIl0l_RNICG6D[4]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTIl0l[4]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTIl0l[5]_net_1 ), .S(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l[0]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_25 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_m64_0  (.A(
        \COREABC_0/RAMRDATA[10] ), .B(
        \COREABC_0/UROM.INSTR_CMD[1]_net_1 ), .Y(\COREABC_0/N_65_0 ));
    AX1C \CORESPI_0/USPI/UTXF/un1_counter_q_1_I_22  (.A(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_1[0] ), .B(
        \CORESPI_0/USPI/UTXF/counter_q[2]_net_1 ), .C(
        \CORESPI_0/USPI/UTXF/counter_q[3]_net_1 ), .Y(
        \CORESPI_0/USPI/UTXF/un1_counter_q1[3] ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_PWDATA_M[9]  (.A(
        \COREABC_0/ACCUMULATOR[9] ), .B(\COREABC_0/USE_ACC_1 ), .Y(
        \COREABC_0_APB3master_PWDATA[9] ));
    MX2A \CoreUARTapb_0/CUARTOOII_RNO_0[1]  (.A(\CoreUARTapb_0/N_77 ), 
        .B(\CoreUARTapb_0/i10_mux ), .S(
        \COREABC_0_APB3master_PADDR[4] ), .Y(\CoreUARTapb_0/N_81 ));
    OR3 \CORESPI_0/USPI/UCC/mtx_consecutive_RNI693O5  (.A(
        \CORESPI_0/USPI/UCC/mtx_state_0_sqmuxa ), .B(
        \CORESPI_0/USPI/UCC/N_79 ), .C(\CORESPI_0/USPI/UCC/N_78 ), .Y(
        \CORESPI_0/USPI/UCC/mtx_bitsele ));
    NOR2 \CORESPI_0/USPI/URXF/counter_q_RNO[4]  (.A(
        \CORESPI_0/USPI/URXF/N_38 ), .B(\CORESPI_0/USPI/fiforstrx ), 
        .Y(\CORESPI_0/USPI/URXF/N_21 ));
    DFN1C0 \CoreTimer_0/RawTimInt  (.D(\CoreTimer_0/NxtRawTimInt ), 
        .CLK(GLA), .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreTimer_0/RawTimInt_net_1 ));
    NOR3C \COREABC_0/un1_ACCUMULATOR_xhdl_31.ALUOUT_3_m[0]  (.A(
        \COREABC_0/ALUOUT_1_sqmuxa ), .B(\COREABC_0/ACCUMULATOR[0] ), 
        .C(\COREABC_0/ACCUM_IN[0] ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_3_m[0] ));
    OA1C \COREABC_0/un1_ACCUMULATOR_ADD_m2_0_a2  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_m1_e_1_0 ), .B(
        \COREABC_0/r_m1_N_6_mux_0 ), .C(\COREABC_0/ACCUMULATOR[9] ), 
        .Y(\COREABC_0/un1_ACCUMULATOR.ADD_N_5_mux_4 ));
    NOR3B \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl_RNI661U1[0]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl[3]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/m17_0 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl[0]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_114_mux ));
    NOR3A \CoreTimer_0/Count_RNISLU51[22]  (.A(
        \CoreTimer_0/m32_m6_e_3 ), .B(\CoreTimer_0/Count[25]_net_1 ), 
        .C(\CoreTimer_0/Count[22]_net_1 ), .Y(\CoreTimer_0/m32_m6_e_5 )
        );
    MX2 \COREABC_0/un1_ACCUMULATOR_un1_ACCUMULATOR_v_0[4]  (.A(
        \COREABC_0/d_N_3_mux ), .B(\COREABC_0/Ram256x16_R0C0_RNIENH81 )
        , .S(\COREABC_0/un1_m2 ), .Y(\COREABC_0/un5[5] ));
    NOR3C \COREABC_0/un1_ACCUMULATOR_PRDATA_M_m[8]  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[8] ), .B(
        CoreAPB3_0_APBmslave0_PSELx), .C(\COREABC_0/ICYCLE24.ICYCLE24 )
        , .Y(\COREABC_0/PRDATA_M_m[8] ));
    NOR3B \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl_RNI3RGE1_0[2]  (
        .A(\CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl[2]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl[1]_net_1 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl[0]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_122 ));
    NOR3B \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTOOI_RNI83DN  
        (.A(\CoreUARTapb_0/CUARTI1OI[0] ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTOOI ), .C(
        \CoreUARTapb_0/CUARTI1OI[2] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_0_sqmuxa_2_2 ));
    DFN1P0 \CORESPI_0/USPI/UCC/SYNC1_stxs_txready  (.D(
        \CORESPI_0/USPI/UCC/txfifo_davailable_i ), .CLK(GLA), .PRE(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/SYNC1_stxs_txready_i_0 ));
    AND2 \COREABC_0/un37_SMADDR_I_15  (.A(\COREABC_0/SMADDR[3] ), .B(
        \COREABC_0/SMADDR[4] ), .Y(
        \COREABC_0/un37_SMADDR.U1.DWACT_FINC_E[1] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m266_0  (.A(\COREABC_0/I_14 ), .B(
        \COREABC_0_APB3master_PWDATA[5] ), .S(
        \COREABC_0/URAM.un1_UROM.INSTR_SLOT ), .Y(\COREABC_0/N_267_0 ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ADD_m5_0  (.A(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_0 ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_m5_0_0 ), .C(
        \COREABC_0/r_m1_N_6_mux_0 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_i3_mux ));
    NOR2A \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_0_sqmuxa_1  (.A(
        \CoreUARTapb_0/CUARTI1OI[1] ), .B(\CoreUARTapb_0/CUARTI1OI[2] )
        , .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_0_sqmuxa_1_net_1 ));
    OR2 \CORESPI_0/USPI/UCC/mtx_state_RNINJM1[1]  (.A(
        \CORESPI_0/USPI/UCC/mtx_state[0]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/mtx_state[1]_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/mtx_state_RNINJM1[1]_net_1 ));
    DFN1 \COREABC_0/UROM.INSTR_DATA[5]  (.D(
        \COREABC_0/INSTRUCTION[31] ), .CLK(GLA), .Q(
        \COREABC_0/UROM.INSTR_DATA[5]_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m143_0  (.A(\COREABC_0/N_22_1 ), .B(
        \COREABC_0/N_10_1 ), .S(\COREABC_0/SMADDR_0[3] ), .Y(
        \COREABC_0/N_144 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m140_0  (.A(\COREABC_0/N_16_1 ), .B(
        \COREABC_0/N_130_0 ), .S(\COREABC_0/SMADDR_1[2] ), .Y(
        \COREABC_0/N_141_0 ));
    DFN1E1P0 \CoreTimer_0/Count[30]  (.D(\CoreTimer_0/N_437_i ), .CLK(
        GLA), .PRE(COREABC_0_PRESETN_0), .E(\CoreTimer_0/Counte ), .Q(
        \CoreTimer_0/Count[30]_net_1 ));
    NOR3A \CoreTimer_0/Count_RNI0QU51[23]  (.A(
        \CoreTimer_0/m32_m6_e_1 ), .B(\CoreTimer_0/Count[23]_net_1 ), 
        .C(\CoreTimer_0/Count[24]_net_1 ), .Y(\CoreTimer_0/m32_m6_e_4 )
        );
    MX2 \COREABC_0/un1_ACCUMULATOR_m191_0  (.A(\COREABC_0/N_92_0 ), .B(
        \COREABC_0/N_47_0 ), .S(\COREABC_0/SMADDR_0[1] ), .Y(
        \COREABC_0/N_192_0 ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNI5VP6HQ  (.A(
        \COREABC_0/un1_ACCUMULATOR.to_logic_2.tmp_6_6[0] ), .B(
        \COREABC_0/un1_ACCUMULATOR.to_logic_2.tmp_6_9[0] ), .C(
        \COREABC_0/ACCUM_NEXT[14] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.to_logic_2.tmp_6_12[0] ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I4_G0N_a1  (.A(
        \COREABC_0/r_m1_N_6_mux ), .B(
        \COREABC_0/UROM.INSTR_DATA[4]_net_1 ), .Y(
        \COREABC_0/ADD_16x16_fast_I4_G0N_a1 ));
    MX2C \COREABC_0/un1_ACCUMULATOR_m249_0  (.A(\COREABC_0/N_243_0 ), 
        .B(\COREABC_0/N_249_0 ), .S(\COREABC_0/SMADDR_0[0] ), .Y(
        \COREABC_0/m249_0 ));
    NOR2B \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTlOl_RNO[7]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[7]_net_1 ), .B(
        \CoreUARTapb_0/CUARTO1OI[0]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTlOl_2[7] ));
    DFN1E1C0 \CoreUARTapb_0/CUARTO1OI[0]  (.D(
        \COREABC_0_APB3master_PWDATA[0] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTO1OI4 ), .Q(
        \CoreUARTapb_0/CUARTO1OI[0]_net_1 ));
    OR3 \CORESPI_0/USPI/UCC/mtx_state_RNO[0]  (.A(
        \CORESPI_0/USPI/UCC/N_76 ), .B(\CORESPI_0/USPI/UCC/N_77 ), .C(
        \CORESPI_0/USPI/SPISS_2[0] ), .Y(
        \CORESPI_0/USPI/UCC/mtx_state_ns[0] ));
    DFN1E0C0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI01  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI01_0_sqmuxa ), .CLK(
        GLA), .CLR(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/un1_CUARTI0111 ), .Q(
        \CoreUARTapb_0/FRAMING_ERR ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_m60_0  (.A(
        \COREABC_0/RAMRDATA[9] ), .B(
        \COREABC_0/UROM.INSTR_CMD[1]_net_1 ), .Y(\COREABC_0/N_61 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m164_0  (.A(\COREABC_0/N_163_0 ), 
        .B(\COREABC_0/N_164_0 ), .S(\COREABC_0/SMADDR[1] ), .Y(
        \COREABC_0/N_165_0 ));
    OA1A \COREABC_0/un1_ACCUMULATOR_ICYCLE_ns_i_a2_1_0[0]  (.A(
        \COREABC_0/DOISR_0 ), .B(\COREABC_0/ICYCLE[1]_net_1 ), .C(
        \COREABC_0/un1_ACCUMULATOR.ICYCLE_ns_i_a2_0[0] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ICYCLE_ns_i_a2_1_0[0] ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_m137_e  (.A(\COREABC_0/SMADDR[2] )
        , .B(\COREABC_0/SMADDR[1] ), .Y(\COREABC_0/N_277_0 ));
    INV \CORESPI_0/USPI/UCC/rx_alldone_RNO  (.A(
        \CORESPI_0/USPI/UCC/msrxp_alldone_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/msrxp_alldone_i ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m259  (.A(\COREABC_0/N_259 ), .B(
        \COREABC_0/N_152_0 ), .S(\COREABC_0/SMADDR_0[5] ), .Y(
        \COREABC_0/N_260 ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I86_un1_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N217 ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I63_Y_0 ), .C(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_3_mux_0 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.I86_un1_Y ));
    NOR3C \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_RNIK20K1[1]  (.A(
        \CoreUARTapb_0/CUARTI1OI[1] ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1[1]_net_1 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_110_2 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_111 ));
    NOR2 \CORESPI_0/USPI/UCC/mtx_bitsel_n3_0  (.A(
        \CORESPI_0/USPI/UCC/N_28_i ), .B(
        \CORESPI_0/USPI/UCC/un1_sresetn_16 ), .Y(
        \CORESPI_0/USPI/UCC/N_596 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m240  (.A(\COREABC_0/N_14_1 ), .B(
        \COREABC_0/N_25_1 ), .S(\COREABC_0/SMADDR_0[2] ), .Y(
        \COREABC_0/N_241 ));
    DFN1C0 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l[2]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l_RNO[2]_net_1 ), 
        .CLK(GLA), .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l[2]_net_1 ));
    DFN1E1 \CORESPI_0/USPI/URXF/fifo_mem_q_fifo_mem_q_ram1_[1]  (.D(
        \CORESPI_0/USPI/rx_fifo_data_in[0] ), .CLK(GLA), .E(
        \CORESPI_0/USPI/URXF/awe1 ), .Q(\CORESPI_0/USPI/URXF/ram1_1 ));
    NOR3A 
        \COREABC_0/un1_ACCUMULATOR_xhdl_41.xhdl_40_l3.un13_flagvalue_12  
        (.A(
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.xhdl_40_l3.un13_flagvalue_8 )
        , .B(\COREABC_0/ZREGISTER[4] ), .C(\COREABC_0/ZREGISTER[3] ), 
        .Y(
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.xhdl_40_l3.un13_flagvalue_12 )
        );
    DFN1E1 \CORESPI_0/USPI/URXF/fifo_mem_q_fifo_mem_q_ram3_[1]  (.D(
        \CORESPI_0/USPI/rx_fifo_data_in[0] ), .CLK(GLA), .E(
        \CORESPI_0/USPI/URXF/N_54 ), .Q(\CORESPI_0/USPI/URXF/ram3_1 ));
    DFN1C0 \CORESPI_0/USPI/URF/sticky[0]  (.D(
        \CORESPI_0/USPI/URF/N_44 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(\CORESPI_0/USPI/URF/sticky[0]_net_1 ));
    NOR2 \COREABC_0/un1_ACCUMULATOR_m58_0  (.A(\COREABC_0/N_58_0 ), .B(
        \COREABC_0/DOISR ), .Y(\COREABC_0/N_59_0 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m145_0  (.A(\COREABC_0/N_141_0 ), 
        .B(\COREABC_0/N_145_0 ), .S(\COREABC_0/SMADDR_1[1] ), .Y(
        \COREABC_0/N_146_0 ));
    OA1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I21_Y  (.A(
        \COREABC_0_APB3master_PWDATA[12] ), .B(
        \COREABC_0/ZREGISTER[12] ), .C(\COREABC_0/un33_ZREGISTER.N238 )
        , .Y(\COREABC_0/un33_ZREGISTER.N256 ));
    OR2 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I2_P0N  (.A(
        \COREABC_0/ZREGISTER[2] ), .B(\COREABC_0_APB3master_PWDATA[2] )
        , .Y(\COREABC_0/un33_ZREGISTER.N211 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m200  (.A(\COREABC_0/N_200_0 ), .B(
        \COREABC_0/N_14_1 ), .S(\COREABC_0/SMADDR_0[2] ), .Y(
        \COREABC_0/N_201 ));
    DFN1C0 \COREABC_0/ZREGISTER[12]/U1  (.D(
        \COREABC_0/ZREGISTER[12]/Y ), .CLK(GLA), .CLR(
        \COREABC_0/genblk2.RSTSYNC2_1_net_1 ), .Q(
        \COREABC_0/ZREGISTER[12] ));
    XOR2 \CoreUARTapb_0/CUARTlOlI/CUARTll0_RNO[1]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTll0[0]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTll0[1]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/N_102_i ));
    NOR3C \CORESPI_0/USPI/URF/cfg_ssel_RNIGJTN[5]  (.A(
        \COREABC_0_APB3master_PADDR[2] ), .B(
        \CORESPI_0/USPI/URF/cfg_ssel[5]_net_1 ), .C(
        \CORESPI_0.USPI.URF.N_125 ), .Y(
        \CORESPI_0/USPI/URF/cfg_m1_0_a2_0_1 ));
    OR3 \COREABC_0/un1_ACCUMULATOR_xhdl_41.flagvalue_2  (.A(
        \COREABC_0/UROM.INSTR_DATA[7]_net_1 ), .B(
        \COREABC_0/xhdl_41.xhdl_40_l4.un17_flagvalue ), .C(
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.flagvalue_0 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.flagvalue_2 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I35_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N220 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N217 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N270 ));
    XA1C \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTO00l_RNO  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTO00l_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_34 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[5]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTO00l_5 ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_ACCUMULATOR_m_0[10]  (.A(
        \COREABC_0/un1_ACCUMULATOR.ALUOUT_5_sqmuxa_0 ), .B(
        \COREABC_0/ACCUMULATOR[10] ), .C(\COREABC_0/xhdl_31.MSEL[1] ), 
        .Y(\COREABC_0/ACCUMULATOR_m_0[10] ));
    MX2 \COREABC_0/ACCUMULATOR[5]/U0  (.A(\COREABC_0/ACCUMULATOR[5] ), 
        .B(\COREABC_0/ACCUM_NEXT[5] ), .S(\COREABC_0/ACCUMULATOR4 ), 
        .Y(\COREABC_0/ACCUMULATOR[5]/Y ));
    XNOR2 \CoreUARTapb_0/CUARTlOlI/CUARTO01/m9  (.A(
        \CoreUARTapb_0/CUARTO1OI[1]_net_1 ), .B(
        \CoreUARTapb_0/CUARTO1OI[0]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_7 ));
    DFN1E1C0 \CORESPI_0/USPI/URF/control1[4]  (.D(
        \COREABC_0_APB3master_PWDATA[4] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/URF/N_118 ), .Q(
        \CORESPI_0/USPI/URF/control1[4]_net_1 ));
    NOR3 \COREABC_0/un1_ACCUMULATOR_m7_0_2  (.A(\COREABC_0/SMADDR[10] )
        , .B(\COREABC_0/SMADDR[11] ), .C(\COREABC_0/SMADDR[8] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.m7_0_2 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_SHIFTLSB  (.A(
        \COREABC_0/UROM.INSTR_DATA[0]_net_1 ), .B(\COREABC_0/N_389 ), 
        .S(\COREABC_0/UROM.INSTR_DATA[1]_net_1 ), .Y(
        \COREABC_0/SHIFTLSB ));
    NOR3 \COREABC_0/un1_ACCUMULATOR_ADD_m3_0_a2  (.A(
        \COREABC_0_APB3master_PADDR[12] ), .B(
        \COREABC_0/ACCUMULATOR[4] ), .C(
        \COREABC_0/UROM.INSTR_SCMD_RNIOF7U[1]_net_1 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_7_mux_1 ));
    NOR3B \CORESPI_0/USPI/URF/control1_RNIM7RL[0]  (.A(
        \CORESPI_0.USPI.URF.N_127 ), .B(\CORESPI_0/USPI/cfg_enable ), 
        .C(\CORESPI_0/USPI/URF/N_61 ), .Y(
        \CORESPI_0.USPI.URF.control1_m[0] ));
    DFN1E1C0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTlOl[2]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[2]_net_1 ), .CLK(
        GLA), .CLR(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTlOl_1_sqmuxa ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTlOl[2] ));
    DFN1E1 \CORESPI_0/USPI/UTXF/fifo_mem_q_fifo_mem_q_ram2_[0]  (.D(
        \CORESPI_0/USPI/tx_fifo_last_in ), .CLK(GLA), .E(
        \CORESPI_0/USPI/UTXF/awe2 ), .Q(\CORESPI_0/USPI/UTXF/ram2_0 ));
    DFN1C0 \CORESPI_0/USPI/UTXF/rd_pointer_q[0]  (.D(
        \CORESPI_0/USPI/UTXF/rd_pointer_q_3[0] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UTXF/rd_pointer_q[0]_net_1 ));
    NOR3B \CORESPI_0/USPI/URF/control1_RNIN8RL[1]  (.A(
        \CORESPI_0.USPI.URF.N_127 ), .B(\CORESPI_0.USPI.SPIMODE ), .C(
        \CORESPI_0/USPI/URF/N_61 ), .Y(
        \CORESPI_0.USPI.URF.control1_m[1] ));
    XOR3 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I114_Y  (.A(
        \COREABC_0_APB3master_PWDATA[8] ), .B(\COREABC_0/ZREGISTER[8] )
        , .C(\COREABC_0/un33_ZREGISTER.N362 ), .Y(
        \COREABC_0/un33_ZREGISTER[8] ));
    XA1 \COREABC_0/un1_ACCUMULATOR_xhdl_31.ALUOUT_5_m[9]  (.A(
        \COREABC_0/ACCUMULATOR[9] ), .B(\COREABC_0/ACCUM_IN[9] ), .C(
        \COREABC_0/ALUOUT_3_sqmuxa ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_5_m[9] ));
    DFN1E1P0 \CoreTimer_0/Count[6]  (.D(\CoreTimer_0/N_413 ), .CLK(GLA)
        , .PRE(COREABC_0_PRESETN_0), .E(\CoreTimer_0/Counte ), .Q(
        \CoreTimer_0/Count[6]_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m68_0  (.A(\COREABC_0/I_9 ), .B(
        \COREABC_0_APB3master_PWDATA[3] ), .S(
        \COREABC_0/URAM.un1_UROM.INSTR_SLOT ), .Y(\COREABC_0/N_69_0 ));
    XA1B \CoreTimer_0/Count_RNO[24]  (.A(\CoreTimer_0/Count[24]_net_1 )
        , .B(\CoreTimer_0/N_24_0 ), .C(\CoreTimer_0/un1_PreScale8 ), 
        .Y(\CoreTimer_0/N_431_i ));
    DFN1E1C0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTlOl[1]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[1]_net_1 ), .CLK(
        GLA), .CLR(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTlOl_1_sqmuxa ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTlOl[1] ));
    NOR2B \CORESPI_0/USPI/URXF/rd_pointer_q_RNI5JDM[1]  (.A(
        \CORESPI_0/USPI/URXF/rd_pointer_q[1]_net_1 ), .B(
        \CORESPI_0/USPI/URXF/rd_pointer_q[0]_net_1 ), .Y(
        \CORESPI_0/USPI/URXF/un1_data_out_dx_i_0_li[3] ));
    NOR3 \CORESPI_0/USPI/UCON/un1_PADDR_1  (.A(
        \COREABC_0_APB3master_PADDR[5] ), .B(
        \COREABC_0_APB3master_PADDR[6] ), .C(
        \COREABC_0_APB3master_PADDR[4] ), .Y(
        \CORESPI_0/USPI/UCON/un1_PADDR_1_net_1 ));
    DFN1E1C0 \CoreTimer_0/TimerPre[2]  (.D(
        \COREABC_0_APB3master_PWDATA[2] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreTimer_0/PrescaleEn_net_1 ), .Q(
        \CoreTimer_0/TimerPre[2]_net_1 ));
    MX2 \COREABC_0/ZREGISTER[6]/U0  (.A(\COREABC_0/ZREGISTER_26[6] ), 
        .B(\COREABC_0/ZREGISTER[6] ), .S(\COREABC_0/un1_ICYCLE_4 ), .Y(
        \COREABC_0/ZREGISTER[6]/Y ));
    DFN1E1C0 \CORESPI_0/USPI/UCC/mtx_datahold[1]  (.D(
        \CORESPI_0/USPI/tx_fifo_data_out[1] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(
        \CORESPI_0/USPI/UCC/mtx_fiforead_0_sqmuxa ), .Q(
        \CORESPI_0/USPI/UCC/mtx_datahold[1]_net_1 ));
    AO1C \CORESPI_0/USPI/UCC/stxs_direct_RNI2UCT  (.A(
        \CORESPI_0/USPI/UCC/un1_stxs_bitsel_1 ), .B(
        \CORESPI_0/USPI/UCC/stxs_datareg_1_sqmuxa_0 ), .C(
        \CORESPI_0/USPI/UCC/clock_rx_fe ), .Y(
        \CORESPI_0/USPI/UCC/un1_stxs_strobetx14_2 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ALUOUT_7_sqmuxa  (.A(
        \COREABC_0/un1_ACCUMULATOR.ALUOUT_5_sqmuxa_0 ), .B(
        \COREABC_0/xhdl_31.MSEL[1] ), .Y(\COREABC_0/ALUOUT_7_sqmuxa ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m26_0  (.A(\COREABC_0/N_25_1 ), .B(
        \COREABC_0/N_26_1 ), .S(\COREABC_0/SMADDR_1[2] ), .Y(
        \COREABC_0/N_27_1 ));
    NOR3C \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTOOI_RNO  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTOOI4_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTOOI4_8 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTOOI4_11 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTOOI4 ));
    NOR3C 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0_RNIHBN22[1]  
        (.A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO08_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTOOI4_8 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTOOI4_11 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO08 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m257_0  (.A(\COREABC_0/N_144 ), .B(
        \COREABC_0/N_16_1 ), .S(\COREABC_0/SMADDR_0[2] ), .Y(
        \COREABC_0/N_258_0 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_STKPTR_46  (.A(
        \COREABC_0/STKPTR[4] ), .B(\COREABC_0/I_12_0 ), .S(
        \COREABC_0/STKPTR_2_sqmuxa ), .Y(\COREABC_0/N_570 ));
    AX1 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I109_Y_0  (.A(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_0 ), .B(
        \COREABC_0/ACCUM_IN[3] ), .C(\COREABC_0/ACCUMULATOR[3] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I109_Y_0 ));
    NOR3C 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTOOI_RNIBJ922_0  
        (.A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTI0_0_sqmuxa_4_3_0 ), 
        .B(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/un1_CUARTO1 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_0_sqmuxa_1_net_1 ), 
        .Y(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTI0_0_sqmuxa_4_3 ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I19_Y_0  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_4_10 ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_5_mux_12 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N254 ));
    XA1 \COREABC_0/un1_ACCUMULATOR_un1_ACCUMULATOR_m[1]  (.A(
        \COREABC_0/un5[1] ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I107_Y_0 ), .C(
        \COREABC_0/un1_ACCUM_NEXT9_1 ), .Y(
        \COREABC_0/un1_ACCUMULATOR_m[1] ));
    AO1A \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I40_Y  (.A(
        \COREABC_0/ADD_m3_0_a3_2 ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I2_G0N_0_1 ), .C(
        \COREABC_0/un1_ACCUMULATOR.I40_un1_Y ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N275 ));
    OR2 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I6_P0N  (.A(
        \COREABC_0/ZREGISTER[6] ), .B(\COREABC_0_APB3master_PWDATA[6] )
        , .Y(\COREABC_0/un33_ZREGISTER.N223 ));
    DFN1P0 \COREABC_0/STKPTR[0]/U1  (.D(\COREABC_0/STKPTR[0]/Y ), .CLK(
        GLA), .PRE(\COREABC_0/genblk2.RSTSYNC2_2_net_1 ), .Q(
        \COREABC_0/STKPTR[0] ));
    OR2 \CORESPI_0/USPI/UCC/mtx_lastbit_RNI34FG  (.A(
        \CORESPI_0/USPI/UCC/mtx_lastbit_net_1 ), .B(
        \CORESPI_0/USPI/UCC/stxs_lastbit ), .Y(
        \CORESPI_0/USPI/UCC/msrxs_first5 ));
    XA1B \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0Il_RNITOT82  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/i1_mux ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/m66_0 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOI0_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI11_12 ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_m89_0  (.A(\COREABC_0/N_34_1 ), 
        .B(\COREABC_0/SMADDR[1] ), .Y(\COREABC_0/N_90_0 ));
    DFN1E1C0 \CORESPI_0/USPI/URF/CLK_DIV[6]  (.D(
        \COREABC_0_APB3master_PWDATA[6] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/URF/N_120 ), .Q(
        \CORESPI_0.USPI.clk_div_val[6] ));
    NOR2 \CoreTimer_0/Count_RNIH0UK[1]  (.A(
        \CoreTimer_0/Count[1]_net_1 ), .B(\CoreTimer_0/Count[0]_net_1 )
        , .Y(\CoreTimer_0/N_67_mux ));
    XOR2 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I117_Y_0  (.A(
        \COREABC_0/ZREGISTER[11] ), .B(
        \COREABC_0_APB3master_PWDATA[11] ), .Y(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I117_Y_0 ));
    MX2 \CORESPI_0/USPI/UTXF/fifo_mem_q_fifo_mem_q_ram0__RNIB4P81[0]  
        (.A(\CORESPI_0/USPI/UTXF/N_31 ), .B(
        \CORESPI_0/USPI/UTXF/N_36_0 ), .S(
        \CORESPI_0/USPI/UTXF/rd_pointer_q[1]_net_1 ), .Y(
        \CORESPI_0/USPI/UTXF/fifo_mem_q[4] ));
    OR2A \COREABC_0/un1_ACCUMULATOR_ADD_m3_0_0  (.A(
        \COREABC_0/ACCUMULATOR[7] ), .B(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_m3_0_0 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m223  (.A(\COREABC_0/N_22_1 ), .B(
        \COREABC_0/N_153 ), .S(\COREABC_0/N_279 ), .Y(
        \COREABC_0/N_279_mux ));
    OA1 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIHTL52  (.A(
        \COREABC_0/ACCUMULATOR[10] ), .B(\COREABC_0/ACCUM_IN[10] ), .C(
        \COREABC_0/ALUOUT_2_sqmuxa ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_4_m[10] ));
    MX2 \CoreTimer_0/Count_RNO_0[6]  (.A(\CoreTimer_0/Count[6]_net_1 ), 
        .B(\CoreTimer_0/Load[6]_net_1 ), .S(
        \CoreTimer_0/un1_PreScale8_0 ), .Y(\CoreTimer_0/N_210 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I93_Y_1  (.A(
        \COREABC_0/un1_ACCUMULATOR.N254 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N257 ), .C(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I93_Y_0 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I93_Y_1 ));
    AX1 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I108_Y_0  (.A(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_1 ), .B(
        \COREABC_0/ACCUM_IN[2] ), .C(\COREABC_0/ACCUMULATOR[2] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I108_Y_0 ));
    NOR2 \CORESPI_0/USPI/UTXF/counter_q_RNO[4]  (.A(
        \CORESPI_0/USPI/UTXF/N_36 ), .B(\CORESPI_0/USPI/fiforsttx ), 
        .Y(\CORESPI_0/USPI/UTXF/N_21 ));
    NOR3A \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0_RNO[10]  (
        .A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_124 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_RNII49F8[0]_net_1 ), 
        .C(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/un1_CUARTO0_0_sqmuxa_2 ), 
        .Y(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[10] ));
    AX1D \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I116_Y  (.A(
        \COREABC_0/un33_ZREGISTER.I97_un1_Y ), .B(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I97_Y_0 ), .C(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I116_Y_0 ), .Y(
        \COREABC_0/un33_ZREGISTER[10] ));
    AOI1 \COREABC_0/un1_ACCUMULATOR_ADD_m3_9_1  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_m3_a1_0 ), .B(
        \COREABC_0/r_m1_N_6_mux_0 ), .C(\COREABC_0/ADD_m3_a0 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_m3_9_1 ));
    NOR3C \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl_RNI3RGE1[2]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl[2]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl[1]_net_1 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl[0]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_27_i ));
    AO1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I62_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N273 ), .B(
        \COREABC_0/un33_ZREGISTER.N270 ), .C(
        \COREABC_0/un33_ZREGISTER.N269 ), .Y(
        \COREABC_0/un33_ZREGISTER.N300 ));
    DFN1P0 \CORESPI_0/USPI/UCC/spi_clk_out  (.D(
        \CORESPI_0/USPI/UCC/mtx_state_i[3] ), .CLK(GLA), .PRE(
        COREABC_0_PRESETN_0), .Q(SPISCLKO_c));
    XA1 \COREABC_0/un1_ACCUMULATOR_xhdl_31.ALUOUT_5_m[0]  (.A(
        \COREABC_0/ACCUMULATOR[0] ), .B(\COREABC_0/ACCUM_IN[0] ), .C(
        \COREABC_0/ALUOUT_3_sqmuxa ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_5_m[0] ));
    OR3 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/un3_CUARTO0_I_10  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[0] ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[1] ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[2] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/DWACT_FDEC_E[0] ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I98_Y_0  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I98_un1_Y_0 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N295 ), .C(
        \COREABC_0/un1_ACCUMULATOR.N294 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I98_Y_0 ));
    XOR3 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I111_Y  (.A(
        \COREABC_0/ACCUMULATOR[5] ), .B(\COREABC_0/un5[5] ), .C(
        \COREABC_0/un1_ACCUMULATOR.N371 ), .Y(
        \COREABC_0/un1_ACCUMULATOR[5] ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I3_G0N_a1  (.A(
        \COREABC_0/r_m1_N_6_mux_0 ), .B(
        \COREABC_0/UROM.INSTR_DATA[3]_net_1 ), .Y(
        \COREABC_0/ADD_16x16_fast_I3_G0N_a1 ));
    OA1C \COREABC_0/URAM.UR/UG3.UR_xhdl12/Ram256x16_R0C0_RNIU7M21  (.A(
        \COREABC_0/RAMRDATA[2] ), .B(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_0 ), .C(
        \COREABC_0/ACCUMULATOR[2] ), .Y(\COREABC_0/d_N_5_mux_4 ));
    MX2 \CoreUARTapb_0/CUARTlOlI/CUARTIOl_RNI2ITV[0]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIOl[0]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTlOl[0] ), .S(
        \CoreUARTapb_0/PARITY_ERR_0 ), .Y(\CoreUARTapb_0/CUARTOIII[0] )
        );
    XA1 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll1_RNO_0  (.A(
        \CoreUARTapb_0/CUARTO1OI[2]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTO00l_net_1 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[4]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_60 ));
    OA1 \COREABC_0/un1_ACCUMULATOR_ACCUM_NEXT_iv_0[7]  (.A(
        \COREABC_0/un1_ACCUMULATOR.xhdl_31.ALUOUT_3_m_0[7] ), .B(
        \COREABC_0/ALUOUT_7_sqmuxa ), .C(\COREABC_0/ACCUM_IN[7] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_0[7] ));
    NOR2B \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0Il_RNO_2  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/i1_mux ), .B(
        \CoreUARTapb_0/CUARTO1OI[1]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_138 ));
    DFN1 \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/CUARTOOOI[4]  (.D(
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/CUARTl00I[4] ), 
        .CLK(GLA), .Q(\CoreUARTapb_0/CUARTlOlI/CUARTl1I[4] ));
    NOR3A \CoreTimer_0/un2_CtrlEn  (.A(\COREABC_0_APB3master_PADDR[3] )
        , .B(\COREABC_0_APB3master_PADDR[2] ), .C(
        \COREABC_0_APB3master_PADDR[4] ), .Y(
        \CoreTimer_0/un2_CtrlEn_net_1 ));
    DFN1C0 \COREABC_0/PENABLEI  (.D(\COREABC_0/ICYCLE_1_sqmuxa_1 ), 
        .CLK(GLA), .CLR(PRESETN), .Q(COREABC_0_APB3master_PENABLE));
    NOR2 \CORESPI_0/USPI/URXF/counter_d_i_0[2]  (.A(
        \CORESPI_0/USPI/URXF/N_42 ), .B(\CORESPI_0/USPI/fiforstrx ), 
        .Y(\CORESPI_0/USPI/URXF/N_11 ));
    NOR2 \CORESPI_0/USPI/UCC/mtx_state_RNO_0[1]  (.A(
        \CORESPI_0/USPI/UCC/mtx_state[1]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/spi_clk_tick_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/N_75 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I10_G0N  (.A(
        \COREABC_0/un5[10] ), .B(\COREABC_0/ACCUMULATOR[10] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N234 ));
    NOR3A \CoreTimer_0/Count_RNIIHS91[4]  (.A(\CoreTimer_0/m11_m6_e_2 )
        , .B(\CoreTimer_0/Count[4]_net_1 ), .C(
        \CoreTimer_0/Count[6]_net_1 ), .Y(\CoreTimer_0/m11_m6_e_5 ));
    NOR3A \CORESPI_0/USPI/UCC/mtx_state_RNO_1[5]  (.A(
        \CORESPI_0/USPI/UCC/mtx_state[5]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/spi_clk_tick_net_1 ), .C(
        \CORESPI_0/USPI/SPISS_2[0] ), .Y(\CORESPI_0/USPI/UCC/N_71 ));
    NOR2A \CORESPI_0/USPI/URF/un1_CLK_DIV_1_sqmuxa_i_a2_1  (.A(
        \COREABC_0_APB3master_PADDR[2] ), .B(
        \COREABC_0_APB3master_PADDR[4] ), .Y(
        \CORESPI_0.USPI.URF.N_120_1 ));
    MX2 \COREABC_0/ACCUMULATOR[12]/U0  (.A(\COREABC_0/ACCUMULATOR[12] )
        , .B(\COREABC_0/ACCUM_NEXT[12] ), .S(\COREABC_0/ACCUMULATOR4 ), 
        .Y(\COREABC_0/ACCUMULATOR[12]/Y ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I1_P0N_0  (.A(
        \COREABC_0/ADD_16x16_fast_I1_P0N_a0 ), .B(
        \COREABC_0/ACCUMULATOR[1] ), .C(
        \COREABC_0/ADD_16x16_fast_I1_P0N_a1 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N208 ));
    DFN1E1C0 \CORESPI_0/USPI/UCC/msrxs_shiftreg[1]  (.D(
        \CORESPI_0/USPI/UCC/msrxs_shiftreg_5[1] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/UCC/clock_rx_re ), .Q(
        \CORESPI_0/USPI/UCC/msrxs_shiftreg[1]_net_1 ));
    DFN1C0 \CoreTimer_0/iPRDATA[12]  (.D(
        \CoreTimer_0/PrdataNext_1[12] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(\CoreAPB3_0_APBmslave0_PRDATA[12] ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I93_Y_0  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I18_un1_Y_0 ), .B(
        \COREABC_0/un5[12] ), .C(\COREABC_0/un1_ACCUMULATOR.N243 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I93_Y_0 ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_xhdl_m1_e_0  (.A(
        \COREABC_0/UROM.INSTR_CMD[0]_net_1 ), .B(
        \COREABC_0/UROM.INSTR_CMD[1]_net_1 ), .C(
        \COREABC_0/UROM.INSTR_CMD[2]_net_1 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.un7_m1_e_0_1 ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ACCUM_NEXT_iv_5[0]  (.A(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_0[0] ), .B(
        \COREABC_0/xhdl_31.ALUOUT_5_m[0] ), .C(
        \COREABC_0/un1_ACCUMULATOR_m[0] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[0] ));
    NOR2 \CoreUARTapb_0/CUARTlOlI/CUARTO01/m100  (.A(
        \CoreUARTapb_0/CUARTO1OI[1]_net_1 ), .B(
        \CoreUARTapb_0/CUARTO1OI[0]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_120 ));
    AND3B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I4_P0N_a0  (.A(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_1 ), .B(
        \COREABC_0/r_m1_N_6_mux_0 ), .C(\COREABC_0/RAMRDATA[4] ), .Y(
        \COREABC_0/ADD_16x16_fast_I4_P0N_a0 ));
    AX1B \COREABC_0/un1_ACCUMULATOR_STKPTR_n4  (.A(
        \COREABC_0/STKPTR_2_sqmuxa ), .B(\COREABC_0/STKPTR_c3 ), .C(
        \COREABC_0/N_570 ), .Y(\COREABC_0/N_1217 ));
    DFN1C0 \COREABC_0/ACCUMULATOR[14]/U1  (.D(
        \COREABC_0/ACCUMULATOR[14]/Y ), .CLK(GLA), .CLR(PRESETN), .Q(
        \COREABC_0/ACCUMULATOR[14] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_SMADDR_21_0[4]  (.A(
        \COREABC_0/UROM.INSTR_ADDR[4]_net_1 ), .B(
        \COREABC_0/RAMRDATA[4] ), .S(
        \COREABC_0/UROM.INSTR_CMD[1]_net_1 ), .Y(\COREABC_0/N_427 ));
    NOR2B \CORESPI_0/USPI/URF/control1_RNIK0U7[4]  (.A(
        \CORESPI_0/USPI/URF/control1[4]_net_1 ), .B(
        \CORESPI_0.USPI.URF.int_raw[2] ), .Y(
        \CORESPI_0.USPI.URF.int_masked_m_0_a2_0[2] ));
    MX2C \COREABC_0/un1_ACCUMULATOR_m236_0  (.A(\COREABC_0/N_232_0 ), 
        .B(\COREABC_0/N_236 ), .S(\COREABC_0/SMADDR[0] ), .Y(
        \COREABC_0/m236_0 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_m93_0  (.A(\COREABC_0/N_93 ), .B(
        \COREABC_0/SMADDR[5] ), .Y(\COREABC_0/N_94 ));
    DFN1C0 \COREABC_0/STBFLAG  (.D(\COREABC_0/STBFLAG_5 ), .CLK(GLA), 
        .CLR(PRESETN), .Q(\COREABC_0/STBFLAG_net_1 ));
    MX2 \CORESPI_0/USPI/URXF/fifo_mem_q_fifo_mem_q_ram2__RNIVIKU[0]  (
        .A(\CORESPI_0/USPI/URXF/ram2_0 ), .B(
        \CORESPI_0/USPI/URXF/ram3_0 ), .S(
        \CORESPI_0/USPI/URXF/rd_pointer_q[0]_net_1 ), .Y(
        \CORESPI_0/USPI/URXF/N_36 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_m56_0  (.A(
        \COREABC_0/RAMRDATA[8] ), .B(
        \COREABC_0/UROM.INSTR_CMD[1]_net_1 ), .Y(\COREABC_0/N_57_0 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_m31_0  (.A(\COREABC_0/i12_mux ), 
        .B(\COREABC_0/SMADDR[5] ), .Y(\COREABC_0/INSTRUCTION[15] ));
    NOR3C \COREABC_0/un1_ACCUMULATOR_PRDATA_M_m[13]  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[13] ), .B(
        CoreAPB3_0_APBmslave0_PSELx), .C(\COREABC_0/ICYCLE24.ICYCLE24 )
        , .Y(\COREABC_0/PRDATA_M_m[13] ));
    DFN1E0C0 \CoreUARTapb_0/CUARTlOlI/CUARTIOl[6]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTl1I[6] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTlOlI/CUARTIOl4 ), 
        .Q(\CoreUARTapb_0/CUARTlOlI/CUARTIOl[6]_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m17_0  (.A(\COREABC_0/N_14_1 ), .B(
        \COREABC_0/N_17_1 ), .S(\COREABC_0/SMADDR_0[2] ), .Y(
        \COREABC_0/N_18_1 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I34_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N216 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N220 ), .C(
        \COREABC_0/un1_ACCUMULATOR.N219 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N269 ));
    MX2 \CORESPI_0/USPI/UCC/stxs_datareg_RNO[1]  (.A(
        \CORESPI_0/USPI/UCC/N_335 ), .B(
        \CORESPI_0/USPI/tx_fifo_data_out[1] ), .S(
        \CORESPI_0/USPI/UCC/un1_stxs_datareg_2_sqmuxa ), .Y(
        \CORESPI_0/USPI/UCC/stxs_datareg_10[1] ));
    DFN1C0 \CORESPI_0/USPI/URF/control2[3]  (.D(
        \CORESPI_0/USPI/URF/N_30 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(\CORESPI_0.USPI.cfg_cmdsize[2] ));
    DFN1C0 \CORESPI_0/USPI/UCC/mtx_state[1]  (.D(
        \CORESPI_0/USPI/UCC/mtx_state_RNO[1]_net_1 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/mtx_state[1]_net_1 ));
    XNOR2 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/un3_CUARTO0_I_23  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_6 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[8] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/I_23 ));
    XA1B \CoreTimer_0/PreScale_RNO[9]  (.A(\CoreTimer_0/PreScale_c8 ), 
        .B(\CoreTimer_0/PreScale[9]_net_1 ), .C(
        \CoreTimer_0/PreScale8 ), .Y(\CoreTimer_0/PreScale_n9 ));
    OR3 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/un3_CUARTO0_I_16  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/DWACT_FDEC_E[0] ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/DWACT_FDEC_E[1] ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[5] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_8 ));
    DFN1C0 \CORESPI_0/USPI/UCC/txfifo_davailable  (.D(
        \CORESPI_0/USPI/tx_fifo_empty_i ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/txfifo_davailable_net_1 ));
    MX2 \CORESPI_0/USPI/UCC/data_rx_q2_RNI6R1S  (.A(
        \CORESPI_0/USPI/UCC/data_rx_q2_net_1 ), .B(SPISDI_c), .S(
        \CORESPI_0.USPI.SPIMODE ), .Y(\CORESPI_0/USPI/UCC/spi_di_mux ));
    XOR2 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I116_Y_0  (.A(
        \COREABC_0/ACCUMULATOR[10] ), .B(\COREABC_0/un5[10] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I116_Y_0 ));
    OA1C \CORESPI_0/USPI/UCC/mtx_consecutive_RNIS7CT  (.A(
        \CORESPI_0/USPI/UCC/mtx_consecutive_net_1 ), .B(
        \CORESPI_0/USPI/UCC/mtx_lastframe_net_1 ), .C(
        \CORESPI_0/USPI/UCC/mtx_bitsel[4]_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/N_70_1 ));
    MAJ3 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I92_Y_0  (.A(
        \COREABC_0_APB3master_PWDATA[14] ), .B(
        \COREABC_0/ZREGISTER[14] ), .C(\COREABC_0/un33_ZREGISTER.N243 )
        , .Y(\COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I92_Y_0 ));
    AND2 \CORESPI_0/USPI/URXF/un1_counter_q_1_I_9  (.A(
        \CORESPI_0/USPI/URXF/counter_q[3]_net_1 ), .B(
        \CORESPI_0/USPI/URXF/counter_d_0_sqmuxa_2 ), .Y(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_0_3[0] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m134_0  (.A(\COREABC_0/N_129_0 ), 
        .B(\COREABC_0/N_134_0 ), .S(\COREABC_0/SMADDR[5] ), .Y(
        \COREABC_0/N_135 ));
    DFN1C0 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0[11]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[11] ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[11] ));
    AOI1B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_3[2]  (.A(
        \CORESPI_0.USPI.clk_div_val[2] ), .B(
        \CORESPI_0.USPI.URF.control110 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_1[2]_net_1 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_3[2]_net_1 ));
    MX2 \COREABC_0/SMADDR[11]/U0  (.A(\COREABC_0/SMADDR_21[11] ), .B(
        \COREABC_0/SMADDR[11] ), .S(\COREABC_0/un1_ICYCLE_6 ), .Y(
        \COREABC_0/SMADDR[11]/Y ));
    NOR2B \CoreUARTapb_0/m18_0  (.A(COREABC_0_APB3master_PENABLE), .B(
        COREABC_0_APB3master_PWRITE), .Y(\CoreUARTapb_0/m18_0_net_1 ));
    NOR3C \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTOOI_RNIBJ922  
        (.A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTI0_0_sqmuxa_5_2_0 ), 
        .B(\CoreUARTapb_0/CUARTI1OI[2] ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/un1_CUARTO1_3 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTI0_0_sqmuxa_5_2 ));
    NOR2 \COREABC_0/un1_ACCUMULATOR_m66_0  (.A(\COREABC_0/N_66 ), .B(
        \COREABC_0/DOISR ), .Y(\COREABC_0/N_67 ));
    DFN1E1P0 \CoreTimer_0/Count[28]  (.D(\CoreTimer_0/N_37_0 ), .CLK(
        GLA), .PRE(COREABC_0_PRESETN_0), .E(\CoreTimer_0/Counte ), .Q(
        \CoreTimer_0/Count[28]_net_1 ));
    NOR3C \CORESPI_0/USPI/URF/cfg_ssel_RNIEVKT[4]  (.A(
        \CORESPI_0/USPI/URF/cfg_m3_e_1 ), .B(
        \COREABC_0_APB3master_PADDR[2] ), .C(
        \CORESPI_0.USPI.URF.N_125 ), .Y(
        \CORESPI_0.USPI.URF.cfg_ssel_m[4] ));
    NOR2 \CoreTimer_0/Count_RNIO7UK[3]  (.A(
        \CoreTimer_0/Count[3]_net_1 ), .B(\CoreTimer_0/Count[5]_net_1 )
        , .Y(\CoreTimer_0/m11_m6_e_2 ));
    NOR2 \COREABC_0/un1_ACCUMULATOR_to_logic_4.un4_READRAM_0_a3  (.A(
        \COREABC_0/N_681 ), .B(\COREABC_0/UROM.INSTR_CMD[2]_net_1 ), 
        .Y(\COREABC_0/to_logic_4.un4_READRAM ));
    DFN1P0 \CoreTimer_0/IntClr  (.D(\CoreTimer_0/IntClrEn ), .CLK(GLA), 
        .PRE(COREABC_0_PRESETN_0), .Q(\CoreTimer_0/IntClr_i_0 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I56_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N267 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N264 ), .C(
        \COREABC_0/un1_ACCUMULATOR.N263 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N294 ));
    NOR2B \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I45_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N252 ), .B(
        \COREABC_0/un33_ZREGISTER.N256 ), .Y(
        \COREABC_0/un33_ZREGISTER.N283 ));
    AO1 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_1[4]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA_i_1[4] ), .B(
        \COREABC_0_APB3master_PADDR[12] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_1_0[4]_net_1 ), .Y(
        \CoreAPB3_0.u_mux_p_to_b3.PRDATA_iv_i_1[4] ));
    NOR2A \CoreTimer_0/Count_RNILQ569[29]  (.A(\CoreTimer_0/N_30_0 ), 
        .B(\CoreTimer_0/Count[29]_net_1 ), .Y(\CoreTimer_0/N_31_0 ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I28_Y_a3_1  (.A(
        \COREABC_0/RAMRDATA[8] ), .B(\COREABC_0/ACCUMULATOR[8] ), .C(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_1 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I28_Y_a3_1 ));
    DFN1E1P0 \CORESPI_0/USPI/UCC/mtx_bitsel[0]  (.D(
        \CORESPI_0/USPI/UCC/N_593 ), .CLK(GLA), .PRE(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/UCC/mtx_bitsele ), .Q(
        \CORESPI_0/USPI/UCC/mtx_bitsel[0]_net_1 ));
    MX2 \CORESPI_0/USPI/UCC/stxs_datareg[3]/U0  (.A(
        \CORESPI_0/USPI/UCC/stxs_datareg_10[3] ), .B(
        \CORESPI_0/USPI/UCC/stxs_datareg[3] ), .S(
        \CORESPI_0/USPI/UCC/stxs_datareg_1_sqmuxa_2 ), .Y(
        \CORESPI_0/USPI/UCC/stxs_datareg[3]/Y ));
    NOR2B \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I59_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N266 ), .B(
        \COREABC_0/un33_ZREGISTER.N270 ), .Y(
        \COREABC_0/un33_ZREGISTER.N297 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I28_Y_a2_0  (.A(
        \COREABC_0/UROM.INSTR_DATA[7]_net_1 ), .B(
        \COREABC_0/ACCUMULATOR[7] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I28_Y_a2_0 ));
    NOR2 \CoreTimer_0/DataOut_1_sqmuxa_2  (.A(
        \COREABC_0_APB3master_PADDR[4] ), .B(
        \COREABC_0_APB3master_PADDR[3] ), .Y(
        \CoreTimer_0.DataOut_1_sqmuxa_2 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ACCUMULATOR_m[7]  (.A(
        \COREABC_0/ACCUMULATOR[7] ), .B(\COREABC_0/ALUOUT_6_sqmuxa ), 
        .Y(\COREABC_0/ACCUMULATOR_m[7] ));
    NOR2B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_0[3]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA_i_1[3] ), .B(
        \COREABC_0_APB3master_PADDR[12] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_49 ));
    DFN1C0 \CORESPI_0/USPI/UCC/clock_rx_q2  (.D(
        \CORESPI_0/USPI/UCC/clock_rx_q1_net_1 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/clock_rx_q2_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_RAMADDR[1]  (.A(\COREABC_0/I_5_0 ), 
        .B(\COREABC_0/UROM.INSTR_ADDR[1]_net_1 ), .S(
        \COREABC_0/RAMADDR_1_sqmuxa ), .Y(\COREABC_0/RAMADDR[1] ));
    DFN1C0 \CoreTimer_0/LoadEnReg  (.D(\CoreTimer_0/LoadEn_net_1 ), 
        .CLK(GLA), .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreTimer_0/LoadEnReg_net_1 ));
    DFN1E1C0 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1[2]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_n2 ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTIl ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1[2]_net_1 ));
    DFN1P0 \CORESPI_0/USPI/UCC/spi_ssel_pos  (.D(
        \CORESPI_0/USPI/UCC/mtx_state_RNINJM1[1]_net_1 ), .CLK(GLA), 
        .PRE(COREABC_0_PRESETN_0), .Q(\CORESPI_0.USPI.master_ssel_out )
        );
    NOR2B \COREABC_0/un1_ACCUMULATOR_ACCUMULATOR_m[8]  (.A(
        \COREABC_0/ACCUMULATOR[8] ), .B(\COREABC_0/ALUOUT_6_sqmuxa ), 
        .Y(\COREABC_0/ACCUMULATOR_m[8] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_SMADDR_21_0[2]  (.A(
        \COREABC_0/UROM.INSTR_ADDR[2]_net_1 ), .B(
        \COREABC_0/RAMRDATA[2] ), .S(
        \COREABC_0/UROM.INSTR_CMD[1]_net_1 ), .Y(\COREABC_0/N_425 ));
    IOPAD_IN \SPISDI_pad/U0/U0  (.PAD(SPISDI), .Y(\SPISDI_pad/U0/NET1 )
        );
    DFN1P0 \COREABC_0/STKPTR[4]/U1  (.D(\COREABC_0/STKPTR[4]/Y ), .CLK(
        GLA), .PRE(\COREABC_0/genblk2.RSTSYNC2_2_net_1 ), .Q(
        \COREABC_0/STKPTR[4] ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ACCUM_NEXT_iv_3[6]  (.A(
        \COREABC_0/ACCUMULATOR_m_0[5] ), .B(
        \COREABC_0/xhdl_31.ALUOUT_3_m[6] ), .C(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[6] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_3[6] ));
    IOPAD_BI \BIBUF_0/U0/U0  (.D(\BIBUF_0/U0/NET1 ), .E(
        \BIBUF_0/U0/NET2 ), .Y(\BIBUF_0/U0/NET3 ), .PAD(SDA_MCU));
    NOR3C \CoreTimer_0/Count_RNICRF22[25]  (.A(\CoreTimer_0/m32_0 ), 
        .B(\CoreTimer_0/m32_m6_e_1 ), .C(\CoreTimer_0/un1_m6_i_a3_2 ), 
        .Y(\CoreTimer_0/un1_m6_i_a3_4 ));
    AO1A \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I14_P0N  (.A(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_1 ), .B(
        \COREABC_0/ACCUM_IN[14] ), .C(\COREABC_0/ACCUMULATOR[14] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N247 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ACCUM_NEXT_iv_1[4]  (.A(
        \COREABC_0/ACCUM_IN[4] ), .B(\COREABC_0/ALUOUT_7_sqmuxa ), .C(
        \COREABC_0/ACCUMULATOR_m[5] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[4] ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_SMADDR_0_sqmuxa_0  (.A(
        \COREABC_0/UROM.INSTR_SCMD[1]_net_1 ), .B(
        \COREABC_0/UROM.INSTR_CMD[1]_net_1 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.SMADDR_0_sqmuxa_0 ));
    NOR2A \CoreTimer_0/Count_RNI1RBK5[17]  (.A(\CoreTimer_0/N_17_0 ), 
        .B(\CoreTimer_0/Count[17]_net_1 ), .Y(\CoreTimer_0/N_18_0 ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNILLKRN1  (.A(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_4[4] ), .B(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_3[4] ), .C(
        \COREABC_0/un1_ACCUMULATOR_m[4] ), .Y(
        \COREABC_0/ACCUM_NEXT[4] ));
    XA1 \CORESPI_0/USPI/UCC/msrxp_frames_RNO[2]  (.A(
        \CORESPI_0/USPI/UCC/msrxp_frames[2]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/CO1 ), .C(
        \CORESPI_0/USPI/UCC/un1_sresetn_4_i ), .Y(
        \CORESPI_0/USPI/UCC/msrxp_frames_4[2] ));
    MX2C \CoreUARTapb_0/CUARTOOII_RNID5FL1[2]  (.A(
        \CoreUARTapb_0/CUARTOOII[2]_net_1 ), .B(
        \CoreUARTapb_0/CUARTOIII[2] ), .S(\CoreUARTapb_0/PARITY_ERR ), 
        .Y(\CoreAPB3_0_APBmslave1_PRDATA_i_1[2] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m43_0  (.A(\COREABC_0/N_43_1 ), .B(
        \COREABC_0/N_48 ), .S(\COREABC_0/SMADDR[0] ), .Y(
        \COREABC_0/i12_mux_1 ));
    NOR3C \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I95_un1_Y_1  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_6_3 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N289 ), .C(
        \COREABC_0/un1_ACCUMULATOR.N297 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.I95_un1_Y ));
    DFN1E1C0 \CoreTimer_0/Load[3]  (.D(
        \COREABC_0_APB3master_PWDATA[3] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreTimer_0/LoadEn_net_1 ), .Q(
        \CoreTimer_0/Load[3]_net_1 ));
    DFN1E1P0 \CoreTimer_0/Count[4]  (.D(\CoreTimer_0/N_411 ), .CLK(GLA)
        , .PRE(COREABC_0_PRESETN_0), .E(\CoreTimer_0/Counte ), .Q(
        \CoreTimer_0/Count[4]_net_1 ));
    OR2 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I28_Y_1_tz_tz_tz_tz  
        (.A(\COREABC_0/RAMRDATA[8] ), .B(\COREABC_0/ACCUMULATOR[8] ), 
        .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I28_Y_0_tz_tz_tz_tz )
        );
    DFN1P0 \COREABC_0/SMADDR[2]/U1  (.D(\COREABC_0/SMADDR[2]/Y ), .CLK(
        GLA), .PRE(\COREABC_0/genblk2.RSTSYNC2_1_net_1 ), .Q(
        \COREABC_0/SMADDR[2] ));
    NOR2B \CoreUARTapb_0/CUARTOOII_RNO_2[0]  (.A(
        \CoreUARTapb_0/CUARTOIII[0] ), .B(
        \COREABC_0_APB3master_PADDR[2] ), .Y(\CoreUARTapb_0/N_84 ));
    MX2 \CORESPI_0/USPI/URXF/fifo_mem_q_fifo_mem_q_ram1__RNI1KN72[1]  
        (.A(\CORESPI_0/USPI/URXF/N_32 ), .B(\CORESPI_0/USPI/URXF/N_37 )
        , .S(\CORESPI_0/USPI/URXF/rd_pointer_q[1]_net_1 ), .Y(
        \CORESPI_0.USPI.rx_fifo_data_out[0] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m211  (.A(\COREABC_0/N_26_1 ), .B(
        \COREABC_0/N_22_1 ), .S(\COREABC_0/SMADDR_0[2] ), .Y(
        \COREABC_0/N_212 ));
    MX2B \CoreUARTapb_0/CUARTOOII_RNO[3]  (.A(\CoreUARTapb_0/N_67_0 ), 
        .B(\CoreUARTapb_0/i23_i ), .S(
        \COREABC_0_APB3master_PADDR_0[3] ), .Y(\CoreUARTapb_0/N_69_0 ));
    DFN1C1 \CORESPI_0/USPI/UCC/stxs_txzeros/U1  (.D(
        \CORESPI_0/USPI/UCC/stxs_txzeros/Y ), .CLK(GLA), .CLR(
        \CORESPI_0/USPI/UCC/ssel_rx_q2_RNIBQH6_net_1 ), .Q(
        \CORESPI_0/USPI/UCC/stxs_txzeros ));
    MX2 \COREABC_0/un1_ACCUMULATOR_RAMWDATA_0[2]  (.A(\COREABC_0/I_7 ), 
        .B(\COREABC_0_APB3master_PWDATA[2] ), .S(
        \COREABC_0/URAM.un1_UROM.INSTR_SLOT ), .Y(\COREABC_0/N_464 ));
    OA1B \CORESPI_0/USPI/URF/control2_RNISFSU6[5]  (.A(
        \CORESPI_0/USPI/URF/rdata_iv_3[5] ), .B(
        \CORESPI_0/USPI/URF/rdata_iv_4[5] ), .C(
        \CORESPI_0.USPI.URF.N_62 ), .Y(\CORESPI_0.USPI.prdata_regs[5] )
        );
    OR3 \COREABC_0/un1_ACCUMULATOR_xhdl_41.flagvalue_5  (.A(
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.flagvalue_2 ), .B(
        \COREABC_0/xhdl_41.xhdl_40_l1.un5_flagvalue ), .C(
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.flagvalue_3 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.flagvalue_5 ));
    DFN1E1C0 \CORESPI_0/USPI/URF/control1[5]  (.D(
        \COREABC_0_APB3master_PWDATA[5] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/URF/N_118 ), .Q(
        \CORESPI_0/USPI/URF/control1[5]_net_1 ));
    OR3 \COREABC_0/un1_ACCUMULATOR_STKPTR_51_0  (.A(
        \COREABC_0/STKPTR[5] ), .B(\COREABC_0/STKPTR_c4 ), .C(
        \COREABC_0/STKPTR[6] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.STKPTR_51_0 ));
    DFN1E1C0 \CoreUARTapb_0/genblk1.CUARTI1OI[0]  (.D(
        \COREABC_0_APB3master_PWDATA[0] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTI1OI4 ), .Q(
        \CoreUARTapb_0/CUARTI1OI[0] ));
    NOR3 \COREABC_0/un1_ACCUMULATOR_ADD_m3_6  (.A(\COREABC_0/ADD_m1_3 )
        , .B(\COREABC_0/ACCUMULATOR[3] ), .C(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_0 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_5_mux_5 ));
    IOIN_IB \Power_Down_pad/U0/U1  (.YIN(\Power_Down_pad/U0/NET1 ), .Y(
        Power_Down_c));
    NOR3C \CORESPI_0/USPI/URF/rdata54_0_a2_RNI9KFU  (.A(
        \CORESPI_0/USPI/URF/sticky[1]_net_1 ), .B(
        \CORESPI_0/USPI/URF/sticky[0]_net_1 ), .C(
        \CORESPI_0/USPI/URF/rdata54 ), .Y(
        \CORESPI_0.USPI.URF.status_byte_m[1] ));
    MX2 \CORESPI_0/USPI/UCC/stxs_datareg_RNO[3]  (.A(
        \CORESPI_0/USPI/UCC/N_337 ), .B(
        \CORESPI_0/USPI/tx_fifo_data_out[3] ), .S(
        \CORESPI_0/USPI/UCC/un1_stxs_datareg_2_sqmuxa ), .Y(
        \CORESPI_0/USPI/UCC/stxs_datareg_10[3] ));
    OR3 \COREABC_0/un1_ACCUMULATOR_STKPTRlde  (.A(
        \COREABC_0/STKPTR_1_sqmuxa ), .B(\COREABC_0/DOISR_0_sqmuxa ), 
        .C(\COREABC_0/STKPTR_2_sqmuxa ), .Y(\COREABC_0/STKPTRe ));
    DFN1C0 \COREABC_0/ZREGISTER[7]/U1  (.D(\COREABC_0/ZREGISTER[7]/Y ), 
        .CLK(GLA), .CLR(\COREABC_0/genblk2.RSTSYNC2_2_net_1 ), .Q(
        \COREABC_0/ZREGISTER[7] ));
    AND3 \COREABC_0/un37_SMADDR_I_19  (.A(
        \COREABC_0/un37_SMADDR.U1.DWACT_FINC_E[0] ), .B(
        \COREABC_0/un37_SMADDR.U1.DWACT_FINC_E[2] ), .C(
        \COREABC_0/SMADDR[6] ), .Y(\COREABC_0/un37_SMADDR.N_6 ));
    XO1 \CORESPI_0/USPI/UCC/clk_div_val_reg_RNIQQ5O[1]  (.A(
        \CORESPI_0/USPI/UCC/spi_clk_count[1]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/clk_div_val_reg[1]_net_1 ), .C(
        \CORESPI_0/USPI/UCC/spi_clk_nextd4_0 ), .Y(
        \CORESPI_0/USPI/UCC/spi_clk_nextd4_NE_3 ));
    NOR2B 
        \COREABC_0/un1_ACCUMULATOR_xhdl_41.xhdl_40_l6.un25_flagvalue  
        (.A(\CoreTimer_0.iTimInt ), .B(
        \COREABC_0/UROM.INSTR_DATA[6]_net_1 ), .Y(
        \COREABC_0/xhdl_41.xhdl_40_l6.un25_flagvalue ));
    NOR2A \CORESPI_0/USPI/URF/control1_RNIPECA[5]  (.A(
        \CORESPI_0/USPI/URF/control1[5]_net_1 ), .B(
        \COREABC_0_APB3master_PADDR[2] ), .Y(
        \CORESPI_0/USPI/URF/control1_m1_e_0 ));
    OA1 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIANMS1  (.A(
        \COREABC_0/ACCUMULATOR[4] ), .B(\COREABC_0/ACCUM_IN[4] ), .C(
        \COREABC_0/ALUOUT_2_sqmuxa ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_4_m[4] ));
    DFN1C0 \CORESPI_0/USPI/UCC/mtx_lastbit  (.D(
        \CORESPI_0/USPI/UCC/txfifo_dhold_dec[0] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/mtx_lastbit_net_1 ));
    OR2A \CORESPI_0/USPI/UCC/msrxp_strobe_RNIMEIF  (.A(
        \CORESPI_0/USPI/UCC/un1_sresetn_4_i ), .B(
        \CORESPI_0/USPI/rx_fifo_write ), .Y(
        \CORESPI_0/USPI/UCC/un1_msrxp_strobe ));
    DFN1E1 \CORESPI_0/USPI/UTXF/fifo_mem_q_fifo_mem_q_ram1_[2]  (.D(
        \COREABC_0_APB3master_PWDATA[1] ), .CLK(GLA), .E(
        \CORESPI_0/USPI/UTXF/awe1 ), .Q(\CORESPI_0/USPI/UTXF/ram1_2 ));
    NOR3B \CORESPI_0/USPI/UCC/cfg_enable_P1_RNIDQUT  (.A(
        \CORESPI_0/USPI/cfg_enable ), .B(
        \CORESPI_0/USPI/UCC/cfg_enable_P1_net_1 ), .C(
        \CORESPI_0.USPI.SPIMODE ), .Y(\CORESPI_0/USPI/UCC/stxs_state4 )
        );
    XOR3 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I107_Y  (.A(
        \COREABC_0_APB3master_PWDATA[1] ), .B(\COREABC_0/ZREGISTER[1] )
        , .C(\COREABC_0/un33_ZREGISTER.N204 ), .Y(
        \COREABC_0/un33_ZREGISTER[1] ));
    DFN1E1 \CORESPI_0/USPI/UTXF/fifo_mem_q_fifo_mem_q_ram3_[2]  (.D(
        \COREABC_0_APB3master_PWDATA[1] ), .CLK(GLA), .E(
        \CORESPI_0/USPI/UTXF/N_52 ), .Q(\CORESPI_0/USPI/UTXF/ram3_2 ));
    NOR3 \CORESPI_0/USPI/UCC/spi_clk_tick_RNO  (.A(
        \CORESPI_0/USPI/UCC/spi_clk_nextd4_NE_4 ), .B(
        \CORESPI_0/USPI/UCC/spi_clk_nextd4_NE_5 ), .C(
        \CORESPI_0/USPI/SPISS_2[0] ), .Y(
        \CORESPI_0/USPI/UCC/spi_clk_tick_4 ));
    AO1 \CORESPI_0/USPI/UTXF/empty_out_RNO  (.A(
        \CORESPI_0/USPI/UTXF/empty_out_2_0_a3_3 ), .B(
        \CORESPI_0/USPI/UTXF/N_34 ), .C(\CORESPI_0/USPI/fiforsttx ), 
        .Y(\CORESPI_0/USPI/UTXF/empty_out_2 ));
    DFN1C0 \CORESPI_0/USPI/UCC/mtx_re  (.D(\CORESPI_0/USPI/UCC/N_61 ), 
        .CLK(GLA), .CLR(COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/mtx_re_net_1 ));
    NOR3B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_a3[6]  (.A(
        \CORESPI_0.USPI.URF.int_raw[6] ), .B(
        \CORESPI_0.USPI.URF.rdata53 ), .C(\CORESPI_0.USPI.URF.N_62 ), 
        .Y(\CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_a3[6]_net_1 ));
    DFN1P0 \COREABC_0/SMADDR[8]/U1  (.D(\COREABC_0/SMADDR[8]/Y ), .CLK(
        GLA), .PRE(\COREABC_0/genblk2.RSTSYNC2_1_net_1 ), .Q(
        \COREABC_0/SMADDR[8] ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I52_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N263 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N260 ), .C(
        \COREABC_0/un1_ACCUMULATOR.N259 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N290 ));
    AX1B \CoreTimer_0/Count_RNO[1]  (.A(\CoreTimer_0/un1_PreScale8_0 ), 
        .B(\CoreTimer_0/Count[0]_net_1 ), .C(\CoreTimer_0/N_200 ), .Y(
        \CoreTimer_0/N_408 ));
    OR2 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTO00l_RNO_0  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_88 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[5]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/un1_CUARTO00l_1_sqmuxa ));
    AO1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I96_Y_0  (.A(
        \COREABC_0/un33_ZREGISTER.N298 ), .B(
        \COREABC_0/un33_ZREGISTER.N291 ), .C(
        \COREABC_0/un33_ZREGISTER.N290 ), .Y(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I96_Y_0 ));
    XOR3 \CORESPI_0/USPI/URXF/un1_counter_q_1_I_23  (.A(
        \CORESPI_0/USPI/URXF/counter_q[2]_net_1 ), .B(
        \CORESPI_0/USPI/URXF/counter_d_0_sqmuxa_2 ), .C(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_1_0[0] ), .Y(
        \CORESPI_0/USPI/URXF/un1_counter_q1[2] ));
    DFN1 \CoreUARTapb_0/CUARTlOlI/genblk2.CUARTl11/CUARTOOOI[2]  (.D(
        \CoreUARTapb_0/CUARTlOlI/genblk2.CUARTl11/CUARTl00I[2] ), .CLK(
        GLA), .Q(\CoreUARTapb_0/CUARTlOlI/CUARTI1I[2] ));
    DFN1 \COREABC_0/UROM.INSTR_CMD[1]  (.D(\COREABC_0/m249_0 ), .CLK(
        GLA), .Q(\COREABC_0/UROM.INSTR_CMD[1]_net_1 ));
    DFN1C0 \COREABC_0/ZREGISTER[14]/U1  (.D(
        \COREABC_0/ZREGISTER[14]/Y ), .CLK(GLA), .CLR(
        \COREABC_0/genblk2.RSTSYNC2_1_net_1 ), .Q(
        \COREABC_0/ZREGISTER[14] ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_xhdl_41.xhdl_40_l1.un5_flagvalue  
        (.A(\COREABC_0/ACCUM_ZERO_1 ), .B(
        \COREABC_0/UROM.INSTR_DATA[1]_net_1 ), .Y(
        \COREABC_0/xhdl_41.xhdl_40_l1.un5_flagvalue ));
    AO1 \CORESPI_0/USPI/UCC/stxs_dataerr_RNO  (.A(
        \CORESPI_0/USPI/UCC/stxs_checkorun_m_0 ), .B(
        \CORESPI_0/USPI/UCC/stxs_checkorun_1_sqmuxa ), .C(
        \CORESPI_0/USPI/UCC/stxs_dataerr_m ), .Y(
        \CORESPI_0/USPI/UCC/stxs_dataerr_5 ));
    NOR3A 
        \COREABC_0/un1_ACCUMULATOR_xhdl_41.xhdl_40_l3.un13_flagvalue_10  
        (.A(
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.xhdl_40_l3.un13_flagvalue_4 )
        , .B(\COREABC_0/ZREGISTER[9] ), .C(\COREABC_0/ZREGISTER[10] ), 
        .Y(
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.xhdl_40_l3.un13_flagvalue_10 )
        );
    DFN1C0 \COREABC_0/ZREGISTER[9]/U1  (.D(\COREABC_0/ZREGISTER[9]/Y ), 
        .CLK(GLA), .CLR(\COREABC_0/genblk2.RSTSYNC2_2_net_1 ), .Q(
        \COREABC_0/ZREGISTER[9] ));
    AOI1B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_4[2]  (.A(
        \CORESPI_0.USPI.URF.cfg_ssel[2] ), .B(
        \CORESPI_0.USPI.URF.control19 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_2[2]_net_1 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_4[2]_net_1 ));
    MX2 \COREABC_0/STKPTR[5]/U0  (.A(\COREABC_0/STKPTR[5] ), .B(
        \COREABC_0/N_1218 ), .S(\COREABC_0/STKPTRe ), .Y(
        \COREABC_0/STKPTR[5]/Y ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_ACCUMULATOR_m_0[6]  (.A(
        \COREABC_0/un1_ACCUMULATOR.ALUOUT_5_sqmuxa_0 ), .B(
        \COREABC_0/ACCUMULATOR[6] ), .C(\COREABC_0/xhdl_31.MSEL[1] ), 
        .Y(\COREABC_0/ACCUMULATOR_m_0[6] ));
    MX2 \COREABC_0/SMADDR_1[2]/U0  (.A(\COREABC_0/SMADDR_21[2] ), .B(
        \COREABC_0/SMADDR_1[2] ), .S(\COREABC_0/un1_ICYCLE_6 ), .Y(
        \COREABC_0/SMADDR_1[2]/Y ));
    NOR2A \CORESPI_0/USPI/UCC/mtx_state_RNIKE5O[3]  (.A(
        \CORESPI_0/USPI/UCC/mtx_state[3]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/N_53 ), .Y(\CORESPI_0/USPI/UCC/N_61 ));
    MX2 \CORESPI_0/USPI/UCC/stxs_datareg_RNO_0[2]  (.A(
        \CORESPI_0/USPI/UCC/txfifo_datadelay[1]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/stxs_datareg[1] ), .S(
        \CORESPI_0/USPI/UCC/stxs_bitcnt_0_sqmuxa ), .Y(
        \CORESPI_0/USPI/UCC/N_336 ));
    NOR3C \COREABC_0/un1_ACCUMULATOR_xhdl_31.ALUOUT_3_m[15]  (.A(
        \COREABC_0/ALUOUT_1_sqmuxa ), .B(\COREABC_0/ACCUMULATOR[15] ), 
        .C(\COREABC_0/ACCUM_IN[15] ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_3_m[15] ));
    XO1 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIOll_RNIS25G[1]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il[1]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIOll[1]_net_1 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll019_0 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll019_NE_1 ));
    AO1 \CORESPI_0/USPI/URF/cfg_ssel_RNI1NNM2[3]  (.A(
        \CORESPI_0/USPI/URF/cfg_ssel[3]_net_1 ), .B(
        \CORESPI_0.USPI.URF.control19 ), .C(
        \CORESPI_0/USPI/URF/rdata_0_iv_2_1[3] ), .Y(
        \CORESPI_0.USPI.URF.rdata_0_iv_2[3] ));
    AX1C \COREABC_0/un1_STKPTRP1_I_12  (.A(\COREABC_0/STKPTR[3] ), .B(
        \COREABC_0/un1_STKPTRP1.U1.DWACT_FINC_E[0] ), .C(
        \COREABC_0/STKPTR[4] ), .Y(\COREABC_0/I_12_0 ));
    OA1C \COREABC_0/un1_ACCUMULATOR_ADD_m3_2_1  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_m2_2_a0_0 ), .B(
        \COREABC_0/un1_ACCUMULATOR.un7_m1_e_0_1 ), .C(
        \COREABC_0/Ram256x16_R0C0_RNI4G911_1 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_m3_2_1 ));
    NOR2B \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I2_G0N  (.A(
        \COREABC_0/ZREGISTER[2] ), .B(\COREABC_0_APB3master_PWDATA[2] )
        , .Y(\COREABC_0/un33_ZREGISTER.N210 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_xhdl_31.ALUOUT_3_m_0[5]  (.A(
        \COREABC_0/ACCUMULATOR[5] ), .B(\COREABC_0/ALUOUT_1_sqmuxa ), 
        .Y(\COREABC_0/un1_ACCUMULATOR.xhdl_31.ALUOUT_3_m_0[5] ));
    AO1 \CoreTimer_0/CountPulse_RNI2LVFO_0  (.A(
        \CoreTimer_0/un1_CtrlReg ), .B(
        \CoreTimer_0/Count_RNIC07P9[22]_net_1 ), .C(
        \CoreTimer_0/un1_PreScale8_0_0 ), .Y(\CoreTimer_0/Counte_0 ));
    DFN1C0 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1[0]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_e0 ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1[0]_net_1 ));
    AOI1 \CoreTimer_0/iPRDATA_RNO[4]  (.A(\CoreTimer_0/Count[4]_net_1 )
        , .B(\CoreTimer_0/DataOut_1_sqmuxa_net_1 ), .C(
        \CoreTimer_0/Load_m[4] ), .Y(\CoreTimer_0/PrdataNext_1[4] ));
    OR2A \CORESPI_0/USPI/URXF/full_out_RNIGLTB  (.A(
        \CORESPI_0/USPI/rx_fifo_write ), .B(
        \CORESPI_0/USPI/URXF/full_out_i_0 ), .Y(\CORESPI_0/USPI/N_34 ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_to_logic10  (.A(
        \COREABC_0/STBFLAG_net_1 ), .B(INTACT), .Y(
        \COREABC_0/to_logic10 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m154_0  (.A(\COREABC_0/N_152_0 ), 
        .B(\COREABC_0/N_154_0 ), .S(\COREABC_0/SMADDR_1[1] ), .Y(
        \COREABC_0/N_155_0 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I82_un1_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N302 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N295 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.I82_un1_Y ));
    AO1A \CORESPI_0/USPI/URF/int_raw_RNO[7]  (.A(
        \CORESPI_0/USPI/URF/N_82 ), .B(
        \CORESPI_0/USPI/URF/int_raw[7]_net_1 ), .C(
        \CORESPI_0/USPI/tx_fifo_full_i_0 ), .Y(
        \CORESPI_0/USPI/URF/int_raw_51[7] ));
    NOR2B \CORESPI_0/USPI/UCC/spi_clk_count_RNO_0[7]  (.A(
        \CORESPI_0/USPI/UCC/spi_clk_count[6]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/spi_clk_count_c5 ), .Y(
        \CORESPI_0/USPI/UCC/spi_clk_count_20_0 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_PRDATA_M_m[7]  (.A(N_21), .B(
        \COREABC_0/ICYCLE24.ICYCLE24 ), .Y(\COREABC_0/PRDATA_M_m[7] ));
    NOR2B \CORESPI_0/USPI/UCC/SYNC3_stxp_strobetx_RNI3G1P  (.A(
        \CORESPI_0/USPI/UCC/SYNC2_stxp_strobetx_net_1 ), .B(
        \CORESPI_0/USPI/UCC/SYNC3_stxp_strobetx_i_0 ), .Y(
        \CORESPI_0/USPI/UCC/stxp_strobe ));
    NOR2B \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il_RNIHT42[0]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il[0]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il[3]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0I5_1 ));
    MX2 \COREABC_0/ZREGISTER[13]/U0  (.A(\COREABC_0/ZREGISTER_26[13] ), 
        .B(\COREABC_0/ZREGISTER[13] ), .S(\COREABC_0/un1_ICYCLE_4 ), 
        .Y(\COREABC_0/ZREGISTER[13]/Y ));
    AO1 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_0[5]  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA_i_0[5] ), .B(\CoreAPB3_0/N_72 ), 
        .C(\CoreAPB3_0/u_mux_p_to_b3/N_35 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_0[5]_net_1 ));
    MX2C \CORESPI_0/USPI/UTXF/un1_counter_q_m_i[3]  (.A(
        \CORESPI_0/USPI/UTXF/un1_counter_q0[3] ), .B(
        \CORESPI_0/USPI/UTXF/un1_counter_q1[3] ), .S(
        \CORESPI_0/USPI/tx_fifo_write ), .Y(\CORESPI_0/USPI/UTXF/N_38 )
        );
    AO1 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I95_Y_0  (.A(
        \COREABC_0/un1_ACCUMULATOR.N261 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N258 ), .C(
        \COREABC_0/un1_ACCUMULATOR.N257 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I95_Y_0 ));
    AND2 \CORESPI_0/USPI/URF/rdata54_0_a2  (.A(
        \CORESPI_0.USPI.URF.N_125 ), .B(\CORESPI_0.USPI.URF.N_127 ), 
        .Y(\CORESPI_0/USPI/URF/rdata54 ));
    OA1A \CoreTimer_0/CountPulse_RNO_14  (.A(
        \CoreTimer_0/TimerPre[0]_net_1 ), .B(
        \CoreTimer_0/PreScale[1]_net_1 ), .C(
        \CoreTimer_0/PreScale[0]_net_1 ), .Y(\CoreTimer_0/N_561_tz_tz )
        );
    NOR2 \COREABC_0/un1_ACCUMULATOR_xhdl_m2_0_a2_0  (.A(
        \COREABC_0/UROM.INSTR_SCMD[2]_net_1 ), .B(
        \COREABC_0/un1_ACCUMULATOR.un7_m1_e_0_1 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_0 ));
    DFN1C0 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0[10]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[10] ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[10] ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_STBRAM_7_0_a3_0  (.A(
        \COREABC_0/UROM.INSTR_CMD[0]_net_1 ), .B(\COREABC_0/N_493_1 ), 
        .Y(\COREABC_0/un1_ACCUMULATOR.STBRAM_7_0_a3_0 ));
    NOR2B \CORESPI_0/USPI/UCC/mtx_alldone_RNO  (.A(
        \CORESPI_0/USPI/UCC/N_98 ), .B(
        \CORESPI_0/USPI/UCC/mtx_lastframe_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/mtx_oen_0_sqmuxa ));
    DFN1E1C0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI11  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI11_12 ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_140_mux ), .Q(
        \CoreUARTapb_0/PARITY_ERR ));
    NOR3A \CORESPI_0/USPI/UCC/stxs_strobetx_RNO_2  (.A(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[1] ), .B(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[4] ), .C(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[0] ), .Y(
        \CORESPI_0/USPI/UCC/stxs_strobetx_2_sqmuxa_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m226_0  (.A(\COREABC_0/N_25_1 ), .B(
        \COREABC_0/N_38_1 ), .S(\COREABC_0/SMADDR_1[2] ), .Y(
        \COREABC_0/N_227_0 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I33_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N223 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N220 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N268 ));
    DFN1E1C0 \CoreUARTapb_0/CUARTO1OI[7]  (.D(
        \COREABC_0_APB3master_PWDATA[7] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTO1OI4 ), .Q(
        \CoreUARTapb_0/CUARTO1OI[7]_net_1 ));
    DFN1E1P0 \CoreTimer_0/Count[24]  (.D(\CoreTimer_0/N_431_i ), .CLK(
        GLA), .PRE(COREABC_0_PRESETN_0), .E(\CoreTimer_0/Counte_0 ), 
        .Q(\CoreTimer_0/Count[24]_net_1 ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_SMADDR_21_1[1]  (.A(
        \COREABC_0/I_5 ), .B(\COREABC_0/DOISR ), .Y(\COREABC_0/N_437 ));
    DFN1C0 \COREABC_0/STD_ACCUM_ZERO/U1  (.D(
        \COREABC_0/STD_ACCUM_ZERO/Y ), .CLK(GLA), .CLR(PRESETN), .Q(
        \COREABC_0/STD_ACCUM_ZERO ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m168_0  (.A(\COREABC_0/N_162_0 ), 
        .B(\COREABC_0/N_168_0 ), .S(\COREABC_0/SMADDR[0] ), .Y(
        \COREABC_0/INSTRUCTION[14] ));
    OR2A \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l_RNIRSBT1[3]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_30 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l[3]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_34 ));
    NOR3A \CoreTimer_0/CountPulse_RNO_8  (.A(\CoreTimer_0/N_560_tz_tz )
        , .B(\CoreTimer_0/TimerPre[3]_net_1 ), .C(
        \CoreTimer_0/TimerPre[1]_net_1 ), .Y(\CoreTimer_0/N_560_tz ));
    NOR2 \COREABC_0/un1_ACCUMULATOR_ADD_m2_2_a0_0  (.A(
        \COREABC_0/UROM.INSTR_DATA[3]_net_1 ), .B(
        \COREABC_0_APB3master_PADDR[12] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_m2_2_a0_0 ));
    DFN1C0 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0[7]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[7] ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[7] ));
    OR2 \COREABC_0/un1_ACCUMULATOR_un5[0]  (.A(\COREABC_0/ACCUM_IN[0] )
        , .B(\COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_1 ), .Y(
        \COREABC_0/un5[0] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m116_0  (.A(\COREABC_0/N_93 ), .B(
        \COREABC_0/N_90_0 ), .S(\COREABC_0/SMADDR_0[5] ), .Y(
        \COREABC_0/N_117_0 ));
    OR3A \CoreTimer_0/Count_RNO_0[10]  (.A(\CoreTimer_0/N_9_0 ), .B(
        \CoreTimer_0/Count[9]_net_1 ), .C(
        \CoreTimer_0/un1_PreScale8_0 ), .Y(\CoreTimer_0/N_217 ));
    NOR3C \CORESPI_0/USPI/UCC/mtx_state_RNO_0[5]  (.A(
        \CORESPI_0/USPI/UCC/N_70_1 ), .B(\CORESPI_0/USPI/UCC/N_92 ), 
        .C(\CORESPI_0/USPI/UCC/N_476_2 ), .Y(
        \CORESPI_0/USPI/UCC/mtx_state_ns_0_0_a2_1[5] ));
    XNOR2 \COREABC_0/un1_ACCUMULATOR_STKPTR_n6  (.A(\COREABC_0/N_574 ), 
        .B(\COREABC_0/N_573 ), .Y(\COREABC_0/N_1219 ));
    XOR2 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_RNO[0]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1[0]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTIl ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_e0 ));
    NOR2 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I6_G0N_a0  (.A(
        \COREABC_0/r_m1_N_6_mux ), .B(\COREABC_0/RAMRDATA[6] ), .Y(
        \COREABC_0/ADD_16x16_fast_I6_G0N_a0 ));
    OR3 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/un3_CUARTO0_I_8  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[0] ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[1] ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[2] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_11 ));
    NOR3A \COREABC_0/un1_ACCUMULATOR_STBRAM_7_0_a3_1_1  (.A(
        \COREABC_0/UROM.INSTR_CMD[1]_net_1 ), .B(
        \COREABC_0/UROM.INSTR_CMD[2]_net_1 ), .C(
        \COREABC_0/UROM.INSTR_SCMD_0[0]_net_1 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.STBRAM_7_0_a3_1_1 ));
    XOR2 \CORESPI_0/USPI/URXF/un1_wr_pointer_q_I_8  (.A(
        \CORESPI_0/USPI/URXF/wr_pointer_q[0]_net_1 ), .B(
        \CORESPI_0/USPI/URXF/wr_pointer_d_1_sqmuxa_1 ), .Y(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_partial_sum_2[0] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m124_0  (.A(\COREABC_0/N_123_0 ), 
        .B(\COREABC_0/N_124_0 ), .S(\COREABC_0/SMADDR_0[5] ), .Y(
        \COREABC_0/N_125_0 ));
    OR2B \COREABC_0/un1_ACCUMULATOR_un1_ICYCLE_6_0  (.A(
        \COREABC_0/ICYCLE[0]_net_1 ), .B(\COREABC_0/ICYCLE[1]_net_1 ), 
        .Y(\COREABC_0/un1_ACCUMULATOR.un1_ICYCLE_6_0 ));
    MX2 \COREABC_0/ZREGISTER[11]/U0  (.A(\COREABC_0/N_113 ), .B(
        \COREABC_0/ZREGISTER[11] ), .S(\COREABC_0/un1_ICYCLE_4 ), .Y(
        \COREABC_0/ZREGISTER[11]/Y ));
    NOR2 
        \COREABC_0/un1_ACCUMULATOR_xhdl_41.xhdl_40_l3.un13_flagvalue_1  
        (.A(\COREABC_0/ZREGISTER[13] ), .B(\COREABC_0/ZREGISTER[12] ), 
        .Y(
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.xhdl_40_l3.un13_flagvalue_1 )
        );
    NOR3C \COREABC_0/un1_ACCUMULATOR_xhdl_31.ALUOUT_3_m[11]  (.A(
        \COREABC_0/ALUOUT_1_sqmuxa ), .B(\COREABC_0/ACCUMULATOR[11] ), 
        .C(\COREABC_0/ACCUM_IN[11] ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_3_m[11] ));
    NOR3B \CORESPI_0/USPI/URF/rdata53_m1_e  (.A(
        \CORESPI_0/USPI/URF/rdata53_m1_e_1 ), .B(
        \COREABC_0_APB3master_PADDR[2] ), .C(
        \COREABC_0_APB3master_PADDR[3] ), .Y(
        \CORESPI_0.USPI.URF.rdata53 ));
    AO1C \CORESPI_0/USPI/UCC/msrxs_strobe_RNO  (.A(
        \CORESPI_0/USPI/UCC/msrxs_first5 ), .B(
        \CORESPI_0/USPI/UCC/msrxs_strobe_1_sqmuxa_0 ), .C(
        \CORESPI_0/USPI/UCC/clock_rx_re ), .Y(
        \CORESPI_0/USPI/UCC/un1_msrxs_datain_1_sqmuxa_1 ));
    XOR3 \CORESPI_0/USPI/UCC/un1_stxs_bitsel_3_I_10  (.A(
        \CORESPI_0/USPI/UCC/stxs_bitsel[1]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/stxs_state_RNIV3DN_net_1 ), .C(
        \CORESPI_0/USPI/UCC/DWACT_ADD_CI_0_TMP[0] ), .Y(
        \CORESPI_0/USPI/UCC/I_10_3 ));
    OA1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I27_Y  (.A(
        \COREABC_0_APB3master_PWDATA[9] ), .B(\COREABC_0/ZREGISTER[9] )
        , .C(\COREABC_0/un33_ZREGISTER.N229 ), .Y(
        \COREABC_0/un33_ZREGISTER.N262 ));
    XOR2 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I111_Y_0  (.A(
        \COREABC_0/ZREGISTER[5] ), .B(\COREABC_0_APB3master_PWDATA[5] )
        , .Y(\COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I111_Y_0 ));
    NOR3A \CORESPI_0/USPI/URF/un1_CLK_DIV_1_sqmuxa_2_i_a2  (.A(
        \CORESPI_0.USPI.URF.N_127 ), .B(\CORESPI_0/USPI/URF/N_63 ), .C(
        \CORESPI_0/USPI/URF/N_61 ), .Y(\CORESPI_0/USPI/URF/N_118 ));
    DFN1E0C0 \CoreUARTapb_0/CUARTlOlI/CUARTIOl[5]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTl1I[5] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTlOlI/CUARTIOl4 ), 
        .Q(\CoreUARTapb_0/CUARTlOlI/CUARTIOl[5]_net_1 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIRRL7I2  (.A(
        \COREABC_0/un1_ACCUMULATOR[6] ), .B(
        \COREABC_0/un1_ACCUM_NEXT9_1 ), .C(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[6] ), .Y(
        \COREABC_0/ACCUM_NEXT[6] ));
    NOR2A \CoreTimer_0/Count_RNI2HE15[15]  (.A(\CoreTimer_0/N_15_0 ), 
        .B(\CoreTimer_0/Count[15]_net_1 ), .Y(\CoreTimer_0/N_16_0 ));
    NOR2B \CORESPI_0/USPI/UCC/spi_clk_count_RNI9NHI[5]  (.A(
        \CORESPI_0/USPI/UCC/spi_clk_count_c4 ), .B(
        \CORESPI_0/USPI/UCC/spi_clk_count[5]_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/spi_clk_count_c5 ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_m97_0  (.A(
        \COREABC_0/un1_ACCUMULATOR.m97_0_0 ), .B(\COREABC_0/N_15_1 ), 
        .C(\COREABC_0/SMADDR_0[2] ), .Y(\COREABC_0/N_276_mux_0 ));
    NOR2B \CoreUARTapb_0/m2  (.A(COREABC_0_APB3master_PENABLE), .B(
        \COREABC_0_APB3master_PADDR[2] ), .Y(\CoreUARTapb_0/N_3_0 ));
    XOR3 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I109_Y  (.A(
        \COREABC_0/ZREGISTER[3] ), .B(\COREABC_0_APB3master_PWDATA[3] )
        , .C(\COREABC_0/un33_ZREGISTER.N306 ), .Y(
        \COREABC_0/un33_ZREGISTER[3] ));
    DFN1P0 \COREABC_0/SMADDR[6]/U1  (.D(\COREABC_0/SMADDR[6]/Y ), .CLK(
        GLA), .PRE(\COREABC_0/genblk2.RSTSYNC2_1_net_1 ), .Q(
        \COREABC_0/SMADDR[6] ));
    NOR2A \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_RNO[7]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_9[7] ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_123 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_11[7] ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_SMADDR_21_0[11]  (.A(
        \COREABC_0/RAMRDATA[11] ), .B(
        \COREABC_0/UROM.INSTR_CMD[1]_net_1 ), .Y(\COREABC_0/N_434 ));
    DFN1E1C0 \CORESPI_0/USPI/URF/CLK_DIV[3]  (.D(
        \COREABC_0_APB3master_PWDATA[3] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/URF/N_120 ), .Q(
        \CORESPI_0/USPI/clk_div_val[3] ));
    NOR3C \CoreTimer_0/iPRDATA_RNO_2[0]  (.A(
        \CoreTimer_0/PrdataNextEn_net_1 ), .B(
        \CORESPI_0.USPI.URF.N_127 ), .C(\CoreTimer_0/Load[0]_net_1 ), 
        .Y(\CoreTimer_0/Load_m[0] ));
    DFN1C0 \COREABC_0/ACCUMULATOR[1]/U1  (.D(
        \COREABC_0/ACCUMULATOR[1]/Y ), .CLK(GLA), .CLR(
        \COREABC_0/genblk2.RSTSYNC2_0_net_1 ), .Q(
        \COREABC_0/ACCUMULATOR[1] ));
    XOR2 \CORESPI_0/USPI/UTXF/un1_counter_q_1_I_24  (.A(
        \CORESPI_0/USPI/UTXF/counter_q[1]_net_1 ), .B(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_TMP[0] ), .Y(
        \CORESPI_0/USPI/UTXF/un1_counter_q1[1] ));
    DFN1C0 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0[3]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[3] ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[3] ));
    OR2 \COREABC_0/un1_ACCUMULATOR_STKPTR_c2  (.A(
        \COREABC_0/STKPTR_c1 ), .B(\COREABC_0/STKPTR[2] ), .Y(
        \COREABC_0/STKPTR_c2 ));
    MX2C \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0_RNO_1[0]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll019_i ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_129_mux ), .S(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0[1]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_38 ));
    NOR2A \CORESPI_0/USPI/URXF/full_out_RNIQ4NI  (.A(
        \CORESPI_0/USPI/URXF/fifo_mem_d[3]_0_sqmuxa ), .B(
        \CORESPI_0/USPI/fiforstrx ), .Y(
        \CORESPI_0/USPI/URXF/counter_d_0_sqmuxa_1_0 ));
    XOR2 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIOll_RNIHK28[2]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIOll[2]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il[2]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll019_2 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I67_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_m3_9_1 ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_m3_9_0 ), .C(
        \COREABC_0/un1_ACCUMULATOR.N275 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N306 ));
    DFN1 \COREABC_0/UROM.INSTR_DATA[6]  (.D(
        \COREABC_0/INSTRUCTION[32] ), .CLK(GLA), .Q(
        \COREABC_0/UROM.INSTR_DATA[6]_net_1 ));
    AND3 \COREABC_0/un1_STKPTRP1_I_19  (.A(
        \COREABC_0/un1_STKPTRP1.U1.DWACT_FINC_E[0] ), .B(
        \COREABC_0/un1_STKPTRP1.U1.DWACT_FINC_E[2] ), .C(
        \COREABC_0/STKPTR[6] ), .Y(\COREABC_0/un1_STKPTRP1.N_2 ));
    XNOR2 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/un3_CUARTO0_I_17  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_8 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[6] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/I_17 ));
    AOI1 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_3[1]  (.A(
        \CORESPI_0.USPI.clk_div_val[1] ), .B(
        \CORESPI_0.USPI.URF.control110 ), .C(
        \CORESPI_0.USPI.URF.cfg_ssel_m[1] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_3[1]_net_1 ));
    XA1 \COREABC_0/un1_ACCUMULATOR_xhdl_31.ALUOUT_5_m[1]  (.A(
        \COREABC_0/ACCUMULATOR[1] ), .B(\COREABC_0/ACCUM_IN[1] ), .C(
        \COREABC_0/ALUOUT_3_sqmuxa ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_5_m[1] ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_STKPTR_0_sqmuxa_2  (.A(
        \COREABC_0/UROM.INSTR_CMD[2]_net_1 ), .B(
        \COREABC_0/UROM.INSTR_CMD[1]_net_1 ), .Y(
        \COREABC_0/STKPTR_0_sqmuxa_2 ));
    MX2C \CORESPI_0/USPI/UTXF/un1_counter_q_m_i[2]  (.A(
        \CORESPI_0/USPI/UTXF/un1_counter_q0[2] ), .B(
        \CORESPI_0/USPI/UTXF/un1_counter_q1[2] ), .S(
        \CORESPI_0/USPI/tx_fifo_write ), .Y(\CORESPI_0/USPI/UTXF/N_40 )
        );
    MX2 \COREABC_0/ISR_ACCUM_ZERO/U0  (.A(\COREABC_0/ISR_ACCUM_ZERO ), 
        .B(\COREABC_0/to_logic_2.tmp_6[0] ), .S(\COREABC_0/to_logic18 )
        , .Y(\COREABC_0/ISR_ACCUM_ZERO/Y ));
    DFN1E0C0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[7]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_11[7] ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_130_mux ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[7]_net_1 ));
    NOR2 \CoreTimer_0/PreScale_RNO[0]  (.A(
        \CoreTimer_0/PreScale[0]_net_1 ), .B(\CoreTimer_0/PreScale8 ), 
        .Y(\CoreTimer_0/PreScale_RNO[0]_net_1 ));
    MX2B \CoreUARTapb_0/CUARTOOII_RNO[7]  (.A(\CoreUARTapb_0/N_51_0 ), 
        .B(\CoreUARTapb_0/i27_i ), .S(
        \COREABC_0_APB3master_PADDR_0[3] ), .Y(\CoreUARTapb_0/N_53_0 ));
    AND3 \COREABC_0/un1_STKPTRP1_I_18  (.A(\COREABC_0/STKPTR[3] ), .B(
        \COREABC_0/STKPTR[4] ), .C(\COREABC_0/STKPTR[5] ), .Y(
        \COREABC_0/un1_STKPTRP1.U1.DWACT_FINC_E[2] ));
    NOR3 \CoreTimer_0/Count_RNIK6CT[11]  (.A(
        \CoreTimer_0/Count[10]_net_1 ), .B(
        \CoreTimer_0/Count[11]_net_1 ), .C(
        \CoreTimer_0/Count[9]_net_1 ), .Y(\CoreTimer_0/m11_m6_e_4 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_RAMWDATA_0[8]  (.A(\COREABC_0/I_23 )
        , .B(\COREABC_0_APB3master_PWDATA[8] ), .S(
        \COREABC_0/URAM.un1_UROM.INSTR_SLOT ), .Y(\COREABC_0/N_470 ));
    OR2A \CORESPI_0/USPI/URF/clr_txfifo_5_0_o2  (.A(
        \COREABC_0_APB3master_PADDR[3] ), .B(\CORESPI_0/USPI/URF/N_63 )
        , .Y(\CORESPI_0/USPI/URF/N_66 ));
    DFN1E1P0 \CORESPI_0/USPI/URF/CLK_DIV[2]  (.D(
        \COREABC_0_APB3master_PWDATA[2] ), .CLK(GLA), .PRE(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/URF/N_120 ), .Q(
        \CORESPI_0.USPI.clk_div_val[2] ));
    AX1 \CoreTimer_0/Count_RNO[14]  (.A(\CoreTimer_0/un1_PreScale8 ), 
        .B(\CoreTimer_0/N_14_0 ), .C(\CoreTimer_0/N_226 ), .Y(
        \CoreTimer_0/N_421 ));
    NOR2B \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I10_G0N  (.A(
        \COREABC_0/ZREGISTER[10] ), .B(
        \COREABC_0_APB3master_PWDATA[10] ), .Y(
        \COREABC_0/un33_ZREGISTER.N234 ));
    DFN1C0 \CORESPI_0/USPI/UCC/SYNC2_stxp_strobetx  (.D(
        \CORESPI_0/USPI/UCC/SYNC1_stxp_strobetx_net_1 ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/SYNC2_stxp_strobetx_net_1 ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I28_Y_a2_2  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I28_Y_a2_0 ), .B(
        \COREABC_0/ACCUMULATOR[8] ), .C(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_1 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I28_Y_a2_2 ));
    NOR2A \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il_RNIIU42[1]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il[3]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il[1]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/m3_0 ));
    OA1C \COREABC_0/URAM.UR/UG3.UR_xhdl12/Ram256x16_R0C0_RNI2CM21  (.A(
        \COREABC_0/RAMRDATA[6] ), .B(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_0 ), .C(
        \COREABC_0/ACCUMULATOR[6] ), .Y(\COREABC_0/d_N_5_mux_0 ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I66_un1_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N211 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N214 ), .C(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_3_mux_0 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.I66_un1_Y ));
    MX2A \CoreUARTapb_0/CUARTOOII_RNO_0[0]  (.A(\CoreUARTapb_0/N_84 ), 
        .B(\CoreUARTapb_0/i9_mux ), .S(\COREABC_0_APB3master_PADDR[4] )
        , .Y(\CoreUARTapb_0/N_88 ));
    NOR2B \CoreTimer_0/iPRDATA_RNO_0[2]  (.A(
        \CoreTimer_0/Count[2]_net_1 ), .B(
        \CoreTimer_0/DataOut_1_sqmuxa_net_1 ), .Y(
        \CoreTimer_0/Count_m[2] ));
    NOR2B \CORESPI_0/USPI/UTXF/rd_pointer_q_RNI9RJ9[1]  (.A(
        \CORESPI_0/USPI/UTXF/rd_pointer_q[1]_net_1 ), .B(
        \CORESPI_0/USPI/UTXF/rd_pointer_q[0]_net_1 ), .Y(
        \CORESPI_0/USPI/UTXF/un1_data_out_dx_i_0_li[3] ));
    MX2 \CORESPI_0/USPI/UCC/stxs_bitcnt[1]/U0  (.A(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[1] ), .B(
        \CORESPI_0/USPI/UCC/stxs_bitcnt_n1 ), .S(
        \CORESPI_0/USPI/UCC/clock_rx_fe ), .Y(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[1]/Y ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ACCUMULATOR_m[12]  (.A(
        \COREABC_0/ACCUMULATOR[12] ), .B(\COREABC_0/ALUOUT_6_sqmuxa ), 
        .Y(\COREABC_0/ACCUMULATOR_m[12] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m174_0  (.A(\COREABC_0/N_173_0 ), 
        .B(\COREABC_0/N_174_0 ), .S(\COREABC_0/SMADDR[1] ), .Y(
        \COREABC_0/N_175_0 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIGDV73  (.A(
        \COREABC_0/ACCUMULATOR[1] ), .B(\COREABC_0/ALUOUT_6_sqmuxa ), 
        .C(\COREABC_0/xhdl_31.ALUOUT_4_m[0] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_2[0] ));
    DFN1C0 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0[8]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[8] ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[8] ));
    DFN1E1C0 \CORESPI_0/USPI/URF/control1[0]  (.D(
        \COREABC_0_APB3master_PWDATA[0] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/URF/N_118 ), .Q(
        \CORESPI_0/USPI/cfg_enable ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m47_0  (.A(\COREABC_0/N_46_0 ), .B(
        \COREABC_0/N_47_0 ), .S(\COREABC_0/SMADDR_1[1] ), .Y(
        \COREABC_0/N_48 ));
    AND2 \CORESPI_0/USPI/UCON/rx_fifo_read_0_a2_1  (.A(
        \CoreTimer_0.un2_PrescaleEn_0 ), .B(
        \CORESPI_0/USPI/UCON/rx_fifo_read_0_a2_1_0_net_1 ), .Y(
        \CORESPI_0/USPI/UCON/N_18 ));
    NOR3B \CORESPI_0/USPI/URF/control1_RNISDRL[6]  (.A(
        \CORESPI_0/USPI/URF/control1_m1_e_1_0 ), .B(
        \CoreTimer_0.DataOut_1_sqmuxa_2 ), .C(
        \CORESPI_0/USPI/URF/N_61 ), .Y(
        \CORESPI_0/USPI/URF/control1_m[6] ));
    NOR2B \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I53_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N260 ), .B(
        \COREABC_0/un33_ZREGISTER.N264 ), .Y(
        \COREABC_0/un33_ZREGISTER.N291 ));
    AX1B \COREABC_0/un1_ACCUMULATOR_STKPTR_n5  (.A(
        \COREABC_0/STKPTR_2_sqmuxa ), .B(\COREABC_0/STKPTR_c4 ), .C(
        \COREABC_0/N_572 ), .Y(\COREABC_0/N_1218 ));
    OR2 \COREABC_0/un1_ACCUMULATOR_ADD_m2_i  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_7_1 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N273 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_6_3 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_ACCUM_IN[7]  (.A(
        \COREABC_0/UROM.INSTR_DATA[7]_net_1 ), .B(
        \COREABC_0/RAMRDATA[7] ), .S(\COREABC_0/un7_MUXIR[0] ), .Y(
        \COREABC_0/ACCUM_IN[7] ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I87_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N204 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N303 ), .C(
        \COREABC_0/un1_ACCUMULATOR.N302 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N371 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_PWDATA_M[11]  (.A(
        \COREABC_0/ACCUMULATOR[11] ), .B(\COREABC_0/USE_ACC_1 ), .Y(
        \COREABC_0_APB3master_PWDATA[11] ));
    NOR3A \CORESPI_0/USPI/UCC/stxs_txzeros_RNIIPHN  (.A(
        \CORESPI_0/USPI/UCC/spi_data_out_iv_0_tz ), .B(
        \CORESPI_0.USPI.SPIMODE ), .C(
        \CORESPI_0/USPI/UCC/stxs_txzeros ), .Y(
        \CORESPI_0/USPI/UCC/spi_data_out_iv_0 ));
    DFN1C1 \CORESPI_0/USPI/UCC/stxs_pktsel  (.D(
        \CORESPI_0/USPI/UCC/stxs_pktsel_RNO_net_1 ), .CLK(GLA), .CLR(
        \CORESPI_0/USPI/UCC/ssel_rx_q2_RNIBQH6_net_1 ), .Q(
        \CORESPI_0/USPI/UCC/stxs_pktsel_net_1 ));
    AO1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I64_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N275 ), .B(
        \COREABC_0/un33_ZREGISTER.N272 ), .C(
        \COREABC_0/un33_ZREGISTER.N271 ), .Y(
        \COREABC_0/un33_ZREGISTER.N302 ));
    MX2 \COREABC_0/ACCUMULATOR[4]/U0  (.A(\COREABC_0/ACCUMULATOR[4] ), 
        .B(\COREABC_0/ACCUM_NEXT[4] ), .S(\COREABC_0/ACCUMULATOR4 ), 
        .Y(\COREABC_0/ACCUMULATOR[4]/Y ));
    MX2 \CORESPI_0/USPI/URXF/fifo_mem_q_fifo_mem_q_ram1__RNI19ST[3]  (
        .A(\CORESPI_0/USPI/URXF/ram0_3 ), .B(
        \CORESPI_0/USPI/URXF/ram1_3 ), .S(
        \CORESPI_0/USPI/URXF/rd_pointer_q[0]_net_1 ), .Y(
        \CORESPI_0/USPI/URXF/N_34 ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_ICYCLE_1_sqmuxa_1_0_a3  (.A(
        \COREABC_0/un1_ACCUMULATOR.ICYCLE_1_sqmuxa_1_0_a3_0 ), .B(
        \COREABC_0/ICYCLE[1]_net_1 ), .C(\COREABC_0/ICYCLE[0]_net_1 ), 
        .Y(\COREABC_0/ICYCLE_1_sqmuxa_1 ));
    DFN1E1C0 \CORESPI_0/USPI/UCC/msrxs_shiftreg[2]  (.D(
        \CORESPI_0/USPI/UCC/msrxs_shiftreg_5[2] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/UCC/clock_rx_re ), .Q(
        \CORESPI_0/USPI/UCC/msrxs_shiftreg[2]_net_1 ));
    MX2 \COREABC_0/STD_ACCUM_NEG/U0  (.A(\COREABC_0/STD_ACCUM_NEG ), 
        .B(\COREABC_0/ACCUM_NEXT[15] ), .S(\COREABC_0/to_logic10 ), .Y(
        \COREABC_0/STD_ACCUM_NEG/Y ));
    DFN1P0 \CoreTimer_0/iPRDATA[4]  (.D(\CoreTimer_0/PrdataNext_1[4] ), 
        .CLK(GLA), .PRE(COREABC_0_PRESETN_0), .Q(
        \CoreAPB3_0_APBmslave0_PRDATA_i_0[4] ));
    NOR2B \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I39_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N214 ), .B(
        \COREABC_0/un33_ZREGISTER.N211 ), .Y(
        \COREABC_0/un33_ZREGISTER.N274 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_ZREGISTER_26[15]  (.A(
        \COREABC_0_APB3master_PWDATA[15] ), .B(
        \COREABC_0/un33_ZREGISTER[15] ), .S(
        \COREABC_0/UROM.INSTR_SCMD_0[0]_net_1 ), .Y(
        \COREABC_0/ZREGISTER_26[15] ));
    AND3B \COREABC_0/un1_ACCUMULATOR_ADD_m1_e_10  (.A(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux ), .B(
        \COREABC_0/r_m1_N_6_mux ), .C(\COREABC_0/RAMRDATA[13] ), .Y(
        \COREABC_0/ADD_m1_e_10 ));
    INV \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIOll_RNO[3]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_120 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_120_i ));
    MX2 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l_RNILA7R1[2]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_28 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_29 ), .S(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l[2]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_30 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ACCUM_NEXT_iv_1[9]  (.A(
        \COREABC_0/ACCUM_IN[9] ), .B(\COREABC_0/ALUOUT_7_sqmuxa ), .C(
        \COREABC_0/ACCUMULATOR_m_0[8] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[9] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m138_0  (.A(\COREABC_0/N_136_0 ), 
        .B(\COREABC_0/N_277_mux_0 ), .S(\COREABC_0/SMADDR[5] ), .Y(
        \COREABC_0/N_139_0 ));
    DFN1C0 \CORESPI_0/USPI/URF/clr_txfifo  (.D(
        \CORESPI_0/USPI/URF/clr_txfifo_5 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(\CORESPI_0/USPI/fiforsttx ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m228_0  (.A(\COREABC_0/N_227_0 ), 
        .B(\COREABC_0/N_228 ), .S(\COREABC_0/SMADDR_1[1] ), .Y(
        \COREABC_0/N_229_0 ));
    DFN1P0 \CORESPI_0/USPI/UTXF/empty_out  (.D(
        \CORESPI_0/USPI/UTXF/empty_out_2 ), .CLK(GLA), .PRE(
        COREABC_0_PRESETN_0), .Q(\CORESPI_0/USPI/tx_fifo_empty ));
    OR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2_3[1]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a1[0]_net_1 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2_1[1]_net_1 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_2[1]_net_1 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2_3[1]_net_1 ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I14_G0N  (.A(
        \COREABC_0/ACCUM_IN[14] ), .B(\COREABC_0/ACCUMULATOR[14] ), .C(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_1 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N246 ));
    MX2 \CORESPI_0/USPI/UTXF/fifo_mem_q_fifo_mem_q_ram0__RNI1BJ9[0]  (
        .A(\CORESPI_0/USPI/UTXF/ram0_0 ), .B(
        \CORESPI_0/USPI/UTXF/ram1_0 ), .S(
        \CORESPI_0/USPI/UTXF/rd_pointer_q[0]_net_1 ), .Y(
        \CORESPI_0/USPI/UTXF/N_31 ));
    DFN1C0 \CORESPI_0/USPI/URXF/counter_q[4]  (.D(
        \CORESPI_0/USPI/URXF/N_21 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/URXF/counter_q[4]_net_1 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_xhdl_31.ALUOUT_3_m_0[12]  (.A(
        \COREABC_0/ACCUMULATOR[12] ), .B(\COREABC_0/ALUOUT_1_sqmuxa ), 
        .Y(\COREABC_0/un1_ACCUMULATOR.xhdl_31.ALUOUT_3_m_0[12] ));
    NOR2A \CoreTimer_0/Count_RNIKTVN4[14]  (.A(\CoreTimer_0/N_14_0 ), 
        .B(\CoreTimer_0/Count[14]_net_1 ), .Y(\CoreTimer_0/N_15_0 ));
    DFN1E1 \CORESPI_0/USPI/UTXF/fifo_mem_q_fifo_mem_q_ram0_[3]  (.D(
        \COREABC_0_APB3master_PWDATA[2] ), .CLK(GLA), .E(
        \CORESPI_0/USPI/UTXF/awe0 ), .Q(\CORESPI_0/USPI/UTXF/ram0_3 ));
    DFN1C0 \CORESPI_0/USPI/UCC/data_rx_q2  (.D(
        \CORESPI_0/USPI/UCC/data_rx_q1_net_1 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(\CORESPI_0/USPI/UCC/data_rx_q2_net_1 )
        );
    AO1 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIPQGS72  (.A(
        \COREABC_0/un1_ACCUMULATOR[5] ), .B(
        \COREABC_0/un1_ACCUM_NEXT9_1 ), .C(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[5] ), .Y(
        \COREABC_0/ACCUM_NEXT[5] ));
    MX2 \COREABC_0/ACCUMULATOR[15]/U0  (.A(\COREABC_0/ACCUMULATOR[15] )
        , .B(\COREABC_0/ACCUM_NEXT[15] ), .S(\COREABC_0/ACCUMULATOR4 ), 
        .Y(\COREABC_0/ACCUMULATOR[15]/Y ));
    OR2 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I0_CO1  (.A(
        \COREABC_0/ADD_16x16_fast_I0_CO1_0_a1 ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I0_CO1_0 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N204 ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_SMADDR_21_1[4]  (.A(
        \COREABC_0/I_12 ), .B(\COREABC_0/DOISR ), .Y(\COREABC_0/N_440 )
        );
    MX2 \COREABC_0/un1_ACCUMULATOR_m258  (.A(\COREABC_0/N_257 ), .B(
        \COREABC_0/N_258_0 ), .S(\COREABC_0/SMADDR_0[1] ), .Y(
        \COREABC_0/N_259 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_xhdl_31.ALUOUT_3_m_0[14]  (.A(
        \COREABC_0/ACCUMULATOR[14] ), .B(\COREABC_0/ALUOUT_1_sqmuxa ), 
        .Y(\COREABC_0/un1_ACCUMULATOR.xhdl_31.ALUOUT_3_m_0[14] ));
    DFN1E1P0 \CoreTimer_0/Count[29]  (.D(\CoreTimer_0/N_35_0 ), .CLK(
        GLA), .PRE(COREABC_0_PRESETN_0), .E(\CoreTimer_0/Counte ), .Q(
        \CoreTimer_0/Count[29]_net_1 ));
    AO1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I92_Y_2  (.A(
        \COREABC_0/un33_ZREGISTER.N283 ), .B(
        \COREABC_0/un33_ZREGISTER.N290 ), .C(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I92_Y_1 ), .Y(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I92_Y_2 ));
    XA1 \CORESPI_0/USPI/UCC/spi_clk_count_RNO[4]  (.A(
        \CORESPI_0/USPI/UCC/spi_clk_count_c3 ), .B(
        \CORESPI_0/USPI/UCC/spi_clk_count[4]_net_1 ), .C(
        \CORESPI_0/USPI/UCC/spi_clk_count_1_sqmuxa ), .Y(
        \CORESPI_0/USPI/UCC/spi_clk_count_n4 ));
    DFN1P0 \CoreTimer_0/iPRDATA[2]  (.D(\CoreTimer_0/PrdataNext_1[2] ), 
        .CLK(GLA), .PRE(COREABC_0_PRESETN_0), .Q(
        \CoreAPB3_0_APBmslave0_PRDATA_i_0[2] ));
    NOR2A \CORESPI_0/USPI/UCC/mtx_state_RNO_0[3]  (.A(
        \CORESPI_0/USPI/UCC/spi_clk_tick_net_1 ), .B(
        \CORESPI_0/USPI/UCC/N_604_i_0 ), .Y(
        \CORESPI_0/USPI/UCC/mtx_state_ns_0_i_a2_0[3] ));
    NOR2 \COREABC_0/un1_ACCUMULATOR_ADD_m3_0_a4_0  (.A(
        \COREABC_0/r_m1_N_6_mux ), .B(\COREABC_0/RAMRDATA[7] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_8_0 ));
    NOR2B \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I6_G0N  (.A(
        \COREABC_0/ZREGISTER[6] ), .B(\COREABC_0_APB3master_PWDATA[6] )
        , .Y(\COREABC_0/un33_ZREGISTER.N222 ));
    MAJ3X \COREABC_0/STBFLAG_2_m3  (.A(
        \COREABC_0/UROM.INSTR_SCMD[2]_net_1 ), .B(
        \COREABC_0/UROM.INSTR_SCMD_0[0]_net_1 ), .C(
        \COREABC_0/UROM.INSTR_SCMD[1]_net_1 ), .Y(
        \COREABC_0/STBFLAG_2 ));
    DFN1P0 \COREABC_0/SMADDR_0[1]/U1  (.D(\COREABC_0/SMADDR_0[1]/Y ), 
        .CLK(GLA), .PRE(\COREABC_0/genblk2.RSTSYNC2_0_net_1 ), .Q(
        \COREABC_0/SMADDR_0[1] ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIR5PPH  (.A(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_3[5] ), .B(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_2[5] ), .C(
        \COREABC_0/PRDATA_M_m[5] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[5] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m232  (.A(\COREABC_0/N_15_1 ), .B(
        \COREABC_0/N_10_1 ), .S(\COREABC_0/SMADDR_0[3] ), .Y(
        \COREABC_0/N_233 ));
    DFN1P0 \COREABC_0/SMADDR[10]/U1  (.D(\COREABC_0/SMADDR[10]/Y ), 
        .CLK(GLA), .PRE(PRESETN), .Q(\COREABC_0/SMADDR[10] ));
    AO1 \CoreTimer_0/iPRDATA_RNO[8]  (.A(\CoreTimer_0/Count[8]_net_1 ), 
        .B(\CoreTimer_0/DataOut_1_sqmuxa_net_1 ), .C(
        \CoreTimer_0/Load_m[8] ), .Y(\CoreTimer_0/PrdataNext_1[8] ));
    DFN1E1P0 \CoreTimer_0/Count[18]  (.D(\CoreTimer_0/N_45_0 ), .CLK(
        GLA), .PRE(COREABC_0_PRESETN_0), .E(\CoreTimer_0/Counte_0 ), 
        .Q(\CoreTimer_0/Count[18]_net_1 ));
    NOR3B \COREABC_0/URAM.UR/UG3.UR_xhdl12/Ram256x16_R0C0_RNIT6M21  (
        .A(\COREABC_0/RAMRDATA[1] ), .B(\COREABC_0/ACCUMULATOR[1] ), 
        .C(\COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_1 ), .Y(
        \COREABC_0/d_N_5_mux_2 ));
    XOR2 \CORESPI_0/USPI/URXF/un1_counter_q_1_I_14  (.A(
        \CORESPI_0/USPI/URXF/counter_q[1]_net_1 ), .B(
        \CORESPI_0/USPI/URXF/counter_d_0_sqmuxa_2 ), .Y(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_pog_array_0[0] ));
    NOR2A 
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTIlOl_RNO_4  
        (.A(\CoreUARTapb_0/CUARTlOlI/CUARTlOl[4] ), .B(
        \CoreUARTapb_0/PARITY_ERR ), .Y(
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTOIl_1[4] )
        );
    NOR3C \CoreTimer_0/iPRDATA_RNO_0[10]  (.A(
        \CoreTimer_0/PrdataNextEn_net_1 ), .B(
        \CORESPI_0.USPI.URF.N_127 ), .C(\CoreTimer_0/Load[10]_net_1 ), 
        .Y(\CoreTimer_0/Load_m[10] ));
    XA1B \CoreTimer_0/PreScale_RNO[8]  (.A(
        \CoreTimer_0/NextCountPulse_0_sqmuxa_7_7 ), .B(
        \CoreTimer_0/PreScale[8]_net_1 ), .C(\CoreTimer_0/PreScale8 ), 
        .Y(\CoreTimer_0/PreScale_n8 ));
    NOR3B \CORESPI_0/USPI/UCC/mtx_consecutive_RNIBBR33  (.A(
        \CORESPI_0/USPI/UCC/mtx_consecutive_net_1 ), .B(
        \CORESPI_0/USPI/UCC/N_98 ), .C(
        \CORESPI_0/USPI/UCC/mtx_lastframe_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/N_78 ));
    MX2 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_RNO_0[8]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[8]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/i1_mux ), .S(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_385 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_385_mux ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ACCUM_NEXT_iv_0[12]  (.A(
        \COREABC_0/un1_ACCUMULATOR.xhdl_31.ALUOUT_3_m_0[12] ), .B(
        \COREABC_0/ACCUM_IN[12] ), .C(\COREABC_0/PRDATA_M_m[12] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_0[12] ));
    DFN1C0 \CoreTimer_0/iPRDATA[9]  (.D(\CoreTimer_0/PrdataNext_1[9] ), 
        .CLK(GLA), .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreAPB3_0_APBmslave0_PRDATA[9] ));
    NOR3C \CORESPI_0/USPI/URF/active_m  (.A(\CORESPI_0.USPI.URF.N_125 )
        , .B(\CORESPI_0.USPI.URF.N_127 ), .C(\CORESPI_0/USPI/active ), 
        .Y(\CORESPI_0/USPI/URF/active_m_net_1 ));
    NOR3A \COREABC_0/URAM.UR/UG3.UR_xhdl12/Ram256x16_R0C0_RNIDHJ71_0  
        (.A(\COREABC_0/RAMRDATA[3] ), .B(
        \COREABC_0_APB3master_PADDR[12] ), .C(
        \COREABC_0/un1_ACCUMULATOR.un7_m1_e_0_1 ), .Y(
        \COREABC_0/URAM.UR/UG3.UR_xhdl12/Ram256x16_R0C0_RNIDHJ71_0_net_1 )
        );
    OA1 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTOOI_RNITI101  (
        .A(\CoreUARTapb_0/CUARTI1OI[2] ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1[0]_net_1 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTOOI ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_110_2 ));
    OA1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I19_Y  (.A(
        \COREABC_0_APB3master_PWDATA[12] ), .B(
        \COREABC_0/ZREGISTER[12] ), .C(\COREABC_0/un33_ZREGISTER.N244 )
        , .Y(\COREABC_0/un33_ZREGISTER.N254 ));
    XOR2 \CORESPI_0/USPI/UCC/clk_div_val_reg_RNICS2C[0]  (.A(
        \CORESPI_0/USPI/UCC/clk_div_val_reg[0]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/spi_clk_count[0]_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/spi_clk_nextd4_0 ));
    XA1B \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il_RNO[2]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_118 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il[2]_net_1 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_123 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il_n2 ));
    DFN1E1C0 \CoreUARTapb_0/CUARTl0OI[2]  (.D(
        \COREABC_0_APB3master_PWDATA[2] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTl0OI4 ), .Q(
        \CoreUARTapb_0/CUARTl0OI[2]_net_1 ));
    MX2C \CoreUARTapb_0/CUARTOOII_RNI21NR1[4]  (.A(
        \CoreUARTapb_0/CUARTOOII[4]_net_1 ), .B(
        \CoreUARTapb_0/CUARTOIII[4] ), .S(\CoreUARTapb_0/PARITY_ERR_0 )
        , .Y(\CoreAPB3_0_APBmslave1_PRDATA_i_1[4] ));
    OR2B \CORESPI_0/USPI/URF/prdata_1_i_o2_0  (.A(
        COREABC_0_APB3master_PENABLE), .B(N_73), .Y(
        \CORESPI_0/USPI/URF/prdata_1_i_o2_0_net_1 ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ACCUM_NEXT_iv_3[5]  (.A(
        \COREABC_0/ACCUMULATOR_m[6] ), .B(
        \COREABC_0/ACCUMULATOR_m_0[4] ), .C(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_0[5] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_3[5] ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_m33_0  (.A(\COREABC_0/N_17_1 ), 
        .B(\COREABC_0/SMADDR[2] ), .Y(\COREABC_0/N_34_1 ));
    AND2 \CORESPI_0/USPI/URXF/un1_counter_q_1_I_8  (.A(
        \CORESPI_0/USPI/URXF/counter_q[4]_net_1 ), .B(
        \CORESPI_0/USPI/URXF/counter_d_0_sqmuxa_2 ), .Y(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_0_4[0] ));
    AO1C \CORESPI_0/USPI/URF/int_raw_RNO[2]  (.A(
        \CORESPI_0/USPI/URF/N_87 ), .B(\CORESPI_0.USPI.URF.int_raw[2] )
        , .C(\CORESPI_0/USPI/N_34 ), .Y(
        \CORESPI_0/USPI/URF/int_raw_36[2] ));
    MX2C \CoreUARTapb_0/CUARTOOII_RNO_1[4]  (.A(
        \CoreUARTapb_0/CUARTl0OI[4]_net_1 ), .B(
        \CoreUARTapb_0/CUARTO1OI[4]_net_1 ), .S(
        \COREABC_0_APB3master_PADDR[2] ), .Y(\CoreUARTapb_0/i24_i ));
    DFN1 \CoreUARTapb_0/CUARTlOlI/genblk2.CUARTl11/CUARTOOOI[1]  (.D(
        \CoreUARTapb_0/CUARTlOlI/genblk2.CUARTl11/CUARTl00I[1] ), .CLK(
        GLA), .Q(\CoreUARTapb_0/CUARTlOlI/CUARTI1I[1] ));
    XA1C \CORESPI_0/USPI/URXF/un1_counter_q_m_i_a3_0[1]  (.A(
        \CORESPI_0/USPI/URXF/counter_q[1]_net_1 ), .B(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_TMP[0] ), .C(
        \CORESPI_0/USPI/rx_fifo_read ), .Y(\CORESPI_0/USPI/URXF/N_65 ));
    DFN1C0 \COREABC_0/ACCUMULATOR[7]/U1  (.D(
        \COREABC_0/ACCUMULATOR[7]/Y ), .CLK(GLA), .CLR(
        \COREABC_0/genblk2.RSTSYNC2_0_net_1 ), .Q(
        \COREABC_0/ACCUMULATOR[7] ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I92_Y_2  (.A(
        \COREABC_0/un1_ACCUMULATOR.N283 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N290 ), .C(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I92_Y_1 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I92_Y_2 ));
    XOR2 \CORESPI_0/USPI/UCC/clk_div_val_reg_RNIG03C[2]  (.A(
        \CORESPI_0/USPI/UCC/clk_div_val_reg[2]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/spi_clk_count[2]_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/spi_clk_nextd4_2 ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I2_G0N_0_1  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I2_G0N_0_0 ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_4_0_0 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I2_G0N_0_1 ));
    NOR2A \CORESPI_0/USPI/UCC/stxs_checkorun_RNO_1  (.A(
        \CORESPI_0/USPI/cfg_frameurun ), .B(
        \CORESPI_0/USPI/UCC/stxs_state_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/cfg_frameurun_m ));
    XOR2 \CORESPI_0/USPI/UTXF/un1_counter_q_1_I_17  (.A(
        \CORESPI_0/USPI/UTXF/counter_q[0]_net_1 ), .B(
        \CORESPI_0/USPI/UTXF/counter_d_0_sqmuxa_1_1 ), .Y(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_partial_sum_2[0] ));
    NOR3B \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il_RNI81B22[3]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_124 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_28_i ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il[3]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_136_mux ));
    AO1 \CORESPI_0/USPI/URF/int_raw_RNI40V73[5]  (.A(
        \CORESPI_0/USPI/URF/int_masked_m_0_a2_0[5] ), .B(
        \CORESPI_0.USPI.URF.N_126 ), .C(
        \CORESPI_0/USPI/URF/rdata_iv_2[5] ), .Y(
        \CORESPI_0/USPI/URF/rdata_iv_4[5] ));
    NOR3 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll1_RNO_1  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[2]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[4]_net_1 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[3]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_62 ));
    INV \CORESPI_0/USPI/UTXF/empty_out_RNISVSA  (.A(
        \CORESPI_0/USPI/tx_fifo_empty ), .Y(
        \CORESPI_0/USPI/tx_fifo_empty_i ));
    MX2B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I1_G0N_0  (.A(
        \COREABC_0/d_N_5_mux_2 ), .B(
        \COREABC_0/Ram256x16_R0C0_RNIENH81_0 ), .S(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_5_mux_3 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N207 ));
    AO1A \CORESPI_0/USPI/URXF/un1_counter_q_m_i[1]  (.A(
        \CORESPI_0/USPI/URXF/un1_counter_q1[1] ), .B(
        \CORESPI_0/USPI/rx_fifo_read ), .C(\CORESPI_0/USPI/URXF/N_65 ), 
        .Y(\CORESPI_0/USPI/URXF/N_44 ));
    NOR3B \CORESPI_0/USPI/URXF/fifo_mem_q_awe1  (.A(
        \CORESPI_0/USPI/URXF/wr_pointer_q[0]_net_1 ), .B(
        \CORESPI_0/USPI/URXF/fifo_mem_d[3]_0_sqmuxa ), .C(
        \CORESPI_0/USPI/URXF/wr_pointer_q[1]_net_1 ), .Y(
        \CORESPI_0/USPI/URXF/awe1 ));
    MX2 \CORESPI_0/USPI/URXF/fifo_mem_q_fifo_mem_q_ram1__RNIT4ST[1]  (
        .A(\CORESPI_0/USPI/URXF/ram0_1 ), .B(
        \CORESPI_0/USPI/URXF/ram1_1 ), .S(
        \CORESPI_0/USPI/URXF/rd_pointer_q[0]_net_1 ), .Y(
        \CORESPI_0/USPI/URXF/N_32 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m247_0  (.A(\COREABC_0/N_25_1 ), .B(
        \COREABC_0/N_26_1 ), .S(\COREABC_0/N_279 ), .Y(
        \COREABC_0/N_280_mux ));
    MX2 \COREABC_0/un1_ACCUMULATOR_ACCUM_IN[2]  (.A(
        \COREABC_0/UROM.INSTR_DATA[2]_net_1 ), .B(
        \COREABC_0/RAMRDATA[2] ), .S(\COREABC_0/un7_MUXIR[0] ), .Y(
        \COREABC_0/ACCUM_IN[2] ));
    DFN1C0 \CoreTimer_0/PreScale[3]  (.D(\CoreTimer_0/PreScale_n3 ), 
        .CLK(GLA), .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreTimer_0/PreScale[3]_net_1 ));
    NOR3A \CoreTimer_0/Count_RNI7BHE4[13]  (.A(\CoreTimer_0/N_12_0 ), 
        .B(\CoreTimer_0/Count[12]_net_1 ), .C(
        \CoreTimer_0/Count[13]_net_1 ), .Y(\CoreTimer_0/N_14_0 ));
    AOI1B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_0[1]  (.A(
        \CORESPI_0.USPI.cfg_cmdsize[1] ), .B(
        \CORESPI_0.USPI.URF.control17 ), .C(
        \COREABC_0_APB3master_PADDR[13] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_0[1]_net_1 ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_ACCUMULATOR_m_0[9]  (.A(
        \COREABC_0/un1_ACCUMULATOR.ALUOUT_5_sqmuxa_0 ), .B(
        \COREABC_0/ACCUMULATOR[9] ), .C(\COREABC_0/xhdl_31.MSEL[1] ), 
        .Y(\COREABC_0/ACCUMULATOR_m_0[9] ));
    MX2 \COREABC_0/ZREGISTER[9]/U0  (.A(\COREABC_0/N_109_0 ), .B(
        \COREABC_0/ZREGISTER[9] ), .S(\COREABC_0/un1_ICYCLE_4 ), .Y(
        \COREABC_0/ZREGISTER[9]/Y ));
    DFN1E1C0 \CoreUARTapb_0/CUARTlOlI/CUARTO1I[1]  (.D(
        \COREABC_0_APB3master_PWDATA[1] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTlOlI/CUARTO1I5 ), 
        .Q(\CoreUARTapb_0/CUARTlOlI/CUARTO1I[1]_net_1 ));
    DFN1C0 \CORESPI_0/USPI/URF/int_raw[4]  (.D(
        \CORESPI_0/USPI/URF/int_raw_42[4] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(\CORESPI_0.USPI.URF.int_raw[4] ));
    AND2 \CORESPI_0/USPI/UTXF/fifo_mem_d[3]_0_sqmuxa_0_a2  (.A(
        \CORESPI_0/USPI/tx_fifo_write ), .B(
        \CORESPI_0/USPI/tx_fifo_full_i_0 ), .Y(
        \CORESPI_0/USPI/UTXF/fifo_mem_d[3]_0_sqmuxa ));
    MX2 \CORESPI_0/USPI/URXF/fifo_mem_q_fifo_mem_q_ram2__RNI5PKU[3]  (
        .A(\CORESPI_0/USPI/URXF/ram2_3 ), .B(
        \CORESPI_0/USPI/URXF/ram3_3 ), .S(
        \CORESPI_0/USPI/URXF/rd_pointer_q[0]_net_1 ), .Y(
        \CORESPI_0/USPI/URXF/N_39 ));
    NOR2B \CORESPI_0/USPI/UTXF/un1_counter_q_1_I_27  (.A(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_TMP[0] ), .B(
        \CORESPI_0/USPI/UTXF/counter_q[1]_net_1 ), .Y(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_1[0] ));
    DFN1E1 \CORESPI_0/USPI/URXF/fifo_mem_q_fifo_mem_q_ram1_[0]  (.D(
        \CORESPI_0/USPI/rx_fifo_first_in ), .CLK(GLA), .E(
        \CORESPI_0/USPI/URXF/awe1 ), .Q(\CORESPI_0/USPI/URXF/ram1_0 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_STKPTR_40  (.A(
        \COREABC_0/STKPTR[1] ), .B(\COREABC_0/I_5_0 ), .S(
        \COREABC_0/STKPTR_2_sqmuxa ), .Y(\COREABC_0/N_564 ));
    NOR2 \COREABC_0/un1_ACCUMULATOR_xhdl_m2_0_a2  (.A(
        \COREABC_0/UROM.INSTR_SCMD[2]_net_1 ), .B(
        \COREABC_0/un1_ACCUMULATOR.un7_m1_e_0_1 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux ));
    MX2 \CORESPI_0/USPI/UCC/stxs_datareg[2]/U0  (.A(
        \CORESPI_0/USPI/UCC/stxs_datareg_10[2] ), .B(
        \CORESPI_0/USPI/UCC/stxs_datareg[2] ), .S(
        \CORESPI_0/USPI/UCC/stxs_datareg_1_sqmuxa_2 ), .Y(
        \CORESPI_0/USPI/UCC/stxs_datareg[2]/Y ));
    NOR3B \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl_RNI50IC2[3]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0[1]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_122 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl[3]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_117_mux ));
    DFN1E1 \CORESPI_0/USPI/URXF/fifo_mem_q_fifo_mem_q_ram3_[0]  (.D(
        \CORESPI_0/USPI/rx_fifo_first_in ), .CLK(GLA), .E(
        \CORESPI_0/USPI/URXF/N_54 ), .Q(\CORESPI_0/USPI/URXF/ram3_0 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m158_0  (.A(\COREABC_0/N_11_1 ), .B(
        \COREABC_0/N_23_1 ), .S(\COREABC_0/SMADDR_1[2] ), .Y(
        \COREABC_0/N_159_0 ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I38_un1_Y_0  (.A(
        \COREABC_0/un1_ACCUMULATOR.N214 ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I2_G0N_0_0 ), .C(
        \COREABC_0/ADD_m2_1 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.I38_un1_Y ));
    XA1A \COREABC_0/un1_ACCUMULATOR_DOJMP_1_sqmuxa  (.A(
        \COREABC_0/UROM.INSTR_SCMD_0[0]_net_1 ), .B(
        \COREABC_0/xhdl_41.flagvalue ), .C(
        \COREABC_0/un1_ACCUMULATOR.DOJMP_1_sqmuxa_1 ), .Y(
        \COREABC_0/DOJMP_1_sqmuxa ));
    OR3 \CORESPI_0/USPI/URF/CLK_DIV_RNIQ3V14[7]  (.A(
        \CORESPI_0/USPI/URF/rdata_iv_4_0[7] ), .B(
        \CORESPI_0/USPI/URF/cfg_ssel_m[7] ), .C(
        \CORESPI_0/USPI/URF/active_m_net_1 ), .Y(
        \CORESPI_0.USPI.URF.rdata_iv_4[7] ));
    XOR2 \CORESPI_0/USPI/UCC/clk_div_val_reg_RNIO83C[6]  (.A(
        \CORESPI_0/USPI/UCC/clk_div_val_reg[6]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/spi_clk_count[6]_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/spi_clk_nextd4_6 ));
    XA1B \CoreTimer_0/PreScale_RNO[4]  (.A(
        \CoreTimer_0/PreScale[4]_net_1 ), .B(\CoreTimer_0/PreScale_c3 )
        , .C(\CoreTimer_0/PreScale8 ), .Y(\CoreTimer_0/PreScale_n4 ));
    NOR3 \CoreTimer_0/iPRDATA_RNO[0]  (.A(\CoreTimer_0/Count_m[0] ), 
        .B(\CoreTimer_0/PrdataNext_1_0_iv_1[0] ), .C(
        \CoreTimer_0/Load_m[0] ), .Y(\CoreTimer_0/PrdataNext_1[0] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_STKPTR_48  (.A(
        \COREABC_0/STKPTR[5] ), .B(\COREABC_0/I_14_0 ), .S(
        \COREABC_0/STKPTR_2_sqmuxa ), .Y(\COREABC_0/N_572 ));
    NOR3A \CoreUARTapb_0/CUARTlOlI/un1_CUARTO1l_1  (.A(
        CoreAPB3_0_APBmslave1_PSELx), .B(COREABC_0_APB3master_PWRITE), 
        .C(\COREABC_0_APB3master_PADDR[4] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/un1_CUARTO1l_1_net_1 ));
    NOR3C \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTOOI_RNI94DN  
        (.A(\CoreUARTapb_0/CUARTI1OI[1] ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTOOI ), .C(
        \CoreUARTapb_0/CUARTI1OI[2] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTI0_0_sqmuxa_6_2_1 ));
    XOR3 \CORESPI_0/USPI/UTXF/un1_counter_q_0_I_23  (.A(
        \CORESPI_0/USPI/UTXF/counter_q[2]_net_1 ), .B(
        \CORESPI_0/USPI/UTXF/counter_d_0_sqmuxa_0 ), .C(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_1_0[0] ), .Y(
        \CORESPI_0/USPI/UTXF/un1_counter_q0[2] ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ACCUMULATOR_m[5]  (.A(
        \COREABC_0/ACCUMULATOR[5] ), .B(\COREABC_0/ALUOUT_6_sqmuxa ), 
        .Y(\COREABC_0/ACCUMULATOR_m[5] ));
    DFN1E0C0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[8]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_11[8] ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_130_mux ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[8]_net_1 ));
    DFN1E1P0 \CoreTimer_0/Count[5]  (.D(\CoreTimer_0/N_412 ), .CLK(GLA)
        , .PRE(COREABC_0_PRESETN_0), .E(\CoreTimer_0/Counte ), .Q(
        \CoreTimer_0/Count[5]_net_1 ));
    NOR2 \COREABC_0/un1_ACCUMULATOR_ADD_m2_0_a3_0  (.A(
        \COREABC_0/ACCUMULATOR[3] ), .B(\COREABC_0/ADD_m3_2 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_6_0 ));
    NOR2A \CORESPI_0/USPI/URXF/un1_counter_q_m_i_a3[4]  (.A(
        \CORESPI_0/USPI/rx_fifo_read ), .B(
        \CORESPI_0/USPI/URXF/un1_counter_q1[4] ), .Y(
        \CORESPI_0/USPI/URXF/N_58 ));
    XOR2 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I115_Y_0  (.A(
        \COREABC_0/ZREGISTER[9] ), .B(\COREABC_0_APB3master_PWDATA[9] )
        , .Y(\COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I115_Y_0 ));
    DFN1E1C0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTlOl[5]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[5]_net_1 ), .CLK(
        GLA), .CLR(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTlOl_1_sqmuxa ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTlOl[5] ));
    AOI1B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_2[2]  (.A(
        \CORESPI_0.USPI.URF.int_masked_m_0_a2_0[2] ), .B(
        \CORESPI_0.USPI.URF.N_126 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_0[2]_net_1 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_2[2]_net_1 ));
    OA1A \COREABC_0/un1_ACCUMULATOR_PWDATA_M_v[2]  (.A(
        \COREABC_0/UROM.INSTR_SCMD[1]_net_1 ), .B(
        \COREABC_0/UROM.INSTR_CMD[0]_net_1 ), .C(
        \COREABC_0/ACCUMULATOR[2] ), .Y(\COREABC_0/MUX1[2] ));
    DFN1E0C0 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTIl0l[1]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTI1I[1] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_159 ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTIl0l[1]_net_1 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ACCUMULATOR4  (.A(
        \COREABC_0/un1_ACCUMULATOR.STBACCAPB_0 ), .B(
        \COREABC_0/UROM.INSTR_SCMD_0[0]_net_1 ), .C(
        \COREABC_0/STBACCUM_net_1 ), .Y(\COREABC_0/ACCUMULATOR4 ));
    NOR3C \CoreTimer_0/iPRDATA_RNO_0[9]  (.A(
        \CoreTimer_0/PrdataNextEn_net_1 ), .B(
        \CORESPI_0.USPI.URF.N_127 ), .C(\CoreTimer_0/Load[9]_net_1 ), 
        .Y(\CoreTimer_0/Load_m[9] ));
    DFN1E1C0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl[1]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_52 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTlOlI/CUARTIl ), 
        .Q(\CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl[1]_net_1 ));
    NOR3B \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI11_0_RNIADUD3  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_115_mux ), .B(
        CoreAPB3_0_APBmslave1_PSELx), .C(\CoreTimer_0.iTimInt_m_2 ), 
        .Y(\CoreUARTapb_0/N_124_mux ));
    NOR2B \CORESPI_0/USPI/UCC/spi_clk_count_RNI2MBC[3]  (.A(
        \CORESPI_0/USPI/UCC/spi_clk_count_c2 ), .B(
        \CORESPI_0/USPI/UCC/spi_clk_count[3]_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/spi_clk_count_c3 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ACCUM_NEXT_iv_5_1[15]  (.A(
        \COREABC_0/ACCUM_IN[15] ), .B(\COREABC_0/ALUOUT_7_sqmuxa ), .C(
        \COREABC_0/ACCUMULATOR_m_0[14] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5_1[15] ));
    MX2 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0_RNO_0[9]  (
        .A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/I_26 ), .B(
        \CoreUARTapb_0/CUARTO1OI[4]_net_1 ), .S(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO08 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_123 ));
    NOR3B \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0_RNILTAA2[0]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIl ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0_239_d ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll019_i ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTlOl_1_sqmuxa ));
    MX2 \COREABC_0/SMADDR[4]/U0  (.A(\COREABC_0/SMADDR_21[4] ), .B(
        \COREABC_0/SMADDR[4] ), .S(\COREABC_0/un1_ICYCLE_6 ), .Y(
        \COREABC_0/SMADDR[4]/Y ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNI8572L  (.A(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5_2[15] ), .B(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5_1[15] ), .C(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5_3[15] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[15] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m128_0  (.A(\COREABC_0/N_127_0 ), 
        .B(\COREABC_0/N_128_0 ), .S(\COREABC_0/SMADDR_1[1] ), .Y(
        \COREABC_0/N_129_0 ));
    AX1 \CoreTimer_0/Count_RNO[4]  (.A(\CoreTimer_0/un1_PreScale8_0 ), 
        .B(\CoreTimer_0/N_4_0 ), .C(\CoreTimer_0/N_206 ), .Y(
        \CoreTimer_0/N_411 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_PWDATA_M[7]  (.A(
        \COREABC_0/UROM.INSTR_DATA[7]_net_1 ), .B(\COREABC_0/MUX1[7] ), 
        .S(\COREABC_0/USE_ACC_1 ), .Y(\COREABC_0_APB3master_PWDATA[7] )
        );
    MX2 \CORESPI_0/USPI/URXF/fifo_mem_q_fifo_mem_q_ram2__RNI3NKU[2]  (
        .A(\CORESPI_0/USPI/URXF/ram2_2 ), .B(
        \CORESPI_0/USPI/URXF/ram3_2 ), .S(
        \CORESPI_0/USPI/URXF/rd_pointer_q[0]_net_1 ), .Y(
        \CORESPI_0/USPI/URXF/N_38_0 ));
    NOR2 \CoreTimer_0/TimerPre_RNIHKUR[1]  (.A(
        \CoreTimer_0/TimerPre[1]_net_1 ), .B(
        \CoreTimer_0/TimerPre[2]_net_1 ), .Y(
        \CoreTimer_0/NextCountPulse_0_sqmuxa_1_2 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_STKPTR_42  (.A(
        \COREABC_0/STKPTR[2] ), .B(\COREABC_0/I_7_0 ), .S(
        \COREABC_0/STKPTR_2_sqmuxa ), .Y(\COREABC_0/N_566 ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_m21_0  (.A(
        \COREABC_0/N_274_mux_0 ), .B(\COREABC_0/SMADDR[6] ), .Y(
        \COREABC_0/N_22_1 ));
    DFN1E1P0 \CoreTimer_0/Count[14]  (.D(\CoreTimer_0/N_421 ), .CLK(
        GLA), .PRE(COREABC_0_PRESETN_0), .E(\CoreTimer_0/Counte_0 ), 
        .Q(\CoreTimer_0/Count[14]_net_1 ));
    NOR2B \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_RNO_1[8]  (.A(
        \CoreUARTapb_0/CUARTO1OI[1]_net_1 ), .B(
        \CoreUARTapb_0/CUARTO1OI[0]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_385 ));
    XA1A \CORESPI_0/USPI/URXF/un1_counter_q_m_i_a3[3]  (.A(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_partial_sum[3] ), .B(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_12_0[0] ), .C(
        \CORESPI_0/USPI/rx_fifo_read ), .Y(\CORESPI_0/USPI/URXF/N_60 ));
    AO1A \CORESPI_0/USPI/URXF/un1_counter_q_m_i[2]  (.A(
        \CORESPI_0/USPI/URXF/un1_counter_q1[2] ), .B(
        \CORESPI_0/USPI/rx_fifo_read ), .C(\CORESPI_0/USPI/URXF/N_63 ), 
        .Y(\CORESPI_0/USPI/URXF/N_42 ));
    NOR3B \CORESPI_0/USPI/UCC/mtx_first_RNO_0  (.A(
        \CORESPI_0/USPI/UCC/spi_clk_tick_net_1 ), .B(
        \CORESPI_0/USPI/UCC/mtx_state_RNINJM1[1]_net_1 ), .C(
        \CORESPI_0/USPI/UCC/mtx_state[4]_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/N_85 ));
    XA1 \COREABC_0/un1_ACCUMULATOR_xhdl_31.ALUOUT_5_m[4]  (.A(
        \COREABC_0/ACCUMULATOR[4] ), .B(\COREABC_0/ACCUM_IN[4] ), .C(
        \COREABC_0/ALUOUT_3_sqmuxa ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_5_m[4] ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_ACCUM_NEXT10  (.A(
        \COREABC_0/UROM.INSTR_CMD[0]_net_1 ), .B(
        \COREABC_0/ACCUM_NEXT9 ), .Y(\COREABC_0/ACCUM_NEXT10 ));
    NOR2A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_a2_0[6]  (.A(
        \CORESPI_0.USPI.clk_div_val[6] ), .B(\CORESPI_0.USPI.URF.N_62 )
        , .Y(\CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_a2_0[6]_net_1 ));
    NOR3A \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNI95RKEB  (.A(
        \COREABC_0/un1_ACCUMULATOR.to_logic_2.tmp_6_3[0] ), .B(
        \COREABC_0/ACCUM_NEXT[7] ), .C(\COREABC_0/ACCUM_NEXT[13] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.to_logic_2.tmp_6_9[0] ));
    XOR2 \COREABC_0/un1_STKPTRP1_I_9  (.A(\COREABC_0/un1_STKPTRP1.N_6 )
        , .B(\COREABC_0/STKPTR[3] ), .Y(\COREABC_0/I_9_0 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m231_0  (.A(\COREABC_0/N_229_0 ), 
        .B(\COREABC_0/N_231 ), .S(\COREABC_0/SMADDR[5] ), .Y(
        \COREABC_0/N_232_0 ));
    OR3A \CORESPI_0/USPI/UCC/mtx_bitsel_RNO[0]  (.A(
        \CORESPI_0/USPI/UCC/mtx_bitsel[0]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/mtx_state_0_sqmuxa ), .C(
        \CORESPI_0/USPI/UCC/N_98 ), .Y(\CORESPI_0/USPI/UCC/N_593 ));
    MX2 \COREABC_0/SMADDR_1[1]/U0  (.A(\COREABC_0/SMADDR_21[1] ), .B(
        \COREABC_0/SMADDR_1[1] ), .S(\COREABC_0/un1_ICYCLE_6 ), .Y(
        \COREABC_0/SMADDR_1[1]/Y ));
    MX2A \COREABC_0/un1_ACCUMULATOR_RAMADDR[0]  (.A(
        \COREABC_0/STKPTR[0] ), .B(
        \COREABC_0/UROM.INSTR_ADDR[0]_net_1 ), .S(
        \COREABC_0/RAMADDR_1_sqmuxa ), .Y(\COREABC_0/RAMADDR[0] ));
    NOR3A \CORESPI_0/USPI/UTXF/full_out_RNI8D7S1  (.A(
        \CORESPI_0/USPI/tx_fifo_full_i_0 ), .B(
        \CORESPI_0/USPI/fiforsttx ), .C(\CORESPI_0/USPI/tx_fifo_read ), 
        .Y(\CORESPI_0/USPI/UTXF/counter_d_0_sqmuxa_1_1 ));
    NOR2 \CORESPI_0/USPI/UCC/mtx_bitsel_RNIVR4N[3]  (.A(
        \CORESPI_0/USPI/UCC/mtx_bitsel[3]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/mtx_bitsel[2]_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/N_92 ));
    DFN1C0 \CORESPI_0/USPI/UCC/spi_clk_count[0]  (.D(
        \CORESPI_0/USPI/UCC/spi_clk_count_n0 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/spi_clk_count[0]_net_1 ));
    MX2 \CORESPI_0/USPI/UCC/stxs_bitcnt[4]/U0  (.A(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[4] ), .B(
        \CORESPI_0/USPI/UCC/stxs_bitcnt_n4 ), .S(
        \CORESPI_0/USPI/UCC/clock_rx_fe ), .Y(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[4]/Y ));
    DFN1 \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/CUARTOOOI[6]  (.D(
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/CUARTl00I[6] ), 
        .CLK(GLA), .Q(\CoreUARTapb_0/CUARTlOlI/CUARTl1I[6] ));
    OR2B \COREABC_0/un1_ACCUMULATOR_un1_PWRITE_M  (.A(
        \COREABC_0/UROM.INSTR_SCMD[1]_net_1 ), .B(
        \COREABC_0/UROM.INSTR_SCMD[0]_net_1 ), .Y(
        COREABC_0_APB3master_PWRITE));
    DFN1E0C0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[6]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_120_mux ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_130_mux ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[6]_net_1 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_m218_e  (.A(\COREABC_0/SMADDR[1] )
        , .B(\COREABC_0/SMADDR[2] ), .Y(\COREABC_0/N_278_0 ));
    NOR3A \COREABC_0/URAM.UR/UG3.UR_xhdl12/Ram256x16_R0C0_RNIDHJ71_1  
        (.A(\COREABC_0/RAMRDATA[2] ), .B(
        \COREABC_0_APB3master_PADDR[12] ), .C(
        \COREABC_0/un1_ACCUMULATOR.un7_m1_e_0_1 ), .Y(
        \COREABC_0/URAM.UR/UG3.UR_xhdl12/Ram256x16_R0C0_RNIDHJ71_1_net_1 )
        );
    NOR2A 
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTIlOl_RNO_6  
        (.A(\CoreUARTapb_0/CUARTlOlI/CUARTlOl[6] ), .B(
        \CoreUARTapb_0/PARITY_ERR ), .Y(
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTOIl_1[6] )
        );
    AOI1 \CORESPI_0/USPI/UCC/mtx_state_RNIAP131[0]  (.A(
        \CORESPI_0/USPI/UCC/mtx_state[0]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/N_56 ), .C(\CORESPI_0/USPI/UCC/N_604_i_0 ), 
        .Y(\CORESPI_0/USPI/UCC/N_93 ));
    DFN1E1 \CORESPI_0/USPI/URXF/fifo_mem_q_fifo_mem_q_ram0_[4]  (.D(
        \CORESPI_0/USPI/rx_fifo_data_in[3] ), .CLK(GLA), .E(
        \CORESPI_0/USPI/URXF/awe0 ), .Q(\CORESPI_0/USPI/URXF/ram0_4 ));
    AO1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I66_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N274 ), .B(
        \COREABC_0/un33_ZREGISTER.N277 ), .C(
        \COREABC_0/un33_ZREGISTER.N273 ), .Y(
        \COREABC_0/un33_ZREGISTER.N304 ));
    BUFF \COREABC_0_PADDR_M_RNIVLR2[3]  (.A(
        \COREABC_0_APB3master_PADDR[3] ), .Y(
        \COREABC_0_APB3master_PADDR_0[3] ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_m1_e  (.A(\COREABC_0/DOJMP ), .B(
        \COREABC_0/DOISR ), .Y(\COREABC_0/SMADDR_0_sqmuxa_1 ));
    OAI1 \COREABC_0/URAM.UR/UG3.UR_xhdl12/Ram256x16_R0C0_RNI2RV7  (.A(
        \COREABC_0/ACCUMULATOR[2] ), .B(\COREABC_0/RAMRDATA[2] ), .C(
        \COREABC_0/RAMRDATA[1] ), .Y(\COREABC_0/r_N_5_mux ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ACCUM_IN[10]  (.A(
        \COREABC_0/RAMRDATA[10] ), .B(\COREABC_0/un7_MUXIR[0] ), .Y(
        \COREABC_0/ACCUM_IN[10] ));
    NOR2B \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I33_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N223 ), .B(
        \COREABC_0/un33_ZREGISTER.N220 ), .Y(
        \COREABC_0/un33_ZREGISTER.N268 ));
    MX2B \CoreUARTapb_0/CUARTOOII_RNO[5]  (.A(\CoreUARTapb_0/N_57_0 ), 
        .B(\CoreUARTapb_0/i25_i ), .S(
        \COREABC_0_APB3master_PADDR_0[3] ), .Y(\CoreUARTapb_0/N_59_0 ));
    NOR3B \CORESPI_0/USPI/UCC/SYNC1_stxs_txready_RNIFI441  (.A(
        \CORESPI_0/USPI/UCC/txfifo_davailable_net_1 ), .B(
        \CORESPI_0/USPI/UCC/SYNC1_stxs_txready_i_0 ), .C(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[1] ), .Y(
        \CORESPI_0/USPI/UCC/stxs_datareg4_2 ));
    DFN1P0 \CoreTimer_0/iPRDATA[6]  (.D(\CoreTimer_0/PrdataNext_1[6] ), 
        .CLK(GLA), .PRE(COREABC_0_PRESETN_0), .Q(
        \CoreAPB3_0_APBmslave0_PRDATA_i_0[6] ));
    MX2 \COREABC_0/DOISR/U0  (.A(\COREABC_0/ICYCLE_i[0] ), .B(
        \COREABC_0/DOISR ), .S(\COREABC_0/un1_ICYCLE_8 ), .Y(
        \COREABC_0/DOISR/Y ));
    AOI1B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_2_3[6]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_a2_0[6]_net_1 ), .B(
        \CORESPI_0.USPI.URF.control110 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_2_2[6]_net_1 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_2_3[6]_net_1 ));
    OR3 \CORESPI_0/USPI/URF/int_raw_RNICJ542[4]  (.A(
        \CORESPI_0/USPI/URF/control2_m[4] ), .B(
        \CORESPI_0/USPI/URF/control1_m[4] ), .C(
        \CORESPI_0/USPI/URF/int_masked_m[4] ), .Y(
        \CORESPI_0.USPI.URF.rdata_iv_3[4] ));
    MX2 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_RNO_1[7]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[7]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[8]_net_1 ), .S(
        \CoreUARTapb_0/CUARTO1OI[0]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_177 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ACCUM_IN[12]  (.A(
        \COREABC_0/RAMRDATA[12] ), .B(\COREABC_0/un7_MUXIR[0] ), .Y(
        \COREABC_0/ACCUM_IN[12] ));
    XA1 \COREABC_0/un1_ACCUMULATOR_xhdl_31.ALUOUT_5_m[14]  (.A(
        \COREABC_0/ACCUMULATOR[14] ), .B(\COREABC_0/ACCUM_IN[14] ), .C(
        \COREABC_0/ALUOUT_3_sqmuxa ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_5_m[14] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_ZREGISTER_26[13]  (.A(
        \COREABC_0_APB3master_PWDATA[13] ), .B(
        \COREABC_0/un33_ZREGISTER[13] ), .S(
        \COREABC_0/UROM.INSTR_SCMD_0[0]_net_1 ), .Y(
        \COREABC_0/ZREGISTER_26[13] ));
    DFN1E1C0 \CoreUARTapb_0/CUARTlOlI/CUARTO1I[3]  (.D(
        \COREABC_0_APB3master_PWDATA[3] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTlOlI/CUARTO1I5 ), 
        .Q(\CoreUARTapb_0/CUARTlOlI/CUARTO1I[3]_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m255_0  (.A(\COREABC_0/N_142_0 ), 
        .B(\COREABC_0/N_22_1 ), .S(\COREABC_0/SMADDR_0[3] ), .Y(
        \COREABC_0/N_256_0 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m193_0  (.A(\COREABC_0/N_192_0 ), 
        .B(\COREABC_0/N_193_0 ), .S(\COREABC_0/SMADDR_0[5] ), .Y(
        \COREABC_0/N_194_0 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m190_0  (.A(\COREABC_0/N_186_0 ), 
        .B(\COREABC_0/N_190_0 ), .S(\COREABC_0/SMADDR_0[0] ), .Y(
        \COREABC_0/INSTRUCTION[12] ));
    DFN1E1 \CORESPI_0/USPI/UTXF/fifo_mem_q_fifo_mem_q_ram0_[1]  (.D(
        \COREABC_0_APB3master_PWDATA[0] ), .CLK(GLA), .E(
        \CORESPI_0/USPI/UTXF/awe0 ), .Q(\CORESPI_0/USPI/UTXF/ram0_1 ));
    DFN1E1C0 \CoreUARTapb_0/CUARTOOII[1]  (.D(\CoreUARTapb_0/N_83 ), 
        .CLK(GLA), .CLR(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/N_124_mux ), .Q(
        \CoreUARTapb_0/CUARTOOII[1]_net_1 ));
    NOR3C \COREABC_0/un1_ACCUMULATOR_PRDATA_M_m[10]  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[10] ), .B(
        CoreAPB3_0_APBmslave0_PSELx), .C(\COREABC_0/ICYCLE24.ICYCLE24 )
        , .Y(\COREABC_0/PRDATA_M_m[10] ));
    AXOI4 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl_RNO[0]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_309 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTIl ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl[0]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl_e0 ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I0_CO1_0_a2_s  (.A(
        \COREABC_0/ACCUMULATOR[0] ), .B(
        \COREABC_0/UROM.INSTR_DATA[0]_net_1 ), .C(
        \COREABC_0_APB3master_PADDR[12] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I0_CO1_0_a2_out ));
    OR3 \CORESPI_0/USPI/UCC/mtx_first_RNO  (.A(
        \CORESPI_0/USPI/SPISS_2[0] ), .B(\CORESPI_0/USPI/UCC/N_85 ), 
        .C(\CORESPI_0/USPI/UCC/N_86 ), .Y(\CORESPI_0/USPI/UCC/N_43 ));
    MX2C \COREABC_0/un1_ACCUMULATOR_ADD_m2_1  (.A(
        \COREABC_0/RAMRDATA[2] ), .B(
        \COREABC_0/UROM.INSTR_DATA[2]_net_1 ), .S(
        \COREABC_0/r_m1_N_6_mux_0 ), .Y(\COREABC_0/ADD_m2_1 ));
    XA1B \CORESPI_0/USPI/UCC/mtx_bitsel_n2_0  (.A(
        \CORESPI_0/USPI/UCC/mtx_bitsel[2]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/N_476_2 ), .C(
        \CORESPI_0/USPI/UCC/un1_sresetn_16 ), .Y(
        \CORESPI_0/USPI/UCC/N_595 ));
    AND2 \CORESPI_0/USPI/URXF/un1_counter_q_1_I_5  (.A(
        \CORESPI_0/USPI/URXF/counter_q[1]_net_1 ), .B(
        \CORESPI_0/USPI/URXF/counter_d_0_sqmuxa_2 ), .Y(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_0_1[0] ));
    OA1 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIIUL52  (.A(
        \COREABC_0/ACCUMULATOR[11] ), .B(\COREABC_0/ACCUM_IN[11] ), .C(
        \COREABC_0/ALUOUT_2_sqmuxa ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_4_m[11] ));
    MX2 \CORESPI_0/USPI/UTXF/fifo_mem_q_fifo_mem_q_ram0__RNIRKP81[4]  
        (.A(\CORESPI_0/USPI/UTXF/N_35 ), .B(
        \CORESPI_0/USPI/UTXF/N_40_0 ), .S(
        \CORESPI_0/USPI/UTXF/rd_pointer_q[1]_net_1 ), .Y(
        \CORESPI_0/USPI/tx_fifo_data_out[3] ));
    MX2 \COREABC_0/ACCUMULATOR[11]/U0  (.A(\COREABC_0/ACCUMULATOR[11] )
        , .B(\COREABC_0/ACCUM_NEXT[11] ), .S(\COREABC_0/ACCUMULATOR4 ), 
        .Y(\COREABC_0/ACCUMULATOR[11]/Y ));
    OR2A \COREABC_0/un1_ACCUMULATOR_SMADDR_21_1[0]  (.A(
        \COREABC_0/SMADDR[0] ), .B(\COREABC_0/DOISR ), .Y(
        \COREABC_0/N_436 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_RAMWDATA[8]  (.A(\COREABC_0/N_470 ), 
        .B(\COREABC_0/SMADDR[8] ), .S(\COREABC_0/DOISR_0 ), .Y(
        \COREABC_0/RAMWDATA[8] ));
    XOR2 \COREABC_0/un1_ACCUMULATOR_ICYCLE_ns_0_x2[1]  (.A(
        \COREABC_0/ICYCLE[0]_net_1 ), .B(\COREABC_0/ICYCLE[1]_net_1 ), 
        .Y(\COREABC_0/N_1141_i ));
    NOR2A \CORESPI_0/USPI/UCC/mtx_spi_data_out_RNO_2  (.A(
        \CORESPI_0/USPI/UCC/N_50 ), .B(
        \CORESPI_0/USPI/UCC/mtx_datahold[2]_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/N_35 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m70_0  (.A(\COREABC_0/N_69_0 ), .B(
        \COREABC_0/SMADDR[3] ), .S(\COREABC_0/DOISR_0 ), .Y(
        \COREABC_0/N_245 ));
    DFN1E1P0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI1Il[0]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI1Il[1]_net_1 ), .CLK(
        GLA), .PRE(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTIl ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI1Il[0]_net_1 ));
    DFN1P0 \COREABC_0/ICYCLE[0]  (.D(\COREABC_0/ICYCLE_ns_i[0] ), .CLK(
        GLA), .PRE(PRESETN), .Q(\COREABC_0/ICYCLE[0]_net_1 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_m178_0  (.A(\COREABC_0/N_34_1 ), 
        .B(\COREABC_0/SMADDR[1] ), .Y(\COREABC_0/N_179_0 ));
    NOR2A 
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTIlOl_RNO_7  
        (.A(\CoreUARTapb_0/CUARTlOlI/CUARTlOl[7] ), .B(
        \CoreUARTapb_0/PARITY_ERR ), .Y(
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/Minimal_SoC_CoreUARTapb_0_fifo_256x8_pa3/CUARTOIl_1[7] )
        );
    NOR3B \CORESPI_0/USPI/URF/clr_rxfifo_RNO  (.A(
        \COREABC_0_APB3master_PWDATA[0] ), .B(
        \CORESPI_0/USPI/URF/N_128 ), .C(\CORESPI_0/USPI/URF/N_66 ), .Y(
        \CORESPI_0/USPI/URF/clr_rxfifo_5 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m12_0  (.A(\COREABC_0/N_12_1 ), .B(
        \COREABC_0/N_18_1 ), .S(\COREABC_0/SMADDR_0[5] ), .Y(
        \COREABC_0/i11_mux ));
    MX2 \COREABC_0/ZREGISTER[2]/U0  (.A(\COREABC_0/ZREGISTER_26[2] ), 
        .B(\COREABC_0/ZREGISTER[2] ), .S(\COREABC_0/un1_ICYCLE_4 ), .Y(
        \COREABC_0/ZREGISTER[2]/Y ));
    MX2 \COREABC_0/un1_ACCUMULATOR_STKPTR_50  (.A(
        \COREABC_0/STKPTR[6] ), .B(\COREABC_0/I_17_0 ), .S(
        \COREABC_0/STKPTR_2_sqmuxa ), .Y(\COREABC_0/N_574 ));
    NOR2 \CoreTimer_0/Count_RNIN1TI[13]  (.A(
        \CoreTimer_0/Count[13]_net_1 ), .B(
        \CoreTimer_0/Count[12]_net_1 ), .Y(\CoreTimer_0/m23_m4_e_0_3 ));
    DFN1P0 \CoreUARTapb_0/CUARTlOlI/CUARTIll  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO1I5_i ), .CLK(GLA), .PRE(
        COREABC_0_PRESETN_0), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTIll_net_1 ));
    NOR3C \CORESPI_0/USPI/URF/int_raw_RNIRSBN[6]  (.A(
        \CORESPI_0.USPI.URF.int_raw[6] ), .B(
        \CORESPI_0/USPI/URF/control2[6]_net_1 ), .C(
        \CORESPI_0.USPI.URF.N_126 ), .Y(
        \CORESPI_0.USPI.URF.int_masked_m[6] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m195_0  (.A(\COREABC_0/N_195 ), .B(
        \COREABC_0/N_30_1 ), .S(\COREABC_0/SMADDR_0[5] ), .Y(
        \COREABC_0/N_196_0 ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I21_Y_0  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I21_Y_0_1 ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I21_Y_3 ), .C(
        \COREABC_0/ADD_16x16_fast_I21_Y_a5 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N256 ));
    DFN1E1 \CORESPI_0/USPI/UTXF/fifo_mem_q_fifo_mem_q_ram1_[4]  (.D(
        \COREABC_0_APB3master_PWDATA[3] ), .CLK(GLA), .E(
        \CORESPI_0/USPI/UTXF/awe1 ), .Q(\CORESPI_0/USPI/UTXF/ram1_4 ));
    NOR3B \CORESPI_0/USPI/URF/rdata54_0_a2_RNI9HTO2  (.A(
        \CORESPI_0/USPI/URF/rdata54 ), .B(
        \CORESPI_0/USPI/fifo_mem_q[4] ), .C(
        \CORESPI_0/USPI/rx_fifo_empty ), .Y(
        \CORESPI_0.USPI.URF.first_frame_m ));
    DFN1E1 \CORESPI_0/USPI/UTXF/fifo_mem_q_fifo_mem_q_ram3_[4]  (.D(
        \COREABC_0_APB3master_PWDATA[3] ), .CLK(GLA), .E(
        \CORESPI_0/USPI/UTXF/N_52 ), .Q(\CORESPI_0/USPI/UTXF/ram3_4 ));
    MX2C \COREABC_0/un1_ACCUMULATOR_m61_0  (.A(\COREABC_0/I_26 ), .B(
        \COREABC_0/N_61 ), .S(\COREABC_0/DOJMP ), .Y(
        \COREABC_0/N_62_0 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I76_un1_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N289 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N296 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.I76_un1_Y ));
    XA1B \CoreTimer_0/PreScale_RNO[1]  (.A(
        \CoreTimer_0/PreScale[1]_net_1 ), .B(
        \CoreTimer_0/PreScale[0]_net_1 ), .C(\CoreTimer_0/PreScale8 ), 
        .Y(\CoreTimer_0/PreScale_n1 ));
    DFN1E1C0 \CoreUARTapb_0/CUARTO1OI[5]  (.D(
        \COREABC_0_APB3master_PWDATA[5] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTO1OI4 ), .Q(
        \CoreUARTapb_0/CUARTO1OI[5]_net_1 ));
    DFN1P0 \COREABC_0/STKPTR[3]/U1  (.D(\COREABC_0/STKPTR[3]/Y ), .CLK(
        GLA), .PRE(\COREABC_0/genblk2.RSTSYNC2_2_net_1 ), .Q(
        \COREABC_0/STKPTR[3] ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNISFK851  (.A(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[2] ), .B(
        \COREABC_0/un1_ACCUMULATOR_m[2] ), .C(
        \COREABC_0/PRDATA_M_m[2] ), .Y(\COREABC_0/ACCUM_NEXT[2] ));
    OA1 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNI4HMS1  (.A(
        \COREABC_0/ACCUMULATOR[1] ), .B(\COREABC_0/ACCUM_IN[1] ), .C(
        \COREABC_0/ALUOUT_2_sqmuxa ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_4_m[1] ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_m37_0  (.A(\COREABC_0/N_22_1 ), 
        .B(\COREABC_0/SMADDR[3] ), .Y(\COREABC_0/N_38_1 ));
    DFN1C0 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0[12]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[12] ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[12] ));
    OA1B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I28_Y_0_0  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I28_Y_1_2 ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I28_Y_a3_1 ), .C(
        \COREABC_0/r_m1_N_6_mux_0 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I28_Y_0_0 ));
    NOR3 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I23_Y_0_1  (.A(
        \COREABC_0/ADD_16x16_fast_I21_Y_a1 ), .B(
        \COREABC_0/ADD_16x16_fast_I23_Y_a1 ), .C(
        \COREABC_0/ADD_16x16_fast_I23_Y_a4 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I23_Y_0_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m106_0  (.A(\COREABC_0/N_106 ), .B(
        \COREABC_0/N_91_0 ), .S(\COREABC_0/SMADDR_0[0] ), .Y(
        \COREABC_0/INSTRUCTION[32] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m78_0  (.A(\COREABC_0/I_26 ), .B(
        \COREABC_0_APB3master_PWDATA[9] ), .S(
        \COREABC_0/URAM.un1_UROM.INSTR_SLOT ), .Y(\COREABC_0/N_79_0 ));
    AXOI5 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l_RNO[0]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[3]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTll ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l[0]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_12 ));
    DFN1 \COREABC_0/UROM.INSTR_SCMD[2]  (.D(\COREABC_0/INSTRUCTION[5] )
        , .CLK(GLA), .Q(\COREABC_0/UROM.INSTR_SCMD[2]_net_1 ));
    MX2A \CoreTimer_0/Count_RNO[0]  (.A(\CoreTimer_0/Count[0]_net_1 ), 
        .B(\CoreTimer_0/Load[0]_net_1 ), .S(
        \CoreTimer_0/un1_PreScale8_0 ), .Y(\CoreTimer_0/N_407 ));
    NOR2A \CORESPI_0/USPI/UCC/msrxp_frames_RNO[0]  (.A(
        \CORESPI_0/USPI/UCC/un1_sresetn_4_i ), .B(
        \CORESPI_0/USPI/UCC/msrxp_frames[0]_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/msrxp_frames_4[0] ));
    AO1 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2_0[2]  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA_i_0[2] ), .B(\CoreAPB3_0/N_72 ), 
        .C(\CoreAPB3_0/u_mux_p_to_b3/N_35 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2_0[2]_net_1 ));
    NOR3B \CORESPI_0/USPI/URXF/empty_out_RNI2J7C4  (.A(
        \CORESPI_0/USPI/rx_fifo_read ), .B(
        \CORESPI_0/USPI/URXF/un1_data_out_dx_i_0_li[3] ), .C(
        \CORESPI_0/USPI/rx_fifo_empty ), .Y(\CORESPI_0/USPI/URXF/N_52 )
        );
    MX2 \COREABC_0/ACCUMULATOR[2]/U0  (.A(\COREABC_0/ACCUMULATOR[2] ), 
        .B(\COREABC_0/ACCUM_NEXT[2] ), .S(\COREABC_0/ACCUMULATOR4 ), 
        .Y(\COREABC_0/ACCUMULATOR[2]/Y ));
    NOR3B \CORESPI_0/USPI/UCC/stxs_dataerr_RNI9O6F2_0  (.A(
        \CORESPI_0/USPI/UCC/stxs_datareg4_3 ), .B(
        \CORESPI_0/USPI/UCC/stxs_midbit_2_1 ), .C(
        \CORESPI_0/USPI/UCC/stxs_strobetx5 ), .Y(
        \CORESPI_0/USPI/UCC/stxs_checkorun_1_sqmuxa ));
    DFN1E1C0 \CoreUARTapb_0/CUARTO1OI[1]  (.D(
        \COREABC_0_APB3master_PWDATA[1] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTO1OI4 ), .Q(
        \CoreUARTapb_0/CUARTO1OI[1]_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m144_0  (.A(\COREABC_0/N_143_0 ), 
        .B(\COREABC_0/N_144 ), .S(\COREABC_0/SMADDR_1[2] ), .Y(
        \COREABC_0/N_145_0 ));
    INV \CORESPI_0/USPI/UCC/spi_clk_out_RNO  (.A(
        \CORESPI_0/USPI/UCC/mtx_state[3]_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/mtx_state_i[3] ));
    NOR3B \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTOOI_RNO_0  (
        .A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[0] ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTOOI4_2 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[1] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTOOI4_1 ));
    DFN1E0C0 \CoreUARTapb_0/CUARTlOlI/CUARTIOl[2]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTl1I[2] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTlOlI/CUARTIOl4 ), 
        .Q(\CoreUARTapb_0/CUARTlOlI/CUARTIOl[2]_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m251_0  (.A(\COREABC_0/N_251_0 ), 
        .B(\COREABC_0/N_22_1 ), .S(\COREABC_0/SMADDR_0[2] ), .Y(
        \COREABC_0/N_252_0 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I58_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N269 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N266 ), .C(
        \COREABC_0/un1_ACCUMULATOR.N265 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N296 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_ZREGISTER_26[14]  (.A(
        \COREABC_0_APB3master_PWDATA[14] ), .B(
        \COREABC_0/un33_ZREGISTER[14] ), .S(
        \COREABC_0/UROM.INSTR_SCMD_0[0]_net_1 ), .Y(
        \COREABC_0/ZREGISTER_26[14] ));
    XA1B \CoreTimer_0/Count_RNO[26]  (.A(\CoreTimer_0/Count[26]_net_1 )
        , .B(\CoreTimer_0/N_27_0 ), .C(\CoreTimer_0/un1_PreScale8_0_0 )
        , .Y(\CoreTimer_0/N_41_0 ));
    XA1 \COREABC_0/un1_ACCUMULATOR_m102_0  (.A(\COREABC_0/SMADDR_0[2] )
        , .B(\COREABC_0/SMADDR_0[1] ), .C(\COREABC_0/N_17_1 ), .Y(
        \COREABC_0/N_103_0 ));
    DFN1E1 \CORESPI_0/USPI/UTXF/fifo_mem_q_fifo_mem_q_ram2_[3]  (.D(
        \COREABC_0_APB3master_PWDATA[2] ), .CLK(GLA), .E(
        \CORESPI_0/USPI/UTXF/awe2 ), .Q(\CORESPI_0/USPI/UTXF/ram2_3 ));
    MX2 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_RNO[6]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_86 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_85 ), .S(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_120 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_120_mux ));
    DFN1E0C0 \CORESPI_0/USPI/UCC/msrxs_strobe  (.D(
        \CORESPI_0/USPI/UCC/msrxs_first5 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(
        \CORESPI_0/USPI/UCC/un1_msrxs_datain_1_sqmuxa_1 ), .Q(
        \CORESPI_0/USPI/UCC/msrxs_strobe_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_ZREGISTER_26[1]  (.A(
        \COREABC_0_APB3master_PWDATA[1] ), .B(
        \COREABC_0/un33_ZREGISTER[1] ), .S(
        \COREABC_0/UROM.INSTR_SCMD_0[0]_net_1 ), .Y(
        \COREABC_0/ZREGISTER_26[1] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_STKPTR_52  (.A(
        \COREABC_0/STKPTR[7] ), .B(\COREABC_0/I_20_0 ), .S(
        \COREABC_0/STKPTR_2_sqmuxa ), .Y(\COREABC_0/N_576 ));
    AO1 \CORESPI_0/USPI/URXF/un1_counter_q_1_I_29  (.A(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_pog_array_0_3[0] ), .B(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_2_0[0] ), .C(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_0_4[0] ), .Y(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_12_1_0[0] ));
    DFN1P0 \CORESPI_0/USPI/UTXF/full_out  (.D(
        \CORESPI_0/USPI/UTXF/full_out_2 ), .CLK(GLA), .PRE(
        COREABC_0_PRESETN_0), .Q(\CORESPI_0/USPI/tx_fifo_full_i_0 ));
    DFN1E1C0 \CoreUARTapb_0/CUARTl0OI[3]  (.D(
        \COREABC_0_APB3master_PWDATA[3] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTl0OI4 ), .Q(
        \CoreUARTapb_0/CUARTl0OI[3]_net_1 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ACCUM_NEXT_iv_1[0]  (.A(
        \COREABC_0/ACCUM_IN[0] ), .B(\COREABC_0/ALUOUT_7_sqmuxa ), .C(
        \COREABC_0/SHIFTLSB_m ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[0] ));
    XOR2 \CORESPI_0/USPI/UCC/clk_div_val_reg_RNIK43C[4]  (.A(
        \CORESPI_0/USPI/UCC/clk_div_val_reg[4]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/spi_clk_count[4]_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/spi_clk_nextd4_4 ));
    NOR2 \CORESPI_0/USPI/URXF/empty_out_RNI4NHL  (.A(
        \CORESPI_0/USPI/rx_fifo_empty ), .B(\CORESPI_0/USPI/fiforstrx )
        , .Y(\CORESPI_0/USPI/URXF/rd_pointer_d_1_sqmuxa_2_0_a3_0 ));
    DFN1E0C0 \CoreUARTapb_0/CUARTlOlI/CUARTIOl[0]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTl1I[0] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTlOlI/CUARTIOl4 ), 
        .Q(\CoreUARTapb_0/CUARTlOlI/CUARTIOl[0]_net_1 ));
    MX2 \COREABC_0/STKPTR[1]/U0  (.A(\COREABC_0/STKPTR[1] ), .B(
        \COREABC_0/N_1214 ), .S(\COREABC_0/STKPTRe ), .Y(
        \COREABC_0/STKPTR[1]/Y ));
    DFN1C0 \CoreTimer_0/PreScale[6]  (.D(\CoreTimer_0/PreScale_n6 ), 
        .CLK(GLA), .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreTimer_0/PreScale[6]_net_1 ));
    XA1A \CORESPI_0/USPI/URXF/un1_counter_q_m_i_a3[0]  (.A(
        \CORESPI_0/USPI/URXF/counter_q[0]_net_1 ), .B(
        \CORESPI_0/USPI/URXF/counter_d_0_sqmuxa_2 ), .C(
        \CORESPI_0/USPI/rx_fifo_read ), .Y(\CORESPI_0/USPI/URXF/N_66 ));
    DFN1 \COREABC_0/UROM.INSTR_ADDR[4]  (.D(
        \COREABC_0/INSTRUCTION[14] ), .CLK(GLA), .Q(
        \COREABC_0/UROM.INSTR_ADDR[4]_net_1 ));
    DFN1E1C0 \CORESPI_0/USPI/URF/cfg_ssel[5]  (.D(
        \COREABC_0_APB3master_PWDATA[5] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/URF/N_119 ), .Q(
        \CORESPI_0/USPI/URF/cfg_ssel[5]_net_1 ));
    AX1A \CORESPI_0/USPI/UCC/mtx_bitsel_n3_0_x2  (.A(
        \CORESPI_0/USPI/UCC/mtx_bitsel[2]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/N_476_2 ), .C(
        \CORESPI_0/USPI/UCC/mtx_bitsel[3]_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/N_28_i ));
    XA1 \COREABC_0/un1_ACCUMULATOR_xhdl_31.ALUOUT_5_m[5]  (.A(
        \COREABC_0/ACCUMULATOR[5] ), .B(\COREABC_0/ACCUM_IN[5] ), .C(
        \COREABC_0/ALUOUT_3_sqmuxa ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_5_m[5] ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIMBI9Q  (.A(N_7), 
        .B(\COREABC_0/ICYCLE24.ICYCLE24 ), .C(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_6[0] ), .Y(
        \COREABC_0/ACCUM_NEXT[0] ));
    NOR3A \CORESPI_0/USPI/UCC/rx_cmdsize_RNO  (.A(
        \CORESPI_0/USPI/UCC/rx_cmdsize_4_1 ), .B(
        \CORESPI_0/USPI/UCC/rx_cmdsize_2_1 ), .C(
        \CORESPI_0/USPI/UCC/rx_cmdsize_2_2 ), .Y(
        \CORESPI_0/USPI/UCC/rx_cmdsize_4 ));
    NOR3B \CoreTimer_0/CountPulse_RNO_10  (.A(
        \CoreTimer_0/NextCountPulse_0_sqmuxa_1_2 ), .B(
        \CoreTimer_0/N_561_tz_tz ), .C(\CoreTimer_0/TimerPre[3]_net_1 )
        , .Y(\CoreTimer_0/CountPulse_RNO_10_net_1 ));
    MX2 \COREABC_0/ZREGISTER[7]/U0  (.A(\COREABC_0/ZREGISTER_26[7] ), 
        .B(\COREABC_0/ZREGISTER[7] ), .S(\COREABC_0/un1_ICYCLE_4 ), .Y(
        \COREABC_0/ZREGISTER[7]/Y ));
    NOR2B \CoreTimer_0/PreScale_RNI3JS3[5]  (.A(
        \CoreTimer_0/PreScale_c4 ), .B(\CoreTimer_0/PreScale[5]_net_1 )
        , .Y(\CoreTimer_0/PreScale_c5 ));
    AO1A \CoreTimer_0/LoadEnReg_RNISNLHD  (.A(
        \CoreTimer_0/Count_RNIC07P9[22]_net_1 ), .B(
        \CoreTimer_0/OneShotClr_1 ), .C(\CoreTimer_0/LoadEnReg_net_1 ), 
        .Y(\CoreTimer_0/PreScale8 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I11_G0N  (.A(
        \COREABC_0/un5[11] ), .B(\COREABC_0/ACCUMULATOR[11] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N237 ));
    MX2 \COREABC_0/SMADDR[6]/U0  (.A(\COREABC_0/SMADDR_21[6] ), .B(
        \COREABC_0/SMADDR[6] ), .S(\COREABC_0/un1_ICYCLE_6 ), .Y(
        \COREABC_0/SMADDR[6]/Y ));
    DFN1E1C0 \CoreUARTapb_0/CUARTO1OI[6]  (.D(
        \COREABC_0_APB3master_PWDATA[6] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTO1OI4 ), .Q(
        \CoreUARTapb_0/CUARTO1OI[6]_net_1 ));
    NOR3C \CORESPI_0/USPI/URF/int_raw_RNO_0[6]  (.A(
        \CoreTimer_0.DataOut_1_sqmuxa_2 ), .B(
        \CORESPI_0/USPI/URF/int_raw_27_i_a2_0_0[7]_net_1 ), .C(
        \COREABC_0_APB3master_PWDATA[6] ), .Y(
        \CORESPI_0/USPI/URF/N_83 ));
    OR2 \COREABC_0/un1_ACCUMULATOR_xhdl_31.ALUOUT_4[6]  (.A(
        \COREABC_0/ACCUM_IN[6] ), .B(\COREABC_0/ACCUMULATOR[6] ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_4[6] ));
    OA1A \COREABC_0/un1_ACCUMULATOR_ADD_m3_9_0  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_4_i ), .B(
        \COREABC_0/ACCUMULATOR[2] ), .C(
        \COREABC_0/un1_ACCUMULATOR.N204 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_m3_9_0 ));
    NOR3B \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTOOll_RNO  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_122 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/m25_1 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/i1_mux ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTOOll_0_sqmuxa ));
    MX2 \CoreTimer_0/Count_RNO_0[15]  (.A(
        \CoreTimer_0/Count[15]_net_1 ), .B(
        \CoreTimer_0/Load[15]_net_1 ), .S(
        \CoreTimer_0/un1_PreScale8_0 ), .Y(\CoreTimer_0/N_228 ));
    DFN1E1P0 \CoreTimer_0/Count[19]  (.D(\CoreTimer_0/N_426_i ), .CLK(
        GLA), .PRE(COREABC_0_PRESETN_0), .E(\CoreTimer_0/Counte_0 ), 
        .Q(\CoreTimer_0/Count[19]_net_1 ));
    AO1B \CORESPI_0/USPI/UCC/ssel_rx_q2_RNIBQH6  (.A(
        \CORESPI_0/USPI/UCC/stx_async_reset_ok_net_1 ), .B(
        \CORESPI_0/USPI/UCC/ssel_rx_q2_net_1 ), .C(COREABC_0_PRESETN_0)
        , .Y(\CORESPI_0/USPI/UCC/ssel_rx_q2_RNIBQH6_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m221_0  (.A(\COREABC_0/N_221 ), .B(
        \COREABC_0/N_159_0 ), .S(\COREABC_0/SMADDR_1[1] ), .Y(
        \COREABC_0/N_222_0 ));
    XOR2 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_RNO[1]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1[1]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1[0]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_n1 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ACCUM_NEXT_iv_0[0]  (.A(
        CoreUARTapb_0_TXRDY), .B(\COREABC_0/ACCUM_NEXT10 ), .C(
        \COREABC_0/xhdl_31.ALUOUT_3_m[0] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_0[0] ));
    INV \COREABC_0/un1_ACCUMULATOR_STKPTR_n0  (.A(
        \COREABC_0/STKPTR[0] ), .Y(\COREABC_0/N_1213 ));
    DFN1P1 \CORESPI_0/USPI/UCC/stxs_direct/U1  (.D(
        \CORESPI_0/USPI/UCC/stxs_direct/Y ), .CLK(GLA), .PRE(
        \CORESPI_0/USPI/UCC/ssel_rx_q2_RNIBQH6_net_1 ), .Q(
        \CORESPI_0/USPI/UCC/stxs_direct ));
    DFN1E1C0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTlOl[6]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[6]_net_1 ), .CLK(
        GLA), .CLR(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTlOl_1_sqmuxa ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTlOl[6] ));
    AX1B \CoreUARTapb_0/CUARTlOlI/CUARTOO1/un3_CUARTO0_I_12  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[3] ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/DWACT_FDEC_E[0] ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[4] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/I_12 ));
    AO1 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_1_0[7]  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA_i_0[7] ), .B(\CoreAPB3_0/N_72 ), 
        .C(\CoreAPB3_0/u_mux_p_to_b3/N_35 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_1_0[7]_net_1 ));
    OR3C \CORESPI_0/USPI/URXF/full_out_RNO  (.A(
        \CORESPI_0/USPI/URXF/full_out_2_0_a3_1 ), .B(
        \CORESPI_0/USPI/URXF/full_out_2_0_a3_0 ), .C(
        \CORESPI_0/USPI/URXF/full_out_2_0_a3_2 ), .Y(
        \CORESPI_0/USPI/URXF/full_out_2 ));
    AX1 \CoreTimer_0/Count_RNO[3]  (.A(\CoreTimer_0/un1_PreScale8_0 ), 
        .B(\CoreTimer_0/N_3_0 ), .C(\CoreTimer_0/N_204 ), .Y(
        \CoreTimer_0/N_410 ));
    OR3 \CORESPI_0/USPI/URF/int_raw_RNIB5JG2[3]  (.A(
        \CORESPI_0/USPI/URF/control1_m[5] ), .B(
        \CORESPI_0/USPI/URF/CLK_DIV_m[5] ), .C(
        \CORESPI_0/USPI/URF/rdata_iv_1[5] ), .Y(
        \CORESPI_0/USPI/URF/rdata_iv_2[5] ));
    DFN1C1 \CORESPI_0/USPI/UCC/stxs_state  (.D(
        \CORESPI_0/USPI/UCC/stxs_state_RNO_net_1 ), .CLK(GLA), .CLR(
        \CORESPI_0/USPI/UCC/ssel_rx_q2_RNIBQH6_net_1 ), .Q(
        \CORESPI_0/USPI/UCC/stxs_state_net_1 ));
    DFN1E1C0 \CoreUARTapb_0/CUARTOOII[7]  (.D(\CoreUARTapb_0/N_53_0 ), 
        .CLK(GLA), .CLR(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/N_124_mux ), .Q(
        \CoreUARTapb_0/CUARTOOII[7]_net_1 ));
    INV \CoreUARTapb_0/CUARTlOlI/CUARTIll_RNO  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO1I5 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO1I5_i ));
    IOTRI_OB_EB \SPISCLKO_pad/U0/U1  (.D(SPISCLKO_c), .E(VCC), .DOUT(
        \SPISCLKO_pad/U0/NET1 ), .EOUT(\SPISCLKO_pad/U0/NET2 ));
    NOR2B \CORESPI_0/USPI/URF/CLK_DIV_RNI372K[3]  (.A(
        \CORESPI_0/USPI/clk_div_val[3] ), .B(
        \CORESPI_0.USPI.URF.control110 ), .Y(
        \CORESPI_0/USPI/URF/CLK_DIV_m[3] ));
    DFN1C0 \CORESPI_0/USPI/URXF/counter_q[2]  (.D(
        \CORESPI_0/USPI/URXF/N_11 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/URXF/counter_q[2]_net_1 ));
    MX2 \CORESPI_0/USPI/UCC/stxs_direct/U0  (.A(
        \CORESPI_0/USPI/UCC/stxs_direct ), .B(
        \CORESPI_0/USPI/UCC/stxs_state_i ), .S(
        \CORESPI_0/USPI/UCC/clock_rx_fe ), .Y(
        \CORESPI_0/USPI/UCC/stxs_direct/Y ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ACCUM_NEXT_iv_1[2]  (.A(
        \COREABC_0/ACCUM_IN[2] ), .B(\COREABC_0/ALUOUT_7_sqmuxa ), .C(
        \COREABC_0/ACCUMULATOR_m_0[1] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[2] ));
    DFN1C0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIO0_1  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0I_9_i ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTI1l ));
    NOR3C \CORESPI_0/USPI/URF/int_raw_RNO_0[5]  (.A(
        \CoreTimer_0.DataOut_1_sqmuxa_2 ), .B(
        \CORESPI_0/USPI/URF/int_raw_27_i_a2_0_0[7]_net_1 ), .C(
        \COREABC_0_APB3master_PWDATA[5] ), .Y(
        \CORESPI_0/USPI/URF/N_84 ));
    DFN1E0C0 \CORESPI_0/USPI/UCC/mtx_rxbusy  (.D(
        \CORESPI_0/USPI/UCC/N_604_i_0 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/UCC/N_39 ), .Q(
        \CORESPI_0/USPI/UCC/mtx_rxbusy_net_1 ));
    OR2B \CoreUARTapb_0/CUARTlOlI/CUARTll0_RNI3P0L[0]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTll0[0]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTll0[1]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIOl4 ));
    NOR3C \CoreTimer_0/iPRDATA_RNO_3[1]  (.A(
        \CoreTimer_0/PrdataNextEn_net_1 ), .B(
        \CoreTimer_0/un2_CtrlEn_net_1 ), .C(
        \CoreTimer_0/CtrlReg[1]_net_1 ), .Y(\CoreTimer_0/CtrlReg_m[1] )
        );
    DFN1E1C0 \CoreUARTapb_0/CUARTO1OI[3]  (.D(
        \COREABC_0_APB3master_PWDATA[3] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTO1OI4 ), .Q(
        \CoreUARTapb_0/CUARTO1OI[3]_net_1 ));
    NOR2A \CoreTimer_0/RawTimInt_RNO_0  (.A(
        \CoreTimer_0/CountIsZeroReg_i_0 ), .B(
        \CoreTimer_0/Count_RNIC07P9[22]_net_1 ), .Y(
        \CoreTimer_0/TimeOut ));
    NOR2B \CORESPI_0/USPI/URF/int_raw_RNIRRNE[3]  (.A(
        \CORESPI_0/USPI/URF/int_raw[3]_net_1 ), .B(
        \CORESPI_0.USPI.URF.rdata53 ), .Y(
        \CORESPI_0/USPI/URF/int_raw_m[3] ));
    NOR2A \CoreTimer_0/Count_RNIEPOG6[20]  (.A(\CoreTimer_0/N_20_0 ), 
        .B(\CoreTimer_0/Count[20]_net_1 ), .Y(\CoreTimer_0/N_21_0 ));
    AO1B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I30_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N222 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N226 ), .C(\COREABC_0/ADD_m3_0 ), 
        .Y(\COREABC_0/un1_ACCUMULATOR.N265 ));
    NOR3 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI01_RNO  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI01_0_sqmuxa ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOI0_net_1 ), .C(
        \CoreUARTapb_0/CUARTlOlI/un1_CUARTO1l_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/un1_CUARTI0111 ));
    MX2 \CORESPI_0/USPI/UTXF/fifo_mem_q_fifo_mem_q_ram2__RNID3CQ[4]  (
        .A(\CORESPI_0/USPI/UTXF/ram2_4 ), .B(
        \CORESPI_0/USPI/UTXF/ram3_4 ), .S(
        \CORESPI_0/USPI/UTXF/rd_pointer_q[0]_net_1 ), .Y(
        \CORESPI_0/USPI/UTXF/N_40_0 ));
    NOR3A \CORESPI_0/USPI/URF/control17_m1_e_0_1  (.A(
        \COREABC_0_APB3master_PADDR[4] ), .B(
        \COREABC_0_APB3master_PADDR[5] ), .C(
        \COREABC_0_APB3master_PADDR[6] ), .Y(
        \CORESPI_0/USPI/URF/rdata53_m1_e_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m167_0  (.A(\COREABC_0/N_165_0 ), 
        .B(\COREABC_0/N_167_0 ), .S(\COREABC_0/SMADDR[5] ), .Y(
        \COREABC_0/N_168_0 ));
    XOR3 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I108_Y  (.A(
        \COREABC_0_APB3master_PWDATA[2] ), .B(\COREABC_0/ZREGISTER[2] )
        , .C(\COREABC_0/un33_ZREGISTER.N277 ), .Y(
        \COREABC_0/un33_ZREGISTER[2] ));
    NOR3A \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I4_G0N_0  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I4_G0N_0_0 ), .B(
        \COREABC_0/ADD_16x16_fast_I4_G0N_a1 ), .C(
        \COREABC_0/ADD_16x16_fast_I4_G0N_a0 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N216 ));
    AO1A \CoreTimer_0/LoadEnReg_RNIRS88E_1  (.A(
        \CoreTimer_0/CtrlReg_RNINQA54[2]_net_1 ), .B(
        \CoreTimer_0/un1_m6_i_a3_5 ), .C(\CoreTimer_0/LoadEnReg_net_1 )
        , .Y(\CoreTimer_0/un1_PreScale8_0_0 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m76_0  (.A(\COREABC_0/N_270_0 ), .B(
        \COREABC_0/SMADDR[6] ), .S(\COREABC_0/DOISR_0 ), .Y(
        \COREABC_0/N_237 ));
    NOR3A \COREABC_0/un1_ACCUMULATOR_ADD_m3_5  (.A(
        \COREABC_0/ACCUMULATOR[1] ), .B(\COREABC_0/ADD_m1_2 ), .C(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_0 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_5_mux_3 ));
    AND3 \COREABC_0/un37_SMADDR_I_31  (.A(
        \COREABC_0/un37_SMADDR.U1.DWACT_FINC_E[6] ), .B(
        \COREABC_0/SMADDR[9] ), .C(\COREABC_0/SMADDR[10] ), .Y(
        \COREABC_0/un37_SMADDR.N_2 ));
    OA1 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNI2FMS1  (.A(
        \COREABC_0/ACCUMULATOR[0] ), .B(\COREABC_0/ACCUM_IN[0] ), .C(
        \COREABC_0/ALUOUT_2_sqmuxa ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_4_m[0] ));
    MX2 \COREABC_0/SMADDR[7]/U0  (.A(\COREABC_0/SMADDR_21[7] ), .B(
        \COREABC_0/SMADDR[7] ), .S(\COREABC_0/un1_ICYCLE_6 ), .Y(
        \COREABC_0/SMADDR[7]/Y ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_ACCUMULATOR_m_0[13]  (.A(
        \COREABC_0/un1_ACCUMULATOR.ALUOUT_5_sqmuxa_0 ), .B(
        \COREABC_0/ACCUMULATOR[13] ), .C(\COREABC_0/xhdl_31.MSEL[1] ), 
        .Y(\COREABC_0/ACCUMULATOR_m_0[13] ));
    NOR2B \CoreTimer_0/PreScale_RNI5L91[5]  (.A(
        \CoreTimer_0/PreScale[5]_net_1 ), .B(
        \CoreTimer_0/PreScale[4]_net_1 ), .Y(
        \CoreTimer_0/NextCountPulse_0_sqmuxa_5_3 ));
    INV \CORESPI_0/USPI/UCC/stxs_state_RNIS19E  (.A(
        \CORESPI_0/USPI/UCC/stxs_state_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/stxs_state_i ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m213_0  (.A(\COREABC_0/N_213 ), .B(
        \COREABC_0/N_27_1 ), .S(\COREABC_0/SMADDR[5] ), .Y(
        \COREABC_0/N_214 ));
    XA1B \CoreTimer_0/PreScale_RNO[7]  (.A(
        \CoreTimer_0/PreScale[7]_net_1 ), .B(
        \CoreTimer_0/PreScale_82_0 ), .C(\CoreTimer_0/PreScale8 ), .Y(
        \CoreTimer_0/PreScale_n7 ));
    NOR2B \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I41_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N208 ), .B(
        \COREABC_0/un33_ZREGISTER.N211 ), .Y(
        \COREABC_0/un33_ZREGISTER.N276 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_STBRAM_4_sqmuxa  (.A(
        \COREABC_0/ALUOUT_6_sqmuxa_2 ), .B(
        \COREABC_0/STBRAM_4_sqmuxa_2 ), .Y(\COREABC_0/STBRAM_4_sqmuxa )
        );
    AO1 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I64_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N275 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N272 ), .C(
        \COREABC_0/un1_ACCUMULATOR.N271 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N302 ));
    DFN1C0 \COREABC_0/ACCUMULATOR[4]/U1  (.D(
        \COREABC_0/ACCUMULATOR[4]/Y ), .CLK(GLA), .CLR(
        \COREABC_0/genblk2.RSTSYNC2_0_net_1 ), .Q(
        \COREABC_0/ACCUMULATOR[4] ));
    XA1B \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0Il_RNO_1  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_28_i ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0Il_net_1 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_110 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_131_mux ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_PWDATA_M[14]  (.A(
        \COREABC_0/ACCUMULATOR[14] ), .B(\COREABC_0/USE_ACC_1 ), .Y(
        \COREABC_0_APB3master_PWDATA[14] ));
    AX1B \COREABC_0/un1_ACCUMULATOR_STKPTR_n2  (.A(
        \COREABC_0/STKPTR_2_sqmuxa ), .B(\COREABC_0/STKPTR_c1 ), .C(
        \COREABC_0/N_566 ), .Y(\COREABC_0/N_1215 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I49_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N260 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N256 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N287 ));
    OA1 \COREABC_0/un1_ACCUMULATOR_STKPTR_1_sqmuxa  (.A(
        \COREABC_0/STKPTR_0_sqmuxa ), .B(\COREABC_0/STBRAM_4_sqmuxa ), 
        .C(\COREABC_0/N_493_1 ), .Y(\COREABC_0/STKPTR_1_sqmuxa ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_m97_0_0  (.A(
        \COREABC_0/SMADDR[6] ), .B(\COREABC_0/SMADDR[3] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.m97_0_0 ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNI5QM7S  (.A(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_3[1] ), .B(
        \COREABC_0/un1_ACCUMULATOR_m[1] ), .C(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_4[1] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_6[1] ));
    DFN1 \COREABC_0/UROM.INSTR_SCMD[1]  (.D(\COREABC_0/INSTRUCTION[4] )
        , .CLK(GLA), .Q(\COREABC_0/UROM.INSTR_SCMD[1]_net_1 ));
    DFN1E0C0 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTIl0l[6]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTI1I[6] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_159 ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTIl0l[6]_net_1 ));
    MX2A \COREABC_0/un1_ACCUMULATOR_USE_ACC_1  (.A(
        \COREABC_0/UROM.INSTR_SCMD[0]_net_1 ), .B(
        \COREABC_0_APB3master_PADDR[12] ), .S(
        \COREABC_0/UROM.INSTR_CMD[0]_net_1 ), .Y(\COREABC_0/USE_ACC_1 )
        );
    DFN1E1C0 \CoreTimer_0/TimerPre[3]  (.D(
        \COREABC_0_APB3master_PWDATA[3] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreTimer_0/PrescaleEn_net_1 ), .Q(
        \CoreTimer_0/TimerPre[3]_net_1 ));
    AO1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I93_Y_2  (.A(
        \COREABC_0/un33_ZREGISTER.N285 ), .B(
        \COREABC_0/un33_ZREGISTER.N292 ), .C(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I93_Y_1 ), .Y(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I93_Y_2 ));
    OR2 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I8_P0N  (.A(
        \COREABC_0/ZREGISTER[8] ), .B(\COREABC_0_APB3master_PWDATA[8] )
        , .Y(\COREABC_0/un33_ZREGISTER.N229 ));
    NOR3C \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I95_un1_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N297 ), .B(
        \COREABC_0/un33_ZREGISTER.N289 ), .C(
        \COREABC_0/un33_ZREGISTER.N304 ), .Y(
        \COREABC_0/un33_ZREGISTER.I95_un1_Y ));
    NOR3A \COREABC_0/un1_ACCUMULATOR_ADD_m1_e_8  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_m1_e_8_0 ), .B(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_0 ), .C(
        \COREABC_0/r_m1_N_6_mux_0 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N231 ));
    NOR2A \CoreUARTapb_0/CUARTOOII_RNO_3[3]  (.A(
        \CoreUARTapb_0/OVERFLOW ), .B(\COREABC_0_APB3master_PADDR[2] ), 
        .Y(\CoreUARTapb_0/N_66_0 ));
    MX2C \CoreUARTapb_0/CUARTOOII_RNO_1[1]  (.A(
        \CoreUARTapb_0/CUARTl0OI[1]_net_1 ), .B(
        \CoreUARTapb_0/CUARTO1OI[1]_net_1 ), .S(
        \COREABC_0_APB3master_PADDR[2] ), .Y(\CoreUARTapb_0/i21_i ));
    MX2 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_RNO_0[7]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/i1_mux ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_177 ), .S(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_7 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_9[7] ));
    DFN1E1P0 \CoreTimer_0/Count[3]  (.D(\CoreTimer_0/N_410 ), .CLK(GLA)
        , .PRE(COREABC_0_PRESETN_0), .E(\CoreTimer_0/Counte ), .Q(
        \CoreTimer_0/Count[3]_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m248_0  (.A(\COREABC_0/N_246_0 ), 
        .B(\COREABC_0/N_280_mux ), .S(\COREABC_0/SMADDR_0[5] ), .Y(
        \COREABC_0/N_249_0 ));
    OR2 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIOll_RNI0EA01[1]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll019_NE_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll019_NE_0 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll019_i ));
    NOR2A \CoreTimer_0/Count_RNIH5TA5[16]  (.A(\CoreTimer_0/N_16_0 ), 
        .B(\CoreTimer_0/Count[16]_net_1 ), .Y(\CoreTimer_0/N_17_0 ));
    AO1 \CORESPI_0/USPI/UCC/mtx_state_RNO[5]  (.A(
        \CORESPI_0/USPI/UCC/mtx_state_ns_0_0_a2_1[5] ), .B(
        \CORESPI_0/USPI/UCC/N_91 ), .C(\CORESPI_0/USPI/UCC/N_71 ), .Y(
        \CORESPI_0/USPI/UCC/mtx_state_ns[5] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m183_0  (.A(\COREABC_0/N_38_1 ), .B(
        \COREABC_0/N_17_1 ), .S(\COREABC_0/SMADDR_0[2] ), .Y(
        \COREABC_0/N_184 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m180_0  (.A(\COREABC_0/N_176_0 ), 
        .B(\COREABC_0/N_180 ), .S(\COREABC_0/SMADDR_0[0] ), .Y(
        \COREABC_0/INSTRUCTION[13] ));
    DFN1C0 \COREABC_0/genblk2.RSTSYNC1  (.D(VCC), .CLK(GLA), .CLR(
        NSYSRESET_c), .Q(\COREABC_0/genblk2.RSTSYNC1_net_1 ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I21_Y_a5  (.A(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux ), .B(
        \COREABC_0/ACCUMULATOR[12] ), .Y(
        \COREABC_0/ADD_16x16_fast_I21_Y_a5 ));
    NOR3A \CORESPI_0/USPI/UCC/mtx_spi_data_out_RNO_3  (.A(
        \CORESPI_0/USPI/UCC/mtx_bitsel[0]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/mtx_bitsel[1]_net_1 ), .C(
        \CORESPI_0/USPI/UCC/mtx_datahold[1]_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/N_36 ));
    XOR2 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0Il_RNII3BH  (.A(
        \CoreUARTapb_0/CUARTO1OI[2]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0Il_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/m66_0 ));
    NOR2B \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I92_un1_Y_0  (.A(
        \COREABC_0/un33_ZREGISTER.N283 ), .B(
        \COREABC_0/un33_ZREGISTER.N291 ), .Y(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I92_un1_Y_0 ));
    NOR2B \CORESPI_0/USPI/UCC/stxs_bitcnt_RNO_0[4]  (.A(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[3] ), .B(
        \CORESPI_0/USPI/UCC/stxs_bitcnt_c2 ), .Y(
        \CORESPI_0/USPI/UCC/stxs_bitcnt_101_0 ));
    AOI1B \CORESPI_0/USPI/UCC/stxs_bitcnt_RNIM2VH3[4]  (.A(
        \CORESPI_0/USPI/UCC/stxs_datareg4_3_0 ), .B(
        \CORESPI_0/USPI/UCC/stxs_datareg4_3 ), .C(
        \CORESPI_0/USPI/UCC/un1_stxs_strobetx14_2 ), .Y(
        \CORESPI_0/USPI/UCC/stxs_datareg_1_sqmuxa_2 ));
    DFN1E1C0 \CoreTimer_0/Load[2]  (.D(
        \COREABC_0_APB3master_PWDATA[2] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreTimer_0/LoadEn_net_1 ), .Q(
        \CoreTimer_0/Load[2]_net_1 ));
    DFN1E1P0 \CoreTimer_0/Count[22]  (.D(\CoreTimer_0/N_429_i ), .CLK(
        GLA), .PRE(COREABC_0_PRESETN_0), .E(\CoreTimer_0/Counte_0 ), 
        .Q(\CoreTimer_0/Count[22]_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m84_0  (.A(\COREABC_0/N_83_0 ), .B(
        \COREABC_0/SMADDR[10] ), .S(\COREABC_0/DOISR_0 ), .Y(
        \COREABC_0/N_85_0 ));
    DFN1P0 \COREABC_0/SMADDR_0[0]/U1  (.D(\COREABC_0/SMADDR_0[0]/Y ), 
        .CLK(GLA), .PRE(\COREABC_0/genblk2.RSTSYNC2_0_net_1 ), .Q(
        \COREABC_0/SMADDR_0[0] ));
    NOR2A \CORESPI_0/USPI/UCC/stxs_checkorun_RNO_0  (.A(
        \CORESPI_0/USPI/UCC/stxs_state_net_1 ), .B(
        \CORESPI_0/USPI/UCC/stxs_checkorun ), .Y(
        \CORESPI_0/USPI/UCC/stxs_checkorun_i_m_0 ));
    NOR3A \CoreTimer_0/PrdataNextEn  (.A(CoreAPB3_0_APBmslave0_PSELx), 
        .B(COREABC_0_APB3master_PWRITE), .C(
        COREABC_0_APB3master_PENABLE), .Y(
        \CoreTimer_0/PrdataNextEn_net_1 ));
    DFN1C0 \CORESPI_0/USPI/UTXF/counter_q[5]  (.D(
        \CORESPI_0/USPI/UTXF/N_19 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UTXF/counter_q[5]_net_1 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIMI8OR3  (.A(
        \COREABC_0/un1_ACCUMULATOR[9] ), .B(
        \COREABC_0/un1_ACCUM_NEXT9_1 ), .C(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[9] ), .Y(
        \COREABC_0/ACCUM_NEXT[9] ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I1_P0N_a1  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I1_P0N_a1_0 ), .B(
        \COREABC_0/r_m1_N_6_mux ), .Y(
        \COREABC_0/ADD_16x16_fast_I1_P0N_a1 ));
    DFN1C0 \CORESPI_0/USPI/UCC/rx_cmdsize  (.D(
        \CORESPI_0/USPI/UCC/rx_cmdsize_4 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(\CORESPI_0/USPI/rx_cmdsize ));
    OR2 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I3_P0N  (.A(
        \COREABC_0/ZREGISTER[3] ), .B(\COREABC_0_APB3master_PWDATA[3] )
        , .Y(\COREABC_0/un33_ZREGISTER.N214 ));
    DFN1E1C0 \CoreTimer_0/TimerPre[0]  (.D(
        \COREABC_0_APB3master_PWDATA[0] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreTimer_0/PrescaleEn_net_1 ), .Q(
        \CoreTimer_0/TimerPre[0]_net_1 ));
    DFN1C0 \COREABC_0/ISR_ACCUM_ZERO/U1  (.D(
        \COREABC_0/ISR_ACCUM_ZERO/Y ), .CLK(GLA), .CLR(
        \COREABC_0/genblk2.RSTSYNC2_2_net_1 ), .Q(
        \COREABC_0/ISR_ACCUM_ZERO ));
    XOR2 \CORESPI_0/USPI/URXF/un1_counter_q_0_I_21  (.A(
        \CORESPI_0/USPI/URXF/counter_q[4]_net_1 ), .B(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_2[0] ), .Y(
        \CORESPI_0/USPI/URXF/un1_counter_q0[4] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m185_0  (.A(\COREABC_0/N_183 ), .B(
        \COREABC_0/N_185_0 ), .S(\COREABC_0/SMADDR_0[5] ), .Y(
        \COREABC_0/N_186_0 ));
    MX2 \CoreTimer_0/Count_RNO_0[3]  (.A(\CoreTimer_0/Count[3]_net_1 ), 
        .B(\CoreTimer_0/Load[3]_net_1 ), .S(
        \CoreTimer_0/un1_PreScale8_0 ), .Y(\CoreTimer_0/N_204 ));
    AND3 \COREABC_0/un37_SMADDR_I_10  (.A(\COREABC_0/SMADDR_0[0] ), .B(
        \COREABC_0/SMADDR_0[1] ), .C(\COREABC_0/SMADDR_0[2] ), .Y(
        \COREABC_0/un37_SMADDR.U1.DWACT_FINC_E[0] ));
    AO1A \CORESPI_0/USPI/UCC/mtx_state_RNO[2]  (.A(
        \CORESPI_0/USPI/SPISS_2[0] ), .B(
        \CORESPI_0/USPI/UCC/mtx_state_ns_i_i_a2_0_0[2] ), .C(
        \CORESPI_0/USPI/UCC/mtx_state_0_sqmuxa ), .Y(
        \CORESPI_0/USPI/UCC/N_20 ));
    OAI1 \COREABC_0/un1_ACCUMULATOR_un1_ICYCLE_11  (.A(
        \COREABC_0/ICYCLE[1]_net_1 ), .B(\COREABC_0/DOJMP_1_sqmuxa ), 
        .C(\COREABC_0/ICYCLE[0]_net_1 ), .Y(\COREABC_0/un1_ICYCLE_11 ));
    MX2C \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I6_P0N_0  (.A(
        \COREABC_0/d_N_5_mux_0 ), .B(
        \COREABC_0/Ram256x16_R0C0_RNI8F5K2_1 ), .S(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_5_mux_1 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N223 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ACCUM_NEXT_iv_0[8]  (.A(
        \COREABC_0/un1_ACCUMULATOR.xhdl_31.ALUOUT_3_m_0[8] ), .B(
        \COREABC_0/ACCUM_IN[8] ), .C(\COREABC_0/PRDATA_M_m[8] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_0[8] ));
    DFN1C0 \COREABC_0/ACCUMULATOR[15]/U1  (.D(
        \COREABC_0/ACCUMULATOR[15]/Y ), .CLK(GLA), .CLR(PRESETN), .Q(
        \COREABC_0/ACCUMULATOR[15] ));
    OA1 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIK0M52  (.A(
        \COREABC_0/ACCUMULATOR[13] ), .B(\COREABC_0/ACCUM_IN[13] ), .C(
        \COREABC_0/ALUOUT_2_sqmuxa ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_4_m[13] ));
    NOR3C \CoreTimer_0/iPRDATA_RNO_0[12]  (.A(
        \CoreTimer_0/PrdataNextEn_net_1 ), .B(
        \CORESPI_0.USPI.URF.N_127 ), .C(\CoreTimer_0/Load[12]_net_1 ), 
        .Y(\CoreTimer_0/Load_m[12] ));
    DFN1C0 \COREABC_0/ZREGISTER[3]/U1  (.D(\COREABC_0/ZREGISTER[3]/Y ), 
        .CLK(GLA), .CLR(\COREABC_0/genblk2.RSTSYNC2_2_net_1 ), .Q(
        \COREABC_0/ZREGISTER[3] ));
    MX2A \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO1ll.CUARTI0I_8_m5  (
        .A(\CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0I10 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/i4_mux ), .S(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_7 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0I_8 ));
    MX2C \CoreUARTapb_0/CUARTOOII_RNO_3[0]  (.A(CoreUARTapb_0_TXRDY), 
        .B(\CoreUARTapb_0/CUARTI1OI[0] ), .S(
        \COREABC_0_APB3master_PADDR[2] ), .Y(\CoreUARTapb_0/i9_mux ));
    AO1 \CORESPI_0/USPI/URXF/un1_counter_q_1_I_30  (.A(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_pog_array_0_2[0] ), .B(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_0_2[0] ), .C(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_0_3[0] ), .Y(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_1_1[0] ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_ALUOUT_5_sqmuxa_0  (.A(
        \COREABC_0/ALUOUT_1_sqmuxa_1 ), .B(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ALUOUT_5_sqmuxa_0 ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_m176  (.A(\COREABC_0/N_25_1 ), .B(
        \COREABC_0/SMADDR[2] ), .Y(\COREABC_0/N_177 ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIC5N0E  (.A(
        \COREABC_0/xhdl_31.ALUOUT_4_m[14] ), .B(
        \COREABC_0/xhdl_31.ALUOUT_5_m[14] ), .C(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[14] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_4[14] ));
    DFN1E1C0 \CoreTimer_0/Load[8]  (.D(
        \COREABC_0_APB3master_PWDATA[8] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreTimer_0/LoadEn_net_1 ), .Q(
        \CoreTimer_0/Load[8]_net_1 ));
    MX2 \CORESPI_0/USPI/UTXF/fifo_mem_q_fifo_mem_q_ram0__RNIF8P81[1]  
        (.A(\CORESPI_0/USPI/UTXF/N_32 ), .B(\CORESPI_0/USPI/UTXF/N_37 )
        , .S(\CORESPI_0/USPI/UTXF/rd_pointer_q[1]_net_1 ), .Y(
        \CORESPI_0/USPI/tx_fifo_data_out[0] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m80_0  (.A(\COREABC_0/N_79_0 ), .B(
        \COREABC_0/SMADDR[9] ), .S(\COREABC_0/DOISR_0 ), .Y(
        \COREABC_0/N_81_0 ));
    NOR2B \CORESPI_0/USPI/UCC/spi_clk_count_RNI0N89[2]  (.A(
        \CORESPI_0/USPI/UCC/spi_clk_count_c1 ), .B(
        \CORESPI_0/USPI/UCC/spi_clk_count[2]_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/spi_clk_count_c2 ));
    NOR3C \CORESPI_0/USPI/URF/int_raw_RNO_0[0]  (.A(
        \CoreTimer_0.DataOut_1_sqmuxa_2 ), .B(
        \CORESPI_0/USPI/URF/int_raw_27_i_a2_0_0[7]_net_1 ), .C(
        \CORESPI_0/USPI/URF/int_raw_30_i_a2_0_0[0] ), .Y(
        \CORESPI_0/USPI/URF/N_113 ));
    DFN1C0 \CORESPI_0/USPI/UCC/clock_rx_q3  (.D(
        \CORESPI_0/USPI/UCC/clock_rx_q2_net_1 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/clock_rx_q3_net_1 ));
    NOR3C \CoreTimer_0/iPRDATA_RNO_0[7]  (.A(
        \CoreTimer_0/PrdataNextEn_net_1 ), .B(
        \CORESPI_0.USPI.URF.N_127 ), .C(\CoreTimer_0/Load[7]_net_1 ), 
        .Y(\CoreTimer_0/Load_m[7] ));
    DFN1E1P0 \CoreTimer_0/Count[27]  (.D(\CoreTimer_0/N_39_0 ), .CLK(
        GLA), .PRE(COREABC_0_PRESETN_0), .E(\CoreTimer_0/Counte ), .Q(
        \CoreTimer_0/Count[27]_net_1 ));
    DFN1C0 \CORESPI_0/USPI/URF/int_raw[6]  (.D(
        \CORESPI_0/USPI/URF/int_raw_48[6] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(\CORESPI_0.USPI.URF.int_raw[6] ));
    DFN1 \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/CUARTOOOI[1]  (.D(
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/CUARTl00I[1] ), 
        .CLK(GLA), .Q(\CoreUARTapb_0/CUARTlOlI/CUARTl1I[1] ));
    DFN1E1 \CORESPI_0/USPI/URXF/fifo_mem_q_fifo_mem_q_ram2_[4]  (.D(
        \CORESPI_0/USPI/rx_fifo_data_in[3] ), .CLK(GLA), .E(
        \CORESPI_0/USPI/URXF/awe2 ), .Q(\CORESPI_0/USPI/URXF/ram2_4 ));
    MX2 \CORESPI_0/USPI/URF/control2_RNO[2]  (.A(
        \COREABC_0_APB3master_PWDATA[1] ), .B(
        \CORESPI_0.USPI.cfg_cmdsize[1] ), .S(\CORESPI_0/USPI/URF/N_67 )
        , .Y(\CORESPI_0/USPI/URF/N_32 ));
    NOR2B \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I5_G0N  (.A(
        \COREABC_0/ZREGISTER[5] ), .B(\COREABC_0_APB3master_PWDATA[5] )
        , .Y(\COREABC_0/un33_ZREGISTER.N219 ));
    DFN1E1C0 \CoreTimer_0/Load[15]  (.D(
        \COREABC_0_APB3master_PWDATA[15] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreTimer_0/LoadEn_net_1 ), .Q(
        \CoreTimer_0/Load[15]_net_1 ));
    NOR3A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_m3_0_a2  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_m3_0_a2_2_net_1 ), .B(
        \CORESPI_0.USPI.URF.control2_m[7] ), .C(
        \CORESPI_0.USPI.URF.int_masked_m[7] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_N_7_mux ));
    OA1A \CoreUARTapb_0/CUARTlOlI/CUARTOl0_RNO  (.A(
        \CoreUARTapb_0/CUARTlOlI/un1_CUARTO1l_net_1 ), .B(
        \CoreUARTapb_0/PARITY_ERR ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTIOl4 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOl0_1_sqmuxa ));
    NOR2B \CORESPI_0/USPI/URXF/full_out_RNIGLTB_0  (.A(
        \CORESPI_0/USPI/URXF/full_out_i_0 ), .B(
        \CORESPI_0/USPI/rx_fifo_write ), .Y(
        \CORESPI_0/USPI/URXF/fifo_mem_d[3]_0_sqmuxa ));
    MX2 \COREABC_0/un1_ACCUMULATOR_SMADDR_21[11]  (.A(
        \COREABC_0/N_447 ), .B(\COREABC_0/N_434 ), .S(
        \COREABC_0/SMADDR_0_sqmuxa_1 ), .Y(\COREABC_0/SMADDR_21[11] ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ADD_m2_e  (.A(
        \COREABC_0/ACCUMULATOR[11] ), .B(\COREABC_0/RAMRDATA[11] ), .Y(
        \COREABC_0/ADD_m2_e ));
    XOR2 \COREABC_0/un37_SMADDR_I_23  (.A(\COREABC_0/un37_SMADDR.N_5 ), 
        .B(\COREABC_0/SMADDR[8] ), .Y(\COREABC_0/I_23 ));
    XOR2 \COREABC_0/un37_SMADDR_I_17  (.A(\COREABC_0/un37_SMADDR.N_7 ), 
        .B(\COREABC_0/SMADDR[6] ), .Y(\COREABC_0/I_17 ));
    DFN1C0 \COREABC_0/ACCUMULATOR[2]/U1  (.D(
        \COREABC_0/ACCUMULATOR[2]/Y ), .CLK(GLA), .CLR(
        \COREABC_0/genblk2.RSTSYNC2_0_net_1 ), .Q(
        \COREABC_0/ACCUMULATOR[2] ));
    DFN1C0 \CoreTimer_0/iPRDATA[8]  (.D(\CoreTimer_0/PrdataNext_1[8] ), 
        .CLK(GLA), .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreAPB3_0_APBmslave0_PRDATA[8] ));
    OR3A \CORESPI_0/USPI/UCC/spi_ssel_pos_RNIKMB21  (.A(
        \CORESPI_0/USPI/cfg_ssel[0] ), .B(\CORESPI_0/USPI/SPISS_2[0] ), 
        .C(\CORESPI_0.USPI.master_ssel_out ), .Y(SPISS_c));
    NOR3A \COREABC_0/URAM.UR/UG3.UR_xhdl12/Ram256x16_R0C0_RNI4G911  (
        .A(\COREABC_0/un1_ACCUMULATOR.un7_m1_e_0_1 ), .B(
        \COREABC_0/r_m1tt_N_3_mux ), .C(\COREABC_0/RAMRDATA[6] ), .Y(
        \COREABC_0/URAM.UR/UG3.UR_xhdl12/Ram256x16_R0C0_RNI4G911_net_1 )
        );
    MX2 \COREABC_0/un1_ACCUMULATOR_m42_0  (.A(\COREABC_0/N_30_1 ), .B(
        \COREABC_0/N_37_1 ), .S(\COREABC_0/SMADDR_1[1] ), .Y(
        \COREABC_0/N_43_1 ));
    DFN1C0 \COREABC_0/STBRAM  (.D(\COREABC_0/STBRAM_7 ), .CLK(GLA), 
        .CLR(PRESETN), .Q(\COREABC_0/STBRAM_net_1 ));
    NOR2A \CoreTimer_0/Count_RNI21MS8[28]  (.A(\CoreTimer_0/N_29_0 ), 
        .B(\CoreTimer_0/Count[28]_net_1 ), .Y(\CoreTimer_0/N_30_0 ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_PRDATA_M_m[2]  (.A(
        \COREABC_0/UROM.INSTR_CMD[1]_net_1 ), .B(N_11), .C(
        \COREABC_0/UROM.INSTR_CMD[0]_net_1 ), .Y(
        \COREABC_0/PRDATA_M_m[2] ));
    NOR3A \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0_RNO[12]  (
        .A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_126 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_RNII49F8[0]_net_1 ), 
        .C(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/un1_CUARTO0_0_sqmuxa_2 ), 
        .Y(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[12] ));
    NOR3A \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I6_G0N_0  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I6_G0N_0_0 ), .B(
        \COREABC_0/ADD_16x16_fast_I6_G0N_a1 ), .C(
        \COREABC_0/ADD_16x16_fast_I6_G0N_a0 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N222 ));
    DFN1E1 \CORESPI_0/USPI/UTXF/fifo_mem_q_fifo_mem_q_ram2_[1]  (.D(
        \COREABC_0_APB3master_PWDATA[0] ), .CLK(GLA), .E(
        \CORESPI_0/USPI/UTXF/awe2 ), .Q(\CORESPI_0/USPI/UTXF/ram2_1 ));
    DFN1E1C0 \CORESPI_0/USPI/UCC/clk_div_val_reg[4]  (.D(
        \CORESPI_0.USPI.clk_div_val[4] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(
        \CORESPI_0/USPI/UCC/mtx_state_RNINJM1[1]_net_1 ), .Q(
        \CORESPI_0/USPI/UCC/clk_div_val_reg[4]_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m88_0  (.A(\COREABC_0/N_88_0 ), .B(
        \COREABC_0/SMADDR[11] ), .S(\COREABC_0/DOISR_0 ), .Y(
        \COREABC_0/N_89 ));
    AND2 \COREABC_0/un1_STKPTRP1_I_15  (.A(\COREABC_0/STKPTR[3] ), .B(
        \COREABC_0/STKPTR[4] ), .Y(
        \COREABC_0/un1_STKPTRP1.U1.DWACT_FINC_E[1] ));
    MX2 \CORESPI_0/USPI/UTXF/fifo_mem_q_fifo_mem_q_ram2__RNIB1CQ[3]  (
        .A(\CORESPI_0/USPI/UTXF/ram2_3 ), .B(
        \CORESPI_0/USPI/UTXF/ram3_3 ), .S(
        \CORESPI_0/USPI/UTXF/rd_pointer_q[0]_net_1 ), .Y(
        \CORESPI_0/USPI/UTXF/N_39 ));
    AND3B \COREABC_0/un1_ACCUMULATOR_un1_m1_e_2  (.A(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux ), .B(
        \COREABC_0/r_m1_N_6_mux ), .C(\COREABC_0/RAMRDATA[10] ), .Y(
        \COREABC_0/un5[10] ));
    OA1A \COREABC_0/un1_ACCUMULATOR_m137_0  (.A(
        \COREABC_0/SMADDR_0[3] ), .B(\COREABC_0/N_277_0 ), .C(
        \COREABC_0/N_16_1 ), .Y(\COREABC_0/N_277_mux_0 ));
    DFN1E1C0 \CORESPI_0/USPI/URF/cfg_ssel[3]  (.D(
        \COREABC_0_APB3master_PWDATA[3] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/URF/N_119 ), .Q(
        \CORESPI_0/USPI/URF/cfg_ssel[3]_net_1 ));
    DFN1C1 \CORESPI_0/USPI/UCC/stxs_bitcnt[3]/U1  (.D(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[3]/Y ), .CLK(GLA), .CLR(
        \CORESPI_0/USPI/UCC/ssel_rx_q2_RNIBQH6_net_1 ), .Q(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[3] ));
    NOR2 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0_RNIO098[5]  
        (.A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[7] ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[5] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO08_8_0 ));
    MX2 \CORESPI_0/USPI/UCC/stxs_state_RNIMPJH1  (.A(
        \CORESPI_0/USPI/UCC/stxs_state4 ), .B(
        \CORESPI_0/USPI/UCC/un1_stxs_bitsel_1 ), .S(
        \CORESPI_0/USPI/UCC/stxs_state_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/un1_stxs_state4[0] ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I3_G0N_0_0  (.A(
        \COREABC_0/ACCUMULATOR[3] ), .B(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I3_G0N_0_0 ));
    AND3 \COREABC_0/un1_STKPTRP1_I_8  (.A(\COREABC_0/STKPTR[0] ), .B(
        \COREABC_0/STKPTR[1] ), .C(\COREABC_0/STKPTR[2] ), .Y(
        \COREABC_0/un1_STKPTRP1.N_6 ));
    NOR2 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0_RNITI1T_1[0]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0[0]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0[1]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_123 ));
    NOR3C \CORESPI_0/USPI/URF/control1_RNIHG8M[3]  (.A(
        \CORESPI_0/USPI/URF/int_raw[0]_net_1 ), .B(
        \CORESPI_0/USPI/URF/control1[3]_net_1 ), .C(
        \CORESPI_0.USPI.URF.N_126 ), .Y(
        \CORESPI_0.USPI.URF.int_masked_m[0] ));
    NOR2B \CORESPI_0/USPI/UCC/stxs_datareg_RNO[0]  (.A(
        \CORESPI_0/USPI/tx_fifo_data_out[0] ), .B(
        \CORESPI_0/USPI/UCC/un1_stxs_datareg_2_sqmuxa ), .Y(
        \CORESPI_0/USPI/UCC/stxs_datareg_10[0] ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_ACCUMULATOR_m_0[5]  (.A(
        \COREABC_0/un1_ACCUMULATOR.ALUOUT_5_sqmuxa_0 ), .B(
        \COREABC_0/ACCUMULATOR[5] ), .C(\COREABC_0/xhdl_31.MSEL[1] ), 
        .Y(\COREABC_0/ACCUMULATOR_m_0[5] ));
    DFN1E1C0 \CoreTimer_0/Load[7]  (.D(
        \COREABC_0_APB3master_PWDATA[7] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreTimer_0/LoadEn_net_1 ), .Q(
        \CoreTimer_0/Load[7]_net_1 ));
    NOR3A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_m4_0_a2  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_m4_0_a2_1_net_1 ), .B(
        \CORESPI_0.USPI.URF.rdata_0_iv_3[3] ), .C(
        \CORESPI_0.USPI.un1_PADDR ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_N_9_mux ));
    MX2 \COREABC_0/SMADDR[10]/U0  (.A(\COREABC_0/N_67 ), .B(
        \COREABC_0/SMADDR[10] ), .S(\COREABC_0/un1_ICYCLE_6 ), .Y(
        \COREABC_0/SMADDR[10]/Y ));
    MX2 \COREABC_0/DOJMP/U0  (.A(\COREABC_0/ICYCLE_i[1] ), .B(
        \COREABC_0/DOJMP ), .S(\COREABC_0/un1_ICYCLE_11 ), .Y(
        \COREABC_0/DOJMP/Y ));
    NOR3 \CORESPI_0/USPI/URXF/counter_q_RNO[3]  (.A(
        \CORESPI_0/USPI/URXF/N_61 ), .B(\CORESPI_0/USPI/URXF/N_60 ), 
        .C(\CORESPI_0/USPI/fiforstrx ), .Y(\CORESPI_0/USPI/URXF/N_15 ));
    DFN1E1C0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTOOll  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTOOll_0_sqmuxa ), .CLK(
        GLA), .CLR(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTIl ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTOOll_net_1 ));
    XOR2 \COREABC_0/un37_SMADDR_I_14  (.A(\COREABC_0/un37_SMADDR.N_8 ), 
        .B(\COREABC_0/SMADDR[5] ), .Y(\COREABC_0/I_14 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m23_0  (.A(\COREABC_0/N_14_1 ), .B(
        \COREABC_0/N_23_1 ), .S(\COREABC_0/SMADDR_1[2] ), .Y(
        \COREABC_0/N_24_1 ));
    XOR3 \CORESPI_0/USPI/UTXF/un1_counter_q_0_I_22  (.A(
        \CORESPI_0/USPI/UTXF/counter_q[3]_net_1 ), .B(
        \CORESPI_0/USPI/UTXF/counter_d_0_sqmuxa_0 ), .C(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_12_0[0] ), .Y(
        \CORESPI_0/USPI/UTXF/un1_counter_q0[3] ));
    DFN1E0C0 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTIl0l[0]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTI1I[0] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_159 ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTIl0l[0]_net_1 ));
    MX2C \CoreUARTapb_0/CUARTOOII_RNO[1]  (.A(\CoreUARTapb_0/N_81 ), 
        .B(\CoreUARTapb_0/i21_i ), .S(
        \COREABC_0_APB3master_PADDR_0[3] ), .Y(\CoreUARTapb_0/N_83 ));
    MX2C \CoreUARTapb_0/CUARTOOII_RNO_3[1]  (.A(RXRDY), .B(
        \CoreUARTapb_0/CUARTI1OI[1] ), .S(
        \COREABC_0_APB3master_PADDR[2] ), .Y(\CoreUARTapb_0/i10_mux ));
    MX2 \CORESPI_0/USPI/UTXF/fifo_mem_q_fifo_mem_q_ram0__RNI9JJ9[4]  (
        .A(\CORESPI_0/USPI/UTXF/ram0_4 ), .B(
        \CORESPI_0/USPI/UTXF/ram1_4 ), .S(
        \CORESPI_0/USPI/UTXF/rd_pointer_q[0]_net_1 ), .Y(
        \CORESPI_0/USPI/UTXF/N_35 ));
    AO1B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I94_Y_0  (.A(
        \COREABC_0/un1_ACCUMULATOR.N259 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N256 ), .C(
        \COREABC_0/un1_ACCUMULATOR.ADD_i3_mux ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I94_Y_0 ));
    BUFF \CoreAPB3_0/iPSELS_0_a2_0[2]  (.A(COREABC_0_APB3master_PSELx), 
        .Y(N_73));
    AND3 \COREABC_0/un1_STKPTRP1_I_13  (.A(
        \COREABC_0/un1_STKPTRP1.U1.DWACT_FINC_E[0] ), .B(
        \COREABC_0/STKPTR[3] ), .C(\COREABC_0/STKPTR[4] ), .Y(
        \COREABC_0/un1_STKPTRP1.N_4 ));
    XA1 \CORESPI_0/USPI/UCC/spi_clk_count_RNO[1]  (.A(
        \CORESPI_0/USPI/UCC/spi_clk_count[1]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/spi_clk_count[0]_net_1 ), .C(
        \CORESPI_0/USPI/UCC/spi_clk_count_1_sqmuxa ), .Y(
        \CORESPI_0/USPI/UCC/spi_clk_count_n1 ));
    AO1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I93_Y_1  (.A(
        \COREABC_0/un33_ZREGISTER.N254 ), .B(
        \COREABC_0/un33_ZREGISTER.N257 ), .C(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I93_Y_0 ), .Y(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I93_Y_1 ));
    MX2 \CORESPI_0/USPI/UTXF/fifo_mem_q_fifo_mem_q_ram0__RNI5FJ9[2]  (
        .A(\CORESPI_0/USPI/UTXF/ram0_2 ), .B(
        \CORESPI_0/USPI/UTXF/ram1_2 ), .S(
        \CORESPI_0/USPI/UTXF/rd_pointer_q[0]_net_1 ), .Y(
        \CORESPI_0/USPI/UTXF/N_33 ));
    NOR3C \CORESPI_0/USPI/UTXF/empty_out_RNO_0  (.A(
        \CORESPI_0/USPI/UTXF/N_38 ), .B(\CORESPI_0/USPI/UTXF/N_42 ), 
        .C(\CORESPI_0/USPI/UTXF/empty_out_2_0_a3_2 ), .Y(
        \CORESPI_0/USPI/UTXF/empty_out_2_0_a3_3 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ACCUM_IN[8]  (.A(
        \COREABC_0/RAMRDATA[8] ), .B(\COREABC_0/un7_MUXIR[0] ), .Y(
        \COREABC_0/ACCUM_IN[8] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m214  (.A(\COREABC_0/N_210 ), .B(
        \COREABC_0/N_214 ), .S(\COREABC_0/SMADDR_0[0] ), .Y(
        \COREABC_0/INSTRUCTION[4] ));
    DFN1E1C0 \CORESPI_0/USPI/URF/CLK_DIV[4]  (.D(
        \COREABC_0_APB3master_PWDATA[4] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/URF/N_120 ), .Q(
        \CORESPI_0.USPI.clk_div_val[4] ));
    NOR3A 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0_RNIEVHG[4]  
        (.A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO08_8_0 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[4] ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[6] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTOOI4_8 ));
    XOR2 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_RNO[2]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_c1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1[2]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_n2 ));
    DFN1E0C0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[3]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_11[3] ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_130_mux ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[3]_net_1 ));
    MIN3 \COREABC_0/un1_ACCUMULATOR_ADD_m5_0_0  (.A(
        \COREABC_0/ADD_m2_e ), .B(\COREABC_0/ACCUMULATOR[12] ), .C(
        \COREABC_0/RAMRDATA[12] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_m5_0_0 ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_ACCUMULATOR_m_0[7]  (.A(
        \COREABC_0/un1_ACCUMULATOR.ALUOUT_5_sqmuxa_0 ), .B(
        \COREABC_0/ACCUMULATOR[7] ), .C(\COREABC_0/xhdl_31.MSEL[1] ), 
        .Y(\COREABC_0/ACCUMULATOR_m_0[7] ));
    NOR2B \CoreTimer_0/iPRDATA_RNO_0[3]  (.A(
        \CoreTimer_0/Count[3]_net_1 ), .B(
        \CoreTimer_0/DataOut_1_sqmuxa_net_1 ), .Y(
        \CoreTimer_0/Count_m[3] ));
    NOR3A \COREABC_0/URAM.UR/UG3.UR_xhdl12/Ram256x16_R0C0_RNIDHJ71  (
        .A(\COREABC_0/RAMRDATA[6] ), .B(
        \COREABC_0_APB3master_PADDR[12] ), .C(
        \COREABC_0/un1_ACCUMULATOR.un7_m1_e_0_1 ), .Y(
        \COREABC_0/URAM.UR/UG3.UR_xhdl12/Ram256x16_R0C0_RNIDHJ71_net_1 )
        );
    DFN1E1C0 \CoreTimer_0/Load[11]  (.D(
        \COREABC_0_APB3master_PWDATA[11] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreTimer_0/LoadEn_net_1 ), .Q(
        \CoreTimer_0/Load[11]_net_1 ));
    OR3 \CORESPI_0/USPI/UCC/mtx_rxbusy_RNIGDN01  (.A(
        \CORESPI_0/USPI/UCC/mtx_busy_net_1 ), .B(
        \CORESPI_0/USPI/UCC/mtx_rxbusy_net_1 ), .C(
        \CORESPI_0/USPI/UCC/stxs_state_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/active_1 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_STBFLAG_2_m  (.A(
        \COREABC_0/STBFLAG_2 ), .B(\COREABC_0/STBACCUM_4_sqmuxa ), .Y(
        \COREABC_0/STBFLAG_2_m ));
    NOR2B \CORESPI_0/USPI/UCC/SYNC3_stxp_dataerr_RNIJ3B1  (.A(
        \CORESPI_0/USPI/UCC/SYNC2_stxp_dataerr_net_1 ), .B(
        \CORESPI_0/USPI/UCC/SYNC3_stxp_dataerr_i_0 ), .Y(
        \CORESPI_0/USPI/tx_channel_underflow ));
    NOR3A \CoreTimer_0/iPRDATA_RNO_6[0]  (.A(\CoreTimer_0.iTimInt_m_2 )
        , .B(\CoreTimer_0.iTimInt ), .C(
        \COREABC_0_APB3master_PADDR[2] ), .Y(\CoreTimer_0/iTimInt_m_1 )
        );
    NOR2A \CORESPI_0/USPI/URF/int_raw_RNO_1[0]  (.A(
        \COREABC_0_APB3master_PWDATA[0] ), .B(\CORESPI_0/USPI/tx_done )
        , .Y(\CORESPI_0/USPI/URF/int_raw_30_i_a2_0_0[0] ));
    OR2 \CORESPI_0/USPI/UCC/mtx_pktsel_RNO_0  (.A(
        \CORESPI_0/USPI/UCC/mtx_state[5]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/mtx_state_RNINJM1[1]_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/N_64 ));
    NOR3B \CORESPI_0/USPI/URF/CLK_DIV_RNI87FB[5]  (.A(
        \CORESPI_0/USPI/clk_div_val[5] ), .B(
        \COREABC_0_APB3master_PADDR[5] ), .C(
        \COREABC_0_APB3master_PADDR[6] ), .Y(
        \CORESPI_0/USPI/URF/CLK_m2_e_0_1 ));
    NOR2A \CORESPI_0/USPI/URF/control1_RNIODCA[4]  (.A(
        \CORESPI_0/USPI/URF/control1[4]_net_1 ), .B(
        \COREABC_0_APB3master_PADDR[2] ), .Y(
        \CORESPI_0/USPI/URF/control1_m1_e_0_0 ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIJMNG6  (.A(
        \COREABC_0/xhdl_31.ALUOUT_5_m[4] ), .B(
        \COREABC_0/xhdl_31.ALUOUT_4_m[4] ), .C(
        \COREABC_0/PRDATA_M_m[4] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_4[4] ));
    OR3 \COREABC_0/URAM.UR/UG3.UR_xhdl12/Ram256x16_R0C0_RNI8F5K2  (.A(
        \COREABC_0/URAM.UR/UG3.UR_xhdl12/Ram256x16_R0C0_RNI4G911_0_net_1 )
        , .B(
        \COREABC_0/URAM.UR/UG3.UR_xhdl12/Ram256x16_R0C0_RNIDHJ71_1_net_1 )
        , .C(\COREABC_0/URAM.UR/UG3.UR_xhdl12/r_m1_4_0 ), .Y(
        \COREABC_0/Ram256x16_R0C0_RNI8F5K2 ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ADD_m3_0  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_8_0 ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_m3_0_0 ), .C(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_7_2 ), .Y(
        \COREABC_0/ADD_m3_0 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m148_0  (.A(\COREABC_0/N_146_0 ), 
        .B(\COREABC_0/N_148_0 ), .S(\COREABC_0/SMADDR[5] ), .Y(
        \COREABC_0/N_149_0 ));
    AX1 \CoreTimer_0/Count_RNO[2]  (.A(\CoreTimer_0/un1_PreScale8_0 ), 
        .B(\CoreTimer_0/N_67_mux ), .C(\CoreTimer_0/N_202 ), .Y(
        \CoreTimer_0/N_409 ));
    DFN1C0 \CoreUARTapb_0/CUARTlOlI/genblk1.RXRDY  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTOl0_i ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(RXRDY));
    OR2B \CORESPI_0/USPI/URF/control1_RNIDA1F[0]  (.A(
        \CORESPI_0/USPI/cfg_enable ), .B(\CORESPI_0.USPI.SPIMODE ), .Y(
        \CORESPI_0/USPI/SPISS_2[0] ));
    DFN1C0 \CORESPI_0/USPI/UCC/msrxp_pktend  (.D(
        \CORESPI_0/USPI/UCC/msrxp_pktend5 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(\CORESPI_0/USPI/rx_pktend ));
    NOR2A \CORESPI_0/USPI/URF/un1_CLK_DIV_1_sqmuxa_1_i_a2  (.A(
        \CORESPI_0.USPI.URF.control19 ), .B(\CORESPI_0/USPI/URF/N_63 ), 
        .Y(\CORESPI_0/USPI/URF/N_119 ));
    MX2 \COREABC_0/SMADDR_0[1]/U0  (.A(\COREABC_0/SMADDR_21[1] ), .B(
        \COREABC_0/SMADDR_0[1] ), .S(\COREABC_0/un1_ICYCLE_6 ), .Y(
        \COREABC_0/SMADDR_0[1]/Y ));
    OR2A \CORESPI_0/USPI/UCC/mtx_midbit_RNO  (.A(
        \CORESPI_0/USPI/UCC/N_50 ), .B(\CORESPI_0/USPI/UCC/N_23 ), .Y(
        \CORESPI_0/USPI/UCC/txfifo_dhold_dec[2] ));
    MX2C \CORESPI_0/USPI/UTXF/un1_counter_q_m_i[0]  (.A(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_partial_sum_1[0] ), .B(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_partial_sum_2[0] ), .S(
        \CORESPI_0/USPI/tx_fifo_write ), .Y(\CORESPI_0/USPI/UTXF/N_44 )
        );
    XOR3 \CORESPI_0/USPI/URXF/un1_counter_q_1_I_24  (.A(
        \CORESPI_0/USPI/URXF/counter_q[1]_net_1 ), .B(
        \CORESPI_0/USPI/URXF/counter_d_0_sqmuxa_2 ), .C(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_TMP_2[0] ), .Y(
        \CORESPI_0/USPI/URXF/un1_counter_q1[1] ));
    NOR2 \CORESPI_0/USPI/URXF/counter_q_RNO[0]  (.A(
        \CORESPI_0/USPI/URXF/N_46 ), .B(\CORESPI_0/USPI/fiforstrx ), 
        .Y(\CORESPI_0/USPI/URXF/N_13 ));
    DFN1E0C0 \CoreUARTapb_0/CUARTlOlI/CUARTIOl[4]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTl1I[4] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTlOlI/CUARTIOl4 ), 
        .Q(\CoreUARTapb_0/CUARTlOlI/CUARTIOl[4]_net_1 ));
    MX2C \CoreUARTapb_0/CUARTOOII_RNO_1[0]  (.A(
        \CoreUARTapb_0/CUARTl0OI[0]_net_1 ), .B(
        \CoreUARTapb_0/CUARTO1OI[0]_net_1 ), .S(
        \COREABC_0_APB3master_PADDR[2] ), .Y(\CoreUARTapb_0/i20_i ));
    MX2 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0_RNO_0[8]  (
        .A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/I_23 ), .B(
        \CoreUARTapb_0/CUARTO1OI[3]_net_1 ), .S(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO08 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_122 ));
    DFN1C0 \CORESPI_0/USPI/URXF/wr_pointer_q[1]  (.D(
        \CORESPI_0/USPI/URXF/wr_pointer_q_3[1] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/URXF/wr_pointer_q[1]_net_1 ));
    XA1B \CoreTimer_0/Count_RNO[22]  (.A(\CoreTimer_0/Count[22]_net_1 )
        , .B(\CoreTimer_0/N_22_0 ), .C(\CoreTimer_0/un1_PreScale8 ), 
        .Y(\CoreTimer_0/N_429_i ));
    DFN1C0 \CORESPI_0/USPI/UCC/cfg_enable_P1  (.D(
        \CORESPI_0/USPI/cfg_enable ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/cfg_enable_P1_net_1 ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIJAP5J  (.A(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_0[9] ), .B(
        \COREABC_0/ACCUMULATOR_m[10] ), .C(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_4[9] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[9] ));
    AO1B \COREABC_0/un1_ACCUMULATOR_ADD_m3_1_0  (.A(
        \COREABC_0/r_m1_N_6_mux ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_m3_a1_0 ), .C(
        \COREABC_0/un1_ACCUMULATOR.N204 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_m3_1_0 ));
    DFN1C0 \CORESPI_0/USPI/UTXF/counter_q[2]  (.D(
        \CORESPI_0/USPI/UTXF/N_11 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UTXF/counter_q[2]_net_1 ));
    DFN1C0 \CORESPI_0/USPI/UCC/mtx_alldone  (.D(
        \CORESPI_0/USPI/UCC/mtx_oen_0_sqmuxa ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/mtx_alldone_net_1 ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_ACCUMULATOR_m_0[11]  (.A(
        \COREABC_0/un1_ACCUMULATOR.ALUOUT_5_sqmuxa_0 ), .B(
        \COREABC_0/ACCUMULATOR[11] ), .C(\COREABC_0/xhdl_31.MSEL[1] ), 
        .Y(\COREABC_0/ACCUMULATOR_m_0[11] ));
    MX2C \CoreUARTapb_0/CUARTOOII_RNO[2]  (.A(\CoreUARTapb_0/N_74 ), 
        .B(\CoreUARTapb_0/i22_i ), .S(
        \COREABC_0_APB3master_PADDR_0[3] ), .Y(\CoreUARTapb_0/N_76 ));
    XA1A \COREABC_0/un1_ACCUMULATOR_STKPTR_0_sqmuxa  (.A(
        \COREABC_0/UROM.INSTR_SCMD_0[0]_net_1 ), .B(
        \COREABC_0/xhdl_41.flagvalue ), .C(
        \COREABC_0/un1_ACCUMULATOR.STKPTR_0_sqmuxa_0 ), .Y(
        \COREABC_0/STKPTR_0_sqmuxa ));
    MX2 \COREABC_0/un1_ACCUMULATOR_SMADDR_21_0[5]  (.A(
        \COREABC_0/UROM.INSTR_ADDR[5]_net_1 ), .B(
        \COREABC_0/RAMRDATA[5] ), .S(
        \COREABC_0/UROM.INSTR_CMD[1]_net_1 ), .Y(\COREABC_0/N_428 ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNII25TA  (.A(
        \COREABC_0/xhdl_31.ALUOUT_4_m[1] ), .B(
        \COREABC_0/ACCUMULATOR_m[2] ), .C(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[1] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_4[1] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m252_0  (.A(\COREABC_0/N_234_0 ), 
        .B(\COREABC_0/N_252_0 ), .S(\COREABC_0/SMADDR_0[1] ), .Y(
        \COREABC_0/N_253_0 ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_m53_0  (.A(\COREABC_0/N_53_0 ), 
        .B(\COREABC_0/DOISR ), .Y(\COREABC_0/N_54_0 ));
    IOTRI_OB_EB \SCL_Sensor_pad/U0/U1  (.D(SCL_MCU_c_c), .E(VCC), 
        .DOUT(\SCL_Sensor_pad/U0/NET1 ), .EOUT(
        \SCL_Sensor_pad/U0/NET2 ));
    MX2C \CoreUARTapb_0/CUARTOOII_RNIG8FL1[3]  (.A(
        \CoreUARTapb_0/CUARTOOII[3]_net_1 ), .B(
        \CoreUARTapb_0/CUARTOIII[3] ), .S(\CoreUARTapb_0/PARITY_ERR ), 
        .Y(\CoreAPB3_0_APBmslave1_PRDATA_i_1[3] ));
    OA1 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNI6JMS1  (.A(
        \COREABC_0/ACCUMULATOR[2] ), .B(\COREABC_0/ACCUM_IN[2] ), .C(
        \COREABC_0/ALUOUT_2_sqmuxa ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_4_m[2] ));
    NOR2A \CoreTimer_0/Count_RNI05NM7[24]  (.A(\CoreTimer_0/N_24_0 ), 
        .B(\CoreTimer_0/Count[24]_net_1 ), .Y(\CoreTimer_0/N_26_0 ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_ADD_m1_0_a2_2  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_m4_0_a2_0 ), .B(
        \COREABC_0/r_m1_N_6_mux ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_3_mux_3 ));
    MX2C \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO1ll.CUARTI0I_8_m2  (
        .A(\CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0I23 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0I5 ), .S(
        \CoreUARTapb_0/CUARTO1OI[0]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/i4_mux ));
    DFN1E1C0 \CoreTimer_0/Load[9]  (.D(
        \COREABC_0_APB3master_PWDATA[9] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreTimer_0/LoadEn_net_1 ), .Q(
        \CoreTimer_0/Load[9]_net_1 ));
    NOR2A \CORESPI_0/USPI/URXF/un1_counter_q_m_i_a3[5]  (.A(
        \CORESPI_0/USPI/rx_fifo_read ), .B(
        \CORESPI_0/USPI/URXF/un1_counter_q1[5] ), .Y(
        \CORESPI_0/USPI/URXF/N_56 ));
    CLKINT COREABC_0_PRESETN_RNIUAJ1 (.A(PRESETN), .Y(
        COREABC_0_PRESETN_0));
    DFN1C0 \CORESPI_0/USPI/UCC/msrxp_alldone  (.D(
        \CORESPI_0/USPI/UCC/msrxp_alldone_4 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/msrxp_alldone_net_1 ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_ACCUMULATOR_m_0[4]  (.A(
        \COREABC_0/un1_ACCUMULATOR.ALUOUT_5_sqmuxa_0 ), .B(
        \COREABC_0/ACCUMULATOR[4] ), .C(\COREABC_0/xhdl_31.MSEL[1] ), 
        .Y(\COREABC_0/ACCUMULATOR_m_0[4] ));
    MX2 \COREABC_0/SMADDR[2]/U0  (.A(\COREABC_0/SMADDR_21[2] ), .B(
        \COREABC_0/SMADDR[2] ), .S(\COREABC_0/un1_ICYCLE_6 ), .Y(
        \COREABC_0/SMADDR[2]/Y ));
    XA1C \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l_RNO[1]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l[1]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_31 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_47 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_10 ));
    NOR2A \CORESPI_0/USPI/UCC/mtx_state_RNO_2[1]  (.A(
        \CORESPI_0/USPI/UCC/spi_clk_tick_net_1 ), .B(
        \CORESPI_0/USPI/UCC/mtx_state[5]_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/mtx_state_ns_i_0_a2_0[1] ));
    AX1D \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I117_Y  (.A(
        \COREABC_0/un33_ZREGISTER.I96_un1_Y ), .B(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I96_Y_0 ), .C(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I117_Y_0 ), .Y(
        \COREABC_0/un33_ZREGISTER[11] ));
    NOR2 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0_RNIHP88[2]  
        (.A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[3] ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[2] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTOOI4_2 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m237  (.A(\COREABC_0/N_15_1 ), .B(
        \COREABC_0/N_22_1 ), .S(\COREABC_0/SMADDR_0[3] ), .Y(
        \COREABC_0/N_238 ));
    DFN1C0 \CORESPI_0/USPI/UCC/txfifo_datadelay[3]  (.D(
        \CORESPI_0/USPI/tx_fifo_data_out[3] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/txfifo_datadelay[3]_net_1 ));
    XA1B \CoreTimer_0/Count_RNO[16]  (.A(\CoreTimer_0/Count[16]_net_1 )
        , .B(\CoreTimer_0/N_16_0 ), .C(\CoreTimer_0/un1_PreScale8_0_0 )
        , .Y(\CoreTimer_0/N_49_0 ));
    AND2 \CORESPI_0/USPI/UTXF/un1_counter_q_0_I_5  (.A(
        \CORESPI_0/USPI/UTXF/counter_q[1]_net_1 ), .B(
        \CORESPI_0/USPI/UTXF/counter_d_0_sqmuxa_0 ), .Y(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_0_1[0] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m101_0  (.A(\COREABC_0/i9_mux_0_0 ), 
        .B(\COREABC_0/N_91_0 ), .S(\COREABC_0/SMADDR_0[0] ), .Y(
        \COREABC_0/INSTRUCTION[30] ));
    AX1D \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I113_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N298 ), .B(
        \COREABC_0/un1_ACCUMULATOR.I85_un1_Y ), .C(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I113_Y_0 ), .Y(
        \COREABC_0/un1_ACCUMULATOR[7] ));
    OA1 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIM2M52  (.A(
        \COREABC_0/ACCUMULATOR[15] ), .B(\COREABC_0/ACCUM_IN[15] ), .C(
        \COREABC_0/ALUOUT_2_sqmuxa ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_4_m[15] ));
    NOR3A \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0_RNO[0]  (
        .A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_114 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_RNII49F8[0]_net_1 ), 
        .C(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/un1_CUARTO0_0_sqmuxa_2 ), 
        .Y(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[0] ));
    MX2 \CORESPI_0/USPI/URXF/fifo_mem_q_fifo_mem_q_ram1__RNID0O72[4]  
        (.A(\CORESPI_0/USPI/URXF/N_35 ), .B(\CORESPI_0/USPI/URXF/N_40 )
        , .S(\CORESPI_0/USPI/URXF/rd_pointer_q[1]_net_1 ), .Y(
        \CORESPI_0/USPI/URXF/rx_fifo_data_out[3] ));
    DFN1C0 \CoreTimer_0/iPRDATA[14]  (.D(
        \CoreTimer_0/PrdataNext_1[14] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(\CoreAPB3_0_APBmslave0_PRDATA[14] ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_un1_ACCUM_NEXT9_1  (.A(
        \COREABC_0/un1_ACCUMULATOR.un1_ACCUM_NEXT9_1_1 ), .B(
        \COREABC_0/xhdl_31.MSEL[1] ), .Y(\COREABC_0/un1_ACCUM_NEXT9_1 )
        );
    AO1 \CORESPI_0/USPI/UTXF/un1_counter_q_0_I_29  (.A(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_pog_array_0_3[0] ), .B(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_2_0[0] ), .C(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_0_4[0] ), .Y(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_12_1_0[0] ));
    XOR2 \COREABC_0/un1_STKPTRP1_I_5  (.A(\COREABC_0/STKPTR[0] ), .B(
        \COREABC_0/STKPTR[1] ), .Y(\COREABC_0/I_5_0 ));
    MX2 \CoreUARTapb_0/CUARTlOlI/CUARTIOl_RNICSTV[5]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIOl[5]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTlOl[5] ), .S(
        \CoreUARTapb_0/PARITY_ERR_0 ), .Y(\CoreUARTapb_0/CUARTOIII[5] )
        );
    MX2 \COREABC_0/un1_ACCUMULATOR_m157_0  (.A(\COREABC_0/N_144 ), .B(
        \COREABC_0/N_130_0 ), .S(\COREABC_0/SMADDR_1[2] ), .Y(
        \COREABC_0/N_158 ));
    OA1 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTI0_RNO_1  (.A(
        \CoreUARTapb_0/CUARTI1OI[1] ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1[1]_net_1 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTI0_17_i_a5_0 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTI0_17_i_a5_1 ));
    DFN1E1C0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTlOl[0]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[0]_net_1 ), .CLK(
        GLA), .CLR(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTlOl_1_sqmuxa ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTlOl[0] ));
    XA1B \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl_RNO[1]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl[0]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl[1]_net_1 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_309 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_52 ));
    DFN1E1C0 \CoreTimer_0/Load[5]  (.D(
        \COREABC_0_APB3master_PWDATA[5] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreTimer_0/LoadEn_net_1 ), .Q(
        \CoreTimer_0/Load[5]_net_1 ));
    NOR2B \CORESPI_0/USPI/UCC/stxs_state_RNIV3DN  (.A(
        \CORESPI_0/USPI/UCC/stxs_state_net_1 ), .B(
        \CORESPI_0/USPI/UCC/clock_rx_fe ), .Y(
        \CORESPI_0/USPI/UCC/stxs_state_RNIV3DN_net_1 ));
    DFN1C0 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l[3]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l_RNO[3]_net_1 ), 
        .CLK(GLA), .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l[3]_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_ZREGISTER_26[7]  (.A(
        \COREABC_0_APB3master_PWDATA[7] ), .B(
        \COREABC_0/un33_ZREGISTER[7] ), .S(
        \COREABC_0/UROM.INSTR_SCMD[0]_net_1 ), .Y(
        \COREABC_0/ZREGISTER_26[7] ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I85_un1_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N299 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N306 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.I85_un1_Y ));
    OA1C \CORESPI_0/USPI/UCC/stxs_checkorun_RNO  (.A(
        \CORESPI_0/USPI/UCC/stxs_checkorun_i_m_0 ), .B(
        \CORESPI_0/USPI/UCC/stxs_checkorun_0_sqmuxa ), .C(
        \CORESPI_0/USPI/UCC/cfg_frameurun_m ), .Y(
        \CORESPI_0/USPI/UCC/stxs_checkorun_5_iv ));
    DFN1C0 \CORESPI_0/USPI/UCC/txfifo_datadelay[0]  (.D(
        \CORESPI_0/USPI/tx_fifo_data_out[0] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/txfifo_datadelay[0]_net_1 ));
    NOR3C \CORESPI_0/USPI/URF/int_raw_RNITUBN[7]  (.A(
        \CORESPI_0/USPI/URF/control2[7]_net_1 ), .B(
        \CORESPI_0/USPI/URF/int_raw[7]_net_1 ), .C(
        \CORESPI_0.USPI.URF.N_126 ), .Y(
        \CORESPI_0.USPI.URF.int_masked_m[7] ));
    MX2 \COREABC_0/SMADDR_0[2]/U0  (.A(\COREABC_0/SMADDR_21[2] ), .B(
        \COREABC_0/SMADDR_0[2] ), .S(\COREABC_0/un1_ICYCLE_6 ), .Y(
        \COREABC_0/SMADDR_0[2]/Y ));
    AOI1B \CORESPI_0/USPI/URXF/wr_pointer_q_RNI5HAA1[1]  (.A(
        \CORESPI_0/USPI/URXF/wr_pointer_q[1]_net_1 ), .B(
        \CORESPI_0/USPI/URXF/wr_pointer_q[0]_net_1 ), .C(
        \CORESPI_0/USPI/URXF/counter_d_0_sqmuxa_1_0 ), .Y(
        \CORESPI_0/USPI/URXF/wr_pointer_d_1_sqmuxa_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m243  (.A(\COREABC_0/N_132_0 ), .B(
        \COREABC_0/N_26_1 ), .S(\COREABC_0/SMADDR_0[2] ), .Y(
        \COREABC_0/N_244 ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I25_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N235 ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_5_mux_4 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N260 ));
    NOR2 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I21_Y_a0  (.A(
        \COREABC_0/RAMRDATA[12] ), .B(\COREABC_0/ACCUMULATOR[12] ), .Y(
        \COREABC_0/ADD_16x16_fast_I21_Y_a0 ));
    DFN1E1C0 \CORESPI_0/USPI/URF/cfg_ssel[0]  (.D(
        \COREABC_0_APB3master_PWDATA[0] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/URF/N_119 ), .Q(
        \CORESPI_0/USPI/cfg_ssel[0] ));
    NOR2A \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_RNO_0[3]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_213 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[2]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_ns_i_0_a2_0_0[3] ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_PRDATA_M_m[4]  (.A(N_15), .B(
        \COREABC_0/ICYCLE24.ICYCLE24 ), .Y(\COREABC_0/PRDATA_M_m[4] ));
    AND3 \COREABC_0/un1_STKPTRP1_I_10  (.A(\COREABC_0/STKPTR[0] ), .B(
        \COREABC_0/STKPTR[1] ), .C(\COREABC_0/STKPTR[2] ), .Y(
        \COREABC_0/un1_STKPTRP1.U1.DWACT_FINC_E[0] ));
    MX2 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l_RNIG4HS[1]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_27 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_26 ), .S(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l[1]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_28 ));
    OA1B \CORESPI_0/USPI/URF/int_raw_RNO[0]  (.A(
        \CORESPI_0/USPI/tx_done ), .B(
        \CORESPI_0/USPI/URF/int_raw[0]_net_1 ), .C(
        \CORESPI_0/USPI/URF/N_113 ), .Y(\CORESPI_0/USPI/URF/N_48 ));
    AO1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I97_Y_0  (.A(
        \COREABC_0/un33_ZREGISTER.N300 ), .B(
        \COREABC_0/un33_ZREGISTER.N293 ), .C(
        \COREABC_0/un33_ZREGISTER.N292 ), .Y(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I97_Y_0 ));
    DFN1C0 \CoreTimer_0/PreScale[9]  (.D(\CoreTimer_0/PreScale_n9 ), 
        .CLK(GLA), .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreTimer_0/PreScale[9]_net_1 ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_m203  (.A(\COREABC_0/N_92_0 ), .B(
        \COREABC_0/SMADDR[1] ), .Y(\COREABC_0/N_204 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_RAMWDATA[4]  (.A(\COREABC_0/N_466 ), 
        .B(\COREABC_0/SMADDR[4] ), .S(\COREABC_0/DOISR_0 ), .Y(
        \COREABC_0/RAMWDATA[4] ));
    OA1 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIJVL52  (.A(
        \COREABC_0/ACCUMULATOR[12] ), .B(\COREABC_0/ACCUM_IN[12] ), .C(
        \COREABC_0/ALUOUT_2_sqmuxa ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_4_m[12] ));
    DFN1C0 \COREABC_0/ACCUMULATOR[8]/U1  (.D(
        \COREABC_0/ACCUMULATOR[8]/Y ), .CLK(GLA), .CLR(
        \COREABC_0/genblk2.RSTSYNC2_0_net_1 ), .Q(
        \COREABC_0/ACCUMULATOR[8] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_ACCUM_IN[6]  (.A(
        \COREABC_0/UROM.INSTR_DATA[6]_net_1 ), .B(
        \COREABC_0/RAMRDATA[6] ), .S(\COREABC_0/un7_MUXIR[0] ), .Y(
        \COREABC_0/ACCUM_IN[6] ));
    AX1C \COREABC_0/un1_ACCUMULATOR_ZREGISTER_26[0]  (.A(
        \COREABC_0/ZREGISTER[0] ), .B(
        \COREABC_0/UROM.INSTR_SCMD_0[0]_net_1 ), .C(
        \COREABC_0_APB3master_PWDATA[0] ), .Y(
        \COREABC_0/ZREGISTER_26[0] ));
    DFN1P0 \CORESPI_0/USPI/UCC/SYNC3_stxp_strobetx  (.D(
        \CORESPI_0/USPI/UCC/SYNC2_stxp_strobetx_i ), .CLK(GLA), .PRE(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/SYNC3_stxp_strobetx_i_0 ));
    NOR2A \CoreTimer_0/Count_RNIS28U2[8]  (.A(\CoreTimer_0/N_8_0 ), .B(
        \CoreTimer_0/Count[8]_net_1 ), .Y(\CoreTimer_0/N_9_0 ));
    DFN1C0 \COREABC_0/DOISR/U1  (.D(\COREABC_0/DOISR/Y ), .CLK(GLA), 
        .CLR(\COREABC_0/genblk2.RSTSYNC2_1_net_1 ), .Q(
        \COREABC_0/DOISR ));
    NOR2A \CORESPI_0/USPI/UCC/stx_async_reset_ok_RNO  (.A(
        \CORESPI_0/USPI/cfg_enable ), .B(\CORESPI_0.USPI.SPIMODE ), .Y(
        \CORESPI_0/USPI/UCC/stx_async_reset_ok_2 ));
    DFN1 \COREABC_0/UROM.INSTR_ADDR[0]  (.D(
        \COREABC_0/INSTRUCTION[10] ), .CLK(GLA), .Q(
        \COREABC_0/UROM.INSTR_ADDR[0]_net_1 ));
    DFN1C1 \CORESPI_0/USPI/UCC/stxs_datareg[3]/U1  (.D(
        \CORESPI_0/USPI/UCC/stxs_datareg[3]/Y ), .CLK(GLA), .CLR(
        \CORESPI_0/USPI/UCC/ssel_rx_q2_RNIBQH6_net_1 ), .Q(
        \CORESPI_0/USPI/UCC/stxs_datareg[3] ));
    NOR3A \CORESPI_0/USPI/URXF/wr_pointer_q_RNO[1]  (.A(
        \CORESPI_0/USPI/URXF/I_10_1 ), .B(\CORESPI_0/USPI/fiforstrx ), 
        .C(\CORESPI_0/USPI/URXF/N_54 ), .Y(
        \CORESPI_0/USPI/URXF/wr_pointer_q_3[1] ));
    MX2 \COREABC_0/ISR_ACCUM_NEG/U0  (.A(\COREABC_0/ISR_ACCUM_NEG ), 
        .B(\COREABC_0/ACCUM_NEXT[15] ), .S(\COREABC_0/to_logic18 ), .Y(
        \COREABC_0/ISR_ACCUM_NEG/Y ));
    XOR2 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIOll_RNIDG28[0]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIOll[0]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il[0]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll019_0 ));
    NOR3A \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNI2F1794  (.A(
        \COREABC_0/un1_ACCUMULATOR.to_logic_2.tmp_6_1[0] ), .B(
        \COREABC_0/ACCUM_NEXT[1] ), .C(\COREABC_0/ACCUM_NEXT[3] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.to_logic_2.tmp_6_2[0] ));
    MX2 \COREABC_0/ACCUMULATOR[6]/U0  (.A(\COREABC_0/ACCUMULATOR[6] ), 
        .B(\COREABC_0/ACCUM_NEXT[6] ), .S(\COREABC_0/ACCUMULATOR4 ), 
        .Y(\COREABC_0/ACCUMULATOR[6]/Y ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I4_G0N_0_0  (.A(
        \COREABC_0/ACCUMULATOR[4] ), .B(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_1 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I4_G0N_0_0 ));
    IOBI_IB_OB_EB \BIBUF_1/U0/U1  (.D(BIBUF_0_Y), .E(VCC), .YIN(
        \BIBUF_1/U0/NET3 ), .DOUT(\BIBUF_1/U0/NET1 ), .EOUT(
        \BIBUF_1/U0/NET2 ), .Y(BIBUF_1_Y));
    MX2 \COREABC_0/un1_ACCUMULATOR_m127_0  (.A(\COREABC_0/N_14_1 ), .B(
        \COREABC_0/N_26_1 ), .S(\COREABC_0/SMADDR_1[2] ), .Y(
        \COREABC_0/N_128_0 ));
    DFN1E1C0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0[0]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_380 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTlOlI/CUARTIl ), 
        .Q(\CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0[0]_net_1 ));
    NOR2B \CoreTimer_0/PreScale_RNIUTI2[3]  (.A(
        \CoreTimer_0/PreScale[3]_net_1 ), .B(\CoreTimer_0/PreScale_c2 )
        , .Y(\CoreTimer_0/PreScale_c3 ));
    MX2 \COREABC_0/SMADDR_0[5]/U0  (.A(\COREABC_0/SMADDR_21[5] ), .B(
        \COREABC_0/SMADDR_0[5] ), .S(\COREABC_0/un1_ICYCLE_6 ), .Y(
        \COREABC_0/SMADDR_0[5]/Y ));
    DFN1C0 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0[4]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[4] ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[4] ));
    DFN1C0 \CORESPI_0/USPI/UCC/spi_clk_count[1]  (.D(
        \CORESPI_0/USPI/UCC/spi_clk_count_n1 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/spi_clk_count[1]_net_1 ));
    NOR2B \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I47_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N254 ), .B(
        \COREABC_0/un33_ZREGISTER.N258 ), .Y(
        \COREABC_0/un33_ZREGISTER.N285 ));
    MX2 \CORESPI_0/USPI/URXF/fifo_mem_q_fifo_mem_q_ram1__RNIV6ST[2]  (
        .A(\CORESPI_0/USPI/URXF/ram0_2 ), .B(
        \CORESPI_0/USPI/URXF/ram1_2 ), .S(
        \CORESPI_0/USPI/URXF/rd_pointer_q[0]_net_1 ), .Y(
        \CORESPI_0/USPI/URXF/N_33 ));
    XA1 \CORESPI_0/USPI/UCC/stxs_bitcnt_RNO[4]  (.A(
        \CORESPI_0/USPI/UCC/stxs_bitcnt_101_0 ), .B(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[4] ), .C(
        \CORESPI_0/USPI/UCC/stxs_bitcnt_0_sqmuxa ), .Y(
        \CORESPI_0/USPI/UCC/stxs_bitcnt_n4 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_SHIFTMSB  (.A(
        \COREABC_0/UROM.INSTR_DATA[0]_net_1 ), .B(\COREABC_0/N_384 ), 
        .S(\COREABC_0/UROM.INSTR_DATA[1]_net_1 ), .Y(
        \COREABC_0/SHIFTMSB ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_m9_0  (.A(\COREABC_0/N_274_mux_0 )
        , .B(\COREABC_0/SMADDR[4] ), .C(\COREABC_0/SMADDR[6] ), .Y(
        \COREABC_0/N_10_1 ));
    NOR2A \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl_RNO[2]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_48 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_309 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_49 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m245_0  (.A(\COREABC_0/N_244 ), .B(
        \COREABC_0/N_245_0 ), .S(\COREABC_0/SMADDR_0[1] ), .Y(
        \COREABC_0/N_246_0 ));
    OR2 \CoreUARTapb_0/CUARTlOlI/CUARTO10_RNO  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO105 ), .B(
        \CoreUARTapb_0/CUARTlOlI/un1_CUARTO1l_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/un2_CUARTO1l ));
    AO1 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_1[5]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA_i_1[5] ), .B(
        \COREABC_0_APB3master_PADDR[12] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_0[5]_net_1 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_1[5]_net_1 ));
    DFN1E1 \CORESPI_0/USPI/URXF/fifo_mem_q_fifo_mem_q_ram0_[2]  (.D(
        \CORESPI_0/USPI/rx_fifo_data_in[1] ), .CLK(GLA), .E(
        \CORESPI_0/USPI/URXF/awe0 ), .Q(\CORESPI_0/USPI/URXF/ram0_2 ));
    DFN1C1 \CORESPI_0/USPI/UCC/stxs_datareg[2]/U1  (.D(
        \CORESPI_0/USPI/UCC/stxs_datareg[2]/Y ), .CLK(GLA), .CLR(
        \CORESPI_0/USPI/UCC/ssel_rx_q2_RNIBQH6_net_1 ), .Q(
        \CORESPI_0/USPI/UCC/stxs_datareg[2] ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_m15_0  (.A(\COREABC_0/N_15_1 ), 
        .B(\COREABC_0/SMADDR[6] ), .Y(\COREABC_0/N_16_1 ));
    AO1 \CORESPI_0/USPI/UTXF/un1_counter_q_0_I_30  (.A(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_pog_array_0_2[0] ), .B(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_0_2[0] ), .C(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_0_3[0] ), .Y(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_1_1[0] ));
    AO1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I58_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N269 ), .B(
        \COREABC_0/un33_ZREGISTER.N266 ), .C(
        \COREABC_0/un33_ZREGISTER.N265 ), .Y(
        \COREABC_0/un33_ZREGISTER.N296 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I78_un1_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N298 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N291 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.I78_un1_Y ));
    NOR3C \CORESPI_0/USPI/URF/int_raw_RNO_0[2]  (.A(
        \CoreTimer_0.DataOut_1_sqmuxa_2 ), .B(
        \CORESPI_0/USPI/URF/int_raw_27_i_a2_0_0[7]_net_1 ), .C(
        \COREABC_0_APB3master_PWDATA[2] ), .Y(
        \CORESPI_0/USPI/URF/N_87 ));
    AX1C \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl_RNO_0[2]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl[1]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl[0]_net_1 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl[2]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_48 ));
    NOR3B \CORESPI_0/USPI/URF/control1_RNIQBRL[4]  (.A(
        \CORESPI_0/USPI/URF/control1_m1_e_0_0 ), .B(
        \CoreTimer_0.DataOut_1_sqmuxa_2 ), .C(
        \CORESPI_0/USPI/URF/N_61 ), .Y(
        \CORESPI_0/USPI/URF/control1_m[4] ));
    NOR3A \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l_RNO[2]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_33 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_48 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_47 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l_RNO[2]_net_1 ));
    OA1C \CoreTimer_0/CtrlReg_RNINQA54[2]  (.A(
        \CoreTimer_0/un1_CtrlReg ), .B(\CoreTimer_0/CtrlReg[2]_net_1 ), 
        .C(\CoreTimer_0/OneShotClr_1 ), .Y(
        \CoreTimer_0/CtrlReg_RNINQA54[2]_net_1 ));
    AX1 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I115_Y_0  (.A(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_1 ), .B(
        \COREABC_0/ACCUM_IN[9] ), .C(\COREABC_0/ACCUMULATOR[9] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I115_Y_0 ));
    DFN1C0 \CoreUARTapb_0/CUARTlOlI/CUARTll0[0]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTll0_ns[0] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTll0[0]_net_1 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_STBRAM_7_0_o3  (.A(
        \COREABC_0/un1_ACCUMULATOR.STBRAM_7_0_a3_1_1 ), .B(
        \COREABC_0/N_490_i ), .C(\COREABC_0/N_500 ), .Y(
        \COREABC_0/N_492 ));
    XOR2 \COREABC_0/un1_ACCUMULATOR_xhdl_31.ALUOUT_5[11]  (.A(
        \COREABC_0/ACCUM_IN[11] ), .B(\COREABC_0/ACCUMULATOR[11] ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_5[11] ));
    NOR2B \CORESPI_0/USPI/UCC/mtx_consecutive_RNO  (.A(
        \CORESPI_0/USPI/UCC/mtx_consecutive_0_sqmuxa_0_a2_1 ), .B(
        \CORESPI_0/USPI/UCC/N_49 ), .Y(
        \CORESPI_0/USPI/UCC/mtx_consecutive_0_sqmuxa ));
    DFN1C0 \COREABC_0/ACCUMULATOR[9]/U1  (.D(
        \COREABC_0/ACCUMULATOR[9]/Y ), .CLK(GLA), .CLR(
        \COREABC_0/genblk2.RSTSYNC2_0_net_1 ), .Q(
        \COREABC_0/ACCUMULATOR[9] ));
    DFN1E1 \CORESPI_0/USPI/UTXF/fifo_mem_q_fifo_mem_q_ram1_[0]  (.D(
        \CORESPI_0/USPI/tx_fifo_last_in ), .CLK(GLA), .E(
        \CORESPI_0/USPI/UTXF/awe1 ), .Q(\CORESPI_0/USPI/UTXF/ram1_0 ));
    NOR3A \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0_RNO[3]  (
        .A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_117 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_RNII49F8[0]_net_1 ), 
        .C(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/un1_CUARTO0_0_sqmuxa_2 ), 
        .Y(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[3] ));
    DFN1E1 \CORESPI_0/USPI/UTXF/fifo_mem_q_fifo_mem_q_ram3_[0]  (.D(
        \CORESPI_0/USPI/tx_fifo_last_in ), .CLK(GLA), .E(
        \CORESPI_0/USPI/UTXF/N_52 ), .Q(\CORESPI_0/USPI/UTXF/ram3_0 ));
    MX2 \CORESPI_0/USPI/UCC/mtx_fiforead_RNIS4RD1  (.A(
        \CORESPI_0/USPI/UCC/stxp_strobe ), .B(
        \CORESPI_0/USPI/UCC/mtx_fiforead_net_1 ), .S(
        \CORESPI_0.USPI.SPIMODE ), .Y(\CORESPI_0/USPI/tx_fifo_read ));
    DFN1E0C0 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTIl0l[2]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTI1I[2] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_159 ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTIl0l[2]_net_1 ));
    NOR3C \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I96_un1_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N291 ), .B(
        \COREABC_0/un33_ZREGISTER.N299 ), .C(
        \COREABC_0/un33_ZREGISTER.N306 ), .Y(
        \COREABC_0/un33_ZREGISTER.I96_un1_Y ));
    NOR2B \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I61_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N268 ), .B(
        \COREABC_0/un33_ZREGISTER.N272 ), .Y(
        \COREABC_0/un33_ZREGISTER.N299 ));
    DFN1C0 \CORESPI_0/USPI/UCC/spi_clk_count[6]  (.D(
        \CORESPI_0/USPI/UCC/spi_clk_count_n6 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/spi_clk_count[6]_net_1 ));
    AO1D \CORESPI_0/USPI/URXF/un1_counter_q_m_i[0]  (.A(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_partial_sum[0] ), .B(
        \CORESPI_0/USPI/rx_fifo_read ), .C(\CORESPI_0/USPI/URXF/N_66 ), 
        .Y(\CORESPI_0/USPI/URXF/N_46 ));
    DFN1E1P0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI1Il[1]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI1Il[2]_net_1 ), .CLK(
        GLA), .PRE(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTIl ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI1Il[1]_net_1 ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ACCUM_NEXT_iv_3[1]  (.A(
        \COREABC_0/xhdl_31.ALUOUT_3_m[1] ), .B(\COREABC_0/IO_IN_m[1] ), 
        .C(\COREABC_0/xhdl_31.ALUOUT_5_m[1] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_3[1] ));
    AX1D \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I119_Y  (.A(
        \COREABC_0/un33_ZREGISTER.I94_un1_Y ), .B(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I94_Y_1 ), .C(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I119_Y_0 ), .Y(
        \COREABC_0/un33_ZREGISTER[13] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_SHIFTMSBs_iv  (.A(
        \COREABC_0/ACCUMULATOR[15] ), .B(\COREABC_0/ACCUMULATOR[0] ), 
        .S(\COREABC_0/UROM.INSTR_DATA[0]_net_1 ), .Y(\COREABC_0/N_384 )
        );
    NOR2A \CORESPI_0/USPI/UCC/clock_rx_q3_RNI3249  (.A(
        \CORESPI_0/USPI/UCC/clock_rx_q3_net_1 ), .B(
        \CORESPI_0/USPI/UCC/clock_rx_q2_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/clock_rx_fe ));
    NOR3C \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I98_un1_Y_0  (.A(
        \COREABC_0/un33_ZREGISTER.N272 ), .B(
        \COREABC_0/un33_ZREGISTER.N276 ), .C(
        \COREABC_0/un33_ZREGISTER.N204 ), .Y(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I98_un1_Y_0 ));
    MX2 \COREABC_0/ACCUMULATOR[9]/U0  (.A(\COREABC_0/ACCUMULATOR[9] ), 
        .B(\COREABC_0/ACCUM_NEXT[9] ), .S(\COREABC_0/ACCUMULATOR4 ), 
        .Y(\COREABC_0/ACCUMULATOR[9]/Y ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_STBACCUM_4_sqmuxa_0_a2  (.A(
        \COREABC_0/N_493_1 ), .B(\COREABC_0/UROM.INSTR_CMD[2]_net_1 ), 
        .Y(\COREABC_0/N_692 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m169_0  (.A(\COREABC_0/N_45_0 ), .B(
        \COREABC_0/N_130_0 ), .S(\COREABC_0/SMADDR[2] ), .Y(
        \COREABC_0/N_170_0 ));
    DFN1P0 \COREABC_0/STKPTR[5]/U1  (.D(\COREABC_0/STKPTR[5]/Y ), .CLK(
        GLA), .PRE(PRESETN), .Q(\COREABC_0/STKPTR[5] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m27_0  (.A(\COREABC_0/N_24_1 ), .B(
        \COREABC_0/N_27_1 ), .S(\COREABC_0/SMADDR_0[1] ), .Y(
        \COREABC_0/N_28_1 ));
    NOR2 \CORESPI_0/USPI/UTXF/counter_q_RNO[0]  (.A(
        \CORESPI_0/USPI/UTXF/N_44 ), .B(\CORESPI_0/USPI/fiforsttx ), 
        .Y(\CORESPI_0/USPI/UTXF/N_13 ));
    DFN1 \COREABC_0/UROM.INSTR_ADDR[2]  (.D(
        \COREABC_0/INSTRUCTION[12] ), .CLK(GLA), .Q(
        \COREABC_0/UROM.INSTR_ADDR[2]_net_1 ));
    NOR3 \CoreTimer_0/Count_RNIG3FS[25]  (.A(
        \CoreTimer_0/Count[26]_net_1 ), .B(
        \CoreTimer_0/Count[25]_net_1 ), .C(
        \CoreTimer_0/Count[27]_net_1 ), .Y(\CoreTimer_0/un1_m6_i_a3_2 )
        );
    AND3 \COREABC_0/un37_SMADDR_I_30  (.A(
        \COREABC_0/un37_SMADDR.U1.DWACT_FINC_E[0] ), .B(
        \COREABC_0/un37_SMADDR.U1.DWACT_FINC_E[2] ), .C(
        \COREABC_0/un37_SMADDR.U1.DWACT_FINC_E[5] ), .Y(
        \COREABC_0/un37_SMADDR.U1.DWACT_FINC_E[6] ));
    OA1 \CORESPI_0/USPI/URXF/empty_out_RNO_2  (.A(
        \CORESPI_0/USPI/URXF/N_61 ), .B(\CORESPI_0/USPI/URXF/N_60 ), 
        .C(\CORESPI_0/USPI/URXF/N_46 ), .Y(
        \CORESPI_0/USPI/URXF/empty_out_2_0_a3_1 ));
    NOR3C \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTOOI_RNIK1LP1  
        (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_0_sqmuxa_1_net_1 ), 
        .B(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_0_sqmuxa_0 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_c1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_0_sqmuxa ));
    DFN1E1C0 \CoreTimer_0/Load[0]  (.D(
        \COREABC_0_APB3master_PWDATA[0] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreTimer_0/LoadEn_net_1 ), .Q(
        \CoreTimer_0/Load[0]_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_PWDATA_M[6]  (.A(
        \COREABC_0/UROM.INSTR_DATA[6]_net_1 ), .B(\COREABC_0/MUX1[6] ), 
        .S(\COREABC_0/USE_ACC_1 ), .Y(\COREABC_0_APB3master_PWDATA[6] )
        );
    DFN1E1C0 \CoreUARTapb_0/CUARTO1OI[4]  (.D(
        \COREABC_0_APB3master_PWDATA[4] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTO1OI4 ), .Q(
        \CoreUARTapb_0/CUARTO1OI[4]_net_1 ));
    NOR2B \CoreUARTapb_0/CUARTOOII_RNO_2[4]  (.A(
        \CoreUARTapb_0/CUARTOIII[4] ), .B(
        \COREABC_0_APB3master_PADDR[2] ), .Y(\CoreUARTapb_0/N_60_0 ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I6_G0N_0_0  (.A(
        \COREABC_0/ACCUMULATOR[6] ), .B(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_1 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I6_G0N_0_0 ));
    OR3 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/un3_CUARTO0_I_24  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/DWACT_FDEC_E[0] ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/DWACT_FDEC_E[2] ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/DWACT_FDEC_E[3] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/DWACT_FDEC_E[4] ));
    DFN1E1C0 \CORESPI_0/USPI/UCC/mtx_pktsel  (.D(
        \CORESPI_0/USPI/UCC/mtx_state_0_sqmuxa ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/UCC/N_47 ), .Q(
        \CORESPI_0/USPI/UCC/mtx_pktsel_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m210  (.A(\COREABC_0/N_11_1 ), .B(
        \COREABC_0/N_25_1 ), .S(\COREABC_0/SMADDR_0[2] ), .Y(
        \COREABC_0/N_211 ));
    DFN1E1P0 \CoreTimer_0/Count[12]  (.D(\CoreTimer_0/N_419 ), .CLK(
        GLA), .PRE(COREABC_0_PRESETN_0), .E(\CoreTimer_0/Counte_0 ), 
        .Q(\CoreTimer_0/Count[12]_net_1 ));
    MX2 \CORESPI_0/USPI/UCC/stxs_lastbit/U0  (.A(
        \CORESPI_0/USPI/UCC/stxs_lastbit ), .B(
        \CORESPI_0/USPI/UCC/stxs_lastbit_3 ), .S(
        \CORESPI_0/USPI/UCC/clock_rx_fe ), .Y(
        \CORESPI_0/USPI/UCC/stxs_lastbit/Y ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_ICYCLE24.ICYCLE24_0_a2  (.A(
        \COREABC_0/UROM.INSTR_CMD[1]_net_1 ), .B(
        \COREABC_0/UROM.INSTR_CMD[0]_net_1 ), .Y(
        \COREABC_0/ICYCLE24.ICYCLE24 ));
    AO1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I30_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N222 ), .B(
        \COREABC_0/un33_ZREGISTER.N226 ), .C(
        \COREABC_0/un33_ZREGISTER.N225 ), .Y(
        \COREABC_0/un33_ZREGISTER.N265 ));
    AO1A \CoreTimer_0/LoadEnReg_RNIRS88E_0  (.A(
        \CoreTimer_0/CtrlReg_RNINQA54[2]_net_1 ), .B(
        \CoreTimer_0/un1_m6_i_a3_5 ), .C(\CoreTimer_0/LoadEnReg_net_1 )
        , .Y(\CoreTimer_0/un1_PreScale8 ));
    NOR2 
        \COREABC_0/un1_ACCUMULATOR_xhdl_41.xhdl_40_l3.un13_flagvalue_4  
        (.A(\COREABC_0/ZREGISTER[8] ), .B(\COREABC_0/ZREGISTER[7] ), 
        .Y(
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.xhdl_40_l3.un13_flagvalue_4 )
        );
    AO1 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I24_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N231 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N235 ), .C(
        \COREABC_0/un1_ACCUMULATOR.N234 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N259 ));
    DFN1C0 \COREABC_0/DOJMP/U1  (.D(\COREABC_0/DOJMP/Y ), .CLK(GLA), 
        .CLR(\COREABC_0/genblk2.RSTSYNC2_2_net_1 ), .Q(
        \COREABC_0/DOJMP ));
    AX1 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I110_Y_0  (.A(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_0 ), .B(
        \COREABC_0/ACCUM_IN[4] ), .C(\COREABC_0/ACCUMULATOR[4] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I110_Y_0 ));
    XOR3 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I110_Y  (.A(
        \COREABC_0_APB3master_PWDATA[4] ), .B(\COREABC_0/ZREGISTER[4] )
        , .C(\COREABC_0/un33_ZREGISTER.N304 ), .Y(
        \COREABC_0/un33_ZREGISTER[4] ));
    MX2 \CORESPI_0/USPI/UTXF/fifo_mem_q_fifo_mem_q_ram0__RNI7HJ9[3]  (
        .A(\CORESPI_0/USPI/UTXF/ram0_3 ), .B(
        \CORESPI_0/USPI/UTXF/ram1_3 ), .S(
        \CORESPI_0/USPI/UTXF/rd_pointer_q[0]_net_1 ), .Y(
        \CORESPI_0/USPI/UTXF/N_34_0 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m177_0  (.A(\COREABC_0/N_177 ), .B(
        \COREABC_0/N_12_1 ), .S(\COREABC_0/SMADDR[1] ), .Y(
        \COREABC_0/N_178 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I57_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N264 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N268 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N295 ));
    MX2 \CORESPI_0/USPI/URXF/fifo_mem_q_fifo_mem_q_ram1__RNI5ON72[2]  
        (.A(\CORESPI_0/USPI/URXF/N_33 ), .B(
        \CORESPI_0/USPI/URXF/N_38_0 ), .S(
        \CORESPI_0/USPI/URXF/rd_pointer_q[1]_net_1 ), .Y(
        \CORESPI_0.USPI.rx_fifo_data_out[1] ));
    NOR3C \CoreUARTapb_0/m15  (.A(\CoreTimer_0.un2_PrescaleEn_0 ), .B(
        CoreAPB3_0_APBmslave1_PSELx), .C(\CoreUARTapb_0/N_4_0 ), .Y(
        \CoreUARTapb_0/CUARTO1OI4 ));
    NOR3B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_6[2]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_4[2]_net_1 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_3[2]_net_1 ), .C(
        \CORESPI_0.USPI.URF.control1_m[2] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_6[2]_net_1 ));
    NOR3C 
        \COREABC_0/un1_ACCUMULATOR_xhdl_41.xhdl_40_l3.un13_flagvalue_13  
        (.A(
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.xhdl_40_l3.un13_flagvalue_2 )
        , .B(
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.xhdl_40_l3.un13_flagvalue_1 )
        , .C(
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.xhdl_40_l3.un13_flagvalue_10 )
        , .Y(
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.xhdl_40_l3.un13_flagvalue_13 )
        );
    AO1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I52_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N263 ), .B(
        \COREABC_0/un33_ZREGISTER.N260 ), .C(
        \COREABC_0/un33_ZREGISTER.N259 ), .Y(
        \COREABC_0/un33_ZREGISTER.N290 ));
    DFN1E0C0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[0]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_11[0] ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_130_mux ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[0]_net_1 ));
    NOR2A \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_RNI4NH21_0[3]  (
        .A(\CoreUARTapb_0/CUARTlOlI/CUARTll ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[3]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_47 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_SMADDR_21_0[7]  (.A(
        \COREABC_0/RAMRDATA[7] ), .B(
        \COREABC_0/UROM.INSTR_CMD[1]_net_1 ), .Y(\COREABC_0/N_430 ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNITKV57  (.A(
        \COREABC_0/xhdl_31.ALUOUT_3_m[15] ), .B(
        \COREABC_0/PRDATA_M_m[15] ), .C(
        \COREABC_0/xhdl_31.ALUOUT_4_m[15] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5_3[15] ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_PWDATA_M[13]  (.A(
        \COREABC_0/ACCUMULATOR[13] ), .B(\COREABC_0/USE_ACC_1 ), .Y(
        \COREABC_0_APB3master_PWDATA[13] ));
    NOR2 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_2[0]  (.A(
        \COREABC_0_APB3master_PADDR[13] ), .B(
        \COREABC_0_APB3master_PADDR[12] ), .Y(\CoreAPB3_0/N_72 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_PWDATA_M[12]  (.A(
        \COREABC_0/ACCUMULATOR[12] ), .B(\COREABC_0/USE_ACC_1 ), .Y(
        \COREABC_0_APB3master_PWDATA[12] ));
    DFN1C0 \CORESPI_0/USPI/UCC/spi_clk_count[4]  (.D(
        \CORESPI_0/USPI/UCC/spi_clk_count_n4 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/spi_clk_count[4]_net_1 ));
    NOR2B \CORESPI_0/USPI/UCON/tx_fifo_last_0_a2_1_RNO  (.A(
        COREABC_0_APB3master_PWRITE), .B(
        \COREABC_0_APB3master_PADDR[5] ), .Y(
        \CORESPI_0/USPI/UCON/tx_fifo_last_0_a2_0 ));
    NOR2 \CORESPI_0/USPI/UCC/stxs_bitcnt_RNIJP6O[2]  (.A(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[3] ), .B(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[2] ), .Y(
        \CORESPI_0/USPI/UCC/stxs_datareg4_3 ));
    OA1C \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l_RNO_0[2]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l[1]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_31 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l[2]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_48 ));
    AO1 \CORESPI_0/USPI/URXF/un1_counter_q_1_I_27  (.A(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_pog_array_0[0] ), .B(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_TMP_2[0] ), .C(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_0_1[0] ), .Y(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_1_0[0] ));
    XA1B \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il_RNO[1]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il[1]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il[0]_net_1 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_123 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il_n1 ));
    XA1 \CORESPI_0/USPI/UCC/spi_clk_count_RNO[6]  (.A(
        \CORESPI_0/USPI/UCC/spi_clk_count_c5 ), .B(
        \CORESPI_0/USPI/UCC/spi_clk_count[6]_net_1 ), .C(
        \CORESPI_0/USPI/UCC/spi_clk_count_1_sqmuxa ), .Y(
        \CORESPI_0/USPI/UCC/spi_clk_count_n6 ));
    AX1C \COREABC_0/un37_SMADDR_I_7  (.A(\COREABC_0/SMADDR[1] ), .B(
        \COREABC_0/SMADDR[0] ), .C(\COREABC_0/SMADDR[2] ), .Y(
        \COREABC_0/I_7 ));
    MX2 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l_RNI0LHS[1]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_25 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_24 ), .S(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l[1]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_29 ));
    AO1A \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I92_Y_0  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_i3_mux ), .B(
        \COREABC_0/un1_ACCUMULATOR.N252 ), .C(
        \COREABC_0/un1_ACCUMULATOR.N246 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I92_Y_0 ));
    MX2 \COREABC_0/SMADDR_0[3]/U0  (.A(\COREABC_0/N_54_0 ), .B(
        \COREABC_0/SMADDR_0[3] ), .S(\COREABC_0/un1_ICYCLE_6 ), .Y(
        \COREABC_0/SMADDR_0[3]/Y ));
    NOR2A \CoreTimer_0/Count_RNI49976[19]  (.A(\CoreTimer_0/N_19_0 ), 
        .B(\CoreTimer_0/Count[19]_net_1 ), .Y(\CoreTimer_0/N_20_0 ));
    NOR2B \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I29_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N229 ), .B(
        \COREABC_0/un33_ZREGISTER.N226 ), .Y(
        \COREABC_0/un33_ZREGISTER.N264 ));
    XOR2 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I112_Y_0  (.A(
        \COREABC_0/ZREGISTER[6] ), .B(\COREABC_0_APB3master_PWDATA[6] )
        , .Y(\COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I112_Y_0 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ACCUM_NEXT_iv_1[10]  (.A(
        \COREABC_0/ACCUM_IN[10] ), .B(\COREABC_0/ALUOUT_7_sqmuxa ), .C(
        \COREABC_0/ACCUMULATOR_m_0[9] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[10] ));
    NOR3C \CoreTimer_0/Count_RNIJLUU2[22]  (.A(
        \CoreTimer_0/m32_m6_e_4 ), .B(\CoreTimer_0/m32_0 ), .C(
        \CoreTimer_0/m32_m6_e_5 ), .Y(\CoreTimer_0/m32_m6_e_7 ));
    OA1C \CORESPI_0/USPI/URF/int_raw_RNO[1]  (.A(
        \CORESPI_0/USPI/rx_done_i_0 ), .B(
        \CORESPI_0.USPI.URF.int_raw[1] ), .C(
        \CORESPI_0/USPI/URF/N_117 ), .Y(\CORESPI_0/USPI/URF/N_52 ));
    NOR2B \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I9_G0N  (.A(
        \COREABC_0/ZREGISTER[9] ), .B(\COREABC_0_APB3master_PWDATA[9] )
        , .Y(\COREABC_0/un33_ZREGISTER.N231 ));
    OR2 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I1_P0N  (.A(
        \COREABC_0/ZREGISTER[1] ), .B(\COREABC_0_APB3master_PWDATA[1] )
        , .Y(\COREABC_0/un33_ZREGISTER.N208 ));
    DFN1E1P0 \CoreTimer_0/Count[17]  (.D(\CoreTimer_0/N_47_0 ), .CLK(
        GLA), .PRE(COREABC_0_PRESETN_0), .E(\CoreTimer_0/Counte_0 ), 
        .Q(\CoreTimer_0/Count[17]_net_1 ));
    DFN1E1C0 \CORESPI_0/USPI/UCC/msrxp_frames[0]  (.D(
        \CORESPI_0/USPI/UCC/msrxp_frames_4[0] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/UCC/un1_msrxp_strobe )
        , .Q(\CORESPI_0/USPI/UCC/msrxp_frames[0]_net_1 ));
    NOR2B \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I7_G0N  (.A(
        \COREABC_0/ZREGISTER[7] ), .B(\COREABC_0_APB3master_PWDATA[7] )
        , .Y(\COREABC_0/un33_ZREGISTER.N225 ));
    NOR3C \COREABC_0/un1_ACCUMULATOR_STBRAM_5_sqmuxa  (.A(
        \COREABC_0/UROM.INSTR_SCMD[2]_net_1 ), .B(
        \COREABC_0/UROM.INSTR_SCMD[0]_net_1 ), .C(
        \COREABC_0/STBRAM_4_sqmuxa_2 ), .Y(\COREABC_0/STBRAM_5_sqmuxa )
        );
    RAM512X18 \COREABC_0/URAM_UR/UG3_UR_xhdl12/Ram256x16_R0C0  (
        .RADDR8(AFLSDF_GND), .RADDR7(\COREABC_0/RAMADDR[7] ), .RADDR6(
        \COREABC_0/RAMADDR[6] ), .RADDR5(\COREABC_0/RAMADDR[5] ), 
        .RADDR4(\COREABC_0/RAMADDR[4] ), .RADDR3(
        \COREABC_0/RAMADDR[3] ), .RADDR2(\COREABC_0/RAMADDR[2] ), 
        .RADDR1(\COREABC_0/RAMADDR[1] ), .RADDR0(
        \COREABC_0/RAMADDR[0] ), .WADDR8(AFLSDF_GND), .WADDR7(
        \COREABC_0/RAMADDR[7] ), .WADDR6(\COREABC_0/RAMADDR[6] ), 
        .WADDR5(\COREABC_0/RAMADDR[5] ), .WADDR4(
        \COREABC_0/RAMADDR[4] ), .WADDR3(\COREABC_0/RAMADDR[3] ), 
        .WADDR2(\COREABC_0/RAMADDR[2] ), .WADDR1(
        \COREABC_0/RAMADDR[1] ), .WADDR0(\COREABC_0/RAMADDR[0] ), 
        .WD17(GND), .WD16(GND), .WD15(
        \COREABC_0_APB3master_PWDATA[15] ), .WD14(
        \COREABC_0_APB3master_PWDATA[14] ), .WD13(
        \COREABC_0_APB3master_PWDATA[13] ), .WD12(
        \COREABC_0_APB3master_PWDATA[12] ), .WD11(\COREABC_0/N_89 ), 
        .WD10(\COREABC_0/N_85_0 ), .WD9(\COREABC_0/N_81_0 ), .WD8(
        \COREABC_0/RAMWDATA[8] ), .WD7(\COREABC_0/RAMWDATA[7] ), .WD6(
        \COREABC_0/N_237 ), .WD5(\COREABC_0/N_240 ), .WD4(
        \COREABC_0/RAMWDATA[4] ), .WD3(\COREABC_0/N_245 ), .WD2(
        \COREABC_0/RAMWDATA[2] ), .WD1(\COREABC_0/RAMWDATA[1] ), .WD0(
        \COREABC_0/RAMWDATA[0] ), .RW0(GND), .RW1(VCC), .WW0(GND), 
        .WW1(VCC), .PIPE(GND), .REN(\COREABC_0/STBRAM_net_1 ), .WEN(
        \COREABC_0/URAM.UR/UG3.UR_xhdl12/WEAP ), .RCLK(GLA), .WCLK(GLA)
        , .RESET(\COREABC_0/genblk2.RSTSYNC2_0_net_1 ), .RD17(), .RD16(
        ), .RD15(\COREABC_0/RAMRDATA[15] ), .RD14(
        \COREABC_0/RAMRDATA[14] ), .RD13(\COREABC_0/RAMRDATA[13] ), 
        .RD12(\COREABC_0/RAMRDATA[12] ), .RD11(
        \COREABC_0/RAMRDATA[11] ), .RD10(\COREABC_0/RAMRDATA[10] ), 
        .RD9(\COREABC_0/RAMRDATA[9] ), .RD8(\COREABC_0/RAMRDATA[8] ), 
        .RD7(\COREABC_0/RAMRDATA[7] ), .RD6(\COREABC_0/RAMRDATA[6] ), 
        .RD5(\COREABC_0/RAMRDATA[5] ), .RD4(\COREABC_0/RAMRDATA[4] ), 
        .RD3(\COREABC_0/RAMRDATA[3] ), .RD2(\COREABC_0/RAMRDATA[2] ), 
        .RD1(\COREABC_0/RAMRDATA[1] ), .RD0(\COREABC_0/RAMRDATA[0] ));
    MX2C \COREABC_0/un1_ACCUMULATOR_m57_0  (.A(\COREABC_0/I_23 ), .B(
        \COREABC_0/N_57_0 ), .S(\COREABC_0/DOJMP ), .Y(
        \COREABC_0/N_58_0 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_ZREGISTER_26[5]  (.A(
        \COREABC_0_APB3master_PWDATA[5] ), .B(
        \COREABC_0/un33_ZREGISTER[5] ), .S(
        \COREABC_0/UROM.INSTR_SCMD[0]_net_1 ), .Y(
        \COREABC_0/ZREGISTER_26[5] ));
    DFN1E1P0 \CoreTimer_0/Count[26]  (.D(\CoreTimer_0/N_41_0 ), .CLK(
        GLA), .PRE(COREABC_0_PRESETN_0), .E(\CoreTimer_0/Counte ), .Q(
        \CoreTimer_0/Count[26]_net_1 ));
    AO1 \CoreTimer_0/iPRDATA_RNO[15]  (.A(
        \CoreTimer_0/Count[15]_net_1 ), .B(
        \CoreTimer_0/DataOut_1_sqmuxa_net_1 ), .C(
        \CoreTimer_0/Load_m[15] ), .Y(\CoreTimer_0/PrdataNext_1[15] ));
    NOR2 \CORESPI_0/USPI/URXF/counter_q_RNO[1]  (.A(
        \CORESPI_0/USPI/URXF/N_44 ), .B(\CORESPI_0/USPI/fiforstrx ), 
        .Y(\CORESPI_0/USPI/URXF/N_17 ));
    AX1C \COREABC_0/ACCUMULATOR_RNITMKM1[15]  (.A(
        \COREABC_0/UROM.INSTR_SCMD[2]_net_1 ), .B(
        \COREABC_0/ACCUM_IN[15] ), .C(\COREABC_0/ACCUMULATOR[15] ), .Y(
        \COREABC_0/r_m1_0 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m32_0  (.A(\COREABC_0/N_17_1 ), .B(
        \COREABC_0/N_11_1 ), .S(\COREABC_0/SMADDR_1[2] ), .Y(
        \COREABC_0/N_33_1 ));
    XA1B \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl_RNO[3]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl[3]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_27_i ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_309 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_44 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I92_un1_Y_0  (.A(
        \COREABC_0/un1_ACCUMULATOR.N283 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N291 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I92_un1_Y_0 ));
    OR2B \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l_RNI44LR[0]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l[0]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTll ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_31 ));
    OA1C \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i[5]  (.A(
        \COREABC_0_APB3master_PADDR[13] ), .B(
        \CORESPI_0.USPI.prdata_regs[5] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_1[5]_net_1 ), .Y(N_17));
    AO1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I94_Y_1  (.A(
        \COREABC_0/un33_ZREGISTER.N287 ), .B(
        \COREABC_0/un33_ZREGISTER.N294 ), .C(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I94_Y_0 ), .Y(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I94_Y_1 ));
    MX2C \CORESPI_0/USPI/UTXF/un1_counter_q_m_i[1]  (.A(
        \CORESPI_0/USPI/UTXF/un1_counter_q0[1] ), .B(
        \CORESPI_0/USPI/UTXF/un1_counter_q1[1] ), .S(
        \CORESPI_0/USPI/tx_fifo_write ), .Y(\CORESPI_0/USPI/UTXF/N_42 )
        );
    OR2 \COREABC_0/un1_ACCUMULATOR_un7_N_5_mux_i_0  (.A(
        \COREABC_0_APB3master_PADDR[12] ), .B(
        \COREABC_0/UROM.INSTR_SCMD_RNIOF7U[1]_net_1 ), .Y(
        \COREABC_0/un7_MUXIR[0] ));
    DFN1C0 \CoreTimer_0/iPRDATA[10]  (.D(
        \CoreTimer_0/PrdataNext_1[10] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(\CoreAPB3_0_APBmslave0_PRDATA[10] ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_xhdl_31.ALUOUT_3_m_0[9]  (.A(
        \COREABC_0/ACCUMULATOR[9] ), .B(\COREABC_0/ALUOUT_1_sqmuxa ), 
        .Y(\COREABC_0/un1_ACCUMULATOR.xhdl_31.ALUOUT_3_m_0[9] ));
    AO1A \CORESPI_0/USPI/UCC/mtx_alldone_RNIQ5TR  (.A(
        \CORESPI_0.USPI.SPIMODE ), .B(
        \CORESPI_0/USPI/UCC/msrxp_alldone_net_1 ), .C(
        \CORESPI_0/USPI/UCC/mtx_alldone_net_1 ), .Y(
        \CORESPI_0/USPI/tx_done ));
    AX1D \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I115_Y  (.A(
        \COREABC_0/un33_ZREGISTER.I82_un1_Y ), .B(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I98_Y_0 ), .C(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I115_Y_0 ), .Y(
        \COREABC_0/un33_ZREGISTER[9] ));
    XA1C \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l_RNO[3]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l[3]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_33 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_47 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTll0l_RNO[3]_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_PADDR_M_1[3]  (.A(
        \COREABC_0/UROM.INSTR_ADDR[3]_net_1 ), .B(
        \COREABC_0/ZREGISTER[3] ), .S(
        \COREABC_0/UROM.INSTR_SCMD[2]_net_1 ), .Y(
        \COREABC_0_APB3master_PADDR[3] ));
    NOR3 \CoreTimer_0/iPRDATA_RNO[1]  (.A(\CoreTimer_0/Count_m[1] ), 
        .B(\CoreTimer_0/PrdataNext_1_0_iv_0[1] ), .C(
        \CoreTimer_0/Load_m[1] ), .Y(\CoreTimer_0/PrdataNext_1[1] ));
    NOR3C \CORESPI_0/USPI/UCC/mtx_state_RNO_0[0]  (.A(
        \CORESPI_0/USPI/UCC/spi_clk_tick_net_1 ), .B(
        \CORESPI_0/USPI/UCC/mtx_state[1]_net_1 ), .C(
        \CORESPI_0/USPI/UCC/N_56 ), .Y(\CORESPI_0/USPI/UCC/N_76 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNI9MHS15  (.A(
        \COREABC_0/un1_ACCUMULATOR[14] ), .B(
        \COREABC_0/un1_ACCUM_NEXT9_1 ), .C(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[14] ), .Y(
        \COREABC_0/ACCUM_NEXT[14] ));
    AX1D \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I120_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.I93_un1_Y ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I93_Y_2 ), .C(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I120_Y_0 ), .Y(
        \COREABC_0/un1_ACCUMULATOR[14] ));
    OR3 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/un3_CUARTO0_I_18  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[3] ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[4] ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[5] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/DWACT_FDEC_E[2] ));
    NOR3C \CoreTimer_0/Count_RNI91KU2[14]  (.A(
        \CoreTimer_0/m23_m4_e_0_5 ), .B(\CoreTimer_0/m23_m4_e_0_4 ), 
        .C(\CoreTimer_0/m23_m4_e_0_6 ), .Y(\CoreTimer_0/m23_m4_e_0_8 ));
    DFN1P0 \CORESPI_0/USPI/UCC/mtx_midbit  (.D(
        \CORESPI_0/USPI/UCC/txfifo_dhold_dec[2] ), .CLK(GLA), .PRE(
        COREABC_0_PRESETN_0), .Q(\CORESPI_0/USPI/UCC/mtx_midbit_i_0 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_3[0]  (.A(
        \CORESPI_0.USPI.URF.int_raw_m[0] ), .B(
        \CORESPI_0.USPI.un1_PADDR ), .C(
        \CORESPI_0.USPI.URF.CLK_DIV_m[0] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_3[0]_net_1 ));
    NOR2B \COREABC_0/UROM.INSTR_SCMD_RNI16U[1]  (.A(
        \COREABC_0/UROM.INSTR_SCMD[1]_net_1 ), .B(
        \COREABC_0/UROM.INSTR_SCMD[2]_net_1 ), .Y(
        \COREABC_0/r_m1tt_N_3_mux ));
    NOR3A \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I3_G0N_0  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I3_G0N_0_0 ), .B(
        \COREABC_0/ADD_16x16_fast_I3_G0N_a1 ), .C(
        \COREABC_0/ADD_16x16_fast_I3_G0N_a0 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N213 ));
    DFN1E1 \CORESPI_0/USPI/URXF/fifo_mem_q_fifo_mem_q_ram0_[3]  (.D(
        \CORESPI_0/USPI/rx_fifo_data_in[2] ), .CLK(GLA), .E(
        \CORESPI_0/USPI/URXF/awe0 ), .Q(\CORESPI_0/USPI/URXF/ram0_3 ));
    XA1 \CORESPI_0/USPI/UCC/stxs_bitcnt_RNO[2]  (.A(
        \CORESPI_0/USPI/UCC/stxs_bitcnt_c1 ), .B(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[2] ), .C(
        \CORESPI_0/USPI/UCC/stxs_bitcnt_0_sqmuxa ), .Y(
        \CORESPI_0/USPI/UCC/stxs_bitcnt_n2 ));
    OR2 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I4_P0N_0  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I4_P0N_0_0 ), .B(
        \COREABC_0/ADD_16x16_fast_I4_P0N_a0 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N217 ));
    NOR2A \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0_RNITI1T[0]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0[1]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0[0]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_110 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I97_Y_0  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I97_un1_Y_0 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N293 ), .C(
        \COREABC_0/un1_ACCUMULATOR.N292 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I97_Y_0 ));
    DFN1C0 \CORESPI_0/USPI/URF/control2[5]  (.D(
        \CORESPI_0/USPI/URF/N_26 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/URF/control2[5]_net_1 ));
    OR3 \CORESPI_0/USPI/UCC/mtx_spi_data_out_RNO_1  (.A(
        \CORESPI_0/USPI/UCC/N_35 ), .B(\CORESPI_0/USPI/UCC/N_36 ), .C(
        \CORESPI_0/USPI/UCC/N_23 ), .Y(
        \CORESPI_0/USPI/UCC/mtx_spi_data_out_2_iv_i_1 ));
    DFN1P0 \COREABC_0/ICYCLE[1]  (.D(\COREABC_0/N_1141_i ), .CLK(GLA), 
        .PRE(PRESETN), .Q(\COREABC_0/ICYCLE[1]_net_1 ));
    AO1B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I21_Y_4  (.A(
        \COREABC_0/ACCUMULATOR[11] ), .B(\COREABC_0/ACCUMULATOR[12] ), 
        .C(\COREABC_0/r_m1_N_6_mux ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I21_Y_3 ));
    MX2 \COREABC_0/STKPTR[6]/U0  (.A(\COREABC_0/STKPTR[6] ), .B(
        \COREABC_0/N_1219 ), .S(\COREABC_0/STKPTRe ), .Y(
        \COREABC_0/STKPTR[6]/Y ));
    MX2 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_RNO_1[5]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[5]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[4]_net_1 ), .S(
        \CoreUARTapb_0/CUARTlOlI/CUARTll ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_44 ));
    OA1 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNI8LMS1  (.A(
        \COREABC_0/ACCUMULATOR[3] ), .B(\COREABC_0/ACCUM_IN[3] ), .C(
        \COREABC_0/ALUOUT_2_sqmuxa ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_4_m[3] ));
    OR3 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/un3_CUARTO0_I_30  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/DWACT_FDEC_E[0] ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/DWACT_FDEC_E[2] ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/DWACT_FDEC_E[5] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/DWACT_FDEC_E[6] ));
    NOR3 \COREABC_0/un1_ACCUMULATOR_ADD_m3_3  (.A(\COREABC_0/ADD_m1_0 )
        , .B(\COREABC_0/ACCUMULATOR[6] ), .C(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_0 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_5_mux_1 ));
    DFN1E1C0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI11_0  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI11_12 ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_140_mux ), .Q(
        \CoreUARTapb_0/PARITY_ERR_0 ));
    DFI1E0P0 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTI00l  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_ns_i[6] ), .CLK(
        GLA), .E(\CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_167 ), .PRE(
        COREABC_0_PRESETN_0), .QN(\CoreUARTapb_0/CUARTlOlI/CUARTlIOl ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I18_un1_Y_0  (.A(
        \COREABC_0/ACCUMULATOR[12] ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_5_mux_12 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I18_un1_Y_0 ));
    DFN1E1C0 \CORESPI_0/USPI/URF/cfg_ssel[2]  (.D(
        \COREABC_0_APB3master_PWDATA[2] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/URF/N_119 ), .Q(
        \CORESPI_0.USPI.URF.cfg_ssel[2] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m139_0  (.A(\COREABC_0/N_135 ), .B(
        \COREABC_0/N_139_0 ), .S(\COREABC_0/SMADDR[0] ), .Y(
        \COREABC_0/INSTRUCTION[27] ));
    NOR3C \COREABC_0/un1_ACCUMULATOR_PRDATA_M_m[14]  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[14] ), .B(
        CoreAPB3_0_APBmslave0_PSELx), .C(\COREABC_0/ICYCLE24.ICYCLE24 )
        , .Y(\COREABC_0/PRDATA_M_m[14] ));
    NOR2A \COREABC_0/URAM.UR/UG3.UR_xhdl12/Ram256x16_R0C0_RNIM7AA  (.A(
        \COREABC_0_APB3master_PADDR[12] ), .B(\COREABC_0/RAMRDATA[3] ), 
        .Y(\COREABC_0/Ram256x16_R0C0_RNIM7AA ));
    XA1 \CORESPI_0/USPI/UCC/rx_cmdsize_RNO_0  (.A(
        \CORESPI_0/USPI/UCC/msrxp_frames[0]_net_1 ), .B(
        \CORESPI_0.USPI.cfg_cmdsize[0] ), .C(
        \CORESPI_0/USPI/UCC/rx_cmdsize_4_0 ), .Y(
        \CORESPI_0/USPI/UCC/rx_cmdsize_4_1 ));
    DFN1E1C0 \CORESPI_0/USPI/UCC/msrxs_datain[3]  (.D(
        \CORESPI_0/USPI/UCC/msrxs_shiftreg[2]_net_1 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(
        \CORESPI_0/USPI/UCC/msrxs_datain_0_sqmuxa_1 ), .Q(
        \CORESPI_0/USPI/rx_fifo_data_in[3] ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_m113_0  (.A(\COREABC_0/N_91_0 ), 
        .B(\COREABC_0/SMADDR[0] ), .Y(\COREABC_0/INSTRUCTION[33] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m110_0  (.A(
        \COREABC_0_APB3master_PWDATA[10] ), .B(
        \COREABC_0/un33_ZREGISTER[10] ), .S(
        \COREABC_0/UROM.INSTR_SCMD_0[0]_net_1 ), .Y(
        \COREABC_0/N_111_0 ));
    NOR2 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I4_G0N_a0  (.A(
        \COREABC_0/r_m1_N_6_mux ), .B(\COREABC_0/RAMRDATA[4] ), .Y(
        \COREABC_0/ADD_16x16_fast_I4_G0N_a0 ));
    AND3 \COREABC_0/un37_SMADDR_I_18  (.A(\COREABC_0/SMADDR_0[3] ), .B(
        \COREABC_0/SMADDR[4] ), .C(\COREABC_0/SMADDR_0[5] ), .Y(
        \COREABC_0/un37_SMADDR.U1.DWACT_FINC_E[2] ));
    NOR2B \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I8_G0N  (.A(
        \COREABC_0/ZREGISTER[8] ), .B(\COREABC_0_APB3master_PWDATA[8] )
        , .Y(\COREABC_0/un33_ZREGISTER.N228 ));
    DFN1C0 \CORESPI_0/USPI/UTXF/counter_q[0]  (.D(
        \CORESPI_0/USPI/UTXF/N_13 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UTXF/counter_q[0]_net_1 ));
    NOR3B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_2[1]  (.A(
        \COREABC_0_APB3master_PADDR[13] ), .B(
        \CORESPI_0.USPI.un1_PADDR ), .C(
        \CORESPI_0.USPI.rx_fifo_data_out[1] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_2[1]_net_1 ));
    OA1C \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2[1]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_5[1]_net_1 ), .B(
        \CORESPI_0.USPI.URF.status_byte_m[1] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2_3[1]_net_1 ), .Y(N_9));
    NOR3C 
        \COREABC_0/un1_ACCUMULATOR_xhdl_41.xhdl_40_l3.un13_flagvalue_14  
        (.A(
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.xhdl_40_l3.un13_flagvalue_6 )
        , .B(
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.xhdl_40_l3.un13_flagvalue_5 )
        , .C(
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.xhdl_40_l3.un13_flagvalue_12 )
        , .Y(
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.xhdl_40_l3.un13_flagvalue_14 )
        );
    AO1A \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_RNO[2]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTll ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[2]_net_1 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[1]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_ns[2] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_RAMWDATA_0[7]  (.A(\COREABC_0/I_20 )
        , .B(\COREABC_0_APB3master_PWDATA[7] ), .S(
        \COREABC_0/URAM.un1_UROM.INSTR_SLOT ), .Y(\COREABC_0/N_469 ));
    DFN1E0C0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[2]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_11[2] ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_130_mux ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[2]_net_1 ));
    OR2 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIOB4A44  (.A(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[11] ), .B(
        \COREABC_0/un1_ACCUMULATOR_m[11] ), .Y(
        \COREABC_0/ACCUM_NEXT[11] ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ACCUM_NEXT_iv_3[4]  (.A(
        \COREABC_0/ACCUMULATOR_m_0[3] ), .B(
        \COREABC_0/xhdl_31.ALUOUT_3_m[4] ), .C(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[4] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_3[4] ));
    DFN1P0 \CORESPI_0/USPI/UCC/SYNC3_msrxp_strobe  (.D(
        \CORESPI_0/USPI/UCC/SYNC2_msrxp_strobe_net_1 ), .CLK(GLA), 
        .PRE(COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/SYNC3_msrxp_strobe_net_1 ));
    DFN1E1C0 \CoreUARTapb_0/CUARTlOlI/CUARTO1I[7]  (.D(
        \COREABC_0_APB3master_PWDATA[7] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTlOlI/CUARTO1I5 ), 
        .Q(\CoreUARTapb_0/CUARTlOlI/CUARTO1I[7]_net_1 ));
    MX2 \CORESPI_0/USPI/UCC/stxs_txzeros/U0  (.A(
        \CORESPI_0/USPI/UCC/stxs_txzeros ), .B(
        \CORESPI_0/USPI/UCC/stxs_midbit_3 ), .S(
        \CORESPI_0/USPI/UCC/N_615 ), .Y(
        \CORESPI_0/USPI/UCC/stxs_txzeros/Y ));
    INV \CoreUARTapb_0/CUARTlOlI/genblk1.RXRDY_RNO  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOl0_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOl0_i ));
    OR2 \COREABC_0/un1_ACCUMULATOR_STKPTR_c3  (.A(
        \COREABC_0/STKPTR_c2 ), .B(\COREABC_0/STKPTR[3] ), .Y(
        \COREABC_0/STKPTR_c3 ));
    AO1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I95_Y_0  (.A(
        \COREABC_0/un33_ZREGISTER.N261 ), .B(
        \COREABC_0/un33_ZREGISTER.N258 ), .C(
        \COREABC_0/un33_ZREGISTER.N257 ), .Y(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I95_Y_0 ));
    AO1 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_RNO[4]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_88 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_213 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_52 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_ns[4] ));
    DFN1C0 \COREABC_0/ZREGISTER[1]/U1  (.D(\COREABC_0/ZREGISTER[1]/Y ), 
        .CLK(GLA), .CLR(\COREABC_0/genblk2.RSTSYNC2_2_net_1 ), .Q(
        \COREABC_0/ZREGISTER[1] ));
    MX2C \CoreUARTapb_0/CUARTOOII_RNI7VEL1[0]  (.A(
        \CoreUARTapb_0/CUARTOOII[0]_net_1 ), .B(
        \CoreUARTapb_0/CUARTOIII[0] ), .S(\CoreUARTapb_0/PARITY_ERR ), 
        .Y(\CoreAPB3_0_APBmslave1_PRDATA_i_1[0] ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_PRDATA_M_m[6]  (.A(
        \PRDATA_iv_i[6] ), .B(\COREABC_0/ICYCLE24.ICYCLE24 ), .Y(
        \COREABC_0/PRDATA_M_m[6] ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_ADD_m1_e_1_0  (.A(
        \COREABC_0/RAMRDATA[9] ), .B(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_m1_e_1_0 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_RAMWDATA[7]  (.A(\COREABC_0/N_469 ), 
        .B(\COREABC_0/SMADDR[7] ), .S(\COREABC_0/DOISR_0 ), .Y(
        \COREABC_0/RAMWDATA[7] ));
    MX2C \COREABC_0/un1_ACCUMULATOR_m260_0  (.A(\COREABC_0/N_255_0 ), 
        .B(\COREABC_0/N_260 ), .S(\COREABC_0/SMADDR_0[0] ), .Y(
        \COREABC_0/m260_0 ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_RAMADDR[6]  (.A(
        \COREABC_0/I_17_0 ), .B(\COREABC_0/RAMADDR_1_sqmuxa ), .Y(
        \COREABC_0/RAMADDR[6] ));
    DFN1C0 \COREABC_0/DOISR_0/U1  (.D(\COREABC_0/DOISR_0/Y ), .CLK(GLA)
        , .CLR(\COREABC_0/genblk2.RSTSYNC2_0_net_1 ), .Q(
        \COREABC_0/DOISR_0 ));
    XOR3 \CORESPI_0/USPI/UTXF/un1_counter_q_0_I_24  (.A(
        \CORESPI_0/USPI/UTXF/counter_q[1]_net_1 ), .B(
        \CORESPI_0/USPI/UTXF/counter_d_0_sqmuxa_0 ), .C(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_TMP_2[0] ), .Y(
        \CORESPI_0/USPI/UTXF/un1_counter_q0[1] ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_m115_0  (.A(\COREABC_0/N_115_0 ), 
        .B(\COREABC_0/SMADDR[5] ), .Y(\COREABC_0/N_116_0 ));
    NOR2 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il_RNIHT42[1]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il[2]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il[1]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0I5_0 ));
    DFN1C0 \CORESPI_0/USPI/UTXF/wr_pointer_q[1]  (.D(
        \CORESPI_0/USPI/UTXF/wr_pointer_q_3[1] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UTXF/wr_pointer_q[1]_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m219  (.A(\COREABC_0/N_217 ), .B(
        \COREABC_0/N_278_mux ), .S(\COREABC_0/SMADDR_0[5] ), .Y(
        \COREABC_0/N_220 ));
    DFN1E1C0 \CORESPI_0/USPI/UCC/mtx_bitsel[4]  (.D(
        \CORESPI_0/USPI/UCC/N_597 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/UCC/mtx_bitsele ), .Q(
        \CORESPI_0/USPI/UCC/mtx_bitsel[4]_net_1 ));
    AO1 \CORESPI_0/USPI/URXF/empty_out_RNO  (.A(
        \CORESPI_0/USPI/URXF/empty_out_2_0_a3_3 ), .B(
        \CORESPI_0/USPI/URXF/empty_out_2_0_a3_2 ), .C(
        \CORESPI_0/USPI/fiforstrx ), .Y(
        \CORESPI_0/USPI/URXF/empty_out_2 ));
    NOR3B \CORESPI_0/USPI/URF/clr_txfifo_RNO  (.A(
        \COREABC_0_APB3master_PWDATA[1] ), .B(
        \CORESPI_0/USPI/URF/N_128 ), .C(\CORESPI_0/USPI/URF/N_66 ), .Y(
        \CORESPI_0/USPI/URF/clr_txfifo_5 ));
    AND2 \CORESPI_0/USPI/UTXF/un1_counter_q_0_I_6  (.A(
        \CORESPI_0/USPI/UTXF/counter_q[2]_net_1 ), .B(
        \CORESPI_0/USPI/UTXF/counter_d_0_sqmuxa_0 ), .Y(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_0_2[0] ));
    NOR3A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_4[0]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_0[0]_net_1 ), .B(
        \CORESPI_0.USPI.URF.int_masked_m[0] ), .C(
        \CORESPI_0.USPI.URF.cfg_ssel_m[0] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_4[0]_net_1 ));
    AX1 \CoreTimer_0/Count_RNO[12]  (.A(\CoreTimer_0/un1_PreScale8 ), 
        .B(\CoreTimer_0/N_12_0 ), .C(\CoreTimer_0/N_222 ), .Y(
        \CoreTimer_0/N_419 ));
    NOR2B \CORESPI_0/USPI/UCC/tmp_1_CO1  (.A(
        \CORESPI_0/USPI/UCC/msrxp_frames[1]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/msrxp_frames[0]_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/CO1 ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_m227  (.A(\COREABC_0/N_132_0 ), 
        .B(\COREABC_0/SMADDR[2] ), .Y(\COREABC_0/N_228 ));
    AOI1 \COREABC_0/un1_ACCUMULATOR_ADD_m3_2_0  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_m2_2_a0_0 ), .B(
        \COREABC_0/r_m1tt_N_3_mux ), .C(
        \COREABC_0/Ram256x16_R0C0_RNIM7AA ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_m3_2_0 ));
    MX2 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il_RNI3RU76[3]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOI0_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/i17_mux_0 ), .S(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_140 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_140_mux ));
    DFN1C0 \CORESPI_0/USPI/UCC/SYNC1_stxp_dataerr  (.D(
        \CORESPI_0/USPI/UCC/stxs_dataerr ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/SYNC1_stxp_dataerr_net_1 ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_un1_ACCUMULATOR_v[10]  (.A(
        \COREABC_0/ACCUM_IN[11] ), .B(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux ), .Y(
        \COREABC_0/un5[11] ));
    XOR2 \COREABC_0/un1_ACCUMULATOR_xhdl_31.ALUOUT_5[13]  (.A(
        \COREABC_0/ACCUM_IN[13] ), .B(\COREABC_0/ACCUMULATOR[13] ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_5[13] ));
    DFN1P0 \CoreTimer_0/iPRDATA[7]  (.D(\CoreTimer_0/PrdataNext_1[7] ), 
        .CLK(GLA), .PRE(COREABC_0_PRESETN_0), .Q(
        \CoreAPB3_0_APBmslave0_PRDATA_i_0[7] ));
    AO1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I38_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N210 ), .B(
        \COREABC_0/un33_ZREGISTER.N214 ), .C(
        \COREABC_0/un33_ZREGISTER.N213 ), .Y(
        \COREABC_0/un33_ZREGISTER.N273 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_PADDR_M_1[6]  (.A(
        \COREABC_0/ZREGISTER[6] ), .B(
        \COREABC_0/UROM.INSTR_SCMD[2]_net_1 ), .Y(
        \COREABC_0_APB3master_PADDR[6] ));
    OR2 \COREABC_0/un1_ACCUMULATOR_URAM.un1_UROM.INSTR_SLOT  (.A(
        \COREABC_0_APB3master_PADDR[12] ), .B(
        \COREABC_0/to_logic_4.un4_READRAM ), .Y(
        \COREABC_0/URAM.un1_UROM.INSTR_SLOT ));
    MX2 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I4_P0N_0_1  (.A(
        \COREABC_0/ACCUMULATOR[4] ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I4_P0N_a1_0 ), .S(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_7_mux_1 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I4_P0N_0_0 ));
    NOR2A \CoreTimer_0/Count_RNIPA8Q6[21]  (.A(\CoreTimer_0/N_21_0 ), 
        .B(\CoreTimer_0/Count[21]_net_1 ), .Y(\CoreTimer_0/N_22_0 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_PWDATA_M[2]  (.A(
        \COREABC_0/UROM.INSTR_DATA[2]_net_1 ), .B(\COREABC_0/MUX1[2] ), 
        .S(\COREABC_0/USE_ACC_1 ), .Y(\COREABC_0_APB3master_PWDATA[2] )
        );
    DFN1C0 \CORESPI_0/USPI/UCC/mtx_state[4]  (.D(
        \CORESPI_0/USPI/UCC/mtx_state_RNO[4]_net_1 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/mtx_state[4]_net_1 ));
    DFN1C1 \CORESPI_0/USPI/UCC/stxs_datareg[1]/U1  (.D(
        \CORESPI_0/USPI/UCC/stxs_datareg[1]/Y ), .CLK(GLA), .CLR(
        \CORESPI_0/USPI/UCC/ssel_rx_q2_RNIBQH6_net_1 ), .Q(
        \CORESPI_0/USPI/UCC/stxs_datareg[1] ));
    NOR2 \COREABC_0/un1_ACCUMULATOR_ADD_m2_0_a2_4  (.A(
        \COREABC_0/ACCUMULATOR[13] ), .B(\COREABC_0/ADD_m1_e_10 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_5_mux_12 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ACCUM_NEXT_iv_1[1]  (.A(
        \COREABC_0/ACCUM_IN[1] ), .B(\COREABC_0/ALUOUT_7_sqmuxa ), .C(
        \COREABC_0/ACCUMULATOR_m[0] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[1] ));
    DFN1E1C0 \CORESPI_0/USPI/UCC/msrxp_frames[1]  (.D(
        \CORESPI_0/USPI/UCC/msrxp_frames_4[1] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/UCC/un1_msrxp_strobe )
        , .Q(\CORESPI_0/USPI/UCC/msrxp_frames[1]_net_1 ));
    NOR2A \CoreTimer_0/Count_RNIG86J8[27]  (.A(\CoreTimer_0/N_28_0 ), 
        .B(\CoreTimer_0/Count[27]_net_1 ), .Y(\CoreTimer_0/N_29_0 ));
    NOR3C \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTl0_RNO  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1[2]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1[3]_net_1 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_c1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTl05 ));
    DFN1C0 \CORESPI_0/USPI/UTXF/counter_q[1]  (.D(
        \CORESPI_0/USPI/UTXF/N_17 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UTXF/counter_q[1]_net_1 ));
    DFN1C0 \CoreTimer_0/PreScale[5]  (.D(\CoreTimer_0/PreScale_n5 ), 
        .CLK(GLA), .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreTimer_0/PreScale[5]_net_1 ));
    AX1B \COREABC_0/un1_ACCUMULATOR_STKPTR_n7  (.A(
        \COREABC_0/STKPTR_2_sqmuxa ), .B(
        \COREABC_0/un1_ACCUMULATOR.STKPTR_51_0 ), .C(\COREABC_0/N_576 )
        , .Y(\COREABC_0/N_1220 ));
    NOR2B \CoreUARTapb_0/m11_e  (.A(\COREABC_0_APB3master_PADDR[4] ), 
        .B(\COREABC_0_APB3master_PADDR[3] ), .Y(
        \CoreTimer_0.iTimInt_m_2 ));
    AX1C \COREABC_0/un1_STKPTRP1_I_7  (.A(\COREABC_0/STKPTR[1] ), .B(
        \COREABC_0/STKPTR[0] ), .C(\COREABC_0/STKPTR[2] ), .Y(
        \COREABC_0/I_7_0 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_m194_0  (.A(\COREABC_0/N_39_1 ), 
        .B(\COREABC_0/SMADDR[1] ), .Y(\COREABC_0/N_195 ));
    MX2 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0_RNO_0[10]  (
        .A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/I_28 ), .B(
        \CoreUARTapb_0/CUARTO1OI[5]_net_1 ), .S(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO08 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_124 ));
    AO1 \CORESPI_0/USPI/URXF/un1_counter_q_1_I_33  (.A(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_pog_array_1_0[0] ), .B(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_1_0[0] ), .C(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_1_1[0] ), .Y(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_2_0[0] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m45_0  (.A(\COREABC_0/N_45_0 ), .B(
        \COREABC_0/N_11_1 ), .S(\COREABC_0/SMADDR_1[2] ), .Y(
        \COREABC_0/N_46_0 ));
    DFN1C0 \CORESPI_0/USPI/URXF/counter_q[1]  (.D(
        \CORESPI_0/USPI/URXF/N_17 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/URXF/counter_q[1]_net_1 ));
    DFN1C1 \CORESPI_0/USPI/UCC/stxs_bitsel[1]  (.D(
        \CORESPI_0/USPI/UCC/stxs_bitsel_6[1] ), .CLK(GLA), .CLR(
        \CORESPI_0/USPI/UCC/ssel_rx_q2_RNIBQH6_net_1 ), .Q(
        \CORESPI_0/USPI/UCC/stxs_bitsel[1]_net_1 ));
    NOR3C \CORESPI_0/USPI/URF/CLK_DIV_RNI592K[5]  (.A(
        \COREABC_0_APB3master_PADDR[2] ), .B(
        \CORESPI_0/USPI/URF/CLK_m2_e_0_1 ), .C(
        \CoreTimer_0.un2_PrescaleEn_0 ), .Y(
        \CORESPI_0/USPI/URF/CLK_DIV_m[5] ));
    NOR3C \CoreTimer_0/iPRDATA_RNO_0[11]  (.A(
        \CoreTimer_0/PrdataNextEn_net_1 ), .B(
        \CORESPI_0.USPI.URF.N_127 ), .C(\CoreTimer_0/Load[11]_net_1 ), 
        .Y(\CoreTimer_0/Load_m[11] ));
    NOR3B \CORESPI_0/USPI/URF/control17_m1_e  (.A(
        \CORESPI_0/USPI/URF/rdata53_m1_e_1 ), .B(
        \COREABC_0_APB3master_PADDR_0[3] ), .C(
        \COREABC_0_APB3master_PADDR[2] ), .Y(
        \CORESPI_0.USPI.URF.control17 ));
    XA1B \CoreTimer_0/Count_RNO[21]  (.A(\CoreTimer_0/Count[21]_net_1 )
        , .B(\CoreTimer_0/N_21_0 ), .C(\CoreTimer_0/un1_PreScale8 ), 
        .Y(\CoreTimer_0/N_428_i ));
    MX2 \COREABC_0/STKPTR[7]/U0  (.A(\COREABC_0/STKPTR[7] ), .B(
        \COREABC_0/N_1220 ), .S(\COREABC_0/STKPTRe ), .Y(
        \COREABC_0/STKPTR[7]/Y ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I80_un1_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N300 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N293 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.I80_un1_Y ));
    NOR3B \CORESPI_0/USPI/URF/control1_RNITERL[7]  (.A(
        \CORESPI_0/USPI/URF/control1_m1_e_2_0 ), .B(
        \CoreTimer_0.DataOut_1_sqmuxa_2 ), .C(
        \CORESPI_0/USPI/URF/N_61 ), .Y(
        \CORESPI_0.USPI.URF.control1_m[7] ));
    XA1C \CORESPI_0/USPI/URXF/un1_counter_q_m_i_a3_0[5]  (.A(
        \CORESPI_0/USPI/URXF/counter_q[5]_net_1 ), .B(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_g_array_12_1[0] ), .C(
        \CORESPI_0/USPI/rx_fifo_read ), .Y(\CORESPI_0/USPI/URXF/N_57 ));
    INV \COREABC_0/ICYCLE_RNI1SLC[0]  (.A(\COREABC_0/ICYCLE[0]_net_1 ), 
        .Y(\COREABC_0/ICYCLE_i[0] ));
    DFN1C0 \CORESPI_0/USPI/UCC/mtx_state[3]  (.D(
        \CORESPI_0/USPI/UCC/mtx_state_RNO[3]_net_1 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/mtx_state[3]_net_1 ));
    NOR2A \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_RNO[2]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[3]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_123 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_11[2] ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNI1KVCC1  (.A(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[3] ), .B(
        \COREABC_0/PRDATA_M_m[3] ), .C(
        \COREABC_0/un1_ACCUMULATOR_m[3] ), .Y(
        \COREABC_0/ACCUM_NEXT[3] ));
    XA1B \CoreTimer_0/PreScale_RNO[5]  (.A(
        \CoreTimer_0/PreScale[5]_net_1 ), .B(\CoreTimer_0/PreScale_c4 )
        , .C(\CoreTimer_0/PreScale8 ), .Y(\CoreTimer_0/PreScale_n5 ));
    NOR2A \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0Il_RNO_0  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0Il_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_110 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_110_mux ));
    NOR2B \CORESPI_0/USPI/UCC/stxs_dataerr_RNO_0  (.A(
        \CORESPI_0/USPI/UCC/stxs_checkorun ), .B(
        \CORESPI_0/USPI/UCC/stxs_state_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/stxs_checkorun_m_0 ));
    DFN1C0 \CORESPI_0/USPI/UCC/msrxp_strobe  (.D(
        \CORESPI_0/USPI/UCC/msrxp_alldone_0_sqmuxa ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(\CORESPI_0/USPI/rx_fifo_write ));
    NOR2 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I3_G0N_a0  (.A(
        \COREABC_0/r_m1_N_6_mux_0 ), .B(\COREABC_0/RAMRDATA[3] ), .Y(
        \COREABC_0/ADD_16x16_fast_I3_G0N_a0 ));
    DFN1E1 \CORESPI_0/USPI/URXF/fifo_mem_q_fifo_mem_q_ram2_[2]  (.D(
        \CORESPI_0/USPI/rx_fifo_data_in[1] ), .CLK(GLA), .E(
        \CORESPI_0/USPI/URXF/awe2 ), .Q(\CORESPI_0/USPI/URXF/ram2_2 ));
    MX2 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0Il_RNO  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_110_mux ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_131_mux ), .S(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_138 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0Il_4 ));
    NOR3A \COREABC_0/un1_ACCUMULATOR_STKPTR_1_sqmuxa_1  (.A(
        \COREABC_0/ICYCLE[0]_net_1 ), .B(\COREABC_0/ICYCLE[1]_net_1 ), 
        .C(\COREABC_0/DOISR_0 ), .Y(\COREABC_0/N_493_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m159_0  (.A(\COREABC_0/N_158 ), .B(
        \COREABC_0/N_159_0 ), .S(\COREABC_0/SMADDR_1[1] ), .Y(
        \COREABC_0/N_160_0 ));
    AND3 \COREABC_0/un37_SMADDR_I_29  (.A(\COREABC_0/SMADDR[6] ), .B(
        \COREABC_0/SMADDR[7] ), .C(\COREABC_0/SMADDR[8] ), .Y(
        \COREABC_0/un37_SMADDR.U1.DWACT_FINC_E[5] ));
    XOR2 \CORESPI_0/USPI/UCC/clk_div_val_reg_RNIQA3C[7]  (.A(
        \CORESPI_0/USPI/UCC/clk_div_val_reg[7]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/spi_clk_count[7]_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/spi_clk_nextd4_7 ));
    AO1 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_1[6]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA_i_1[6] ), .B(
        \COREABC_0_APB3master_PADDR[12] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_0[6]_net_1 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_1[6]_net_1 ));
    MX2C \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I7_P0N_0  (.A(
        \COREABC_0/d_N_5_mux_1 ), .B(
        \COREABC_0/Ram256x16_R0C0_RNIENH81_1 ), .S(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_5_mux_2 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N226 ));
    MX2 \COREABC_0/SMADDR_0[0]/U0  (.A(\COREABC_0/SMADDR_21[0] ), .B(
        \COREABC_0/SMADDR_0[0] ), .S(\COREABC_0/un1_ICYCLE_6 ), .Y(
        \COREABC_0/SMADDR_0[0]/Y ));
    MX2C \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I3_P0N_0  (.A(
        \COREABC_0/d_N_5_mux_3 ), .B(
        \COREABC_0/Ram256x16_R0C0_RNI8F5K2_0 ), .S(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_5_mux_5 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N214 ));
    OA1A \CORESPI_0/USPI/UCC/stxs_txzeros_RNO  (.A(
        \CORESPI_0/USPI/UCC/stxs_state_net_1 ), .B(
        \CORESPI_0/USPI/UCC/stxs_checkorun_1_sqmuxa ), .C(
        \CORESPI_0/USPI/UCC/clock_rx_fe ), .Y(
        \CORESPI_0/USPI/UCC/N_615 ));
    DFN1P0 \COREABC_0/SMADDR[5]/U1  (.D(\COREABC_0/SMADDR[5]/Y ), .CLK(
        GLA), .PRE(\COREABC_0/genblk2.RSTSYNC2_1_net_1 ), .Q(
        \COREABC_0/SMADDR[5] ));
    DFN1E1C0 \CoreUARTapb_0/CUARTOOII[5]  (.D(\CoreUARTapb_0/N_59_0 ), 
        .CLK(GLA), .CLR(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/N_124_mux ), .Q(
        \CoreUARTapb_0/CUARTOOII[5]_net_1 ));
    NOR2B \CoreTimer_0/CountPulse_RNO_11  (.A(
        \CoreTimer_0/NextCountPulse_0_sqmuxa_2_3 ), .B(
        \CoreTimer_0/PreScale_c3 ), .Y(
        \CoreTimer_0/NextCountPulse_0_sqmuxa_3 ));
    NOR3A \CORESPI_0/USPI/URF/int_raw_27_i_a2_0_0[7]  (.A(
        \COREABC_0_APB3master_PADDR[2] ), .B(\CORESPI_0/USPI/URF/N_63 )
        , .C(\CORESPI_0/USPI/URF/N_61 ), .Y(
        \CORESPI_0/USPI/URF/int_raw_27_i_a2_0_0[7]_net_1 ));
    DFN1C0 \CORESPI_0/USPI/UCC/ssel_rx_q2  (.D(
        \CORESPI_0/USPI/UCC/ssel_rx_q1_net_1 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(\CORESPI_0/USPI/UCC/ssel_rx_q2_net_1 )
        );
    DFN1E1C0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0[1]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_40 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_384 ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0[1]_net_1 ));
    NOR2B \CORESPI_0/USPI/URF/cfg_ssel_RNIARKT[0]  (.A(
        \CORESPI_0/USPI/cfg_ssel[0] ), .B(
        \CORESPI_0.USPI.URF.control19 ), .Y(
        \CORESPI_0.USPI.URF.cfg_ssel_m[0] ));
    DFN1C0 \COREABC_0/ACCUMULATOR[3]/U1  (.D(
        \COREABC_0/ACCUMULATOR[3]/Y ), .CLK(GLA), .CLR(
        \COREABC_0/genblk2.RSTSYNC2_0_net_1 ), .Q(
        \COREABC_0/ACCUMULATOR[3] ));
    NOR2A \CORESPI_0/USPI/UCC/mtx_state_RNIC3SP[4]  (.A(
        \CORESPI_0/USPI/UCC/N_91 ), .B(
        \CORESPI_0/USPI/UCC/mtx_state_RNINJM1[1]_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/N_79 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m254_0  (.A(\COREABC_0/N_253_0 ), 
        .B(\COREABC_0/N_254_0 ), .S(\COREABC_0/SMADDR_0[5] ), .Y(
        \COREABC_0/N_255_0 ));
    DFN1C0 \CORESPI_0/USPI/UCC/spi_clk_count[7]  (.D(
        \CORESPI_0/USPI/UCC/spi_clk_count_n7 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/spi_clk_count[7]_net_1 ));
    NOR3C \CORESPI_0/USPI/URF/int_raw_RNO_0[7]  (.A(
        \CoreTimer_0.DataOut_1_sqmuxa_2 ), .B(
        \CORESPI_0/USPI/URF/int_raw_27_i_a2_0_0[7]_net_1 ), .C(
        \COREABC_0_APB3master_PWDATA[7] ), .Y(
        \CORESPI_0/USPI/URF/N_82 ));
    IOIN_IB \SPISDI_pad/U0/U1  (.YIN(\SPISDI_pad/U0/NET1 ), .Y(
        SPISDI_c));
    DFN1C0 \CORESPI_0/USPI/URXF/wr_pointer_q[0]  (.D(
        \CORESPI_0/USPI/URXF/wr_pointer_q_3[0] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/URXF/wr_pointer_q[0]_net_1 ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNI241OK  (.A(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_2[11] ), .B(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[11] ), .C(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_3[11] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[11] ));
    AO1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I67_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N276 ), .B(
        \COREABC_0/un33_ZREGISTER.N204 ), .C(
        \COREABC_0/un33_ZREGISTER.N275 ), .Y(
        \COREABC_0/un33_ZREGISTER.N306 ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_m223_e  (.A(\COREABC_0/SMADDR[1] )
        , .B(\COREABC_0/SMADDR[2] ), .Y(\COREABC_0/N_279 ));
    OR3C \CORESPI_0/USPI/UTXF/full_out_RNO  (.A(
        \CORESPI_0/USPI/UTXF/full_out_2_0_a3_2 ), .B(
        \CORESPI_0/USPI/UTXF/full_out_2_0_a3_1 ), .C(
        \CORESPI_0/USPI/UTXF/N_34 ), .Y(
        \CORESPI_0/USPI/UTXF/full_out_2 ));
    AO1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I32_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N219 ), .B(
        \COREABC_0/un33_ZREGISTER.N223 ), .C(
        \COREABC_0/un33_ZREGISTER.N222 ), .Y(
        \COREABC_0/un33_ZREGISTER.N267 ));
    XA1 \CORESPI_0/USPI/UCC/spi_clk_count_RNO[3]  (.A(
        \CORESPI_0/USPI/UCC/spi_clk_count_c2 ), .B(
        \CORESPI_0/USPI/UCC/spi_clk_count[3]_net_1 ), .C(
        \CORESPI_0/USPI/UCC/spi_clk_count_1_sqmuxa ), .Y(
        \CORESPI_0/USPI/UCC/spi_clk_count_n3 ));
    NOR3C \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_4[1]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_1[1]_net_1 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_0[1]_net_1 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_3[1]_net_1 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_4[1]_net_1 ));
    OA1A \COREABC_0/un1_ACCUMULATOR_PWDATA_M_v[0]  (.A(
        \COREABC_0/UROM.INSTR_SCMD[1]_net_1 ), .B(
        \COREABC_0/UROM.INSTR_CMD[0]_net_1 ), .C(
        \COREABC_0/ACCUMULATOR[0] ), .Y(\COREABC_0/MUX1[0] ));
    DFN1P0 \COREABC_0/SMADDR_0[3]/U1  (.D(\COREABC_0/SMADDR_0[3]/Y ), 
        .CLK(GLA), .PRE(\COREABC_0/genblk2.RSTSYNC2_0_net_1 ), .Q(
        \COREABC_0/SMADDR_0[3] ));
    NOR2B \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I23_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N235 ), .B(
        \COREABC_0/un33_ZREGISTER.N238 ), .Y(
        \COREABC_0/un33_ZREGISTER.N258 ));
    NOR2A \CORESPI_0/USPI/URF/int_raw_RNIOS83[2]  (.A(
        \CORESPI_0.USPI.URF.int_raw[2] ), .B(
        \COREABC_0_APB3master_PADDR[2] ), .Y(
        \CORESPI_0/USPI/URF/int_m1_e_0 ));
    DFN1C0 \CORESPI_0/USPI/URF/int_raw[0]  (.D(
        \CORESPI_0/USPI/URF/N_48 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(\CORESPI_0/USPI/URF/int_raw[0]_net_1 )
        );
    AO1 \CORESPI_0/USPI/URF/control2_RNIPUPC1[6]  (.A(
        \CORESPI_0/USPI/URF/control2[6]_net_1 ), .B(
        \CORESPI_0.USPI.URF.control17 ), .C(
        \CORESPI_0/USPI/URF/control1_m[6] ), .Y(
        \CORESPI_0.USPI.URF.rdata_iv_3_0[6] ));
    DFN1 \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/CUARTOOOI[5]  (.D(
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/CUARTl00I[5] ), 
        .CLK(GLA), .Q(\CoreUARTapb_0/CUARTlOlI/CUARTl1I[5] ));
    DFN1E1C0 \CORESPI_0/USPI/UCC/mtx_lastframe  (.D(
        \CORESPI_0/USPI/tx_fifo_last_out ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(
        \CORESPI_0/USPI/UCC/mtx_lastframe_1_sqmuxa ), .Q(
        \CORESPI_0/USPI/UCC/mtx_lastframe_net_1 ));
    XA1B \CoreTimer_0/Count_RNO[23]  (.A(\CoreTimer_0/Count[23]_net_1 )
        , .B(\CoreTimer_0/N_23_0 ), .C(\CoreTimer_0/un1_PreScale8 ), 
        .Y(\CoreTimer_0/N_430_i ));
    DFN1E1C0 \CoreUARTapb_0/CUARTlOlI/CUARTO1I[6]  (.D(
        \COREABC_0_APB3master_PWDATA[6] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTlOlI/CUARTO1I5 ), 
        .Q(\CoreUARTapb_0/CUARTlOlI/CUARTO1I[6]_net_1 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_m129_0  (.A(\COREABC_0/N_22_1 ), 
        .B(\COREABC_0/SMADDR[3] ), .Y(\COREABC_0/N_130_0 ));
    DFN1E1C0 \CORESPI_0/USPI/URF/cfg_ssel[1]  (.D(
        \COREABC_0_APB3master_PWDATA[1] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/URF/N_119 ), .Q(
        \CORESPI_0/USPI/URF/cfg_ssel[1]_net_1 ));
    OR2 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIU2K9L4  (.A(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[13] ), .B(
        \COREABC_0/un1_ACCUMULATOR_m[13] ), .Y(
        \COREABC_0/ACCUM_NEXT[13] ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIMOL653  (.A(
        \COREABC_0/un1_ACCUMULATOR[8] ), .B(
        \COREABC_0/un1_ACCUM_NEXT9_1 ), .C(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[8] ), .Y(
        \COREABC_0/ACCUM_NEXT[8] ));
    AND3B \COREABC_0/un1_ACCUMULATOR_m7_0  (.A(\COREABC_0/SMADDR[7] ), 
        .B(\COREABC_0/SMADDR[9] ), .C(
        \COREABC_0/un1_ACCUMULATOR.m7_0_2 ), .Y(
        \COREABC_0/N_274_mux_0 ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_ADD_m1_0_a2_0_1  (.A(
        \COREABC_0/un1_ACCUMULATOR.N211 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N208 ), .C(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_6_0 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_m1_0_a2_0_1 ));
    XOR2 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I118_Y_0  (.A(
        \COREABC_0/ZREGISTER[12] ), .B(
        \COREABC_0_APB3master_PWDATA[12] ), .Y(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I118_Y_0 ));
    OR2 \CORESPI_0/USPI/URF/control15_0_o2  (.A(
        \COREABC_0_APB3master_PADDR[6] ), .B(
        \COREABC_0_APB3master_PADDR[5] ), .Y(\CORESPI_0/USPI/URF/N_61 )
        );
    NOR2B \CORESPI_0/USPI/UCC/mtx_re_q2_RNILHVH  (.A(
        \CORESPI_0/USPI/UCC/mtx_re_q1_net_1 ), .B(
        \CORESPI_0/USPI/UCC/mtx_re_q2_i_0 ), .Y(
        \CORESPI_0/USPI/UCC/mtx_re_d ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m224_0  (.A(\COREABC_0/N_222_0 ), 
        .B(\COREABC_0/N_279_mux ), .S(\COREABC_0/SMADDR[5] ), .Y(
        \COREABC_0/N_225_0 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_SMADDR_21[1]  (.A(\COREABC_0/N_437 )
        , .B(\COREABC_0/N_424 ), .S(\COREABC_0/SMADDR_0_sqmuxa_1 ), .Y(
        \COREABC_0/SMADDR_21[1] ));
    INV \CoreUARTapb_0/CUARTlOlI/genblk1.RXRDY_RNITIJ9  (.A(RXRDY), .Y(
        RXRDY_i));
    AX1D \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I112_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N300 ), .B(
        \COREABC_0/un33_ZREGISTER.I86_un1_Y ), .C(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I112_Y_0 ), .Y(
        \COREABC_0/un33_ZREGISTER[6] ));
    NOR2B \CORESPI_0/USPI/UCC/mtx_bitsel_RNIVH1I2[1]  (.A(
        \CORESPI_0/USPI/UCC/N_50 ), .B(\CORESPI_0/USPI/UCC/N_49 ), .Y(
        \CORESPI_0/USPI/UCC/mtx_lastframe_1_sqmuxa ));
    DFN1 \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/CUARTOOOI[3]  (.D(
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/CUARTl00I[3] ), 
        .CLK(GLA), .Q(\CoreUARTapb_0/CUARTlOlI/CUARTl1I[3] ));
    NOR3A \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTI0_RNO  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO08 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTI0_17_i_0 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_111 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTI0_RNO ));
    NOR3C \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il_RNIVDB11[0]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0I5_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0I5_0 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0_239_d ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0I5 ));
    DFN1E1C0 \CoreUARTapb_0/CUARTl0OI[5]  (.D(
        \COREABC_0_APB3master_PWDATA[5] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTl0OI4 ), .Q(
        \CoreUARTapb_0/CUARTl0OI[5]_net_1 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ACCUMULATOR_m[6]  (.A(
        \COREABC_0/ACCUMULATOR[6] ), .B(\COREABC_0/ALUOUT_6_sqmuxa ), 
        .Y(\COREABC_0/ACCUMULATOR_m[6] ));
    DFN1C0 \CORESPI_0/USPI/UCC/txfifo_datadelay[2]  (.D(
        \CORESPI_0/USPI/tx_fifo_data_out[2] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/txfifo_datadelay[2]_net_1 ));
    XA1 \CORESPI_0/USPI/UCC/spi_clk_count_RNO[2]  (.A(
        \CORESPI_0/USPI/UCC/spi_clk_count_c1 ), .B(
        \CORESPI_0/USPI/UCC/spi_clk_count[2]_net_1 ), .C(
        \CORESPI_0/USPI/UCC/spi_clk_count_1_sqmuxa ), .Y(
        \CORESPI_0/USPI/UCC/spi_clk_count_n2 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_xhdl_41.flagvalue_3  (.A(
        \COREABC_0/ACCUM_NEG ), .B(
        \COREABC_0/UROM.INSTR_DATA[2]_net_1 ), .C(
        \COREABC_0/xhdl_41.xhdl_40_l6.un25_flagvalue ), .Y(
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.flagvalue_3 ));
    XA1 \COREABC_0/un1_ACCUMULATOR_un1_ACCUMULATOR_m[11]  (.A(
        \COREABC_0/un1_ACCUMULATOR.N356 ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I117_Y_0 ), .C(
        \COREABC_0/un1_ACCUM_NEXT9_1 ), .Y(
        \COREABC_0/un1_ACCUMULATOR_m[11] ));
    DFN1C0 \COREABC_0/genblk2.RSTSYNC2_2  (.D(
        \COREABC_0/genblk2.RSTSYNC1_net_1 ), .CLK(GLA), .CLR(
        NSYSRESET_c), .Q(\COREABC_0/genblk2.RSTSYNC2_2_net_1 ));
    AO1 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_RNO[0]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIIl ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[0]_net_1 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_58 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_ns[0] ));
    NOR2B \CoreTimer_0/PreScale_RNIIAR5[8]  (.A(
        \CoreTimer_0/PreScale[8]_net_1 ), .B(
        \CoreTimer_0/NextCountPulse_0_sqmuxa_7_7 ), .Y(
        \CoreTimer_0/PreScale_c8 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I60_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N271 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N268 ), .C(
        \COREABC_0/un1_ACCUMULATOR.N267 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N298 ));
    DFN1E1C0 \CoreUARTapb_0/CUARTO1OI[2]  (.D(
        \COREABC_0_APB3master_PWDATA[2] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTO1OI4 ), .Q(
        \CoreUARTapb_0/CUARTO1OI[2]_net_1 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I31_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N223 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N226 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N266 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m242_0  (.A(\COREABC_0/N_240_0 ), 
        .B(\COREABC_0/N_242 ), .S(\COREABC_0/SMADDR_0[5] ), .Y(
        \COREABC_0/N_243_0 ));
    MX2 \CORESPI_0/USPI/UCC/stxs_strobetx/U0  (.A(
        \CORESPI_0/USPI/UCC/stxs_strobetx ), .B(
        \CORESPI_0/USPI/UCC/stxs_strobetx_0_sqmuxa ), .S(
        \CORESPI_0/USPI/UCC/N_616 ), .Y(
        \CORESPI_0/USPI/UCC/stxs_strobetx/Y ));
    AX1D \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I120_Y  (.A(
        \COREABC_0/un33_ZREGISTER.I93_un1_Y ), .B(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I93_Y_2 ), .C(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I120_Y_0 ), .Y(
        \COREABC_0/un33_ZREGISTER[14] ));
    XOR2 \CORESPI_0/USPI/UTXF/un1_counter_q_0_I_11  (.A(
        \CORESPI_0/USPI/UTXF/counter_q[3]_net_1 ), .B(
        \CORESPI_0/USPI/UTXF/counter_d_0_sqmuxa_0 ), .Y(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_pog_array_0_2[0] ));
    XA1B \CoreTimer_0/Count_RNO[25]  (.A(\CoreTimer_0/Count[25]_net_1 )
        , .B(\CoreTimer_0/N_26_0 ), .C(\CoreTimer_0/un1_PreScale8_0_0 )
        , .Y(\CoreTimer_0/N_43_0 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_PWDATA_M[1]  (.A(
        \COREABC_0/UROM.INSTR_DATA[1]_net_1 ), .B(\COREABC_0/MUX1[1] ), 
        .S(\COREABC_0/USE_ACC_1 ), .Y(\COREABC_0_APB3master_PWDATA[1] )
        );
    NOR2A \CORESPI_0/USPI/UCC/SYNC3_msrxp_strobe_RNI1LDN  (.A(
        \CORESPI_0/USPI/UCC/SYNC2_msrxp_strobe_net_1 ), .B(
        \CORESPI_0/USPI/UCC/SYNC3_msrxp_strobe_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/msrxp_alldone_0_sqmuxa ));
    AO1 \CoreTimer_0/iPRDATA_RNO[13]  (.A(
        \CoreTimer_0/Count[13]_net_1 ), .B(
        \CoreTimer_0/DataOut_1_sqmuxa_net_1 ), .C(
        \CoreTimer_0/Load_m[13] ), .Y(\CoreTimer_0/PrdataNext_1[13] ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_ACCUMULATOR_m_0[8]  (.A(
        \COREABC_0/un1_ACCUMULATOR.ALUOUT_5_sqmuxa_0 ), .B(
        \COREABC_0/ACCUMULATOR[8] ), .C(\COREABC_0/xhdl_31.MSEL[1] ), 
        .Y(\COREABC_0/ACCUMULATOR_m_0[8] ));
    DFN1E1C0 \CoreTimer_0/Load[10]  (.D(
        \COREABC_0_APB3master_PWDATA[10] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreTimer_0/LoadEn_net_1 ), .Q(
        \CoreTimer_0/Load[10]_net_1 ));
    NOR2B \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTl0_RNI1LGP  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTl0_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTIl ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTll ));
    NOR2 
        \COREABC_0/un1_ACCUMULATOR_xhdl_41.xhdl_40_l3.un13_flagvalue_2  
        (.A(\COREABC_0/ZREGISTER[0] ), .B(\COREABC_0/ZREGISTER[11] ), 
        .Y(
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.xhdl_40_l3.un13_flagvalue_2 )
        );
    NOR3A 
        \COREABC_0/un1_ACCUMULATOR_xhdl_41.xhdl_40_l3.un13_flagvalue_8  
        (.A(\COREABC_0/UROM.INSTR_DATA[3]_net_1 ), .B(
        \COREABC_0/ZREGISTER[14] ), .C(\COREABC_0/ZREGISTER[15] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.xhdl_40_l3.un13_flagvalue_8 )
        );
    NOR3B \CORESPI_0/USPI/UTXF/fifo_mem_q_awe2  (.A(
        \CORESPI_0/USPI/UTXF/fifo_mem_d[3]_0_sqmuxa ), .B(
        \CORESPI_0/USPI/UTXF/wr_pointer_q[1]_net_1 ), .C(
        \CORESPI_0/USPI/UTXF/wr_pointer_q[0]_net_1 ), .Y(
        \CORESPI_0/USPI/UTXF/awe2 ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIL99CK  (.A(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_0[10] ), .B(
        \COREABC_0/ACCUMULATOR_m[11] ), .C(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_4[10] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5[10] ));
    AO1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I54_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N265 ), .B(
        \COREABC_0/un33_ZREGISTER.N262 ), .C(
        \COREABC_0/un33_ZREGISTER.N261 ), .Y(
        \COREABC_0/un33_ZREGISTER.N292 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ACCUM_NEXT_iv_1[13]  (.A(
        \COREABC_0/ACCUM_IN[13] ), .B(\COREABC_0/ALUOUT_7_sqmuxa ), .C(
        \COREABC_0/ACCUMULATOR_m_0[12] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[13] ));
    XA1B \CoreTimer_0/Count_RNO[28]  (.A(\CoreTimer_0/Count[28]_net_1 )
        , .B(\CoreTimer_0/N_29_0 ), .C(\CoreTimer_0/un1_PreScale8_0_0 )
        , .Y(\CoreTimer_0/N_37_0 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m147_0  (.A(\COREABC_0/N_147_0 ), 
        .B(\COREABC_0/N_34_1 ), .S(\COREABC_0/SMADDR_1[1] ), .Y(
        \COREABC_0/N_148_0 ));
    DFN1C0 \CORESPI_0/USPI/UCC/SYNC2_stxp_dataerr  (.D(
        \CORESPI_0/USPI/UCC/SYNC1_stxp_dataerr_net_1 ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/SYNC2_stxp_dataerr_net_1 ));
    NOR2 \CORESPI_0/USPI/UTXF/counter_q_RNO[3]  (.A(
        \CORESPI_0/USPI/UTXF/N_38 ), .B(\CORESPI_0/USPI/fiforsttx ), 
        .Y(\CORESPI_0/USPI/UTXF/N_15 ));
    OR2A \CORESPI_0/USPI/UCC/spi_clk_tick_RNI62AN  (.A(
        \CORESPI_0/USPI/UCC/spi_clk_tick_net_1 ), .B(
        \CORESPI_0/USPI/SPISS_2[0] ), .Y(\CORESPI_0/USPI/UCC/N_53 ));
    XA1 \COREABC_0/un1_ACCUMULATOR_xhdl_31.ALUOUT_5_m[7]  (.A(
        \COREABC_0/ACCUMULATOR[7] ), .B(\COREABC_0/ACCUM_IN[7] ), .C(
        \COREABC_0/ALUOUT_3_sqmuxa ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_5_m[7] ));
    DFN1P0 \CORESPI_0/USPI/UCC/rx_alldone  (.D(
        \CORESPI_0/USPI/UCC/msrxp_alldone_i ), .CLK(GLA), .PRE(
        COREABC_0_PRESETN_0), .Q(\CORESPI_0/USPI/rx_done_i_0 ));
    NOR3B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_2[2]  (.A(
        \COREABC_0_APB3master_PADDR[13] ), .B(
        \CORESPI_0.USPI.un1_PADDR ), .C(
        \CORESPI_0.USPI.rx_fifo_data_out[2] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_2[2]_net_1 ));
    AO1 \CORESPI_0/USPI/UTXF/un1_counter_q_0_I_27  (.A(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_pog_array_0[0] ), .B(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_TMP_2[0] ), .C(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_0_1[0] ), .Y(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_1_0[0] ));
    NOR3C \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTOOI_RNIBIU72  
        (.A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_0_sqmuxa_2_2 ), 
        .B(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_0_sqmuxa_2_1 ), 
        .C(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_c1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_0_sqmuxa_2 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m166_0  (.A(\COREABC_0/N_166_0 ), 
        .B(\COREABC_0/N_14_1 ), .S(\COREABC_0/SMADDR[1] ), .Y(
        \COREABC_0/N_167_0 ));
    NOR3C \CoreTimer_0/iPRDATA_RNO_2[2]  (.A(
        \CoreTimer_0/PrdataNextEn_net_1 ), .B(
        \CORESPI_0.USPI.URF.N_127 ), .C(\CoreTimer_0/Load[2]_net_1 ), 
        .Y(\CoreTimer_0/Load_m[2] ));
    NOR3C \CoreTimer_0/iPRDATA_RNO_0[4]  (.A(
        \CoreTimer_0/PrdataNextEn_net_1 ), .B(
        \CORESPI_0.USPI.URF.N_127 ), .C(\CoreTimer_0/Load[4]_net_1 ), 
        .Y(\CoreTimer_0/Load_m[4] ));
    NOR3A \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0_RNO[2]  (
        .A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_116 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_RNII49F8[0]_net_1 ), 
        .C(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/un1_CUARTO0_0_sqmuxa_2 ), 
        .Y(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_35[2] ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_ACCUMULATOR_m_0[2]  (.A(
        \COREABC_0/un1_ACCUMULATOR.ALUOUT_5_sqmuxa_0 ), .B(
        \COREABC_0/ACCUMULATOR[2] ), .C(\COREABC_0/xhdl_31.MSEL[1] ), 
        .Y(\COREABC_0/ACCUMULATOR_m_0[2] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m179_0  (.A(\COREABC_0/N_178 ), .B(
        \COREABC_0/N_179_0 ), .S(\COREABC_0/SMADDR[5] ), .Y(
        \COREABC_0/N_180 ));
    NOR3C \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I94_un1_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N295 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N287 ), .C(
        \COREABC_0/un1_ACCUMULATOR.N371 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.I94_un1_Y ));
    AO1A \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I0_CO1_0  (.A(
        \COREABC_0/UROM.INSTR_SCMD_RNIOF7U[1]_net_1 ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I0_CO1_0_a2_out ), 
        .C(\COREABC_0/ADD_16x16_fast_I0_CO1_0_a0 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I0_CO1_0 ));
    XNOR2 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/un3_CUARTO0_I_9  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_11 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[3] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/I_9 ));
    OR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2_3[0]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a1[0]_net_1 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2_1[0]_net_1 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_3[0]_net_1 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2_3[0]_net_1 ));
    AXOI5 \COREABC_0/URAM.UR/UG3.UR_xhdl12/Ram256x16_R0C0_RNIND8B_0  (
        .A(\COREABC_0/r_m1tt_N_3_mux ), .B(\COREABC_0/RAMRDATA[3] ), 
        .C(\COREABC_0_APB3master_PADDR[12] ), .Y(
        \COREABC_0/URAM.UR/UG3.UR_xhdl12/r_m1_0_0 ));
    MX2 \COREABC_0/ACCUMULATOR[13]/U0  (.A(\COREABC_0/ACCUMULATOR[13] )
        , .B(\COREABC_0/ACCUM_NEXT[13] ), .S(\COREABC_0/ACCUMULATOR4 ), 
        .Y(\COREABC_0/ACCUMULATOR[13]/Y ));
    DFN1E1C0 \CORESPI_0/USPI/URF/control1[1]  (.D(
        \COREABC_0_APB3master_PWDATA[1] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/URF/N_118 ), .Q(
        \CORESPI_0.USPI.SPIMODE ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I2_G0N_a1  (.A(
        \COREABC_0/r_m1_N_6_mux ), .B(
        \COREABC_0/UROM.INSTR_DATA[2]_net_1 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_4_0_0 ));
    DFN1C0 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[1]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[6]_net_1 ), .CLK(
        GLA), .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[1]_net_1 ));
    DFN1E1P0 \CoreTimer_0/Count[16]  (.D(\CoreTimer_0/N_49_0 ), .CLK(
        GLA), .PRE(COREABC_0_PRESETN_0), .E(\CoreTimer_0/Counte_0 ), 
        .Q(\CoreTimer_0/Count[16]_net_1 ));
    OR3 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/un3_CUARTO0_I_13  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/DWACT_FDEC_E[0] ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[3] ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[4] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_9 ));
    MX2 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0_RNO_0[7]  (
        .A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/I_20 ), .B(
        \CoreUARTapb_0/CUARTl0OI[7]_net_1 ), .S(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO08 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_121 ));
    MX2 \COREABC_0/DOISR_0/U0  (.A(\COREABC_0/ICYCLE_i[0] ), .B(
        \COREABC_0/DOISR_0 ), .S(\COREABC_0/un1_ICYCLE_8 ), .Y(
        \COREABC_0/DOISR_0/Y ));
    NOR2B \CORESPI_0/USPI/UCC/mtx_bitsel_RNIVH1I2_0[1]  (.A(
        \CORESPI_0/USPI/UCC/N_42 ), .B(\CORESPI_0/USPI/UCC/N_49 ), .Y(
        \CORESPI_0/USPI/UCC/mtx_fiforead_0_sqmuxa ));
    AOI1 \COREABC_0/un1_ACCUMULATOR_ICYCLE_ns_i[0]  (.A(
        \COREABC_0/un1_ACCUMULATOR.ICYCLE_ns_i_a2_1_0[0] ), .B(
        \COREABC_0/un1_ACCUMULATOR.ICYCLE_ns_i_a2_1[0] ), .C(
        \COREABC_0/ICYCLE_1_sqmuxa_1 ), .Y(\COREABC_0/ICYCLE_ns_i[0] ));
    MX2 \CoreTimer_0/Count_RNO_0[1]  (.A(\CoreTimer_0/Count[1]_net_1 ), 
        .B(\CoreTimer_0/Load[1]_net_1 ), .S(
        \CoreTimer_0/un1_PreScale8_0_0 ), .Y(\CoreTimer_0/N_200 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I55_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N266 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N262 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N293 ));
    OR2 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I10_P0N  (.A(
        \COREABC_0/ZREGISTER[10] ), .B(
        \COREABC_0_APB3master_PWDATA[10] ), .Y(
        \COREABC_0/un33_ZREGISTER.N235 ));
    NOR2B \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I3_G0N  (.A(
        \COREABC_0/ZREGISTER[3] ), .B(\COREABC_0_APB3master_PWDATA[3] )
        , .Y(\COREABC_0/un33_ZREGISTER.N213 ));
    DFN1P0 \CoreTimer_0/iPRDATA[5]  (.D(\CoreTimer_0/PrdataNext_1[5] ), 
        .CLK(GLA), .PRE(COREABC_0_PRESETN_0), .Q(
        \CoreAPB3_0_APBmslave0_PRDATA_i_0[5] ));
    XA1 \CORESPI_0/USPI/UCC/msrxp_frames_RNO[1]  (.A(
        \CORESPI_0/USPI/UCC/msrxp_frames[0]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/msrxp_frames[1]_net_1 ), .C(
        \CORESPI_0/USPI/UCC/un1_sresetn_4_i ), .Y(
        \CORESPI_0/USPI/UCC/msrxp_frames_4[1] ));
    DFN1E1 \CORESPI_0/USPI/URXF/fifo_mem_q_fifo_mem_q_ram2_[3]  (.D(
        \CORESPI_0/USPI/rx_fifo_data_in[2] ), .CLK(GLA), .E(
        \CORESPI_0/USPI/URXF/awe2 ), .Q(\CORESPI_0/USPI/URXF/ram2_3 ));
    DFN1E1C0 \CoreTimer_0/Load[12]  (.D(
        \COREABC_0_APB3master_PWDATA[12] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreTimer_0/LoadEn_net_1 ), .Q(
        \CoreTimer_0/Load[12]_net_1 ));
    MX2 \COREABC_0/STKPTR[3]/U0  (.A(\COREABC_0/STKPTR[3] ), .B(
        \COREABC_0/N_1216 ), .S(\COREABC_0/STKPTRe ), .Y(
        \COREABC_0/STKPTR[3]/Y ));
    NOR2B \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_RNIBUIS[1]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1[1]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1[0]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_c1 ));
    NOR3C \CoreTimer_0/DataOut_3_sqmuxa  (.A(
        \COREABC_0_APB3master_PADDR[2] ), .B(
        \CoreTimer_0.un2_PrescaleEn_0 ), .C(
        \CoreTimer_0/PrdataNextEn_net_1 ), .Y(
        \CoreTimer_0/DataOut_3_sqmuxa_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m162_0  (.A(\COREABC_0/N_14_1 ), .B(
        \COREABC_0/N_38_1 ), .S(\COREABC_0/SMADDR_1[2] ), .Y(
        \COREABC_0/N_163_0 ));
    MX2 \COREABC_0/ACCUMULATOR[3]/U0  (.A(\COREABC_0/ACCUMULATOR[3] ), 
        .B(\COREABC_0/ACCUM_NEXT[3] ), .S(\COREABC_0/ACCUMULATOR4 ), 
        .Y(\COREABC_0/ACCUMULATOR[3]/Y ));
    MX2 \COREABC_0/un1_ACCUMULATOR_SMADDR_21[6]  (.A(\COREABC_0/N_442 )
        , .B(\COREABC_0/N_429 ), .S(\COREABC_0/SMADDR_0_sqmuxa_1 ), .Y(
        \COREABC_0/SMADDR_21[6] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_PWDATA_M[4]  (.A(
        \COREABC_0/UROM.INSTR_DATA[4]_net_1 ), .B(\COREABC_0/MUX1[4] ), 
        .S(\COREABC_0/USE_ACC_1 ), .Y(\COREABC_0_APB3master_PWDATA[4] )
        );
    NOR2A \COREABC_0/un1_ACCUMULATOR_ADD_m1_0_a2  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_4_2 ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_5_mux_4 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N262 ));
    MX2 \COREABC_0/STD_ACCUM_ZERO/U0  (.A(\COREABC_0/STD_ACCUM_ZERO ), 
        .B(\COREABC_0/to_logic_2.tmp_6[0] ), .S(\COREABC_0/to_logic10 )
        , .Y(\COREABC_0/STD_ACCUM_ZERO/Y ));
    OR3 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/un3_CUARTO0_I_29  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[6] ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[7] ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[8] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/DWACT_FDEC_E[5] ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_RAMADDR[7]  (.A(
        \COREABC_0/I_20_0 ), .B(\COREABC_0/RAMADDR_1_sqmuxa ), .Y(
        \COREABC_0/RAMADDR[7] ));
    MX2 \CORESPI_0/USPI/UCC/stxs_datareg_RNO[2]  (.A(
        \CORESPI_0/USPI/UCC/N_336 ), .B(
        \CORESPI_0/USPI/tx_fifo_data_out[2] ), .S(
        \CORESPI_0/USPI/UCC/un1_stxs_datareg_2_sqmuxa ), .Y(
        \CORESPI_0/USPI/UCC/stxs_datareg_10[2] ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m184_0  (.A(\COREABC_0/N_18_1 ), .B(
        \COREABC_0/N_184 ), .S(\COREABC_0/SMADDR_0[1] ), .Y(
        \COREABC_0/N_185_0 ));
    DFN1E0P0 \CoreUARTapb_0/CUARTlOlI/CUARTOl0  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTIOl4 ), .CLK(GLA), .PRE(
        COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTOl0_1_sqmuxa ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTOl0_net_1 ));
    DFN1E1C0 \CORESPI_0/USPI/UCC/msrxs_datain[2]  (.D(
        \CORESPI_0/USPI/UCC/msrxs_shiftreg[1]_net_1 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(
        \CORESPI_0/USPI/UCC/msrxs_datain_0_sqmuxa_1 ), .Q(
        \CORESPI_0/USPI/rx_fifo_data_in[2] ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_m49_0  (.A(\COREABC_0/i12_mux_1 ), 
        .B(\COREABC_0/SMADDR[5] ), .Y(\COREABC_0/INSTRUCTION[5] ));
    NOR2 \COREABC_0/un1_ACCUMULATOR_ADD_m3_0_a3_2  (.A(
        \COREABC_0/r_m1_N_6_mux ), .B(\COREABC_0/RAMRDATA[2] ), .Y(
        \COREABC_0/ADD_m3_0_a3_2 ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I1_P0N_a0_0  (.A(
        \COREABC_0/RAMRDATA[1] ), .B(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_1 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I1_P0N_a0_0 ));
    DFN1C0 \COREABC_0/ZREGISTER[15]/U1  (.D(
        \COREABC_0/ZREGISTER[15]/Y ), .CLK(GLA), .CLR(
        \COREABC_0/genblk2.RSTSYNC2_1_net_1 ), .Q(
        \COREABC_0/ZREGISTER[15] ));
    AOI1B \COREABC_0/un1_ACCUMULATOR_m250_0  (.A(
        \COREABC_0/SMADDR_0[3] ), .B(\COREABC_0/SMADDR[6] ), .C(
        \COREABC_0/N_15_1 ), .Y(\COREABC_0/N_251_0 ));
    AX1C \CORESPI_0/USPI/UTXF/un1_counter_q_1_I_26  (.A(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_2[0] ), .B(
        \CORESPI_0/USPI/UTXF/counter_q[4]_net_1 ), .C(
        \CORESPI_0/USPI/UTXF/counter_q[5]_net_1 ), .Y(
        \CORESPI_0/USPI/UTXF/un1_counter_q1[5] ));
    DFN1E1C0 \CoreTimer_0/Load[6]  (.D(
        \COREABC_0_APB3master_PWDATA[6] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreTimer_0/LoadEn_net_1 ), .Q(
        \CoreTimer_0/Load[6]_net_1 ));
    AO1 \CORESPI_0/USPI/UCC/mtx_spi_data_out_RNI7THB1  (.A(
        \CORESPI_0/USPI/UCC/mtx_spi_data_out_net_1 ), .B(
        \CORESPI_0.USPI.SPIMODE ), .C(
        \CORESPI_0/USPI/UCC/spi_data_out_iv_0 ), .Y(SPISDO_c));
    MX2A \COREABC_0/un1_ACCUMULATOR_RAMWDATA_0[0]  (.A(
        \COREABC_0/SMADDR[0] ), .B(\COREABC_0_APB3master_PWDATA[0] ), 
        .S(\COREABC_0/URAM.un1_UROM.INSTR_SLOT ), .Y(\COREABC_0/N_462 )
        );
    DFN1C0 \CORESPI_0/USPI/URF/control2[2]  (.D(
        \CORESPI_0/USPI/URF/N_32 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(\CORESPI_0.USPI.cfg_cmdsize[1] ));
    OR3 \COREABC_0/un1_ACCUMULATOR_STKPTR_49  (.A(
        \COREABC_0/STKPTR[5] ), .B(\COREABC_0/STKPTR_c4 ), .C(
        \COREABC_0/STKPTR_2_sqmuxa ), .Y(\COREABC_0/N_573 ));
    AND3 \COREABC_0/un37_SMADDR_I_16  (.A(
        \COREABC_0/un37_SMADDR.U1.DWACT_FINC_E[0] ), .B(
        \COREABC_0/un37_SMADDR.U1.DWACT_FINC_E[1] ), .C(
        \COREABC_0/SMADDR_0[5] ), .Y(\COREABC_0/un37_SMADDR.N_7 ));
    NOR2B \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I55_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N262 ), .B(
        \COREABC_0/un33_ZREGISTER.N266 ), .Y(
        \COREABC_0/un33_ZREGISTER.N293 ));
    NOR3C \CoreTimer_0/PrescaleEn  (.A(\COREABC_0_APB3master_PADDR[2] )
        , .B(\CoreTimer_0.un2_PrescaleEn_0 ), .C(
        \CoreTimer_0/un4_CtrlEn_net_1 ), .Y(
        \CoreTimer_0/PrescaleEn_net_1 ));
    NOR3C \CORESPI_0/USPI/URF/int_raw_RNO_0[3]  (.A(
        \CoreTimer_0.DataOut_1_sqmuxa_2 ), .B(
        \CORESPI_0/USPI/URF/int_raw_27_i_a2_0_0[7]_net_1 ), .C(
        \COREABC_0_APB3master_PWDATA[3] ), .Y(
        \CORESPI_0/USPI/URF/N_86 ));
    NOR2A \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_RNO_0[4]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[4]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTll ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_52 ));
    XA1B \CoreTimer_0/Count_RNO[27]  (.A(\CoreTimer_0/Count[27]_net_1 )
        , .B(\CoreTimer_0/N_28_0 ), .C(\CoreTimer_0/un1_PreScale8_0_0 )
        , .Y(\CoreTimer_0/N_39_0 ));
    MX2 \CORESPI_0/USPI/URXF/fifo_mem_q_fifo_mem_q_ram1__RNI3BST[4]  (
        .A(\CORESPI_0/USPI/URXF/ram0_4 ), .B(
        \CORESPI_0/USPI/URXF/ram1_4 ), .S(
        \CORESPI_0/USPI/URXF/rd_pointer_q[0]_net_1 ), .Y(
        \CORESPI_0/USPI/URXF/N_35 ));
    AO1 \CORESPI_0/USPI/UTXF/un1_counter_q_0_I_33  (.A(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_pog_array_1_0[0] ), .B(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_1_0[0] ), .C(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_1_1[0] ), .Y(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_g_array_2_0[0] ));
    DFN1E1C0 \CoreTimer_0/CtrlReg[0]  (.D(
        \COREABC_0_APB3master_PWDATA[0] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreTimer_0/CtrlEn_net_1 ), .Q(
        \CoreTimer_0/CtrlReg[0]_net_1 ));
    DFN1E1C0 \CoreUARTapb_0/CUARTl0OI[1]  (.D(
        \COREABC_0_APB3master_PWDATA[1] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTl0OI4 ), .Q(
        \CoreUARTapb_0/CUARTl0OI[1]_net_1 ));
    XA1B \CoreTimer_0/Count_RNO[29]  (.A(\CoreTimer_0/Count[29]_net_1 )
        , .B(\CoreTimer_0/N_30_0 ), .C(\CoreTimer_0/un1_PreScale8_0_0 )
        , .Y(\CoreTimer_0/N_35_0 ));
    NOR3C \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I97_un1_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N293 ), .B(
        \COREABC_0/un33_ZREGISTER.N301 ), .C(
        \COREABC_0/un33_ZREGISTER.N277 ), .Y(
        \COREABC_0/un33_ZREGISTER.I97_un1_Y ));
    NOR2B \CoreTimer_0/iPRDATA_RNO_0[0]  (.A(
        \CoreTimer_0/Count[0]_net_1 ), .B(
        \CoreTimer_0/DataOut_1_sqmuxa_net_1 ), .Y(
        \CoreTimer_0/Count_m[0] ));
    IOIN_IB \NSYSRESET_pad/U0/U1  (.YIN(\NSYSRESET_pad/U0/NET1 ), .Y(
        NSYSRESET_c));
    AO1 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIAIJG5  (.A(
        \COREABC_0/xhdl_31.ALUOUT_4[5] ), .B(
        \COREABC_0/ALUOUT_2_sqmuxa ), .C(
        \COREABC_0/xhdl_31.ALUOUT_5_m[5] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_2[5] ));
    AO1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I98_Y_0  (.A(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I98_un1_Y_0 ), .B(
        \COREABC_0/un33_ZREGISTER.N295 ), .C(
        \COREABC_0/un33_ZREGISTER.N294 ), .Y(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I98_Y_0 ));
    AX1D \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I111_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N302 ), .B(
        \COREABC_0/un33_ZREGISTER.I87_un1_Y ), .C(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I111_Y_0 ), .Y(
        \COREABC_0/un33_ZREGISTER[5] ));
    MX2 \CORESPI_0/USPI/URXF/fifo_mem_q_fifo_mem_q_ram2__RNI1LKU[1]  (
        .A(\CORESPI_0/USPI/URXF/ram2_1 ), .B(
        \CORESPI_0/USPI/URXF/ram3_1 ), .S(
        \CORESPI_0/USPI/URXF/rd_pointer_q[0]_net_1 ), .Y(
        \CORESPI_0/USPI/URXF/N_37 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_IO_IN_m[2]  (.A(
        \CoreTimer_0.iTimInt ), .B(\COREABC_0/ACCUM_NEXT10 ), .Y(
        \COREABC_0/IO_IN_m[2] ));
    NOR2A \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_RNO_1[3]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_159 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[3]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_53 ));
    IOPAD_TRI \TX_pad/U0/U0  (.D(\TX_pad/U0/NET1 ), .E(
        \TX_pad/U0/NET2 ), .PAD(TX));
    AX1 \CoreTimer_0/Count_RNO[5]  (.A(\CoreTimer_0/un1_PreScale8_0 ), 
        .B(\CoreTimer_0/N_5_0 ), .C(\CoreTimer_0/N_208 ), .Y(
        \CoreTimer_0/N_412 ));
    OA1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I93_un1_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N300 ), .B(
        \COREABC_0/un33_ZREGISTER.I86_un1_Y ), .C(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I93_un1_Y_0 ), .Y(
        \COREABC_0/un33_ZREGISTER.I93_un1_Y ));
    DFN1C0 \COREABC_0/genblk2.RSTSYNC2_1  (.D(
        \COREABC_0/genblk2.RSTSYNC1_net_1 ), .CLK(GLA), .CLR(
        NSYSRESET_c), .Q(\COREABC_0/genblk2.RSTSYNC2_1_net_1 ));
    NOR2 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_RNI752I[1]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[1]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l[6]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTI00l20_i_a3_0_a2_0 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m220_0  (.A(\COREABC_0/N_10_1 ), .B(
        \COREABC_0/N_153 ), .S(\COREABC_0/SMADDR_1[2] ), .Y(
        \COREABC_0/N_221 ));
    NOR2 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl_RNI3J0V[2]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl[1]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl[2]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/m17_0 ));
    OR3B \CORESPI_0/USPI/UCC/cfg_enable_P1_RNII4B11  (.A(
        \CORESPI_0/USPI/cfg_enable ), .B(
        \CORESPI_0/USPI/UCC/cfg_enable_P1_net_1 ), .C(
        \CORESPI_0/USPI/tx_fifo_empty ), .Y(\CORESPI_0/USPI/UCC/N_56 ));
    AX1D \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I118_Y  (.A(
        \COREABC_0/un33_ZREGISTER.I95_un1_Y ), .B(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I95_Y_1 ), .C(
        \COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I118_Y_0 ), .Y(
        \COREABC_0/un33_ZREGISTER[12] ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I5_G0N  (.A(
        \COREABC_0/un5[5] ), .B(\COREABC_0/ACCUMULATOR[5] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N219 ));
    NOR2B \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il_RNIOA73[2]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_118 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il[2]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_124 ));
    AND2 \CORESPI_0/USPI/URXF/un1_counter_q_0_I_1  (.A(
        \CORESPI_0/USPI/URXF/counter_q[0]_net_1 ), .B(
        \CORESPI_0/USPI/URXF/counter_d_0_sqmuxa_1_0 ), .Y(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_TMP[0] ));
    NOR2A \CoreTimer_0/Count_RNI29BK1[4]  (.A(\CoreTimer_0/N_4_0 ), .B(
        \CoreTimer_0/Count[4]_net_1 ), .Y(\CoreTimer_0/N_5_0 ));
    DFN1E1C0 \CORESPI_0/USPI/UCC/mtx_datahold[2]  (.D(
        \CORESPI_0/USPI/tx_fifo_data_out[2] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(
        \CORESPI_0/USPI/UCC/mtx_fiforead_0_sqmuxa ), .Q(
        \CORESPI_0/USPI/UCC/mtx_datahold[2]_net_1 ));
    DFN1C0 \COREABC_0/PSELI  (.D(\COREABC_0/PSELI_7 ), .CLK(GLA), .CLR(
        PRESETN), .Q(COREABC_0_APB3master_PSELx));
    MX2 \COREABC_0/ZREGISTER[10]/U0  (.A(\COREABC_0/N_111_0 ), .B(
        \COREABC_0/ZREGISTER[10] ), .S(\COREABC_0/un1_ICYCLE_4 ), .Y(
        \COREABC_0/ZREGISTER[10]/Y ));
    NOR2A \COREABC_0/URAM.UR/UG3.UR_xhdl12/Ram256x16_R0C0_RNIKDQ01  (
        .A(\COREABC_0/RAMRDATA[5] ), .B(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_1 ), .Y(
        \COREABC_0/d_N_3_mux ));
    NOR3 \CoreTimer_0/iPRDATA_RNO[3]  (.A(\CoreTimer_0/Count_m[3] ), 
        .B(\CoreTimer_0/TimerPre_m[3] ), .C(\CoreTimer_0/Load_m[3] ), 
        .Y(\CoreTimer_0/PrdataNext_1[3] ));
    DFN1E1C0 \CORESPI_0/USPI/UCC/msrxs_first  (.D(
        \CORESPI_0/USPI/UCC/msrxs_first_2 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(
        \CORESPI_0/USPI/UCC/msrxs_datain_0_sqmuxa_1 ), .Q(
        \CORESPI_0/USPI/rx_fifo_first_in ));
    NOR2B \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl_RNI661U1[3]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_27_i ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl[3]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_28_i ));
    NOR2B \CORESPI_0/USPI/URF/cfg_ssel_RNIBSKT[1]  (.A(
        \CORESPI_0/USPI/URF/cfg_ssel[1]_net_1 ), .B(
        \CORESPI_0.USPI.URF.control19 ), .Y(
        \CORESPI_0.USPI.URF.cfg_ssel_m[1] ));
    NOR2B \CoreUARTapb_0/CUARTOOII_RNO_0[5]  (.A(
        \CoreUARTapb_0/CUARTOIII[5] ), .B(\CORESPI_0.USPI.URF.N_120_1 )
        , .Y(\CoreUARTapb_0/N_57_0 ));
    DFN1E1C0 \CoreUARTapb_0/genblk1.CUARTI1OI[2]  (.D(
        \COREABC_0_APB3master_PWDATA[2] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTI1OI4 ), .Q(
        \CoreUARTapb_0/CUARTI1OI[2] ));
    NOR2 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I23_Y_a1  (.A(
        \COREABC_0/RAMRDATA[10] ), .B(\COREABC_0/ACCUMULATOR[10] ), .Y(
        \COREABC_0/ADD_16x16_fast_I23_Y_a1 ));
    NOR2B \CoreUARTapb_0/CUARTOOII_RNO_0[6]  (.A(
        \CoreUARTapb_0/CUARTOIII[6] ), .B(\CORESPI_0.USPI.URF.N_120_1 )
        , .Y(\CoreUARTapb_0/N_54_0 ));
    DFN1E1P0 \CoreTimer_0/Count[21]  (.D(\CoreTimer_0/N_428_i ), .CLK(
        GLA), .PRE(COREABC_0_PRESETN_0), .E(\CoreTimer_0/Counte_0 ), 
        .Q(\CoreTimer_0/Count[21]_net_1 ));
    NOR3C \CoreTimer_0/iPRDATA_RNO_0[14]  (.A(
        \CoreTimer_0/PrdataNextEn_net_1 ), .B(
        \CORESPI_0.USPI.URF.N_127 ), .C(\CoreTimer_0/Load[14]_net_1 ), 
        .Y(\CoreTimer_0/Load_m[14] ));
    AND2 \COREABC_0/un1_ACCUMULATOR_ADD_m1_0_a2_0  (.A(
        \COREABC_0/un1_ACCUMULATOR.N217 ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_m1_0_a2_0_1 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N303 ));
    DFN1E1C0 \CoreTimer_0/Load[13]  (.D(
        \COREABC_0_APB3master_PWDATA[13] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreTimer_0/LoadEn_net_1 ), .Q(
        \CoreTimer_0/Load[13]_net_1 ));
    NOR2B \CORESPI_0/USPI/URF/control2_RNIREUM[4]  (.A(
        \CORESPI_0/USPI/URF/control2[4]_net_1 ), .B(
        \CORESPI_0.USPI.URF.control17 ), .Y(
        \CORESPI_0/USPI/URF/control2_m[4] ));
    DFN1E1C0 \CoreUARTapb_0/CUARTl0OI[0]  (.D(
        \COREABC_0_APB3master_PWDATA[0] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTl0OI4 ), .Q(
        \CoreUARTapb_0/CUARTl0OI[0]_net_1 ));
    AO1 \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_RNO[5]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_ns_0_a2_0[5] ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_87 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_44 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_ns[5] ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I13_G0N  (.A(
        \COREABC_0/un5[13] ), .B(\COREABC_0/ACCUMULATOR[13] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N243 ));
    DFN1E1C0 \CORESPI_0/USPI/URF/CLK_DIV[7]  (.D(
        \COREABC_0_APB3master_PWDATA[7] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CORESPI_0/USPI/URF/N_120 ), .Q(
        \CORESPI_0/USPI/clk_div_val[7] ));
    XOR2 \COREABC_0/URAM.UR/UG3.UR_xhdl12/Ram256x16_R0C0_RNIENH81  (.A(
        \COREABC_0/RAMRDATA[5] ), .B(\COREABC_0/r_m1_N_6_mux ), .Y(
        \COREABC_0/Ram256x16_R0C0_RNIENH81 ));
    DFN1C0 \CORESPI_0/USPI/URF/int_raw[5]  (.D(
        \CORESPI_0/USPI/URF/int_raw_45[5] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(\CORESPI_0/USPI/URF/int_raw[5]_net_1 )
        );
    AOI1B \CORESPI_0/USPI/UCC/stxs_strobetx_RNO_0  (.A(
        \CORESPI_0/USPI/UCC/stxs_strobetx_2_sqmuxa_2 ), .B(
        \CORESPI_0/USPI/UCC/stxs_strobetx_2_sqmuxa_1 ), .C(
        \CORESPI_0/USPI/UCC/clock_rx_fe ), .Y(
        \CORESPI_0/USPI/UCC/N_616 ));
    DFN1 \COREABC_0/UROM.INSTR_DATA[3]  (.D(
        \COREABC_0/INSTRUCTION[29] ), .CLK(GLA), .Q(
        \COREABC_0/UROM.INSTR_DATA[3]_net_1 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I54_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N265 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N262 ), .C(
        \COREABC_0/un1_ACCUMULATOR.N261 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N292 ));
    NOR3 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0_RNI041L[12]  
        (.A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[11] ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[12] ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[9] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTOOI4_11_2 ));
    OA1C \CORESPI_0/USPI/UCC/mtx_spi_data_out_RNO  (.A(
        \CORESPI_0/USPI/UCC/N_42 ), .B(
        \CORESPI_0/USPI/tx_fifo_data_out[3] ), .C(
        \CORESPI_0/USPI/UCC/mtx_spi_data_out_2_iv_i_2 ), .Y(
        \CORESPI_0/USPI/UCC/mtx_spi_data_out_RNO_net_1 ));
    OA1C \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i[6]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_2_3[6]_net_1 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_a4[6]_net_1 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_1[6]_net_1 ), .Y(
        \PRDATA_iv_i[6] ));
    MX2 \COREABC_0/ZREGISTER[12]/U0  (.A(\COREABC_0/ZREGISTER_26[12] ), 
        .B(\COREABC_0/ZREGISTER[12] ), .S(\COREABC_0/un1_ICYCLE_4 ), 
        .Y(\COREABC_0/ZREGISTER[12]/Y ));
    AX1 \CoreTimer_0/Count_RNO[7]  (.A(\CoreTimer_0/un1_PreScale8_0 ), 
        .B(\CoreTimer_0/N_7_0 ), .C(\CoreTimer_0/N_212 ), .Y(
        \CoreTimer_0/N_414 ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_STBRAM_4_sqmuxa_2  (.A(
        \COREABC_0/to_logic_4.un4_READRAM ), .B(
        \COREABC_0/UROM.INSTR_SCMD[1]_net_1 ), .Y(
        \COREABC_0/STBRAM_4_sqmuxa_2 ));
    AO1A \CoreTimer_0/CountPulse_RNO_12  (.A(
        \CoreTimer_0/TimerPre[0]_net_1 ), .B(
        \CoreTimer_0/PreScale[4]_net_1 ), .C(
        \CoreTimer_0/NextCountPulse_0_sqmuxa_5_3 ), .Y(
        \CoreTimer_0/N_560_tz_tz ));
    OR2 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/un3_CUARTO0_I_15  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[3] ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[4] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/DWACT_FDEC_E[1] ));
    XA1B \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il_RNO[3]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_124 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il[3]_net_1 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_123 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il_n3 ));
    XA1C \CoreTimer_0/Count_RNO[31]  (.A(\CoreTimer_0/Count_66_0 ), .B(
        \CoreTimer_0/Count[31]_net_1 ), .C(\CoreTimer_0/un1_PreScale8 )
        , .Y(\CoreTimer_0/N_438_i ));
    MX2 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0_RNIQPVJ6[0]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/i11_mux ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_117_mux ), .S(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0[0]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_309 ));
    DFN1E1P0 \CoreTimer_0/Count[9]  (.D(\CoreTimer_0/N_416 ), .CLK(GLA)
        , .PRE(COREABC_0_PRESETN_0), .E(\CoreTimer_0/Counte ), .Q(
        \CoreTimer_0/Count[9]_net_1 ));
    NOR2B \CoreUARTapb_0/CUARTlOlI/CUARTIO1/CUARTlI0l_RNIP0FI1[3]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_87 ), .B(
        \CoreUARTapb_0/CUARTO1OI[1]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTIO1/N_88 ));
    MX2 \COREABC_0/ZREGISTER[3]/U0  (.A(\COREABC_0/ZREGISTER_26[3] ), 
        .B(\COREABC_0/ZREGISTER[3] ), .S(\COREABC_0/un1_ICYCLE_4 ), .Y(
        \COREABC_0/ZREGISTER[3]/Y ));
    AO1A \CoreTimer_0/LoadEnReg_RNIRS88E  (.A(
        \CoreTimer_0/CtrlReg_RNINQA54[2]_net_1 ), .B(
        \CoreTimer_0/un1_m6_i_a3_5 ), .C(\CoreTimer_0/LoadEnReg_net_1 )
        , .Y(\CoreTimer_0/un1_PreScale8_0 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m35_0  (.A(\COREABC_0/N_35_1 ), .B(
        \COREABC_0/N_40_1 ), .S(\COREABC_0/SMADDR[0] ), .Y(
        \COREABC_0/i12_mux_0 ));
    NOR2 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I21_Y_a1  (.A(
        \COREABC_0/RAMRDATA[11] ), .B(\COREABC_0/ACCUMULATOR[11] ), .Y(
        \COREABC_0/ADD_16x16_fast_I21_Y_a1 ));
    AO1A \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_RNIVJJ14[1]  (.A(
        \CoreUARTapb_0/CUARTI1OI[0] ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_111 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_0_sqmuxa_2 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/un1_CUARTO0_0_sqmuxa_1 ));
    DFN1E0C0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[1]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il_11[1] ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_130_mux ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO0Il[1]_net_1 ));
    DFN1E1P0 \CoreTimer_0/Count[20]  (.D(\CoreTimer_0/N_427_i ), .CLK(
        GLA), .PRE(COREABC_0_PRESETN_0), .E(\CoreTimer_0/Counte_0 ), 
        .Q(\CoreTimer_0/Count[20]_net_1 ));
    XOR2 \CORESPI_0/USPI/UCC/un1_stxs_bitsel_3_I_8  (.A(
        \CORESPI_0/USPI/UCC/stxs_bitsel[0]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/stxs_state_RNIV3DN_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/DWACT_ADD_CI_0_partial_sum[0] ));
    NOR3A 
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0_RNIUEHG[1]  
        (.A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTOOI4_2 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[0] ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0[1] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO08_1 ));
    AO1 \CoreTimer_0/iPRDATA_RNO[10]  (.A(
        \CoreTimer_0/Count[10]_net_1 ), .B(
        \CoreTimer_0/DataOut_1_sqmuxa_net_1 ), .C(
        \CoreTimer_0/Load_m[10] ), .Y(\CoreTimer_0/PrdataNext_1[10] ));
    NOR3C \COREABC_0/un1_ACCUMULATOR_xhdl_31.ALUOUT_3_m[13]  (.A(
        \COREABC_0/ALUOUT_1_sqmuxa ), .B(\COREABC_0/ACCUMULATOR[13] ), 
        .C(\COREABC_0/ACCUM_IN[13] ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_3_m[13] ));
    NOR2A \CORESPI_0/USPI/UCC/stxs_first_RNO  (.A(
        \CORESPI_0/USPI/UCC/clock_rx_fe ), .B(
        \CORESPI_0/USPI/UCC/stxs_bitcnt_0_sqmuxa ), .Y(
        \CORESPI_0/USPI/UCC/N_614 ));
    NOR2A \CORESPI_0/USPI/UCC/msrxs_strobe_RNO_0  (.A(
        \CORESPI_0/USPI/UCC/mtx_midbit_i_0 ), .B(
        \CORESPI_0/USPI/UCC/stxs_midbit ), .Y(
        \CORESPI_0/USPI/UCC/msrxs_strobe_1_sqmuxa_0 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_SMADDR_21[2]  (.A(\COREABC_0/N_438 )
        , .B(\COREABC_0/N_425 ), .S(\COREABC_0/SMADDR_0_sqmuxa_1 ), .Y(
        \COREABC_0/SMADDR_21[2] ));
    XO1 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIOll_RNI4B5G[3]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il[3]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIOll[3]_net_1 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll019_2 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll019_NE_0 ));
    XOR2 \COREABC_0/un1_STKPTRP1_I_14  (.A(
        \COREABC_0/un1_STKPTRP1.N_4 ), .B(\COREABC_0/STKPTR[5] ), .Y(
        \COREABC_0/I_14_0 ));
    NOR3C \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1_RNITHM51[0]  (.A(
        \CoreUARTapb_0/CUARTI1OI[2] ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO1[0]_net_1 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_0_sqmuxa_0 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_0_sqmuxa_1_3 ));
    AXOI5 \COREABC_0/URAM.UR/UG3.UR_xhdl12/Ram256x16_R0C0_RNIND8B  (.A(
        \COREABC_0/r_m1tt_N_3_mux ), .B(\COREABC_0/RAMRDATA[6] ), .C(
        \COREABC_0_APB3master_PADDR[12] ), .Y(
        \COREABC_0/URAM.UR/UG3.UR_xhdl12/r_m1_2_0 ));
    NOR2A \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTOOI_RNI62OH  
        (.A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTOOI ), .B(
        \CoreUARTapb_0/CUARTI1OI[0] ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO0_0_sqmuxa_0 ));
    OR3 \CORESPI_0/USPI/UCC/clk_div_val_reg_RNISUCG1[5]  (.A(
        \CORESPI_0/USPI/UCC/spi_clk_nextd4_6 ), .B(
        \CORESPI_0/USPI/UCC/spi_clk_nextd4_7 ), .C(
        \CORESPI_0/USPI/UCC/spi_clk_nextd4_NE_1 ), .Y(
        \CORESPI_0/USPI/UCC/spi_clk_nextd4_NE_4 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m22_0  (.A(\COREABC_0/N_22_1 ), .B(
        \COREABC_0/N_16_1 ), .S(\COREABC_0/SMADDR_0[3] ), .Y(
        \COREABC_0/N_23_1 ));
    XA1B \CoreTimer_0/PreScale_RNO[6]  (.A(
        \CoreTimer_0/PreScale[6]_net_1 ), .B(\CoreTimer_0/PreScale_c5 )
        , .C(\CoreTimer_0/PreScale8 ), .Y(\CoreTimer_0/PreScale_n6 ));
    DFN1E0C0 \CoreUARTapb_0/CUARTlOlI/CUARTIOl[7]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTl1I[7] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(\CoreUARTapb_0/CUARTlOlI/CUARTIOl4 ), 
        .Q(\CoreUARTapb_0/CUARTlOlI/CUARTIOl[7]_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m132_0  (.A(\COREABC_0/N_132_0 ), 
        .B(\COREABC_0/N_16_1 ), .S(\COREABC_0/SMADDR_1[2] ), .Y(
        \COREABC_0/N_133_0 ));
    DFN1 \CoreUARTapb_0/CUARTlOlI/genblk2.CUARTl11/CUARTOOOI[0]  (.D(
        \CoreUARTapb_0/CUARTlOlI/genblk2.CUARTl11/CUARTl00I[0] ), .CLK(
        GLA), .Q(\CoreUARTapb_0/CUARTlOlI/CUARTI1I[0] ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I96_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.I96_un1_Y ), .B(
        \COREABC_0/un1_ACCUMULATOR.N290 ), .C(
        \COREABC_0/un1_ACCUMULATOR.I78_un1_Y ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N356 ));
    DFN1C0 \CORESPI_0/USPI/UCC/mtx_re_q1  (.D(
        \CORESPI_0/USPI/UCC/mtx_re_net_1 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(\CORESPI_0/USPI/UCC/mtx_re_q1_net_1 ));
    NOR3A \CORESPI_0/USPI/URXF/rd_pointer_q_RNO[1]  (.A(
        \CORESPI_0/USPI/URXF/I_10_2 ), .B(\CORESPI_0/USPI/fiforstrx ), 
        .C(\CORESPI_0/USPI/URXF/N_52 ), .Y(
        \CORESPI_0/USPI/URXF/rd_pointer_q_3[1] ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_m100_0  (.A(\COREABC_0/i11_mux_0 )
        , .B(\COREABC_0/SMADDR[1] ), .Y(\COREABC_0/i9_mux_0_0 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_PWDATA_M[0]  (.A(
        \COREABC_0/UROM.INSTR_DATA[0]_net_1 ), .B(\COREABC_0/MUX1[0] ), 
        .S(\COREABC_0/USE_ACC_1 ), .Y(\COREABC_0_APB3master_PWDATA[0] )
        );
    DFN1C0 \CoreTimer_0/CountPulse  (.D(\CoreTimer_0/NextCountPulse ), 
        .CLK(GLA), .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreTimer_0/CountPulse_net_1 ));
    AO1 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2_0[1]  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA_i_0[1] ), .B(\CoreAPB3_0/N_72 ), 
        .C(\CoreAPB3_0/u_mux_p_to_b3/N_35 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2_0[1]_net_1 ));
    AND2 \CORESPI_0/USPI/URXF/un1_counter_q_1_I_35  (.A(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_pog_array_0_1[0] ), .B(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_pog_array_0_2[0] ), .Y(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_pog_array_1_0[0] ));
    OR2 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I7_P0N  (.A(
        \COREABC_0/ZREGISTER[7] ), .B(\COREABC_0_APB3master_PWDATA[7] )
        , .Y(\COREABC_0/un33_ZREGISTER.N226 ));
    OA1C \COREABC_0/URAM.UR/UG3.UR_xhdl12/Ram256x16_R0C0_RNIV8M21  (.A(
        \COREABC_0/RAMRDATA[3] ), .B(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_0 ), .C(
        \COREABC_0/ACCUMULATOR[3] ), .Y(\COREABC_0/d_N_5_mux_3 ));
    NOR3C \CORESPI_0/USPI/URF/int_raw_RNIQQNE[2]  (.A(
        \CORESPI_0/USPI/URF/int_m1_e_0 ), .B(
        \CORESPI_0.USPI.URF.N_125 ), .C(
        \CoreTimer_0.DataOut_1_sqmuxa_2 ), .Y(
        \CORESPI_0.USPI.URF.int_raw_m_0[2] ));
    DFN1C1 \CORESPI_0/USPI/UCC/stxs_first/U1  (.D(
        \CORESPI_0/USPI/UCC/stxs_first/Y ), .CLK(GLA), .CLR(
        \CORESPI_0/USPI/UCC/ssel_rx_q2_RNIBQH6_net_1 ), .Q(
        \CORESPI_0/USPI/UCC/stxs_first ));
    XA1 \COREABC_0/un1_ACCUMULATOR_un1_ACCUMULATOR_m[12]  (.A(
        \COREABC_0/un1_ACCUMULATOR.N354 ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I118_Y_0 ), .C(
        \COREABC_0/un1_ACCUM_NEXT9_1 ), .Y(
        \COREABC_0/un1_ACCUMULATOR_m[12] ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_ADD_m3_0_a4  (.A(
        \COREABC_0/r_m1_N_6_mux_0 ), .B(
        \COREABC_0/UROM.INSTR_DATA[7]_net_1 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_N_7_2 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m73_0  (.A(\COREABC_0/N_267_0 ), .B(
        \COREABC_0/SMADDR[5] ), .S(\COREABC_0/DOISR_0 ), .Y(
        \COREABC_0/N_240 ));
    AND3B \CORESPI_0/USPI/UTXF/empty_out_RNIDPPD2  (.A(
        \CORESPI_0/USPI/fiforsttx ), .B(
        \CORESPI_0/USPI/UTXF/un1_data_out_dx_i_0_li[3] ), .C(
        \CORESPI_0/USPI/UTXF/counter_d_0_sqmuxa_0 ), .Y(
        \CORESPI_0/USPI/UTXF/rd_pointer_d_1_sqmuxa_2 ));
    NOR3C \CORESPI_0/USPI/UCC/stxs_dataerr_RNI9O6F2  (.A(
        \CORESPI_0/USPI/UCC/stxs_datareg4_3 ), .B(
        \CORESPI_0/USPI/UCC/stxs_midbit_2_1 ), .C(
        \CORESPI_0/USPI/UCC/stxs_strobetx5 ), .Y(
        \CORESPI_0/USPI/UCC/stxs_checkorun_0_sqmuxa ));
    AX1B \CoreTimer_0/Count_RNO[11]  (.A(\CoreTimer_0/un1_PreScale8 ), 
        .B(\CoreTimer_0/Count_26_0 ), .C(\CoreTimer_0/N_220 ), .Y(
        \CoreTimer_0/N_418 ));
    XOR2 \CORESPI_0/USPI/UTXF/un1_counter_q_0_I_10  (.A(
        \CORESPI_0/USPI/UTXF/counter_q[2]_net_1 ), .B(
        \CORESPI_0/USPI/UTXF/counter_d_0_sqmuxa_0 ), .Y(
        \CORESPI_0/USPI/UTXF/DWACT_ADD_CI_0_pog_array_0_1[0] ));
    NOR2B \CORESPI_0/USPI/UTXF/wr_pointer_q_RNIFKPA[1]  (.A(
        \CORESPI_0/USPI/UTXF/wr_pointer_q[0]_net_1 ), .B(
        \CORESPI_0/USPI/UTXF/wr_pointer_q[1]_net_1 ), .Y(
        \CORESPI_0/USPI/UTXF/wr_pointer_d9 ));
    XOR2 \CORESPI_0/USPI/UCC/clk_div_val_reg_RNII23C[3]  (.A(
        \CORESPI_0/USPI/UCC/clk_div_val_reg[3]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/spi_clk_count[3]_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/spi_clk_nextd4_3 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m209_0  (.A(\COREABC_0/N_208_0 ), 
        .B(\COREABC_0/N_209_0 ), .S(\COREABC_0/SMADDR[5] ), .Y(
        \COREABC_0/N_210 ));
    NOR2A \CoreTimer_0/un2_PrescaleEn_0  (.A(
        \COREABC_0_APB3master_PADDR[3] ), .B(
        \COREABC_0_APB3master_PADDR[4] ), .Y(
        \CoreTimer_0.un2_PrescaleEn_0 ));
    AND2 \COREABC_0/un37_SMADDR_I_21  (.A(\COREABC_0/SMADDR[6] ), .B(
        \COREABC_0/SMADDR[7] ), .Y(
        \COREABC_0/un37_SMADDR.U1.DWACT_FINC_E[3] ));
    IOPAD_IN \RX_pad/U0/U0  (.PAD(RX), .Y(\RX_pad/U0/NET1 ));
    DFN1C1 \CORESPI_0/USPI/UCC/stxs_datareg[0]/U1  (.D(
        \CORESPI_0/USPI/UCC/stxs_datareg[0]/Y ), .CLK(GLA), .CLR(
        \CORESPI_0/USPI/UCC/ssel_rx_q2_RNIBQH6_net_1 ), .Q(
        \CORESPI_0/USPI/UCC/stxs_datareg[0] ));
    OR2 \CORESPI_0/USPI/UCC/un1_sresetn_16_0_0  (.A(
        \CORESPI_0/USPI/UCC/mtx_state_0_sqmuxa ), .B(
        \CORESPI_0/USPI/UCC/N_98 ), .Y(
        \CORESPI_0/USPI/UCC/un1_sresetn_16 ));
    MX2 \COREABC_0/ACCUMULATOR[1]/U0  (.A(\COREABC_0/ACCUMULATOR[1] ), 
        .B(\COREABC_0/ACCUM_NEXT[1] ), .S(\COREABC_0/ACCUMULATOR4 ), 
        .Y(\COREABC_0/ACCUMULATOR[1]/Y ));
    NOR2B \CORESPI_0/USPI/UTXF/rd_pointer_q_RNI10C22[1]  (.A(
        \CORESPI_0/USPI/UTXF/un1_data_out_dx_i_0_li[3] ), .B(
        \CORESPI_0/USPI/UTXF/counter_d_0_sqmuxa_0 ), .Y(
        \CORESPI_0/USPI/UTXF/N_50 ));
    AO1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I56_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N267 ), .B(
        \COREABC_0/un33_ZREGISTER.N264 ), .C(
        \COREABC_0/un33_ZREGISTER.N263 ), .Y(
        \COREABC_0/un33_ZREGISTER.N294 ));
    MX2 \CORESPI_0/USPI/UCC/stxs_first/U0  (.A(
        \CORESPI_0/USPI/UCC/stxs_first ), .B(
        \CORESPI_0/USPI/UCC/stxs_state_i ), .S(
        \CORESPI_0/USPI/UCC/N_614 ), .Y(
        \CORESPI_0/USPI/UCC/stxs_first/Y ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_ADD_m1_e_4_0  (.A(
        \COREABC_0/RAMRDATA[11] ), .B(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_m1_e_4_0 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m105_0  (.A(\COREABC_0/N_103_0 ), 
        .B(\COREABC_0/N_105_0 ), .S(\COREABC_0/SMADDR_0[5] ), .Y(
        \COREABC_0/N_106 ));
    NOR2 
        \COREABC_0/un1_ACCUMULATOR_xhdl_41.xhdl_40_l3.un13_flagvalue_5  
        (.A(\COREABC_0/ZREGISTER[1] ), .B(\COREABC_0/ZREGISTER[2] ), 
        .Y(
        \COREABC_0/un1_ACCUMULATOR.xhdl_41.xhdl_40_l3.un13_flagvalue_5 )
        );
    MX2A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_2[3]  (.A(
        \COREABC_0_PADDR_M_RNIGF1UA[13]_net_1 ), .B(
        \CORESPI_0.USPI.URF.rdata_0_iv_2[3] ), .S(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_N_9_mux ), .Y(N_13));
    MX2 \CORESPI_0/USPI/UCC/stxs_bitcnt[2]/U0  (.A(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[2] ), .B(
        \CORESPI_0/USPI/UCC/stxs_bitcnt_n2 ), .S(
        \CORESPI_0/USPI/UCC/clock_rx_fe ), .Y(
        \CORESPI_0/USPI/UCC/stxs_bitcnt[2]/Y ));
    OR2A \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTO1ll.CUARTI0I_9  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTIl ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0I_8 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI0I_9 ));
    XOR3 \CORESPI_0/USPI/UCC/rx_cmdsize_RNO_2  (.A(
        \CORESPI_0/USPI/UCC/msrxp_frames[2]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/CO1 ), .C(\CORESPI_0.USPI.cfg_cmdsize[2] ), 
        .Y(\CORESPI_0/USPI/UCC/rx_cmdsize_2_2 ));
    AO1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I34_Y  (.A(
        \COREABC_0/un33_ZREGISTER.N216 ), .B(
        \COREABC_0/un33_ZREGISTER.N220 ), .C(
        \COREABC_0/un33_ZREGISTER.N219 ), .Y(
        \COREABC_0/un33_ZREGISTER.N269 ));
    DFN1P0 \CORESPI_0/USPI/UCC/SYNC3_stxp_dataerr  (.D(
        \CORESPI_0/USPI/UCC/SYNC2_stxp_dataerr_i ), .CLK(GLA), .PRE(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UCC/SYNC3_stxp_dataerr_i_0 ));
    DFN1C0 \COREABC_0/genblk2.RSTSYNC2_0  (.D(
        \COREABC_0/genblk2.RSTSYNC1_net_1 ), .CLK(GLA), .CLR(
        NSYSRESET_c), .Q(\COREABC_0/genblk2.RSTSYNC2_0_net_1 ));
    DFN1C0 \CORESPI_0/USPI/UTXF/wr_pointer_q[0]  (.D(
        \CORESPI_0/USPI/UTXF/wr_pointer_q_3[0] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(
        \CORESPI_0/USPI/UTXF/wr_pointer_q[0]_net_1 ));
    NOR2A \CoreTimer_0/IntClr_RNO_0  (.A(
        \COREABC_0_APB3master_PADDR[4] ), .B(
        \COREABC_0_APB3master_PADDR[3] ), .Y(\CoreTimer_0/IntClrEn_0 ));
    MX2 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0_RNO_0[5]  (
        .A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/I_14 ), .B(
        \CoreUARTapb_0/CUARTl0OI[5]_net_1 ), .S(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO08 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_119 ));
    NOR2B \CoreTimer_0/PreScale_RNI9P91[7]  (.A(
        \CoreTimer_0/PreScale[7]_net_1 ), .B(
        \CoreTimer_0/PreScale[6]_net_1 ), .Y(
        \CoreTimer_0/NextCountPulse_0_sqmuxa_7_7_0 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_ACCUM_IN[0]  (.A(
        \COREABC_0/UROM.INSTR_DATA[0]_net_1 ), .B(
        \COREABC_0/RAMRDATA[0] ), .S(\COREABC_0/un7_MUXIR[0] ), .Y(
        \COREABC_0/ACCUM_IN[0] ));
    MX2 \CORESPI_0/USPI/URXF/fifo_mem_q_fifo_mem_q_ram1__RNIR2ST[0]  (
        .A(\CORESPI_0/USPI/URXF/ram0_0 ), .B(
        \CORESPI_0/USPI/URXF/ram1_0 ), .S(
        \CORESPI_0/USPI/URXF/rd_pointer_q[0]_net_1 ), .Y(
        \CORESPI_0/USPI/URXF/N_31 ));
    MX2 \COREABC_0/ZREGISTER[1]/U0  (.A(\COREABC_0/ZREGISTER_26[1] ), 
        .B(\COREABC_0/ZREGISTER[1] ), .S(\COREABC_0/un1_ICYCLE_4 ), .Y(
        \COREABC_0/ZREGISTER[1]/Y ));
    NOR2A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_m4_0_a2_1  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_m3_0_a2_0_net_1 ), .B(
        \CoreAPB3_0.u_mux_p_to_b3.PRDATA_iv_i_1[3] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_m4_0_a2_1_net_1 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_STKPTR_0_sqmuxa_0  (.A(
        \COREABC_0/UROM.INSTR_CMD[0]_net_1 ), .B(
        \COREABC_0/STKPTR_0_sqmuxa_2 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.STKPTR_0_sqmuxa_0 ));
    NOR3A \CORESPI_0/USPI/URXF/fifo_mem_q_awe0  (.A(
        \CORESPI_0/USPI/URXF/fifo_mem_d[3]_0_sqmuxa ), .B(
        \CORESPI_0/USPI/URXF/wr_pointer_q[0]_net_1 ), .C(
        \CORESPI_0/USPI/URXF/wr_pointer_q[1]_net_1 ), .Y(
        \CORESPI_0/USPI/URXF/awe0 ));
    NOR2B \CORESPI_0/USPI/URF/control2_RNIUHUM[7]  (.A(
        \CORESPI_0/USPI/URF/control2[7]_net_1 ), .B(
        \CORESPI_0.USPI.URF.control17 ), .Y(
        \CORESPI_0.USPI.URF.control2_m[7] ));
    IOPAD_BI \BIBUF_1/U0/U0  (.D(\BIBUF_1/U0/NET1 ), .E(
        \BIBUF_1/U0/NET2 ), .Y(\BIBUF_1/U0/NET3 ), .PAD(SDA_Sensors));
    MX2 \COREABC_0/un1_ACCUMULATOR_m52_0  (.A(\COREABC_0/I_9 ), .B(
        \COREABC_0/i39_mux ), .S(\COREABC_0/DOJMP ), .Y(
        \COREABC_0/N_53_0 ));
    XA1 \COREABC_0/un1_ACCUMULATOR_xhdl_31.ALUOUT_5_m[2]  (.A(
        \COREABC_0/ACCUMULATOR[2] ), .B(\COREABC_0/ACCUM_IN[2] ), .C(
        \COREABC_0/ALUOUT_3_sqmuxa ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_5_m[2] ));
    NOR3 \CoreTimer_0/iPRDATA_RNO[2]  (.A(\CoreTimer_0/Count_m[2] ), 
        .B(\CoreTimer_0/PrdataNext_1_0_iv_0[2] ), .C(
        \CoreTimer_0/Load_m[2] ), .Y(\CoreTimer_0/PrdataNext_1[2] ));
    DFN1C0 \COREABC_0/genblk2.RSTSYNC2  (.D(
        \COREABC_0/genblk2.RSTSYNC1_net_1 ), .CLK(GLA), .CLR(
        NSYSRESET_c), .Q(PRESETN));
    NOR3C \CORESPI_0/USPI/UCC/stxs_state_RNI9VPA2  (.A(
        \CORESPI_0/USPI/UCC/stxs_datareg4_3 ), .B(
        \CORESPI_0/USPI/UCC/stxs_midbit_2_1 ), .C(
        \CORESPI_0/USPI/UCC/stxs_state_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/stxs_midbit_3 ));
    NOR2A \COREABC_0/UROM.INSTR_SCMD_RNIOF7U[1]  (.A(
        \COREABC_0/un1_ACCUMULATOR.un7_m1_e_0_1 ), .B(
        \COREABC_0/r_m1tt_N_3_mux ), .Y(
        \COREABC_0/UROM.INSTR_SCMD_RNIOF7U[1]_net_1 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m218  (.A(\COREABC_0/N_22_1 ), .B(
        \COREABC_0/N_153 ), .S(\COREABC_0/N_278_0 ), .Y(
        \COREABC_0/N_278_mux ));
    XNOR2 \CoreTimer_0/Count_RNO[13]  (.A(\CoreTimer_0/N_223 ), .B(
        \CoreTimer_0/N_224 ), .Y(\CoreTimer_0/N_420 ));
    DFN1C0 \CoreTimer_0/PreScale[1]  (.D(\CoreTimer_0/PreScale_n1 ), 
        .CLK(GLA), .CLR(COREABC_0_PRESETN_0), .Q(
        \CoreTimer_0/PreScale[1]_net_1 ));
    IOIN_IB \SCL_MCU_pad/U0/U1  (.YIN(\SCL_MCU_pad/U0/NET1 ), .Y(
        SCL_MCU_c_c));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ACCUM_IN[14]  (.A(
        \COREABC_0/RAMRDATA[14] ), .B(\COREABC_0/un7_MUXIR[0] ), .Y(
        \COREABC_0/ACCUM_IN[14] ));
    MX2A \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0_RNO[1]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll019_i ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_129_mux ), .S(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0[1]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_40 ));
    OR3 \COREABC_0/un1_ACCUMULATOR_ACCUM_NEXT_iv_3[7]  (.A(
        \COREABC_0/ACCUMULATOR_m[8] ), .B(
        \COREABC_0/ACCUMULATOR_m_0[6] ), .C(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_0[7] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_3[7] ));
    NOR2 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il_RNO[0]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il[0]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_123 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_382 ));
    MX2 \CORESPI_0/USPI/UCC/stxs_dataerr/U0  (.A(
        \CORESPI_0/USPI/UCC/stxs_dataerr ), .B(
        \CORESPI_0/USPI/UCC/stxs_dataerr_5 ), .S(
        \CORESPI_0/USPI/UCC/clock_rx_fe ), .Y(
        \CORESPI_0/USPI/UCC/stxs_dataerr/Y ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m156_0  (.A(\COREABC_0/N_149_0 ), 
        .B(\COREABC_0/N_156 ), .S(\COREABC_0/SMADDR[0] ), .Y(
        \COREABC_0/INSTRUCTION[26] ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_STBACCAPB_0  (.A(
        COREABC_0_APB3master_PENABLE), .B(
        \COREABC_0/UROM.INSTR_SCMD[1]_net_1 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.STBACCAPB_0 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m234  (.A(\COREABC_0/N_234_0 ), .B(
        \COREABC_0/N_212 ), .S(\COREABC_0/SMADDR_0[1] ), .Y(
        \COREABC_0/N_235 ));
    NOR2A \COREABC_0/un1_ACCUMULATOR_un1_ACCUMULATOR_v[11]  (.A(
        \COREABC_0/ACCUM_IN[12] ), .B(
        \COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux ), .Y(
        \COREABC_0/un5[12] ));
    NOR2 \COREABC_0/un1_ACCUMULATOR_m62_0  (.A(\COREABC_0/N_62_0 ), .B(
        \COREABC_0/DOISR ), .Y(\COREABC_0/N_63_0 ));
    MX2A \COREABC_0/un1_ACCUMULATOR_ADD_m5_i_0  (.A(
        \COREABC_0/RAMRDATA[14] ), .B(\COREABC_0/ACCUMULATOR[13] ), .S(
        \COREABC_0/ACCUMULATOR[14] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_m5_i_0 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m235  (.A(\COREABC_0/N_235 ), .B(
        \COREABC_0/N_174_0 ), .S(\COREABC_0/SMADDR_0[5] ), .Y(
        \COREABC_0/N_236 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ALUOUT_2_sqmuxa_RNIEMJG5  (.A(
        \COREABC_0/xhdl_31.ALUOUT_4[6] ), .B(
        \COREABC_0/ALUOUT_2_sqmuxa ), .C(
        \COREABC_0/xhdl_31.ALUOUT_5_m[6] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_2[6] ));
    NOR3C \COREABC_0/un1_ACCUMULATOR_xhdl_31.ALUOUT_3_m[2]  (.A(
        \COREABC_0/ALUOUT_1_sqmuxa ), .B(\COREABC_0/ACCUMULATOR[2] ), 
        .C(\COREABC_0/ACCUM_IN[2] ), .Y(
        \COREABC_0/xhdl_31.ALUOUT_3_m[2] ));
    DFN1E1C0 \CORESPI_0/USPI/UCC/clk_div_val_reg[5]  (.D(
        \CORESPI_0/USPI/clk_div_val[5] ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .E(
        \CORESPI_0/USPI/UCC/mtx_state_RNINJM1[1]_net_1 ), .Q(
        \CORESPI_0/USPI/UCC/clk_div_val_reg[5]_net_1 ));
    NOR2 \CoreTimer_0/Count_RNIP5VI[23]  (.A(
        \CoreTimer_0/Count[23]_net_1 ), .B(
        \CoreTimer_0/Count[22]_net_1 ), .Y(\CoreTimer_0/m23_m6_e_0_0 ));
    AX1B \COREABC_0/un1_ACCUMULATOR_STKPTR_n3  (.A(
        \COREABC_0/STKPTR_2_sqmuxa ), .B(\COREABC_0/STKPTR_c2 ), .C(
        \COREABC_0/N_568 ), .Y(\COREABC_0/N_1216 ));
    NOR2B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I53_Y  (.A(
        \COREABC_0/un1_ACCUMULATOR.N264 ), .B(
        \COREABC_0/un1_ACCUMULATOR.N260 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.N291 ));
    MX2 \CoreUARTapb_0/CUARTlOlI/CUARTOO1/genblk1.CUARTO0_RNO_0[2]  (
        .A(\CoreUARTapb_0/CUARTlOlI/CUARTOO1/I_7 ), .B(
        \CoreUARTapb_0/CUARTl0OI[2]_net_1 ), .S(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/CUARTO08 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTOO1/N_116 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ACCUM_NEXT_iv_1[6]  (.A(
        \COREABC_0/ACCUM_IN[6] ), .B(\COREABC_0/ALUOUT_7_sqmuxa ), .C(
        \COREABC_0/ACCUMULATOR_m[7] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_1[6] ));
    NOR3B \COREABC_0/un1_ACCUMULATOR_ADD_16x16_fast_I28_Y_1_2  (.A(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I28_Y_1_0 ), .B(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I28_Y_0_tz_tz_tz_tz )
        , .C(\COREABC_0/un1_ACCUMULATOR.xhdl_N_5_mux_0 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ADD_16x16_fast_I28_Y_1_2 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m152_0  (.A(\COREABC_0/N_16_1 ), .B(
        \COREABC_0/N_22_1 ), .S(\COREABC_0/SMADDR[3] ), .Y(
        \COREABC_0/N_153 ));
    NOR3B \CORESPI_0/USPI/UCC/stxs_dataerr_RNO_1  (.A(
        \CORESPI_0/USPI/UCC/stxs_state_net_1 ), .B(
        \CORESPI_0/USPI/UCC/stxs_dataerr ), .C(
        \CORESPI_0/USPI/UCC/stxs_checkorun_1_sqmuxa ), .Y(
        \CORESPI_0/USPI/UCC/stxs_dataerr_m ));
    OA1A \COREABC_0/un1_ACCUMULATOR_un1_ACCUM_NEXT9_1_1  (.A(
        \COREABC_0/to_logic_4.un4_READRAM ), .B(
        \COREABC_0/r_m1tt_N_3_mux ), .C(
        \COREABC_0/un1_ACCUMULATOR.un1_ACCUM_NEXT9_1_0 ), .Y(
        \COREABC_0/un1_ACCUMULATOR.un1_ACCUM_NEXT9_1_1 ));
    AOI1B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_2_0[6]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_a1_2[6]_net_1 ), .B(
        \CoreTimer_0.DataOut_1_sqmuxa_2 ), .C(
        \COREABC_0_APB3master_PADDR[13] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a2_2_0[6]_net_1 ));
    AO1 \COREABC_0/un1_ACCUMULATOR_ACCUM_NEXT_iv_5_2[15]  (.A(
        \COREABC_0/SHIFTMSB ), .B(\COREABC_0/ALUOUT_6_sqmuxa ), .C(
        \COREABC_0/xhdl_31.ALUOUT_5_m[15] ), .Y(
        \COREABC_0/un1_ACCUMULATOR.ACCUM_NEXT_iv_5_2[15] ));
    DFN1C0 \CORESPI_0/USPI/URF/int_raw[1]  (.D(
        \CORESPI_0/USPI/URF/N_52 ), .CLK(GLA), .CLR(
        COREABC_0_PRESETN_0), .Q(\CORESPI_0.USPI.URF.int_raw[1] ));
    NOR2B \CORESPI_0/USPI/URF/CLK_DIV_RNI042K[0]  (.A(
        \CORESPI_0/USPI/clk_div_val[0] ), .B(
        \CORESPI_0.USPI.URF.control110 ), .Y(
        \CORESPI_0.USPI.URF.CLK_DIV_m[0] ));
    AX1 \CoreTimer_0/Count_RNO[15]  (.A(\CoreTimer_0/un1_PreScale8 ), 
        .B(\CoreTimer_0/N_15_0 ), .C(\CoreTimer_0/N_228 ), .Y(
        \CoreTimer_0/N_422 ));
    IOBI_IB_OB_EB \BIBUF_0/U0/U1  (.D(BIBUF_1_Y), .E(VCC), .YIN(
        \BIBUF_0/U0/NET3 ), .DOUT(\BIBUF_0/U0/NET1 ), .EOUT(
        \BIBUF_0/U0/NET2 ), .Y(BIBUF_0_Y));
    MX2 \COREABC_0/un1_ACCUMULATOR_m181  (.A(\COREABC_0/N_17_1 ), .B(
        \COREABC_0/N_38_1 ), .S(\COREABC_0/SMADDR_0[2] ), .Y(
        \COREABC_0/N_182 ));
    MX2 \COREABC_0/un1_ACCUMULATOR_m126_0  (.A(\COREABC_0/N_11_1 ), .B(
        \COREABC_0/N_17_1 ), .S(\COREABC_0/SMADDR_1[2] ), .Y(
        \COREABC_0/N_127_0 ));
    DFN1E1 \CORESPI_0/USPI/UTXF/fifo_mem_q_fifo_mem_q_ram1_[3]  (.D(
        \COREABC_0_APB3master_PWDATA[2] ), .CLK(GLA), .E(
        \CORESPI_0/USPI/UTXF/awe1 ), .Q(\CORESPI_0/USPI/UTXF/ram1_3 ));
    DFN1E1 \CORESPI_0/USPI/UTXF/fifo_mem_q_fifo_mem_q_ram3_[3]  (.D(
        \COREABC_0_APB3master_PWDATA[2] ), .CLK(GLA), .E(
        \CORESPI_0/USPI/UTXF/N_52 ), .Q(\CORESPI_0/USPI/UTXF/ram3_3 ));
    XOR2 \CORESPI_0/USPI/URXF/un1_rd_pointer_q_I_8  (.A(
        \CORESPI_0/USPI/URXF/rd_pointer_q[0]_net_1 ), .B(
        \CORESPI_0/USPI/URXF/rd_pointer_d_1_sqmuxa_2 ), .Y(
        \CORESPI_0/USPI/URXF/DWACT_ADD_CI_0_partial_sum_1[0] ));
    OA1 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I35_Y  (.A(
        \COREABC_0_APB3master_PWDATA[4] ), .B(\COREABC_0/ZREGISTER[4] )
        , .C(\COREABC_0/un33_ZREGISTER.N220 ), .Y(
        \COREABC_0/un33_ZREGISTER.N270 ));
    MAJ3 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI1Il_RNII0BC1[0]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI1Il[1]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI1Il[0]_net_1 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTI1Il[2]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/i1_mux ));
    NOR2B \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I11_G0N  (.A(
        \COREABC_0/ZREGISTER[11] ), .B(
        \COREABC_0_APB3master_PWDATA[11] ), .Y(
        \COREABC_0/un33_ZREGISTER.N237 ));
    DFN1 \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/CUARTOOOI[7]  (.D(
        \CoreUARTapb_0/CUARTlOlI/genblk3.CUARTIIOI/CUARTl00I[7] ), 
        .CLK(GLA), .Q(\CoreUARTapb_0/CUARTlOlI/CUARTl1I[7] ));
    DFN1E0C0 \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il[3]  (.D(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il_n3 ), .CLK(GLA), 
        .CLR(COREABC_0_PRESETN_0), .E(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_130_mux ), .Q(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTl0Il[3]_net_1 ));
    AXO7 \COREABC_0/un1_ACCUMULATOR_un1_ICYCLE_8  (.A(\COREABC_0/ISR4 )
        , .B(\COREABC_0/ICYCLE[0]_net_1 ), .C(
        \COREABC_0/ICYCLE[1]_net_1 ), .Y(\COREABC_0/un1_ICYCLE_8 ));
    NOR2B \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0_RNO_0[1]  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0[0]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTIl ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/N_384 ));
    AO1 \CORESPI_0/USPI/URF/CLK_DIV_RNI6BQ21[7]  (.A(
        \CORESPI_0/USPI/clk_div_val[7] ), .B(
        \CORESPI_0.USPI.URF.control110 ), .C(
        \CORESPI_0/USPI/URF/int_raw_m[7] ), .Y(
        \CORESPI_0/USPI/URF/rdata_iv_4_0[7] ));
    XA1B \CoreTimer_0/Count_RNO[18]  (.A(\CoreTimer_0/Count[18]_net_1 )
        , .B(\CoreTimer_0/N_18_0 ), .C(\CoreTimer_0/un1_PreScale8_0_0 )
        , .Y(\CoreTimer_0/N_45_0 ));
    AX1C \COREABC_0/un37_SMADDR_I_12  (.A(\COREABC_0/SMADDR[3] ), .B(
        \COREABC_0/un37_SMADDR.U1.DWACT_FINC_E[0] ), .C(
        \COREABC_0/SMADDR[4] ), .Y(\COREABC_0/I_12 ));
    MAJ3 \COREABC_0/un33_ZREGISTER_ADD_16x16_fast_I93_Y_0  (.A(
        \COREABC_0_APB3master_PWDATA[13] ), .B(
        \COREABC_0/ZREGISTER[13] ), .C(\COREABC_0/un33_ZREGISTER.N240 )
        , .Y(\COREABC_0/un33_ZREGISTER.ADD_16x16_fast_I93_Y_0 ));
    MX2 \CoreTimer_0/Count_RNO_1[11]  (.A(
        \CoreTimer_0/Count[11]_net_1 ), .B(
        \CoreTimer_0/Load[11]_net_1 ), .S(
        \CoreTimer_0/un1_PreScale8_0 ), .Y(\CoreTimer_0/N_220 ));
    NOR2A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_5[1]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_4[1]_net_1 ), .B(
        \CORESPI_0.USPI.URF.control1_m[1] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_iv_i_a0_5[1]_net_1 ));
    NOR3B \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTOOll_RNO_0  (.A(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTIlIl[3]_net_1 ), .B(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0[1]_net_1 ), .C(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/CUARTll0[0]_net_1 ), .Y(
        \CoreUARTapb_0/CUARTlOlI/CUARTO01/m25_1 ));
    OA1A \COREABC_0/un1_ACCUMULATOR_PWDATA_M_v[1]  (.A(
        \COREABC_0/UROM.INSTR_SCMD[1]_net_1 ), .B(
        \COREABC_0/UROM.INSTR_CMD[0]_net_1 ), .C(
        \COREABC_0/ACCUMULATOR[1] ), .Y(\COREABC_0/MUX1[1] ));
    DFN1E1P0 \CORESPI_0/USPI/UCC/clk_div_val_reg[1]  (.D(
        \CORESPI_0.USPI.clk_div_val[1] ), .CLK(GLA), .PRE(
        COREABC_0_PRESETN_0), .E(
        \CORESPI_0/USPI/UCC/mtx_state_RNINJM1[1]_net_1 ), .Q(
        \CORESPI_0/USPI/UCC/clk_div_val_reg[1]_net_1 ));
    NOR3A \CORESPI_0/USPI/UTXF/rd_pointer_q_RNO[1]  (.A(
        \CORESPI_0/USPI/UTXF/I_10_0 ), .B(\CORESPI_0/USPI/fiforsttx ), 
        .C(\CORESPI_0/USPI/UTXF/N_50 ), .Y(
        \CORESPI_0/USPI/UTXF/rd_pointer_q_3[1] ));
    NOR2A \CORESPI_0/USPI/UCC/mtx_consecutive_RNO_2  (.A(
        \CORESPI_0/USPI/UCC/mtx_bitsel[0]_net_1 ), .B(
        \CORESPI_0/USPI/UCC/mtx_bitsel[1]_net_1 ), .Y(
        \CORESPI_0/USPI/UCC/un1_sresetn_11_0_a2_0 ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
