//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Sun Jul 17 20:19:38 2022
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
    SRAM_ADDRESS,
    SRAM_CE,
    SRAM_LB,
    SRAM_OE,
    SRAM_UB,
    SRAM_WE,
    TX,
    // Inouts
    SDA_MCU,
    SDA_Sensors,
    SRAM_DATA
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         NSYSRESET;
input         Power_Down;
input         RX;
input         SCL_MCU;
input         SPISDI;
input         SYSCLK;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output        SCL_Sensor;
output        SPISCLKO;
output        SPISDO;
output        SPISS;
output [19:0] SRAM_ADDRESS;
output        SRAM_CE;
output        SRAM_LB;
output        SRAM_OE;
output        SRAM_UB;
output        SRAM_WE;
output        TX;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout         SDA_MCU;
inout         SDA_Sensors;
inout  [15:0] SRAM_DATA;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire           APB_GPIO_0_PENABLE;
wire           APB_GPIO_0_PREADY;
wire           APB_GPIO_0_PSELx;
wire           APB_GPIO_0_PSLVERR;
wire           APB_GPIO_0_PWRITE;
wire           BIBUF_0_Y;
wire           BIBUF_1_Y;
wire           COREABC_0_APB3master_PENABLE;
wire           COREABC_0_APB3master_PREADY;
wire           COREABC_0_APB3master_PSELx;
wire           COREABC_0_APB3master_PSLVERR;
wire           COREABC_0_APB3master_PWRITE;
wire           COREABC_0_PRESETN_0;
wire   [31:0]  CoreAPB3_0_APBmslave0_PRDATA;
wire           CoreAPB3_0_APBmslave0_PSELx;
wire           CoreAPB3_0_APBmslave1_PREADY;
wire           CoreAPB3_0_APBmslave1_PSELx;
wire           CoreAPB3_0_APBmslave1_PSLVERR;
wire           CoreAPB3_0_APBmslave2_PREADY;
wire           CoreAPB3_0_APBmslave2_PSELx;
wire           CoreAPB3_0_APBmslave2_PSLVERR;
wire           CoreAPB3_0_APBmslave3_PREADY;
wire           CoreAPB3_0_APBmslave3_PSELx;
wire           CoreAPB3_0_APBmslave3_PSLVERR;
wire   [31:0]  CoreAPB3_0_APBmslave4_PRDATA;
wire           CoreAPB3_0_APBmslave4_PSELx;
wire           CoreAPB3_0_APBmslave6_PREADY;
wire           CoreAPB3_0_APBmslave6_PSELx;
wire           CoreAPB3_0_APBmslave6_PSLVERR;
wire   [15:0]  CoreGPIO_0_GPIO_OE;
wire           CORESPI_0_SPIINT;
wire           CoreUARTapb_0_RXRDY;
wire           CoreUARTapb_0_TXRDY;
wire   [15:0]  GPIO_OUT;
wire           Interrupt;
wire           Minimal_SoC_with_PLL_0_GLA_0;
wire           NSYSRESET;
wire           OR_15bit_0_Result;
wire           SDA_Sensors;
wire   [19:0]  PAD_1;
wire           Power_Down;
wire           RX;
wire           SCL_MCU;
wire           SDA_MCU;
wire           SPISCLKO_net_0;
wire           SPISDI;
wire           SPISDO_net_0;
wire   [7:0]   SPISS_net_0;
wire   [0:0]   SPISS_0;
wire   [19:0]  SRAM_ADDRESS_net_0;
wire   [20:20] SRAM_CE_net_0;
wire   [15:0]  SRAM_DATA;
wire   [15:0]  SRAM_DATA_IO_0_Y;
wire   [23:23] SRAM_LB_net_0;
wire   [21:21] SRAM_OE_net_0;
wire   [24:24] SRAM_UB_net_0;
wire   [22:22] SRAM_WE_net_0;
wire           SYSCLK;
wire           TX_net_0;
wire           TX_net_1;
wire           SPISCLKO_net_1;
wire           SPISDO_net_1;
wire           SCL_Sensor_net_0;
wire           SPISS_0_net_0;
wire   [19:0]  PAD_1_net_0;
wire           SRAM_CE_net_1;
wire           SRAM_WE_net_1;
wire           SRAM_LB_net_1;
wire           SRAM_OE_net_1;
wire           SRAM_UB_net_1;
wire   [1:1]   SPISS_slice_0;
wire   [2:2]   SPISS_slice_1;
wire   [3:3]   SPISS_slice_2;
wire   [4:4]   SPISS_slice_3;
wire   [5:5]   SPISS_slice_4;
wire   [6:6]   SPISS_slice_5;
wire   [7:7]   SPISS_slice_6;
wire   [24:0]  GPIO_OUT_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire           VCC_net;
wire   [24:0]  GPIO_IN_const_net_0;
wire           GND_net;
wire   [15:0]  INITADDR_const_net_0;
wire   [8:0]   INITDATA_const_net_0;
wire   [11:0]  PADDR_S_const_net_0;
wire   [7:0]   PWDATA_S_const_net_0;
wire   [31:0]  IADDR_const_net_0;
wire   [31:0]  PRDATAS7_const_net_0;
wire   [31:0]  PRDATAS8_const_net_0;
wire   [31:0]  PRDATAS9_const_net_0;
wire   [31:0]  PRDATAS10_const_net_0;
wire   [31:0]  PRDATAS11_const_net_0;
wire   [31:0]  PRDATAS12_const_net_0;
wire   [31:0]  PRDATAS13_const_net_0;
wire   [31:0]  PRDATAS14_const_net_0;
wire   [31:0]  PRDATAS15_const_net_0;
wire   [31:0]  PRDATAS16_const_net_0;
//--------------------------------------------------------------------
// Bus Interface Nets Declarations - Unequal Pin Widths
//--------------------------------------------------------------------
wire   [5:2]   APB_GPIO_0_PADDR_5_5to2;
wire   [5:2]   APB_GPIO_0_PADDR_5;
wire   [31:0]  APB_GPIO_0_PADDR;
wire   [6:0]   APB_GPIO_0_PADDR_3_6to0;
wire   [6:0]   APB_GPIO_0_PADDR_3;
wire   [4:2]   APB_GPIO_0_PADDR_1_4to2;
wire   [4:2]   APB_GPIO_0_PADDR_1;
wire   [4:0]   APB_GPIO_0_PADDR_2_4to0;
wire   [4:0]   APB_GPIO_0_PADDR_2;
wire   [7:0]   APB_GPIO_0_PADDR_0_7to0;
wire   [7:0]   APB_GPIO_0_PADDR_0;
wire   [16:0]  APB_GPIO_0_PADDR_4_16to0;
wire   [16:0]  APB_GPIO_0_PADDR_4;
wire   [7:0]   APB_GPIO_0_PADDR_6_7to0;
wire   [7:0]   APB_GPIO_0_PADDR_6;
wire   [31:8]  APB_GPIO_0_PRDATA_0_31to8;
wire   [7:0]   APB_GPIO_0_PRDATA_0_7to0;
wire   [31:0]  APB_GPIO_0_PRDATA_0;
wire   [7:0]   APB_GPIO_0_PRDATA;
wire   [31:0]  APB_GPIO_0_PWDATA;
wire   [7:0]   APB_GPIO_0_PWDATA_2_7to0;
wire   [7:0]   APB_GPIO_0_PWDATA_2;
wire   [7:0]   APB_GPIO_0_PWDATA_1_7to0;
wire   [7:0]   APB_GPIO_0_PWDATA_1;
wire   [7:0]   APB_GPIO_0_PWDATA_0_7to0;
wire   [7:0]   APB_GPIO_0_PWDATA_0;
wire   [7:0]   APB_GPIO_0_PWDATA_3_7to0;
wire   [7:0]   APB_GPIO_0_PWDATA_3;
wire   [7:0]   APB_GPIO_0_PWDATA_4_7to0;
wire   [7:0]   APB_GPIO_0_PWDATA_4;
wire   [31:20] COREABC_0_APB3master_PADDR_0_31to20;
wire   [19:0]  COREABC_0_APB3master_PADDR_0_19to0;
wire   [31:0]  COREABC_0_APB3master_PADDR_0;
wire   [19:0]  COREABC_0_APB3master_PADDR;
wire   [31:0]  COREABC_0_APB3master_PRDATA;
wire   [7:0]   COREABC_0_APB3master_PRDATA_0_7to0;
wire   [7:0]   COREABC_0_APB3master_PRDATA_0;
wire   [31:8]  COREABC_0_APB3master_PWDATA_0_31to8;
wire   [7:0]   COREABC_0_APB3master_PWDATA_0_7to0;
wire   [31:0]  COREABC_0_APB3master_PWDATA_0;
wire   [7:0]   COREABC_0_APB3master_PWDATA;
wire   [31:8]  CoreAPB3_0_APBmslave1_PRDATA_0_31to8;
wire   [7:0]   CoreAPB3_0_APBmslave1_PRDATA_0_7to0;
wire   [31:0]  CoreAPB3_0_APBmslave1_PRDATA_0;
wire   [7:0]   CoreAPB3_0_APBmslave1_PRDATA;
wire   [31:8]  CoreAPB3_0_APBmslave2_PRDATA_0_31to8;
wire   [7:0]   CoreAPB3_0_APBmslave2_PRDATA_0_7to0;
wire   [31:0]  CoreAPB3_0_APBmslave2_PRDATA_0;
wire   [7:0]   CoreAPB3_0_APBmslave2_PRDATA;
wire   [31:8]  CoreAPB3_0_APBmslave3_PRDATA_0_31to8;
wire   [7:0]   CoreAPB3_0_APBmslave3_PRDATA_0_7to0;
wire   [31:0]  CoreAPB3_0_APBmslave3_PRDATA_0;
wire   [7:0]   CoreAPB3_0_APBmslave3_PRDATA;
wire   [31:8]  CoreAPB3_0_APBmslave6_PRDATA_0_31to8;
wire   [7:0]   CoreAPB3_0_APBmslave6_PRDATA_0_7to0;
wire   [31:0]  CoreAPB3_0_APBmslave6_PRDATA_0;
wire   [7:0]   CoreAPB3_0_APBmslave6_PRDATA;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net               = 1'b1;
assign GPIO_IN_const_net_0   = 25'h0000000;
assign GND_net               = 1'b0;
assign INITADDR_const_net_0  = 16'h0000;
assign INITDATA_const_net_0  = 9'h000;
assign PADDR_S_const_net_0   = 12'h000;
assign PWDATA_S_const_net_0  = 8'h00;
assign IADDR_const_net_0     = 32'h00000000;
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
assign TX_net_1           = TX_net_0;
assign TX                 = TX_net_1;
assign SPISCLKO_net_1     = SPISCLKO_net_0;
assign SPISCLKO           = SPISCLKO_net_1;
assign SPISDO_net_1       = SPISDO_net_0;
assign SPISDO             = SPISDO_net_1;
assign SCL_Sensor_net_0   = SCL_MCU;
assign SCL_Sensor         = SCL_Sensor_net_0;
assign SPISS_0_net_0      = SPISS_0[0];
assign SPISS              = SPISS_0_net_0;
assign PAD_1_net_0        = PAD_1;
assign SRAM_ADDRESS[19:0] = PAD_1_net_0;
assign SRAM_CE_net_1      = SRAM_CE_net_0[20];
assign SRAM_CE            = SRAM_CE_net_1;
assign SRAM_WE_net_1      = SRAM_WE_net_0[22];
assign SRAM_WE            = SRAM_WE_net_1;
assign SRAM_LB_net_1      = SRAM_LB_net_0[23];
assign SRAM_LB            = SRAM_LB_net_1;
assign SRAM_OE_net_1      = SRAM_OE_net_0[21];
assign SRAM_OE            = SRAM_OE_net_1;
assign SRAM_UB_net_1      = SRAM_UB_net_0[24];
assign SRAM_UB            = SRAM_UB_net_1;
//--------------------------------------------------------------------
// Slices assignments
//--------------------------------------------------------------------
assign SPISS_0[0]         = SPISS_net_0[0:0];
assign SRAM_ADDRESS_net_0 = GPIO_OUT_net_0[19:0];
assign SRAM_CE_net_0[20]  = GPIO_OUT_net_0[20:20];
assign SRAM_LB_net_0[23]  = GPIO_OUT_net_0[23:23];
assign SRAM_OE_net_0[21]  = GPIO_OUT_net_0[21:21];
assign SRAM_UB_net_0[24]  = GPIO_OUT_net_0[24:24];
assign SRAM_WE_net_0[22]  = GPIO_OUT_net_0[22:22];
assign SPISS_slice_0[1]   = SPISS_net_0[1:1];
assign SPISS_slice_1[2]   = SPISS_net_0[2:2];
assign SPISS_slice_2[3]   = SPISS_net_0[3:3];
assign SPISS_slice_3[4]   = SPISS_net_0[4:4];
assign SPISS_slice_4[5]   = SPISS_net_0[5:5];
assign SPISS_slice_5[6]   = SPISS_net_0[6:6];
assign SPISS_slice_6[7]   = SPISS_net_0[7:7];
//--------------------------------------------------------------------
// Bus Interface Nets Assignments - Unequal Pin Widths
//--------------------------------------------------------------------
assign APB_GPIO_0_PADDR_5_5to2 = APB_GPIO_0_PADDR[5:2];
assign APB_GPIO_0_PADDR_5 = { APB_GPIO_0_PADDR_5_5to2 };
assign APB_GPIO_0_PADDR_3_6to0 = APB_GPIO_0_PADDR[6:0];
assign APB_GPIO_0_PADDR_3 = { APB_GPIO_0_PADDR_3_6to0 };
assign APB_GPIO_0_PADDR_1_4to2 = APB_GPIO_0_PADDR[4:2];
assign APB_GPIO_0_PADDR_1 = { APB_GPIO_0_PADDR_1_4to2 };
assign APB_GPIO_0_PADDR_2_4to0 = APB_GPIO_0_PADDR[4:0];
assign APB_GPIO_0_PADDR_2 = { APB_GPIO_0_PADDR_2_4to0 };
assign APB_GPIO_0_PADDR_0_7to0 = APB_GPIO_0_PADDR[7:0];
assign APB_GPIO_0_PADDR_0 = { APB_GPIO_0_PADDR_0_7to0 };
assign APB_GPIO_0_PADDR_4_16to0 = APB_GPIO_0_PADDR[16:0];
assign APB_GPIO_0_PADDR_4 = { APB_GPIO_0_PADDR_4_16to0 };
assign APB_GPIO_0_PADDR_6_7to0 = APB_GPIO_0_PADDR[7:0];
assign APB_GPIO_0_PADDR_6 = { APB_GPIO_0_PADDR_6_7to0 };

