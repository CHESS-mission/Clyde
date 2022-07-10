//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Sat Jul 09 21:10:17 2022
// Version: v11.9 11.9.0.4
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// Minimal_SoC
module Minimal_SoC(
    // Inputs
    NSYSRESET,
    RX,
    SYSCLK,
    // Outputs
    FRAMING_ERR,
    GPIO,
    OVERFLOW,
    PARITY_ERR,
    RXRDY,
    TX,
    TXRDY
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input        NSYSRESET;
input        RX;
input        SYSCLK;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output       FRAMING_ERR;
output [7:0] GPIO;
output       OVERFLOW;
output       PARITY_ERR;
output       RXRDY;
output       TX;
output       TXRDY;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          COREABC_0_APB3master_PENABLE;
wire          COREABC_0_APB3master_PREADY;
wire          COREABC_0_APB3master_PSELx;
wire          COREABC_0_APB3master_PSLVERR;
wire          COREABC_0_APB3master_PWRITE;
wire          COREABC_0_PRESETN;
wire          CoreAPB3_0_APBmslave0_PENABLE;
wire   [31:0] CoreAPB3_0_APBmslave0_PRDATA;
wire          CoreAPB3_0_APBmslave0_PSELx;
wire          CoreAPB3_0_APBmslave0_PWRITE;
wire          CoreAPB3_0_APBmslave1_PREADY;
wire          CoreAPB3_0_APBmslave1_PSELx;
wire          CoreAPB3_0_APBmslave1_PSLVERR;
wire          CoreTimer_0_TIMINT;
wire          FRAMING_ERR_net_0;
wire   [7:0]  GPIO_net_0;
wire          NSYSRESET;
wire          OVERFLOW_net_0;
wire          PARITY_ERR_net_0;
wire          RX;
wire          RXRDY_net_0;
wire          SYSCLK;
wire          TX_net_0;
wire          TXRDY_net_0;
wire          TX_net_1;
wire   [7:0]  GPIO_net_1;
wire          TXRDY_net_1;
wire          RXRDY_net_1;
wire          PARITY_ERR_net_1;
wire          OVERFLOW_net_1;
wire          FRAMING_ERR_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          GND_net;
wire          VCC_net;
wire   [15:0] INITADDR_const_net_0;
wire   [8:0]  INITDATA_const_net_0;
wire   [11:0] PADDR_S_const_net_0;
wire   [7:0]  PWDATA_S_const_net_0;
wire   [31:0] IADDR_const_net_0;
wire   [31:0] PRDATAS2_const_net_0;
wire   [31:0] PRDATAS3_const_net_0;
wire   [31:0] PRDATAS4_const_net_0;
wire   [31:0] PRDATAS5_const_net_0;
wire   [31:0] PRDATAS6_const_net_0;
wire   [31:0] PRDATAS7_const_net_0;
wire   [31:0] PRDATAS8_const_net_0;
wire   [31:0] PRDATAS9_const_net_0;
wire   [31:0] PRDATAS10_const_net_0;
wire   [31:0] PRDATAS11_const_net_0;
wire   [31:0] PRDATAS12_const_net_0;
wire   [31:0] PRDATAS13_const_net_0;
wire   [31:0] PRDATAS14_const_net_0;
wire   [31:0] PRDATAS15_const_net_0;
wire   [31:0] PRDATAS16_const_net_0;
//--------------------------------------------------------------------
// Bus Interface Nets Declarations - Unequal Pin Widths
//--------------------------------------------------------------------
wire   [31:20]COREABC_0_APB3master_PADDR_0_31to20;
wire   [19:0] COREABC_0_APB3master_PADDR_0_19to0;
wire   [31:0] COREABC_0_APB3master_PADDR_0;
wire   [19:0] COREABC_0_APB3master_PADDR;
wire   [31:0] COREABC_0_APB3master_PRDATA;
wire   [7:0]  COREABC_0_APB3master_PRDATA_0_7to0;
wire   [7:0]  COREABC_0_APB3master_PRDATA_0;
wire   [31:8] COREABC_0_APB3master_PWDATA_0_31to8;
wire   [7:0]  COREABC_0_APB3master_PWDATA_0_7to0;
wire   [31:0] COREABC_0_APB3master_PWDATA_0;
wire   [7:0]  COREABC_0_APB3master_PWDATA;
wire   [31:0] CoreAPB3_0_APBmslave0_PADDR;
wire   [4:2]  CoreAPB3_0_APBmslave0_PADDR_0_4to2;
wire   [4:2]  CoreAPB3_0_APBmslave0_PADDR_0;
wire   [4:0]  CoreAPB3_0_APBmslave0_PADDR_1_4to0;
wire   [4:0]  CoreAPB3_0_APBmslave0_PADDR_1;
wire   [31:0] CoreAPB3_0_APBmslave0_PWDATA;
wire   [7:0]  CoreAPB3_0_APBmslave0_PWDATA_0_7to0;
wire   [7:0]  CoreAPB3_0_APBmslave0_PWDATA_0;
wire   [31:8] CoreAPB3_0_APBmslave1_PRDATA_0_31to8;
wire   [7:0]  CoreAPB3_0_APBmslave1_PRDATA_0_7to0;
wire   [31:0] CoreAPB3_0_APBmslave1_PRDATA_0;
wire   [7:0]  CoreAPB3_0_APBmslave1_PRDATA;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net               = 1'b0;
assign VCC_net               = 1'b1;
assign INITADDR_const_net_0  = 16'h0000;
assign INITDATA_const_net_0  = 9'h000;
assign PADDR_S_const_net_0   = 12'h000;
assign PWDATA_S_const_net_0  = 8'h00;
assign IADDR_const_net_0     = 32'h00000000;
assign PRDATAS2_const_net_0  = 32'h00000000;
assign PRDATAS3_const_net_0  = 32'h00000000;
assign PRDATAS4_const_net_0  = 32'h00000000;
assign PRDATAS5_const_net_0  = 32'h00000000;
assign PRDATAS6_const_net_0  = 32'h00000000;
assign PRDATAS7_const_net_0  = 32'h00000000;
assign PRDATAS8_const_net_0  = 32'h00000000;
assign PRDATAS9_const_net_0  = 32'h00000000;
assign PRDATAS10_const_net_0 = 32'h00000000;
assign PRDATAS11_const_net_0 = 32'h00000000;
assign PRDATAS12_const_net_0 = 32'h00000000;
assign PRDATAS13_const_net_0 = 32'h00000000;
assign PRDATAS14_const_net_0 = 32'h00000000;
assign PRDATAS15_const_net_0 = 32'h00000000;
assign PRDATAS16_const_net_0 = 32'h00000000;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign TX_net_1          = TX_net_0;
assign TX                = TX_net_1;
assign GPIO_net_1        = GPIO_net_0;
assign GPIO[7:0]         = GPIO_net_1;
assign TXRDY_net_1       = TXRDY_net_0;
assign TXRDY             = TXRDY_net_1;
assign RXRDY_net_1       = RXRDY_net_0;
assign RXRDY             = RXRDY_net_1;
assign PARITY_ERR_net_1  = PARITY_ERR_net_0;
assign PARITY_ERR        = PARITY_ERR_net_1;
assign OVERFLOW_net_1    = OVERFLOW_net_0;
assign OVERFLOW          = OVERFLOW_net_1;
assign FRAMING_ERR_net_1 = FRAMING_ERR_net_0;
assign FRAMING_ERR       = FRAMING_ERR_net_1;
//--------------------------------------------------------------------
// Bus Interface Nets Assignments - Unequal Pin Widths
//--------------------------------------------------------------------
assign COREABC_0_APB3master_PADDR_0_31to20 = 12'h0;
assign COREABC_0_APB3master_PADDR_0_19to0 = COREABC_0_APB3master_PADDR[19:0];
assign COREABC_0_APB3master_PADDR_0 = { COREABC_0_APB3master_PADDR_0_31to20, COREABC_0_APB3master_PADDR_0_19to0 };

assign COREABC_0_APB3master_PRDATA_0_7to0 = COREABC_0_APB3master_PRDATA[7:0];
assign COREABC_0_APB3master_PRDATA_0 = { COREABC_0_APB3master_PRDATA_0_7to0 };

assign COREABC_0_APB3master_PWDATA_0_31to8 = 24'h0;
assign COREABC_0_APB3master_PWDATA_0_7to0 = COREABC_0_APB3master_PWDATA[7:0];
assign COREABC_0_APB3master_PWDATA_0 = { COREABC_0_APB3master_PWDATA_0_31to8, COREABC_0_APB3master_PWDATA_0_7to0 };

assign CoreAPB3_0_APBmslave0_PADDR_0_4to2 = CoreAPB3_0_APBmslave0_PADDR[4:2];
assign CoreAPB3_0_APBmslave0_PADDR_0 = { CoreAPB3_0_APBmslave0_PADDR_0_4to2 };
assign CoreAPB3_0_APBmslave0_PADDR_1_4to0 = CoreAPB3_0_APBmslave0_PADDR[4:0];
assign CoreAPB3_0_APBmslave0_PADDR_1 = { CoreAPB3_0_APBmslave0_PADDR_1_4to0 };

assign CoreAPB3_0_APBmslave0_PWDATA_0_7to0 = CoreAPB3_0_APBmslave0_PWDATA[7:0];
assign CoreAPB3_0_APBmslave0_PWDATA_0 = { CoreAPB3_0_APBmslave0_PWDATA_0_7to0 };

assign CoreAPB3_0_APBmslave1_PRDATA_0_31to8 = 24'h0;
assign CoreAPB3_0_APBmslave1_PRDATA_0_7to0 = CoreAPB3_0_APBmslave1_PRDATA[7:0];
assign CoreAPB3_0_APBmslave1_PRDATA_0 = { CoreAPB3_0_APBmslave1_PRDATA_0_31to8, CoreAPB3_0_APBmslave1_PRDATA_0_7to0 };

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------Minimal_SoC_COREABC_0_COREABC   -   Actel:DirectCore:COREABC:3.8.102
Minimal_SoC_COREABC_0_COREABC #( 
        .ACT_CALIBRATIONDATA ( 1 ),
        .APB_AWIDTH          ( 12 ),
        .APB_DWIDTH          ( 8 ),
        .APB_SDEPTH          ( 2 ),
        .DEBUG               ( 1 ),
        .EN_ACM              ( 1 ),
        .EN_ADD              ( 1 ),
        .EN_ALURAM           ( 0 ),
        .EN_AND              ( 1 ),
        .EN_CALL             ( 1 ),
        .EN_DATAM            ( 2 ),
        .EN_INC              ( 1 ),
        .EN_INDIRECT         ( 1 ),
        .EN_INT              ( 2 ),
        .EN_IOREAD           ( 1 ),
        .EN_IOWRT            ( 1 ),
        .EN_MULT             ( 0 ),
        .EN_OR               ( 1 ),
        .EN_PUSH             ( 1 ),
        .EN_RAM              ( 1 ),
        .EN_RAM_ECC          ( 0 ),
        .EN_SHL              ( 1 ),
        .EN_SHR              ( 1 ),
        .EN_XOR              ( 1 ),
        .FAMILY              ( 15 ),
        .ICWIDTH             ( 12 ),
        .IFWIDTH             ( 4 ),
        .IIWIDTH             ( 8 ),
        .IMEM_APB_ACCESS     ( 0 ),
        .INITWIDTH           ( 16 ),
        .INSMODE             ( 0 ),
        .IOWIDTH             ( 8 ),
        .ISRADDR             ( 1 ),
        .MAX_NVMDWIDTH       ( 32 ),
        .STWIDTH             ( 8 ),
        .TESTMODE            ( 0 ),
        .UNIQ_STRING_LENGTH  ( 21 ),
        .ZRWIDTH             ( 8 ) )
