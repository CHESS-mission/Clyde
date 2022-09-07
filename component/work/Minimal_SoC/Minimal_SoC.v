//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Wed Sep 07 19:00:13 2022
// Version: v11.9 11.9.0.4
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// Minimal_SoC
module Minimal_SoC(
    // Inputs
    NSYSRESET,
    Power_Down,
    RX,
    SCL_MCU,
    SPISDI,
    SYSCLK,
    // Outputs
    SCL_Sensor,
    SPISCLKO,
    SPISDO,
    SPISS,
    TX,
    // Inouts
    SDA_MCU,
    SDA_Sensors
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  NSYSRESET;
input  Power_Down;
input  RX;
input  SCL_MCU;
input  SPISDI;
input  SYSCLK;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output SCL_Sensor;
output SPISCLKO;
output SPISDO;
output SPISS;
output TX;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout  SDA_MCU;
inout  SDA_Sensors;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          BIBUF_0_Y;
wire          BIBUF_1_Y;
wire          COREABC_0_APB3master_PENABLE;
wire          COREABC_0_APB3master_PREADY;
wire          COREABC_0_APB3master_PSELx;
wire          COREABC_0_APB3master_PSLVERR;
wire          COREABC_0_APB3master_PWRITE;
wire          COREABC_0_PRESETN_0;
wire          CoreAPB3_0_APBmslave0_PENABLE;
wire   [31:0] CoreAPB3_0_APBmslave0_PRDATA;
wire          CoreAPB3_0_APBmslave0_PSELx;
wire          CoreAPB3_0_APBmslave0_PWRITE;
wire          CoreAPB3_0_APBmslave1_PREADY;
wire          CoreAPB3_0_APBmslave1_PSELx;
wire          CoreAPB3_0_APBmslave1_PSLVERR;
wire          CoreAPB3_0_APBmslave2_PREADY;
wire          CoreAPB3_0_APBmslave2_PSELx;
wire          CoreAPB3_0_APBmslave2_PSLVERR;
wire          CoreAPB3_0_APBmslave3_PREADY;
wire          CoreAPB3_0_APBmslave3_PSELx;
wire          CoreAPB3_0_APBmslave3_PSLVERR;
wire          CORESPI_0_SPIINT;
wire          CoreUARTapb_0_TXRDY;
wire          INT;
wire          Minimal_SoC_with_PLL_0_GLA_0;
wire          NSYSRESET;
wire          SDA_Sensors;
wire          Power_Down;
wire          RX;
wire          RXRDY;
wire          SCL_MCU;
wire          SDA_MCU;
wire          SPISCLKO_net_0;
wire          SPISDI;
wire          SPISDO_net_0;
wire   [7:0]  SPISS_net_0;
wire   [0:0]  SPISS_0;
wire          SYSCLK;
wire          TIMINT;
wire          TX_net_0;
wire          TX_net_1;
wire          SPISCLKO_net_1;
wire          SPISDO_net_1;
wire          SCL_Sensor_net_0;
wire          SPISS_0_net_0;
wire   [1:1]  SPISS_slice_0;
wire   [2:2]  SPISS_slice_1;
wire   [3:3]  SPISS_slice_2;
wire   [4:4]  SPISS_slice_3;
wire   [5:5]  SPISS_slice_4;
wire   [6:6]  SPISS_slice_5;
wire   [7:7]  SPISS_slice_6;
wire   [3:0]  IO_IN_net_0;
wire   [2:0]  Data_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          VCC_net;
wire          GND_net;
wire   [15:0] INITADDR_const_net_0;
wire   [8:0]  INITDATA_const_net_0;
wire   [11:0] PADDR_S_const_net_0;
wire   [15:0] PWDATA_S_const_net_0;
wire   [31:0] IADDR_const_net_0;
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
// Inverted Nets
//--------------------------------------------------------------------
wire   [1:1]  Data_IN_POST_INV0_0;
wire          E_IN_POST_INV1_0;
wire          E_IN_POST_INV2_0;
wire   [1:1]  IO_IN_IN_POST_INV3_0;
//--------------------------------------------------------------------
// Bus Interface Nets Declarations - Unequal Pin Widths
//--------------------------------------------------------------------
wire   [31:20]COREABC_0_APB3master_PADDR_0_31to20;
wire   [19:0] COREABC_0_APB3master_PADDR_0_19to0;
wire   [31:0] COREABC_0_APB3master_PADDR_0;
wire   [19:0] COREABC_0_APB3master_PADDR;
wire   [31:0] COREABC_0_APB3master_PRDATA;
wire   [15:0] COREABC_0_APB3master_PRDATA_0_15to0;
wire   [15:0] COREABC_0_APB3master_PRDATA_0;
wire   [31:16]COREABC_0_APB3master_PWDATA_0_31to16;
wire   [15:0] COREABC_0_APB3master_PWDATA_0_15to0;
wire   [31:0] COREABC_0_APB3master_PWDATA_0;
wire   [15:0] COREABC_0_APB3master_PWDATA;
wire   [31:0] CoreAPB3_0_APBmslave0_PADDR;
wire   [4:0]  CoreAPB3_0_APBmslave0_PADDR_1_4to0;
wire   [4:0]  CoreAPB3_0_APBmslave0_PADDR_1;
wire   [16:0] CoreAPB3_0_APBmslave0_PADDR_3_16to0;
wire   [16:0] CoreAPB3_0_APBmslave0_PADDR_3;
wire   [6:0]  CoreAPB3_0_APBmslave0_PADDR_2_6to0;
wire   [6:0]  CoreAPB3_0_APBmslave0_PADDR_2;
wire   [4:2]  CoreAPB3_0_APBmslave0_PADDR_0_4to2;
wire   [4:2]  CoreAPB3_0_APBmslave0_PADDR_0;
wire   [31:0] CoreAPB3_0_APBmslave0_PWDATA;
wire   [7:0]  CoreAPB3_0_APBmslave0_PWDATA_0_7to0;
wire   [7:0]  CoreAPB3_0_APBmslave0_PWDATA_0;
wire   [15:0] CoreAPB3_0_APBmslave0_PWDATA_2_15to0;
wire   [15:0] CoreAPB3_0_APBmslave0_PWDATA_2;
wire   [15:0] CoreAPB3_0_APBmslave0_PWDATA_1_15to0;
wire   [15:0] CoreAPB3_0_APBmslave0_PWDATA_1;
wire   [31:8] CoreAPB3_0_APBmslave1_PRDATA_0_31to8;
wire   [7:0]  CoreAPB3_0_APBmslave1_PRDATA_0_7to0;
wire   [31:0] CoreAPB3_0_APBmslave1_PRDATA_0;
wire   [7:0]  CoreAPB3_0_APBmslave1_PRDATA;
wire   [31:16]CoreAPB3_0_APBmslave2_PRDATA_0_31to16;
wire   [15:0] CoreAPB3_0_APBmslave2_PRDATA_0_15to0;
wire   [31:0] CoreAPB3_0_APBmslave2_PRDATA_0;
wire   [15:0] CoreAPB3_0_APBmslave2_PRDATA;
wire   [31:16]CoreAPB3_0_APBmslave3_PRDATA_0_31to16;
wire   [15:0] CoreAPB3_0_APBmslave3_PRDATA_0_15to0;
wire   [31:0] CoreAPB3_0_APBmslave3_PRDATA_0;
wire   [15:0] CoreAPB3_0_APBmslave3_PRDATA;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net               = 1'b1;
assign GND_net               = 1'b0;
assign INITADDR_const_net_0  = 16'h0000;
assign INITDATA_const_net_0  = 9'h000;
assign PADDR_S_const_net_0   = 12'h000;
assign PWDATA_S_const_net_0  = 16'h0000;
assign IADDR_const_net_0     = 32'h00000000;
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
// Inversions
//--------------------------------------------------------------------
assign Data_IN_POST_INV0_0[1]  = ~ RXRDY;
assign E_IN_POST_INV1_0        = ~ BIBUF_1_Y;
assign E_IN_POST_INV2_0        = ~ BIBUF_0_Y;
assign IO_IN_IN_POST_INV3_0[1] = ~ RXRDY;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign TX_net_1         = TX_net_0;
assign TX               = TX_net_1;
assign SPISCLKO_net_1   = SPISCLKO_net_0;
assign SPISCLKO         = SPISCLKO_net_1;
assign SPISDO_net_1     = SPISDO_net_0;
assign SPISDO           = SPISDO_net_1;
assign SCL_Sensor_net_0 = SCL_MCU;
assign SCL_Sensor       = SCL_Sensor_net_0;
assign SPISS_0_net_0    = SPISS_0[0];
assign SPISS            = SPISS_0_net_0;
//--------------------------------------------------------------------
// Slices assignments
//--------------------------------------------------------------------
assign SPISS_0[0]       = SPISS_net_0[0:0];
assign SPISS_slice_0[1] = SPISS_net_0[1:1];
assign SPISS_slice_1[2] = SPISS_net_0[2:2];
assign SPISS_slice_2[3] = SPISS_net_0[3:3];
assign SPISS_slice_3[4] = SPISS_net_0[4:4];
assign SPISS_slice_4[5] = SPISS_net_0[5:5];
assign SPISS_slice_5[6] = SPISS_net_0[6:6];
assign SPISS_slice_6[7] = SPISS_net_0[7:7];
//--------------------------------------------------------------------
// Concatenation assignments
//--------------------------------------------------------------------
assign IO_IN_net_0 = { 1'b0 , TIMINT , IO_IN_IN_POST_INV3_0[1] , CoreUARTapb_0_TXRDY };
assign Data_net_0  = { TIMINT , Data_IN_POST_INV0_0[1] , 1'b1 };
//--------------------------------------------------------------------
// Bus Interface Nets Assignments - Unequal Pin Widths
//--------------------------------------------------------------------
assign COREABC_0_APB3master_PADDR_0_31to20 = 12'h0;
assign COREABC_0_APB3master_PADDR_0_19to0 = COREABC_0_APB3master_PADDR[19:0];
assign COREABC_0_APB3master_PADDR_0 = { COREABC_0_APB3master_PADDR_0_31to20, COREABC_0_APB3master_PADDR_0_19to0 };

assign COREABC_0_APB3master_PRDATA_0_15to0 = COREABC_0_APB3master_PRDATA[15:0];
assign COREABC_0_APB3master_PRDATA_0 = { COREABC_0_APB3master_PRDATA_0_15to0 };

assign COREABC_0_APB3master_PWDATA_0_31to16 = 16'h0;
assign COREABC_0_APB3master_PWDATA_0_15to0 = COREABC_0_APB3master_PWDATA[15:0];
assign COREABC_0_APB3master_PWDATA_0 = { COREABC_0_APB3master_PWDATA_0_31to16, COREABC_0_APB3master_PWDATA_0_15to0 };

assign CoreAPB3_0_APBmslave0_PADDR_1_4to0 = CoreAPB3_0_APBmslave0_PADDR[4:0];
assign CoreAPB3_0_APBmslave0_PADDR_1 = { CoreAPB3_0_APBmslave0_PADDR_1_4to0 };
assign CoreAPB3_0_APBmslave0_PADDR_3_16to0 = CoreAPB3_0_APBmslave0_PADDR[16:0];
assign CoreAPB3_0_APBmslave0_PADDR_3 = { CoreAPB3_0_APBmslave0_PADDR_3_16to0 };
assign CoreAPB3_0_APBmslave0_PADDR_2_6to0 = CoreAPB3_0_APBmslave0_PADDR[6:0];
assign CoreAPB3_0_APBmslave0_PADDR_2 = { CoreAPB3_0_APBmslave0_PADDR_2_6to0 };
assign CoreAPB3_0_APBmslave0_PADDR_0_4to2 = CoreAPB3_0_APBmslave0_PADDR[4:2];
assign CoreAPB3_0_APBmslave0_PADDR_0 = { CoreAPB3_0_APBmslave0_PADDR_0_4to2 };

assign CoreAPB3_0_APBmslave0_PWDATA_0_7to0 = CoreAPB3_0_APBmslave0_PWDATA[7:0];
assign CoreAPB3_0_APBmslave0_PWDATA_0 = { CoreAPB3_0_APBmslave0_PWDATA_0_7to0 };
assign CoreAPB3_0_APBmslave0_PWDATA_2_15to0 = CoreAPB3_0_APBmslave0_PWDATA[15:0];
assign CoreAPB3_0_APBmslave0_PWDATA_2 = { CoreAPB3_0_APBmslave0_PWDATA_2_15to0 };
assign CoreAPB3_0_APBmslave0_PWDATA_1_15to0 = CoreAPB3_0_APBmslave0_PWDATA[15:0];
assign CoreAPB3_0_APBmslave0_PWDATA_1 = { CoreAPB3_0_APBmslave0_PWDATA_1_15to0 };

assign CoreAPB3_0_APBmslave1_PRDATA_0_31to8 = 24'h0;
assign CoreAPB3_0_APBmslave1_PRDATA_0_7to0 = CoreAPB3_0_APBmslave1_PRDATA[7:0];
assign CoreAPB3_0_APBmslave1_PRDATA_0 = { CoreAPB3_0_APBmslave1_PRDATA_0_31to8, CoreAPB3_0_APBmslave1_PRDATA_0_7to0 };

assign CoreAPB3_0_APBmslave2_PRDATA_0_31to16 = 16'h0;
assign CoreAPB3_0_APBmslave2_PRDATA_0_15to0 = CoreAPB3_0_APBmslave2_PRDATA[15:0];
assign CoreAPB3_0_APBmslave2_PRDATA_0 = { CoreAPB3_0_APBmslave2_PRDATA_0_31to16, CoreAPB3_0_APBmslave2_PRDATA_0_15to0 };

assign CoreAPB3_0_APBmslave3_PRDATA_0_31to16 = 16'h0;
assign CoreAPB3_0_APBmslave3_PRDATA_0_15to0 = CoreAPB3_0_APBmslave3_PRDATA[15:0];
assign CoreAPB3_0_APBmslave3_PRDATA_0 = { CoreAPB3_0_APBmslave3_PRDATA_0_31to16, CoreAPB3_0_APBmslave3_PRDATA_0_15to0 };

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------AND3_core
AND3_core AND3_core_0(
        // Inputs
        .Data   ( Data_net_0 ),
        // Outputs
        .Result ( INT ) 
        );

//--------BIBUF
BIBUF BIBUF_0(
        // Inputs
        .D   ( BIBUF_1_Y ),
        .E   ( E_IN_POST_INV1_0 ),
        // Outputs
        .Y   ( BIBUF_0_Y ),
        // Inouts
        .PAD ( SDA_MCU ) 
        );

//--------BIBUF
BIBUF BIBUF_1(
        // Inputs
        .D   ( BIBUF_0_Y ),
        .E   ( E_IN_POST_INV2_0 ),
        // Outputs
        .Y   ( BIBUF_1_Y ),
        // Inouts
        .PAD ( SDA_Sensors ) 
        );

//--------Minimal_SoC_COREABC_0_COREABC   -   Actel:DirectCore:COREABC:3.8.102
Minimal_SoC_COREABC_0_COREABC #( 
        .ACT_CALIBRATIONDATA ( 1 ),
        .APB_AWIDTH          ( 12 ),
        .APB_DWIDTH          ( 16 ),
        .APB_SDEPTH          ( 7 ),
        .DEBUG               ( 1 ),
        .EN_ACM              ( 1 ),
        .EN_ADD              ( 1 ),
        .EN_ALURAM           ( 1 ),
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
        .IIWIDTH             ( 4 ),
        .IMEM_APB_ACCESS     ( 0 ),
        .INITWIDTH           ( 16 ),
        .INSMODE             ( 0 ),
        .IOWIDTH             ( 1 ),
        .ISRADDR             ( 1 ),
        .MAX_NVMDWIDTH       ( 32 ),
        .STWIDTH             ( 8 ),
        .TESTMODE            ( 0 ),
        .UNIQ_STRING_LENGTH  ( 21 ),
        .ZRWIDTH             ( 16 ) )
COREABC_0(
        // Inputs
        .INITDATVAL ( GND_net ), // tied to 1'b0 from definition
        .INITDONE   ( VCC_net ), // tied to 1'b1 from definition
        .INTREQ     ( INT ),
        .NSYSRESET  ( NSYSRESET ),
        .PCLK       ( Minimal_SoC_with_PLL_0_GLA_0 ),
        .PREADY_M   ( COREABC_0_APB3master_PREADY ),
        .PSLVERR_M  ( COREABC_0_APB3master_PSLVERR ),
        .PSEL_S     ( GND_net ), // tied to 1'b0 from definition
        .PENABLE_S  ( GND_net ), // tied to 1'b0 from definition
        .PWRITE_S   ( GND_net ), // tied to 1'b0 from definition
        .INITADDR   ( INITADDR_const_net_0 ), // tied to 16'h0000 from definition
        .INITDATA   ( INITDATA_const_net_0 ), // tied to 9'h000 from definition
        .IO_IN      ( IO_IN_net_0 ),
        .PRDATA_M   ( COREABC_0_APB3master_PRDATA_0 ),
        .PADDR_S    ( PADDR_S_const_net_0 ), // tied to 12'h000 from definition
        .PWDATA_S   ( PWDATA_S_const_net_0 ), // tied to 16'h0000 from definition
        // Outputs
        .INTACT     (  ),
        .PRESETN    ( COREABC_0_PRESETN_0 ),
        .PENABLE_M  ( COREABC_0_APB3master_PENABLE ),
        .PSEL_M     ( COREABC_0_APB3master_PSELx ),
        .PWRITE_M   ( COREABC_0_APB3master_PWRITE ),
        .PREADY_S   (  ),
        .PSLVERR_S  (  ),
        .IO_OUT     (  ),
        .PADDR_M    ( COREABC_0_APB3master_PADDR ),
        .PWDATA_M   ( COREABC_0_APB3master_PWDATA ),
        .PRDATA_S   (  ) 
        );

//--------CoreAPB3   -   Actel:DirectCore:CoreAPB3:4.2.100
CoreAPB3 #( 
        .APB_DWIDTH      ( 16 ),
        .APBSLOT0ENABLE  ( 1 ),
        .APBSLOT1ENABLE  ( 1 ),
        .APBSLOT2ENABLE  ( 1 ),
        .APBSLOT3ENABLE  ( 1 ),
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
        .PREADYS2   ( CoreAPB3_0_APBmslave2_PREADY ),
        .PSLVERRS2  ( CoreAPB3_0_APBmslave2_PSLVERR ),
        .PREADYS3   ( CoreAPB3_0_APBmslave3_PREADY ),
        .PSLVERRS3  ( CoreAPB3_0_APBmslave3_PSLVERR ),
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
        .PRDATAS2   ( CoreAPB3_0_APBmslave2_PRDATA_0 ),
        .PRDATAS3   ( CoreAPB3_0_APBmslave3_PRDATA_0 ),
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
        .PSELS2     ( CoreAPB3_0_APBmslave2_PSELx ),
        .PSELS3     ( CoreAPB3_0_APBmslave3_PSELx ),
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

//--------COREAPBSRAM   -   Actel:DirectCore:COREAPBSRAM:2.0.102
COREAPBSRAM #( 
        .ADDR_SCHEME            ( 1 ),
        .APB_DWIDTH             ( 16 ),
        .FAMILY                 ( 15 ),
        .NUM_LOCATIONS_DWIDTH08 ( 1024 ),
        .NUM_LOCATIONS_DWIDTH16 ( 512 ),
        .NUM_LOCATIONS_DWIDTH24 ( 512 ),
        .NUM_LOCATIONS_DWIDTH32 ( 512 ) )
COREAPBSRAM_0(
        // Inputs
        .PENABLE ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PSEL    ( CoreAPB3_0_APBmslave3_PSELx ),
        .PWRITE  ( CoreAPB3_0_APBmslave0_PWRITE ),
        .PCLK    ( Minimal_SoC_with_PLL_0_GLA_0 ),
        .PRESETN ( COREABC_0_PRESETN_0 ),
        .PADDR   ( CoreAPB3_0_APBmslave0_PADDR_3 ),
        .PWDATA  ( CoreAPB3_0_APBmslave0_PWDATA_2 ),
        // Outputs
        .PREADY  ( CoreAPB3_0_APBmslave3_PREADY ),
        .PSLVERR ( CoreAPB3_0_APBmslave3_PSLVERR ),
        .PRDATA  ( CoreAPB3_0_APBmslave3_PRDATA ) 
        );

//--------CORESPI   -   Actel:DirectCore:CORESPI:5.2.104
CORESPI #( 
        .APB_DWIDTH        ( 16 ),
        .CFG_CLK           ( 7 ),
        .CFG_FIFO_DEPTH    ( 4 ),
        .CFG_FRAME_SIZE    ( 4 ),
        .CFG_MODE          ( 0 ),
        .CFG_MOT_MODE      ( 3 ),
        .CFG_MOT_SSEL      ( 0 ),
        .CFG_NSC_OPERATION ( 0 ),
        .CFG_TI_JMB_FRAMES ( 0 ),
        .CFG_TI_NSC_CUSTOM ( 1 ),
        .CFG_TI_NSC_FRC    ( 0 ) )
