# 256-bit SRAM Memory Block

This project delves into the inner workings of a Static Random-Access Memory (SRAM) cell by visualizing the various signals involved in read and write operations. It focuses on a specific cell located at Row 2, Column 3 within the memory.

Here's a breakdown of the analyzed signals:

* Data (V(d)): This graph represents the data being written to the cell.
* Word Line (V(WL1)): This signal activates the chosen row (Row 2 in this case) for both reading and writing.
* Cell State (V(Q)): This graph showcases the data stored within the cell itself (represented by a 1 or 0).
* Bit Line Precharge: This process prepares the bit line for reading by charging it to a high voltage (VDD) using a PMOS transistor.
* Read Operation: This sequence involves precharging the bit line, followed by a short delay and activation of the word line. The voltage change on the bit line after this delay determines whether a 1 or 0 is being read.

By analyzing these signals, this project provides a comprehensive understanding of how data is written to and retrieved from a specific SRAM cell.

# SRAM Cell Operation at WL1, BL18

![Vgraph](https://github.com/Corvus-Callosum/ECE-491-Advanced-Memory-Design/assets/53890816/f745f6c3-0f12-4722-ac15-7a72db579063)

* This graph illustrates the operation of a 256-bit SRAM cell. It depicts both read and write operations along with all relevant control signals applied simultaneously.
