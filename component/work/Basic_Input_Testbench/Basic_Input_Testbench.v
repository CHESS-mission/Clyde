//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Sat Jul 09 20:56:54 2022
// Version: v11.9 11.9.0.4
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// Basic_Input_Testbench
module Basic_Input_Testbench(
    // Outputs
    GPIO,
    TX
);

//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [7:0] GPIO;
output       TX;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire         CLK_GEN_0_CLK;
wire   [7:0] GPIO_net_0;
wire         RESET_GEN_0_RESET;
wire         TX_net_0;
wire   [7:0] GPIO_net_1;
wire         TX_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire         VCC_net;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net = 1'b1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign GPIO_net_1 = GPIO_net_0;
assign GPIO[7:0]  = GPIO_net_1;
assign TX_net_1   = TX_net_0;
assign TX         = TX_net_1;
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

//--------Minimal_SoC
Minimal_SoC Minimal_SoC_0(
        // Inputs
        .NSYSRESET   ( RESET_GEN_0_RESET ),
        .SYSCLK      ( CLK_GEN_0_CLK ),
        .RX          ( VCC_net ),
        // Outputs
        .TX          ( TX_net_0 ),
        .GPIO        ( GPIO_net_0 ),
        .TXRDY       (  ),
        .RXRDY       (  ),
        .PARITY_ERR  (  ),
        .OVERFLOW    (  ),
        .FRAMING_ERR (  ) 
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
