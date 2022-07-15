//--------------------------------------------------------------------
// Created by Microsemi SmartDesign Thu Jul 14 21:51:11 2022
// Parameters for COREABC
//--------------------------------------------------------------------


parameter ABCCODE = "JUMP $MAIN
// --------------- 
// Interrupt Routine 
// ---------------
    // print to uart
    APBWRT DAT8 1 0x000 ':'
    APBWRT DAT8 1 0x000 'D'

    // write to SPI
    APBWRT DAT 2 0x0C 'S'
    APBWRT DAT 2 0x0C 'P'
    APBWRT DAT 2 0x0C 'I'
    // clear timer interrupt
    APBWRT DAT 0 0x10 0x0000

    RETISR


// --------------- 
// Main Program 
// ---------------
$MAIN
    // main
    // init uart is not needed (default works)
    // init uart function to be implemented
    APBWRT DAT 0 0x00 255
    APBWRT DAT 0 0x08 3

    // write to SPI
    // enable CoreSPI as master
    APBWRT DAT 2 0x00 0b11
    //SS 1
    APBWRT DAT 2 0x24 1

";
parameter ACT_CALIBRATIONDATA = 1;
parameter APB_AWIDTH = 12;
parameter APB_DWIDTH = 8;
parameter APB_SDEPTH = 3;
parameter CODEHEXDUMP = "";
parameter CODEHEXDUMP2 = "";
parameter DEBUG = 1;
parameter EN_ACM = 1;
parameter EN_ADD = 1;
parameter EN_ALURAM = 0;
parameter EN_AND = 1;
parameter EN_CALL = 1;
parameter EN_DATAM = 2;
parameter EN_INC = 1;
parameter EN_INDIRECT = 1;
parameter EN_INT = 2;
parameter EN_IOREAD = 1;
parameter EN_IOWRT = 1;
parameter EN_MULT = 0;
parameter EN_OR = 1;
parameter EN_PUSH = 1;
parameter EN_RAM = 1;
parameter EN_RAM_ECC = 0;
parameter EN_SHL = 1;
parameter EN_SHR = 1;
parameter EN_XOR = 1;
parameter FAMILY = 15;
parameter HDL_license = "U";
parameter ICWIDTH = 12;
parameter IFWIDTH = 1;
parameter IIWIDTH = 1;
parameter IMEM_APB_ACCESS = 0;
parameter INITWIDTH = 16;
parameter INSMODE = 0;
parameter IOWIDTH = 1;
parameter ISRADDR = 1;
parameter MAX_NVMDWIDTH = 32;
parameter STWIDTH = 8;
parameter TESTBENCH = "User";
parameter TESTMODE = 0;
parameter UNIQ_STRING = "Minimal_SoC_COREABC_0";
parameter UNIQ_STRING_LENGTH = 21;
parameter VERILOGCODE = "";
parameter VERILOGVARS = "";
parameter VHDLCODE = "";
parameter VHDLVARS = "";
parameter ZRWIDTH = 8;
