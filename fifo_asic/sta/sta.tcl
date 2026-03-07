# ==================================================
# OpenSTA Timing Analysis Script for FIFO
# ==================================================

# Read standard cell library
read_liberty ../../lib/NangateOpenCellLibrary_typical.lib

# Read synthesized netlist
read_verilog ../syn/fifo_syn.v

# Link top design
link_design fifo

# Create reports folder if missing
exec mkdir -p reports

# Read SDC constraints
read_sdc ../constraints/fifo.sdc

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

# ------------------------------
# 3. Summary
# ------------------------------
report_tns       ;# Total Negative Slack
report_wns       ;# Worst Negative Slack
get_clocks *     ;# Display clocks