assign APB_GPIO_0_PRDATA_0_31to8 = 24'h0;
assign APB_GPIO_0_PRDATA_0_7to0 = APB_GPIO_0_PRDATA[7:0];
assign APB_GPIO_0_PRDATA_0 = { APB_GPIO_0_PRDATA_0_31to8, APB_GPIO_0_PRDATA_0_7to0 };

assign APB_GPIO_0_PWDATA_2_7to0 = APB_GPIO_0_PWDATA[7:0];
assign APB_GPIO_0_PWDATA_2 = { APB_GPIO_0_PWDATA_2_7to0 };
assign APB_GPIO_0_PWDATA_1_7to0 = APB_GPIO_0_PWDATA[7:0];
assign APB_GPIO_0_PWDATA_1 = { APB_GPIO_0_PWDATA_1_7to0 };
assign APB_GPIO_0_PWDATA_0_7to0 = APB_GPIO_0_PWDATA[7:0];
assign APB_GPIO_0_PWDATA_0 = { APB_GPIO_0_PWDATA_0_7to0 };
assign APB_GPIO_0_PWDATA_3_7to0 = APB_GPIO_0_PWDATA[7:0];
assign APB_GPIO_0_PWDATA_3 = { APB_GPIO_0_PWDATA_3_7to0 };
assign APB_GPIO_0_PWDATA_4_7to0 = APB_GPIO_0_PWDATA[7:0];
assign APB_GPIO_0_PWDATA_4 = { APB_GPIO_0_PWDATA_4_7to0 };

