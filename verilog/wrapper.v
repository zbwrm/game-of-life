`timescale 1ns / 1ps

// havent touched verilog in a min, help w syntax?
module WRAPPER (input clk, _rst, // clock coming from system is 512Hz
                output row0, row1, row2, row3, row4, row5, row6, row7, // output reg row [7:0],
                output data0, data1, data2, data3, data4, data5, data6, data7); // output reg data [7:0]);
    // PINS
    // DATA
    //  JB rightmost 8 pins, counterclockwise (can be changed easily)
    // ROW
    //  JC rightmost 8 pins, see above
    
    // row is a one-hot encoding of the column thats being displayed Right Now
    // data is the data for the individual row right now
    
    // HIGH should be 3.3V
     
    
    
    wire grid [7:0][7:0];

    reg [3:0] count;
    reg [7:0] row;
    reg data [7:0];
    reg [9:0] divider;
    reg matrix_clk = clk; // freq. divide by 512 or 256 (whichever looks better)
    
    MATRIX cells(.clk(matrix_clk), ._rst(_rst), .grid(grid)); 
    
    assign row[0] = row0;
    assign row[1] = row1;
    assign row[2] = row2;
    assign row[3] = row3;
    assign row[4] = row4;
    assign row[5] = row5;
    assign row[6] = row6;
    assign row[7] = row7;
    
    assign data[0] = data0;
    assign data[1] = data1;
    assign data[2] = data2;
    assign data[3] = data3;
    assign data[4] = data4;
    assign data[5] = data5;
    assign data[6] = data6;
    assign data[7] = data7;
    
    always @ (clk) begin
        divider <= divider + 1;
        if (divider == 256) begin
            divider <= 0;
            matrix_clk <= ~matrix_clk;
        end
    end
    
    always @ (posedge clk, negedge _rst) begin
        if (~_rst) begin
            row[count] = 1;
            data = grid[count];
            count <= count + 1;
            row[count-1] = 0;
            if (count == 8) begin
                count <= 0;
            end
        end
    end
    
endmodule