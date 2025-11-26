# synthesis/scripts/sta_lmul.tcl
# Static Timing Analysis for L-Mul

# Load library and netlist
read_liberty lib/NangateOpenCellLibrary_typical.lib
read_verilog synthesis/out/lmul_synth.v

# Link the design
link_design top_lmul_synth

# Define clock (1.0 ns period = 1 GHz) - pushing for speed limits
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
report_tns    # Total Negative Slack
report_wns    # Worst Negative Slack