assign COREABC_0_APB3master_PADDR_0_31to20 = 12'h0;
assign COREABC_0_APB3master_PADDR_0_19to0 = COREABC_0_APB3master_PADDR[19:0];
assign COREABC_0_APB3master_PADDR_0 = { COREABC_0_APB3master_PADDR_0_31to20, COREABC_0_APB3master_PADDR_0_19to0 };

assign COREABC_0_APB3master_PRDATA_0_7to0 = COREABC_0_APB3master_PRDATA[7:0];
assign COREABC_0_APB3master_PRDATA_0 = { COREABC_0_APB3master_PRDATA_0_7to0 };

assign COREABC_0_APB3master_PWDATA_0_31to8 = 24'h0;
assign COREABC_0_APB3master_PWDATA_0_7to0 = COREABC_0_APB3master_PWDATA[7:0];
assign COREABC_0_APB3master_PWDATA_0 = { COREABC_0_APB3master_PWDATA_0_31to8, COREABC_0_APB3master_PWDATA_0_7to0 };

assign CoreAPB3_0_APBmslave1_PRDATA_0_31to8 = 24'h0;
assign CoreAPB3_0_APBmslave1_PRDATA_0_7to0 = CoreAPB3_0_APBmslave1_PRDATA[7:0];
assign CoreAPB3_0_APBmslave1_PRDATA_0 = { CoreAPB3_0_APBmslave1_PRDATA_0_31to8, CoreAPB3_0_APBmslave1_PRDATA_0_7to0 };

