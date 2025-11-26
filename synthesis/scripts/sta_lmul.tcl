# synthesis/scripts/sta_lmul.tcl
# Static Timing Analysis for L-Mul

# Load library and netlist
read_liberty lib/NangateOpenCellLibrary_typical.lib
read_verilog synthesis/out/lmul_synth.v

# Link the design
link_design top_lmul_synth

# Define clock (2.0 ns period = 500 MHz)
create_clock -name CLK -period 2.0 [get_ports clk]

# Set input/output delays (realistic assumptions)
# Exclude clock from input delays
set all_inputs_except_clk [remove_from_collection [all_inputs] [get_ports clk]]
set_input_delay 0.1 -clock CLK $all_inputs_except_clk
set_output_delay 0.1 -clock CLK [all_outputs]

# Report timing
report_checks -path_delay max -fields {slew capacitance} -digits 4
report_tns    # Total Negative Slack
report_wns    # Worst Negative Slack

