# Multiplication by Repeated Addition (Datapath + Controller)

## Overview

This project implements multiplication using repeated addition in Verilog HDL, based on a Datapath and Controller (FSM) architecture.

The design multiplies two 16-bit unsigned numbers:
$$P = A \times B$$
by repeatedly adding A to an accumulator P, while decrementing B until it reaches zero.

## Design Architecture

The system is split into two major blocks:

* Datapath performs data operations
* Controller sequences operations using a finite state machine (FSM)

## Internal Components

| Module  | Function                  |
| ------- | ------------------------- |
| `PIPO1` | Register A (multiplicand) |
| `CNTR`  | Counter B (multiplier)    |
| `PIPO2` | Accumulator P (product)   |
| `ADD`   | Adds A and P              |
| `EQZ`   | Detects when B = 0        |

## Datapath Operation

1. Load A from data_in
2. Load B from data_in
3. Clear P
4. Loop:
    * P ← P + A
    * B ← B − 1
5. Stop when B = 0

## Controller (FSM) Description

| State | Name             | Description                    |
| ----- | ---------------- | ------------------------------ |
| `S0`  | Idle             | Wait for `start`               |
| `S1`  | Load A           | Load multiplicand              |
| `S2`  | Load B / Clear P | Initialize counter and product |
| `S3`  | Multiply Loop    | Add A to P and decrement B     |
| `S4`  | Done             | Assert `done`                  |

## Control Signal Behavior

| State | ldA | ldB | ldP | clrP | decB | done |
| ----- | --- | --- | --- | ---- | ---- | ---- |
| S0    | 0   | 0   | 0   | 0    | 0    | 0    |
| S1    | 1   | 0   | 0   | 0    | 0    | 0    |
| S2    | 0   | 1   | 0   | 1    | 0    | 0    |
| S3    | 0   | 0   | 1   | 0    | 1    | 0    |
| S4    | 0   | 0   | 0   | 0    | 0    | 1    |

## Conclusion

This project demonstrates a classic RTL design pattern using:

* Datapath + Controller separation
* Finite State Machine control
