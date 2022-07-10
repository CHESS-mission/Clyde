`timescale 1 ns / 100 ps
// ********************************************************************/
// Copyright 2008 Actel Corporation.  All rights reserved.
// IP Engineering
//
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
// ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
// IN ADVANCE IN WRITING.
//
// File:  iram512x9_pa3.vhd
//
// Description: Simple APB Bus Controller
//              Low Level RAM Model (A3P Family)
//
// Rev: 2.4   24Jan08 IPB  : Production Release
//
// SVN Revision Information:
// SVN $Revision: 11083 $
// SVN $Date: 2009-11-18 23:42:53 +0530 (Wed, 18 Nov 2009) $
//
// Notes:
//
// *********************************************************************/
// Version: 7.2 7.2.0.31

module Minimal_SoC_COREABC_0_IRAM512X9 (RWCLK, RESET, RENABLE, RADDR, RD, INITADDR, WENABLE, INITDATA);

    parameter CID  = 0;
    parameter RID  = 0;
    parameter UNIQ_STRING_LENGTH = 10;


    input RWCLK;
    input RESET;
    input RENABLE;
    input[8:0] RADDR;
    output[8:0] RD;
    wire[8:0] RD;
    input[8:0] INITADDR;
    input WENABLE;
    input[8:0] INITDATA;

    wire WEAP;
    wire WEBP;
    wire VCC_1_net;
    wire GND_1_net;

    localparam[1:(10)*8] CHARACTER = "0123456789";
    localparam[1:(UNIQ_STRING_LENGTH+11)*8] RAMFILE = {"Minimal_SoC_COREABC_0_RAM_", CHARACTER[RID*8+1:RID*8+8],CHARACTER[CID*8+1:CID*8+8], ".mem"};

    assign VCC_1_net = 1'b1 ;
    assign GND_1_net = 1'b0 ;
    assign WEBP = ~RENABLE ;
    assign WEAP = ~WENABLE ;
    // synthesis translate_off
    // synthesis translate_on

    RAM4K9 #(.MEMORYFILE(RAMFILE)) IRAM(
        .ADDRA11(GND_1_net),
        .ADDRA10(GND_1_net),
        .ADDRA9(GND_1_net),
        .ADDRA8(INITADDR[8]),
        .ADDRA7(INITADDR[7]),
        .ADDRA6(INITADDR[6]),
        .ADDRA5(INITADDR[5]),
        .ADDRA4(INITADDR[4]),
        .ADDRA3(INITADDR[3]),
        .ADDRA2(INITADDR[2]),
        .ADDRA1(INITADDR[1]),
        .ADDRA0(INITADDR[0]),
        .ADDRB11(GND_1_net),
        .ADDRB10(GND_1_net),
        .ADDRB9(GND_1_net),
        .ADDRB8(RADDR[8]),
        .ADDRB7(RADDR[7]),
        .ADDRB6(RADDR[6]),
        .ADDRB5(RADDR[5]),
        .ADDRB4(RADDR[4]),
        .ADDRB3(RADDR[3]),
        .ADDRB2(RADDR[2]),
        .ADDRB1(RADDR[1]),
        .ADDRB0(RADDR[0]),
        .DINA8(INITDATA[8]),
        .DINA7(INITDATA[7]),
        .DINA6(INITDATA[6]),
        .DINA5(INITDATA[5]),
        .DINA4(INITDATA[4]),
        .DINA3(INITDATA[3]),
        .DINA2(INITDATA[2]),
        .DINA1(INITDATA[1]),
        .DINA0(INITDATA[0]),
        .DINB8(GND_1_net),
        .DINB7(GND_1_net),
        .DINB6(GND_1_net),
        .DINB5(GND_1_net),
        .DINB4(GND_1_net),
        .DINB3(GND_1_net),
        .DINB2(GND_1_net),
        .DINB1(GND_1_net),
        .DINB0(GND_1_net),
        .WIDTHA0(VCC_1_net),
        .WIDTHA1(VCC_1_net),
        .WIDTHB0(VCC_1_net),
        .WIDTHB1(VCC_1_net),
        .PIPEA(GND_1_net),
        .PIPEB(GND_1_net),
        .WMODEA(GND_1_net),
        .WMODEB(GND_1_net),
        .BLKA(WEAP),
        .BLKB(WEBP),
        .WENA(GND_1_net),
        .WENB(VCC_1_net),
        .CLKA(RWCLK),
        .CLKB(RWCLK),
        .RESET(RESET),
        .DOUTA8(),
        .DOUTA7(),
        .DOUTA6(),
        .DOUTA5(),
        .DOUTA4(),
        .DOUTA3(),
        .DOUTA2(),
        .DOUTA1(),
        .DOUTA0(),
        .DOUTB8(RD[8]),
        .DOUTB7(RD[7]),
        .DOUTB6(RD[6]),
        .DOUTB5(RD[5]),
        .DOUTB4(RD[4]),
        .DOUTB3(RD[3]),
        .DOUTB2(RD[2]),
        .DOUTB1(RD[1]),
        .DOUTB0(RD[0])
    );
endmodule