COREABC_0(
        // Inputs
        .INITDATVAL ( GND_net ), // tied to 1'b0 from definition
        .INITDONE   ( VCC_net ), // tied to 1'b1 from definition
        .INTREQ     ( CoreTimer_0_TIMINT ),
        .NSYSRESET  ( NSYSRESET ),
        .PCLK       ( SYSCLK ),
        .PREADY_M   ( COREABC_0_APB3master_PREADY ),
        .PSLVERR_M  ( COREABC_0_APB3master_PSLVERR ),
        .PSEL_S     ( GND_net ), // tied to 1'b0 from definition
        .PENABLE_S  ( GND_net ), // tied to 1'b0 from definition
        .PWRITE_S   ( GND_net ), // tied to 1'b0 from definition
        .INITADDR   ( INITADDR_const_net_0 ), // tied to 16'h0000 from definition
        .INITDATA   ( INITDATA_const_net_0 ), // tied to 9'h000 from definition
        .IO_IN      ( GPIO_net_0 ),
        .PRDATA_M   ( COREABC_0_APB3master_PRDATA_0 ),
        .PADDR_S    ( PADDR_S_const_net_0 ), // tied to 12'h000 from definition
        .PWDATA_S   ( PWDATA_S_const_net_0 ), // tied to 8'h00 from definition
        // Outputs
        .INTACT     (  ),
        .PRESETN    ( COREABC_0_PRESETN ),
        .PENABLE_M  ( COREABC_0_APB3master_PENABLE ),
        .PSEL_M     ( COREABC_0_APB3master_PSELx ),
        .PWRITE_M   ( COREABC_0_APB3master_PWRITE ),
        .PREADY_S   (  ),
        .PSLVERR_S  (  ),
        .IO_OUT     ( GPIO_net_0 ),
        .PADDR_M    ( COREABC_0_APB3master_PADDR ),
        .PWDATA_M   ( COREABC_0_APB3master_PWDATA ),
        .PRDATA_S   (  ) 
        );

