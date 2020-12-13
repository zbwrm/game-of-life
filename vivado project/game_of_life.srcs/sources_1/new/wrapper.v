`timescale 1ns / 1ps

// havent touched verilog in a min, help w syntax?
module WRAPPER (input clk, _rst,
                output row, col);
    
    // HIGH should be 3.3V, not 5V for LED reasons 
     
    // row is the actual data of each row
    // col is a one-hot encoding of the column that's being displayed this split second
     
    // PINS
    // COLUMNS
    //  JB rightmost 8 pins, counterclockwise (can be changed easily)
    // ROWS
    //  JC rightmost 8 pins, see above
    
    // slow down clock a bit
        // pass slightly faster clock to row counter
        // basically PWM, displaying one row at a time
        // not toooo fast: dont wanna cycle LEDs too much? 
        // test this
    // pass slightly slower clock to GOL matrix so it updates, at most, 2 times/s
    // pass GOL out to row
        // intermediate matrix stage? probably won't need
    
endmodule