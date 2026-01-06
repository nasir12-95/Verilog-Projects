# Single-Port RAM (Synchronous Write / Asynchronous Read)

## Overview
This project implements a **single-port RAM** in Verilog with:
- **Synchronous write** (on clock rising edge)
- **Asynchronous read**
- Parameterizable word width and memory size
- Testbench supporting **deterministic random reads** for verification

It is designed for **simulation, learning, and FPGA/ASIC prototyping**.

---

## RAM Module: `single_port_RAM`

```verilog
module single_port_RAM(
    data_out, data_in, addr, wr, cs, clk
);
```

## Ports
| Port       | Direction | Description                         |
| ---------- | --------- | ----------------------------------- |
| `data_in`  | Input     | Data to write into RAM              |
| `data_out` | Output    | Data read from RAM                  |
| `addr`     | Input     | Memory address                      |
| `wr`       | Input     | Write enable (synchronous)          |
| `cs`       | Input     | Chip select                         |
| `clk`      | Input     | Clock signal for synchronous writes |

## Behavior

* **Write:** On posedge clk, if wr and cs are high, data_in is written to mem[addr].
* **Read:** Asynchronous: data_out always reflects mem[addr].

## Testbench: RAM_tb
### Purpose

* Initialize memory with deterministic data
* Perform random reads using a fixed seed for repeatability
* Verify correct memory behavior

## Key Features
### 1. Clock
```verilog
always #5 clk = ~clk;
initial clk = 0;
```
* 10 ns period (100 MHz equivalent)
* Ensures synchronous writes

### 2. Memory Write

```verilog
@(posedge clk);
data_in = (k + k) % 256;
address = k;
write = 1;
select = 1;

@(posedge clk);
write = 0;
select = 0;
```
* Writes data sequentially to all 1024 locations
* Write occurs on clock edge, avoiding missed writes

### 3. Random Read

```verilog
address = $random(myseed) % 1024;
```
* ```$random(myseed)``` generates repeatable pseudo-random numbers
* ```% 1024``` ensures the address is within valid RAM range
* Fixed ```myseed = 35``` ensures deterministic behavior

## Recommended Practices and Improvements

* Align writes with clock edges
* Use deterministic random seeds for reproducibility
* Optionally, wrap ````$random```` with ````$unsigned```` to avoid negative addresses in the testbench:
````verilog
address = $unsigned($random(myseed)) % 1024;
````
* For FPGA BRAM use synchronous READ/WRITE:
````verilog
always @ (posedge clk) begin
    if (cs) begin
        if (wr) 
            mem[addr] <= data_in; // Write
            
        data_out <= mem[addr];    // Synchronous Read
    end
end
````