# FIR Filter (Verilog)

## Overview

This project implements a **Finite Impulse Response (FIR) filter** using **Verilog**.  
The filter processes an 8-bit input stream and produces a 20-bit filtered output using 22 symmetric coefficients.  

## FIR Filter Concept

A **Finite Impulse Response (FIR)** filter is a type of digital filter whose output depends only on the current and a finite number of past input samples.  
It performs the following operation:

$$
y[n] = \sum_{k=0}^{N} h[k]\cdot x[n-k]
$$

where:

- `h[k]` = filter coefficients  
- `x[n-k]` = delayed input samples  
- `N` = filter order (number of taps - 1)

This implementation uses **22 taps (order = 21)**.

## Features

- **Order:** 21 (22 coefficients)
- **Input width:** 8 bits  
- **Output width:** 20 bits  
- **Clocked (synchronous) design** using `posedge CLK_Filter`
- **Asynchronous active-low reset**
- Glitch-free output using non-blocking assignments (`<=`)
- Coefficients are **hard-coded** for demonstration

## Module Description

### Top Module: `fir_filter.v`

| Signal | Direction | Width | Description |
|:--------|:-----------|:--------|:-------------|
| `CLK_Filter` | Input | 1 | System clock |
| `rst_n` | Input | 1 | Asynchronous active-low reset |
| `filter_in` | Input | 8 | Input sample |
| `filter_out` | Output | 20 | Filtered output |

The design uses three main processes:

1. **Delay Pipeline** — Implements the shift register of previous input samples  
2. **Product Calculation** — Multiplies delayed samples with coefficients  
3. **Accumulation** — Adds all products to produce the final output

## Testbench: `fir_filter_tb.v`

The testbench applies an impulse input (`255` followed by zeros) to observe the full impulse response of the filter.

### Clock and Reset

- Clock period: 10 ns  
- Active-low reset for 20 ns  