CORESPI_0(
        // Inputs
        .PCLK       ( Minimal_SoC_with_PLL_0_GLA_0 ),
        .PRESETN    ( COREABC_0_PRESETN_0 ),
        .PSEL       ( CoreAPB3_0_APBmslave2_PSELx ),
        .PENABLE    ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PWRITE     ( CoreAPB3_0_APBmslave0_PWRITE ),
        .SPISSI     ( VCC_net ),
        .SPISDI     ( SPISDI ),
        .SPICLKI    ( GND_net ),
        .PADDR      ( CoreAPB3_0_APBmslave0_PADDR_2 ),
        .PWDATA     ( CoreAPB3_0_APBmslave0_PWDATA_1 ),
        // Outputs
        .PREADY     ( CoreAPB3_0_APBmslave2_PREADY ),
        .PSLVERR    ( CoreAPB3_0_APBmslave2_PSLVERR ),
        .SPIINT     ( CORESPI_0_SPIINT ),
        .SPIRXAVAIL (  ),
        .SPITXRFM   (  ),
        .SPISCLKO   ( SPISCLKO_net_0 ),
        .SPIOEN     (  ),
        .SPISDO     ( SPISDO_net_0 ),
        .SPIMODE    (  ),
        .PRDATA     ( CoreAPB3_0_APBmslave2_PRDATA ),
        .SPISS      ( SPISS_net_0 ) 
        );

