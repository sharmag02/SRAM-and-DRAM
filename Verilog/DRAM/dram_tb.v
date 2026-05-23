`timescale 1ns/1ps

module dram_tb;

    reg clk;
    reg rst_n;
    reg ras_n, cas_n, we_n, cs_n;
    reg [6:0] addr;

    wire data;
    reg data_in;
    reg drive;

    assign data = (drive) ? data_in : 1'bz;

    dram_16k_x1 uut (
        .clk(clk),
        .rst_n(rst_n),
        .ras_n(ras_n),
        .cas_n(cas_n),
        .we_n(we_n),
        .cs_n(cs_n),
        .addr(addr),
        .data(data)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst_n = 0;
        ras_n = 1; cas_n = 1; we_n = 1; cs_n = 0;
        addr = 0; data_in = 0; drive = 0;

        #10 rst_n = 1;

        // ================= WRITE =================
        #10;
        addr = 7'd10; ras_n = 0; #10 ras_n = 1;

        addr = 7'd5;
        data_in = 1;
        drive = 1;
        we_n = 0;
        cas_n = 0; #10 cas_n = 1;
        drive = 0;

        // ================= READ =================
        #20;
        addr = 7'd10; ras_n = 0; #10 ras_n = 1;

        addr = 7'd5;
        we_n = 1;
        cas_n = 0; #10 cas_n = 1;

        #20;
        $finish;
    end

endmodule