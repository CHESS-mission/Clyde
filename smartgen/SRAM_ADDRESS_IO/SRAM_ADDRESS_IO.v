`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module SRAM_ADDRESS_IO(
       Data,
       PAD
    );
input  [19:0] Data;
output [19:0] PAD;

    wire VCC;
    wire VCC_power_net1;
    assign VCC = VCC_power_net1;
    
    OUTBUF_LVCMOS33 \OUTBUF_LVCMOS33[19]  (.D(Data[19]), .PAD(PAD[19]));
    OUTBUF_LVCMOS33 \OUTBUF_LVCMOS33[1]  (.D(Data[1]), .PAD(PAD[1]));
    OUTBUF_LVCMOS33 \OUTBUF_LVCMOS33[2]  (.D(Data[2]), .PAD(PAD[2]));
    OUTBUF_LVCMOS33 \OUTBUF_LVCMOS33[18]  (.D(Data[18]), .PAD(PAD[18]));
    OUTBUF_LVCMOS33 \OUTBUF_LVCMOS33[14]  (.D(Data[14]), .PAD(PAD[14]));
    OUTBUF_LVCMOS33 \OUTBUF_LVCMOS33[5]  (.D(Data[5]), .PAD(PAD[5]));
    OUTBUF_LVCMOS33 \OUTBUF_LVCMOS33[10]  (.D(Data[10]), .PAD(PAD[10]));
    OUTBUF_LVCMOS33 \OUTBUF_LVCMOS33[8]  (.D(Data[8]), .PAD(PAD[8]));
    OUTBUF_LVCMOS33 \OUTBUF_LVCMOS33[0]  (.D(Data[0]), .PAD(PAD[0]));
    OUTBUF_LVCMOS33 \OUTBUF_LVCMOS33[13]  (.D(Data[13]), .PAD(PAD[13]));
    OUTBUF_LVCMOS33 \OUTBUF_LVCMOS33[15]  (.D(Data[15]), .PAD(PAD[15]));
    OUTBUF_LVCMOS33 \OUTBUF_LVCMOS33[16]  (.D(Data[16]), .PAD(PAD[16]));
    OUTBUF_LVCMOS33 \OUTBUF_LVCMOS33[11]  (.D(Data[11]), .PAD(PAD[11]));
    OUTBUF_LVCMOS33 \OUTBUF_LVCMOS33[12]  (.D(Data[12]), .PAD(PAD[12]));
    OUTBUF_LVCMOS33 \OUTBUF_LVCMOS33[9]  (.D(Data[9]), .PAD(PAD[9]));
    OUTBUF_LVCMOS33 \OUTBUF_LVCMOS33[4]  (.D(Data[4]), .PAD(PAD[4]));
    OUTBUF_LVCMOS33 \OUTBUF_LVCMOS33[6]  (.D(Data[6]), .PAD(PAD[6]));
    OUTBUF_LVCMOS33 \OUTBUF_LVCMOS33[3]  (.D(Data[3]), .PAD(PAD[3]));
    OUTBUF_LVCMOS33 \OUTBUF_LVCMOS33[17]  (.D(Data[17]), .PAD(PAD[17]));
    OUTBUF_LVCMOS33 \OUTBUF_LVCMOS33[7]  (.D(Data[7]), .PAD(PAD[7]));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule

// _Disclaimer: Please leave the following comments in the file, they are for internal purposes only._


// _GEN_File_Contents_

// Version:11.9.0.4
// ACTGENU_CALL:1
// BATCH:T
// FAM:PA3LC
// OUTFORMAT:Verilog
// LPMTYPE:LPM_IO_OUTBUF
// LPM_HINT:OUTBUF_SP
// INSERT_PAD:NO
// INSERT_IOREG:NO
// GEN_BHV_VHDL_VAL:F
// GEN_BHV_VERILOG_VAL:F
// MGNTIMER:F
// MGNCMPL:T
// DESDIR:C:/Users/micha/SynologyDrive/Engineering/Projects/CHESS OBC/SoC/LiberoProjects/Clyde/Clyde/smartgen\SRAM_ADDRESS_IO
// GEN_BEHV_MODULE:F
// SMARTGEN_DIE:IS4X2M1
// SMARTGEN_PACKAGE:tq144
// AGENIII_IS_SUBPROJECT_LIBERO:T
// WIDTH:20
// TYPE:LVCMOS33
// TRIEN_POLARITY:0
// CLR_POLARITY:0

// _End_Comments_

