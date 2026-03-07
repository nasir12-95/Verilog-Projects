# gcd flow pipe cleaner
source "helpers.tcl"
source "flow_helpers.tcl"
source "Nangate45/Nangate45.vars"

set design "uart_tx"
set top_module "uart_tx"
set synth_verilog "../synth/uart_tx_syn.v"
set sdc_file "../constraints/uart_tx.sdc"
#set die_area {0 0 100.13 100.8}
#set core_area {10.07 11.2 90.25 91}

set utilization 0.6
set margin 10

include -echo "flow.tcl"
#include -echo "flow_floorplan.tcl"
#include -echo "flow_pdn.tcl"
#include -echo "flow_global_placement.tcl"
#include -echo "flow_cts.tcl"

