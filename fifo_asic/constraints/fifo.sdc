# ==================================================
# FIFO Timing Constraints (SDC)
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

# Add to your fifo.sdc
# Modelling 100ps of jitter + 100ps of skew + 50ps margin
set_clock_uncertainty -setup 0.25 [get_clocks clk]

# Add this to your fifo.sdc
set_clock_uncertainty -hold 0.1 [get_clocks clk]
# --------------------------------------------------
# 2. Reset Handling
# --------------------------------------------------
# Reset is synchronous but not performance-critical
set_false_path -from [get_ports rst_n]

# --------------------------------------------------
# 3. Input Delays
# --------------------------------------------------
# External logic drives FIFO inputs
set_input_delay 1.000 -clock clk [get_ports {wr_en rd_en wr_data[*]}]

# --------------------------------------------------
# 4. Output Delays
# --------------------------------------------------
# FIFO outputs captured by external logic
set_output_delay 1.000 -clock clk [get_ports {rd_data[*] full empty}]

# --------------------------------------------------
# 5. Drive Strength & Load (Optional but Realistic)
# --------------------------------------------------
# Assume moderate driving strength
set_driving_cell -lib_cell INV_X1 [all_inputs]

# Assume small load on outputs
set_load 0.05 [all_outputs]

# --------------------------------------------------
# 6. Ideal Clock (Pre-CTS)
# --------------------------------------------------
set_ideal_network [get_ports clk]

# --------------------------------------------------
# 7. Timing Exceptions
# --------------------------------------------------
# No multicycle paths in this design
# No asynchronous paths except reset
