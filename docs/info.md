## How it works

This project implements a simple General Purpose Register (GPR) processor using Verilog.

The processor contains a small register file and control logic that allows data to be written to and read from registers based on control inputs. The design demonstrates basic digital processor concepts such as register storage, data movement, and synchronous operation.

The module operates with a clock input and performs register operations on every clock edge. Inputs select the register address and control the read/write operation, while the processed data is available at the output pins.

This design serves as a demonstration of a minimal processor-style register system implemented for the Tiny Tapeout ASIC platform.

## How to test

1. Apply a clock signal to the design.
2. Provide input data and register address through the input pins.
3. Enable the write control signal to store data into a selected register.
4. Disable the write signal and select the register address to read the stored data.
5. Observe the output pins to verify that the correct data is retrieved from the register.

The functionality can also be verified through simulation using the provided Verilog testbench.

## External hardware

No external hardware is required. The design can be tested using simulation or through the Tiny Tapeout test infrastructure.<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.

