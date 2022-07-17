//============================================================================
//
//  CoreInterrupt
//
//  Copyright 2006 by ACTEL
//  The information contained in this document is subject to licensing
//  restrictions from Actel Corp. If you are not in possession of written
//  authorization from Actel for use of this file, then the file should be
//  immediately destroyed and no back-up of the file should be made.
//
//============================================================================

`timescale 1ns/1ps

module CoreInterrupt (
    PCLK,
    PRESETn,
    PENABLE,
    PSEL,
    PADDR,
    PWRITE,
    PWDATA,
    PRDATA,
    fiqSource7,
    fiqSource6,
    fiqSource5,
    fiqSource4,
    fiqSource3,
    fiqSource2,
    fiqSource1,
    fiqSource0,
    irqSource31,
    irqSource30,
    irqSource29,
    irqSource28,
    irqSource27,
    irqSource26,
    irqSource25,
    irqSource24,
    irqSource23,
    irqSource22,
    irqSource21,
    irqSource20,
    irqSource19,
    irqSource18,
    irqSource17,
    irqSource16,
    irqSource15,
    irqSource14,
    irqSource13,
    irqSource12,
    irqSource11,
    irqSource10,
    irqSource9,
    irqSource8,
    irqSource7,
    irqSource6,
    irqSource5,
    irqSource4,
    irqSource3,
    irqSource2,
    irqSource1,
    irqSource0,
    IRQ,
    FIQ
    );

    // Register addresses
    `define FIQSOFTA        4'h0
    `define FIQSOFTCLEARA   4'h1
    `define FIQENABLEA      4'h2
    `define FIQENCLEARA     4'h3
    `define FIQRAWSTATUSA   4'h4
    `define FIQSTATUSA      4'h5
    `define IRQSOFTA        4'h6
    `define IRQSOFTCLEARA   4'h7
    `define IRQENABLEA      4'h8
    `define IRQENCLEARA     4'h9
    `define IRQRAWSTATUSA   4'ha
    `define IRQSTATUSA      4'hb

    parameter NUMIRQSRC = 8;    // Number of IRQ source inputs. Range 0 to 32.
    parameter NUMFIQSRC = 0;    // Number of FIQ source inputs. Range 0 to 8.

    // IRQPOLARITY determines polarity of IRQ output
    //      1 = active high
    //      0 = active low
    parameter IRQPOLARITY = 0;
    // FIQPOLARITY determines polarity of FIQ output
    //      1 = active high
    //      0 = active low
    parameter FIQPOLARITY = 0;

    //-----------------------------------------------------------------------------
    // Pin Declarations
    //-----------------------------------------------------------------------------
    input               PCLK;       // APB clock
    input               PRESETn;    // APB reset
    input               PENABLE;    // APB enable
    input               PSEL;       // APB select
    input        [5:2]  PADDR;      // APB address bus
    input               PWRITE;     // APB write
    input       [31:0]  PWDATA;     // APB write data
    output      [31:0]  PRDATA;     // APB read data

    input               fiqSource7;
    input               fiqSource6;
    input               fiqSource5;
    input               fiqSource4;
    input               fiqSource3;
    input               fiqSource2;
    input               fiqSource1;
    input               fiqSource0;
    input               irqSource31;
    input               irqSource30;
    input               irqSource29;
    input               irqSource28;
    input               irqSource27;
    input               irqSource26;
    input               irqSource25;
    input               irqSource24;
    input               irqSource23;
    input               irqSource22;
    input               irqSource21;
    input               irqSource20;
    input               irqSource19;
    input               irqSource18;
    input               irqSource17;
    input               irqSource16;
    input               irqSource15;
    input               irqSource14;
    input               irqSource13;
    input               irqSource12;
    input               irqSource11;
    input               irqSource10;
    input               irqSource9;
    input               irqSource8;
    input               irqSource7;
    input               irqSource6;
    input               irqSource5;
    input               irqSource4;
    input               irqSource3;
    input               irqSource2;
    input               irqSource1;
    input               irqSource0;

    output              IRQ;        // Interrupt request
    output              FIQ;        // Fast interrupt request

    //-----------------------------------------------------------------------------
    // Signal Declarations
    //-----------------------------------------------------------------------------

    wire                PCLK;
    wire                PRESETn;
    wire                PENABLE;
    wire                PSEL;
    wire         [5:2]  PADDR;
    wire                PWRITE;
    wire        [31:0]  PWDATA;
    wire        [31:0]  PRDATA;
    wire         [7:0]  fiqSource;
    wire        [31:0]  irqSource;
    wire                IRQ;
    wire                FIQ;

    wire        [31:0]  PrdataNext;
    reg         [31:0]  iPRDATA;
    wire                PrdataNextEn;
    reg         [31:0]  DataOut;

    wire         [7:0]  fiqConfigMask;
    wire        [31:0]  irqConfigMask;

    wire                writeEn;

    wire         [7:0]  iFiqSource;
    wire         [7:0]  fiqRawStatus;
    wire         [7:0]  fiqStatus;
    reg          [7:0]  fiqSoft;
    reg          [7:0]  fiqEnable;

    wire        [31:0]  iIrqSource;
    wire        [31:0]  irqRawStatus;
    wire        [31:0]  irqStatus;
    reg         [31:0]  irqSoft;
    reg         [31:0]  irqEnable;

    wire         [7:0]  iFiqPwdata;
    wire        [31:0]  iIrqPwdata;

    //------------------------------------------------------------------------------
    // Beginning of main code
    //------------------------------------------------------------------------------

    // Consolidate FIQ sources into a single 8 bit signal
    assign fiqSource = {fiqSource7,
                        fiqSource6,
                        fiqSource5,
                        fiqSource4,
                        fiqSource3,
                        fiqSource2,
                        fiqSource1,
                        fiqSource0};

    // Consolidate IRQ sources into a single 32 bit signal
    assign irqSource = {irqSource31,
                        irqSource30,
                        irqSource29,
                        irqSource28,
                        irqSource27,
                        irqSource26,
                        irqSource25,
                        irqSource24,
                        irqSource23,
                        irqSource22,
                        irqSource21,
                        irqSource20,
                        irqSource19,
                        irqSource18,
                        irqSource17,
                        irqSource16,
                        irqSource15,
                        irqSource14,
                        irqSource13,
                        irqSource12,
                        irqSource11,
                        irqSource10,
                        irqSource9,
                        irqSource8,
                        irqSource7,
                        irqSource6,
                        irqSource5,
                        irqSource4,
                        irqSource3,
                        irqSource2,
                        irqSource1,
                        irqSource0};

    // APB write enable
    assign writeEn  = (PWRITE && PSEL && !PENABLE);

    //------------------------------------------------------------------------------
    // Configuration based on number of IRQ and FIQ sources
    //------------------------------------------------------------------------------

    // IRQ related configuration
    assign irqConfigMask =  (NUMIRQSRC == 32) ? 32'hffffffff :
                            (NUMIRQSRC == 31) ? 32'h7fffffff :
                            (NUMIRQSRC == 30) ? 32'h3fffffff :
                            (NUMIRQSRC == 29) ? 32'h1fffffff :
                            (NUMIRQSRC == 28) ? 32'h0fffffff :
                            (NUMIRQSRC == 27) ? 32'h07ffffff :
                            (NUMIRQSRC == 26) ? 32'h03ffffff :
                            (NUMIRQSRC == 25) ? 32'h01ffffff :
                            (NUMIRQSRC == 24) ? 32'h00ffffff :
                            (NUMIRQSRC == 23) ? 32'h007fffff :
                            (NUMIRQSRC == 22) ? 32'h003fffff :
                            (NUMIRQSRC == 21) ? 32'h001fffff :
                            (NUMIRQSRC == 20) ? 32'h000fffff :
                            (NUMIRQSRC == 19) ? 32'h0007ffff :
                            (NUMIRQSRC == 18) ? 32'h0003ffff :
                            (NUMIRQSRC == 17) ? 32'h0001ffff :
                            (NUMIRQSRC == 16) ? 32'h0000ffff :
                            (NUMIRQSRC == 15) ? 32'h00007fff :
                            (NUMIRQSRC == 14) ? 32'h00003fff :
                            (NUMIRQSRC == 13) ? 32'h00001fff :
                            (NUMIRQSRC == 12) ? 32'h00000fff :
                            (NUMIRQSRC == 11) ? 32'h000007ff :
                            (NUMIRQSRC == 10) ? 32'h000003ff :
                            (NUMIRQSRC ==  9) ? 32'h000001ff :
                            (NUMIRQSRC ==  8) ? 32'h000000ff :
                            (NUMIRQSRC ==  7) ? 32'h0000007f :
                            (NUMIRQSRC ==  6) ? 32'h0000003f :
                            (NUMIRQSRC ==  5) ? 32'h0000001f :
                            (NUMIRQSRC ==  4) ? 32'h0000000f :
                            (NUMIRQSRC ==  3) ? 32'h00000007 :
                            (NUMIRQSRC ==  2) ? 32'h00000003 :
                            (NUMIRQSRC ==  1) ? 32'h00000001 :
                            (NUMIRQSRC ==  0) ? 32'h00000000 :
                                                32'h00000000;

    assign iIrqSource = irqSource & irqConfigMask;
    assign iIrqPwdata = PWDATA & irqConfigMask;

    // FIQ related configuration
    assign fiqConfigMask =  (NUMFIQSRC == 8) ? 8'hff :
                            (NUMFIQSRC == 7) ? 8'h7f :
                            (NUMFIQSRC == 6) ? 8'h3f :
                            (NUMFIQSRC == 5) ? 8'h1f :
                            (NUMFIQSRC == 4) ? 8'h0f :
                            (NUMFIQSRC == 3) ? 8'h07 :
                            (NUMFIQSRC == 2) ? 8'h03 :
                            (NUMFIQSRC == 1) ? 8'h01 :
                            (NUMFIQSRC == 0) ? 8'h00 :
                                               8'h00;

    assign iFiqSource = fiqSource & fiqConfigMask;
    assign iFiqPwdata = PWDATA[7:0] & fiqConfigMask;

    //------------------------------------------------------------------------------
    // FIQ
    //------------------------------------------------------------------------------
    assign fiqRawStatus = iFiqSource | fiqSoft;
    assign fiqStatus = fiqRawStatus & fiqEnable;

    assign FIQ = (FIQPOLARITY == 1) ? |(fiqStatus) : !(|(fiqStatus));

    //------------------------------------------------------------------------------
    // IRQ
    //------------------------------------------------------------------------------
    assign irqRawStatus = iIrqSource | irqSoft;
    assign irqStatus = irqRawStatus & irqEnable;

    assign IRQ = (IRQPOLARITY == 1) ? |(irqStatus) : !(|(irqStatus));

    //------------------------------------------------------------------------------
    // FIQ soft interrupt register
    //------------------------------------------------------------------------------
    always @(negedge PRESETn or posedge PCLK)
    begin
        if (!PRESETn)
            fiqSoft <= {8{1'b0}};
        else
            if (writeEn)
                case (PADDR)
                    `FIQSOFTA      : fiqSoft <= (fiqSoft | iFiqPwdata);  // set
                    `FIQSOFTCLEARA : fiqSoft <= (fiqSoft & ~iFiqPwdata); // clear
                    default        : fiqSoft <= fiqSoft;
                endcase
    end

    //------------------------------------------------------------------------------
    // FIQ enable register
    //------------------------------------------------------------------------------
    always @(negedge PRESETn or posedge PCLK)
    begin
        if (!PRESETn)
            fiqEnable <= {8{1'b0}};
        else
            if (writeEn)
                case (PADDR)
                    `FIQENABLEA  : fiqEnable <= (fiqEnable | iFiqPwdata);  // set
                    `FIQENCLEARA : fiqEnable <= (fiqEnable & ~iFiqPwdata); // clear
                    default      : fiqEnable <= fiqEnable;
                endcase
    end

    //------------------------------------------------------------------------------
    // IRQ soft interrupt register
    //------------------------------------------------------------------------------
    always @(negedge PRESETn or posedge PCLK)
    begin
        if (!PRESETn)
            irqSoft <= {32{1'b0}};
        else
            if (writeEn)
                case (PADDR)
                    `IRQSOFTA      : irqSoft <= (irqSoft | iIrqPwdata);  // set
                    `IRQSOFTCLEARA : irqSoft <= (irqSoft & ~iIrqPwdata); // clear
                    default        : irqSoft <= irqSoft;
                endcase
    end

    //------------------------------------------------------------------------------
    // IRQ enable register
    //------------------------------------------------------------------------------
    always @(negedge PRESETn or posedge PCLK)
    begin
        if (!PRESETn)
            irqEnable <= {32{1'b0}};
        else
            if (writeEn)
                case (PADDR)
                    `IRQENABLEA  : irqEnable <= (irqEnable | iIrqPwdata);  // set
                    `IRQENCLEARA : irqEnable <= (irqEnable & ~iIrqPwdata); // clear
                    default      : irqEnable <= irqEnable;
                endcase
    end

    //------------------------------------------------------------------------------
    // Output data generation
    //------------------------------------------------------------------------------
    // Zero data is used as padding for register reads

    always @(PSEL or PWRITE or PADDR
             or fiqSoft or fiqEnable or fiqRawStatus or fiqStatus
             or irqSoft or irqEnable or irqRawStatus or irqStatus
            )
    begin : p_DataOutComb
        DataOut = {32{1'b0}}; // Drive zeros by default
        if (!PWRITE && PSEL)
            case (PADDR)
                `FIQSOFTA :         DataOut[ 7:0] = fiqSoft;
                `FIQENABLEA :       DataOut[ 7:0] = fiqEnable;
                `FIQRAWSTATUSA :    DataOut[ 7:0] = fiqRawStatus;
                `FIQSTATUSA :       DataOut[ 7:0] = fiqStatus;
                `IRQSOFTA :         DataOut[31:0] = irqSoft;
                `IRQENABLEA :       DataOut[31:0] = irqEnable;
                `IRQRAWSTATUSA :    DataOut[31:0] = irqRawStatus;
                `IRQSTATUSA :       DataOut[31:0] = irqStatus;
                default:            DataOut[31:0] = {32{1'b0}};
            endcase
        else
            DataOut = {32{1'b0}};
    end

    // Enable for output data.
    assign PrdataNextEn = (PSEL && !PWRITE && !PENABLE);

    assign PrdataNext = (PrdataNextEn) ? DataOut : {32{1'b0}};

    // Register used to reduce output delay during reads.
    always @ (negedge PRESETn or posedge PCLK)
    begin : p_iPRDATASeq
        if (!PRESETn)
            iPRDATA <= {32{1'b0}};
        else
            iPRDATA <= PrdataNext;
    end

    // Drive output with internal version.
    assign PRDATA = iPRDATA;

endmodule

// --================================= End ===================================--
