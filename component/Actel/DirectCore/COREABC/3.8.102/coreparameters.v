//--------------------------------------------------------------------
// Created by Microsemi SmartDesign Sat Aug 13 17:25:57 2022
// Parameters for COREABC
//--------------------------------------------------------------------


parameter ABCCODE = "    
// --------------- 
// Defintitions
// ---------------
    // --------------- 
    // RAM
    // ---------------
        // the stack grouws downwards from 0xFF
        // registers
        DEF REG0 0x00
        DEF REG1 0x01
        DEF REG2 0x02
        DEF REG3 0x03
        DEF REG4 0x04
        DEF REG5 0x05
        DEF REG6 0x06
        DEF REG7 0x07
        DEF REG8 0x08
        DEF REG9 0x09
        DEF REG10 0x0A
        DEF REG11 0x0B
        DEF REG12 0x0C
        DEF REG13 0x0D
        DEF REG14 0x0E
        DEF REG15 0x0F
        // Command Register
        DEF COMMAND_REG 0x10
        DEF COMMAND_1_BIT 1<<0
        DEF COMMAND_2_BIT 1<<1
        DEF COMMAND_3_BIT 1<<2
        DEF COMMAND_4_BIT 1<<3
        DEF COMMAND_5_BIT 1<<4
        DEF COMMAND_6_BIT 1<<5
        DEF COMMAND_7_BIT 1<<6
        DEF COMMAND_8_BIT 1<<7    
        

        
        // Bitflip measurement
        DEF RAM_TEST_REGION_START 0x10
        DEF RAM_TEST_REGION_END 0x7F
    
// INPUT0 : UART TX Ready
    // --------------- 
    // APB
    // ---------------
    
        // APB SLOTS
        DEF TIMER 0
        DEF UART 1
        DEF SPI 2
        DEF ON_CHIP_SRAM 3

        // --------------- 
        // Timer
        // ---------------
    
            // TIMER REGISTERS
            DEF INT_RESET_REG 0x10
            DEF LOAD_REG 0x00
            DEF PRESCALER 0x0C
            DEF TIMER_CONTROL 0x08
    
            // TIMER PRESCALERS
            DEF PRESCALER2 0b0000
            DEF PRESCALER4 0b0001
            DEF PRESCALER8 0b0010
            DEF PRESCALER16 0b0011
            DEF PRESCALER32 0b0100
            DEF PRESCALER64 0b0101
            DEF PRESCALER128 0b0110
            DEF PRESCALER256 0b0111
            DEF PRESCALER512 0b1000
            DEF PRESCALER1024 0b1001
            DEF PRESCALER2048 0b1010
            DEF PRESCALER4096 0b1011
            DEF PRESCALER8182 0b1100
            DEF PRESCALER16364 0b1101
            DEF PRESCALER32728 0b1110
            DEF PRESCALER65456 0b1111
        
        // --------------- 
        // UART
        // ---------------
            // UART REGISTER
            DEF UART_TX_REG 0x000
            DEF UART_RX_REG 0x004
        
        // --------------- 
        // on-chip SRAM
        // ---------------
            // total 1024 bytes adressed continiously (0x00, 0x01, ..., 0x3FF)
            DEF ON_CHIP_RAM_TEST_START 0x100
            DEF ON_CHIP_RAM_TEST_PAGES 3
            DEF ON_CHIP_RAM_TEST_PAGESIZE 0xFF
    

    
    

// ---------------------
//  Program Code Start
// ---------------------  
    // The first line is called after a reset. This usually is a jump that goes to the location the actual program starts. 
    // This is needed as the interrupt is at program memory address 1 (= 2nd instruction).
$RESET    
    JUMP $INIT
// --------------- 
// Interrupt Routine 
// ---------------
$INTERRUPT_DO_NOT_CALL
    PUSH 
    JUMP IFNOT INPUT2 $INTERRUPT_TIMER
    JUMP IFNOT INPUT1 $INTERRUPT_UART_RX
    
$INTERRUPT_TIMER
        // WRITE 0X42 TO UART PERIODICALLY
        APBWRT DAT UART UART_TX_REG 0x42
        // reset timer interrupt
        APBWRT DAT TIMER INT_RESET_REG 0x0000
        JUMP $INTERRUPT_END
$INTERRUPT_UART_RX
        APBREAD UART 0x04
        // compare the received value to known commands and set the coresponding bits
        $INT_RX_CMP1
            CMP DAT 0x01
            JUMP IFNOT ZERO $INT_RX_CMP2
                LOAD DAT 1
                RAMWRT COMMAND_REG ACC
                JUMP $INT_RX_CMP_END
        $INT_RX_CMP2
            CMP DAT 0x02
            JUMP IFNOT ZERO $INT_RX_CMP3
                LOAD DAT 2
                RAMWRT COMMAND_REG ACC
                JUMP $INT_RX_CMP_END        
        $INT_RX_CMP3
            CMP DAT 0x03
            JUMP IFNOT ZERO $INT_RX_CMP4
                LOAD DAT 4
                RAMWRT COMMAND_REG ACC
                JUMP $INT_RX_CMP_END 
        $INT_RX_CMP4
            CMP DAT 0x04
            JUMP IFNOT ZERO $INT_RX_DEFAULT
                LOAD DAT 8
                RAMWRT COMMAND_REG ACC
                JUMP $INT_RX_CMP_END
        $INT_RX_DEFAULT
                // received sth. that's not a command
                LOAD DAT 16
                RAMWRT COMMAND_REG ACC
        $INT_RX_CMP_END
            JUMP $INTERRUPT_END    
