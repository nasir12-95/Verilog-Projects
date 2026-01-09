# 32×32 Register Bank with Reset

## Overview

This project implements a **32-register × 32-bit register file** in Verilog with:

* Two **asynchronous read ports**
* One **synchronous write port**
* **Synchronous reset** that clears all registers

A self-checking **testbench** is included to verify reset, write, and read functionality.

This style of register bank is commonly used in MIPS32 architecture.

---

## Module Description

### `regbank` Module

#### Ports

| Signal    | Width | Direction | Description                              |
| --------- | ----- | --------- | ---------------------------------------- |
| `clk`     | 1     | input     | Clock signal (positive edge triggered)   |
| `reset`   | 1     | input     | Synchronous reset (clears all registers) |
| `write`   | 1     | input     | Write enable                             |
| `sr1`     | 5     | input     | Source register 1 address                |
| `sr2`     | 5     | input     | Source register 2 address                |
| `dr`      | 5     | input     | Destination register address             |
| `wrData`  | 32    | input     | Data to be written                       |
| `rdData1` | 32    | output    | Data read from `sr1`                     |
| `rdData2` | 32    | output    | Data read from `sr2`                     |

#### Internal Structure

* `regfile[0:31]`: Array of 32 registers, each 32 bits wide
* Reads are **combinational (asynchronous)**
* Writes occur on the **positive clock edge** when `write = 1`
* Reset clears all registers using a `for` loop

## Testbench Description

### `regbank_test`

The testbench verifies:

1. Reset clears all registers
2. Writing values to all 32 registers
3. Reading back values in pairs

### Test Sequence

1. Assert reset
2. Deassert reset
3. Write `10 × register_index` into each register
4. Read and display register values

Example output:

```
reg[ 0] = 0,   reg[ 1] = 10
reg[ 2] = 20,  reg[ 3] = 30
...
```

---

## Simulation Instructions

### Using Icarus Verilog

```bash
iverilog -o regbank.vvp regbank.v regbank_test.v
vvp regbank.vvp
gtkwave regbank.vcd
```

## File Structure

```text
├── regbanvk.v
├── regbank_test.v
├── regbank.vvp
├── regbank.vcd
└── README.md
```
