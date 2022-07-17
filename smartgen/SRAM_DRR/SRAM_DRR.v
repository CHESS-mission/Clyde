`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module SRAM_DRR(
       PAD,
       CLR,
       CLK,
       QR,
       QF
    );
input  [19:0] PAD;
input  CLR;
input  CLK;
output [19:0] QR;
output [19:0] QF;

    wire CLRR, \Y[0] , \Y[1] , \Y[2] , \Y[3] , \Y[4] , \Y[5] , \Y[6] , 
        \Y[7] , \Y[8] , \Y[9] , \Y[10] , \Y[11] , \Y[12] , \Y[13] , 
        \Y[14] , \Y[15] , \Y[16] , \Y[17] , \Y[18] , \Y[19] ;
    
    DDR_REG \DDR_REG[17]  (.D(\Y[17] ), .CLK(CLK), .CLR(CLRR), .QR(
        QR[17]), .QF(QF[17]));
    DDR_REG \DDR_REG[1]  (.D(\Y[1] ), .CLK(CLK), .CLR(CLRR), .QR(QR[1])
        , .QF(QF[1]));
    INBUF \INBUF[11]  (.PAD(PAD[11]), .Y(\Y[11] ));
    DDR_REG \DDR_REG[5]  (.D(\Y[5] ), .CLK(CLK), .CLR(CLRR), .QR(QR[5])
        , .QF(QF[5]));
    INBUF \INBUF[15]  (.PAD(PAD[15]), .Y(\Y[15] ));
    DDR_REG \DDR_REG[8]  (.D(\Y[8] ), .CLK(CLK), .CLR(CLRR), .QR(QR[8])
        , .QF(QF[8]));
    DDR_REG \DDR_REG[0]  (.D(\Y[0] ), .CLK(CLK), .CLR(CLRR), .QR(QR[0])
        , .QF(QF[0]));
    DDR_REG \DDR_REG[3]  (.D(\Y[3] ), .CLK(CLK), .CLR(CLRR), .QR(QR[3])
        , .QF(QF[3]));
    DDR_REG \DDR_REG[9]  (.D(\Y[9] ), .CLK(CLK), .CLR(CLRR), .QR(QR[9])
        , .QF(QF[9]));
    INBUF \INBUF[0]  (.PAD(PAD[0]), .Y(\Y[0] ));
    INBUF \INBUF[13]  (.PAD(PAD[13]), .Y(\Y[13] ));
    INV CLR_INV (.A(CLR), .Y(CLRR));
    INBUF \INBUF[19]  (.PAD(PAD[19]), .Y(\Y[19] ));
    DDR_REG \DDR_REG[12]  (.D(\Y[12] ), .CLK(CLK), .CLR(CLRR), .QR(
        QR[12]), .QF(QF[12]));
    INBUF \INBUF[10]  (.PAD(PAD[10]), .Y(\Y[10] ));
    INBUF \INBUF[16]  (.PAD(PAD[16]), .Y(\Y[16] ));
    INBUF \INBUF[14]  (.PAD(PAD[14]), .Y(\Y[14] ));
    DDR_REG \DDR_REG[6]  (.D(\Y[6] ), .CLK(CLK), .CLR(CLRR), .QR(QR[6])
        , .QF(QF[6]));
    INBUF \INBUF[5]  (.PAD(PAD[5]), .Y(\Y[5] ));
    INBUF \INBUF[1]  (.PAD(PAD[1]), .Y(\Y[1] ));
    INBUF \INBUF[6]  (.PAD(PAD[6]), .Y(\Y[6] ));
    DDR_REG \DDR_REG[13]  (.D(\Y[13] ), .CLK(CLK), .CLR(CLRR), .QR(
        QR[13]), .QF(QF[13]));
    INBUF \INBUF[4]  (.PAD(PAD[4]), .Y(\Y[4] ));
    INBUF \INBUF[7]  (.PAD(PAD[7]), .Y(\Y[7] ));
    DDR_REG \DDR_REG[19]  (.D(\Y[19] ), .CLK(CLK), .CLR(CLRR), .QR(
        QR[19]), .QF(QF[19]));
    DDR_REG \DDR_REG[10]  (.D(\Y[10] ), .CLK(CLK), .CLR(CLRR), .QR(
        QR[10]), .QF(QF[10]));
    INBUF \INBUF[8]  (.PAD(PAD[8]), .Y(\Y[8] ));
    INBUF \INBUF[2]  (.PAD(PAD[2]), .Y(\Y[2] ));
    DDR_REG \DDR_REG[18]  (.D(\Y[18] ), .CLK(CLK), .CLR(CLRR), .QR(
        QR[18]), .QF(QF[18]));
    DDR_REG \DDR_REG[15]  (.D(\Y[15] ), .CLK(CLK), .CLR(CLRR), .QR(
        QR[15]), .QF(QF[15]));
    INBUF \INBUF[9]  (.PAD(PAD[9]), .Y(\Y[9] ));
    DDR_REG \DDR_REG[11]  (.D(\Y[11] ), .CLK(CLK), .CLR(CLRR), .QR(
        QR[11]), .QF(QF[11]));
    DDR_REG \DDR_REG[2]  (.D(\Y[2] ), .CLK(CLK), .CLR(CLRR), .QR(QR[2])
        , .QF(QF[2]));
    DDR_REG \DDR_REG[14]  (.D(\Y[14] ), .CLK(CLK), .CLR(CLRR), .QR(
        QR[14]), .QF(QF[14]));
    INBUF \INBUF[17]  (.PAD(PAD[17]), .Y(\Y[17] ));
    INBUF \INBUF[18]  (.PAD(PAD[18]), .Y(\Y[18] ));
    DDR_REG \DDR_REG[4]  (.D(\Y[4] ), .CLK(CLK), .CLR(CLRR), .QR(QR[4])
        , .QF(QF[4]));
    INBUF \INBUF[3]  (.PAD(PAD[3]), .Y(\Y[3] ));
    INBUF \INBUF[12]  (.PAD(PAD[12]), .Y(\Y[12] ));
    DDR_REG \DDR_REG[7]  (.D(\Y[7] ), .CLK(CLK), .CLR(CLRR), .QR(QR[7])
        , .QF(QF[7]));
    DDR_REG \DDR_REG[16]  (.D(\Y[16] ), .CLK(CLK), .CLR(CLRR), .QR(
        QR[16]), .QF(QF[16]));
    
endmodule

// _Disclaimer: Please leave the following comments in the file, they are for internal purposes only._


// _GEN_File_Contents_

// Version:11.9.0.4
// ACTGENU_CALL:1
// BATCH:T
// FAM:PA3LC
// OUTFORMAT:Verilog
// LPMTYPE:LPM_DDR
// LPM_HINT:DDR_REG_REG
// INSERT_PAD:NO
// INSERT_IOREG:NO
// GEN_BHV_VHDL_VAL:F
// GEN_BHV_VERILOG_VAL:F
// MGNTIMER:F
// MGNCMPL:T
// DESDIR:C:/Users/micha/SynologyDrive/Engineering/Projects/CHESS OBC/SoC/LiberoProjects/Clyde/Clyde/smartgen\SRAM_DRR
// GEN_BEHV_MODULE:F
// SMARTGEN_DIE:IS4X2M1
// SMARTGEN_PACKAGE:tq144
// AGENIII_IS_SUBPROJECT_LIBERO:T
// WIDTH:20
// TYPE:
// TRIEN_POLARITY:0
// CLR_POLARITY:0

// _End_Comments_

