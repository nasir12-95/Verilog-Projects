# ==========================================
# Yosys Synthesis Script for 8-bit ALU
# ==========================================

# Load the technology library
# This tells Yosys which standard cells exist
read_liberty -lib ../../lib/NangateOpenCellLibrary_typical.lib

# read modules from Verilog file
read_verilog ../rtl/alu.v

#elaborate design hierarchy
hierarchy -check -top alu

# --------- Elaborate Design ---------
hierarchy -top alu
proc

#new
memory
techmap

# --------- Map Logic Constants to Physical Tie-Cells ---------
# This replaces literal 1'b0 and 1'b1 with physical Nangate cells
hilomap -hicell LOGIC1_X1 Z -locell LOGIC0_X1 Z

# --------- Technology-independent synthesis ---------
techmap

# remove unused cells and wires
clean

# mapping flip-flops to NangateOpenCellLibrary_typical.lib
# for eg. always block
dfflibmap -liberty ../../lib/NangateOpenCellLibrary_typical.lib

# mapping logic to NangateOpenCellLibrary_typical.lib
# for eg. assign block
#read_sdc ../constraints/fifo.sdc
abc -liberty ../../lib/NangateOpenCellLibrary_typical.lib 
#-constr ../constraints/alu.sdc 
#-D 5000 -dff

# write the current design to a Verilog file
#write_verilog -noattr fifo_syn.v

# --------- Reports ---------
stat -top alu -liberty ../../lib/NangateOpenCellLibrary_typical.lib
tee -o ../reports/area.rpt stat
tee -o ../reports/cells.rpt stat -liberty ../../lib/NangateOpenCellLibrary_typical.lib

# Output
write_verilog -noattr -noexpr alu_syn.v
write_json alu_syn.json