//--------CoreTimer   -   Actel:DirectCore:CoreTimer:2.0.103
CoreTimer #( 
        .FAMILY     ( 15 ),
        .INTACTIVEH ( 0 ),
        .WIDTH      ( 32 ) )
CoreTimer_0(
        // Inputs
        .PCLK    ( Minimal_SoC_with_PLL_0_GLA_0 ),
        .PRESETn ( COREABC_0_PRESETN_0 ),
        .PSEL    ( CoreAPB3_0_APBmslave0_PSELx ),
        .PWRITE  ( CoreAPB3_0_APBmslave0_PWRITE ),
        .PENABLE ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PADDR   ( CoreAPB3_0_APBmslave0_PADDR_0 ),
        .PWDATA  ( CoreAPB3_0_APBmslave0_PWDATA ),
        // Outputs
        .TIMINT  ( TIMINT ),
        .PRDATA  ( CoreAPB3_0_APBmslave0_PRDATA ) 
        );

//--------Minimal_SoC_CoreUARTapb_0_CoreUARTapb   -   Actel:DirectCore:CoreUARTapb:5.7.100
Minimal_SoC_CoreUARTapb_0_CoreUARTapb #( 
        .BAUD_VAL_FRCTN    ( 0 ),
        .BAUD_VAL_FRCTN_EN ( 1 ),
        .BAUD_VALUE        ( 1 ),
        .FAMILY            ( 15 ),
        .FIXEDMODE         ( 0 ),
        .PRG_BIT8          ( 0 ),
        .PRG_PARITY        ( 0 ),
        .RX_FIFO           ( 1 ),
        .RX_LEGACY_MODE    ( 0 ),
        .TX_FIFO           ( 1 ) )
