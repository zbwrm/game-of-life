`timescale 1ns / 1ps

// havent touched verilog in a min, help w syntax?
module WRAPPER (input clk, _rst, // clock coming from system is 512Hz
                output reg row [7:0],
                output reg data [7:0]);
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
    reg [9:0] divider;
    reg matrix_clk = clk; // freq. divide by 512 or 256 (whichever looks better
    
    cells MATRIX(.clk(matrix_clk), ._rst(_rst), .grid(grid)); 
    
    always @ (posedge clk, negedge clk) begin
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