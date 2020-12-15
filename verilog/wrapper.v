`timescale 1ns / 1ps
`include "lib/tff.v"

// havent touched verilog in a min, help w syntax?
module WRAPPER (input clk, _rst, // clock coming from system is 512Hz
//                output row0, row1, row2, row3, row4, row5, row6, row7, // output reg row [7:0],
//                output data0, data1, data2, data3, data4, data5, data6, data7); // output reg data [7:0]);
                output reg [7:0] row, reg [7:0] data_inv);
        
    // PINS
    // DATA
    //  JB rightmost 8 pins, counterclockwise (can be changed easily)
    // ROW
    //  JC rightmost 8 pins, see above
    
    // row is a one-hot encoding of the column thats being displayed Right Now
    // data is the data for the individual row right now
    
    // HIGH should be 3.3V
     
    
    
    wire [7:0][7:0] grid;
    reg [7:0] data;
    reg [3:0] count;
//    reg [7:0] row;
//    reg data [7:0];
    reg [9:0] divider;
    reg clk_256;
    reg clk_128;
    reg clk_64;
    reg clk_32;
    reg clk_16;
    reg clk_8;
    reg clk_4;
    reg clk_2;
    reg clk_1;
    
    // freq. divide by 512 or 256 (whichever looks better)
    
    TFF #5 to_256(clk, _rst, 1, clk_256);
    TFF #5 to_128(clk_256, _rst, 1, clk_128);
    TFF #5 to_64(clk_128, _rst, 1, clk_64);
    TFF #5 to_32(clk_64, _rst, 1, clk_32);
    TFF #5 to_16(clk_32, _rst, 1, clk_16);
    TFF #5 to_8(clk_16, _rst, 1, clk_8);
    TFF #5 to_4(clk_8, _rst, 1, clk_4);
    TFF #5 to_2(clk_4, _rst, 1, clk_2);
    TFF #5 to_1(clk_2, _rst, 1, clk_1);

//    assign row[0] = 1;
//    assign data[0] = 0;

    MATRIX cells(.clk(clk_1), ._rst(_rst), .grid(grid)); 
    
//    assign row[0] = row0;
//    assign row[1] = row1;
//    assign row[2] = row2;
//    assign row[3] = row3;
//    assign row[4] = row4;
//    assign row[5] = row5;
//    assign row[6] = row6;
//    assign row[7] = row7;
    
//    assign data[0] = ~data0;
//    assign data[1] = ~data1;
//    assign data[2] = ~data2;
//    assign data[3] = ~data3;
//    assign data[4] = ~data4;
//    assign data[5] = ~data5;
//    assign data[6] = ~data6;
//    assign data[7] = ~data7;
    always_comb
        for (int i = 0; i <= 7; i++)
            data_inv[i] = ~data[i];
    always @ (posedge clk_2, negedge _rst) begin
        if (~_rst) begin
            row[count] <= 1;
            data <= grid[count][7:0];
            count <= count + 1;
            row[count-1] <= 0;
            if (count == 8) begin
                count <= 0;
            end
        end
    end

endmodule
