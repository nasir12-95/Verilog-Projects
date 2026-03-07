# ==================================================
# OpenSTA Timing Analysis Script for UART_TX
# ==================================================

# Read standard cell library
read_liberty ../../lib/NangateOpenCellLibrary_typical.lib

# Read synthesized netlist
read_verilog ../synth/uart_tx_syn.v

# Link top design
link_design uart_tx

# Create reports folder if missing
exec mkdir -p reports

# Read SDC constraints
read_sdc ../constraints/uart_tx.sdc

# ------------------------------
# 1. Setup and hold checks
# ------------------------------
check_setup -verbose
#check_timing -hold

# This is the most reliable way in OpenSTA to see broken/looping paths
#report_checks -unconstrained -group_path_count 20

# ------------------------------
# 2. Timing reports
# Max (setup) paths
report_checks -path_delay max -fields {slew cap input net} \
    -format full_clock_expanded > reports/timing_max.rpt

# Min (hold) paths
report_checks -path_delay min -fields {slew cap input net} \
    -format full_clock_expanded > reports/timing_min.rpt

# Set the assumed activity
set_power_activity -global -activity 0.1

# Generate the power report
report_power

# ------------------------------
# 3. Summary
# ------------------------------
report_tns       ;# Total Negative Slack
report_wns       ;# Worst Negative Slack
get_clocks *     ;# Display clocks
