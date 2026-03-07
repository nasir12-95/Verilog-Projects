# ==================================================
# UART TX Timing Constraints (SDC)
# Target: NangateOpenCellLibrary 45nm
# ==================================================

# --------------------------------------------------
# 1. Clock Definition
# --------------------------------------------------
# 100 MHz clock (10 ns period)

create_clock \
  -name clk \
  -period 10.000 \
  [get_ports clk]

# Clock uncertainty (jitter + early CTS margin)
set_clock_uncertainty 0.200 [get_clocks clk]

# Clock uncertainty
set_clock_uncertainty -setup 0.25 [get_clocks clk]
set_clock_uncertainty -hold 0.10 [get_clocks clk]

# --------------------------------------------------
# 2. Reset Handling
# --------------------------------------------------
# Reset not performance critical

set_false_path -from [get_ports reset]

# --------------------------------------------------
# 3. Input Delays
# --------------------------------------------------
# Inputs driven by external logic

set_input_delay 1.000 -clock clk [get_ports {start data_in[*]}]

# --------------------------------------------------
# 4. Output Delays
# --------------------------------------------------
# Outputs captured by external logic

set_output_delay 1.000 -clock clk [get_ports {tx busy tx_done}]

# --------------------------------------------------
# 5. Drive Strength
# --------------------------------------------------

set_driving_cell -lib_cell INV_X1 [all_inputs]

# --------------------------------------------------
# 6. Output Load
# --------------------------------------------------

set_load 0.05 [all_outputs]

# --------------------------------------------------
# 7. Ideal Clock (Pre-CTS)
# --------------------------------------------------

set_ideal_network [get_ports clk]