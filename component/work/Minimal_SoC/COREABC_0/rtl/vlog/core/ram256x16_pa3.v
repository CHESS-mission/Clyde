`timescale 1 ns / 100 ps
// ********************************************************************/
// Copyright 2008 Actel Corporation.  All rights reserved.
// IP Engineering
//
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
// ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
// IN ADVANCE IN WRITING.
//
// File:  ram256x16_pa3.vhd
//
// Description: Simple APB Bus Controller
//              Low Level RAM Model (PA3 Family)
//
// Rev: 2.4   24Jan08 IPB  : Production Release
//
// SVN Revision Information:
// SVN $Revision: 10605 $
// SVN $Date: 2009-11-02 22:56:10 +0530 (Mon, 02 Nov 2009) $
//
// Notes:
//
// *********************************************************************/
module Minimal_SoC_COREABC_0_RAM256X16 (RWCLK, RESET, WEN, REN, WADDR, RADDR, WD, RD);

    input RWCLK;
    input RESET;
    input WEN;
    input REN;
    input[7:0] WADDR;
    input[7:0] RADDR;
    input[15:0] WD;
    output[15:0] RD;
    wire[15:0] RD;

    wire WEAP;
    wire WEBP;
    wire VCC_1_net;
    wire GND_1_net;

    VCC VCC_2_net (
        .Y(VCC_1_net)
    );
    GND GND_2_net (
        .Y(GND_1_net)
    );
    RAM512X18 Ram256x16_R0C0 (
        .RADDR8(GND_1_net),
        .RADDR7(RADDR[7]),
        .RADDR6(RADDR[6]),
        .RADDR5(RADDR[5]),
        .RADDR4(RADDR[4]),
        .RADDR3(RADDR[3]),
        .RADDR2(RADDR[2]),
        .RADDR1(RADDR[1]),
        .RADDR0(RADDR[0]),
        .WADDR8(GND_1_net),
        .WADDR7(WADDR[7]),
        .WADDR6(WADDR[6]),
        .WADDR5(WADDR[5]),
        .WADDR4(WADDR[4]),
        .WADDR3(WADDR[3]),
        .WADDR2(WADDR[2]),
        .WADDR1(WADDR[1]),
        .WADDR0(WADDR[0]),
        .WD17(GND_1_net),
        .WD16(GND_1_net),
        .WD15(WD[15]),
        .WD14(WD[14]),
        .WD13(WD[13]),
        .WD12(WD[12]),
        .WD11(WD[11]),
        .WD10(WD[10]),
        .WD9(WD[9]),
        .WD8(WD[8]),
        .WD7(WD[7]),
        .WD6(WD[6]),
        .WD5(WD[5]),
        .WD4(WD[4]),
        .WD3(WD[3]),
        .WD2(WD[2]),
        .WD1(WD[1]),
        .WD0(WD[0]),
        .RW0(GND_1_net),
        .RW1(VCC_1_net),
        .WW0(GND_1_net),
        .WW1(VCC_1_net),
        .PIPE(GND_1_net),
        .REN(WEBP),
        .WEN(WEAP),
        .RCLK(RWCLK),
        .WCLK(RWCLK),
        .RESET(RESET),
        .RD17(),
        .RD16(),
        .RD15(RD[15]),
        .RD14(RD[14]),
        .RD13(RD[13]),
        .RD12(RD[12]),
        .RD11(RD[11]),
        .RD10(RD[10]),
        .RD9(RD[9]),
        .RD8(RD[8]),
        .RD7(RD[7]),
        .RD6(RD[6]),
        .RD5(RD[5]),
        .RD4(RD[4]),
        .RD3(RD[3]),
        .RD2(RD[2]),
        .RD1(RD[1]),
        .RD0(RD[0])
    );
    INV WEBUBBLEB (
        .A(REN),
        .Y(WEBP)
    );
    INV WEBUBBLEA (
        .A(WEN),
        .Y(WEAP)
    );
endmodule