CoreUARTapb_0(
        // Inputs
        .PCLK        ( Minimal_SoC_with_PLL_0_GLA_0 ),
        .PRESETN     ( COREABC_0_PRESETN_0 ),
        .PSEL        ( CoreAPB3_0_APBmslave1_PSELx ),
        .PENABLE     ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PWRITE      ( CoreAPB3_0_APBmslave0_PWRITE ),
        .RX          ( RX ),
        .PADDR       ( CoreAPB3_0_APBmslave0_PADDR_1 ),
        .PWDATA      ( CoreAPB3_0_APBmslave0_PWDATA_0 ),
        // Outputs
        .TXRDY       ( CoreUARTapb_0_TXRDY ),
        .RXRDY       ( RXRDY ),
        .PARITY_ERR  (  ),
        .OVERFLOW    (  ),
        .TX          ( TX_net_0 ),
        .PREADY      ( CoreAPB3_0_APBmslave1_PREADY ),
        .PSLVERR     ( CoreAPB3_0_APBmslave1_PSLVERR ),
        .FRAMING_ERR (  ),
        .PRDATA      ( CoreAPB3_0_APBmslave1_PRDATA ) 
        );

//--------Minimal_SoC_with_PLL
Minimal_SoC_with_PLL Minimal_SoC_with_PLL_0(
        // Inputs
        .POWERDOWN ( Power_Down ),
        .CLKA      ( SYSCLK ),
        // Outputs
        .LOCK      (  ),
        .GLA       ( Minimal_SoC_with_PLL_0_GLA_0 ) 
        );


endmodule
