`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module acc_20bit(
       DataA,
       Enable,
       Aclr,
       Clock,
       Sum
    );
input  [19:0] DataA;
input  Enable;
input  Aclr;
input  Clock;
output [19:0] Sum;

    wire \SumInt[0] , \SumInt[1] , \SumInt[2] , \SumInt[3] , 
        \SumInt[4] , \SumInt[5] , \SumInt[6] , \SumInt[7] , 
        \SumInt[8] , \SumInt[9] , \SumInt[10] , \SumInt[11] , 
        \SumInt[12] , \SumInt[13] , \SumInt[14] , \SumInt[15] , 
        \SumInt[16] , \SumInt[17] , \SumInt[18] , \SumInt[19] , 
        AND2_0_Y, MAJ3_15_Y, MAJ3_7_Y, MAJ3_12_Y, MAJ3_0_Y, MAJ3_10_Y, 
        MAJ3_17_Y, MAJ3_9_Y, MAJ3_16_Y, MAJ3_11_Y, MAJ3_8_Y, MAJ3_3_Y, 
        MAJ3_14_Y, MAJ3_2_Y, MAJ3_1_Y, MAJ3_13_Y, MAJ3_5_Y, MAJ3_6_Y, 
        MAJ3_4_Y, BUFF_1_Y, BUFF_2_Y, BUFF_0_Y, BUFF_3_Y, INV_0_Y, 
        INV_2_Y, INV_1_Y, MX2_12_Y, MX2_5_Y, MX2_9_Y, MX2_2_Y, MX2_1_Y, 
        MX2_18_Y, MX2_8_Y, MX2_17_Y, MX2_15_Y, MX2_0_Y, MX2_4_Y, 
        MX2_13_Y, MX2_19_Y, MX2_11_Y, MX2_10_Y, MX2_14_Y, MX2_6_Y, 
        MX2_7_Y, MX2_3_Y, MX2_16_Y;
    
    MX2 MX2_18 (.A(\SumInt[11] ), .B(Sum[11]), .S(BUFF_0_Y), .Y(
        MX2_18_Y));
    MAJ3 MAJ3_10 (.A(MAJ3_0_Y), .B(DataA[5]), .C(Sum[5]), .Y(MAJ3_10_Y)
        );
    MX2 MX2_12 (.A(\SumInt[12] ), .B(Sum[12]), .S(BUFF_0_Y), .Y(
        MX2_12_Y));
    MX2 MX2_10 (.A(\SumInt[16] ), .B(Sum[16]), .S(BUFF_3_Y), .Y(
        MX2_10_Y));
    MX2 MX2_7 (.A(\SumInt[2] ), .B(Sum[2]), .S(BUFF_1_Y), .Y(MX2_7_Y));
    MX2 MX2_15 (.A(\SumInt[17] ), .B(Sum[17]), .S(BUFF_3_Y), .Y(
        MX2_15_Y));
    XOR3 \XOR3_SumInt[1]  (.A(DataA[1]), .B(Sum[1]), .C(AND2_0_Y), .Y(
        \SumInt[1] ));
    BUFF BUFF_0 (.A(Enable), .Y(BUFF_0_Y));
    MAJ3 MAJ3_6 (.A(MAJ3_5_Y), .B(DataA[17]), .C(Sum[17]), .Y(MAJ3_6_Y)
        );
    MAJ3 MAJ3_4 (.A(MAJ3_6_Y), .B(DataA[18]), .C(Sum[18]), .Y(MAJ3_4_Y)
        );
    DFN1C1 \DFN1C1_Sum[4]  (.D(MX2_3_Y), .CLK(Clock), .CLR(INV_0_Y), 
        .Q(Sum[4]));
    AND2 AND2_0 (.A(DataA[0]), .B(Sum[0]), .Y(AND2_0_Y));
    XOR3 \XOR3_SumInt[12]  (.A(DataA[12]), .B(Sum[12]), .C(MAJ3_3_Y), 
        .Y(\SumInt[12] ));
    MAJ3 MAJ3_16 (.A(MAJ3_9_Y), .B(DataA[8]), .C(Sum[8]), .Y(MAJ3_16_Y)
        );
    DFN1C1 \DFN1C1_Sum[2]  (.D(MX2_7_Y), .CLK(Clock), .CLR(INV_0_Y), 
        .Q(Sum[2]));
    MX2 MX2_16 (.A(\SumInt[19] ), .B(Sum[19]), .S(BUFF_3_Y), .Y(
        MX2_16_Y));
    XOR3 \XOR3_SumInt[8]  (.A(DataA[8]), .B(Sum[8]), .C(MAJ3_9_Y), .Y(
        \SumInt[8] ));
    MX2 MX2_2 (.A(\SumInt[10] ), .B(Sum[10]), .S(BUFF_0_Y), .Y(MX2_2_Y)
        );
    XOR2 \XOR2_SumInt[0]  (.A(DataA[0]), .B(Sum[0]), .Y(\SumInt[0] ));
    INV INV_1 (.A(Aclr), .Y(INV_1_Y));
    MX2 MX2_1 (.A(\SumInt[18] ), .B(Sum[18]), .S(BUFF_3_Y), .Y(MX2_1_Y)
        );
    DFN1C1 \DFN1C1_Sum[12]  (.D(MX2_12_Y), .CLK(Clock), .CLR(INV_2_Y), 
        .Q(Sum[12]));
    MAJ3 MAJ3_3 (.A(MAJ3_8_Y), .B(DataA[11]), .C(Sum[11]), .Y(MAJ3_3_Y)
        );
    DFN1C1 \DFN1C1_Sum[14]  (.D(MX2_0_Y), .CLK(Clock), .CLR(INV_1_Y), 
        .Q(Sum[14]));
    DFN1C1 \DFN1C1_Sum[16]  (.D(MX2_10_Y), .CLK(Clock), .CLR(INV_1_Y), 
        .Q(Sum[16]));
    XOR3 \XOR3_SumInt[11]  (.A(DataA[11]), .B(Sum[11]), .C(MAJ3_8_Y), 
        .Y(\SumInt[11] ));
    XOR3 \XOR3_SumInt[6]  (.A(DataA[6]), .B(Sum[6]), .C(MAJ3_10_Y), .Y(
        \SumInt[6] ));
    DFN1C1 \DFN1C1_Sum[1]  (.D(MX2_5_Y), .CLK(Clock), .CLR(INV_0_Y), 
        .Q(Sum[1]));
    XOR3 \XOR3_SumInt[9]  (.A(DataA[9]), .B(Sum[9]), .C(MAJ3_16_Y), .Y(
        \SumInt[9] ));
    MX2 MX2_0 (.A(\SumInt[14] ), .B(Sum[14]), .S(BUFF_0_Y), .Y(MX2_0_Y)
        );
    MAJ3 MAJ3_11 (.A(MAJ3_16_Y), .B(DataA[9]), .C(Sum[9]), .Y(
        MAJ3_11_Y));
    XOR3 \XOR3_SumInt[14]  (.A(DataA[14]), .B(Sum[14]), .C(MAJ3_2_Y), 
        .Y(\SumInt[14] ));
    XOR3 \XOR3_SumInt[7]  (.A(DataA[7]), .B(Sum[7]), .C(MAJ3_17_Y), .Y(
        \SumInt[7] ));
    XOR3 \XOR3_SumInt[18]  (.A(DataA[18]), .B(Sum[18]), .C(MAJ3_6_Y), 
        .Y(\SumInt[18] ));
    BUFF BUFF_1 (.A(Enable), .Y(BUFF_1_Y));
    DFN1C1 \DFN1C1_Sum[15]  (.D(MX2_14_Y), .CLK(Clock), .CLR(INV_1_Y), 
        .Q(Sum[15]));
    MAJ3 MAJ3_1 (.A(MAJ3_2_Y), .B(DataA[14]), .C(Sum[14]), .Y(MAJ3_1_Y)
        );
    DFN1C1 \DFN1C1_Sum[6]  (.D(MX2_4_Y), .CLK(Clock), .CLR(INV_0_Y), 
        .Q(Sum[6]));
    XOR3 \XOR3_SumInt[2]  (.A(DataA[2]), .B(Sum[2]), .C(MAJ3_15_Y), .Y(
        \SumInt[2] ));
    MX2 MX2_5 (.A(\SumInt[1] ), .B(Sum[1]), .S(BUFF_1_Y), .Y(MX2_5_Y));
    MX2 MX2_14 (.A(\SumInt[15] ), .B(Sum[15]), .S(BUFF_3_Y), .Y(
        MX2_14_Y));
    XOR3 \XOR3_SumInt[17]  (.A(DataA[17]), .B(Sum[17]), .C(MAJ3_5_Y), 
        .Y(\SumInt[17] ));
    MX2 MX2_9 (.A(\SumInt[8] ), .B(Sum[8]), .S(BUFF_2_Y), .Y(MX2_9_Y));
    XOR3 \XOR3_SumInt[10]  (.A(DataA[10]), .B(Sum[10]), .C(MAJ3_11_Y), 
        .Y(\SumInt[10] ));
    XOR3 \XOR3_SumInt[5]  (.A(DataA[5]), .B(Sum[5]), .C(MAJ3_0_Y), .Y(
        \SumInt[5] ));
    XOR3 \XOR3_SumInt[3]  (.A(DataA[3]), .B(Sum[3]), .C(MAJ3_7_Y), .Y(
        \SumInt[3] ));
    MX2 MX2_4 (.A(\SumInt[6] ), .B(Sum[6]), .S(BUFF_2_Y), .Y(MX2_4_Y));
    INV INV_2 (.A(Aclr), .Y(INV_2_Y));
    MAJ3 MAJ3_12 (.A(MAJ3_7_Y), .B(DataA[3]), .C(Sum[3]), .Y(MAJ3_12_Y)
        );
    XOR3 \XOR3_SumInt[15]  (.A(DataA[15]), .B(Sum[15]), .C(MAJ3_1_Y), 
        .Y(\SumInt[15] ));
    MAJ3 MAJ3_8 (.A(MAJ3_11_Y), .B(DataA[10]), .C(Sum[10]), .Y(
        MAJ3_8_Y));
    MAJ3 MAJ3_7 (.A(MAJ3_15_Y), .B(DataA[2]), .C(Sum[2]), .Y(MAJ3_7_Y));
    DFN1C1 \DFN1C1_Sum[10]  (.D(MX2_2_Y), .CLK(Clock), .CLR(INV_2_Y), 
        .Q(Sum[10]));
    MAJ3 MAJ3_15 (.A(AND2_0_Y), .B(DataA[1]), .C(Sum[1]), .Y(MAJ3_15_Y)
        );
    DFN1C1 \DFN1C1_Sum[8]  (.D(MX2_9_Y), .CLK(Clock), .CLR(INV_2_Y), 
        .Q(Sum[8]));
    DFN1C1 \DFN1C1_Sum[3]  (.D(MX2_6_Y), .CLK(Clock), .CLR(INV_0_Y), 
        .Q(Sum[3]));
    XOR3 \XOR3_SumInt[16]  (.A(DataA[16]), .B(Sum[16]), .C(MAJ3_13_Y), 
        .Y(\SumInt[16] ));
    XOR3 \XOR3_SumInt[19]  (.A(DataA[19]), .B(Sum[19]), .C(MAJ3_4_Y), 
        .Y(\SumInt[19] ));
    MAJ3 MAJ3_5 (.A(MAJ3_13_Y), .B(DataA[16]), .C(Sum[16]), .Y(
        MAJ3_5_Y));
    DFN1C1 \DFN1C1_Sum[5]  (.D(MX2_8_Y), .CLK(Clock), .CLR(INV_0_Y), 
        .Q(Sum[5]));
    MAJ3 MAJ3_13 (.A(MAJ3_1_Y), .B(DataA[15]), .C(Sum[15]), .Y(
        MAJ3_13_Y));
    MX2 MX2_6 (.A(\SumInt[3] ), .B(Sum[3]), .S(BUFF_1_Y), .Y(MX2_6_Y));
    DFN1C1 \DFN1C1_Sum[0]  (.D(MX2_11_Y), .CLK(Clock), .CLR(INV_0_Y), 
        .Q(Sum[0]));
    XOR3 \XOR3_SumInt[4]  (.A(DataA[4]), .B(Sum[4]), .C(MAJ3_12_Y), .Y(
        \SumInt[4] ));
    DFN1C1 \DFN1C1_Sum[7]  (.D(MX2_19_Y), .CLK(Clock), .CLR(INV_2_Y), 
        .Q(Sum[7]));
    DFN1C1 \DFN1C1_Sum[9]  (.D(MX2_17_Y), .CLK(Clock), .CLR(INV_2_Y), 
        .Q(Sum[9]));
    MAJ3 MAJ3_2 (.A(MAJ3_14_Y), .B(DataA[13]), .C(Sum[13]), .Y(
        MAJ3_2_Y));
    MX2 MX2_13 (.A(\SumInt[13] ), .B(Sum[13]), .S(BUFF_0_Y), .Y(
        MX2_13_Y));
    DFN1C1 \DFN1C1_Sum[19]  (.D(MX2_16_Y), .CLK(Clock), .CLR(INV_1_Y), 
        .Q(Sum[19]));
    MX2 MX2_17 (.A(\SumInt[9] ), .B(Sum[9]), .S(BUFF_2_Y), .Y(MX2_17_Y)
        );
    DFN1C1 \DFN1C1_Sum[13]  (.D(MX2_13_Y), .CLK(Clock), .CLR(INV_2_Y), 
        .Q(Sum[13]));
    INV INV_0 (.A(Aclr), .Y(INV_0_Y));
    DFN1C1 \DFN1C1_Sum[17]  (.D(MX2_15_Y), .CLK(Clock), .CLR(INV_1_Y), 
        .Q(Sum[17]));
    DFN1C1 \DFN1C1_Sum[11]  (.D(MX2_18_Y), .CLK(Clock), .CLR(INV_2_Y), 
        .Q(Sum[11]));
    DFN1C1 \DFN1C1_Sum[18]  (.D(MX2_1_Y), .CLK(Clock), .CLR(INV_1_Y), 
        .Q(Sum[18]));
    XOR3 \XOR3_SumInt[13]  (.A(DataA[13]), .B(Sum[13]), .C(MAJ3_14_Y), 
        .Y(\SumInt[13] ));
    MAJ3 MAJ3_0 (.A(MAJ3_12_Y), .B(DataA[4]), .C(Sum[4]), .Y(MAJ3_0_Y));
    MX2 MX2_19 (.A(\SumInt[7] ), .B(Sum[7]), .S(BUFF_2_Y), .Y(MX2_19_Y)
        );
    MAJ3 MAJ3_14 (.A(MAJ3_3_Y), .B(DataA[12]), .C(Sum[12]), .Y(
        MAJ3_14_Y));
    MAJ3 MAJ3_9 (.A(MAJ3_17_Y), .B(DataA[7]), .C(Sum[7]), .Y(MAJ3_9_Y));
    BUFF BUFF_3 (.A(Enable), .Y(BUFF_3_Y));
    MX2 MX2_3 (.A(\SumInt[4] ), .B(Sum[4]), .S(BUFF_1_Y), .Y(MX2_3_Y));
    MX2 MX2_8 (.A(\SumInt[5] ), .B(Sum[5]), .S(BUFF_2_Y), .Y(MX2_8_Y));
    MAJ3 MAJ3_17 (.A(MAJ3_10_Y), .B(DataA[6]), .C(Sum[6]), .Y(
        MAJ3_17_Y));
    MX2 MX2_11 (.A(\SumInt[0] ), .B(Sum[0]), .S(BUFF_1_Y), .Y(MX2_11_Y)
        );
    BUFF BUFF_2 (.A(Enable), .Y(BUFF_2_Y));
    
endmodule

// _Disclaimer: Please leave the following comments in the file, they are for internal purposes only._


// _GEN_File_Contents_

// Version:11.9.0.4
// ACTGENU_CALL:1
// BATCH:T
// FAM:PA3LC
// OUTFORMAT:Verilog
// LPMTYPE:LPM_ADD_SUB
// LPM_HINT:RIPACC
// INSERT_PAD:NO
// INSERT_IOREG:NO
// GEN_BHV_VHDL_VAL:F
// GEN_BHV_VERILOG_VAL:F
// MGNTIMER:F
// MGNCMPL:T
// DESDIR:C:/Users/micha/SynologyDrive/Engineering/Projects/CHESS OBC/SoC/LiberoProjects/Clyde/Clyde/smartgen\acc_20bit
// GEN_BEHV_MODULE:F
// SMARTGEN_DIE:IS4X2M1
// SMARTGEN_PACKAGE:tq144
// AGENIII_IS_SUBPROJECT_LIBERO:T
// CI_POLARITY:2
// CO_POLARITY:2
// WIDTH:20
// EN_POLARITY:0
// CLR_POLARITY:0
// CLK_EDGE:RISE
// FF_TYPE:REGULAR
// CLR_FANIN:AUTO
// CLR_VAL:8
// EN_FANIN:AUTO
// EN_VAL:6
// CLK_FANIN:MANUAL
// CLK_VAL:1
// DEBUG:0

// _End_Comments_

