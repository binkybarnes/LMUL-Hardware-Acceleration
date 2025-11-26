# synthesis/scripts/sta_bf16.tcl
# Static Timing Analysis for IEEE BF16 multiplier
# IDENTICAL to L-Mul script, just different netlist

read_liberty lib/NangateOpenCellLibrary_typical.lib
read_verilog synthesis/out/bf16_synth.v

link_design top_bf16_synth

create_clock -name CLK -period 2.0 [get_ports clk]

# Exclude clock from input delays
set all_inputs_except_clk [remove_from_collection [all_inputs] [get_ports clk]]
set_input_delay 0.1 -clock CLK $all_inputs_except_clk
set_output_delay 0.1 -clock CLK [all_outputs]

report_checks -path_delay max -fields {slew capacitance} -digits 4
report_tns
report_wns

