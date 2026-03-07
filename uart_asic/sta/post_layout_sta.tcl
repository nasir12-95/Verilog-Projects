# --------------------------------------------------
# 1. Read technology library
# --------------------------------------------------
read_liberty ../../lib/NangateOpenCellLibrary_typical.lib

# --------------------------------------------------
# 2. Read post-layout netlist
# --------------------------------------------------
read_verilog ../scripts/results/uart_tx_nangate45-tcl.v

# --------------------------------------------------
# 3. Link design
# --------------------------------------------------
link_design uart_tx

# --------------------------------------------------
# 4. Read SDC constraints
# --------------------------------------------------
read_sdc ../constraints/uart_tx.sdc

# --------------------------------------------------
# 5. Read parasitic RC (optional but recommended)
# --------------------------------------------------
# For OpenROAD, after routing you can export .spef
# read_spef uart_tx.spef

# --------------------------------------------------
# 6. Report timing
# --------------------------------------------------
# Setup and hold checks
report_checks -path_delay max
report_checks -path_delay min

# Worst negative slack
report_wns
report_tns

# Clock properties
report_clock_properties

# ------------------------------
# 2. Timing reports
# Max (setup) paths
report_checks -path_delay max -fields {slew cap input net} \
    -format full_clock_expanded > reports/post_layout_timing_max.rpt

# Min (hold) paths
report_checks -path_delay min -fields {slew cap input net} \
    -format full_clock_expanded > reports/post_layout_timing_min.rpt

# --------------------------------------------------
# 7. Power (optional if you have switching activity)
# --------------------------------------------------
read_vcd ../rtl/uart_tx.vcd
report_power