assign CoreAPB3_0_APBmslave2_PRDATA_0_31to8 = 24'h0;
assign CoreAPB3_0_APBmslave2_PRDATA_0_7to0 = CoreAPB3_0_APBmslave2_PRDATA[7:0];
assign CoreAPB3_0_APBmslave2_PRDATA_0 = { CoreAPB3_0_APBmslave2_PRDATA_0_31to8, CoreAPB3_0_APBmslave2_PRDATA_0_7to0 };

assign CoreAPB3_0_APBmslave3_PRDATA_0_31to8 = 24'h0;
assign CoreAPB3_0_APBmslave3_PRDATA_0_7to0 = CoreAPB3_0_APBmslave3_PRDATA[7:0];
assign CoreAPB3_0_APBmslave3_PRDATA_0 = { CoreAPB3_0_APBmslave3_PRDATA_0_31to8, CoreAPB3_0_APBmslave3_PRDATA_0_7to0 };

assign CoreAPB3_0_APBmslave6_PRDATA_0_31to8 = 24'h0;
assign CoreAPB3_0_APBmslave6_PRDATA_0_7to0 = CoreAPB3_0_APBmslave6_PRDATA[7:0];
assign CoreAPB3_0_APBmslave6_PRDATA_0 = { CoreAPB3_0_APBmslave6_PRDATA_0_31to8, CoreAPB3_0_APBmslave6_PRDATA_0_7to0 };

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------BIBUF
BIBUF BIBUF_0(
        // Inputs
        .D   ( BIBUF_1_Y ),
        .E   ( VCC_net ),
        // Outputs
        .Y   ( BIBUF_0_Y ),
        // Inouts
        .PAD ( SDA_MCU ) 
        );

//--------BIBUF
BIBUF BIBUF_1(
        // Inputs
        .D   ( BIBUF_0_Y ),
        .E   ( VCC_net ),
        // Outputs
        .Y   ( BIBUF_1_Y ),
        // Inouts
        .PAD ( SDA_Sensors ) 
        );

//--------Minimal_SoC_COREABC_0_COREABC   -   Actel:DirectCore:COREABC:3.8.102
Minimal_SoC_COREABC_0_COREABC #( 
        .ACT_CALIBRATIONDATA ( 1 ),
        .APB_AWIDTH          ( 12 ),
        .APB_DWIDTH          ( 8 ),
        .APB_SDEPTH          ( 7 ),
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
        .IFWIDTH             ( 1 ),
        .IIWIDTH             ( 1 ),
        .IMEM_APB_ACCESS     ( 0 ),
        .INITWIDTH           ( 16 ),
        .INSMODE             ( 0 ),
        .IOWIDTH             ( 1 ),
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
        .INTREQ     ( Interrupt ),
        .NSYSRESET  ( NSYSRESET ),
        .PCLK       ( Minimal_SoC_with_PLL_0_GLA_0 ),
        .PREADY_M   ( COREABC_0_APB3master_PREADY ),
        .PSLVERR_M  ( COREABC_0_APB3master_PSLVERR ),
        .PSEL_S     ( GND_net ), // tied to 1'b0 from definition
        .PENABLE_S  ( GND_net ), // tied to 1'b0 from definition
        .PWRITE_S   ( GND_net ), // tied to 1'b0 from definition
        .INITADDR   ( INITADDR_const_net_0 ), // tied to 16'h0000 from definition
        .INITDATA   ( INITDATA_const_net_0 ), // tied to 9'h000 from definition
        .IO_IN      ( VCC_net ),
        .PRDATA_M   ( COREABC_0_APB3master_PRDATA_0 ),
        .PADDR_S    ( PADDR_S_const_net_0 ), // tied to 12'h000 from definition
        .PWDATA_S   ( PWDATA_S_const_net_0 ), // tied to 8'h00 from definition
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
        .APB_DWIDTH      ( 8 ),
        .APBSLOT0ENABLE  ( 1 ),
        .APBSLOT1ENABLE  ( 1 ),
        .APBSLOT2ENABLE  ( 1 ),
        .APBSLOT3ENABLE  ( 1 ),
        .APBSLOT4ENABLE  ( 1 ),
        .APBSLOT5ENABLE  ( 1 ),
        .APBSLOT6ENABLE  ( 1 ),
        .APBSLOT7ENABLE  ( 1 ),
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
        .PREADYS5   ( APB_GPIO_0_PREADY ),
        .PSLVERRS5  ( APB_GPIO_0_PSLVERR ),
        .PREADYS6   ( CoreAPB3_0_APBmslave6_PREADY ),
        .PSLVERRS6  ( CoreAPB3_0_APBmslave6_PSLVERR ),
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
        .PRDATAS4   ( CoreAPB3_0_APBmslave4_PRDATA ),
        .PRDATAS5   ( APB_GPIO_0_PRDATA_0 ),
        .PRDATAS6   ( CoreAPB3_0_APBmslave6_PRDATA_0 ),
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
        .PWRITES    ( APB_GPIO_0_PWRITE ),
        .PENABLES   ( APB_GPIO_0_PENABLE ),
        .PSELS0     ( CoreAPB3_0_APBmslave0_PSELx ),
        .PSELS1     ( CoreAPB3_0_APBmslave1_PSELx ),
        .PSELS2     ( CoreAPB3_0_APBmslave2_PSELx ),
        .PSELS3     ( CoreAPB3_0_APBmslave3_PSELx ),
        .PSELS4     ( CoreAPB3_0_APBmslave4_PSELx ),
        .PSELS5     ( APB_GPIO_0_PSELx ),
        .PSELS6     ( CoreAPB3_0_APBmslave6_PSELx ),
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
        .PADDRS     ( APB_GPIO_0_PADDR ),
        .PWDATAS    ( APB_GPIO_0_PWDATA ) 
        );

