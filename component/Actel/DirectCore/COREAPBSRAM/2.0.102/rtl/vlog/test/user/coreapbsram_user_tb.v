// ********************************************************************/
// Actel Corporation Proprietary and Confidential
//  Copyright 2008 Actel Corporation.  All rights reserved.
//
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
// ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
// IN ADVANCE IN WRITING.
//
// Description:  User Testbench for CoreApbSram, instantiates 1 core
//
//
// Revision Information:
// Date     Description
//
// SVN Revision Information:
// SVN $Revision: 6096 $
// SVN $Date: 2009-01-19 12:35:37 +0000 (Mon, 19 Jan 2009) $
//
// Resolved SARs
// SAR      Date     Who   Description
//
// Notes:
//
// ********************************************************************/

`timescale 1ns/100ps

module coreapbsram_user_tb ();

  parameter FAMILY                  = 17;
  parameter APB_DWIDTH              = 32;
  parameter NUM_LOCATIONS_DWIDTH32  = 8192;
  parameter NUM_LOCATIONS_DWIDTH24  = 8192;
  parameter NUM_LOCATIONS_DWIDTH16  = 16384;
  parameter NUM_LOCATIONS_DWIDTH08  = 32768;
  // ADDR_SCHEME
  // 0 = word aligned
  // 1 = sequential
  parameter ADDR_SCHEME             = 0;
  parameter APB_AWIDTH              = 17;

  // localparams
  localparam NUM_LOCATIONS = APB_DWIDTH == 32 ? NUM_LOCATIONS_DWIDTH32 :
                             APB_DWIDTH == 24 ? NUM_LOCATIONS_DWIDTH24 :
                             APB_DWIDTH == 16 ? NUM_LOCATIONS_DWIDTH16 :
                                                NUM_LOCATIONS_DWIDTH08;

  // With word aligned adressing, data items are at addresses 0x00, 0x04, 0x08, etc.
  localparam ADDR_SPACING = ADDR_SCHEME == 0 ? 4 : 1;


  // DUT signals
  // inputs
  reg PCLK;
  reg PRESETN;
  reg PENABLE;
  reg PSEL;
  reg PWRITE;
  reg [APB_AWIDTH-1:0] PADDR;
  reg [APB_DWIDTH-1:0] PWDATA;
  // outputs
  wire [APB_DWIDTH-1:0] PRDATA;
  wire PREADY, PSLVERR;

  // testbench parameters / signals
  // PCLK period / 2
  parameter HALFPERIOD = 10;

  integer simerrors;

  // string related signals
  reg [8*79:1]	init_str_mem [0:11];
  reg [8*79:1]	dash_str,uline_str,copyright_str,tb_name_str,
	        			tb_ver_str,pound_str,lsb_str,msb_str;

// ------------------------------------------------------
// Processes
// ------------------------------------------------------

  // clock gen
  always
  begin
    #HALFPERIOD PCLK <= ~ PCLK;
  end

  // initial block
  initial
  begin : test_proc
    // test variables
    integer i,j;
    i = 0;
    j = 0;

    dash_str		=
    "-----------------------------------------------------------------------------";
    uline_str		=
    "_____________________________________________________________________________";
    pound_str		=
    "#############################################################################";
    copyright_str	=
    "(c) Copyright 2008 Actel Corporation. All rights reserved.";
    tb_name_str		=
    "User Testbench for: CoreApbSram";
    tb_ver_str		=
    "Version: 1.0 12Nov08                                                         ";

    // initialization of testbench string
    init_str_mem[00]	= "";
    init_str_mem[01]	= "";
    init_str_mem[02]	= uline_str;
    init_str_mem[03]	= "";
    init_str_mem[04]	= copyright_str;
    init_str_mem[05]	= "";
    init_str_mem[06]	= tb_name_str;
    init_str_mem[07]	= tb_ver_str;
    init_str_mem[08]	= uline_str;
    init_str_mem[09]	= "";
    init_str_mem[10]	= "";
    init_str_mem[11]	= "";

    // print out copyright info, testbench version, name of testbench, etc.
    for (i=0;i<12;i=i+1)
      $display("%0s",init_str_mem[i]);

    // APB signals
    PCLK <= 1'b1;
    PRESETN <= 1'b0;
    PENABLE <= 1'b0;
    PSEL <= 1'b0;
    PWRITE <= 1'b0;
    PADDR <= 0;
    PWDATA <= 0;
    #(HALFPERIOD * 20);
    PRESETN <= 1'b1;

    $display("%0s",dash_str);
    $display("  Testing in %0d bit mode", APB_DWIDTH);

    // APB TESTS
    $display("%0s",dash_str);
    $display("  APB TESTS");
    $display("%0s",dash_str);

    // Test memory access
    $display("  Writing to memory");
    for (i=0; i < (ADDR_SPACING*NUM_LOCATIONS); i=i+ADDR_SPACING) begin
      apb_write(i,i);
    end

    #(HALFPERIOD * 50);

    $display("  Reading from memory");
    for (i=0; i < (ADDR_SPACING*NUM_LOCATIONS); i=i+ADDR_SPACING) begin
      apb_read(i,i);
    end

    #(HALFPERIOD * 50);

    $display("%0s",dash_str);
    $display("  All tests complete");
    $display("%0s",dash_str);

    $stop;
  end


  // Design under test: CoreApbSram instantiation
  COREAPBSRAM # (
    // params
    .FAMILY(FAMILY),
    .APB_DWIDTH(APB_DWIDTH),
    .NUM_LOCATIONS_DWIDTH32(NUM_LOCATIONS_DWIDTH32),
    .NUM_LOCATIONS_DWIDTH24(NUM_LOCATIONS_DWIDTH24),
    .NUM_LOCATIONS_DWIDTH16(NUM_LOCATIONS_DWIDTH16),
    .NUM_LOCATIONS_DWIDTH08(NUM_LOCATIONS_DWIDTH08),
    .ADDR_SCHEME(ADDR_SCHEME)
  ) DUT (
    // ports
    // APB signals
    // inputs
    .PCLK(PCLK),
    .PRESETN(PRESETN),
    .PSEL(PSEL),
    .PENABLE(PENABLE),
    .PWRITE(PWRITE),
    .PADDR(PADDR),
    .PWDATA(PWDATA),
    // outputs
    .PRDATA(PRDATA),
    .PREADY(PREADY),
    .PSLVERR(PSLVERR)
  );

//----------------------------------------------------------------------
// tasks
//----------------------------------------------------------------------

// Checks the value of a signal or bus (up to 128 bits) ---------
task checksig;
input [127:0] d;
input [8*17:1] sig_name;
input [127:0] v;
begin
	$timeformat(-9, 2, " ns", 3);
	if (d != v)
	begin
		$display("");
		$display("%0s",pound_str);
		$display("ERROR!!! Mismatch on signal %0s",sig_name);
		$display("At time: %0t",$time);
		$display("Expected value was: 0x%0x, observed value is: 0x%0x",v,d);
		$display("%0s",pound_str);
		$display("");
		//$stop;
		simerrors = simerrors + 1;
	end
end
endtask

// Emulates an APB write
task apb_write;
input [APB_AWIDTH-1:0] a;
input [APB_DWIDTH-1:0] d;
begin
  //$display("CPU Write %04x = %04x",a,d);
  @(negedge PCLK);
  PENABLE  = 1'b0;
  PSEL  = 1'b1;
  PADDR = a;
  PWDATA  = d;
  PWRITE  = 1'b1;
  @(negedge PCLK);
  PENABLE  = 1'b1;
  @(negedge PCLK);
  PWRITE  = 1'b0;
  PENABLE  = 1'b0;
  PSEL  = 1'b0;
end
endtask

// Emulates an APB read
task apb_read;
input [APB_AWIDTH-1:0] a;
input [APB_DWIDTH-1:0] d;
begin
  @(negedge PCLK);
  PENABLE  = 1'b0;
  PSEL  = 1'b1;
  PADDR = a;
  PWRITE  = 1'b0;
  @(negedge PCLK);
  PENABLE  = 1'b1;
  @(negedge PCLK);
  PENABLE  = 1'b0;
  PSEL  = 1'b0;
  checksig(PRDATA,"APB Read Data Bus",d);
//  $display("APB Read %04x = %04x",address,data);
end
endtask

// Emulates an APB read / bit polling
task apb_read_poll;
input [APB_AWIDTH-1:0] a;
input [APB_DWIDTH-1:0] bit;
input                  v;
// internal
reg                    poll;
begin
  poll = 1'b1;
  while (poll == 1'b1) begin
    @(negedge PCLK);
    PENABLE  = 1'b0;
    PSEL  = 1'b1;
    PADDR = a;
    PWRITE  = 1'b0;
    @(negedge PCLK);
    PENABLE  = 1'b1;
    @(negedge PCLK);
    PWRITE  = 1'b1;
    PENABLE  = 1'b0;
    PSEL  = 1'b0;
    poll = (PRDATA[bit] != v);
  end
end
endtask

endmodule
