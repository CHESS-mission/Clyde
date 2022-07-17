`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module SRAM_DATA_IO(
       Data,
       Y,
       Trien,
       PAD
    );
input  [15:0] Data;
output [15:0] Y;
input  Trien;
inout  [15:0] PAD;

    
    BIBUF_LVCMOS33 \BIBUF_LVCMOS33[5]  (.PAD(PAD[5]), .D(Data[5]), .E(
        Trien), .Y(Y[5]));
    BIBUF_LVCMOS33 \BIBUF_LVCMOS33[0]  (.PAD(PAD[0]), .D(Data[0]), .E(
        Trien), .Y(Y[0]));
    BIBUF_LVCMOS33 \BIBUF_LVCMOS33[14]  (.PAD(PAD[14]), .D(Data[14]), 
        .E(Trien), .Y(Y[14]));
    BIBUF_LVCMOS33 \BIBUF_LVCMOS33[11]  (.PAD(PAD[11]), .D(Data[11]), 
        .E(Trien), .Y(Y[11]));
    BIBUF_LVCMOS33 \BIBUF_LVCMOS33[12]  (.PAD(PAD[12]), .D(Data[12]), 
        .E(Trien), .Y(Y[12]));
    BIBUF_LVCMOS33 \BIBUF_LVCMOS33[9]  (.PAD(PAD[9]), .D(Data[9]), .E(
        Trien), .Y(Y[9]));
    BIBUF_LVCMOS33 \BIBUF_LVCMOS33[3]  (.PAD(PAD[3]), .D(Data[3]), .E(
        Trien), .Y(Y[3]));
    BIBUF_LVCMOS33 \BIBUF_LVCMOS33[4]  (.PAD(PAD[4]), .D(Data[4]), .E(
        Trien), .Y(Y[4]));
    BIBUF_LVCMOS33 \BIBUF_LVCMOS33[13]  (.PAD(PAD[13]), .D(Data[13]), 
        .E(Trien), .Y(Y[13]));
    BIBUF_LVCMOS33 \BIBUF_LVCMOS33[1]  (.PAD(PAD[1]), .D(Data[1]), .E(
        Trien), .Y(Y[1]));
    BIBUF_LVCMOS33 \BIBUF_LVCMOS33[6]  (.PAD(PAD[6]), .D(Data[6]), .E(
        Trien), .Y(Y[6]));
    BIBUF_LVCMOS33 \BIBUF_LVCMOS33[8]  (.PAD(PAD[8]), .D(Data[8]), .E(
        Trien), .Y(Y[8]));
    BIBUF_LVCMOS33 \BIBUF_LVCMOS33[7]  (.PAD(PAD[7]), .D(Data[7]), .E(
        Trien), .Y(Y[7]));
    BIBUF_LVCMOS33 \BIBUF_LVCMOS33[2]  (.PAD(PAD[2]), .D(Data[2]), .E(
        Trien), .Y(Y[2]));
    BIBUF_LVCMOS33 \BIBUF_LVCMOS33[15]  (.PAD(PAD[15]), .D(Data[15]), 
        .E(Trien), .Y(Y[15]));
    BIBUF_LVCMOS33 \BIBUF_LVCMOS33[10]  (.PAD(PAD[10]), .D(Data[10]), 
        .E(Trien), .Y(Y[10]));
    
endmodule

// _Disclaimer: Please leave the following comments in the file, they are for internal purposes only._


// _GEN_File_Contents_

// Version:11.9.0.4
// ACTGENU_CALL:1
// BATCH:T
// FAM:PA3LC
// OUTFORMAT:Verilog
// LPMTYPE:LPM_IO_BIBUF
// LPM_HINT:BIBUF_SP
// INSERT_PAD:NO
// INSERT_IOREG:NO
// GEN_BHV_VHDL_VAL:F
// GEN_BHV_VERILOG_VAL:F
// MGNTIMER:F
// MGNCMPL:T
// DESDIR:C:/Users/micha/SynologyDrive/Engineering/Projects/CHESS OBC/SoC/LiberoProjects/Clyde/Clyde/smartgen\SRAM_DATA_IO
// GEN_BEHV_MODULE:F
// SMARTGEN_DIE:IS4X2M1
// SMARTGEN_PACKAGE:tq144
// AGENIII_IS_SUBPROJECT_LIBERO:T
// WIDTH:16
// TYPE:LVCMOS33
// TRIEN_POLARITY:1
// CLR_POLARITY:0

// _End_Comments_