//--------COREAPBSRAM   -   Actel:DirectCore:COREAPBSRAM:2.0.102
COREAPBSRAM #( 
        .ADDR_SCHEME            ( 0 ),
        .APB_DWIDTH             ( 8 ),
        .FAMILY                 ( 15 ),
        .NUM_LOCATIONS_DWIDTH08 ( 1024 ),
        .NUM_LOCATIONS_DWIDTH16 ( 512 ),
        .NUM_LOCATIONS_DWIDTH24 ( 512 ),
        .NUM_LOCATIONS_DWIDTH32 ( 512 ) )
COREAPBSRAM_0(
        // Inputs
        .PENABLE ( APB_GPIO_0_PENABLE ),
        .PSEL    ( CoreAPB3_0_APBmslave3_PSELx ),
        .PWRITE  ( APB_GPIO_0_PWRITE ),
        .PCLK    ( Minimal_SoC_with_PLL_0_GLA_0 ),
        .PRESETN ( COREABC_0_PRESETN_0 ),
        .PADDR   ( APB_GPIO_0_PADDR_4 ),
        .PWDATA  ( APB_GPIO_0_PWDATA_3 ),
        // Outputs
        .PREADY  ( CoreAPB3_0_APBmslave3_PREADY ),
        .PSLVERR ( CoreAPB3_0_APBmslave3_PSLVERR ),
        .PRDATA  ( CoreAPB3_0_APBmslave3_PRDATA ) 
        );

//--------Minimal_SoC_CoreGPIO_0_CoreGPIO   -   Actel:DirectCore:CoreGPIO:3.2.102
Minimal_SoC_CoreGPIO_0_CoreGPIO #( 
        .APB_WIDTH       ( 8 ),
        .FIXED_CONFIG_0  ( 1 ),
        .FIXED_CONFIG_1  ( 1 ),
        .FIXED_CONFIG_2  ( 1 ),
        .FIXED_CONFIG_3  ( 1 ),
        .FIXED_CONFIG_4  ( 0 ),
        .FIXED_CONFIG_5  ( 0 ),
        .FIXED_CONFIG_6  ( 0 ),
        .FIXED_CONFIG_7  ( 0 ),
        .FIXED_CONFIG_8  ( 0 ),
        .FIXED_CONFIG_9  ( 0 ),
        .FIXED_CONFIG_10 ( 0 ),
        .FIXED_CONFIG_11 ( 0 ),
        .FIXED_CONFIG_12 ( 1 ),
        .FIXED_CONFIG_13 ( 1 ),
        .FIXED_CONFIG_14 ( 0 ),
        .FIXED_CONFIG_15 ( 0 ),
        .FIXED_CONFIG_16 ( 0 ),
        .FIXED_CONFIG_17 ( 0 ),
        .FIXED_CONFIG_18 ( 0 ),
        .FIXED_CONFIG_19 ( 0 ),
        .FIXED_CONFIG_20 ( 0 ),
        .FIXED_CONFIG_21 ( 0 ),
        .FIXED_CONFIG_22 ( 0 ),
        .FIXED_CONFIG_23 ( 0 ),
        .FIXED_CONFIG_24 ( 0 ),
        .FIXED_CONFIG_25 ( 0 ),
        .FIXED_CONFIG_26 ( 0 ),
        .FIXED_CONFIG_27 ( 0 ),
        .FIXED_CONFIG_28 ( 0 ),
        .FIXED_CONFIG_29 ( 0 ),
        .FIXED_CONFIG_30 ( 0 ),
        .FIXED_CONFIG_31 ( 0 ),
        .INT_BUS         ( 0 ),
        .IO_INT_TYPE_0   ( 7 ),
        .IO_INT_TYPE_1   ( 7 ),
        .IO_INT_TYPE_2   ( 7 ),
        .IO_INT_TYPE_3   ( 7 ),
        .IO_INT_TYPE_4   ( 7 ),
        .IO_INT_TYPE_5   ( 7 ),
        .IO_INT_TYPE_6   ( 7 ),
        .IO_INT_TYPE_7   ( 7 ),
        .IO_INT_TYPE_8   ( 7 ),
        .IO_INT_TYPE_9   ( 7 ),
        .IO_INT_TYPE_10  ( 7 ),
        .IO_INT_TYPE_11  ( 7 ),
        .IO_INT_TYPE_12  ( 7 ),
        .IO_INT_TYPE_13  ( 7 ),
        .IO_INT_TYPE_14  ( 7 ),
        .IO_INT_TYPE_15  ( 7 ),
        .IO_INT_TYPE_16  ( 7 ),
        .IO_INT_TYPE_17  ( 7 ),
        .IO_INT_TYPE_18  ( 7 ),
        .IO_INT_TYPE_19  ( 7 ),
        .IO_INT_TYPE_20  ( 7 ),
        .IO_INT_TYPE_21  ( 7 ),
        .IO_INT_TYPE_22  ( 7 ),
        .IO_INT_TYPE_23  ( 7 ),
        .IO_INT_TYPE_24  ( 7 ),
        .IO_INT_TYPE_25  ( 7 ),
        .IO_INT_TYPE_26  ( 7 ),
        .IO_INT_TYPE_27  ( 7 ),
        .IO_INT_TYPE_28  ( 7 ),
        .IO_INT_TYPE_29  ( 7 ),
        .IO_INT_TYPE_30  ( 7 ),
        .IO_INT_TYPE_31  ( 7 ),
        .IO_NUM          ( 16 ),
        .IO_TYPE_0       ( 1 ),
        .IO_TYPE_1       ( 1 ),
        .IO_TYPE_2       ( 1 ),
        .IO_TYPE_3       ( 1 ),
        .IO_TYPE_4       ( 0 ),
        .IO_TYPE_5       ( 0 ),
        .IO_TYPE_6       ( 0 ),
        .IO_TYPE_7       ( 0 ),
        .IO_TYPE_8       ( 0 ),
        .IO_TYPE_9       ( 0 ),
        .IO_TYPE_10      ( 0 ),
        .IO_TYPE_11      ( 0 ),
        .IO_TYPE_12      ( 1 ),
        .IO_TYPE_13      ( 1 ),
        .IO_TYPE_14      ( 0 ),
        .IO_TYPE_15      ( 0 ),
        .IO_TYPE_16      ( 0 ),
        .IO_TYPE_17      ( 0 ),
        .IO_TYPE_18      ( 0 ),
        .IO_TYPE_19      ( 0 ),
        .IO_TYPE_20      ( 0 ),
        .IO_TYPE_21      ( 0 ),
        .IO_TYPE_22      ( 0 ),
        .IO_TYPE_23      ( 0 ),
        .IO_TYPE_24      ( 0 ),
        .IO_TYPE_25      ( 0 ),
        .IO_TYPE_26      ( 0 ),
        .IO_TYPE_27      ( 0 ),
        .IO_TYPE_28      ( 0 ),
        .IO_TYPE_29      ( 0 ),
        .IO_TYPE_30      ( 0 ),
        .IO_TYPE_31      ( 0 ),
        .IO_VAL_0        ( 0 ),
        .IO_VAL_1        ( 0 ),
        .IO_VAL_2        ( 1 ),
        .IO_VAL_3        ( 0 ),
        .IO_VAL_4        ( 0 ),
        .IO_VAL_5        ( 0 ),
        .IO_VAL_6        ( 0 ),
        .IO_VAL_7        ( 0 ),
        .IO_VAL_8        ( 0 ),
        .IO_VAL_9        ( 0 ),
        .IO_VAL_10       ( 0 ),
        .IO_VAL_11       ( 0 ),
        .IO_VAL_12       ( 0 ),
        .IO_VAL_13       ( 1 ),
        .IO_VAL_14       ( 0 ),
        .IO_VAL_15       ( 0 ),
        .IO_VAL_16       ( 0 ),
        .IO_VAL_17       ( 0 ),
        .IO_VAL_18       ( 0 ),
        .IO_VAL_19       ( 0 ),
        .IO_VAL_20       ( 0 ),
        .IO_VAL_21       ( 0 ),
        .IO_VAL_22       ( 0 ),
        .IO_VAL_23       ( 0 ),
        .IO_VAL_24       ( 0 ),
        .IO_VAL_25       ( 0 ),
        .IO_VAL_26       ( 0 ),
        .IO_VAL_27       ( 0 ),
        .IO_VAL_28       ( 0 ),
        .IO_VAL_29       ( 0 ),
        .IO_VAL_30       ( 0 ),
        .IO_VAL_31       ( 0 ),
        .OE_TYPE         ( 0 ) )
