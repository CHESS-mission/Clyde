quietly set ACTELLIBNAME ProASIC3
quietly set PROJECT_DIR "C:/Users/micha/SynologyDrive/Engineering/Projects/CHESS OBC/SoC/LiberoProjects/Clyde/Clyde"
source "${PROJECT_DIR}/simulation/bfmtovec_compile.tcl";

if {[file exists presynth/_info]} {
   echo "INFO: Simulation library presynth already exists"
} else {
   file delete -force presynth 
   vlib presynth
}
vmap presynth presynth
vmap proasic3 "C:/Microsemi/Libero_SoC_v11.9/Designer/lib/modelsim/precompiled/vlog/proasic3"
if {[file exists COREAPB3_LIB/_info]} {
   echo "INFO: Simulation library COREAPB3_LIB already exists"
} else {
   file delete -force COREAPB3_LIB 
   vlib COREAPB3_LIB
}
vmap COREAPB3_LIB "COREAPB3_LIB"
if {[file exists CORETIMER_LIB/_info]} {
   echo "INFO: Simulation library CORETIMER_LIB already exists"
} else {
   file delete -force CORETIMER_LIB 
   vlib CORETIMER_LIB
}
vmap CORETIMER_LIB "CORETIMER_LIB"
if {[file exists CORESPI_LIB/_info]} {
   echo "INFO: Simulation library CORESPI_LIB already exists"
} else {
   file delete -force CORESPI_LIB 
   vlib CORESPI_LIB
}
vmap CORESPI_LIB "CORESPI_LIB"

vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/COREAPBSRAM/2.0.102/rtl/vlog/core_obfuscated/sram_512to8192x8.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/COREAPBSRAM/2.0.102/rtl/vlog/core_obfuscated/coreapbsram.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/CoreInterrupt/1.1.101/rtl/verilog/u/CoreInterrupt.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core/acmtable.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core/debugblk.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core/instructions.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core/instructnvm_bb.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core/iram512x9_pa3.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core/instructram.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core/ram128x8_rtl.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core/ram256x16_pa3.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core/ram256x8_rtl.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core/ramblocks.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core/coreabc.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/component/work/Minimal_SoC/CoreGPIO_0/rtl/vlog/core/coregpio.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/component/work/Minimal_SoC/CoreGPIO_1/rtl/vlog/core/coregpio.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/component/work/Minimal_SoC/CoreUARTapb_0/rtl/vlog/core_obfuscated/Clock_gen.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/component/work/Minimal_SoC/CoreUARTapb_0/rtl/vlog/core_obfuscated/Rx_async.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/component/work/Minimal_SoC/CoreUARTapb_0/rtl/vlog/core_obfuscated/Tx_async.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/component/work/Minimal_SoC/CoreUARTapb_0/rtl/vlog/core_obfuscated/fifo_256x8_pa3.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/component/work/Minimal_SoC/CoreUARTapb_0/rtl/vlog/core_obfuscated/CoreUART.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/component/work/Minimal_SoC/CoreUARTapb_0/rtl/vlog/core_obfuscated/CoreUARTapb.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/smartgen/Minimal_SoC_with_PLL/Minimal_SoC_with_PLL.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/smartgen/OR_15bit/OR_15bit.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/smartgen/SRAM_ADDRESS_IO/SRAM_ADDRESS_IO.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/smartgen/SRAM_DATA_IO/SRAM_DATA_IO.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" -vlog01compat -work COREAPB3_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CoreAPB3/4.2.100/rtl/vlog/core/coreapb3_muxptob3.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" -vlog01compat -work COREAPB3_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CoreAPB3/4.2.100/rtl/vlog/core/coreapb3_iaddr_reg.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" -vlog01compat -work COREAPB3_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CoreAPB3/4.2.100/rtl/vlog/core/coreapb3.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" -vlog01compat -work CORESPI_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CORESPI/5.2.104/rtl/vlog/core/spi_clockmux.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" -vlog01compat -work CORESPI_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CORESPI/5.2.104/rtl/vlog/core/spi_chanctrl.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" -vlog01compat -work CORESPI_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CORESPI/5.2.104/rtl/vlog/core/spi_control.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" -vlog01compat -work CORESPI_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CORESPI/5.2.104/rtl/vlog/core/spi_fifo.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" -vlog01compat -work CORESPI_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CORESPI/5.2.104/rtl/vlog/core/spi_rf.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" -vlog01compat -work CORESPI_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CORESPI/5.2.104/rtl/vlog/core/spi.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" -vlog01compat -work CORESPI_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CORESPI/5.2.104/rtl/vlog/core/corespi.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" -vlog01compat -work CORETIMER_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CoreTimer/2.0.103/rtl/vlog/core/coretimer.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/component/work/Minimal_SoC/Minimal_SoC.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" "+incdir+${PROJECT_DIR}/component/Actel/Simulation/CLK_GEN/1.0.1" "+incdir+${PROJECT_DIR}/component/Actel/Simulation/RESET_GEN/1.0.1" "+incdir+${PROJECT_DIR}/component/work/Basic_Input_Testbench" -vlog01compat -work presynth "${PROJECT_DIR}/component/Actel/Simulation/CLK_GEN/1.0.1/CLK_GEN.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" "+incdir+${PROJECT_DIR}/component/Actel/Simulation/CLK_GEN/1.0.1" "+incdir+${PROJECT_DIR}/component/Actel/Simulation/RESET_GEN/1.0.1" "+incdir+${PROJECT_DIR}/component/work/Basic_Input_Testbench" -vlog01compat -work presynth "${PROJECT_DIR}/component/Actel/Simulation/RESET_GEN/1.0.1/RESET_GEN.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Minimal_SoC/COREABC_0/rtl/vlog/core" "+incdir+${PROJECT_DIR}/component/Actel/Simulation/CLK_GEN/1.0.1" "+incdir+${PROJECT_DIR}/component/Actel/Simulation/RESET_GEN/1.0.1" "+incdir+${PROJECT_DIR}/component/work/Basic_Input_Testbench" -vlog01compat -work presynth "${PROJECT_DIR}/component/work/Basic_Input_Testbench/Basic_Input_Testbench.v"

vsim -L proasic3 -L presynth -L COREAPB3_LIB -L CORETIMER_LIB -L CORESPI_LIB  -t 1ps presynth.Basic_Input_Testbench
add wave /Basic_Input_Testbench/*
add log -r /*
run 10ms
