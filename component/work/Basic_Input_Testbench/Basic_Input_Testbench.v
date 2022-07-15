//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Thu Jul 14 21:15:19 2022
// Version: v11.9 11.9.0.4
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// Basic_Input_Testbench
module Basic_Input_Testbench(
    // Outputs
    SCL_Sensor,
    SDA_Sensors_0,
    SPISCLKO,
    SPISDO,
    SPISS,
    TX
);

//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output SCL_Sensor;
output SDA_Sensors_0;
output SPISCLKO;
output SPISDO;
output SPISS;
output TX;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   CLK_GEN_0_CLK;
wire   CLK_GEN_1_CLK;
wire   PULSE_GEN_0_PULSE;
wire   RESET_GEN_0_RESET;
wire   SCL_Sensor_net_0;
wire   SDA_Sensors_0_net_0;
wire   SPISCLKO_net_0;
wire   SPISDO_net_0;
wire   SPISS_net_0;
wire   TX_net_0;
wire   TX_net_1;
wire   SPISDO_net_1;
wire   SPISCLKO_net_1;
wire   SCL_Sensor_net_1;
wire   SPISS_net_1;
wire   SDA_Sensors_0_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire   VCC_net;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net = 1'b1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign TX_net_1            = TX_net_0;
assign TX                  = TX_net_1;
assign SPISDO_net_1        = SPISDO_net_0;
assign SPISDO              = SPISDO_net_1;
assign SPISCLKO_net_1      = SPISCLKO_net_0;
assign SPISCLKO            = SPISCLKO_net_1;
assign SCL_Sensor_net_1    = SCL_Sensor_net_0;
assign SCL_Sensor          = SCL_Sensor_net_1;
assign SPISS_net_1         = SPISS_net_0;
assign SPISS               = SPISS_net_1;
assign SDA_Sensors_0_net_1 = SDA_Sensors_0_net_0;
assign SDA_Sensors_0       = SDA_Sensors_0_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------CLK_GEN   -   Actel:Simulation:CLK_GEN:1.0.1
CLK_GEN #( 
        .CLK_PERIOD ( 10000 ),
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
        .NSYSRESET   ( RESET_GEN_0_RESET ),
        .SYSCLK      ( CLK_GEN_0_CLK ),
        .RX          ( VCC_net ),
        .SPISDI      ( VCC_net ),
        .SCL_MCU     ( CLK_GEN_1_CLK ),
        .SDA_MCU     ( VCC_net ),
        .Power_Down  ( PULSE_GEN_0_PULSE ),
        // Outputs
        .TX          ( TX_net_0 ),
        .SPISCLKO    ( SPISCLKO_net_0 ),
        .SPISDO      ( SPISDO_net_0 ),
        .SCL_Sensor  ( SCL_Sensor_net_0 ),
        .SPISS       ( SPISS_net_0 ),
        .SDA_Sensors ( SDA_Sensors_0_net_0 ) 
        );

//--------PULSE_GEN   -   Actel:Simulation:PULSE_GEN:1.0.1
PULSE_GEN #( 
        .PULSE_START_TIME ( 50000 ),
        .PULSE_TYPE       ( 0 ),
        .PULSE_WIDTH      ( 50000 ) )
PULSE_GEN_0(
        // Outputs
        .PULSE ( PULSE_GEN_0_PULSE ) 
        );

//--------RESET_GEN   -   Actel:Simulation:RESET_GEN:1.0.1
RESET_GEN #( 
        .DELAY       ( 1000 ),
        .LOGIC_LEVEL ( 0 ) )
RESET_GEN_0(
        // Outputs
        .RESET ( RESET_GEN_0_RESET ) 
        );


endmodule