//--------CoreAPB3   -   Actel:DirectCore:CoreAPB3:4.2.100
CoreAPB3 #( 
        .APB_DWIDTH      ( 8 ),
        .APBSLOT0ENABLE  ( 1 ),
        .APBSLOT1ENABLE  ( 1 ),
        .APBSLOT2ENABLE  ( 0 ),
        .APBSLOT3ENABLE  ( 0 ),
        .APBSLOT4ENABLE  ( 0 ),
        .APBSLOT5ENABLE  ( 0 ),
        .APBSLOT6ENABLE  ( 0 ),
        .APBSLOT7ENABLE  ( 0 ),
        .APBSLOT8ENABLE  ( 0 ),
        .APBSLOT9ENABLE  ( 0 ),
        .APBSLOT10ENABLE ( 0 ),
        .APBSLOT11ENABLE ( 0 ),
        .APBSLOT12ENABLE ( 0 ),
        .APBSLOT13ENABLE ( 0 ),
        .APBSLOT14ENABLE ( 0 ),
        .APBSLOT15ENABLE ( 0 ),
        .FAMILY          ( 15 ),
        .IADDR_OPTION    ( 0 ),
        .MADDR_BITS      ( 16 ),
        .SC_0            ( 0 ),
        .SC_1            ( 0 ),
        .SC_2            ( 0 ),
        .SC_3            ( 0 ),
        .SC_4            ( 0 ),
        .SC_5            ( 0 ),
        .SC_6            ( 0 ),
        .SC_7            ( 0 ),
        .SC_8            ( 0 ),
        .SC_9            ( 0 ),
        .SC_10           ( 0 ),
        .SC_11           ( 0 ),
        .SC_12           ( 0 ),
        .SC_13           ( 0 ),
        .SC_14           ( 0 ),
        .SC_15           ( 0 ),
        .UPR_NIBBLE_POSN ( 3 ) )
