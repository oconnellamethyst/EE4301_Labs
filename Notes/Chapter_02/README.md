# EE4301 Textbook Notes, Chapter 2
## Chapter 2.3

An And gat going into an Or gate.

Page 65
```Verilog
assign #5 C = A && B;
assign #5 E = C || D;
```


The order is not important, this isn't sequential so this code is the same as
Page 65
```Verilog
assign #5 E = C || D;
assign #5 C = A && B;
```

Assignment statements have the form
Page 65
```Verilog
assign [#delay] signal_name = expression;
```

Verilog repeats and repeats as if it's a loop

This code is an inverter named CLK, it repeats over and over again (creating a clock signal perhaps?)
Page 66
```Verilog
assign #10 CLK = ~CLK;
```

Verilog is case sensitive, so this creates a different clock than the above
Page 66
```Verilog
assign #10 Clk = ~Clk;
```

Signal names in verilog cannot start with $ (reserved for system tasks) or a number. So Clk could be replaced with an infinite amount of identifiers. Here are some common ones
Page 66
```Verilog
adder
Mux_input
_error_code
Index_bit
vector_sz
_$five
Count
XOR
```

And here are some that would not work as identifiers and crash and horrifically burn your code
Page 67
```Verilog
4bitadder
$error_code
```

```Verilog
//this is an end of line comment
/* This is 
a multiline comment */
```
Statements are ended with a semicolon (;), and, or, and always are special words in verilog

Page 67
![Figure 2-5](https://github.com/oconnellamethyst/EE4301_Labs/blob/main/Notes/Chapter_02/FIGURE%202-5.png)
```Verilog
// when A changes, these concurrent
// statements all execute at the
// same time

	assign #2 D = A && B;
	assign #1 E = ~A;
	assign #3 F = A || C;
```

Each signal is a wire, and each wire is a boolean (a value of one or zero). We often work with cables tho, so to define multiple wires...
Page 67
```Verilog
wire B[3:0]; //creates B[3], ..., B[0]. Note there are 4 of them
```

Page 67
```Verilog
//net values are represented as
<number of bits>'<base><value>
//such as
1'b0
```

Page 67
```Verilog
B = 4'b1100 // Assigns 1 to B[3], 1 to B[2], 0 to B[1] and 0 to B[0]
```



