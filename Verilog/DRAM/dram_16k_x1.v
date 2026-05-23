`timescale 1ns/1ps

module dram_16k_x1 (
    input  wire clk,
    input  wire rst_n,

    input  wire ras_n,
    input  wire cas_n,
    input  wire we_n,
    input  wire cs_n,

    input  wire [6:0] addr,

    inout  wire data
);

    // ==================================================
    // MEMORY ARRAY
    // ==================================================
    (* ram_style = "block" *) reg mem [0:16383];

    // ==================================================
    // ADDRESS LATCHES
    // ==================================================
    reg [6:0] row_addr;
    reg [6:0] col_addr;

    wire [13:0] full_addr;
    assign full_addr = {row_addr, col_addr};

    // ==================================================
    // DATA BUFFER
    // ==================================================
    reg data_out;
    reg data_drive;

    assign data = (data_drive) ? data_out : 1'bz;

    // ==================================================
    // MAIN OPERATION
    // ==================================================
    always @(posedge clk or negedge rst_n) begin

        if (!rst_n) begin
            row_addr   <= 0;
            col_addr   <= 0;
            data_out   <= 0;
            data_drive <= 0;
        end
        else begin

            // Disable output by default
            data_drive <= 0;

            // ==========================================
            // LATCH ROW ADDRESS
            // ==========================================
            if (!cs_n && !ras_n)
                row_addr <= addr;

            // ==========================================
            // LATCH COLUMN ADDRESS
            // ==========================================
            if (!cs_n && !cas_n)
                col_addr <= addr;

            // ==========================================
            // MEMORY OPERATION
            // ==========================================
            if (!cs_n && !cas_n) begin

                // WRITE
                if (!we_n) begin
                    mem[full_addr] <= data;
                end

                // READ
                else begin
                    data_out   <= mem[full_addr];
                    data_drive <= 1;
                end
            end
        end
    end

endmodule