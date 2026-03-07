# UART Transmitter — RTL to GDS Flow (OpenROAD + Nangate45)

## Overview

This project implements a **UART Transmitter (TX)** in Verilog and runs a complete **RTL → GDSII ASIC flow** using open-source tools.

The design demonstrates a typical digital implementation used in SoCs for **serial communication**, including:

* Finite State Machine (FSM)
* Shift register based serial transmission
* Clock division for baud rate generation
* Start bit, data bits, and stop bit framing

The project also demonstrates a **complete physical design flow** using **OpenROAD** and the **Nangate45 standard cell library**.

---

## Design Features

| Feature            | Description                |
| ------------------ | -------------------------- |
| Protocol           | UART TX                    |
| Data width         | 8 bits                     |
| Frame format       | Start + 8 Data + Stop      |
| Transmission order | LSB first                  |
| Clocking           | Single clock domain        |
| Control signals    | `start`, `busy`, `tx_done` |

---

## Directory Structure

```
uart_asic/
│
├── rtl/
│   ├── uart_tx.v
│   ├── uart_tx_sim
│   ├── uart_tx.vcd
│   └── tb_uart_tx.v
│
├── synth/
│   ├── synth.tcl
│   ├── uart_tx_syn.json
│   └── uart_tx_syn.v
│
├── sta/
│   ├── post_layout_sta.tcl
│   ├── uart_sta.tcl
│   └── reports/
│       ├── post_layout_timing_max.rpt
│       ├── post_layout_timing_min.rpt
│       ├── timing_max.rpt
│       └── timing_min.rpt
│
├── constraints/
│   └── uart_tx.sdc
│
├── scripts/
│   ├── def2gds.py
│   ├── flow.tcl
│   ├── uart_tx_logfile.log
│   ├── uart_tx_nan45.tcl
│   └── results/
│
├── reports/
│   ├── area.rpt
│   └── cells.rpt
│
└── README.md
```

---

## Tools Used

| Tool     | Purpose                                |
| -------- | -------------------------------------- |
| Yosys    | RTL synthesis                          |
| OpenROAD | Floorplanning, placement, CTS, routing |
| OpenSTA  | Static timing analysis                 |
| Python   | DEF → GDS merging                      |
| GTKWave  | Simulation waveform viewer             |
| KLayout  | For layout inspection                  |

---

## RTL Simulation

Compile and run simulation using **Icarus Verilog**:

```
iverilog -o uart_sim uart_tx.v tb_uart_tx.v
vvp uart_sim
gtkwave uart_tx.vcd
```

The waveform should show:

```
Idle → Start bit → 8 Data bits → Stop bit
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
synth/uart_tx_syn.v
synth/uart_tx_syn.json
reports/area.rpt
reports/cells.rpt
```

---

## Physical Design Flow (OpenROAD)

Run the RTL-to-GDS flow:

```
openroad -gui -log uart_tx_logfile.log uart_tx_nan45.tcl
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

## Post-Routing Outputs

After routing, the following files are generated:

```
results/
 ├── uart_tx_nangate45_route-tcl.def
 ├── uart_tx_nangate45_route-tcl.db
 ├── uart_tx_nangate45_route-tcl.v
 ├── uart_tx_nangate45_output_guide-tcl.mod
```

These files contain the **placed and routed design database**.

---

## Generate GDSII Layout

The final layout is produced by merging the **routed DEF** with the **standard cell GDS library**.

Run the Python bridge script:

```
python3 scripts/def2gds.py
```

This script performs:

* Loading the routed DEF
* Reading the standard cell GDS library
* Merging them into a final layout database
* Writing the final **GDSII file**

Output:

```
results/uart_tx_final.gds
```

---

## Viewing the Layout

Open the GDS file using **KLayout**:

```
klayout results/uart_tx_final.gds
```

You will see:

* Standard cell placement
* Metal routing layers
* Power distribution network
* IO pins

---

## Post-Layout Static Timing Analysis

Use the routed netlist and constraints:

Inputs required:

```
uart_tx_route.v
uart_tx.sdc
NangateOpenCellLibrary_typical.lib
```

Run STA:

```
sta
source post_layout_sta.tcl
```

Reports generated:

* Setup timing
* Hold timing
* Worst Negative Slack (WNS)
* Total Negative Slack (TNS)

---

## Expected Design Metrics (Approximate)

| Metric     | Typical Value |
| ---------- | ------------- |
| Cell count | 1225      |
| Area       | 1371.762 µm² |
| Frequency  | >400 MHz      |
| Power      | <0.01 mW      |

---

## References

* OpenROAD Documentation
* Nangate45 Open Cell Library
* UART Communication Protocol

---

## Author

RTL-to-GDS learning project implementing a UART transmitter using an open-source ASIC design flow.
