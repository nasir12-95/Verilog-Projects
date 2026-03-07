# FIFO RTL-to-GDS Flow using OpenROAD

This project demonstrates a **complete RTL-to-GDSII physical design flow** for a FIFO module using **OpenROAD** and the **Nangate45 standard cell library**.

The flow performs synthesis input loading, floorplanning, placement, clock tree synthesis, routing, parasitic extraction, and final timing and power analysis.

---

# Project Structure

```
fifo_asic/
│
├── rtl/
│   ├── fifo.v
│   ├── fifo
│   └── fifo_tb.v
│
├── syn/
│   ├── synth.tcl
│   ├── fifo_syn.json
│   ├── fifo_syn.v              # Synthesized FIFO netlist
│   └── reports/
│       ├── area.rpt
│       └── cells.rpt
│
├── sta/
│   ├── sta.tcl
│   └── reports/
│       ├── timing_max.rpt
│       └── timing_min.rpt
│
├── constraints/
│   └── fifo.sdc                # Timing constraints
│
├── results/                    # Generated results
│   ├── fifo_nangate45_route-tcl.def
│   ├── fifo_nangate45_route-tcl.db
│   ├── fifo_nangate45-tcl.spef
│   ├── fifo_nangate45-tcl.v
│   └── fifo_nangate45_route_drc-tcl.rpt
│
├── fifo_nan45.tcl              # Design configuration
├── flow.tcl                    # Main RTL-to-GDS flow
├── helpers.tcl                 # Helper functions
├── flow_helpers.tcl            # Flow utilities
└── README.md
```

---

# Flow Overview

The design flow includes the following stages:

### 1. Design Initialization

* Load technology libraries
* Read synthesized Verilog netlist
* Link top module
* Load SDC constraints

### 2. Automatic Floorplanning

The core and die area are automatically calculated based on the design area and target utilization.

```
Core Area = Design Area / Utilization
```

Margins are added to provide space for routing and power structures.

---

### 3. Global Placement

Standard cells are placed within the core area to minimize wirelength and congestion.

---

### 4. I/O Placement

Pins are placed along the boundary of the core.

---

### 5. Detailed Placement

Legalizes placement and fixes spacing violations.

---

### 6. Clock Tree Synthesis (CTS)

Buffers are inserted to distribute the clock signal and minimize skew.

---

### 7. Global Routing

Generates approximate routing paths for timing estimation.

---

### 8. Detailed Routing

Performs exact routing of all nets and generates a routing DRC report.

---

### 9. Antenna Repair

Fixes antenna violations introduced during routing.

---

### 10. Parasitic Extraction

Extracts RC parasitics and generates a SPEF file.

---

### 11. Final Timing and Power Analysis

Final static timing analysis is performed with extracted parasitics.

Reports generated include:

* Worst Slack
* Total Negative Slack (TNS)
* Clock Skew
* Power Consumption

---

## RTL Simulation

Compile and run simulation using **Icarus Verilog**:

```
iverilog -o fifo fifo.v fifo_tb.v
vvp fifo
```
---

## Synthesis (Yosys)

Run synthesis:

```
yosys 
script synth.tcl
```

Outputs generated:

```
fifo_syn.v
fifo_syn.json
reports/area.rpt
reports/cells.rpt
```

---

## Physical Design Flow (OpenROAD)

Run the RTL-to-GDS flow:

```
openroad -gui -log fifo_logfile.log fifo_nan45.tcl
```

Major steps executed:

1. Read synthesized netlist
2. Floorplan generation
3. Power distribution network (PDN)
4. Placement
5. Clock tree synthesis
6. Global routing
7. Detailed routing

---

# Output Files

After a successful run, the following files are generated in the `results/` directory:

| File                           | Description          |
| ------------------------------ | -------------------- |
| `fifo_nangate45_route-tcl.def`     | Routed DEF layout    |
| `fifo_nangate45_route-tcl.db`      | OpenROAD database    |
| `fifo_nangate45-tcl.v`             | Final netlist        |
| `fifo_nangate45-tcl.spef`          | Extracted parasitics |
| `fifo_nangate45_route_drc-tcl.rpt` | Routing DRC report   |

---

# Timing Reports

Final timing reports include:

```
report_worst_slack
report_tns
report_clock_skew
report_checks
```

These reports evaluate setup and hold timing of the design.

---

# Power Analysis

Power consumption is estimated using:

```
report_power
```

Power components include:

* Internal Power
* Switching Power
* Leakage Power

---

# DRC Checking

Routing DRC violations are reported during detailed routing:

```
detailed_route -output_drc fifo_nangate45_route_drc-tcl.rpt
```

If the report is empty, it indicates **no routing DRC violations were detected**.

---

## Tools Used

| Tool     | Purpose                                |
| -------- | -------------------------------------- |
| Yosys    | RTL synthesis                          |
| OpenROAD | Floorplanning, placement, CTS, routing |
| OpenSTA  | Static timing analysis                 |

---

# License

This project is intended for **educational and research purposes** demonstrating an open-source ASIC design flow.
