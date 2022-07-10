//--------------------------------------------------------------------
// Created by Microsemi SmartDesign Sat Jul 09 21:10:16 2022
// Parameters for COREABC
//--------------------------------------------------------------------


parameter ABCCODE = "JUMP $MAIN

// --------------------------------------
// Interrupt Routing (Address 1)
// --------------------------------------

// send 0x55
    APBWRT DAT8 1 0 0x55
    // Refresh timer and clear interrupt
    APBWRT DAT 0 0x00 0x00FF
    APBWRT DAT 0 0x10 0x0000
    RETISR

// --------------------------------------
// Main Program
// --------------------------------------
$MAIN 
    //Init UART
    //APBWRT DAT8 1 8 27
    //APBWRT DAT8 1 12 1

    // Load timer with 0xFF and enable timer & interrupt
    APBWRT DAT 0 0x00 0x00FF
    APBWRT DAT 0 0x08 0x0003
    
    // Infinite Loop (only interrupts)
    $LOOP
        NOP
        jump $LOOP
";
parameter ACT_CALIBRATIONDATA = 1;
parameter APB_AWIDTH = 12;
parameter APB_DWIDTH = 8;
parameter APB_SDEPTH = 2;
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
parameter IFWIDTH = 4;
parameter IIWIDTH = 8;
parameter IMEM_APB_ACCESS = 0;
parameter INITWIDTH = 16;
parameter INSMODE = 0;
parameter IOWIDTH = 8;
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
