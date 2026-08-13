# Half Subtractor Using Verilog

## Project Overview

A Half Subtractor is a combinational logic circuit used to subtract one binary bit from another binary bit.

It has two inputs:

* A - Minuend
* B - Subtrahend

It produces two outputs:

* Difference
* Borrow

The Half Subtractor performs:

```text
A - B
```

## Objective

The objectives of this project are:

* To understand the working principle of a Half Subtractor.
* To implement a Half Subtractor using Verilog HDL.
* To create a Verilog testbench.
* To simulate the design.
* To verify the Difference and Borrow outputs for all possible input combinations.

## Logic Equations

The Difference output is:

```text
Difference = A XOR B
```

The Borrow output is:

```text
Borrow = A' AND B
```

In Verilog:

```text
Difference = A ^ B
Borrow = (~A) & B
```

## Truth Table

| A | B | Difference | Borrow |
| - | - | ---------- | ------ |
| 0 | 0 | 0          | 0      |
| 0 | 1 | 1          | 1      |
| 1 | 0 | 1          | 0      |
| 1 | 1 | 0          | 0      |

## Block Diagram

```text
             ┌───────────────┐
       A ───►│               │
             │ Half          │───► Difference
       B ───►│ Subtractor    │
             │               │───► Borrow
             └───────────────┘
```

## Files

| File                      | Description           |
| ------------------------- | --------------------- |
| `README.md`               | Project documentation |
| `half_subtractor.v`       | Verilog design code   |
| `tb_half_subtractor.v`    | Verilog testbench     |
| `simulation/waveform.png` | Simulation waveform   |

## Verilog Design

The Half Subtractor is implemented using XOR and AND operations.

```text
Difference = A ^ B
Borrow = (~A) & B
```

## Simulation

The testbench applies all four possible combinations of inputs:

```text
00
01
10
11
```

The outputs are monitored and displayed.

Expected simulation results:

```text
A  B  Difference  Borrow
0  0      0         0
0  1      1         1
1  0      1         0
1  1      0         0
```

## Tools Required

This project can be simulated using:

* Icarus Verilog
* GTKWave
* ModelSim
* QuestaSim
* Vivado Simulator

## Running the Simulation Using Icarus Verilog

Compile the design and testbench:

```bash
iverilog -o half_subtractor_sim half_subtractor.v tb_half_subtractor.v
```

Run the simulation:

```bash
vvp half_subtractor_sim
```

The testbench generates:

```text
half_subtractor.vcd
```

Open the waveform using GTKWave:

```bash
gtkwave half_subtractor.vcd
```

Add the following signals to the waveform:

```text
A
B
Difference
Borrow
```

## Expected Result

The simulation should match the Half Subtractor truth table.

When `A = 0` and `B = 1`, the Difference is `1` and Borrow is `1`.

For all other combinations, the outputs should follow the truth table.

## Applications

Half Subtractors are used as basic building blocks in:

* Binary arithmetic circuits
* Digital calculators
* Arithmetic Logic Units
* Digital processors
* Binary subtraction circuits
* Full Subtractor circuits

## Conclusion

The Half Subtractor was successfully designed using Verilog HDL. The testbench verifies all possible input combinations, and the simulation confirms that the Difference and Borrow outputs match the expected truth table.
