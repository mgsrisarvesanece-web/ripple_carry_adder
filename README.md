# ripple_carry_adder
4-bit Ripple Carry Adder implemented in Verilog using AMD Vivado. Includes modular full adder design, structural instantiation, behavioral simulation, RTL schematic analysis, and synthesis flow exploration to understand carry propagation and FPGA optimization behavior.
4-Bit Ripple Carry Adder (Verilog | Vivado)

This project implements a 4-bit Ripple Carry Adder using structural Verilog in Xilinx Vivado.

🔹 Features

Modular Full Adder design

Hierarchical instantiation (4 FA blocks)

Behavioral simulation with testbench

Waveform verification

RTL Elaborated schematic analysis

Synthesis flow exploration

🔹 Project Structure
full_adder_a.v     → 1-bit Full Adder module
rca_1.v            → 4-bit Ripple Carry Adder (top module)
rca_tb.v           → Testbench for simulation

🔹 Functionality

The adder performs:

Sum = A + B + Cin


Carry propagates sequentially from LSB to MSB (ripple effect).

🔹 Tools Used

Xilinx Vivado 2025.2

Verilog HDL

🔹 Key Learning Outcomes

Simulation vs Synthesis behavior

RTL hierarchy and schematic visualization

Carry propagation mechanism

FPGA optimization effects
