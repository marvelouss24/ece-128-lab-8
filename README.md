# ece-128-lab-8
ECE 128 Lab 8. Design and Implementation of a sequential multiplier and combinational multiplier in Verilog using Vivado

### Project Description

### Instructions
In order to simulate the waveform for both the sequential multiplier, one must se the test bench file for it, sequential_multiplier_tb as the top simulation source with the design file and make sure the design file module, sequential_multiplier, is instantiated in the test bench. Once that is done, one can run the simulation on Vivado and the waveform should appear. The same can be done for the combinational multiplier. In order to implement the sequential multiplier on the FPGA, one must ensure that sequential_multiplier is the top design source, and then in Vivado run the synthesis, followed by the implementation. After those are completed, one can generate the bitstream and then open the hardware manager and program the device. If done correctly, you can follow the constraint file, sequential_constraint turn the reset on and off, and then follow the switches to do whatever four bit multiplication one desires. The process is the exact same for implementing the combinational multiplier except there is no reset and the multiplication can be done as soon as the board is programmed. 