CoreGPIO_0(
        // Inputs
        .PRESETN  ( COREABC_0_PRESETN_0 ),
        .PCLK     ( Minimal_SoC_with_PLL_0_GLA_0 ),
        .PSEL     ( APB_GPIO_0_PSELx ),
        .PENABLE  ( APB_GPIO_0_PENABLE ),
        .PWRITE   ( APB_GPIO_0_PWRITE ),
        .PADDR    ( APB_GPIO_0_PADDR_0 ),
        .PWDATA   ( APB_GPIO_0_PWDATA_0 ),
        .GPIO_IN  ( SRAM_DATA_IO_0_Y ),
        // Outputs
        .PSLVERR  ( APB_GPIO_0_PSLVERR ),
        .PREADY   ( APB_GPIO_0_PREADY ),
        .INT_OR   (  ),
        .PRDATA   ( APB_GPIO_0_PRDATA ),
        .INT      (  ),
        .GPIO_OUT ( GPIO_OUT ),
        .GPIO_OE  ( CoreGPIO_0_GPIO_OE ) 
        );

//--------Minimal_SoC_CoreGPIO_1_CoreGPIO   -   Actel:DirectCore:CoreGPIO:3.2.102
Minimal_SoC_CoreGPIO_1_CoreGPIO #( 
        .APB_WIDTH       ( 8 ),
        .FIXED_CONFIG_0  ( 1 ),
        .FIXED_CONFIG_1  ( 1 ),
        .FIXED_CONFIG_2  ( 1 ),
        .FIXED_CONFIG_3  ( 1 ),
        .FIXED_CONFIG_4  ( 1 ),
        .FIXED_CONFIG_5  ( 1 ),
        .FIXED_CONFIG_6  ( 1 ),
        .FIXED_CONFIG_7  ( 1 ),
        .FIXED_CONFIG_8  ( 1 ),
        .FIXED_CONFIG_9  ( 1 ),
        .FIXED_CONFIG_10 ( 1 ),
        .FIXED_CONFIG_11 ( 1 ),
        .FIXED_CONFIG_12 ( 1 ),
        .FIXED_CONFIG_13 ( 1 ),
        .FIXED_CONFIG_14 ( 1 ),
        .FIXED_CONFIG_15 ( 1 ),
        .FIXED_CONFIG_16 ( 1 ),
        .FIXED_CONFIG_17 ( 1 ),
        .FIXED_CONFIG_18 ( 1 ),
        .FIXED_CONFIG_19 ( 1 ),
        .FIXED_CONFIG_20 ( 1 ),
        .FIXED_CONFIG_21 ( 1 ),
        .FIXED_CONFIG_22 ( 1 ),
        .FIXED_CONFIG_23 ( 1 ),
        .FIXED_CONFIG_24 ( 1 ),
        .FIXED_CONFIG_25 ( 0 ),
        .FIXED_CONFIG_26 ( 0 ),
        .FIXED_CONFIG_27 ( 0 ),
        .FIXED_CONFIG_28 ( 0 ),
        .FIXED_CONFIG_29 ( 0 ),
        .FIXED_CONFIG_30 ( 0 ),
        .FIXED_CONFIG_31 ( 0 ),
        .INT_BUS         ( 0 ),
        .IO_INT_TYPE_0   ( 7 ),
        .IO_INT_TYPE_1   ( 7 ),
        .IO_INT_TYPE_2   ( 7 ),
        .IO_INT_TYPE_3   ( 7 ),
        .IO_INT_TYPE_4   ( 7 ),
        .IO_INT_TYPE_5   ( 7 ),
        .IO_INT_TYPE_6   ( 7 ),
        .IO_INT_TYPE_7   ( 7 ),
        .IO_INT_TYPE_8   ( 7 ),
        .IO_INT_TYPE_9   ( 7 ),
        .IO_INT_TYPE_10  ( 7 ),
        .IO_INT_TYPE_11  ( 7 ),
        .IO_INT_TYPE_12  ( 7 ),
        .IO_INT_TYPE_13  ( 7 ),
        .IO_INT_TYPE_14  ( 7 ),
        .IO_INT_TYPE_15  ( 7 ),
        .IO_INT_TYPE_16  ( 7 ),
        .IO_INT_TYPE_17  ( 7 ),
        .IO_INT_TYPE_18  ( 7 ),
        .IO_INT_TYPE_19  ( 7 ),
        .IO_INT_TYPE_20  ( 7 ),
        .IO_INT_TYPE_21  ( 7 ),
        .IO_INT_TYPE_22  ( 7 ),
        .IO_INT_TYPE_23  ( 7 ),
        .IO_INT_TYPE_24  ( 7 ),
        .IO_INT_TYPE_25  ( 7 ),
        .IO_INT_TYPE_26  ( 7 ),
        .IO_INT_TYPE_27  ( 7 ),
        .IO_INT_TYPE_28  ( 7 ),
        .IO_INT_TYPE_29  ( 7 ),
        .IO_INT_TYPE_30  ( 7 ),
        .IO_INT_TYPE_31  ( 7 ),
        .IO_NUM          ( 25 ),
        .IO_TYPE_0       ( 1 ),
        .IO_TYPE_1       ( 1 ),
        .IO_TYPE_2       ( 1 ),
        .IO_TYPE_3       ( 1 ),
        .IO_TYPE_4       ( 1 ),
        .IO_TYPE_5       ( 1 ),
        .IO_TYPE_6       ( 1 ),
        .IO_TYPE_7       ( 1 ),
        .IO_TYPE_8       ( 1 ),
        .IO_TYPE_9       ( 1 ),
        .IO_TYPE_10      ( 1 ),
        .IO_TYPE_11      ( 1 ),
        .IO_TYPE_12      ( 1 ),
        .IO_TYPE_13      ( 1 ),
        .IO_TYPE_14      ( 1 ),
        .IO_TYPE_15      ( 1 ),
        .IO_TYPE_16      ( 1 ),
        .IO_TYPE_17      ( 1 ),
        .IO_TYPE_18      ( 1 ),
        .IO_TYPE_19      ( 1 ),
        .IO_TYPE_20      ( 1 ),
        .IO_TYPE_21      ( 1 ),
        .IO_TYPE_22      ( 1 ),
        .IO_TYPE_23      ( 1 ),
        .IO_TYPE_24      ( 1 ),
        .IO_TYPE_25      ( 0 ),
        .IO_TYPE_26      ( 0 ),
        .IO_TYPE_27      ( 0 ),
        .IO_TYPE_28      ( 0 ),
        .IO_TYPE_29      ( 0 ),
        .IO_TYPE_30      ( 0 ),
        .IO_TYPE_31      ( 0 ),
        .IO_VAL_0        ( 1 ),
        .IO_VAL_1        ( 1 ),
        .IO_VAL_2        ( 1 ),
        .IO_VAL_3        ( 1 ),
        .IO_VAL_4        ( 1 ),
        .IO_VAL_5        ( 1 ),
        .IO_VAL_6        ( 1 ),
        .IO_VAL_7        ( 1 ),
        .IO_VAL_8        ( 1 ),
        .IO_VAL_9        ( 1 ),
        .IO_VAL_10       ( 1 ),
        .IO_VAL_11       ( 1 ),
        .IO_VAL_12       ( 1 ),
        .IO_VAL_13       ( 1 ),
        .IO_VAL_14       ( 1 ),
        .IO_VAL_15       ( 1 ),
        .IO_VAL_16       ( 1 ),
        .IO_VAL_17       ( 1 ),
        .IO_VAL_18       ( 1 ),
        .IO_VAL_19       ( 1 ),
        .IO_VAL_20       ( 1 ),
        .IO_VAL_21       ( 1 ),
        .IO_VAL_22       ( 1 ),
        .IO_VAL_23       ( 1 ),
        .IO_VAL_24       ( 1 ),
        .IO_VAL_25       ( 0 ),
        .IO_VAL_26       ( 0 ),
        .IO_VAL_27       ( 0 ),
        .IO_VAL_28       ( 0 ),
        .IO_VAL_29       ( 0 ),
        .IO_VAL_30       ( 0 ),
        .IO_VAL_31       ( 0 ),
        .OE_TYPE         ( 0 ) )
