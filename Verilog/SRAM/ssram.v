`timescale 1ns/1ps

module ssram #(
    parameter ADDR_WIDTH = 4,
    parameter DATA_WIDTH = 8,
    parameter DEPTH = 16
)(
    input                       CLK,
    input                       CS,
    input                       ADS_L,
    input                       GW_L,
    input                       OE,
    input      [ADDR_WIDTH-1:0] ADDR,
    inout      [DATA_WIDTH-1:0] DIO
);

// Internal Memory Array

reg [DATA_WIDTH-1:0] SRAM_array [0:DEPTH-1];


// Internal Registers

reg [ADDR_WIDTH-1:0] AREG;
reg                  CREG;
reg [DATA_WIDTH-1:0] INREG;
reg [DATA_WIDTH-1:0] OUTREG;


// Internal Signals

reg [DATA_WIDTH-1:0] DOUT;
reg                  write_enable;
reg                  read_enable;


// Bidirectional Data Bus

assign DIO = (CS && OE && !GW_L) ? {DATA_WIDTH{1'bz}} :
             (CS && OE && GW_L)  ? OUTREG :
             {DATA_WIDTH{1'bz}};


// Address Register (AREG)

always @(posedge CLK)
begin
    if(CS && !ADS_L)
    begin
        AREG <= ADDR;
    end
end


// Control Register (CREG)

always @(posedge CLK)
begin
    if(CS)
    begin
        CREG <= GW_L;
    end
end


// Input Register (INREG)

always @(posedge CLK)
begin
    if(CS && !GW_L)
    begin
        INREG <= DIO;
    end
end


// Write Operation

always @(posedge CLK)
begin
    if(CS && !GW_L)
    begin
        SRAM_array[AREG] <= INREG;
    end
end


// Read Operation

always @(posedge CLK)
begin
    if(CS && GW_L)
    begin
        DOUT <= SRAM_array[AREG];
    end
end


// Output Register (OUTREG)

always @(posedge CLK)
begin
    if(CS && GW_L)
    begin
        OUTREG <= DOUT;
    end
end

endmodule