`timescale 1ns/1ps

module ssram_tb;

parameter ADDR_WIDTH = 4;
parameter DATA_WIDTH = 8;

reg CLK;
reg CS;
reg ADS_L;
reg GW_L;
reg OE;
reg [ADDR_WIDTH-1:0] ADDR;

wire [DATA_WIDTH-1:0] DIO;

reg  [DATA_WIDTH-1:0] drive_data;
reg                   drive_enable;

//--------------------------------------------------
// Bidirectional Bus Driver
//--------------------------------------------------
assign DIO = (drive_enable) ? drive_data : 8'bz;

//--------------------------------------------------
// DUT
//--------------------------------------------------
ssram uut (
    .CLK(CLK),
    .CS(CS),
    .ADS_L(ADS_L),
    .GW_L(GW_L),
    .OE(OE),
    .ADDR(ADDR),
    .DIO(DIO)
);

//--------------------------------------------------
// Clock Generation
//--------------------------------------------------
initial
begin
    CLK = 0;
    forever #5 CLK = ~CLK;
end

//--------------------------------------------------
// Stimulus
//--------------------------------------------------
initial
begin

    //--------------------------------------------------
    // Initialize
    //--------------------------------------------------
    CS = 0;
    ADS_L = 1;
    GW_L = 1;
    OE = 0;
    ADDR = 0;

    drive_data = 0;
    drive_enable = 0;

    //--------------------------------------------------
    // VCD Dump
    //--------------------------------------------------
    $dumpfile("ssram.vcd");
    $dumpvars(0, ssram_tb);

    //--------------------------------------------------
    // Start Device
    //--------------------------------------------------
    #20;

    CS = 1;
    OE = 1;

    //--------------------------------------------------
    // WRITE OPERATION
    //--------------------------------------------------

    @(posedge CLK);
    ADS_L = 0;
    GW_L  = 0;
    ADDR  = 4'b0011;

    drive_enable = 1;
    drive_data   = 8'hA5;

    @(posedge CLK);
    ADS_L = 1;

    @(posedge CLK);
    GW_L = 1;
    drive_enable = 0;

    //--------------------------------------------------
    // READ OPERATION
    //--------------------------------------------------

    @(posedge CLK);
    ADS_L = 0;
    GW_L  = 1;
    ADDR  = 4'b0011;

    @(posedge CLK);
    ADS_L = 1;

    //--------------------------------------------------
    // Additional Reads
    //--------------------------------------------------

    @(posedge CLK);
    ADDR = 4'b0100;

    @(posedge CLK);
    ADDR = 4'b0101;

    //--------------------------------------------------
    // Finish
    //--------------------------------------------------

    #100;
    $finish;

end

endmodule