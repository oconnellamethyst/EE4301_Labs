# EE4301 Textbook Notes, Chapter 6
## Chapter 6.1

Page ##
```Verilog
int* = ptr;
ptr = &i; // Pointer now holds the location of i as an integer storage location
```


Page 342

Let us assume that we want to design a 4-to-1 multiplexer using an FPGA whose logic block is represented by Figure 6-1(a).

![Figure 6-1](https://github.com/oconnellamethyst/EE4301_Labs/blob/main/Notes/Chapter_06/FIGURE%206-1.png)

The latched outputs are QX and QY; the combinational outputs are X and Y.

Page 342

Output equation for the multiplexer:
M = S1'So'Io + S1'SoI1 + S1SoI2 + S1SoI3

A 4-to-1 multiplexer can be decomposed into three 2-to-1 multiplexers as illustrated in Figure 6-1(b):
M1 = So'I0 + SoI1
M2 = So'I2 + SoI3

A third 2-to-1 multiplexer must now be used to create the output of the 4-to-1 multiplexer:
M = S1'M1 + S1 M2


Page 343

Many modern FPGAs use a 4-input look-up table (LUT) as a basic building block. 
Many designers refer to this building block as LUT4.

![Figure 6-2](https://github.com/oconnellamethyst/EE4301_Labs/blob/main/Notes/Chapter_06/FIGURE%206-2.png)


