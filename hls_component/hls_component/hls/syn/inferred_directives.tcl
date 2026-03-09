# Inferred from syn.compile.pipeline_loops=64
set_directive_pipeline qwen_linear_layer/VITIS_LOOP_250_3
# Inferred from performance & pipeline pragmas/directives
set_directive_loop_flatten qwen_linear_layer.1/VITIS_LOOP_269_9
set_directive_loop_flatten qwen_linear_layer.1/VITIS_LOOP_268_8
set_directive_array_partition qwen_superblock/temp -dim=1 -type=cyclic -factor=16 temp
