Power Dissipation Cell-DEVS

Steps to run the simulation:

1. make

2. ./EXEC.BAT

3. ./DRAW.BAT


FILES:
circuit.MA -- main file for simulation
circuit.VAL -- initial values for circuit specified in the report
circuit.drw -- original .drw file (*** will not view properly in CD++ Modelor because of the 3 planes)
circuit_mod.drw -- one plane from the circuit.drw file has been isolated for better viewing in the CD++ Modelor tool
powerCalc.drw -- load this file to view where the power is being dissipated in the 'chip' and to see the calculated internal power dissipation

buffer.cpp & buffer.h --- files needed for the zero delay buffer
register.cpp -- needed to 'make' the C++ code
makefile -- modified makefile that includes the entries needed to compile the buffer