# read modules from Verilog file
read_verilog ../rtl/uart_tx.v

#elaborate design hierarchy
hierarchy -check -top uart_tx

# --------- Elaborate Design ---------
hierarchy -top uart_tx
proc

# Perform optimization
opt
# Resource sharing optimization
share -aggressive

# for graph viewer
#show

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
abc -liberty ../../lib/NangateOpenCellLibrary_typical.lib -constr ../constraints/uart_tx.sdc 
#-D 5000 -dff

# write the current design to a Verilog file
#write_verilog -noattr fifo_syn.v

# --------- Reports ---------
stat -top uart_tx -liberty ../../lib/NangateOpenCellLibrary_typical.lib
tee -o ../reports/area.rpt stat
tee -o ../reports/cells.rpt stat -liberty ../../lib/NangateOpenCellLibrary_typical.lib

# Output
write_verilog -noattr -noexpr uart_tx_syn.v
write_json uart_tx_syn.json