$INTERRUPT_END
        POP
        RETISR
    
    
// --------------- 
// Init Program 
// ---------------
$INIT
     // reset command register
     RAMWRT COMMAND_REG DAT 0x00
    // ------------------------
    // UART
    // ------------------------
        // set uart baud-rate to 115200 (with 32MHz clock)
        APBWRT DAT 1 0x008 16
        APBWRT DAT 1 0x014 0b011
        APBWRT DAT 1 0x00C 0
    
    // ------------------------
    // SPI
    // ------------------------
        // enable CoreSPI as master
        APBWRT DAT8 SPI 0x00 0b11
        //SS 1
        APBWRT DAT8 SPI 0x24 1

    // ------------------------
    // timer
    // ------------------------
        // load value to timer
        APBWRT DAT TIMER LOAD_REG 0x00FF
        // set prescaler to 32
        APBWRT DAT TIMER PRESCALER PRESCALER256
        //Enable the timer and its interrupt
        APBWRT DAT TIMER TIMER_CONTROL 3

    // ONLY TO START SYM
        JUMP IFNOT INPUT3 $NO_DEBUG_START
            APBWRT DAT UART UART_TX_REG 0x01
        $NO_DEBUG_START
    
// --------------- 
// MAIN Program 
// ---------------
$MAIN
    $MAIN_LOOP
        call $DELAY_5
        RAMREAD COMMAND_REG
        //IOWRT ACC
        CMP DAT 0x00
        JUMP IF ZERO $MAIN_LOOP
            // the following code is exectued if there's a command to be run
            CMP DAT COMMAND_1_BIT
                CALL IF ZERO $COMMAND_1
                RAMWRT COMMAND_REG DAT 0x00
            CMP DAT COMMAND_2_BIT
                CALL IF ZERO $COMMAND_2
                RAMWRT COMMAND_REG DAT 0x00
            CMP DAT COMMAND_3_BIT
                CALL IF ZERO $COMMAND_3
                RAMWRT COMMAND_REG DAT 0x00
            CMP DAT COMMAND_4_BIT
                CALL IF ZERO $COMMAND_4
                RAMWRT COMMAND_REG DAT 0x00
        JUMP $MAIN_LOOP 
    JUMP $INFINIT_LOOP
    

$INFINIT_LOOP
    nop
    JUMP $INFINIT_LOOP


$COMMAND_1
   APBWRT DAT UART UART_TX_REG 0x11 
   RETURN


$COMMAND_2
   APBWRT DAT UART UART_TX_REG 0x22
   RETURN


$COMMAND_3
   APBWRT DAT UART UART_TX_REG 0x33
   RETURN


$COMMAND_4
   APBWRT DAT UART UART_TX_REG 0x44
   RETURN



// -------------------
// Delay Functions 
// -------------------

// 4 ticks
$DELAY_1
    nop
    nop
    nop
    nop
    RETURN

// 16 ticks
$DELAY_2
    call $DELAY_1
    call $DELAY_1
    call $DELAY_1
    call $DELAY_1
    RETURN

// 64 ticks
$DELAY_3
    call $DELAY_2
    call $DELAY_2
    call $DELAY_2
    call $DELAY_2
    RETURN

//256 ticks
$DELAY_4
    call $DELAY_3
    call $DELAY_3
    call $DELAY_3
    call $DELAY_3
    RETURN

//1024 ticks
$DELAY_5
    call $DELAY_4
    call $DELAY_4
    call $DELAY_4
    call $DELAY_4
    RETURN

//4096 ticks
$DELAY_6
    call $DELAY_5
    call $DELAY_5
    call $DELAY_5
    call $DELAY_5
    RETURN

$DELAY_7
    call $DELAY_6
    call $DELAY_6
    call $DELAY_6
    call $DELAY_6
    RETURN

$DELAY_2MS
    call $DELAY_7
    call $DELAY_7
    RETURN

// -------------------
// Useful Functions 
// -------------------
    
    // send data from the accumulator to uart. If the TX-buffer is full, this functions waits until the buffer has capacity.
    $WAIT_AND_PRINT_ACC_TO_UART
        WAIT UNTIL INPUT0
        APBWRT ACC UART UART_TX_REG 
        RETURN
    
    // fill the apb sram with fixed numbers: 
    // page 1: 0x00
    // page 2: 0xFF
    // page 3: 0x55



    
// ------------------------------------------------

    
    
    
    
    
    
    
    
    
    ";
parameter ACT_CALIBRATIONDATA = 1;
parameter APB_AWIDTH = 12;
parameter APB_DWIDTH = 16;
parameter APB_SDEPTH = 7;
parameter CODEHEXDUMP = "";
parameter CODEHEXDUMP2 = "";
parameter DEBUG = 1;
parameter EN_ACM = 1;
parameter EN_ADD = 1;
parameter EN_ALURAM = 1;
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
parameter IIWIDTH = 4;
parameter IMEM_APB_ACCESS = 0;
parameter INITWIDTH = 16;
parameter INSMODE = 0;
parameter IOWIDTH = 1;
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
parameter ZRWIDTH = 16;
