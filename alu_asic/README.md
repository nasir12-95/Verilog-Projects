# RTL to GDS Flow for an 8-bit ALU (OpenROAD + Nangate45)

## Overview

This project demonstrates a **complete RTL-to-GDS physical design flow** for a simple **8-bit Arithmetic Logic Unit (ALU)** using open-source tools.

The design is **purely combinational** (no clock), for learning digital ASIC implementation.

The flow includes:

* RTL design (Verilog)
* Logic synthesis
* Floorplanning
* Placement
* Power Distribution Network (PDN)
* Routing

---

# Tools Used

| Tool      | Purpose                                         |
| --------- | ----------------------------------------------- |
| Yosys     | RTL synthesis                                   |
| OpenROAD  | Physical design (floorplan, placement, routing) |
| Nangate45 | Open standard cell library                      |

---

# Technology

**Standard Cell Library:** Nangate45
**Process Node:** 45nm

Library files used:

* `Nangate45_tech.lef`
* `Nangate45_stdcell.lef`
* `Nangate45_typ.lib`

---

# Project Structure

```
project/
│
├── rtl/
│   ├── alu.v                # RTL design of 8-bit ALU
│   ├── alu_sim
│   └── alu_tb.v
│
├── synth/
│   ├── alu_syn.v            # synthesized netlist
│   ├── alu_syn.json
│   └── synth.tcl           # TCL script for synthesis
│
├── scripts/
│   └── flow.tcl             # OpenROAD RTL→GDS flow
│   ├── alu_logfile.log
│   ├── alu_nan45.tcl
│   ├── flow_helpers.tcl
│   ├── helpers.tcl
|   └── results/
│       ├── alu_nangate45_route-tcl.def
│       ├── alu_nangate45_repaired_route-tcl.odb
│       ├── alu_nagate45-tcl.v
│       └── alu_nangate45_route_drc-tcl.drc    
│
└── README.md
```

---

# ALU Design

The ALU supports several operations based on the **operation select signal (`op`)**.

| Opcode | Operation   |
| ------ | ----------- |
| 000    | Addition    |
| 001    | Subtraction |
| 010    | AND         |
| 011    | OR          |
| 100    | XOR         |
| 101    | Shift Left  |
| 110    | Shift Right |

Inputs:

```
A[7:0]
B[7:0]
op[2:0]
```

Output:

```
Y[7:0]
```

Since the design is **combinational**, the flow **does not require**:

* Clock Tree Synthesis (CTS)
* Timing constraints (SDC)

---

# RTL → GDS Flow Steps

## 1. Synthesis

RTL is synthesized using **Yosys** to generate a gate-level netlist.

Output:

```
alu_syn.v
```

---

## 2. Floorplanning

Defines the **die area** and **core area**.

Example:

```
die_area  = {0 0 200 200}
core_area = {20 20 180 180}
```

Standard cell rows are created within the core.

---

## 3. Placement

Cells are automatically placed within the core.

Steps include:

* Global placement
* Detailed placement

---

## 4. Power Distribution Network (PDN)

Power rails are generated for:

```
VDD
VSS
```

This ensures proper power delivery across the chip.

---

## 5. Global Routing

Routing paths are estimated to determine congestion and routing feasibility.

---

## 6. Detailed Routing

Exact routing tracks are assigned to connect all nets.

Outputs:

```
DRC report
Maze routing logs
```

---

# Running the Flow

## Step 1 — Run synthesis (Yosys)

Example:

```
yosys 
scripts synth.tcl
```

This generates:

```
synth/alu_syn.v
```

---

## Step 2 — Run OpenROAD

Launch OpenROAD and run the flow:

```
openroad -gui -log alu_logfile.log alu_nan45.tcl
```

---

# Common Issues

### PDN strap width error

```
PDN-0185 Insufficient width
```

Solution:
Increase the **die/core area**.

---

### Pin placer error

```
PPL-0017 -hor_layers required
```

Solution:
Define IO routing layers or skip pin placement.

---

### Ground net routing error

```
DRT-0305 Net zero_ not routable
```

Solution:
Mark tie nets as **special power nets**.

---

# Learning Goals

This project helps understand:

* ASIC physical design flow
* Standard cell placement
* Power grid generation
* Chip routing

---

# Future Improvements

Possible extensions:

* Add a **clocked ALU**
* Add **pipeline registers**
* Implement **timing constraints**
* Perform **Static Timing Analysis (STA)**
* Generate **timing reports**
