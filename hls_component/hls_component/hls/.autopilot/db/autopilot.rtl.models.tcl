set SynModuleInfo {
  {SRCNAME qwen_linear_layer_Pipeline_VITIS_LOOP_250_3 MODELNAME qwen_linear_layer_Pipeline_VITIS_LOOP_250_3 RTLNAME qwen_superblock_qwen_linear_layer_Pipeline_VITIS_LOOP_250_3
    SUBMODULES {
      {MODELNAME qwen_superblock_flow_control_loop_pipe_sequential_init RTLNAME qwen_superblock_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME qwen_superblock_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME qwen_linear_layer_Pipeline_VITIS_LOOP_259_6 MODELNAME qwen_linear_layer_Pipeline_VITIS_LOOP_259_6 RTLNAME qwen_superblock_qwen_linear_layer_Pipeline_VITIS_LOOP_259_6
    SUBMODULES {
      {MODELNAME qwen_superblock_mul_31ns_31ns_62_1_1 RTLNAME qwen_superblock_mul_31ns_31ns_62_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME qwen_superblock_mul_32s_31ns_62_1_1 RTLNAME qwen_superblock_mul_32s_31ns_62_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME qwen_linear_layer_Pipeline_VITIS_LOOP_268_8_VITIS_LOOP_269_9_VITIS_LOOP_274_10 MODELNAME qwen_linear_layer_Pipeline_VITIS_LOOP_268_8_VITIS_LOOP_269_9_VITIS_LOOP_274_10 RTLNAME qwen_superblock_qwen_linear_layer_Pipeline_VITIS_LOOP_268_8_VITIS_LOOP_269_9_VITIS_LOOP_274_10
    SUBMODULES {
      {MODELNAME qwen_superblock_sparsemux_65_5_32_1_1 RTLNAME qwen_superblock_sparsemux_65_5_32_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME qwen_superblock_sparsemux_33_4_16_1_1 RTLNAME qwen_superblock_sparsemux_33_4_16_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME qwen_superblock_sparsemux_7_2_15_1_1 RTLNAME qwen_superblock_sparsemux_7_2_15_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
    }
  }
  {SRCNAME qwen_linear_layer_Pipeline_VITIS_LOOP_291_11 MODELNAME qwen_linear_layer_Pipeline_VITIS_LOOP_291_11 RTLNAME qwen_superblock_qwen_linear_layer_Pipeline_VITIS_LOOP_291_11
    SUBMODULES {
      {MODELNAME qwen_superblock_ctlz_32_32_1_1 RTLNAME qwen_superblock_ctlz_32_32_1_1 BINDTYPE op TYPE ctlz IMPL auto}
      {MODELNAME qwen_superblock_am_addmul_15s_6ns_15s_15_4_1 RTLNAME qwen_superblock_am_addmul_15s_6ns_15s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME qwen_linear_layer MODELNAME qwen_linear_layer RTLNAME qwen_superblock_qwen_linear_layer
    SUBMODULES {
      {MODELNAME qwen_superblock_qwen_linear_layer_bufA_RAM_AUTO_1R1W RTLNAME qwen_superblock_qwen_linear_layer_bufA_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME qwen_superblock_qwen_linear_layer_bufC_RAM_AUTO_1R1W RTLNAME qwen_superblock_qwen_linear_layer_bufC_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME qwen_linear_layer.1_Pipeline_VITIS_LOOP_250_3 MODELNAME qwen_linear_layer_1_Pipeline_VITIS_LOOP_250_3 RTLNAME qwen_superblock_qwen_linear_layer_1_Pipeline_VITIS_LOOP_250_3}
  {SRCNAME qwen_linear_layer.1_Pipeline_VITIS_LOOP_259_6 MODELNAME qwen_linear_layer_1_Pipeline_VITIS_LOOP_259_6 RTLNAME qwen_superblock_qwen_linear_layer_1_Pipeline_VITIS_LOOP_259_6
    SUBMODULES {
      {MODELNAME qwen_superblock_sparsemux_33_4_16_1_1_x RTLNAME qwen_superblock_sparsemux_33_4_16_1_1_x BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME qwen_linear_layer.1_Pipeline_VITIS_LOOP_268_8_VITIS_LOOP_269_9_VITIS_LOOP_274_10 MODELNAME qwen_linear_layer_1_Pipeline_VITIS_LOOP_268_8_VITIS_LOOP_269_9_VITIS_LOOP_274_10 RTLNAME qwen_superblock_qwen_linear_layer_1_Pipeline_VITIS_LOOP_268_8_VITIS_LOOP_269_9_VITIS_LOOP_274_10}
  {SRCNAME qwen_linear_layer.1_Pipeline_VITIS_LOOP_291_11 MODELNAME qwen_linear_layer_1_Pipeline_VITIS_LOOP_291_11 RTLNAME qwen_superblock_qwen_linear_layer_1_Pipeline_VITIS_LOOP_291_11}
  {SRCNAME qwen_linear_layer.1 MODELNAME qwen_linear_layer_1 RTLNAME qwen_superblock_qwen_linear_layer_1
    SUBMODULES {
      {MODELNAME qwen_superblock_mul_32s_26ns_58_1_1 RTLNAME qwen_superblock_mul_32s_26ns_58_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME qwen_superblock_qwen_linear_layer_1_bufA_RAM_AUTO_1R1W RTLNAME qwen_superblock_qwen_linear_layer_1_bufA_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME qwen_superblock_qwen_linear_layer_1_bufC_RAM_AUTO_1R1W RTLNAME qwen_superblock_qwen_linear_layer_1_bufC_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME qwen_superblock MODELNAME qwen_superblock RTLNAME qwen_superblock IS_TOP 1
    SUBMODULES {
      {MODELNAME qwen_superblock_temp_RAM_AUTO_1R1W_memcore RTLNAME qwen_superblock_temp_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME qwen_superblock_temp_RAM_AUTO_1R1W RTLNAME qwen_superblock_temp_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME qwen_superblock_gmem0_m_axi RTLNAME qwen_superblock_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME qwen_superblock_gmem1_m_axi RTLNAME qwen_superblock_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME qwen_superblock_gmem2_m_axi RTLNAME qwen_superblock_gmem2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME qwen_superblock_control_s_axi RTLNAME qwen_superblock_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
