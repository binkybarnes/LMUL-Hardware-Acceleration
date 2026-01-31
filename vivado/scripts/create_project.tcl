# vivado/scripts/create_project.tcl
# Tcl script to create Vivado project programmatically

# Set project variables
set project_name "lmul_accelerator"
set project_dir "vivado"
set top_module "accelerator_top"

# Create project
create_project $project_name $project_dir -part xc7a100tcsg324-1 -force

# Add RTL sources
add_files -fileset sources_1 {
    ../rtl/lmul_bf16.v
    ../synthesis/rtl/bf16_mul.v
    rtl/accelerator_top.v
    rtl/pe_array_pipelined.v
    rtl/simple_buffer.v
}

# Add testbench
add_files -fileset sim_1 {
    tb/accelerator_tb.v
}

# Set top module
set_property top $top_module [current_fileset]

# Update compile order
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1

puts "Project created successfully!"
puts "To open: vivado $project_dir/$project_name.xpr"
