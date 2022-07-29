`timescale 1 ns / 100 ps
//  ********************************************************************/
//  Copyright 2008 Actel Corporation.  All rights reserved.
//  IP Engineering
//
//  ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
//  ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
//  IN ADVANCE IN WRITING.
//
//  File:  instructions.vhd
//
//  Description: Simple APB Bus Controller
//               Top Level
//
// Rev: 2.4   24Jan08 IPB  : Production Release
//
// SVN Revision Information:
// SVN $Revision: 11064 $
// SVN $Date: 2009-11-17 09:11:16 -0800 (Tue, 17 Nov 2009) $
//
//  Notes:
//    TESTMODE is used to set what tests are used for verification tests
//    based on the core configuration.
//
//  *********************************************************************/
module Minimal_SoC_COREABC_0_INSTRUCTIONS (ADDRESS, INSTRUCTION);
    parameter  AWIDTH   = 0;
    parameter  DWIDTH   = 0;
    parameter  SWIDTH   = 0;
    parameter  ICWIDTH  = 0;
    parameter  IIWIDTH  = 0;
    parameter  IFWIDTH  = 0;
    parameter  IWWIDTH  = 0;
    parameter  EN_MULT  = 0;
    parameter  EN_INC   = 0;
    parameter  TESTMODE = 0;
    `include "support.v"
    input[ICWIDTH - 1:0] ADDRESS;
    output[IWWIDTH - 1:0] INSTRUCTION;
    reg[IWWIDTH - 1:0] INSTRUCTION;
    localparam AW = AWIDTH;
    localparam DW = DWIDTH;
    localparam SW = max(SWIDTH,1);
    localparam IW = ICWIDTH;
    localparam FW = 4 + IIWIDTH;
    reg[IWWIDTH - 1:0] INS;
    // These allow the passing of IFWIDTH to the support package
    localparam iJUMP   = iJUMPB   + IFWIDTH;
    localparam iCALL   = iCALLB   + IFWIDTH;
    localparam iRETURN = iRETURNB + IFWIDTH;
    localparam iRETISR = iRETISRB + IFWIDTH;
    localparam iWAIT   = iWAITB   + IFWIDTH;
    localparam iHALT   = iHALTB   + IFWIDTH;
    localparam iINC    = iINCB    + 2*EN_MULT + 1 - EN_INC;
    // These constants used internally for CoreAI
    localparam iACM_CTRLSTAT      = 8'h00;
    localparam iACM_ADDR_ADDR     = 8'h04;
    localparam iACM_DATA_ADDR     = 8'h08;
    localparam iADC_CTRL2_HI_ADDR = 8'h10;
    localparam iADC_STAT_HI_ADDR  = 8'h20;
    // CCDirective Insert constants
