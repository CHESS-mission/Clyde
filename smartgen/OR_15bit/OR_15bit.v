`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module OR_15bit(
       Data,
       Result
    );
input  [15:0] Data;
output Result;

    wire \CI[0] , \CI[1] , OR2_0_Y, OR3_1_Y, OR3_3_Y, OR3_0_Y, OR3_2_Y;
    
    OR3 OR3_2 (.A(Data[3]), .B(Data[4]), .C(Data[5]), .Y(OR3_2_Y));
    OR3 OR3_1 (.A(Data[12]), .B(Data[13]), .C(OR2_0_Y), .Y(OR3_1_Y));
    OR3 OR3_0 (.A(Data[6]), .B(Data[7]), .C(Data[8]), .Y(OR3_0_Y));
    OR3 Start (.A(Data[0]), .B(Data[1]), .C(Data[2]), .Y(\CI[0] ));
    OR3 OR3_3 (.A(Data[9]), .B(Data[10]), .C(Data[11]), .Y(OR3_3_Y));
    OR3 OR3_Result (.A(OR3_1_Y), .B(\CI[1] ), .C(OR3_3_Y), .Y(Result));
    OR2 OR2_0 (.A(Data[14]), .B(Data[15]), .Y(OR2_0_Y));
    OR3 \OR3_CI[1]  (.A(OR3_0_Y), .B(\CI[0] ), .C(OR3_2_Y), .Y(\CI[1] )
        );
    
endmodule

// _Disclaimer: Please leave the following comments in the file, they are for internal purposes only._


// _GEN_File_Contents_

// Version:11.9.0.4
// ACTGENU_CALL:1
// BATCH:T
// FAM:PA3LC
// OUTFORMAT:Verilog
// LPMTYPE:LPM_OR
// LPM_HINT:NONE
// INSERT_PAD:NO
// INSERT_IOREG:NO
// GEN_BHV_VHDL_VAL:F
// GEN_BHV_VERILOG_VAL:F
// MGNTIMER:F
// MGNCMPL:T
// DESDIR:C:/Users/micha/SynologyDrive/Engineering/Projects/CHESS OBC/SoC/LiberoProjects/Clyde/Clyde/smartgen\OR_15bit
// GEN_BEHV_MODULE:F
// SMARTGEN_DIE:IS4X2M1
// SMARTGEN_PACKAGE:tq144
// AGENIII_IS_SUBPROJECT_LIBERO:T
// SIZE:16
// RESULT_POLARITY:1

// _End_Comments_

