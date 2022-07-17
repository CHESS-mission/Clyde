`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module SRAM_Control_IO(
       Data,
       PAD
    );
input  [4:0] Data;
output [4:0] PAD;

    wire VCC;
    wire VCC_power_net1;
    assign VCC = VCC_power_net1;
    
    OUTBUF_LVCMOS33 \OUTBUF_LVCMOS33[1]  (.D(Data[1]), .PAD(PAD[1]));
    OUTBUF_LVCMOS33 \OUTBUF_LVCMOS33[2]  (.D(Data[2]), .PAD(PAD[2]));
    OUTBUF_LVCMOS33 \OUTBUF_LVCMOS33[0]  (.D(Data[0]), .PAD(PAD[0]));
    OUTBUF_LVCMOS33 \OUTBUF_LVCMOS33[4]  (.D(Data[4]), .PAD(PAD[4]));
    OUTBUF_LVCMOS33 \OUTBUF_LVCMOS33[3]  (.D(Data[3]), .PAD(PAD[3]));
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
// DESDIR:C:/Users/micha/SynologyDrive/Engineering/Projects/CHESS OBC/SoC/LiberoProjects/Clyde/Clyde/smartgen\SRAM_Control_IO
// GEN_BEHV_MODULE:F
// SMARTGEN_DIE:IS4X2M1
// SMARTGEN_PACKAGE:tq144
// AGENIII_IS_SUBPROJECT_LIBERO:T
// WIDTH:5
// TYPE:LVCMOS33
// TRIEN_POLARITY:0
// CLR_POLARITY:0

// _End_Comments_

