# GCD Computation Using Datapath and Controller (FSM)

## Overview

This project implements a Greatest Common Divisor (GCD) computation unit using the subtraction-based Euclidean algorithm, designed in Verilog HDL.
The architecture follows a classical hardware design methodology by separating the system into:

* Datapath – performs arithmetic and comparisons
* Controller (FSM) – generates control signals based on comparisons

## Architecture

### Datapath Components

The datapath performs arithmetic and comparison operations.

| Module         | Description                              |
| -------------- | ---------------------------------------- |
| `PIPO`         | 16-bit Parallel-In Parallel-Out register |
| `SUB`          | 16-bit subtractor                        |
| `COMPARE`      | Compares two operands (`lt`, `gt`, `eq`) |
| `MUX`          | Selects operands and input sources       |
| `GCD_datapath` | Integrates all datapath components       |

### Controller (FSM)

The controller is a finite state machine that:

* Loads initial inputs
* Decides which register to update
* Stops computation when A == B

#### FSM States

| State | Description              |
| ----- | ------------------------ |
| `S0`  | Load first input into A  |
| `S1`  | Load second input into B |
| `S2`  | Compare A and B          |
| `S3`  | Update B (B = B − A)     |
| `S4`  | Update A (A = A − B)     |
| `S5`  | Done state (GCD found)   |

## File Structure

```text
├── PIPO.v
├── SUB.v
├── COMPARE.v
├── MUX.v
├── Controller.v
├── GCD_datapath.v
└── README.md
```

## Conclusion

This project demonstrates a textbook-quality implementation of a GCD computation unit using FSM-controlled datapath design.
