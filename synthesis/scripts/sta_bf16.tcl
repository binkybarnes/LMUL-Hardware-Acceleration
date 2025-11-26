# synthesis/scripts/sta_bf16.tcl
# Static Timing Analysis for IEEE BF16 multiplier
# IDENTICAL to L-Mul script, just different netlist

read_liberty lib/NangateOpenCellLibrary_typical.lib
read_verilog synthesis/out/bf16_synth.v

link_design top_bf16_synth

create_clock -name CLK -period 1.0 [get_ports clk]

# Set input/output delays (realistic assumptions)
set_input_delay 0.05 -clock CLK [get_ports i_a]
set_input_delay 0.05 -clock CLK [get_ports i_b]
set_input_delay 0.05 -clock CLK [get_ports i_valid]
set_input_delay 0.05 -clock CLK [get_ports o_ready]
set_input_delay 0.05 -clock CLK [get_ports rstn]
set_output_delay 0.05 -clock CLK [get_ports i_ready]
set_output_delay 0.05 -clock CLK [get_ports o_valid]
set_output_delay 0.05 -clock CLK [get_ports o_p]

# Report timing - find worst setup paths (computation critical paths)
# These are the paths from inputs through combinational logic to registered outputs
report_checks -path_delay max -fields {slew capacitance} -digits 4 -format full_clock_expanded
report_tns
report_wns