CoreAPB3_0(
        // Inputs
        .PRESETN    ( GND_net ), // tied to 1'b0 from definition
        .PCLK       ( GND_net ), // tied to 1'b0 from definition
        .PWRITE     ( COREABC_0_APB3master_PWRITE ),
        .PENABLE    ( COREABC_0_APB3master_PENABLE ),
        .PSEL       ( COREABC_0_APB3master_PSELx ),
        .PREADYS0   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS0  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS1   ( CoreAPB3_0_APBmslave1_PREADY ),
        .PSLVERRS1  ( CoreAPB3_0_APBmslave1_PSLVERR ),
        .PREADYS2   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS2  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS3   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS3  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS4   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS4  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS5   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS5  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS6   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS6  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS7   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS7  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS8   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS8  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS9   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS9  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS10  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS10 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS11  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS11 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS12  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS12 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS13  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS13 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS14  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS14 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS15  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS15 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS16  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS16 ( GND_net ), // tied to 1'b0 from definition
        .PADDR      ( COREABC_0_APB3master_PADDR_0 ),
        .PWDATA     ( COREABC_0_APB3master_PWDATA_0 ),
        .PRDATAS0   ( CoreAPB3_0_APBmslave0_PRDATA ),
        .PRDATAS1   ( CoreAPB3_0_APBmslave1_PRDATA_0 ),
        .PRDATAS2   ( PRDATAS2_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS3   ( PRDATAS3_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS4   ( PRDATAS4_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS5   ( PRDATAS5_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS6   ( PRDATAS6_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS7   ( PRDATAS7_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS8   ( PRDATAS8_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS9   ( PRDATAS9_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS10  ( PRDATAS10_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS11  ( PRDATAS11_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS12  ( PRDATAS12_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS13  ( PRDATAS13_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS14  ( PRDATAS14_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS15  ( PRDATAS15_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS16  ( PRDATAS16_const_net_0 ), // tied to 32'h00000000 from definition
        .IADDR      ( IADDR_const_net_0 ), // tied to 32'h00000000 from definition
        // Outputs
        .PREADY     ( COREABC_0_APB3master_PREADY ),
        .PSLVERR    ( COREABC_0_APB3master_PSLVERR ),
        .PWRITES    ( CoreAPB3_0_APBmslave0_PWRITE ),
        .PENABLES   ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PSELS0     ( CoreAPB3_0_APBmslave0_PSELx ),
        .PSELS1     ( CoreAPB3_0_APBmslave1_PSELx ),
        .PSELS2     (  ),
        .PSELS3     (  ),
        .PSELS4     (  ),
        .PSELS5     (  ),
        .PSELS6     (  ),
        .PSELS7     (  ),
        .PSELS8     (  ),
        .PSELS9     (  ),
        .PSELS10    (  ),
        .PSELS11    (  ),
        .PSELS12    (  ),
        .PSELS13    (  ),
        .PSELS14    (  ),
        .PSELS15    (  ),
        .PSELS16    (  ),
        .PRDATA     ( COREABC_0_APB3master_PRDATA ),
        .PADDRS     ( CoreAPB3_0_APBmslave0_PADDR ),
        .PWDATAS    ( CoreAPB3_0_APBmslave0_PWDATA ) 
        );

//--------CoreTimer   -   Actel:DirectCore:CoreTimer:2.0.103
CoreTimer #( 
        .FAMILY     ( 15 ),
        .INTACTIVEH ( 0 ),
        .WIDTH      ( 32 ) )
CoreTimer_0(
        // Inputs
        .PCLK    ( SYSCLK ),
        .PRESETn ( COREABC_0_PRESETN ),
        .PSEL    ( CoreAPB3_0_APBmslave0_PSELx ),
        .PWRITE  ( CoreAPB3_0_APBmslave0_PWRITE ),
        .PENABLE ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PADDR   ( CoreAPB3_0_APBmslave0_PADDR_0 ),
        .PWDATA  ( CoreAPB3_0_APBmslave0_PWDATA ),
        // Outputs
        .TIMINT  ( CoreTimer_0_TIMINT ),
        .PRDATA  ( CoreAPB3_0_APBmslave0_PRDATA ) 
        );

//--------Minimal_SoC_CoreUARTapb_0_CoreUARTapb   -   Actel:DirectCore:CoreUARTapb:5.7.100
Minimal_SoC_CoreUARTapb_0_CoreUARTapb #( 
        .BAUD_VAL_FRCTN    ( 0 ),
        .BAUD_VAL_FRCTN_EN ( 0 ),
        .BAUD_VALUE        ( 1 ),
        .FAMILY            ( 15 ),
        .FIXEDMODE         ( 1 ),
        .PRG_BIT8          ( 0 ),
        .PRG_PARITY        ( 0 ),
        .RX_FIFO           ( 1 ),
        .RX_LEGACY_MODE    ( 0 ),
        .TX_FIFO           ( 1 ) )
CoreUARTapb_0(
        // Inputs
        .PCLK        ( SYSCLK ),
        .PRESETN     ( COREABC_0_PRESETN ),
        .PSEL        ( CoreAPB3_0_APBmslave1_PSELx ),
        .PENABLE     ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PWRITE      ( CoreAPB3_0_APBmslave0_PWRITE ),
        .RX          ( RX ),
        .PADDR       ( CoreAPB3_0_APBmslave0_PADDR_1 ),
        .PWDATA      ( CoreAPB3_0_APBmslave0_PWDATA_0 ),
        // Outputs
        .TXRDY       ( TXRDY_net_0 ),
        .RXRDY       ( RXRDY_net_0 ),
        .PARITY_ERR  ( PARITY_ERR_net_0 ),
        .OVERFLOW    ( OVERFLOW_net_0 ),
        .TX          ( TX_net_0 ),
        .PREADY      ( CoreAPB3_0_APBmslave1_PREADY ),
        .PSLVERR     ( CoreAPB3_0_APBmslave1_PSLVERR ),
        .FRAMING_ERR ( FRAMING_ERR_net_0 ),
        .PRDATA      ( CoreAPB3_0_APBmslave1_PRDATA ) 
        );


endmodule
