`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module AND3_core(
       Data,
       Result
    );
input  [2:0] Data;
output Result;

    
    AND3 Start (.A(Data[0]), .B(Data[1]), .C(Data[2]), .Y(Result));
    
endmodule

// _Disclaimer: Please leave the following comments in the file, they are for internal purposes only._


// _GEN_File_Contents_

// Version:11.9.0.4
// ACTGENU_CALL:1
// BATCH:T
// FAM:PA3LC
// OUTFORMAT:Verilog
// LPMTYPE:LPM_AND
// LPM_HINT:NONE
// INSERT_PAD:NO
// INSERT_IOREG:NO
// GEN_BHV_VHDL_VAL:F
// GEN_BHV_VERILOG_VAL:F
// MGNTIMER:F
// MGNCMPL:T
// DESDIR:C:/Users/micha/SynologyDrive/Engineering/Projects/CHESS OBC/SoC/LiberoProjects/Clyde/Clyde/smartgen\AND3_core
// GEN_BEHV_MODULE:F
// SMARTGEN_DIE:IS4X2M1
// SMARTGEN_PACKAGE:tq144
// AGENIII_IS_SUBPROJECT_LIBERO:T
// SIZE:3
// RESULT_POLARITY:1

// _End_Comments_

