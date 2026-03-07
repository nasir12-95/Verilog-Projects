import pya
import sys
import os

def generate_gds(input_def, input_lefs, lib_gds, output_gds):
    # 1. Create a Layout and a LayoutView
    layout = pya.Layout()
    
    # 2. Load LEF files first (Technology and Cell Abstracts)
    # We need the LEFs to understand the pin/boundary definitions in the DEF
    for lef in input_lefs:
        print(f"Reading LEF: {lef}")
        layout.read(lef)

    # 3. Read the DEF file (The placement and routing)
    print(f"Reading DEF: {input_def}")
    options = pya.LoadLayoutOptions()
    layout.read(input_def, options)

    # 4. Read the Library GDS (The 'Golden' Transistor Shapes)
    # We load this into a separate layout to merge it
    print(f"Merging GDS Library: {lib_gds}")
    layout.read(lib_gds)

    # 5. Write the final merged GDS
    print(f"Writing Final GDS: {output_gds}")
    layout.write(output_gds)

if __name__ == "__main__":
    # Update these paths to match your project structure
    design_name = "uart_tx" # or "alu"
    pdk_path = "../../lib/NangateOpenCellLibrary_typical.lib"  # adjust to your Nangate45 path
    
    params = {
        "input_def": f"./results/uart_tx_nangate45_route-tcl.def",
        "input_lefs": [
            f"../Nangate45/Nangate45.lef", 
            f"./results/{design_name}.lef"
        ],
        "lib_gds": f"../../lib/NangateOpenCellLibrary.gds",
        "output_gds": f"./results/{design_name}_final.gds"
    }

    generate_gds(**params)
    print("Success! GDS generation complete.")