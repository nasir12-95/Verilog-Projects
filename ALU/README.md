# 4-bit / 8-bit ALU in Verilog

## Overview
This project implements a simple **Arithmetic Logic Unit (ALU)** in Verilog.  
The design starts with a **4-bit ALU** and is later extended to an **8-bit ALU** using parameterization.  
The ALU performs common arithmetic and logic operations, making it a fundamental building block in digital design and CPUs.

## Features
- 4-bit and 8-bit versions
- Supported operations:
  - 000 → Addition  
  - 001 → Subtraction  
  - 010 → AND  
  - 011 → OR  
  - 100 → XOR  
  - 101 → Shift Left  
  - 110 → Shift Right  
  - 111 → Pass-through (A)

- Carry-out flag for arithmetic operations
- Fully parameterized design for scalability
