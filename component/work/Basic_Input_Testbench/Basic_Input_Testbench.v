//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Sun Jul 17 20:14:32 2022
// Version: v11.9 11.9.0.4
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// Basic_Input_Testbench
module Basic_Input_Testbench(
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
    SDA_Sensors,
    SRAM_DATA
);

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
inout         SDA_Sensors;
inout  [15:0] SRAM_DATA;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          CLK_GEN_0_CLK;
wire          CLK_GEN_1_CLK;
wire          RESET_GEN_0_RESET;
wire          RESET_GEN_1_RESET;
wire          SCL_Sensor_net_0;
wire          SDA_Sensors;
wire          SPISCLKO_net_0;
wire          SPISDO_net_0;
wire          SPISS_net_0;
wire   [19:0] SRAM_ADDRESS_0;
wire          SRAM_CE_net_0;
wire   [15:0] SRAM_DATA;
wire          SRAM_LB_net_0;
wire          SRAM_OE_net_0;
wire          SRAM_UB_net_0;
wire          SRAM_WE_net_0;
wire          TX_net_0;
wire          TX_net_1;
wire          SPISDO_net_1;
wire          SPISCLKO_net_1;
wire          SCL_Sensor_net_1;
wire          SPISS_net_1;
wire          SRAM_CE_net_1;
wire          SRAM_WE_net_1;
wire          SRAM_LB_net_1;
wire          SRAM_OE_net_1;
wire          SRAM_UB_net_1;
wire   [19:0] SRAM_ADDRESS_0_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          VCC_net;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net = 1'b1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign TX_net_1             = TX_net_0;
assign TX                   = TX_net_1;
assign SPISDO_net_1         = SPISDO_net_0;
assign SPISDO               = SPISDO_net_1;
assign SPISCLKO_net_1       = SPISCLKO_net_0;
assign SPISCLKO             = SPISCLKO_net_1;
assign SCL_Sensor_net_1     = SCL_Sensor_net_0;
assign SCL_Sensor           = SCL_Sensor_net_1;
assign SPISS_net_1          = SPISS_net_0;
assign SPISS                = SPISS_net_1;
assign SRAM_CE_net_1        = SRAM_CE_net_0;
assign SRAM_CE              = SRAM_CE_net_1;
assign SRAM_WE_net_1        = SRAM_WE_net_0;
assign SRAM_WE              = SRAM_WE_net_1;
assign SRAM_LB_net_1        = SRAM_LB_net_0;
assign SRAM_LB              = SRAM_LB_net_1;
assign SRAM_OE_net_1        = SRAM_OE_net_0;
assign SRAM_OE              = SRAM_OE_net_1;
assign SRAM_UB_net_1        = SRAM_UB_net_0;
assign SRAM_UB              = SRAM_UB_net_1;
assign SRAM_ADDRESS_0_net_0 = SRAM_ADDRESS_0;
assign SRAM_ADDRESS[19:0]   = SRAM_ADDRESS_0_net_0;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------CLK_GEN   -   Actel:Simulation:CLK_GEN:1.0.1
CLK_GEN #( 
        .CLK_PERIOD ( 31250 ),
        .DUTY_CYCLE ( 50 ) )
CLK_GEN_0(
        // Outputs
        .CLK ( CLK_GEN_0_CLK ) 
        );

//--------CLK_GEN   -   Actel:Simulation:CLK_GEN:1.0.1
CLK_GEN #( 
        .CLK_PERIOD ( 500000 ),
        .DUTY_CYCLE ( 50 ) )
CLK_GEN_1(
        // Outputs
        .CLK ( CLK_GEN_1_CLK ) 
        );

//--------Minimal_SoC
Minimal_SoC Minimal_SoC_0(
        // Inputs
        .NSYSRESET    ( RESET_GEN_0_RESET ),
        .SYSCLK       ( CLK_GEN_0_CLK ),
        .RX           ( VCC_net ),
        .SPISDI       ( VCC_net ),
        .SCL_MCU      ( CLK_GEN_1_CLK ),
        .Power_Down   ( RESET_GEN_1_RESET ),
        // Outputs
        .TX           ( TX_net_0 ),
        .SPISCLKO     ( SPISCLKO_net_0 ),
        .SPISDO       ( SPISDO_net_0 ),
        .SCL_Sensor   ( SCL_Sensor_net_0 ),
        .SPISS        ( SPISS_net_0 ),
        .SRAM_ADDRESS ( SRAM_ADDRESS_0 ),
        .SRAM_CE      ( SRAM_CE_net_0 ),
        .SRAM_WE      ( SRAM_WE_net_0 ),
        .SRAM_LB      ( SRAM_LB_net_0 ),
        .SRAM_OE      ( SRAM_OE_net_0 ),
        .SRAM_UB      ( SRAM_UB_net_0 ),
        // Inouts
        .SDA_MCU      ( VCC_net ),
        .SDA_Sensors  ( SDA_Sensors ),
        .SRAM_DATA    ( SRAM_DATA ) 
        );

//--------RESET_GEN   -   Actel:Simulation:RESET_GEN:1.0.1
RESET_GEN #( 
        .DELAY       ( 1000 ),
        .LOGIC_LEVEL ( 0 ) )
RESET_GEN_0(
        // Outputs
        .RESET ( RESET_GEN_0_RESET ) 
        );

//--------RESET_GEN   -   Actel:Simulation:RESET_GEN:1.0.1
RESET_GEN #( 
        .DELAY       ( 5000 ),
        .LOGIC_LEVEL ( 0 ) )
RESET_GEN_1(
        // Outputs
        .RESET ( RESET_GEN_1_RESET ) 
        );


endmodule
