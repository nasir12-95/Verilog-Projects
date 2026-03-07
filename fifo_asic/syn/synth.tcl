# read modules from Verilog file
read_verilog ../rtl/fifo.v

#elaborate design hierarchy
hierarchy -check -top fifo

# --------- Elaborate Design ---------
hierarchy -top fifo
proc

#new
memory
techmap


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
abc -liberty ../../lib/NangateOpenCellLibrary_typical.lib -constr ../constraints/fifo.sdc 
#-D 5000 -dff

# write the current design to a Verilog file
#write_verilog -noattr fifo_syn.v

# --------- Reports ---------
stat -top fifo -liberty ../../lib/NangateOpenCellLibrary_typical.lib
tee -o reports/area.rpt stat
tee -o reports/cells.rpt stat -liberty ../../lib/NangateOpenCellLibrary_typical.lib

# Output
write_verilog -noattr -noexpr fifo_syn.v
write_json fifo_syn.json