parameter Sym_REG0 = 0;
parameter Sym_REG1 = 1;
parameter Sym_REG2 = 2;
parameter Sym_REG3 = 3;
parameter Sym_REG4 = 4;
parameter Sym_REG5 = 5;
parameter Sym_REG6 = 6;
parameter Sym_REG7 = 7;
parameter Sym_REG8 = 8;
parameter Sym_REG9 = 9;
parameter Sym_REG10 = 10;
parameter Sym_REG11 = 11;
parameter Sym_REG12 = 12;
parameter Sym_REG13 = 13;
parameter Sym_REG14 = 14;
parameter Sym_REG15 = 15;
parameter Sym_COMMAND_REG = 16;
parameter Sym_COMMAND_1_BIT = 1;
parameter Sym_COMMAND_2_BIT = 2;
parameter Sym_COMMAND_3_BIT = 4;
parameter Sym_COMMAND_4_BIT = 8;
parameter Sym_COMMAND_5_BIT = 16;
parameter Sym_COMMAND_6_BIT = 32;
parameter Sym_COMMAND_7_BIT = 64;
parameter Sym_COMMAND_8_BIT = 128;
parameter Sym_RAM_TEST_REGION_START = 16;
parameter Sym_RAM_TEST_REGION_END = 127;
parameter Sym_TIMER = 0;
parameter Sym_UART = 1;
parameter Sym_SPI = 2;
parameter Sym_ON_CHIP_SRAM = 3;
parameter Sym_INT_RESET_REG = 16;
parameter Sym_LOAD_REG = 0;
parameter Sym_PRESCALER = 12;
parameter Sym_TIMER_CONTROL = 8;
parameter Sym_PRESCALER2 = 0;
parameter Sym_PRESCALER4 = 1;
parameter Sym_PRESCALER8 = 2;
parameter Sym_PRESCALER16 = 3;
parameter Sym_PRESCALER32 = 4;
parameter Sym_PRESCALER64 = 5;
parameter Sym_PRESCALER128 = 6;
parameter Sym_PRESCALER256 = 7;
parameter Sym_PRESCALER512 = 8;
parameter Sym_PRESCALER1024 = 9;
parameter Sym_PRESCALER2048 = 10;
parameter Sym_PRESCALER4096 = 11;
parameter Sym_PRESCALER8182 = 12;
parameter Sym_PRESCALER16364 = 13;
parameter Sym_PRESCALER32728 = 14;
parameter Sym_PRESCALER65456 = 15;
parameter Sym_UART_TX_REG = 0;
parameter Sym_UART_RX_REG = 4;
parameter Sym_ON_CHIP_RAM_TEST_START = 256;
parameter Sym_ON_CHIP_RAM_TEST_PAGES = 3;
parameter Sym_ON_CHIP_RAM_TEST_PAGESIZE = 255;
parameter Label_RESET = 0;
parameter Label_INTERRUPT_DO_NOT_CALL = 1;
parameter Label_INTERRUPT_TIMER = 4;
parameter Label_INTERRUPT_UART_RX = 7;
parameter Label_INT_RX_CMP1 = 8;
parameter Label_INT_RX_CMP2 = 13;
parameter Label_INT_RX_CMP3 = 18;
parameter Label_INT_RX_CMP4 = 23;
parameter Label_INT_RX_DEFAULT = 28;
parameter Label_INT_RX_CMP_END = 28;
parameter Label_INTERRUPT_END = 29;
parameter Label_INIT = 31;
parameter Label_MAIN = 40;
parameter Label_MAIN_LOOP = 40;
parameter Label_INFINIT_LOOP = 54;
parameter Label_COMMAND_1 = 56;
parameter Label_COMMAND_2 = 58;
parameter Label_COMMAND_3 = 60;
parameter Label_COMMAND_4 = 62;
parameter Label_WAIT_AND_PRINT_ACC_TO_UART = 64;
    // These are the procedure calls to create the instruction sequence
    always @(ADDRESS)
    begin : UROM
        integer ADDRINT;
        ADDRINT = ADDRESS;
        case (TESTMODE)
            0 :
                        begin
                            ////////////////////////////////////////////////////////////////////////////////////////////-
                            case (ADDRINT)
                                // The USER INSTRUCTION SEQUENCE SHOULD BE INSERTED HERE
                                0  : INS <= doins2(iJUMP, 0) ;
                                default  : INS <= {58{1'bx}} ; // default is dont cares, reduces tile counts
                            endcase
                            // CCDirective Insert code
    case (ADDRINT)
      //   --------------- 
      //   Defintitions
      //   ---------------
      //   --------------- 
      //   RAM
      //   ---------------
      //   the stack grouws downwards from 0xFF
      //   registers
      //   Command Register
      //   Bitflip measurement
      //   INPUT0 : UART TX Ready
      //   --------------- 
      //   APB
      //   ---------------
      //   APB SLOTS
      //   --------------- 
      //   Timer
      //   ---------------
      //   TIMER REGISTERS
      //   TIMER PRESCALERS
      //   --------------- 
      //   UART
      //   ---------------
      //   UART REGISTER
      //   --------------- 
      //   on-chip SRAM
      //   ---------------
      //   total 1024 bytes adressed continiously (0x00, 0x01, ..., 0x3FF)
      //   ---------------------
      //    Program Code Start
      //   ---------------------  
      //   The first line is called after a reset. This usually is a jump that goes to the location the actual program starts. 
      //   This is needed as the interrupt is at program memory address 1 (= 2nd instruction).
      // $RESET
       0 : INS <= doins2( iJUMP, Label_INIT);
      //   --------------- 
      //   Interrupt Routine 
      //   ---------------
      // $INTERRUPT_DO_NOT_CALL
       1 : INS <= doins2( iPUSH, iACC);
       2 : INS <= doins4( iJUMP, iIFNOT, iINPUT2, Label_INTERRUPT_TIMER);
       3 : INS <= doins4( iJUMP, iIFNOT, iINPUT1, Label_INTERRUPT_UART_RX);
      // $INTERRUPT_TIMER
      //   increment reg15 and send it to UART
       4 : INS <= doins5( iAPBWRT, iDAT, Sym_UART, Sym_UART_TX_REG, 32'h00000042);
      //   reset timer interrupt
       5 : INS <= doins5( iAPBWRT, iDAT, Sym_TIMER, Sym_INT_RESET_REG, 32'h00000000);
       6 : INS <= doins2( iJUMP, Label_INTERRUPT_END);
      // $INTERRUPT_UART_RX
       7 : INS <= doins3( iAPBREAD, Sym_UART, 32'h00000004);
      //   compare the received value to known commands and set the coresponding bits
      // $INT_RX_CMP1
       8 : INS <= doins3( iCMP, iDAT, 32'h00000001);
       9 : INS <= doins4( iJUMP, iIFNOT, iZERO, Label_INT_RX_CMP2);
      10 : INS <= doins3( iLOAD, iDAT, 1);
      11 : INS <= doins3( iRAMWRT, Sym_COMMAND_REG, iACC);
      12 : INS <= doins2( iJUMP, Label_INT_RX_CMP_END);
      // $INT_RX_CMP2
      13 : INS <= doins3( iCMP, iDAT, 32'h00000002);
      14 : INS <= doins4( iJUMP, iIFNOT, iZERO, Label_INT_RX_CMP3);
      15 : INS <= doins3( iLOAD, iDAT, 2);
      16 : INS <= doins3( iRAMWRT, Sym_COMMAND_REG, iACC);
      17 : INS <= doins2( iJUMP, Label_INT_RX_CMP_END);
      // $INT_RX_CMP3
      18 : INS <= doins3( iCMP, iDAT, 32'h00000003);
      19 : INS <= doins4( iJUMP, iIFNOT, iZERO, Label_INT_RX_CMP4);
      20 : INS <= doins3( iLOAD, iDAT, 4);
      21 : INS <= doins3( iRAMWRT, Sym_COMMAND_REG, iACC);
      22 : INS <= doins2( iJUMP, Label_INT_RX_CMP_END);
      // $INT_RX_CMP4
      23 : INS <= doins3( iCMP, iDAT, 32'h00000004);
      24 : INS <= doins4( iJUMP, iIFNOT, iZERO, Label_INT_RX_DEFAULT);
      25 : INS <= doins3( iLOAD, iDAT, 8);
      26 : INS <= doins3( iRAMWRT, Sym_COMMAND_REG, iACC);
      27 : INS <= doins2( iJUMP, Label_INT_RX_CMP_END);
      // $INT_RX_DEFAULT
      //   received sth. that's not a command
      // $INT_RX_CMP_END
      28 : INS <= doins2( iJUMP, Label_INTERRUPT_END);
      // $INTERRUPT_END
      29 : INS <= doins1( iPOP);
      30 : INS <= doins1( iRETISR);
      //   --------------- 
      //   Init Program 
      //   ---------------
      // $INIT
      //   reset command register
      31 : INS <= doins4( iRAMWRT, Sym_COMMAND_REG, iDAT, 32'h00000000);
      //   ------------------------
      //   UART
      //   ------------------------
      //   set uart baud-rate to 115200 (with 32MHz clock)
      32 : INS <= doins5( iAPBWRT, iDAT, 1, 32'h00000008, 16);
      33 : INS <= doins5( iAPBWRT, iDAT, 1, 32'h00000014, 32'b011);
      34 : INS <= doins5( iAPBWRT, iDAT, 1, 32'h0000000C, 0);
      //   ------------------------
      //   SPI
      //   ------------------------
      //   enable CoreSPI as master
      35 : INS <= doins5( iAPBWRT, iDAT8, Sym_SPI, 32'h00000000, 32'b11);
      //  SS 1
      36 : INS <= doins5( iAPBWRT, iDAT8, Sym_SPI, 32'h00000024, 1);
      //   ------------------------
      //   timer
      //   ------------------------
      //   load value to timer
      37 : INS <= doins5( iAPBWRT, iDAT, Sym_TIMER, Sym_LOAD_REG, 32'h000000FF);
      //   set prescaler to 32
      38 : INS <= doins5( iAPBWRT, iDAT, Sym_TIMER, Sym_PRESCALER, Sym_PRESCALER256);
      //  Enable the timer and its interrupt
      39 : INS <= doins5( iAPBWRT, iDAT, Sym_TIMER, Sym_TIMER_CONTROL, 3);
      //   --------------- 
      //   MAIN Program 
      //   ---------------
      // $MAIN
      // $MAIN_LOOP
      40 : INS <= doins2( iRAMREAD, Sym_COMMAND_REG);
      41 : INS <= doins3( iCMP, iDAT, 32'h00000000);
      42 : INS <= doins4( iJUMP, iIF, iZERO, Label_MAIN_LOOP);
      //   the following code is exectued if there's a command to be run
      43 : INS <= doins3( iCMP, iDAT, Sym_COMMAND_1_BIT);
      44 : INS <= doins4( iCALL, iIF, iZERO, Label_COMMAND_1);
      45 : INS <= doins3( iCMP, iDAT, Sym_COMMAND_2_BIT);
      46 : INS <= doins4( iCALL, iIF, iZERO, Label_COMMAND_2);
      47 : INS <= doins3( iCMP, iDAT, Sym_COMMAND_3_BIT);
      48 : INS <= doins4( iCALL, iIF, iZERO, Label_COMMAND_3);
      49 : INS <= doins3( iCMP, iDAT, Sym_COMMAND_4_BIT);
      50 : INS <= doins4( iCALL, iIF, iZERO, Label_COMMAND_4);
      51 : INS <= doins4( iRAMWRT, Sym_COMMAND_REG, iDAT, 32'h00000000);
      52 : INS <= doins2( iJUMP, Label_MAIN_LOOP);
      53 : INS <= doins2( iJUMP, Label_INFINIT_LOOP);
      // $INFINIT_LOOP
      54 : INS <= doins1( iNOP);
      55 : INS <= doins2( iJUMP, Label_INFINIT_LOOP);
      // $COMMAND_1
      56 : INS <= doins5( iAPBWRT, iDAT, Sym_UART, Sym_UART_TX_REG, 32'h00000011);
      57 : INS <= doins1( iRETURN);
      // $COMMAND_2
      58 : INS <= doins5( iAPBWRT, iDAT, Sym_UART, Sym_UART_TX_REG, 32'h00000022);
      59 : INS <= doins1( iRETURN);
      // $COMMAND_3
      60 : INS <= doins5( iAPBWRT, iDAT, Sym_UART, Sym_UART_TX_REG, 32'h00000033);
      61 : INS <= doins1( iRETURN);
      // $COMMAND_4
      62 : INS <= doins5( iAPBWRT, iDAT, Sym_UART, Sym_UART_TX_REG, 32'h00000044);
      63 : INS <= doins1( iRETURN);
      //   -------------------
      //   Useful Functions 
      //   -------------------
      //   send data from the accumulator to uart. If the TX-buffer is full, this functions waits until the buffer has capacity.
      // $WAIT_AND_PRINT_ACC_TO_UART
      64 : INS <= doins3( iWAIT, iIFNOT, iINPUT0);
      65 : INS <= doins4( iAPBWRT, iACC, Sym_UART, Sym_UART_TX_REG);
      66 : INS <= doins1( iRETURN);
      //   fill the apb sram with fixed numbers: 
      //   page 1: 0x00
      //   page 2: 0xFF
      //   page 3: 0x55
      //   ------------------------------------------------
      default  : INS <= doins1(iNOP) ;
   endcase
                        end
            1 :
                        begin
                            case (ADDRINT)
                                // Jump to test start point
                                0  : INS <= doins2(iJUMP, 1) ;
                                // Simple Test of Boolean Operations
                                1  : INS <= doins2(iLOAD, 8'h55) ; // Set Accumalator to 55hex
                                ////////////////////////////////////////////////////////////////////////////////////////////-
                                // 8-Bit operation simple core
                                2  : INS <= doins2(iAND, 8'h0F) ; // Do some maths and jump to error if one occurs
                                3  : INS <= doins2(iCMP, 8'h05) ;
                                4  : INS <= doins4(iJUMP, iNOTIF, ZERO, 30) ;
                                // APB Bus Cycles, immediate data
                                5  : INS <= doins2(iLOAD, 8'h12) ;
                                6  : INS <= doins5(iAPBWRT, iDAT, 0, 8'h10, 8'h12) ;
                                7  : INS <= doins3(iAPBREAD, 0, 8'h10) ;
                                8  : INS <= doins2(iCMP, 8'h12) ;
                                9  : INS <= doins4(iJUMP, iNOTIF, ZERO, 30) ;
                                // Accumalator writes
                                10  : INS <= doins2(iLOAD, 8'h23) ;
                                11  : INS <= doins4(iAPBWRT, iACC, 0, 8'h20) ;
                                12  : INS <= doins3(iAPBREAD, 0, 8'h20) ;
                                13  : INS <= doins2(iCMP, 8'h23) ;
                                14  : INS <= doins4(iJUMP, iNOTIF, ZERO, 30) ;
                                // Flag Conditions
                                15  : INS <= doins2(iLOAD, 255) ; // set zero flag
                                16  : INS <= doins2(iADD, 1) ;
                                17  : INS <= doins4(iJUMP, iNOTIF, ZERO, 30) ;
                                18  : INS <= doins2(iADD, 1) ; // not set
                                19  : INS <= doins4(iCALL, iIF, ZERO, 30) ;
                                20  : INS <= doins4(iCALL, iIF, NEGATIVE, 30) ; // number is positive
                                21  : INS <= doins2(iADD, 8'hF6) ; // will go negative
                                22  : INS <= doins4(iCALL, iNOTIF, NEGATIVE, 30) ; // number is positive
                                // Big negative value
	                         	23  : INS <= doins2( iLOAD,0);                              // Try loading big negative values
                                24  : INS <= doins2( iXOR, -1);
                                25  : INS <= doins2( iADD, 1);                              // not set
                                26  : INS <= doins4( iJUMP,iNOTIF,ZERO,30);
                                // Done tests, jump to signal all done
                                27  : INS <= doins2(iJUMP, 28) ;
                                ////////////////////////////////////////////////////////////////////////////////////
                                // All tests complete
                                28  : INS <= doins3(iIOWRT, iDAT, 253) ;
                                29  : INS <= doins2(iJUMP, 29) ;
                                // Error Condition
                                30  : INS <= doins3(iIOWRT, iDAT, 254) ; // Error Condition
                                31  : INS <= doins2(iJUMP, 31) ;
                                default  : INS <= doins1(iNOP) ;
                            endcase
                        end
            2 :
                        begin
                            case (ADDRINT)
                                // Jump to test start point
                                0  : INS <= doins2(iJUMP, 1) ;
                                // Simple Test of Boolean Operations
                                1  : INS <= doins2(iLOAD, 16'h1255) ; // Set Accumalator to 55hex
                                ////////////////////////////////////////////////////////////////////////////////////////////-
                                // 16-Bit operation simple core
                                2  : INS <= doins2(iAND, 16'h0F0F) ; // Do some maths and jump to error if one occurs
                                3  : INS <= doins2(iCMP, 16'h0205) ;
                                4  : INS <= doins4(iJUMP, iNOTIF, ZERO, 30) ;
                                // APB Bus Cycles, immediate data
                                5  : INS <= doins2(iLOAD, 16'h1111) ;
                                6  : INS <= doins5(iAPBWRT, iDAT, 0, 8'h10, 16'h1234) ;
                                7  : INS <= doins3(iAPBREAD, 0, 8'h10) ;
                                8  : INS <= doins2(iCMP, 16'h1234) ;
                                9  : INS <= doins4(iJUMP, iNOTIF, ZERO, 30) ;
                                // Accumalator writes
                                10  : INS <= doins2(iLOAD, 16'h2312) ;
                                11  : INS <= doins4(iAPBWRT, iACC, 0, 8'h20) ;
                                12  : INS <= doins3(iAPBREAD, 0, 8'h20) ;
                                13  : INS <= doins2(iCMP, 16'h2312) ;
                                14  : INS <= doins4(iJUMP, iNOTIF, ZERO, 30) ;
                                // Flag Conditions
                                15  : INS <= doins2(iLOAD, 16'hFFFF) ; // set zero flag
                                16  : INS <= doins2(iADD, 1) ;
                                17  : INS <= doins4(iJUMP, iNOTIF, ZERO, 30) ;
                                18  : INS <= doins2(iADD, 1) ; // not set
                                19  : INS <= doins4(iCALL, iIF, ZERO, 30) ;
                                20  : INS <= doins4(iCALL, iIF, NEGATIVE, 30) ; // number is positive
                                21  : INS <= doins2(iADD, 16'hFFF6) ; // will go negative
                                22  : INS <= doins4(iCALL, iNOTIF, NEGATIVE, 30) ; // number is positive
                                // Big negative value
	                         	23  : INS <= doins2( iLOAD,0);                              // Try loading big negative values
                                24  : INS <= doins2( iXOR, 16'hFFFF);
                                25  : INS <= doins2( iADD, 1);                              // not set
                                26  : INS <= doins4( iJUMP,iNOTIF,ZERO,30);
                                // Done tests, jump to signal all done
                                27  : INS <= doins2(iJUMP, 28) ;
                                ////////////////////////////////////////////////////////////////////////////////////
                                // All tests complete
                                28  : INS <= doins3(iIOWRT, iDAT, 253) ;
                                29  : INS <= doins2(iJUMP, 29) ;
                                // Error Condition
                                30  : INS <= doins3(iIOWRT, iDAT, 254) ; // Error Condition
                                31  : INS <= doins2(iJUMP, 31) ;
                                default  : INS <= doins1(iNOP) ;
                            endcase
                        end
            3 :
                        begin
                            case (ADDRINT)
                                // Jump to test start point
                                0  : INS <= doins2(iJUMP, 1) ;
                                // Simple Test of Boolean Operations
                                1  : INS <= doins2(iLOAD, 32'h12552345) ; // Set Accumalator to 55hex
                                ////////////////////////////////////////////////////////////////////////////////////////////-
                                ////////////////////////////////////////////////////////////////////////////////////////////-
                                // 32-Bit operation simple core
                                2  : INS <= doins2(iAND, 32'hFF0F0F0F) ; // Do some maths and jump to error if one occurs
                                3  : INS <= doins2(iCMP, 32'h12050305) ;
                                4  : INS <= doins4(iJUMP, iNOTIF, ZERO, 30) ;
                                // APB Bus Cycles, immediate data
                                5  : INS <= doins2(iLOAD, 16'h1111) ;
                                6  : INS <= doins5(iAPBWRT, iDAT, 0, 8'h10, 32'h12345678) ;
                                7  : INS <= doins3(iAPBREAD, 0, 8'h10) ;
                                8  : INS <= doins2(iCMP, 32'h12345678) ;
                                9  : INS <= doins4(iJUMP, iNOTIF, ZERO, 30) ;
                                // Accumalator writes
                                10  : INS <= doins2(iLOAD, 32'h23121234) ;
                                11  : INS <= doins4(iAPBWRT, iACC, 0, 8'h20) ;
                                12  : INS <= doins3(iAPBREAD, 0, 8'h20) ;
                                13  : INS <= doins2(iCMP, 32'h23121234) ;
                                14  : INS <= doins4(iJUMP, iNOTIF, ZERO, 30) ;
                                // Flag Conditions
                                15  : INS <= doins2(iLOAD, -1) ; // set zero flag
                                16  : INS <= doins2(iADD, 1) ;
                                17  : INS <= doins4(iJUMP, iNOTIF, ZERO, 30) ;
                                18  : INS <= doins2(iADD, 1) ; // not set
                                19  : INS <= doins4(iCALL, iIF, ZERO, 30) ;
                                20  : INS <= doins4(iCALL, iIF, NEGATIVE, 30) ; // number is positive
                                21  : INS <= doins2(iADD, -8) ; // will go negative
                                22  : INS <= doins4(iCALL, iNOTIF, NEGATIVE, 30) ; // number is positive
                                // Big negative value
	                         	23  : INS <= doins2( iLOAD,0);                              // Try loading big negative values
                                24  : INS <= doins2( iXOR, -1);
                                25  : INS <= doins2( iADD, 1);                              // not set
                                26  : INS <= doins4( iJUMP,iNOTIF,ZERO,30);
                                // Done tests, jump to signal all done
                                27  : INS <= doins2(iJUMP, 28) ;
                                ////////////////////////////////////////////////////////////////////////////////////
                                // All tests complete
                                28  : INS <= doins3(iIOWRT, iDAT, 253) ;
                                29  : INS <= doins2(iJUMP, 29) ;
                                // Error Condition
                                30  : INS <= doins3(iIOWRT, iDAT, 254) ; // Error Condition
                                31  : INS <= doins2(iJUMP, 31) ;
                                default  : INS <= doins1(iNOP) ;
                            endcase
                        end
            4 :
                        begin
                            case (ADDRINT)
                                // Jump to test start point
                                0  : INS <= doins2(iJUMP, 1) ;
                                // Simple Test of Boolean Operations
                                1  : INS <= doins2(iLOAD, 8'h55) ; // Set Accumalator to 55hex
                                ////////////////////////////////////////////////////////////////////////////////////////////-
                                // 8-Bit operation simple core with RAM
                                2  : INS <= doins2(iAND, 8'h0F) ; // Do some maths and jump to error if one occurs
                                3  : INS <= doins2(iCMP, 8'h05) ;
                                4  : INS <= doins4(iJUMP, iNOTIF, ZERO, 30) ;
                                // APB Bus Cycles, immediate data
                                5  : INS <= doins2(iLOAD, 8'h12) ;
                                6  : INS <= doins5(iAPBWRT, iDAT, 0, 8'h10, 8'h12) ;
                                7  : INS <= doins3(iAPBREAD, 0, 8'h10) ;
                                8  : INS <= doins2(iCMP, 8'h12) ;
                                9  : INS <= doins4(iJUMP, iNOTIF, ZERO, 30) ;
                                // Loop Instruction
                                10  : INS <= doins2(iLOAD, 0) ; // Clear accum
                                11  : INS <= doins3(iLOADZ, iDAT, 5) ;
                                12  : INS <= doins1(iINC) ;
                                13  : INS <= doins1(iDECZ) ;
                                14  : INS <= doins4(iJUMP, iNOTIF, ZZERO, 12) ;
                                15  : INS <= doins2(iCMP, 8'h05) ; // Should loop 5 times
                                16  : INS <= doins4(iJUMP, iNOTIF, ZERO, 30) ;
                                // Memory Block read and write
                                17  : INS <= doins2(iLOAD, 8'h12) ;
                                18  : INS <= doins3(iRAMWRT, 0, iACC) ; // write and then readback to verify
                                19  : INS <= doins1(iINC) ;
                                20  : INS <= doins3(iRAMWRT, 10, iACC) ;
                                21  : INS <= doins2(iRAMREAD, 0) ;
                                22  : INS <= doins2(iCMP, 8'h12) ;
                                23  : INS <= doins4(iJUMP, iNOTIF, ZERO, 30) ;
                                24  : INS <= doins2(iRAMREAD, 10) ;
                                25  : INS <= doins2(iCMP, 8'h13) ;
                                26  : INS <= doins4(iJUMP, iNOTIF, ZERO, 30) ;
                                // Done tests, jump to signal all done
                                27  : INS <= doins2(iJUMP, 28) ;
                                ////////////////////////////////////////////////////////////////////////////////////
                                // All tests complete
                                28  : INS <= doins3(iIOWRT, iDAT, 253) ;
                                29  : INS <= doins2(iJUMP, 29) ;
                                // Error Condition
                                30  : INS <= doins3(iIOWRT, iDAT, 254) ; // Error Condition
                                31  : INS <= doins2(iJUMP, 31) ;
                                default  : INS <= doins1(iNOP) ;
                            endcase
                        end
            5 :
                        begin
                            case (ADDRINT)
                                // Jump to test start point
                                0  : INS <= doins2(iJUMP, 1) ;
                                // Simple Test of Boolean Operations
                                1  : INS <= doins2(iLOAD, 16'h5544) ; // Set Accumalator to 55hex
                                ////////////////////////////////////////////////////////////////////////////////////////////-
                                // 16-Bit operation simple core with RAM
                                2  : INS <= doins2(iAND, 16'h0F0F) ; // Do some maths and jump to error if one occurs
                                3  : INS <= doins2(iCMP, 16'h0504) ;
                                4  : INS <= doins4(iJUMP, iNOTIF, ZERO, 30) ;
                                // APB Bus Cycles, immediate data
                                5  : INS <= doins2(iLOAD, 16'h1111) ;
                                6  : INS <= doins5(iAPBWRT, iDAT, 0, 8'h10, 16'h1234) ;
                                7  : INS <= doins3(iAPBREAD, 0, 8'h10) ;
                                8  : INS <= doins2(iCMP, 16'h1234) ;
                                9  : INS <= doins4(iJUMP, iNOTIF, ZERO, 30) ;
                                // Loop Instruction
                                10  : INS <= doins2(iLOAD, 0) ; // Clear accum
                                11  : INS <= doins3(iLOADZ, iDAT, 5) ;
                                12  : INS <= doins1(iINC) ;
                                13  : INS <= doins1(iDECZ) ;
                                14  : INS <= doins4(iJUMP, iNOTIF, ZZERO, 12) ;
                                15  : INS <= doins2(iCMP, 8'h05) ; // Should loop 5 times
                                16  : INS <= doins4(iJUMP, iNOTIF, ZERO, 30) ;
                                // Memory Block read and write
                                17  : INS <= doins2(iLOAD, 16'h1234) ;
                                18  : INS <= doins3(iRAMWRT, 0, iACC) ; // write and then readback to verify
                                19  : INS <= doins1(iINC) ;
                                20  : INS <= doins3(iRAMWRT, 10, iACC) ;
                                21  : INS <= doins2(iRAMREAD, 0) ;
                                22  : INS <= doins2(iCMP, 16'h1234) ;
                                23  : INS <= doins4(iJUMP, iNOTIF, ZERO, 30) ;
                                24  : INS <= doins2(iRAMREAD, 10) ;
                                25  : INS <= doins2(iCMP, 16'h1235) ;
                                26  : INS <= doins4(iJUMP, iNOTIF, ZERO, 30) ;
                                // Done tests, jump to signal all done
                                27  : INS <= doins2(iJUMP, 28) ;
                                ////////////////////////////////////////////////////////////////////////////////////
                                // All tests complete
                                28  : INS <= doins3(iIOWRT, iDAT, 253) ;
                                29  : INS <= doins2(iJUMP, 29) ;
                                // Error Condition
                                30  : INS <= doins3(iIOWRT, iDAT, 254) ; // Error Condition
                                31  : INS <= doins2(iJUMP, 31) ;
                                default  : INS <= doins1(iNOP) ;
                            endcase
                        end
            6 :
                        begin
                            case (ADDRINT)
                                // Jump to test start point
                                0  : INS <= doins2(iJUMP, 1) ;
                                // Simple Test of Boolean Operations
                                1  : INS <= doins2(iLOAD, 32'h55443322) ; // Set Accumalator to 55hex
                                ////////////////////////////////////////////////////////////////////////////////////////////-
                                // 32-Bit operation simple core with RAM
                                2  : INS <= doins2(iAND, 32'h0F0F0F0F) ; // Do some maths and jump to error if one occurs
                                3  : INS <= doins2(iCMP, 32'h05040302) ;
                                4  : INS <= doins4(iJUMP, iNOTIF, ZERO, 30) ;
                                // APB Bus Cycles, immediate data
                                5  : INS <= doins2(iLOAD, 16'h1111) ;
                                6  : INS <= doins5(iAPBWRT, iDAT, 0, 8'h10, 32'h12345678) ;
                                7  : INS <= doins3(iAPBREAD, 0, 8'h10) ;
                                8  : INS <= doins2(iCMP, 32'h12345678) ;
                                9  : INS <= doins4(iJUMP, iNOTIF, ZERO, 30) ;
                                // Loop Instruction
                                10  : INS <= doins2(iLOAD, 0) ; // Clear accum
                                11  : INS <= doins3(iLOADZ, iDAT, 5) ;
                                12  : INS <= doins1(iINC) ;
                                13  : INS <= doins1(iDECZ) ;
                                14  : INS <= doins4(iJUMP, iNOTIF, ZZERO, 12) ;
                                15  : INS <= doins2(iCMP, 8'h05) ; // Should loop 5 times
                                16  : INS <= doins4(iJUMP, iNOTIF, ZERO, 30) ;
                                // Memory Block read and write
                                17  : INS <= doins2(iLOAD, 32'h12345678) ;
                                18  : INS <= doins3(iRAMWRT, 0, iACC) ; // write and then readback to verify
                                19  : INS <= doins1(iINC) ;
                                20  : INS <= doins3(iRAMWRT, 10, iACC) ;
                                21  : INS <= doins2(iRAMREAD, 0) ;
                                22  : INS <= doins2(iCMP, 32'h12345678) ;
                                23  : INS <= doins4(iJUMP, iNOTIF, ZERO, 30) ;
                                24  : INS <= doins2(iRAMREAD, 10) ;
                                25  : INS <= doins2(iCMP, 32'h12345679) ;
                                26  : INS <= doins4(iJUMP, iNOTIF, ZERO, 30) ;
                                // Done tests, jump to signal all done
                                27  : INS <= doins2(iJUMP, 28) ;
                                ////////////////////////////////////////////////////////////////////////////////////
                                // All tests complete
                                28  : INS <= doins3(iIOWRT, iDAT, 253) ;
                                29  : INS <= doins2(iJUMP, 29) ;
                                // Error Condition
                                30  : INS <= doins3(iIOWRT, iDAT, 254) ; // Error Condition
                                31  : INS <= doins2(iJUMP, 31) ;
                                default  : INS <= doins1(iNOP) ;
                            endcase
                        end
            11 :
                        begin
                            case (ADDRINT)
                                // Jump to test start point
                                0  : INS <= doins2(iJUMP, 1) ;
                                // Simple Test of Boolean Operations
                                1  : INS <= doins2(iLOAD, 8'h55) ; // Set Accumalator to 55hex
                                ////////////////////////////////////////////////////////////////////////////////////////////-
                                ////////////////////////////////////////////////////////////////////////////////////////////-
                                // Fully Configured 8 bit Operation with 256 instructions
                                 2  : INS <= doins2(iAND, 8'h0F) ; // Do some maths and jump to error if one occurs
                                 3  : INS <= doins2(iCMP, 8'h05) ;
                                 4  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                 5  : INS <= doins2(iOR, 8'hA2) ;
                                 6  : INS <= doins2(iCMP, 8'hA7) ;
                                 7  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                 8  : INS <= doins1(iINC) ;
                                 9  : INS <= doins2(iCMP, 8'hA8) ;
                                10  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                11  : INS <= doins2(iXOR, 8'h0F) ;
                                12  : INS <= doins2(iCMP, 8'hA7) ;
                                13  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                14  : INS <= doins2(iADD, 8'h12) ;
                                15  : INS <= doins2(iCMP, 8'hB9) ;
                                16  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                17  : INS <= doins1(iSHL0) ;
                                18  : INS <= doins2(iCMP, 8'h72) ;
                                19  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                20  : INS <= doins1(iSHL1) ;
                                21  : INS <= doins2(iCMP, 8'hE5) ;
                                22  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                23  : INS <= doins1(iSHR0) ;
                                24  : INS <= doins2(iCMP, 8'h72) ;
                                25  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                26  : INS <= doins1(iSHR1) ;
                                27  : INS <= doins2(iCMP, 8'hB9) ;
                                28  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                // APB Bus Cycles, immediate data
                                30  : INS <= doins2(iLOAD, 8'h12) ;
                                31  : INS <= doins5(iAPBWRT, iDAT, 0, 8'h10, 8'h12) ;
                                32  : INS <= doins5(iAPBWRT, iDAT, 0, 8'h11, 8'h13) ;
                                33  : INS <= doins5(iAPBWRT, iDAT, 1, 8'h10, 8'h14) ;
                                34  : INS <= doins5(iAPBWRT, iDAT, 1, 8'h11, 8'h15) ;
                                35  : INS <= doins5(iAPBWRT, iDAT, 2, 8'h10, 8'h16) ;
                                36  : INS <= doins5(iAPBWRT, iDAT, 2, 8'h11, 8'h17) ;
                                37  : INS <= doins5(iAPBWRT, iDAT, 3, 8'h10, 8'h18) ;
                                38  : INS <= doins5(iAPBWRT, iDAT, 3, 8'h11, "Z" ) ;
                                39  : INS <= doins3(iAPBREAD, 0, 8'h10) ;
                                40  : INS <= doins2(iCMP, 8'h12) ;
                                41  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                42  : INS <= doins3(iAPBREAD, 0, 8'h11) ;
                                43  : INS <= doins2(iCMP, 8'h13) ;
                                44  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                45  : INS <= doins3(iAPBREAD, 1, 8'h10) ;
                                46  : INS <= doins2(iCMP, 8'h14) ;
                                47  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                48  : INS <= doins3(iAPBREAD, 1, 8'h11) ;
                                49  : INS <= doins2(iCMP, 8'h15) ;
                                50  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                51  : INS <= doins3(iAPBREAD, 2, 8'h10) ;
                                52  : INS <= doins2(iCMP, 8'h16) ;
                                53  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                54  : INS <= doins3(iAPBREAD, 2, 8'h11) ;
                                55  : INS <= doins2(iCMP, 8'h17) ;
                                56  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                57  : INS <= doins3(iAPBREAD, 3, 8'h10) ;
                                58  : INS <= doins2(iCMP, 8'h18) ;
                                59  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                60  : INS <= doins3(iAPBREAD, 3, 8'h11) ;
                                61  : INS <= doins2(iCMP, "Z") ;
                                62  : INS <= doins4(iJUMP, iIFNOT, ZERO, 254) ;    // check other NOT
                                63  : INS <= doins2(iCMP, "Y") ;
                                64  : INS <= doins4(iJUMP, iIF, ZERO, 254) ;
                                // Accumalator writes
                                65  : INS <= doins2(iLOAD, 8'h23) ;
                                66  : INS <= doins4(iAPBWRT, iACC, 0, 8'h20) ;
                                67  : INS <= doins1(iINC) ;
                                68  : INS <= doins4(iAPBWRT, iACC, 0, 8'h21) ;
                                69  : INS <= doins1(iINC) ;
                                70  : INS <= doins4(iAPBWRT, iACC, 1, 8'h22) ;
                                71  : INS <= doins3(iAPBREAD, 0, 8'h20) ;
                                72  : INS <= doins2(iCMP, 8'h23) ;
                                73  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                74  : INS <= doins3(iAPBREAD, 0, 8'h21) ;
                                75  : INS <= doins2(iCMP, 8'h24) ;
                                76  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                77  : INS <= doins3(iAPBREAD, 1, 8'h22) ;
                                78  : INS <= doins2(iCMP, 8'h25) ;
                                79  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                // ACM writes
                                81  : INS <= doins5(iAPBWRT, iDAT, 0, 0, 8'h54) ; // initialise APB RAM
                                82  : INS <= doins5(iAPBWRT, iDAT, 0, 1, 8'h55) ; // initialise APB RAM
                                83  : INS <= doins5(iAPBWRT, iDAT, 0, 2, 8'h56) ; // initialise APB RAM
                                84  : INS <= doins2(iLOAD, 99) ; // Now the ACM writes
                                85  : INS <= doins4(iAPBWRT, iACM, 0, 0) ; // location 99 lookup
                                86  : INS <= doins1(iINC) ;
                                87  : INS <= doins4(iAPBWRT, iACM, 0, 1) ; // location 100 lookup
                                88  : INS <= doins1(iINC) ;
                                89  : INS <= doins4(iAPBWRT, iACM, 0, 2) ; // location 101 lookup
                                90  : INS <= doins3(iAPBREAD, 0, 0) ;
                                91  : INS <= doins2(iCMP, 156) ; // 99=63/=9c=156
                                92  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                93  : INS <= doins3(iAPBREAD, 0, 1) ;
                                94  : INS <= doins2(iCMP, 8'h55) ; // 100 is not written
                                95  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                96  : INS <= doins3(iAPBREAD, 0, 2) ;
                                97  : INS <= doins2(iCMP, 154) ; // 101=65/=9a=154
                                98  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                // Flag Conditions
                                99  : INS <= doins2(iLOAD, 255) ; // set zero flag
                                100  : INS <= doins1(iINC) ;
                                101  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                102  : INS <= doins1(iINC) ; // not set
                                103  : INS <= doins4(iJUMP, iIF, ZERO, 254) ;
                                104  : INS <= doins4(iJUMP, iIF, NEGATIVE, 254) ; // number is positive
                                105  : INS <= doins2(iADD, 8'hF6) ; // will go negative
                                106  : INS <= doins4(iJUMP, iNOTIF, NEGATIVE, 254) ; // number is positive
                                // Call and Return
                                107  : INS <= doins2(iLOAD, 255) ; // set zero flag
                                108  : INS <= doins1(iINC) ;
                                109  : INS <= doins4(iCALL, iIF, ZERO, 243) ; // should call
                                110  : INS <= doins4(iCALL, iNOTIF, ZERO, 242) ; // should not call
                                111  : INS <= doins2(iCALL, 244) ; // check return, will return
                                112  : INS <= doins1(iINC) ; // Clear zero
                                113  : INS <= doins4(iCALL, iNOTIF, ZERO, 243) ; // should call
                                114  : INS <= doins4(iCALL, iIF, ZERO, 242) ; // should not call
                                115  : INS <= doins2(iCALL, 246) ; // check return, will return
                                // Repeat with Negative flag
                                116  : INS <= doins2(iLOAD, 254) ; // set negative flag
                                117  : INS <= doins1(iINC) ;
                                118  : INS <= doins4(iJUMP, iNOTIF, NEGATIVE, 254) ;
                                119  : INS <= doins4(iCALL, iIF, NEGATIVE, 243) ; // should call
                                120  : INS <= doins4(iCALL, iNOTIF, NEGATIVE, 242) ; // should not call
                                121  : INS <= doins2(iCALL, 248) ; // check return, will return
                                122  : INS <= doins1(iINC) ; // not set
                                123  : INS <= doins4(iJUMP, iIF, NEGATIVE, 254) ;
                                124  : INS <= doins4(iCALL, iNOTIF, NEGATIVE, 243) ; // should call
                                125  : INS <= doins4(iCALL, iIF, NEGATIVE, 242) ; // should not call
                                126  : INS <= doins4(iCALL, iNOTIF, ALWAYS, 251) ; // check return, will return
                                // Check Stack calling
                                130  : INS <= doins2(iLOAD, 0) ; // Clear accum
                                131  : INS <= doins2(iCALL, 232) ;
                                132  : INS <= doins2(iCMP, 1) ; // Should have incremented by 1
                                133  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                134  : INS <= doins2(iCALL, 229) ;
                                135  : INS <= doins2(iCMP, 3) ; // Should have incremented by 2
                                136  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                137  : INS <= doins2(iCALL, 226) ;
                                138  : INS <= doins2(iCMP, 6) ; // Should have incremented by 3
                                139  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                140  : INS <= doins2(iCALL, 223) ;
                                141  : INS <= doins2(iCMP, 10) ; // Should have incremented by 4
                                142  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                // Loop Instruction
                                145  : INS <= doins2(iLOAD, 0) ; // Clear accum
                                146  : INS <= doins3(iLOADZ, iDAT, 5) ;
                                147  : INS <= doins1(iINC) ;
                                148  : INS <= doins1(iDECZ) ;
                                149  : INS <= doins4(iJUMP, iNOTIF, ZZERO, 147) ;
                                150  : INS <= doins2(iCMP, 05) ; // Should have incremented by 5
                                151  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                // Memory Block read and write
                                155  : INS <= doins2(iLOAD, 8'h45) ; // Test Data
                                156  : INS <= doins3(iRAMWRT, 0, iACC) ; // write and then readback to verify
                                157  : INS <= doins1(iINC) ;
                                158  : INS <= doins3(iRAMWRT, 10, iACC) ;
                                159  : INS <= doins1(iINC) ;
                                160  : INS <= doins3(iRAMWRT, 100, iACC) ;
                                161  : INS <= doins1(iINC) ;
                                162  : INS <= doins3(iRAMWRT, 250, iACC) ;
                                163  : INS <= doins2(iRAMREAD, 0) ;
                                164  : INS <= doins2(iCMP, 8'h45) ;
                                165  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                166  : INS <= doins2(iRAMREAD, 10) ;
                                167  : INS <= doins2(iCMP, 8'h46) ;
                                168  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                169  : INS <= doins2(iRAMREAD, 100) ;
                                170  : INS <= doins2(iCMP, 8'h47) ;
                                171  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                172  : INS <= doins2(iRAMREAD, 250) ;
                                173  : INS <= doins2(iCMP, 8'h48) ;
                                174  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                // test additional shift and rotate instructions
                                // Simple Test of Boolean Operations
                                180  : INS <= doins2(iLOAD, 8'h15) ; // Set Accumalator to 15hex
                                181  : INS <= doins1(iSHL0) ; // SHIFT <= 0
                                182  : INS <= doins2(iCMP, 8'h2A) ;
                                183  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                184  : INS <= doins1(iSHL1) ; // SHIFT <= 1
                                185  : INS <= doins2(iCMP, 8'h55) ;
                                186  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                187  : INS <= doins1(iSHLE) ; // SHIFT <= EXTEND
                                188  : INS <= doins2(iCMP, 8'hAB) ;
                                189  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                191  : INS <= doins1(iROL) ; // SHIFT <= ROTATE
                                192  : INS <= doins2(iCMP, 8'h57) ;
                                193  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                194  : INS <= doins2(iLOAD, 8'h15) ; // Set Accumalator to 15hex
                                195  : INS <= doins1(iSHR0) ; // SHIFT : 0
                                196  : INS <= doins2(iCMP, 8'h0A) ;
                                197  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                198  : INS <= doins1(iSHR1) ; // SHIFT : 1
                                199  : INS <= doins2(iCMP, 8'h85) ;
                                200  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                201  : INS <= doins2(iSHRE, 8'h02) ; // SHIFT : EXTEND
                                202  : INS <= doins2(iCMP, 8'hC2) ;
                                203  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                204  : INS <= doins1(iROR) ; // SHIFT : ROTATE
                                205  : INS <= doins2(iCMP, 8'h61) ;
                                206  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                //////////////////////////////////////////////////////////////////////////////////
                                // WAIT instruction
                                207  : INS <= doins3( iIOWRT, iDAT, 0);                  // IO_IN is connected to IO_OUT
                                208  : INS <= doins3( iWAIT,iIF,INPUT0 );                // wait if flag 0 set its not !
                                209  : INS <= doins3( iIOWRT, iDAT, 1);                        // IO_IN is connected to IO_OUT
                                210  : INS <= doins3( iWAIT,iNOTIF,INPUT0 );             // wait if flag 0 set its set !
                                211  : INS <= doins2( iLOAD, 100);
                                212  : INS <= doins2( iSUB, 1);
                                213  : INS <= doins2( iCMP, 99);
                                214  : INS <= doins4( iJUMP,iNOTIF,ZERO,254);
                                215  : INS <= doins2( iSUB, 95);
                                216  : INS <= doins2( iCMP, 4);
                                217  : INS <= doins4( iJUMP,iNOTIF,ZERO,254);
                                // Jump to ISR tests
                                218  : INS <= doins2( iJUMP, 300);
                                // ISR testing
                                300  : INS <= doins2(iLOAD, 8'h12) ; // Put 12 in memory location 1
                                301  : INS <= doins3(iRAMWRT, 1, iACC) ;
                                302  : INS <= doins2(iCMP, 8'h12) ; // set zero flag
                                303  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ; // ZERO flag should still be set before ISR
                                304  : INS <= doins3(iIOWRT, iDAT, 251) ; // Cause interrupt to occur
                                305  : INS <= doins1(iNOP) ;
                                306  : INS <= doins1(iNOP) ;
                                307  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ; // ZERO flag should still be set after ISR
                                308  : INS <= doins2(iRAMREAD, 1) ; // Verify that ISR called once only
                                309  : INS <= doins2(iCMP, 8'h13) ;
                                310  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                // Done tests, jump to signal all done
                                315  : INS <= doins2(iCALL, 410) ;
                                // The ISR Service Routine
                                400  : INS <= doins1(iPUSH) ; // store the accumalator
                                401  : INS <= doins3(iIOWRT, iDAT, 252) ; // Clear the external interrupt
                                402  : INS <= doins2(iRAMREAD, 1) ; // increment the value at location 1
                                403  : INS <= doins1(iINC) ; //
                                404  : INS <= doins3(iRAMWRT, 1, iACC) ; // write it back, zero flag is not set
                                405  : INS <= doins1(iPOP) ; // Restore the accumlator
                                406  : INS <= doins1(iRETISR) ;
                                //////////////////////////////////////////////////////////////////////////////////
                                // 2.3 Added Instructions Testing
                                410 : INS <= doins3( iLOAD,iDAT,8'h55);           // use new immediate instruction
                                411 : INS <= doins3( iAND, iDAT,8'h0F);
                                412 : INS <= doins3( iCMP, iDAT,8'h05);
                                413 : INS <= doins4( iJUMP,iNOTIF,ZERO,254);
                                414 : INS <= doins3( iOR, iDAT,8'hA2);
                                415 : INS <= doins3( iCMP,iDAT,8'hA7);
                                416 : INS <= doins4( iJUMP,iNOTIF,ZERO,254);
                                417 : INS <= doins1( iINC );
                                418 : INS <= doins3( iCMP,iDAT,8'hA8);
                                419 : INS <= doins4( iJUMP,iNOTIF,ZERO,254);
                                420 : INS <= doins3( iXOR,iDAT,8'h0F);
                                421 : INS <= doins3( iCMP,iDAT,8'hA7);
                                422 : INS <= doins4( iJUMP,iNOTIF,ZERO,254);
                                423 : INS <= doins3( iADD,iDAT,8'h12);
                                424 : INS <= doins3( iCMP,iDAT,8'hB9);
                                425 : INS <= doins4( iJUMP,iNOTIF,ZERO,254);
                                426 : INS <= doins2( iCMP,8'hB9);
                                427 : INS <= doins4( iJUMP,iNOTIF,ZERO,254);
                                430 : INS <= doins4( iRAMWRT,0,iDAT,8'h55);         // put data in RAM
                                432 : INS <= doins4( iRAMWRT,1,iDAT,8'h0F);
                                434 : INS <= doins4( iRAMWRT,2,iDAT,8'h05);
                                436 : INS <= doins4( iRAMWRT,3,iDAT,8'hA2);
                                438 : INS <= doins4( iRAMWRT,4,iDAT,8'hA7);
                                440 : INS <= doins4( iRAMWRT,5,iDAT,8'hA8);
                                442 : INS <= doins4( iRAMWRT,6,iDAT,8'h0F);
                                444 : INS <= doins4( iRAMWRT,7,iDAT,8'h12);
                                446 : INS <= doins4( iRAMWRT,8,iDAT,8'hb9);
                                //RAM based instructions
                                450 : INS <= doins3( iLOAD,iRAM,0);                //iLOAD,iDAT,8'h55);
                                451 : INS <= doins3( iAND, iRAM,1);                //iAND, iDAT,8'h0F);
                                452 : INS <= doins3( iCMP, iRAM,2);                //iCMP, iDAT,8'h05);
                                453 : INS <= doins4( iJUMP,iNOTIF,ZERO,254);
                                454 : INS <= doins3( iOR, iRAM,3);                 //iOR, iDAT,8'hA2);
                                455 : INS <= doins3( iCMP,iRAM,4);                 //iCMP,iDAT,8'hA7);
                                456 : INS <= doins4( iJUMP,iNOTIF,ZERO,254);
                                457 : INS <= doins1( iINC );
                                458 : INS <= doins3( iCMP,iRAM,5);                 //iCMP,iDAT,8'hA8);
                                459 : INS <= doins4( iJUMP,iNOTIF,ZERO,254);
                                460 : INS <= doins3( iXOR,iRAM,6);                 //iXOR,iDAT,8'h0F);
                                461 : INS <= doins3( iCMP,iRAM,4);                 //iCMP,iDAT,8'hA7);
                                462 : INS <= doins4( iJUMP,iNOTIF,ZERO,254);
                                463 : INS <= doins3( iADD,iRAM,7);                 //iADD,iDAT,8'h12);
                                464 : INS <= doins3( iCMP,iRAM,8);                 //iCMP,iDAT,8'hB9);
                                465 : INS <= doins4( iJUMP,iNOTIF,ZERO,254);
                                466 : INS <= doins2( iCMP,8'hB9);
                                467 : INS <= doins4( iJUMP,iNOTIF,ZERO,254);
                                470 : INS <= doins3( iIOWRT, iDAT,8'h32);           // Test New IO Instructions
                                471 : INS <= doins1( iIOREAD);                      // Check old write and read
                                472 : INS <= doins2( iCMP,8'h32);
                                473 : INS <= doins4( iJUMP,iNOTIF,ZERO,254);
                                474 : INS <= doins3( iLOAD,iDAT,8'h47);
                                475 : INS <= doins2( iIOWRT,iACC);                  // New instruction and read
                                476 : INS <= doins3( iLOAD,iDAT,0);
                                477 : INS <= doins1( iIOREAD);
                                478 : INS <= doins2( iCMP,8'h47);
                                479 : INS <= doins4( iJUMP,iNOTIF,ZERO,254);
                                480 : INS <= doins3( iLOAD,iDAT,8'h77);             // PUSH Immediate data
                                481 : INS <= doins2( iPUSH,iACC);
                                482 : INS <= doins3( iPUSH,iDAT,8'h89);
                                483 : INS <= doins1( iPOP);
                                484 : INS <= doins2( iCMP,8'h89);
                                485 : INS <= doins4( iJUMP,iNOTIF,ZERO,254);
                                486 : INS <= doins1( iPOP);
                                487 : INS <= doins2( iCMP,8'h77);
                                488 : INS <= doins4( iJUMP,iNOTIF,ZERO,254);
                                // Loop Instruction
                                490 : INS <= doins2( iLOAD,5);                      // accum=5
                                491 : INS <= doins2( iLOADZ,iACC);
                                492 : INS <= doins1( iINC);
                                493 : INS <= doins1( iDECZ);
                                494 : INS <= doins4( iJUMP,iNOTIF,ZZERO,492);
                                495 : INS <= doins2( iCMP,10);                      // Should have incremented by 5
                                496 : INS <= doins4( iJUMP,iNOTIF,ZERO,254);
                                     // WAIT instruction with switching input
                                498 : INS <= doins3( iIOWRT, iDAT, 249);                  // This will assert input for 20 clocks
                                499 : INS <= doins4( iJUMP,iNOTIF,INPUT1,254);            // Make sure is set
                                500 : INS <= doins3( iWAIT,iIF,INPUT1 );                  // Should sit here for 20 clocks
                                501 : INS <= doins4( iJUMP,iIF,INPUT1,254);               // Make sure is cleared
                                502 : INS <= doins3( iIOWRT, iDAT, 250);                  // route IO_OUT to flag input
                                // Multiply and DEC
                                503 : INS <= doins2( iLOAD,3);
                                504 : INS <= doins3( iMULT,iDAT,3);
                                505 : INS <= doins4( iRAMWRT,15,iDAT,4);
                                506 : INS <= doins3( iMULT,iRAM,15);
                                507 : INS <= doins1( iDEC);
                                508 : INS <= doins2( iCMP,35);
                                509 : INS <= doins4( iJUMP,iNOTIF,ZERO,254);
                                // Multiply Example
                                510 : INS <= doins4( iRAMWRT,0,iDAT,12);       // A
                                511 : INS <= doins4( iRAMWRT,1,iDAT,13);       // B
                                512 : INS <= doins4( iRAMWRT,2,iDAT,0);        // P=Answer
                                513 : INS <= doins3( iLOADZ,iDAT,8);
                                514 : INS <= doins2( iRAMREAD,0);              // Get A
                                515 : INS <= doins2( iBITTST,0);               // See if bit 0 set
                                516 : INS <= doins4( iJUMP,iIF,iZERO,520);
                                517 : INS <= doins2( iRAMREAD,2);              // Get P
                                518 : INS <= doins3( iADD,iRAM,1);             // ADD B
                                519 : INS <= doins3( iRAMWRT,2,iACC);          // Save
                                520 : INS <= doins2( iRAMREAD,1);              // Shift B
                                521 : INS <= doins1( iSHL0);                   //  *2
                                522 : INS <= doins3( iRAMWRT,1,iACC);          //
                                523 : INS <= doins2( iRAMREAD,0);              // Shift A
                                524 : INS <= doins1( iSHR0);                   //
                                525 : INS <= doins3( iRAMWRT,0,iACC);          // Save
                                526 : INS <= doins1( iDECZ);                // Do for all bits
                                527 : INS <= doins4( iJUMP,iIFNOT,iZZERO,514);
                                528 : INS <= doins2( iRAMREAD,2);              // Get P
                                529 : INS <= doins2( iCMP,156);                // 12*13 should be 156
                                530 : INS <= doins4( iJUMP,iNOTIF,ZERO,254);
                                // Loop Increment Instruction
                                531 : INS <= doins2( iLOAD,0);                  // Clear accum
                                532 : INS <= doins3( iLOADZ,iDAT,251);
                                533 : INS <= doins1( iINC);
                                534 : INS <= doins1( iINCZ);
                                535 : INS <= doins4( iJUMP,iNOTIF,ZZERO,533);
                                536 : INS <= doins2( iCMP,32'h05);              // Should loop 5 times
                                537 : INS <= doins4( iJUMP,iNOTIF,ZERO,254);
                                // Indirect Addressing
                                540 : INS <= doins3( iLOADZ,iDAT,10);
                                541 : INS <= doins4( iAPBWRTZ, iDAT, 0,32'h12);  // Write 12 to slot 0  @LOOP=10
                                542 : INS <= doins1( iINCZ);
                                543 : INS <= doins4( iAPBWRTZ, iDAT, 0,32'h15);  // Write 15 to slot 0  @LOOP=11
                                544 : INS <= doins3( iAPBREAD, 0,10);            // Read the location
                                545 : INS <= doins2( iCMP,32'h12);
                                546 : INS <= doins4( iJUMP,iNOTIF,ZERO,254);
                                547 : INS <= doins3( iAPBREAD, 0,11);            // Read the location
                                548 : INS <= doins2( iCMP,32'h15);
                                549 : INS <= doins4( iJUMP,iNOTIF,ZERO,254);
                                550 : INS <= doins1( iINCZ);
                                551 : INS <= doins2( iLOAD,33);                  //
                                552 : INS <= doins3( iAPBWRTZ, iACC, 0);         // Write ACC to slot 0  @LOOP=12
                                553 : INS <= doins3( iAPBREAD, 0,12);            // Read the location
                                554 : INS <= doins2( iCMP,33);
                                555 : INS <= doins4( iJUMP,iNOTIF,ZERO,254);
                                556 : INS <= doins1( iINCZ);
                                557 : INS <= doins2( iLOAD,1);                   // ACM location 1 will be 254
                                558 : INS <= doins3( iAPBWRTZ, iACM, 0);         // Write ACM to slot 0  @LOOP=13
                                559 : INS <= doins3( iAPBREAD, 0,13);            // Read the location
                                560 : INS <= doins2( iCMP,254);
                                561 : INS <= doins4( iJUMP,iNOTIF,ZERO,254);
                                562 : INS <= doins3( iLOADZ,iDAT,10);         // check indirect reads
                                563 : INS <= doins2( iAPBREADZ, 0);              // Read the location
                                564 : INS <= doins2( iCMP,32'h12);
                                565 : INS <= doins4( iJUMP,iNOTIF,ZERO,254);
                                566 : INS <= doins1( iINCZ);
                                567 : INS <= doins2( iAPBREADZ, 0);              // Read the location
                                568 : INS <= doins2( iCMP,32'h15);
                                569 : INS <= doins3( iAPBREAD, 0,11);              // Read the location
                                570 : INS <= doins4( iJUMP,iNOTIF,ZERO,254);
                                // test the ADDZ and DECZ instructions
                                571 : INS <= doins3( iLOADZ,iDAT,10);
                                572 : INS <= doins3( iSUBZ ,iDAT,10);
                                573 : INS <= doins4( iJUMP,iNOTIF,ZZERO,254);
                                574 : INS <= doins3( iLOADZ,iDAT,8'hFE);
                                575 : INS <= doins3( iADDZ ,iDAT,2);
                                576 : INS <= doins4( iJUMP,iNOTIF,ZZERO,254);
                                577 : INS <= doins3( iLOAD,iDAT,3);
                                578 : INS <= doins3( iLOADZ,iDAT,8'hFD);
                                579 : INS <= doins2( iADDZ ,iACC);
                                580 : INS <= doins4( iJUMP,iNOTIF,ZZERO,254);
                                // Done tests, jump to signal all done
                                582 : INS <= doins2( iJUMP,240);
                                //////////////////////////////////////////////////////////////////////////////////
                                // Call testing
                                223  : INS <= doins1(iINC) ;
                                224  : INS <= doins2(iCALL, 226) ;
                                225  : INS <= doins1(iRETURN) ;
                                226  : INS <= doins1(iINC) ;
                                227  : INS <= doins2(iCALL, 229) ;
                                228  : INS <= doins1(iRETURN) ;
                                229  : INS <= doins1(iINC) ;
                                230  : INS <= doins2(iCALL, 232) ;
                                231  : INS <= doins1(iRETURN) ;
                                232  : INS <= doins1(iINC) ;
                                233  : INS <= doins4(iAPBWRT,iACC,1,0);
                                234  : INS <= doins1(iRETURN) ;
                                ////////////////////////////////////////////////////////////////////////////////////
                                // All tests complete
                                240  : INS <= doins3(iIOWRT, iDAT, 253) ;
                                241  : INS <= doins2(iJUMP, 241) ;
                                // If called here error
                                242  : INS <= doins2(iJUMP, 254) ;
                                ////////////////////////////////////////////////////////////////////////////////////
                                // If called here return
                                243  : INS <= doins1(iRETURN) ;
                                // If called here return on zero
                                244  : INS <= doins3(iRETURN, iIF, ZERO) ;
                                245  : INS <= doins2(iJUMP, 254) ;
                                // If called here return on NOT zero
                                246  : INS <= doins3(iRETURN, iNOTIF, ZERO) ;
                                247  : INS <= doins2(iJUMP, 254) ;
                                // If called here return on negative
                                248  : INS <= doins3(iRETURN, iIF, NEGATIVE) ;
                                249  : INS <= doins2(iJUMP, 254) ;
                                // If called here return on NOT negative
                                250  : INS <= doins3(iRETURN, iNOTIF, NEGATIVE) ;
                                251  : INS <= doins2(iJUMP, 254) ;
                                // Error Condition
                                254  : INS <= doins3(iIOWRT, iDAT, 254) ; // Error Condition
                                255  : INS <= doins2(iJUMP, 251) ;
                                default  : INS <= doins1(iNOP) ;
                            endcase
                        end
            12 :
                        begin
                            case (ADDRINT)
                                // Jump to test start point
                                0  : INS <= doins2(iJUMP, 1) ;
                                // Simple Test of Boolean Operations
                                1  : INS <= doins2(iLOAD, 16'h4455) ; // Set Accumalator to 55hex
                                ////////////////////////////////////////////////////////////////////////////////////////////-
                                // Fully Configured 16 bit Operation with 256 instructions
                                2  : INS <= doins2(iAND, 16'h0F0F) ; // Do some maths and jump to error if one occurs
                                3  : INS <= doins2(iCMP, 16'h0405) ;
                                4  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                5  : INS <= doins2(iOR, 16'hC0A2) ;
                                6  : INS <= doins2(iCMP, 16'hC4A7) ;
                                7  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                8  : INS <= doins1(iINC) ;
                                9  : INS <= doins2(iCMP, 16'hC4A8) ;
                                10  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                11  : INS <= doins2(iXOR, 16'h0F0F) ;
                                12  : INS <= doins2(iCMP, 16'hCBA7) ;
                                13  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                14  : INS <= doins2(iADD, 16'h1012) ;
                                15  : INS <= doins2(iCMP, 16'hDBB9) ;
                                16  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                17  : INS <= doins1(iSHL0) ;
                                18  : INS <= doins2(iCMP, 16'hb772) ;
                                19  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                20  : INS <= doins1(iSHL1) ;
                                21  : INS <= doins2(iCMP, 16'h6eE5) ;
                                22  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                23  : INS <= doins1(iSHR0) ;
                                24  : INS <= doins2(iCMP, 16'h3772) ;
                                25  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                26  : INS <= doins1(iSHR1) ;
                                27  : INS <= doins2(iCMP, 16'h9bB9) ;
                                28  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                // APB Bus Cycles, immediate data
                                30  : INS <= doins2(iLOAD, 8'h12) ;
                                31  : INS <= doins5(iAPBWRT, iDAT, 0, 8'h10, 16'h2112) ;
                                32  : INS <= doins5(iAPBWRT, iDAT, 0, 8'h11, 16'h3113) ;
                                33  : INS <= doins5(iAPBWRT, iDAT, 1, 8'h12, 16'h4114) ;
                                34  : INS <= doins5(iAPBWRT, iDAT, 1, 8'h13, 16'h5115) ;
                                35  : INS <= doins5(iAPBWRT, iDAT, 2, 8'h14, 16'h6116) ;
                                36  : INS <= doins5(iAPBWRT, iDAT, 2, 8'h15, 16'h7117) ;
                                37  : INS <= doins5(iAPBWRT, iDAT, 3, 8'h10, 16'h8118) ;
                                38  : INS <= doins5(iAPBWRT, iDAT, 3, 8'h11, 16'h9119) ;
                                39  : INS <= doins3(iAPBREAD, 0, 8'h10) ;
                                40  : INS <= doins2(iCMP, 16'h2112) ;
                                41  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                42  : INS <= doins3(iAPBREAD, 0, 8'h11) ;
                                43  : INS <= doins2(iCMP, 16'h3113) ;
                                44  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                45  : INS <= doins3(iAPBREAD, 1, 8'h12) ;
                                46  : INS <= doins2(iCMP, 16'h4114) ;
                                47  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                48  : INS <= doins3(iAPBREAD, 1, 8'h13) ;
                                49  : INS <= doins2(iCMP, 16'h5115) ;
                                50  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                51  : INS <= doins3(iAPBREAD, 2, 8'h14) ;
                                52  : INS <= doins2(iCMP, 16'h6116) ;
                                53  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                54  : INS <= doins3(iAPBREAD, 2, 8'h15) ;
                                55  : INS <= doins2(iCMP, 16'h7117) ;
                                56  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                57  : INS <= doins3(iAPBREAD, 3, 8'h10) ;
                                58  : INS <= doins2(iCMP, 16'h8118) ;
                                59  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                60  : INS <= doins3(iAPBREAD, 3, 8'h11) ;
                                61  : INS <= doins2(iCMP, 16'h9119) ;
                                62  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                // Accumalator writes
                                65  : INS <= doins2(iLOAD, 16'h5023) ;
                                66  : INS <= doins4(iAPBWRT, iACC, 0, 8'h20) ;
                                67  : INS <= doins1(iINC) ;
                                68  : INS <= doins4(iAPBWRT, iACC, 0, 8'h21) ;
                                69  : INS <= doins1(iINC) ;
                                70  : INS <= doins4(iAPBWRT, iACC, 1, 8'h22) ;
                                71  : INS <= doins3(iAPBREAD, 0, 8'h20) ;
                                72  : INS <= doins2(iCMP, 16'h5023) ;
                                73  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                74  : INS <= doins3(iAPBREAD, 0, 8'h21) ;
                                75  : INS <= doins2(iCMP, 16'h5024) ;
                                76  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                77  : INS <= doins3(iAPBREAD, 1, 8'h22) ;
                                78  : INS <= doins2(iCMP, 16'h5025) ;
                                79  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                // ACM writes
                                81  : INS <= doins5(iAPBWRT, iDAT, 0, 0, 8'h54) ; // initialise APB RAM
                                82  : INS <= doins5(iAPBWRT, iDAT, 0, 1, 8'h55) ; // initialise APB RAM
                                83  : INS <= doins5(iAPBWRT, iDAT, 0, 2, 8'h56) ; // initialise APB RAM
                                84  : INS <= doins2(iLOAD, 99) ; // Now the ACM writes
                                85  : INS <= doins4(iAPBWRT, iACM, 0, 0) ; // location 99 lookup
                                86  : INS <= doins1(iINC) ;
                                87  : INS <= doins4(iAPBWRT, iACM, 0, 1) ; // location 100 lookup
                                88  : INS <= doins1(iINC) ;
                                89  : INS <= doins4(iAPBWRT, iACM, 0, 2) ; // location 101 lookup
                                90  : INS <= doins3(iAPBREAD, 0, 0) ;
                                91  : INS <= doins2(iAND, 16'h00FF) ;
                                92  : INS <= doins2(iCMP, 156) ; // 99=63/=9c=156
                                93  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                94  : INS <= doins3(iAPBREAD, 0, 1) ;
                                95  : INS <= doins2(iAND, 16'h00FF) ;
                                96  : INS <= doins2(iCMP, 8'h55) ; // 100 is not written
                                97  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                // Flag Conditions
                                99  : INS <= doins2(iLOAD, 16'hFFFF) ; // set zero flag
                                100  : INS <= doins1(iINC) ;
                                101  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                102  : INS <= doins1(iINC) ; // not set
                                103  : INS <= doins4(iJUMP, iIF, ZERO, 254) ;
                                104  : INS <= doins4(iJUMP, iIF, NEGATIVE, 254) ; // number is positive
                                105  : INS <= doins2(iADD, 16'hFFF6) ; // will go negative
                                106  : INS <= doins4(iJUMP, iNOTIF, NEGATIVE, 254) ; // number is positive
                                // Call and Return
                                107  : INS <= doins2(iLOAD, 16'hFFFF) ; // set zero flag
                                108  : INS <= doins1(iINC) ;
                                109  : INS <= doins4(iCALL, iIF, ZERO, 243) ; // should call
                                110  : INS <= doins4(iCALL, iNOTIF, ZERO, 242) ; // should not call
                                111  : INS <= doins2(iCALL, 244) ; // check return, will return
                                112  : INS <= doins1(iINC) ; // Clear zero
                                113  : INS <= doins4(iCALL, iNOTIF, ZERO, 243) ; // should call
                                114  : INS <= doins4(iCALL, iIF, ZERO, 242) ; // should not call
                                115  : INS <= doins2(iCALL, 246) ; // check return, will return
                                // Repeat with Negative flag
                                116  : INS <= doins2(iLOAD, 16'hFFFE) ; // set negative flag
                                117  : INS <= doins1(iINC) ;
                                118  : INS <= doins4(iJUMP, iNOTIF, NEGATIVE, 254) ;
                                119  : INS <= doins4(iCALL, iIF, NEGATIVE, 243) ; // should call
                                120  : INS <= doins4(iCALL, iNOTIF, NEGATIVE, 242) ; // should not call
                                121  : INS <= doins2(iCALL, 248) ; // check return, will return
                                122  : INS <= doins1(iINC) ; // not set
                                123  : INS <= doins4(iJUMP, iIF, NEGATIVE, 254) ;
                                124  : INS <= doins4(iCALL, iNOTIF, NEGATIVE, 243) ; // should call
                                125  : INS <= doins4(iCALL, iIF, NEGATIVE, 242) ; // should not call
                                126  : INS <= doins4(iCALL, iNOTIF, ALWAYS, 251) ; // check return, will return
                                // Check Stack calling
                                130  : INS <= doins2(iLOAD, 0) ; // Clear accum
                                131  : INS <= doins2(iCALL, 232) ;
                                132  : INS <= doins2(iCMP, 1) ; // Should have incremented by 1
                                133  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                134  : INS <= doins2(iCALL, 229) ;
                                135  : INS <= doins2(iCMP, 3) ; // Should have incremented by 2
                                136  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                137  : INS <= doins2(iCALL, 226) ;
                                138  : INS <= doins2(iCMP, 6) ; // Should have incremented by 3
                                139  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                140  : INS <= doins2(iCALL, 223) ;
                                141  : INS <= doins2(iCMP, 10) ; // Should have incremented by 4
                                142  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                // Loop Instruction
                                145  : INS <= doins2(iLOAD, 0) ; // Clear accum
                                146  : INS <= doins3(iLOADZ, iDAT, 5) ;
                                147  : INS <= doins1(iINC) ;
                                148  : INS <= doins1(iDECZ) ;
                                149  : INS <= doins4(iJUMP, iNOTIF, ZZERO, 147) ;
                                150  : INS <= doins2(iCMP, 05) ; // Should have incremented by 5
                                151  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                // Memory Block read and write
                                155  : INS <= doins2(iLOAD, 16'h1245) ; // Test Data
                                156  : INS <= doins3(iRAMWRT, 0, iACC) ; // write and then readback to verify
                                157  : INS <= doins1(iINC) ;
                                158  : INS <= doins3(iRAMWRT,10, iACC) ;
                                159  : INS <= doins1(iINC) ;
                                160  : INS <= doins3(iRAMWRT,100, iACC) ;
                                161  : INS <= doins1(iINC) ;
                                162  : INS <= doins3(iRAMWRT,250, iACC) ;
                                163  : INS <= doins2(iRAMREAD, 0) ;
                                164  : INS <= doins2(iCMP, 16'h1245) ;
                                165  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                166  : INS <= doins2(iRAMREAD, 10) ;
                                167  : INS <= doins2(iCMP, 16'h1246) ;
                                168  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                169  : INS <= doins2(iRAMREAD, 100) ;
                                170  : INS <= doins2(iCMP, 16'h1247) ;
                                171  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                172  : INS <= doins2(iRAMREAD, 250) ;
                                173  : INS <= doins2(iCMP, 16'h1248) ;
                                174  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                // Done tests, jump to signal all done
                                180  : INS <= doins2(iCALL, 240) ;
                                //////////////////////////////////////////////////////////////////////////////////
                                // Call testing
                                223  : INS <= doins1(iINC) ;
                                224  : INS <= doins2(iCALL, 226) ;
                                225  : INS <= doins1(iRETURN) ;
                                226  : INS <= doins1(iINC) ;
                                227  : INS <= doins2(iCALL, 229) ;
                                228  : INS <= doins1(iRETURN) ;
                                229  : INS <= doins1(iINC) ;
                                230  : INS <= doins2(iCALL, 232) ;
                                231  : INS <= doins1(iRETURN) ;
                                232  : INS <= doins1(iINC) ;
                                233  : INS <= doins1(iNOP) ;
                                234  : INS <= doins1(iRETURN) ;
                                ////////////////////////////////////////////////////////////////////////////////////
                                // All tests complete
                                240  : INS <= doins3(iIOWRT, iDAT, 253) ;
                                241  : INS <= doins2(iJUMP, 241) ;
                                // If called here error
                                242  : INS <= doins2(iJUMP, 254) ;
                                ////////////////////////////////////////////////////////////////////////////////////
                                // If called here return
                                243  : INS <= doins1(iRETURN) ;
                                // If called here return on zero
                                244  : INS <= doins3(iRETURN, iIF, ZERO) ;
                                245  : INS <= doins2(iJUMP, 254) ;
                                // If called here return on NOT zero
                                246  : INS <= doins3(iRETURN, iNOTIF, ZERO) ;
                                247  : INS <= doins2(iJUMP, 254) ;
                                // If called here return on negative
                                248  : INS <= doins3(iRETURN, iIF, NEGATIVE) ;
                                249  : INS <= doins2(iJUMP, 254) ;
                                // If called here return on NOT negative
                                250  : INS <= doins3(iRETURN, iNOTIF, NEGATIVE) ;
                                251  : INS <= doins2(iJUMP, 254) ;
                                // Error Condition
                                254  : INS <= doins3(iIOWRT, iDAT, 254) ; // Error Condition
                                255  : INS <= doins2(iJUMP, 251) ;
                                default  : INS <= doins1(iNOP) ;
                            endcase
                        end
            13 :
                        begin
                            // 32 bit
                            case (ADDRINT)
                                // Jump to test start point
                                0  : INS <= doins2(iJUMP, 1) ;
                                // Simple Test of Boolean Operations
                                1  : INS <= doins2(iLOAD, 32'h12344455) ; // Set Accumalator to 55hex
                                ////////////////////////////////////////////////////////////////////////////////////////////-
                                // Fully Configured 32 bit Operation with 256 instructions
                                2   : INS <= doins2(iAND, 32'h0F0F0F0F) ; // Do some maths and jump to error if one occurs
                                3   : INS <= doins2(iCMP, 32'h02040405) ;
                                4   : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                5   : INS <= doins2(iOR, 32'h4000C0A2) ;
                                6   : INS <= doins2(iCMP, 32'h4204C4A7) ;
                                7   : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                8   : INS <= doins1(iINC) ;
                                9   : INS <= doins2(iCMP, 32'h4204C4A8) ;
                                10  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                11  : INS <= doins2(iXOR, 32'h10F00F0F) ;
                                12  : INS <= doins2(iCMP, 32'h52f4CBA7) ;
                                13  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                14  : INS <= doins2(iADD, 32'h03001012) ;
                                15  : INS <= doins2(iCMP, 32'h55F4DBB9) ;
                                16  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                17  : INS <= doins2(iAND, 32'h0FFFFFFF) ; // make sure MSB's are zero
                                18  : INS <= doins1(iSHL0) ;
                                19  : INS <= doins2(iCMP, 32'h0BE9b772) ;
                                20  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                21  : INS <= doins1(iSHL1) ;
                                22  : INS <= doins2(iCMP, 32'h17D36EE5) ;
                                23  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                24  : INS <= doins1(iSHR0) ;
                                25  : INS <= doins2(iCMP, 32'h0BE9B772) ;
                                26  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                27  : INS <= doins1(iSHR1) ;
                                28  : INS <= doins1(iSHR0) ;
                                29  : INS <= doins2(iCMP, 32'h42fa6ddc) ;
                                30  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                // APB Bus Cycles, immediate data
                                31  : INS <= doins2(iLOAD, 8'h12) ;
                                32  : INS <= doins5(iAPBWRT, iDAT, 0, 8'h10, 32'h20002112) ;
                                33  : INS <= doins5(iAPBWRT, iDAT, 0, 8'h11, 32'h30003113) ;
                                34  : INS <= doins5(iAPBWRT, iDAT, 1, 8'h12, 32'h40004114) ;
                                35  : INS <= doins5(iAPBWRT, iDAT, 1, 8'h13, 32'h50005115) ;
                                36  : INS <= doins5(iAPBWRT, iDAT, 2, 8'h14, 32'h60006116) ;
                                37  : INS <= doins5(iAPBWRT, iDAT, 2, 8'h15, 32'h70007117) ;
                                38  : INS <= doins5(iAPBWRT, iDAT, 3, 8'h10, 32'h08008118) ;
                                39  : INS <= doins5(iAPBWRT, iDAT, 3, 8'h11, 32'h09009119) ;
                                40  : INS <= doins3(iAPBREAD, 0, 8'h10) ;
                                41  : INS <= doins2(iCMP, 32'h20002112) ;
                                42  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                43  : INS <= doins3(iAPBREAD, 0, 8'h11) ;
                                44  : INS <= doins2(iCMP, 32'h30003113) ;
                                45  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                46  : INS <= doins3(iAPBREAD, 1, 8'h12) ;
                                47  : INS <= doins2(iCMP, 32'h40004114) ;
                                48  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                49  : INS <= doins3(iAPBREAD, 1, 8'h13) ;
                                50  : INS <= doins2(iCMP, 32'h50005115) ;
                                51  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                52  : INS <= doins3(iAPBREAD, 2, 8'h14) ;
                                53  : INS <= doins2(iCMP, 32'h60006116) ;
                                54  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                55  : INS <= doins3(iAPBREAD, 2, 8'h15) ;
                                56  : INS <= doins2(iCMP, 32'h70007117) ;
                                57  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                58  : INS <= doins3(iAPBREAD, 3, 8'h10) ;
                                59  : INS <= doins2(iCMP, 32'h08008118) ;
                                60  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                61  : INS <= doins3(iAPBREAD, 3, 8'h11) ;
                                62  : INS <= doins2(iCMP, 32'h09009119) ;
                                63  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                // Accumalator writes
                                65  : INS <= doins2(iLOAD, 32'h12345023) ;
                                66  : INS <= doins4(iAPBWRT, iACC, 0, 8'h20) ;
                                67  : INS <= doins1(iINC) ;
                                68  : INS <= doins4(iAPBWRT, iACC, 0, 8'h21) ;
                                69  : INS <= doins1(iINC) ;
                                70  : INS <= doins4(iAPBWRT, iACC, 1, 8'h22) ;
                                71  : INS <= doins3(iAPBREAD, 0, 8'h20) ;
                                72  : INS <= doins2(iCMP, 32'h12345023) ;
                                73  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                74  : INS <= doins3(iAPBREAD, 0, 8'h21) ;
                                75  : INS <= doins2(iCMP, 32'h12345024) ;
                                76  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                77  : INS <= doins3(iAPBREAD, 1, 8'h22) ;
                                78  : INS <= doins2(iCMP, 32'h12345025) ;
                                79  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                // ACM writes
                                81  : INS <= doins5(iAPBWRT, iDAT, 0, 0, 8'h54) ; // initialise APB RAM
                                82  : INS <= doins5(iAPBWRT, iDAT, 0, 1, 8'h55) ; // initialise APB RAM
                                83  : INS <= doins5(iAPBWRT, iDAT, 0, 2, 8'h56) ; // initialise APB RAM
                                84  : INS <= doins2(iLOAD, 99) ; // Now the ACM writes
                                85  : INS <= doins4(iAPBWRT, iACM, 0, 0) ; // location 99 lookup
                                86  : INS <= doins1(iINC) ;
                                87  : INS <= doins4(iAPBWRT, iACM, 0, 1) ; // location 100 lookup
                                88  : INS <= doins1(iINC) ;
                                89  : INS <= doins4(iAPBWRT, iACM, 0, 2) ; // location 101 lookup
                                90  : INS <= doins3(iAPBREAD, 0, 0) ;
                                91  : INS <= doins2(iAND, 32'h000000FF) ;
                                92  : INS <= doins2(iCMP, 156) ; // 99=63/=9c=156
                                93  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                94  : INS <= doins3(iAPBREAD, 0, 1) ;
                                95  : INS <= doins2(iAND, 32'h000000FF) ;
                                96  : INS <= doins2(iCMP, 8'h55) ; // 100 is not written
                                97  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                // Flag Conditions
                                99  : INS <= doins2(iLOAD, -1) ; // set zero flag
                                100  : INS <= doins1(iINC) ;
                                101  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                102  : INS <= doins1(iINC) ; // not set
                                103  : INS <= doins4(iJUMP, iIF, ZERO, 254) ;
                                104  : INS <= doins4(iJUMP, iIF, NEGATIVE, 254) ; // number is positive
                                105  : INS <= doins2(iADD, -8) ; // will go negative
                                106  : INS <= doins4(iJUMP, iNOTIF, NEGATIVE, 254) ; // number is positive
                                // Call and Return
                                107  : INS <= doins2(iLOAD, -1) ; // set zero flag
                                108  : INS <= doins1(iINC) ;
                                109  : INS <= doins4(iCALL, iIF, ZERO, 243) ; // should call
                                110  : INS <= doins4(iCALL, iNOTIF, ZERO, 242) ; // should not call
                                111  : INS <= doins2(iCALL, 244) ; // check return, will return
                                112  : INS <= doins1(iINC) ; // Clear zero
                                113  : INS <= doins4(iCALL, iNOTIF, ZERO, 243) ; // should call
                                114  : INS <= doins4(iCALL, iIF, ZERO, 242) ; // should not call
                                115  : INS <= doins2(iCALL, 246) ; // check return, will return
                                // Repeat with Negative flag
                                116  : INS <= doins2(iLOAD, -2) ; // set negative flag
                                117  : INS <= doins1(iINC) ;
                                118  : INS <= doins4(iJUMP, iNOTIF, NEGATIVE, 254) ;
                                119  : INS <= doins4(iCALL, iIF, NEGATIVE, 243) ; // should call
                                120  : INS <= doins4(iCALL, iNOTIF, NEGATIVE, 242) ; // should not call
                                121  : INS <= doins2(iCALL, 248) ; // check return, will return
                                122  : INS <= doins1(iINC) ; // not set
                                123  : INS <= doins4(iJUMP, iIF, NEGATIVE, 254) ;
                                124  : INS <= doins4(iCALL, iNOTIF, NEGATIVE, 243) ; // should call
                                125  : INS <= doins4(iCALL, iIF, NEGATIVE, 242) ; // should not call
                                126  : INS <= doins4(iCALL, iNOTIF, ALWAYS, 251) ; // check return, will return
                                // Check Stack calling
                                130  : INS <= doins2(iLOAD, 0) ; // Clear accum
                                131  : INS <= doins2(iCALL, 232) ;
                                132  : INS <= doins2(iCMP, 1) ; // Should have incremented by 1
                                133  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                134  : INS <= doins2(iCALL, 229) ;
                                135  : INS <= doins2(iCMP, 3) ; // Should have incremented by 2
                                136  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                137  : INS <= doins2(iCALL, 226) ;
                                138  : INS <= doins2(iCMP, 6) ; // Should have incremented by 3
                                139  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                140  : INS <= doins2(iCALL, 223) ;
                                141  : INS <= doins2(iCMP, 10) ; // Should have incremented by 4
                                142  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                // Loop Instruction
                                145  : INS <= doins2(iLOAD, 0) ; // Clear accum
                                146  : INS <= doins3(iLOADZ, iDAT, 5) ;
                                147  : INS <= doins1(iINC) ;
                                148  : INS <= doins1(iDECZ) ;
                                149  : INS <= doins4(iJUMP, iNOTIF, ZZERO, 147) ;
                                150  : INS <= doins2(iCMP, 05) ; // Should have incremented by 5
                                151  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                // Memory Block read and write
                                155  : INS <= doins2(iLOAD, 32'h23456745) ; // Test Data
                                156  : INS <= doins3(iRAMWRT, 0, iACC) ; // write and then readback to verify
                                157  : INS <= doins1(iINC) ;
                                158  : INS <= doins3(iRAMWRT, 10, iACC) ;
                                159  : INS <= doins1(iINC) ;
                                160  : INS <= doins3(iRAMWRT, 100, iACC) ;
                                161  : INS <= doins1(iINC) ;
                                162  : INS <= doins3(iRAMWRT, 250, iACC) ;
                                163  : INS <= doins2(iRAMREAD, 0) ;
                                164  : INS <= doins2(iCMP, 32'h23456745) ;
                                165  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                166  : INS <= doins2(iRAMREAD, 10) ;
                                167  : INS <= doins2(iCMP, 32'h23456746) ;
                                168  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                169  : INS <= doins2(iRAMREAD, 100) ;
                                170  : INS <= doins2(iCMP, 32'h23456747) ;
                                171  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                172  : INS <= doins2(iRAMREAD, 250) ;
                                173  : INS <= doins2(iCMP, 32'h23456748) ;
                                174  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                // Done tests, jump to signal all done
                                180  : INS <= doins2(iCALL, 240) ;
                                //////////////////////////////////////////////////////////////////////////////////
                                // Call testing
                                223  : INS <= doins1(iINC) ;
                                224  : INS <= doins2(iCALL, 226) ;
                                225  : INS <= doins1(iRETURN) ;
                                226  : INS <= doins1(iINC) ;
                                227  : INS <= doins2(iCALL, 229) ;
                                228  : INS <= doins1(iRETURN) ;
                                229  : INS <= doins1(iINC) ;
                                230  : INS <= doins2(iCALL, 232) ;
                                231  : INS <= doins1(iRETURN) ;
                                232  : INS <= doins1(iINC) ;
                                233  : INS <= doins1(iNOP) ;
                                234  : INS <= doins1(iRETURN) ;
                                ////////////////////////////////////////////////////////////////////////////////////
                                // All tests complete
                                240  : INS <= doins3(iIOWRT, iDAT, 253) ;
                                241  : INS <= doins2(iJUMP, 241) ;
                                // If called here error
                                242  : INS <= doins2(iJUMP, 254) ;
                                ////////////////////////////////////////////////////////////////////////////////////
                                // If called here return
                                243  : INS <= doins1(iRETURN) ;
                                // If called here return on zero
                                244  : INS <= doins3(iRETURN, iIF, ZERO) ;
                                245  : INS <= doins2(iJUMP, 254) ;
                                // If called here return on NOT zero
                                246  : INS <= doins3(iRETURN, iNOTIF, ZERO) ;
                                247  : INS <= doins2(iJUMP, 254) ;
                                // If called here return on negative
                                248  : INS <= doins3(iRETURN, iIF, NEGATIVE) ;
                                249  : INS <= doins2(iJUMP, 254) ;
                                // If called here return on NOT negative
                                250  : INS <= doins3(iRETURN, iNOTIF, NEGATIVE) ;
                                251  : INS <= doins2(iJUMP, 254) ;
                                // Error Condition
                                254  : INS <= doins3(iIOWRT, iDAT, 254) ; // Error Condition
                                255  : INS <= doins2(iJUMP, 251) ;
                                default  : INS <= doins1(iNOP) ;
                            endcase
                        end
            14 :
                        begin
                            case (ADDRINT)
                                // Jump to test start point
                                0  : INS <= doins2(iJUMP, 1) ;
                                // Simple Test of Boolean Operations
                                1  : INS <= doins2(iLOAD, 8'h55) ; // Set Accumalator to 55hex
                                ////////////////////////////////////////////////////////////////////////////////////////////-
                                ////////////////////////////////////////////////////////////////////////////////////////////-
                                // 8-Bit operation with all insructions enabled
                                2  : INS <= doins2(iAND, 8'h0F) ; // Do some maths and jump to error if one occurs
                                3  : INS <= doins2(iCMP, 8'h05) ;
                                4  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                5  : INS <= doins2(iOR, 8'hA2) ;
                                6  : INS <= doins2(iCMP, 8'hA7) ;
                                7  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                8  : INS <= doins2(iADD, 8'h01) ;
                                9  : INS <= doins2(iCMP, 8'hA8) ;
                                10  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                11  : INS <= doins2(iXOR, 8'h0F) ;
                                12  : INS <= doins2(iCMP, 8'hA7) ;
                                13  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                14  : INS <= doins2(iADD, 8'h12) ;
                                15  : INS <= doins2(iCMP, 8'hB9) ;
                                16  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                // APB Bus Cycles, immediate data
                                30  : INS <= doins2(iLOAD, 8'h12) ;
                                31  : INS <= doins5(iAPBWRT, iDAT, 0, 8'h10, 8'h12) ;
                                32  : INS <= doins5(iAPBWRT, iDAT, 0, 8'h11, 8'h13) ;
                                33  : INS <= doins5(iAPBWRT, iDAT, 1, 8'h12, 8'h14) ;
                                34  : INS <= doins5(iAPBWRT, iDAT, 1, 8'h13, 8'h15) ;
                                35  : INS <= doins5(iAPBWRT, iDAT, 2, 8'h14, 8'h16) ;
                                36  : INS <= doins5(iAPBWRT, iDAT, 2, 8'h15, 8'h17) ;
                                37  : INS <= doins5(iAPBWRT, iDAT, 3, 8'h10, 8'h18) ;
                                38  : INS <= doins5(iAPBWRT, iDAT, 3, 8'h11, 8'h19) ;
                                39  : INS <= doins3(iAPBREAD, 0, 8'h10) ;
                                40  : INS <= doins2(iCMP, 8'h12) ;
                                41  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                42  : INS <= doins3(iAPBREAD, 0, 8'h11) ;
                                43  : INS <= doins2(iCMP, 8'h13) ;
                                44  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                45  : INS <= doins3(iAPBREAD, 1, 8'h12) ;
                                46  : INS <= doins2(iCMP, 8'h14) ;
                                47  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                48  : INS <= doins3(iAPBREAD, 1, 8'h13) ;
                                49  : INS <= doins2(iCMP, 8'h15) ;
                                50  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                51  : INS <= doins3(iAPBREAD, 2, 8'h14) ;
                                52  : INS <= doins2(iCMP, 8'h16) ;
                                53  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                54  : INS <= doins3(iAPBREAD, 2, 8'h15) ;
                                55  : INS <= doins2(iCMP, 8'h17) ;
                                56  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                57  : INS <= doins3(iAPBREAD, 3, 8'h10) ;
                                58  : INS <= doins2(iCMP, 8'h18) ;
                                59  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                60  : INS <= doins3(iAPBREAD, 3, 8'h11) ;
                                61  : INS <= doins2(iCMP, 8'h19) ;
                                62  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                // Flag Conditions
                                99  : INS <= doins2(iLOAD, 255) ; // set zero flag
                                100  : INS <= doins2(iADD, 1) ;
                                101  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                102  : INS <= doins2(iADD, 1) ; // not set
                                103  : INS <= doins4(iJUMP, iIF, ZERO, 254) ;
                                104  : INS <= doins4(iJUMP, iIF, NEGATIVE, 254) ; // number is positive
                                105  : INS <= doins2(iADD, 8'hF6) ; // will go negative
                                106  : INS <= doins4(iJUMP, iNOTIF, NEGATIVE, 254) ; // number is positive
                                // Call and Return
                                107  : INS <= doins2(iLOAD, 255) ; // set zero flag
                                108  : INS <= doins2(iADD, 1) ;
                                109  : INS <= doins4(iCALL, iIF, ZERO, 243) ; // should call
                                110  : INS <= doins4(iCALL, iNOTIF, ZERO, 242) ; // should not call
                                111  : INS <= doins2(iCALL, 244) ; // check return, will return
                                112  : INS <= doins2(iADD, 1) ; // Clear zero
                                113  : INS <= doins4(iCALL, iNOTIF, ZERO, 243) ; // should call
                                114  : INS <= doins4(iCALL, iIF, ZERO, 242) ; // should not call
                                115  : INS <= doins2(iCALL, 246) ; // check return, will return
                                // Repeat with Negative flag
                                116  : INS <= doins2(iLOAD, 254) ; // set negative flag
                                117  : INS <= doins2(iADD, 1) ;
                                118  : INS <= doins4(iJUMP, iNOTIF, NEGATIVE, 254) ;
                                119  : INS <= doins4(iCALL, iIF, NEGATIVE, 243) ; // should call
                                120  : INS <= doins4(iCALL, iNOTIF, NEGATIVE, 242) ; // should not call
                                121  : INS <= doins2(iCALL, 248) ; // check return, will return
                                122  : INS <= doins2(iADD, 1) ; // not set
                                123  : INS <= doins4(iJUMP, iIF, NEGATIVE, 254) ;
                                124  : INS <= doins4(iCALL, iNOTIF, NEGATIVE, 243) ; // should call
                                125  : INS <= doins4(iCALL, iIF, NEGATIVE, 242) ; // should not call
                                126  : INS <= doins4(iCALL, iNOTIF, ALWAYS, 251) ; // check return, will return
                                // Check Stack calling
                                130  : INS <= doins2(iLOAD, 0) ; // Clear accum
                                131  : INS <= doins2(iCALL, 232) ;
                                132  : INS <= doins2(iCMP, 1) ; // Should have incremented by 1
                                // Done tests, jump to signal all done
                                180  : INS <= doins2(iCALL, 240) ;
                                //////////////////////////////////////////////////////////////////////////////////
                                // Call testing
                                223  : INS <= doins2(iADD, 1) ;
                                224  : INS <= doins2(iCALL, 226) ;
                                225  : INS <= doins1(iRETURN) ;
                                226  : INS <= doins2(iADD, 1) ;
                                227  : INS <= doins2(iCALL, 229) ;
                                228  : INS <= doins1(iRETURN) ;
                                229  : INS <= doins2(iADD, 1) ;
                                230  : INS <= doins2(iCALL, 232) ;
                                231  : INS <= doins1(iRETURN) ;
                                232  : INS <= doins2(iADD, 1) ;
                                233  : INS <= doins1(iNOP) ;
                                234  : INS <= doins1(iRETURN) ;
                                ////////////////////////////////////////////////////////////////////////////////////
                                // All tests complete
                                240  : INS <= doins3(iIOWRT, iDAT, 253) ;
                                241  : INS <= doins2(iJUMP, 241) ;
                                // If called here error
                                242  : INS <= doins2(iJUMP, 254) ;
                                ////////////////////////////////////////////////////////////////////////////////////
                                // If called here return
                                243  : INS <= doins1(iRETURN) ;
                                // If called here return on zero
                                244  : INS <= doins3(iRETURN, iIF, ZERO) ;
                                245  : INS <= doins2(iJUMP, 254) ;
                                // If called here return on NOT zero
                                246  : INS <= doins3(iRETURN, iNOTIF, ZERO) ;
                                247  : INS <= doins2(iJUMP, 254) ;
                                // If called here return on negative
                                248  : INS <= doins3(iRETURN, iIF, NEGATIVE) ;
                                249  : INS <= doins2(iJUMP, 254) ;
                                // If called here return on NOT negative
                                250  : INS <= doins3(iRETURN, iNOTIF, NEGATIVE) ;
                                251  : INS <= doins2(iJUMP, 254) ;
                                // Error Condition
                                254  : INS <= doins3(iIOWRT, iDAT, 254) ; // Error Condition
                                255  : INS <= doins2(iJUMP, 251) ;
                                default  : INS <= doins1(iNOP) ;
                            endcase
                        end
            15 :
                        begin
                            case (ADDRINT)
                                // Jump to test start point
                                0  : INS <= doins2(iJUMP, 1) ;
                                // Simple Test of Boolean Operations
                                1  : INS <= doins2(iLOAD, 8'h55) ; // Set Accumalator to 55hex
                                ////////////////////////////////////////////////////////////////////////////////////////////-
                                ////////////////////////////////////////////////////////////////////////////////////////////-
                                // 8-Bit operation with all some instructions enabled  - no stack
                                8  : INS <= doins1(iINC) ;
                                9  : INS <= doins2(iCMP, 8'h56) ;
                                10  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                // IO IN and OUT Jump Conditions
                                20  : INS <= doins3(iIOWRT, iDAT, 8'h00) ; // IO_IN is connected to IO_OUT
                                21  : INS <= doins4(iJUMP, iIF, INPUT0, 254) ;
                                22  : INS <= doins4(iJUMP, iIF, INPUT1, 254) ;
                                23  : INS <= doins4(iJUMP, iIF, INPUT2, 254) ;
                                24  : INS <= doins4(iJUMP, iIF, INPUT3, 254) ;
                                25  : INS <= doins3(iIOWRT, iDAT, 8'h01) ; // IO_IN is connected to IO_OUT
                                26  : INS <= doins4(iJUMP, iNOTIF, INPUT0, 254) ;
                                27  : INS <= doins4(iJUMP, iIF, INPUT1, 254) ;
                                28  : INS <= doins4(iJUMP, iIF, INPUT2, 254) ;
                                29  : INS <= doins4(iJUMP, iIF, INPUT3, 254) ;
                                30  : INS <= doins3(iIOWRT, iDAT, 8'h02) ; // IO_IN is connected to IO_OUT
                                31  : INS <= doins4(iJUMP, iIF, INPUT0, 254) ;
                                32  : INS <= doins4(iJUMP, iNOTIF, INPUT1, 254) ;
                                33  : INS <= doins4(iJUMP, iIF, INPUT2, 254) ;
                                34  : INS <= doins4(iJUMP, iIF, INPUT3, 254) ;
                                35  : INS <= doins3(iIOWRT, iDAT, 8'h04) ; // IO_IN is connected to IO_OUT
                                36  : INS <= doins4(iJUMP, iIF, INPUT0, 254) ;
                                37  : INS <= doins4(iJUMP, iIF, INPUT1, 254) ;
                                38  : INS <= doins4(iJUMP, iNOTIF, INPUT2, 254) ;
                                39  : INS <= doins4(iJUMP, iIF, INPUT3, 254) ;
                                40  : INS <= doins3(iIOWRT, iDAT, 8'h08) ; // IO_IN is connected to IO_OUT
                                41  : INS <= doins4(iJUMP, iIF, INPUT0, 254) ;
                                42  : INS <= doins4(iJUMP, iIF, INPUT1, 254) ;
                                43  : INS <= doins4(iJUMP, iIF, INPUT2, 254) ;
                                44  : INS <= doins4(iJUMP, iNOTIF, INPUT3, 254) ;
                                // APB Bus Cycles, immediate data
                                // Accumalator writes
                                65  : INS <= doins2(iLOAD, 8'h23) ;
                                66  : INS <= doins4(iAPBWRT, iACC, 0, 8'h20) ;
                                67  : INS <= doins1(iINC) ;
                                68  : INS <= doins4(iAPBWRT, iACC, 0, 8'h21) ;
                                69  : INS <= doins1(iINC) ;
                                70  : INS <= doins4(iAPBWRT, iACC, 0, 8'h22) ;
                                71  : INS <= doins3(iAPBREAD, 0, 8'h20) ;
                                72  : INS <= doins2(iCMP, 8'h23) ;
                                73  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                74  : INS <= doins3(iAPBREAD, 0, 8'h21) ;
                                75  : INS <= doins2(iCMP, 8'h24) ;
                                76  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                77  : INS <= doins3(iAPBREAD, 0, 8'h22) ;
                                78  : INS <= doins2(iCMP, 8'h25) ;
                                79  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                // Flag Conditions
                                99   : INS <= doins2(iLOAD, 255) ; // set zero flag
                                100  : INS <= doins1(iINC) ;
                                101  : INS <= doins4(iJUMP, iNOTIF, ZERO, 254) ;
                                102  : INS <= doins1(iINC) ; // not set
                                103  : INS <= doins4(iJUMP, iIF, ZERO, 254) ;
                                104  : INS <= doins4(iJUMP, iIF, NEGATIVE, 254) ; // number is positive
                                // Done tests, jump to signal all done
                                180  : INS <= doins2(iCALL, 240) ;
                                ////////////////////////////////////////////////////////////////////////////////////
                                // All tests complete
                                240  : INS <= doins3(iIOWRT, iDAT, 253) ;
                                241  : INS <= doins2(iJUMP, 241) ;
                                // If called here error
                                242  : INS <= doins2(iJUMP, 254) ;
                                ////////////////////////////////////////////////////////////////////////////////////
                                // Error Condition
                                254  : INS <= doins3(iIOWRT, iDAT, 254) ; // Error Condition
                                255  : INS <= doins2(iJUMP, 251) ;
                                default  : INS <= doins1(iNOP) ;
                            endcase
                        end
            16 :
                        begin
                            case (ADDRINT)
                                ////////////////////////////////////////////////////////////////////////////////////////////-
                                // Instruction set to demonstrate CoreAI Operation
                                0  : INS <= doins4(iJUMP, iIF, INPUT0, 0) ; // wait until AB non busy
							    1  : INS <= doins5(iAPBWRT, iDAT8, 0, iACM_CTRLSTAT, 16'h0001) ; // set ACM reset
                                2  : INS <= doins4(iJUMP, iIF, INPUT0, 2) ; // wait until AB non busy
                                // ADC should be calibrating - poll status register
                                3  : INS <= doins3(iAPBREAD, 0, iADC_STAT_HI_ADDR) ; // read status
                                4  : INS <= doins2(iAND, 16'h8000) ; // mask to Calibrate
                                5  : INS <= doins4(iJUMP, iNOTIF, ZERO, 3) ; // if not calibated wait
                                // Now Program the AV AC AT AG Registers
                                6  : INS <= doins2(iLOAD, 16'h0000) ; // ACC=0
                                7  : INS <= doins4(iJUMP, iIF, INPUT0, 7) ; // wait until AB non busy
                                8  : INS <= doins4(iAPBWRT, iACC, 0, iACM_ADDR_ADDR) ; // Write the Accumalator to ACM Address
                                9  : INS <= doins4(iAPBWRT, iACM, 0, iACM_DATA_ADDR) ; // Write ACM Data indexed by accumlator
                                10  : INS <= doins2(iADD, 16'h0001) ; // Increment the address
                                11  : INS <= doins2(iBITTST, 4) ; // See if at the last address
                                12  : INS <= doins4(iJUMP, iIF, ZERO, 7) ; // Repeat if not done
                                // Check ADC is Calibrated
                                13  : INS <= doins4(iJUMP, iIF, INPUT0, 13) ; // wait until AB non busy
                                14  : INS <= doins3(iIOWRT, iDAT, 8'h01) ; // Indicate initialized
                                // Now do a sample off channel 1
                                15  : INS <= doins4(iAPBWRT, 0, iADC_CTRL2_HI_ADDR, 16'h2100) ; // Start Conversion Channel 1
                                16  : INS <= doins4(iJUMP, iIF, INPUT0, 16) ; // wait until AB non busy
                                //Now Compare the value, see if between 4.75 and 5.25v
                                17  : INS <= doins3(iAPBREAD, 0, iADC_STAT_HI_ADDR) ; // Read ADC Value
                                18  : INS <= doins2(iAND, 16'h0FFF) ; // leave ADC data
                                19  : INS <= doins2(iCMPLEQ, 1187) ; // See if < 4.75v Subtract 1187
                                20  : INS <= doins4(iJUMP, 23, iIF, NEGATIVE) ; // jump if negative, less than 4.75
                                21  : INS <= doins2(iCMPLEQ, 1312) ; // See if > 5.25v Subtract 1312
                                22  : INS <= doins4(iJUMP, iNOTIF, NEGATIVE, 25) ; // jump if negative, less then 5.25
                                // simply fall through since >5.25
                                // Decided voltage <4.75 or >5.25 so clear flag
                                23  : INS <= doins3(iIOWRT, iDAT, 8'h01) ; // Turn DETECTED off
                                24  : INS <= doins2(iJUMP, 15) ; // Sample again
                                // Decided voltage between 4.75 and 5.25 so set flag
							    25  : INS <= doins3(iIOWRT, iDAT, 8'h03) ; // Turn DETECTED on
                                26  : INS <= doins2(iJUMP, 15) ; // Sample again
								default  : INS <= {58{1'bx}} ;
                            endcase
                        end
             20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31 :
                        begin
                        case (ADDRINT)
                               // Jump to test start point
                                0  : INS <= doins2( iJUMP,1);
                               // Simple Test of Boolean Operations
                                1  : INS <= doins2( iLOAD,32'h55);                // Set Accumalator to 55hex
                                8  : INS <= doins1( iINC);
                                9  : INS <= doins2( iCMP,32'h56);
                                10 : INS <= doins4( iJUMP,iNOTIF,ZERO,120);
                               // IO IN and OUT Jump Conditions
                                20 : INS <= doins3( iIOWRT, iDAT, 32'h00);               // IO_IN is connected to IO_OUT
                                21 : INS <= doins4( iJUMP,iIF,INPUT0, 120);
                                22 : INS <= doins4( iJUMP,iIF,INPUT1, 120);
                                23 : INS <= doins4( iJUMP,iIF,INPUT2, 120);
                                24 : INS <= doins4( iJUMP,iIF,INPUT3, 120);
                                25 : INS <= doins3( iIOWRT, iDAT, 32'h01);               // IO_IN is connected to IO_OUT
                                26 : INS <= doins4( iJUMP,iNOTIF,INPUT0, 120);
                                27 : INS <= doins4( iJUMP,iIF,INPUT1   , 120);
                                28 : INS <= doins4( iJUMP,iIF,INPUT2   , 120);
                                29 : INS <= doins4( iJUMP,iIF,INPUT3   , 120);
                                30 : INS <= doins3( iIOWRT, iDAT, 32'h02);               // IO_IN is connected to IO_OUT
                                31 : INS <= doins4( iJUMP,iIF,INPUT0   , 120);
                                32 : INS <= doins4( iJUMP,iNOTIF,INPUT1, 120);
                                33 : INS <= doins4( iJUMP,iIF,INPUT2   , 120);
                                34 : INS <= doins4( iJUMP,iIF,INPUT3   , 120);
                                35 : INS <= doins3( iIOWRT, iDAT, 32'h04);               // IO_IN is connected to IO_OUT
                                36 : INS <= doins4( iJUMP,iIF,INPUT0   , 120);
                                37 : INS <= doins4( iJUMP,iIF,INPUT1   , 120);
                                38 : INS <= doins4( iJUMP,iNOTIF,INPUT2, 120);
                                39 : INS <= doins4( iJUMP,iIF,INPUT3   , 120);
                                40 : INS <= doins3( iIOWRT, iDAT, 32'h08);               // IO_IN is connected to IO_OUT
                                41 : INS <= doins4( iJUMP,iIF,INPUT0   , 120 );
                                42 : INS <= doins4( iJUMP,iIF,INPUT1   , 120 );
                                43 : INS <= doins4( iJUMP,iIF,INPUT2   , 120 );
                                44 : INS <= doins4( iJUMP,iNOTIF,INPUT3, 120 );
                                45 : INS <= doins2( iJUMP,65);
                               // APB Bus Cycles, immediate data
                                65 :  INS <= doins2( iLOAD,32'h23);
                                66  : INS <= doins4( iAPBWRT, iACC,  0,32'h20);
                                67  : INS <= doins1( iINC);
                                68  : INS <= doins4( iAPBWRT, iACC,  0,32'h21);
                                69  : INS <= doins1( iINC);
                                70  : INS <= doins4( iAPBWRT, iACC,  0,32'h22);
                                71  : INS <= doins3( iAPBREAD, 0,32'h20);
                                72  : INS <= doins2( iCMP,32'h23);
                                73  : INS <= doins4( iJUMP,iNOTIF,ZERO,120);
                                74  : INS <= doins3( iAPBREAD, 0,32'h21);
                                75  : INS <= doins2( iCMP,32'h24);
                                76  : INS <= doins4( iJUMP,iNOTIF,ZERO,120);
                                77  : INS <= doins3( iAPBREAD, 0,32'h22);
                                78  : INS <= doins2( iCMP,32'h25);
                                79  : INS <= doins4( iJUMP,iNOTIF,ZERO,120);
                                80  : INS <= doins2( iJUMP,99);
                               // Flag Conditions
                                99  : INS <= doins2( iLOAD,0);                         // set zero flag
                                100 : INS <= doins2( iAND, 0);
                                101 : INS <= doins4( iJUMP,iNOTIF,ZERO,120);
                                102 : INS <= doins1( iINC);                            // not set
                                103 : INS <= doins4( iJUMP,iIF,ZERO, 120);
                                104 : INS <= doins4( iJUMP,iIF,NEGATIVE,120);          // number is positive
                               ////////////////////////////////////////////////////////////////////////////////////
                               // All tests complete
                                105 : INS <= doins3( iIOWRT, iDAT, 253);
                                106 : INS <= doins1( iHALT);
                               // Error Condition
                                120 : INS <= doins3( iIOWRT, iDAT, 254);                  // Error Condition
                                121 : INS <= doins1( iHALT);
                                default : INS <= doins1( iNOP);
                          endcase
                        end
                  default :
                        begin
                            case (ADDRINT)
                                ////////////////////////////////////////////////////////////////////////////////////////////-
                                // Illegal testmode specified
                                0  : INS <= doins3(iIOWRT, iDAT, 254) ; // Error Condition
                                1  : INS <= doins2(iJUMP, 11) ;
                                default  : INS <= doins1(iNOP) ;
                            endcase
                        end
        endcase
    end
    ////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Force in the dont cares
    always @(INS)
    begin
        INSTRUCTION <= {58{1'bx}} ;
        INSTRUCTION[5:0] <= INS[5:0] ;
        if (SW > 0)
        begin
          //  INSTRUCTION[SW - 1 + 6:6] <= INS[SW - 1 + 6:6] ;
            INSTRUCTION[SW  + 6:6] <= INS[SW  + 6:6] ;
        end
        INSTRUCTION[AW - 1 + 4 + 6:4 + 6] <= INS[AW - 1 + 4 + 6:4 + 6] ;
        INSTRUCTION[DW - 1 + 16 + 4 + 6:16 + 4 + 6] <= INS[DW - 1 + 16 + 4 + 6:16 + 4 + 6] ;
    end
endmodule