CoreGPIO_1(
        // Inputs
        .PRESETN  ( COREABC_0_PRESETN_0 ),
        .PCLK     ( Minimal_SoC_with_PLL_0_GLA_0 ),
        .PSEL     ( CoreAPB3_0_APBmslave6_PSELx ),
        .PENABLE  ( APB_GPIO_0_PENABLE ),
        .PWRITE   ( APB_GPIO_0_PWRITE ),
        .PADDR    ( APB_GPIO_0_PADDR_6 ),
        .PWDATA   ( APB_GPIO_0_PWDATA_4 ),
        .GPIO_IN  ( GPIO_IN_const_net_0 ),
        // Outputs
        .PSLVERR  ( CoreAPB3_0_APBmslave6_PSLVERR ),
        .PREADY   ( CoreAPB3_0_APBmslave6_PREADY ),
        .INT_OR   (  ),
        .PRDATA   ( CoreAPB3_0_APBmslave6_PRDATA ),
        .INT      (  ),
        .GPIO_OUT ( GPIO_OUT_net_0 ),
        .GPIO_OE  (  ) 
        );

//--------CoreInterrupt   -   Actel:DirectCore:CoreInterrupt:1.1.101
CoreInterrupt #( 
        .FIQPOLARITY ( 0 ),
        .IRQPOLARITY ( 0 ),
        .NUMFIQSRC   ( 0 ),
        .NUMIRQSRC   ( 8 ) )
