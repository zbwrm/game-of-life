# Conway's Game of Life
Authors: Aydin O'Leary (@zbwrm), Alex Butler (@lxbtlr), Sam Cabrera-Valencia (@SamCabV)

The goal of this project is to implement Conway's Game of Life in Verilog and use an FPGA to drive an LED matrix.
By the deadline, we landed somewhere between Minimum and Planned goals, as significant inroads were made on system integration with the FPGA.
A writeup of this project completed on 12/18/20 is available in `midmortem.pdf`.


## Use
### Logisim
1. Load the `final.circ` file available in `./logisim` into Logisim.
2. Navigate to the `0_test_fum` circuit.
3. Enable the `on` switch and the clock and watch it go!

### Python
To run the example (stock) board:
1. In the folder, run `constructor.py`

To run a custom board:
1. Go into `contructor.py` and make a n-by-n 2D array, filled with 1's and 0's.
2. Next go to the line instantiating the Constructor class `jon = Constructor(bigboard)` and replace bigboard with your 2D array
3. Run `constructor.py`


### Verilog
_note: initial conditions of the GOL can be changed in the `matrix.v` file_
1. Install the Vivado Design Suite software.
2. Learn how to use the software (allocate a decent amount of time for this).
3. Load the `game_of_life.xpr` project file.
4. Generate the bitstream using the Design Suite.
5. Connect the Zybo FPGA to your computer.
6. Connect your 8x8 LED matrix according to its specific pinout, taking care to load the diodes with resistors to prevent burnout.
7. [NOTE: THIS PART DOESN'T WORK YET. SEE TODO] Program the Zybo with the generated bitstream and watch it go!



## Deliverables
### Minimum
 - [CHECK] Code a functional Verilog implementation of Conway's Game of Life
 - [CHECK] Code a functional Python implentation of Conway's Game of Life
### Planned
 - [CHECK, almost] Create a functional small LED matrix that displays Conway's Game of Life driven by an FPGA
   - This is almost done, just needs a solid work day of bug-chasing to fully integrate the Verilog model with the display wrapper.
### Stretch
 - Implement different or user-defined cellular automaton rule sets
 - Use more colors
 - Drive larger LED matrices

## TODO
 - ~~Python implementation~~
 - ~~Solidify Verilog -> FPGA workflow (make LED light up)~~
 - ~~Verilog implementation~~
 - Drive LED matrix with Verilog
 - ~~Put Verilog implementation onto FPGA~~
