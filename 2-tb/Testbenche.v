`timescale 1ns/1ps

module tb_mux4to1;
    reg [3:0] d;      // data inputs
    reg [1:0] sel;    // select lines
    wire y;           // output

    // Instantiate the MUX module
    mux4to1 uut (
        .y(y),
        .d(d),
        .sel(sel)
    );

    initial begin
        $display("----- Start of 4x1 MUX Test -----");
        $monitor("time=%0t | d=%b | sel=%b | y=%b", $time, d, sel, y);

        // Loop through all possible input values for d (0000 to 1111)
        for (d = 0; d < 16; d = d + 1) begin
            // For each input value, test all 4 select values (00, 01, 10, 11)
            for (sel = 0; sel < 4; sel = sel + 1) begin
                #5; // small delay between tests
            end
        end

        $display("----- End of Test -----");
        $finish;
    end
endmodule