CoreInterrupt_0(
        // Inputs
        .PCLK        ( Minimal_SoC_with_PLL_0_GLA_0 ),
        .PRESETn     ( COREABC_0_PRESETN_0 ),
        .PSEL        ( CoreAPB3_0_APBmslave4_PSELx ),
        .PWRITE      ( APB_GPIO_0_PWRITE ),
        .PENABLE     ( APB_GPIO_0_PENABLE ),
        .fiqSource0  ( VCC_net ),
        .fiqSource1  ( VCC_net ),
        .fiqSource2  ( VCC_net ),
        .fiqSource3  ( VCC_net ),
        .fiqSource4  ( VCC_net ),
        .fiqSource5  ( VCC_net ),
        .fiqSource6  ( VCC_net ),
        .fiqSource7  ( VCC_net ),
        .irqSource0  ( Interrupt ),
        .irqSource1  ( CoreUARTapb_0_TXRDY ),
        .irqSource2  ( CoreUARTapb_0_RXRDY ),
        .irqSource3  ( CORESPI_0_SPIINT ),
        .irqSource4  ( VCC_net ),
        .irqSource5  ( VCC_net ),
        .irqSource6  ( VCC_net ),
        .irqSource7  ( VCC_net ),
        .irqSource8  ( VCC_net ),
        .irqSource9  ( VCC_net ),
        .irqSource10 ( VCC_net ),
        .irqSource11 ( VCC_net ),
        .irqSource12 ( VCC_net ),
        .irqSource13 ( VCC_net ),
        .irqSource14 ( VCC_net ),
        .irqSource15 ( VCC_net ),
        .irqSource16 ( VCC_net ),
        .irqSource17 ( VCC_net ),
        .irqSource18 ( VCC_net ),
        .irqSource19 ( VCC_net ),
        .irqSource20 ( VCC_net ),
        .irqSource21 ( VCC_net ),
        .irqSource22 ( VCC_net ),
        .irqSource23 ( VCC_net ),
        .irqSource24 ( VCC_net ),
        .irqSource25 ( VCC_net ),
        .irqSource26 ( VCC_net ),
        .irqSource27 ( VCC_net ),
        .irqSource28 ( VCC_net ),
        .irqSource29 ( VCC_net ),
        .irqSource30 ( VCC_net ),
        .irqSource31 ( VCC_net ),
        .PADDR       ( APB_GPIO_0_PADDR_5 ),
        .PWDATA      ( APB_GPIO_0_PWDATA ),
        // Outputs
        .FIQ         (  ),
        .IRQ         (  ),
        .PRDATA      ( CoreAPB3_0_APBmslave4_PRDATA ) 
        );

//--------CORESPI   -   Actel:DirectCore:CORESPI:5.2.104
CORESPI #( 
        .APB_DWIDTH        ( 8 ),
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
        .PENABLE    ( APB_GPIO_0_PENABLE ),
        .PWRITE     ( APB_GPIO_0_PWRITE ),
        .SPISSI     ( VCC_net ),
        .SPISDI     ( SPISDI ),
        .SPICLKI    ( GND_net ),
        .PADDR      ( APB_GPIO_0_PADDR_3 ),
        .PWDATA     ( APB_GPIO_0_PWDATA_2 ),
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
        .PWRITE  ( APB_GPIO_0_PWRITE ),
        .PENABLE ( APB_GPIO_0_PENABLE ),
        .PADDR   ( APB_GPIO_0_PADDR_1 ),
        .PWDATA  ( APB_GPIO_0_PWDATA ),
        // Outputs
        .TIMINT  ( Interrupt ),
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
        .PENABLE     ( APB_GPIO_0_PENABLE ),
        .PWRITE      ( APB_GPIO_0_PWRITE ),
        .RX          ( RX ),
        .PADDR       ( APB_GPIO_0_PADDR_2 ),
        .PWDATA      ( APB_GPIO_0_PWDATA_1 ),
        // Outputs
        .TXRDY       ( CoreUARTapb_0_TXRDY ),
        .RXRDY       ( CoreUARTapb_0_RXRDY ),
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

//--------OR_15bit
OR_15bit OR_15bit_0(
        // Inputs
        .Data   ( CoreGPIO_0_GPIO_OE ),
        // Outputs
        .Result ( OR_15bit_0_Result ) 
        );

//--------SRAM_ADDRESS_IO
SRAM_ADDRESS_IO SRAM_ADDRESS_IO_0(
        // Inputs
        .Data ( SRAM_ADDRESS_net_0 ),
        // Outputs
        .PAD  ( PAD_1 ) 
        );

//--------SRAM_DATA_IO
SRAM_DATA_IO SRAM_DATA_IO_0(
        // Inputs
        .Trien ( OR_15bit_0_Result ),
        .Data  ( GPIO_OUT ),
        // Outputs
        .Y     ( SRAM_DATA_IO_0_Y ),
        // Inouts
        .PAD   ( SRAM_DATA ) 
        );


endmodule
