# Booth’s Multiplier (Verilog Implementation)

## Overview

This project implements a signed Booth’s Multiplication algorithm in Verilog HDL using a Controller–Datapath architecture.
It supports multiplication of 16-bit signed integers and produces a 32-bit signed result.

The design closely follows the textbook Booth’s algorithm, making it ideal for:

* Digital Design coursework
* Computer Architecture learning
* FSM + Datapath practice
* Signed arithmetic implementation in hardware

## Booth’s Algorithm (Brief)

Booth’s algorithm optimizes signed multiplication by:

* Examining the current multiplier bit Q0 and the previous bit Q-1
* Deciding whether to:
  * Add multiplicand
  * Subtract multiplicand
* Performing an arithmetic right shift
* Repeating for n bits

Decision table:

| Q0 | Q-1 | Operation          |
| -- | --- | ---------          |
| 0  | 0   | Only Shift         |
| 0  | 1   | Add M and Shift    |
| 1  | 0   | Sub M and Shift    |
| 1  | 1   | Only Shift         |

## Architecture

### Datapath (BOOTH module)

Contains:

* A register (Accumulator)
* Q register (Multiplier)
* M register (Multiplicand)
* QM1 flip-flop (Q-1)
* ALU (Add/Subtract)
* Arithmetic right shifter
* Down counter (iteration control)

### Controller (FSM)

A Moore FSM controls the datapath:

* Initialization
* Booth decision
* Add/Subtract
* Shift
* Count decrement
* Done signal generation

### Supporting Modules

| Module     | Description                       |
| ---------- | --------------------------------- |
| `shiftReg` | Arithmetic shift register         |
| `PIPO`     | Parallel-in Parallel-out register |
| `DFF`      | Stores Q-1 bit                    |
| `ALU`      | Add/Subtract unit                 |
| `Counter`  | Iteration counter                 |
