set moduleName qwen_linear_layer_1_Pipeline_VITIS_LOOP_268_8_VITIS_LOOP_269_9_VITIS_LOOP_274_10
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set restart_counter_num 0
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 13
set C_modelName {qwen_linear_layer.1_Pipeline_VITIS_LOOP_268_8_VITIS_LOOP_269_9_VITIS_LOOP_274_10}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict bufA { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufA_1 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufA_2 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufA_3 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufA_4 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufA_5 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufA_6 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufA_7 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufA_8 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufA_9 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufA_10 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufA_11 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufA_12 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufA_13 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufA_14 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufA_15 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufW { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufW_1 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufW_2 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufW_3 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufW_4 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufW_5 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufW_6 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufW_7 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufW_8 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufW_9 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufW_10 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufW_11 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufW_12 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufW_13 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufW_14 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufW_15 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_1 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_2 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_3 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_4 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_5 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_6 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_7 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_8 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_9 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_10 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_11 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_12 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_13 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_14 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_15 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_16 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_17 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_18 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_19 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_20 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_21 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_22 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_23 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_24 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_25 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_26 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_27 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_28 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_29 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_30 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_31 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_32 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_33 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_34 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_35 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_36 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_37 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_38 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_39 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_40 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_41 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_42 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_43 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_44 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_45 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_46 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_47 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_48 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_49 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_50 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_51 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_52 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_53 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_54 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_55 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_56 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_57 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_58 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_59 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_60 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_61 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_62 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_63 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ bufA int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bufA_1 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bufA_2 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bufA_3 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bufA_4 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bufA_5 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bufA_6 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bufA_7 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bufA_8 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bufA_9 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bufA_10 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bufA_11 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bufA_12 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bufA_13 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bufA_14 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bufA_15 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bufW int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bufW_1 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bufW_2 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bufW_3 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bufW_4 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bufW_5 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bufW_6 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bufW_7 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bufW_8 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bufW_9 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bufW_10 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bufW_11 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bufW_12 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bufW_13 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bufW_14 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bufW_15 int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ bufC int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_1 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_2 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_3 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_4 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_5 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_6 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_7 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_8 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_9 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_10 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_11 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_12 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_13 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_14 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_15 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_16 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_17 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_18 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_19 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_20 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_21 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_22 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_23 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_24 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_25 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_26 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_27 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_28 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_29 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_30 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_31 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_32 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_33 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_34 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_35 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_36 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_37 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_38 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_39 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_40 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_41 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_42 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_43 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_44 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_45 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_46 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_47 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_48 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_49 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_50 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_51 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_52 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_53 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_54 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_55 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_56 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_57 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_58 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_59 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_60 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_61 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_62 int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ bufC_63 int 32 regular {array 16 { 2 3 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "bufA", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bufA_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bufA_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bufA_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bufA_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bufA_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bufA_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bufA_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bufA_8", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bufA_9", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bufA_10", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bufA_11", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bufA_12", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bufA_13", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bufA_14", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bufA_15", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bufW", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bufW_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bufW_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bufW_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bufW_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bufW_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bufW_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bufW_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bufW_8", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bufW_9", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bufW_10", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bufW_11", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bufW_12", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bufW_13", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bufW_14", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bufW_15", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bufC", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_16", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_17", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_18", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_19", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_20", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_21", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_22", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_23", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_24", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_25", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_26", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_27", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_28", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_29", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_30", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_31", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_32", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_33", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_34", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_35", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_36", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_37", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_38", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_39", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_40", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_41", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_42", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_43", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_44", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_45", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_46", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_47", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_48", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_49", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_50", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_51", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_52", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_53", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_54", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_55", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_56", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_57", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_58", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_59", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_60", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_61", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_62", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bufC_63", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 422
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bufA_address0 sc_out sc_lv 6 signal 0 } 
	{ bufA_ce0 sc_out sc_logic 1 signal 0 } 
	{ bufA_q0 sc_in sc_lv 16 signal 0 } 
	{ bufA_1_address0 sc_out sc_lv 6 signal 1 } 
	{ bufA_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ bufA_1_q0 sc_in sc_lv 16 signal 1 } 
	{ bufA_2_address0 sc_out sc_lv 6 signal 2 } 
	{ bufA_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ bufA_2_q0 sc_in sc_lv 16 signal 2 } 
	{ bufA_3_address0 sc_out sc_lv 6 signal 3 } 
	{ bufA_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ bufA_3_q0 sc_in sc_lv 16 signal 3 } 
	{ bufA_4_address0 sc_out sc_lv 6 signal 4 } 
	{ bufA_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ bufA_4_q0 sc_in sc_lv 16 signal 4 } 
	{ bufA_5_address0 sc_out sc_lv 6 signal 5 } 
	{ bufA_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ bufA_5_q0 sc_in sc_lv 16 signal 5 } 
	{ bufA_6_address0 sc_out sc_lv 6 signal 6 } 
	{ bufA_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ bufA_6_q0 sc_in sc_lv 16 signal 6 } 
	{ bufA_7_address0 sc_out sc_lv 6 signal 7 } 
	{ bufA_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ bufA_7_q0 sc_in sc_lv 16 signal 7 } 
	{ bufA_8_address0 sc_out sc_lv 6 signal 8 } 
	{ bufA_8_ce0 sc_out sc_logic 1 signal 8 } 
	{ bufA_8_q0 sc_in sc_lv 16 signal 8 } 
	{ bufA_9_address0 sc_out sc_lv 6 signal 9 } 
	{ bufA_9_ce0 sc_out sc_logic 1 signal 9 } 
	{ bufA_9_q0 sc_in sc_lv 16 signal 9 } 
	{ bufA_10_address0 sc_out sc_lv 6 signal 10 } 
	{ bufA_10_ce0 sc_out sc_logic 1 signal 10 } 
	{ bufA_10_q0 sc_in sc_lv 16 signal 10 } 
	{ bufA_11_address0 sc_out sc_lv 6 signal 11 } 
	{ bufA_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ bufA_11_q0 sc_in sc_lv 16 signal 11 } 
	{ bufA_12_address0 sc_out sc_lv 6 signal 12 } 
	{ bufA_12_ce0 sc_out sc_logic 1 signal 12 } 
	{ bufA_12_q0 sc_in sc_lv 16 signal 12 } 
	{ bufA_13_address0 sc_out sc_lv 6 signal 13 } 
	{ bufA_13_ce0 sc_out sc_logic 1 signal 13 } 
	{ bufA_13_q0 sc_in sc_lv 16 signal 13 } 
	{ bufA_14_address0 sc_out sc_lv 6 signal 14 } 
	{ bufA_14_ce0 sc_out sc_logic 1 signal 14 } 
	{ bufA_14_q0 sc_in sc_lv 16 signal 14 } 
	{ bufA_15_address0 sc_out sc_lv 6 signal 15 } 
	{ bufA_15_ce0 sc_out sc_logic 1 signal 15 } 
	{ bufA_15_q0 sc_in sc_lv 16 signal 15 } 
	{ bufW_address0 sc_out sc_lv 6 signal 16 } 
	{ bufW_ce0 sc_out sc_logic 1 signal 16 } 
	{ bufW_q0 sc_in sc_lv 16 signal 16 } 
	{ bufW_1_address0 sc_out sc_lv 6 signal 17 } 
	{ bufW_1_ce0 sc_out sc_logic 1 signal 17 } 
	{ bufW_1_q0 sc_in sc_lv 16 signal 17 } 
	{ bufW_2_address0 sc_out sc_lv 6 signal 18 } 
	{ bufW_2_ce0 sc_out sc_logic 1 signal 18 } 
	{ bufW_2_q0 sc_in sc_lv 16 signal 18 } 
	{ bufW_3_address0 sc_out sc_lv 6 signal 19 } 
	{ bufW_3_ce0 sc_out sc_logic 1 signal 19 } 
	{ bufW_3_q0 sc_in sc_lv 16 signal 19 } 
	{ bufW_4_address0 sc_out sc_lv 6 signal 20 } 
	{ bufW_4_ce0 sc_out sc_logic 1 signal 20 } 
	{ bufW_4_q0 sc_in sc_lv 16 signal 20 } 
	{ bufW_5_address0 sc_out sc_lv 6 signal 21 } 
	{ bufW_5_ce0 sc_out sc_logic 1 signal 21 } 
	{ bufW_5_q0 sc_in sc_lv 16 signal 21 } 
	{ bufW_6_address0 sc_out sc_lv 6 signal 22 } 
	{ bufW_6_ce0 sc_out sc_logic 1 signal 22 } 
	{ bufW_6_q0 sc_in sc_lv 16 signal 22 } 
	{ bufW_7_address0 sc_out sc_lv 6 signal 23 } 
	{ bufW_7_ce0 sc_out sc_logic 1 signal 23 } 
	{ bufW_7_q0 sc_in sc_lv 16 signal 23 } 
	{ bufW_8_address0 sc_out sc_lv 6 signal 24 } 
	{ bufW_8_ce0 sc_out sc_logic 1 signal 24 } 
	{ bufW_8_q0 sc_in sc_lv 16 signal 24 } 
	{ bufW_9_address0 sc_out sc_lv 6 signal 25 } 
	{ bufW_9_ce0 sc_out sc_logic 1 signal 25 } 
	{ bufW_9_q0 sc_in sc_lv 16 signal 25 } 
	{ bufW_10_address0 sc_out sc_lv 6 signal 26 } 
	{ bufW_10_ce0 sc_out sc_logic 1 signal 26 } 
	{ bufW_10_q0 sc_in sc_lv 16 signal 26 } 
	{ bufW_11_address0 sc_out sc_lv 6 signal 27 } 
	{ bufW_11_ce0 sc_out sc_logic 1 signal 27 } 
	{ bufW_11_q0 sc_in sc_lv 16 signal 27 } 
	{ bufW_12_address0 sc_out sc_lv 6 signal 28 } 
	{ bufW_12_ce0 sc_out sc_logic 1 signal 28 } 
	{ bufW_12_q0 sc_in sc_lv 16 signal 28 } 
	{ bufW_13_address0 sc_out sc_lv 6 signal 29 } 
	{ bufW_13_ce0 sc_out sc_logic 1 signal 29 } 
	{ bufW_13_q0 sc_in sc_lv 16 signal 29 } 
	{ bufW_14_address0 sc_out sc_lv 6 signal 30 } 
	{ bufW_14_ce0 sc_out sc_logic 1 signal 30 } 
	{ bufW_14_q0 sc_in sc_lv 16 signal 30 } 
	{ bufW_15_address0 sc_out sc_lv 6 signal 31 } 
	{ bufW_15_ce0 sc_out sc_logic 1 signal 31 } 
	{ bufW_15_q0 sc_in sc_lv 16 signal 31 } 
	{ bufC_address0 sc_out sc_lv 4 signal 32 } 
	{ bufC_ce0 sc_out sc_logic 1 signal 32 } 
	{ bufC_we0 sc_out sc_logic 1 signal 32 } 
	{ bufC_d0 sc_out sc_lv 32 signal 32 } 
	{ bufC_q0 sc_in sc_lv 32 signal 32 } 
	{ bufC_1_address0 sc_out sc_lv 4 signal 33 } 
	{ bufC_1_ce0 sc_out sc_logic 1 signal 33 } 
	{ bufC_1_we0 sc_out sc_logic 1 signal 33 } 
	{ bufC_1_d0 sc_out sc_lv 32 signal 33 } 
	{ bufC_1_q0 sc_in sc_lv 32 signal 33 } 
	{ bufC_2_address0 sc_out sc_lv 4 signal 34 } 
	{ bufC_2_ce0 sc_out sc_logic 1 signal 34 } 
	{ bufC_2_we0 sc_out sc_logic 1 signal 34 } 
	{ bufC_2_d0 sc_out sc_lv 32 signal 34 } 
	{ bufC_2_q0 sc_in sc_lv 32 signal 34 } 
	{ bufC_3_address0 sc_out sc_lv 4 signal 35 } 
	{ bufC_3_ce0 sc_out sc_logic 1 signal 35 } 
	{ bufC_3_we0 sc_out sc_logic 1 signal 35 } 
	{ bufC_3_d0 sc_out sc_lv 32 signal 35 } 
	{ bufC_3_q0 sc_in sc_lv 32 signal 35 } 
	{ bufC_4_address0 sc_out sc_lv 4 signal 36 } 
	{ bufC_4_ce0 sc_out sc_logic 1 signal 36 } 
	{ bufC_4_we0 sc_out sc_logic 1 signal 36 } 
	{ bufC_4_d0 sc_out sc_lv 32 signal 36 } 
	{ bufC_4_q0 sc_in sc_lv 32 signal 36 } 
	{ bufC_5_address0 sc_out sc_lv 4 signal 37 } 
	{ bufC_5_ce0 sc_out sc_logic 1 signal 37 } 
	{ bufC_5_we0 sc_out sc_logic 1 signal 37 } 
	{ bufC_5_d0 sc_out sc_lv 32 signal 37 } 
	{ bufC_5_q0 sc_in sc_lv 32 signal 37 } 
	{ bufC_6_address0 sc_out sc_lv 4 signal 38 } 
	{ bufC_6_ce0 sc_out sc_logic 1 signal 38 } 
	{ bufC_6_we0 sc_out sc_logic 1 signal 38 } 
	{ bufC_6_d0 sc_out sc_lv 32 signal 38 } 
	{ bufC_6_q0 sc_in sc_lv 32 signal 38 } 
	{ bufC_7_address0 sc_out sc_lv 4 signal 39 } 
	{ bufC_7_ce0 sc_out sc_logic 1 signal 39 } 
	{ bufC_7_we0 sc_out sc_logic 1 signal 39 } 
	{ bufC_7_d0 sc_out sc_lv 32 signal 39 } 
	{ bufC_7_q0 sc_in sc_lv 32 signal 39 } 
	{ bufC_8_address0 sc_out sc_lv 4 signal 40 } 
	{ bufC_8_ce0 sc_out sc_logic 1 signal 40 } 
	{ bufC_8_we0 sc_out sc_logic 1 signal 40 } 
	{ bufC_8_d0 sc_out sc_lv 32 signal 40 } 
	{ bufC_8_q0 sc_in sc_lv 32 signal 40 } 
	{ bufC_9_address0 sc_out sc_lv 4 signal 41 } 
	{ bufC_9_ce0 sc_out sc_logic 1 signal 41 } 
	{ bufC_9_we0 sc_out sc_logic 1 signal 41 } 
	{ bufC_9_d0 sc_out sc_lv 32 signal 41 } 
	{ bufC_9_q0 sc_in sc_lv 32 signal 41 } 
	{ bufC_10_address0 sc_out sc_lv 4 signal 42 } 
	{ bufC_10_ce0 sc_out sc_logic 1 signal 42 } 
	{ bufC_10_we0 sc_out sc_logic 1 signal 42 } 
	{ bufC_10_d0 sc_out sc_lv 32 signal 42 } 
	{ bufC_10_q0 sc_in sc_lv 32 signal 42 } 
	{ bufC_11_address0 sc_out sc_lv 4 signal 43 } 
	{ bufC_11_ce0 sc_out sc_logic 1 signal 43 } 
	{ bufC_11_we0 sc_out sc_logic 1 signal 43 } 
	{ bufC_11_d0 sc_out sc_lv 32 signal 43 } 
	{ bufC_11_q0 sc_in sc_lv 32 signal 43 } 
	{ bufC_12_address0 sc_out sc_lv 4 signal 44 } 
	{ bufC_12_ce0 sc_out sc_logic 1 signal 44 } 
	{ bufC_12_we0 sc_out sc_logic 1 signal 44 } 
	{ bufC_12_d0 sc_out sc_lv 32 signal 44 } 
	{ bufC_12_q0 sc_in sc_lv 32 signal 44 } 
	{ bufC_13_address0 sc_out sc_lv 4 signal 45 } 
	{ bufC_13_ce0 sc_out sc_logic 1 signal 45 } 
	{ bufC_13_we0 sc_out sc_logic 1 signal 45 } 
	{ bufC_13_d0 sc_out sc_lv 32 signal 45 } 
	{ bufC_13_q0 sc_in sc_lv 32 signal 45 } 
	{ bufC_14_address0 sc_out sc_lv 4 signal 46 } 
	{ bufC_14_ce0 sc_out sc_logic 1 signal 46 } 
	{ bufC_14_we0 sc_out sc_logic 1 signal 46 } 
	{ bufC_14_d0 sc_out sc_lv 32 signal 46 } 
	{ bufC_14_q0 sc_in sc_lv 32 signal 46 } 
	{ bufC_15_address0 sc_out sc_lv 4 signal 47 } 
	{ bufC_15_ce0 sc_out sc_logic 1 signal 47 } 
	{ bufC_15_we0 sc_out sc_logic 1 signal 47 } 
	{ bufC_15_d0 sc_out sc_lv 32 signal 47 } 
	{ bufC_15_q0 sc_in sc_lv 32 signal 47 } 
	{ bufC_16_address0 sc_out sc_lv 4 signal 48 } 
	{ bufC_16_ce0 sc_out sc_logic 1 signal 48 } 
	{ bufC_16_we0 sc_out sc_logic 1 signal 48 } 
	{ bufC_16_d0 sc_out sc_lv 32 signal 48 } 
	{ bufC_16_q0 sc_in sc_lv 32 signal 48 } 
	{ bufC_17_address0 sc_out sc_lv 4 signal 49 } 
	{ bufC_17_ce0 sc_out sc_logic 1 signal 49 } 
	{ bufC_17_we0 sc_out sc_logic 1 signal 49 } 
	{ bufC_17_d0 sc_out sc_lv 32 signal 49 } 
	{ bufC_17_q0 sc_in sc_lv 32 signal 49 } 
	{ bufC_18_address0 sc_out sc_lv 4 signal 50 } 
	{ bufC_18_ce0 sc_out sc_logic 1 signal 50 } 
	{ bufC_18_we0 sc_out sc_logic 1 signal 50 } 
	{ bufC_18_d0 sc_out sc_lv 32 signal 50 } 
	{ bufC_18_q0 sc_in sc_lv 32 signal 50 } 
	{ bufC_19_address0 sc_out sc_lv 4 signal 51 } 
	{ bufC_19_ce0 sc_out sc_logic 1 signal 51 } 
	{ bufC_19_we0 sc_out sc_logic 1 signal 51 } 
	{ bufC_19_d0 sc_out sc_lv 32 signal 51 } 
	{ bufC_19_q0 sc_in sc_lv 32 signal 51 } 
	{ bufC_20_address0 sc_out sc_lv 4 signal 52 } 
	{ bufC_20_ce0 sc_out sc_logic 1 signal 52 } 
	{ bufC_20_we0 sc_out sc_logic 1 signal 52 } 
	{ bufC_20_d0 sc_out sc_lv 32 signal 52 } 
	{ bufC_20_q0 sc_in sc_lv 32 signal 52 } 
	{ bufC_21_address0 sc_out sc_lv 4 signal 53 } 
	{ bufC_21_ce0 sc_out sc_logic 1 signal 53 } 
	{ bufC_21_we0 sc_out sc_logic 1 signal 53 } 
	{ bufC_21_d0 sc_out sc_lv 32 signal 53 } 
	{ bufC_21_q0 sc_in sc_lv 32 signal 53 } 
	{ bufC_22_address0 sc_out sc_lv 4 signal 54 } 
	{ bufC_22_ce0 sc_out sc_logic 1 signal 54 } 
	{ bufC_22_we0 sc_out sc_logic 1 signal 54 } 
	{ bufC_22_d0 sc_out sc_lv 32 signal 54 } 
	{ bufC_22_q0 sc_in sc_lv 32 signal 54 } 
	{ bufC_23_address0 sc_out sc_lv 4 signal 55 } 
	{ bufC_23_ce0 sc_out sc_logic 1 signal 55 } 
	{ bufC_23_we0 sc_out sc_logic 1 signal 55 } 
	{ bufC_23_d0 sc_out sc_lv 32 signal 55 } 
	{ bufC_23_q0 sc_in sc_lv 32 signal 55 } 
	{ bufC_24_address0 sc_out sc_lv 4 signal 56 } 
	{ bufC_24_ce0 sc_out sc_logic 1 signal 56 } 
	{ bufC_24_we0 sc_out sc_logic 1 signal 56 } 
	{ bufC_24_d0 sc_out sc_lv 32 signal 56 } 
	{ bufC_24_q0 sc_in sc_lv 32 signal 56 } 
	{ bufC_25_address0 sc_out sc_lv 4 signal 57 } 
	{ bufC_25_ce0 sc_out sc_logic 1 signal 57 } 
	{ bufC_25_we0 sc_out sc_logic 1 signal 57 } 
	{ bufC_25_d0 sc_out sc_lv 32 signal 57 } 
	{ bufC_25_q0 sc_in sc_lv 32 signal 57 } 
	{ bufC_26_address0 sc_out sc_lv 4 signal 58 } 
	{ bufC_26_ce0 sc_out sc_logic 1 signal 58 } 
	{ bufC_26_we0 sc_out sc_logic 1 signal 58 } 
	{ bufC_26_d0 sc_out sc_lv 32 signal 58 } 
	{ bufC_26_q0 sc_in sc_lv 32 signal 58 } 
	{ bufC_27_address0 sc_out sc_lv 4 signal 59 } 
	{ bufC_27_ce0 sc_out sc_logic 1 signal 59 } 
	{ bufC_27_we0 sc_out sc_logic 1 signal 59 } 
	{ bufC_27_d0 sc_out sc_lv 32 signal 59 } 
	{ bufC_27_q0 sc_in sc_lv 32 signal 59 } 
	{ bufC_28_address0 sc_out sc_lv 4 signal 60 } 
	{ bufC_28_ce0 sc_out sc_logic 1 signal 60 } 
	{ bufC_28_we0 sc_out sc_logic 1 signal 60 } 
	{ bufC_28_d0 sc_out sc_lv 32 signal 60 } 
	{ bufC_28_q0 sc_in sc_lv 32 signal 60 } 
	{ bufC_29_address0 sc_out sc_lv 4 signal 61 } 
	{ bufC_29_ce0 sc_out sc_logic 1 signal 61 } 
	{ bufC_29_we0 sc_out sc_logic 1 signal 61 } 
	{ bufC_29_d0 sc_out sc_lv 32 signal 61 } 
	{ bufC_29_q0 sc_in sc_lv 32 signal 61 } 
	{ bufC_30_address0 sc_out sc_lv 4 signal 62 } 
	{ bufC_30_ce0 sc_out sc_logic 1 signal 62 } 
	{ bufC_30_we0 sc_out sc_logic 1 signal 62 } 
	{ bufC_30_d0 sc_out sc_lv 32 signal 62 } 
	{ bufC_30_q0 sc_in sc_lv 32 signal 62 } 
	{ bufC_31_address0 sc_out sc_lv 4 signal 63 } 
	{ bufC_31_ce0 sc_out sc_logic 1 signal 63 } 
	{ bufC_31_we0 sc_out sc_logic 1 signal 63 } 
	{ bufC_31_d0 sc_out sc_lv 32 signal 63 } 
	{ bufC_31_q0 sc_in sc_lv 32 signal 63 } 
	{ bufC_32_address0 sc_out sc_lv 4 signal 64 } 
	{ bufC_32_ce0 sc_out sc_logic 1 signal 64 } 
	{ bufC_32_we0 sc_out sc_logic 1 signal 64 } 
	{ bufC_32_d0 sc_out sc_lv 32 signal 64 } 
	{ bufC_32_q0 sc_in sc_lv 32 signal 64 } 
	{ bufC_33_address0 sc_out sc_lv 4 signal 65 } 
	{ bufC_33_ce0 sc_out sc_logic 1 signal 65 } 
	{ bufC_33_we0 sc_out sc_logic 1 signal 65 } 
	{ bufC_33_d0 sc_out sc_lv 32 signal 65 } 
	{ bufC_33_q0 sc_in sc_lv 32 signal 65 } 
	{ bufC_34_address0 sc_out sc_lv 4 signal 66 } 
	{ bufC_34_ce0 sc_out sc_logic 1 signal 66 } 
	{ bufC_34_we0 sc_out sc_logic 1 signal 66 } 
	{ bufC_34_d0 sc_out sc_lv 32 signal 66 } 
	{ bufC_34_q0 sc_in sc_lv 32 signal 66 } 
	{ bufC_35_address0 sc_out sc_lv 4 signal 67 } 
	{ bufC_35_ce0 sc_out sc_logic 1 signal 67 } 
	{ bufC_35_we0 sc_out sc_logic 1 signal 67 } 
	{ bufC_35_d0 sc_out sc_lv 32 signal 67 } 
	{ bufC_35_q0 sc_in sc_lv 32 signal 67 } 
	{ bufC_36_address0 sc_out sc_lv 4 signal 68 } 
	{ bufC_36_ce0 sc_out sc_logic 1 signal 68 } 
	{ bufC_36_we0 sc_out sc_logic 1 signal 68 } 
	{ bufC_36_d0 sc_out sc_lv 32 signal 68 } 
	{ bufC_36_q0 sc_in sc_lv 32 signal 68 } 
	{ bufC_37_address0 sc_out sc_lv 4 signal 69 } 
	{ bufC_37_ce0 sc_out sc_logic 1 signal 69 } 
	{ bufC_37_we0 sc_out sc_logic 1 signal 69 } 
	{ bufC_37_d0 sc_out sc_lv 32 signal 69 } 
	{ bufC_37_q0 sc_in sc_lv 32 signal 69 } 
	{ bufC_38_address0 sc_out sc_lv 4 signal 70 } 
	{ bufC_38_ce0 sc_out sc_logic 1 signal 70 } 
	{ bufC_38_we0 sc_out sc_logic 1 signal 70 } 
	{ bufC_38_d0 sc_out sc_lv 32 signal 70 } 
	{ bufC_38_q0 sc_in sc_lv 32 signal 70 } 
	{ bufC_39_address0 sc_out sc_lv 4 signal 71 } 
	{ bufC_39_ce0 sc_out sc_logic 1 signal 71 } 
	{ bufC_39_we0 sc_out sc_logic 1 signal 71 } 
	{ bufC_39_d0 sc_out sc_lv 32 signal 71 } 
	{ bufC_39_q0 sc_in sc_lv 32 signal 71 } 
	{ bufC_40_address0 sc_out sc_lv 4 signal 72 } 
	{ bufC_40_ce0 sc_out sc_logic 1 signal 72 } 
	{ bufC_40_we0 sc_out sc_logic 1 signal 72 } 
	{ bufC_40_d0 sc_out sc_lv 32 signal 72 } 
	{ bufC_40_q0 sc_in sc_lv 32 signal 72 } 
	{ bufC_41_address0 sc_out sc_lv 4 signal 73 } 
	{ bufC_41_ce0 sc_out sc_logic 1 signal 73 } 
	{ bufC_41_we0 sc_out sc_logic 1 signal 73 } 
	{ bufC_41_d0 sc_out sc_lv 32 signal 73 } 
	{ bufC_41_q0 sc_in sc_lv 32 signal 73 } 
	{ bufC_42_address0 sc_out sc_lv 4 signal 74 } 
	{ bufC_42_ce0 sc_out sc_logic 1 signal 74 } 
	{ bufC_42_we0 sc_out sc_logic 1 signal 74 } 
	{ bufC_42_d0 sc_out sc_lv 32 signal 74 } 
	{ bufC_42_q0 sc_in sc_lv 32 signal 74 } 
	{ bufC_43_address0 sc_out sc_lv 4 signal 75 } 
	{ bufC_43_ce0 sc_out sc_logic 1 signal 75 } 
	{ bufC_43_we0 sc_out sc_logic 1 signal 75 } 
	{ bufC_43_d0 sc_out sc_lv 32 signal 75 } 
	{ bufC_43_q0 sc_in sc_lv 32 signal 75 } 
	{ bufC_44_address0 sc_out sc_lv 4 signal 76 } 
	{ bufC_44_ce0 sc_out sc_logic 1 signal 76 } 
	{ bufC_44_we0 sc_out sc_logic 1 signal 76 } 
	{ bufC_44_d0 sc_out sc_lv 32 signal 76 } 
	{ bufC_44_q0 sc_in sc_lv 32 signal 76 } 
	{ bufC_45_address0 sc_out sc_lv 4 signal 77 } 
	{ bufC_45_ce0 sc_out sc_logic 1 signal 77 } 
	{ bufC_45_we0 sc_out sc_logic 1 signal 77 } 
	{ bufC_45_d0 sc_out sc_lv 32 signal 77 } 
	{ bufC_45_q0 sc_in sc_lv 32 signal 77 } 
	{ bufC_46_address0 sc_out sc_lv 4 signal 78 } 
	{ bufC_46_ce0 sc_out sc_logic 1 signal 78 } 
	{ bufC_46_we0 sc_out sc_logic 1 signal 78 } 
	{ bufC_46_d0 sc_out sc_lv 32 signal 78 } 
	{ bufC_46_q0 sc_in sc_lv 32 signal 78 } 
	{ bufC_47_address0 sc_out sc_lv 4 signal 79 } 
	{ bufC_47_ce0 sc_out sc_logic 1 signal 79 } 
	{ bufC_47_we0 sc_out sc_logic 1 signal 79 } 
	{ bufC_47_d0 sc_out sc_lv 32 signal 79 } 
	{ bufC_47_q0 sc_in sc_lv 32 signal 79 } 
	{ bufC_48_address0 sc_out sc_lv 4 signal 80 } 
	{ bufC_48_ce0 sc_out sc_logic 1 signal 80 } 
	{ bufC_48_we0 sc_out sc_logic 1 signal 80 } 
	{ bufC_48_d0 sc_out sc_lv 32 signal 80 } 
	{ bufC_48_q0 sc_in sc_lv 32 signal 80 } 
	{ bufC_49_address0 sc_out sc_lv 4 signal 81 } 
	{ bufC_49_ce0 sc_out sc_logic 1 signal 81 } 
	{ bufC_49_we0 sc_out sc_logic 1 signal 81 } 
	{ bufC_49_d0 sc_out sc_lv 32 signal 81 } 
	{ bufC_49_q0 sc_in sc_lv 32 signal 81 } 
	{ bufC_50_address0 sc_out sc_lv 4 signal 82 } 
	{ bufC_50_ce0 sc_out sc_logic 1 signal 82 } 
	{ bufC_50_we0 sc_out sc_logic 1 signal 82 } 
	{ bufC_50_d0 sc_out sc_lv 32 signal 82 } 
	{ bufC_50_q0 sc_in sc_lv 32 signal 82 } 
	{ bufC_51_address0 sc_out sc_lv 4 signal 83 } 
	{ bufC_51_ce0 sc_out sc_logic 1 signal 83 } 
	{ bufC_51_we0 sc_out sc_logic 1 signal 83 } 
	{ bufC_51_d0 sc_out sc_lv 32 signal 83 } 
	{ bufC_51_q0 sc_in sc_lv 32 signal 83 } 
	{ bufC_52_address0 sc_out sc_lv 4 signal 84 } 
	{ bufC_52_ce0 sc_out sc_logic 1 signal 84 } 
	{ bufC_52_we0 sc_out sc_logic 1 signal 84 } 
	{ bufC_52_d0 sc_out sc_lv 32 signal 84 } 
	{ bufC_52_q0 sc_in sc_lv 32 signal 84 } 
	{ bufC_53_address0 sc_out sc_lv 4 signal 85 } 
	{ bufC_53_ce0 sc_out sc_logic 1 signal 85 } 
	{ bufC_53_we0 sc_out sc_logic 1 signal 85 } 
	{ bufC_53_d0 sc_out sc_lv 32 signal 85 } 
	{ bufC_53_q0 sc_in sc_lv 32 signal 85 } 
	{ bufC_54_address0 sc_out sc_lv 4 signal 86 } 
	{ bufC_54_ce0 sc_out sc_logic 1 signal 86 } 
	{ bufC_54_we0 sc_out sc_logic 1 signal 86 } 
	{ bufC_54_d0 sc_out sc_lv 32 signal 86 } 
	{ bufC_54_q0 sc_in sc_lv 32 signal 86 } 
	{ bufC_55_address0 sc_out sc_lv 4 signal 87 } 
	{ bufC_55_ce0 sc_out sc_logic 1 signal 87 } 
	{ bufC_55_we0 sc_out sc_logic 1 signal 87 } 
	{ bufC_55_d0 sc_out sc_lv 32 signal 87 } 
	{ bufC_55_q0 sc_in sc_lv 32 signal 87 } 
	{ bufC_56_address0 sc_out sc_lv 4 signal 88 } 
	{ bufC_56_ce0 sc_out sc_logic 1 signal 88 } 
	{ bufC_56_we0 sc_out sc_logic 1 signal 88 } 
	{ bufC_56_d0 sc_out sc_lv 32 signal 88 } 
	{ bufC_56_q0 sc_in sc_lv 32 signal 88 } 
	{ bufC_57_address0 sc_out sc_lv 4 signal 89 } 
	{ bufC_57_ce0 sc_out sc_logic 1 signal 89 } 
	{ bufC_57_we0 sc_out sc_logic 1 signal 89 } 
	{ bufC_57_d0 sc_out sc_lv 32 signal 89 } 
	{ bufC_57_q0 sc_in sc_lv 32 signal 89 } 
	{ bufC_58_address0 sc_out sc_lv 4 signal 90 } 
	{ bufC_58_ce0 sc_out sc_logic 1 signal 90 } 
	{ bufC_58_we0 sc_out sc_logic 1 signal 90 } 
	{ bufC_58_d0 sc_out sc_lv 32 signal 90 } 
	{ bufC_58_q0 sc_in sc_lv 32 signal 90 } 
	{ bufC_59_address0 sc_out sc_lv 4 signal 91 } 
	{ bufC_59_ce0 sc_out sc_logic 1 signal 91 } 
	{ bufC_59_we0 sc_out sc_logic 1 signal 91 } 
	{ bufC_59_d0 sc_out sc_lv 32 signal 91 } 
	{ bufC_59_q0 sc_in sc_lv 32 signal 91 } 
	{ bufC_60_address0 sc_out sc_lv 4 signal 92 } 
	{ bufC_60_ce0 sc_out sc_logic 1 signal 92 } 
	{ bufC_60_we0 sc_out sc_logic 1 signal 92 } 
	{ bufC_60_d0 sc_out sc_lv 32 signal 92 } 
	{ bufC_60_q0 sc_in sc_lv 32 signal 92 } 
	{ bufC_61_address0 sc_out sc_lv 4 signal 93 } 
	{ bufC_61_ce0 sc_out sc_logic 1 signal 93 } 
	{ bufC_61_we0 sc_out sc_logic 1 signal 93 } 
	{ bufC_61_d0 sc_out sc_lv 32 signal 93 } 
	{ bufC_61_q0 sc_in sc_lv 32 signal 93 } 
	{ bufC_62_address0 sc_out sc_lv 4 signal 94 } 
	{ bufC_62_ce0 sc_out sc_logic 1 signal 94 } 
	{ bufC_62_we0 sc_out sc_logic 1 signal 94 } 
	{ bufC_62_d0 sc_out sc_lv 32 signal 94 } 
	{ bufC_62_q0 sc_in sc_lv 32 signal 94 } 
	{ bufC_63_address0 sc_out sc_lv 4 signal 95 } 
	{ bufC_63_ce0 sc_out sc_logic 1 signal 95 } 
	{ bufC_63_we0 sc_out sc_logic 1 signal 95 } 
	{ bufC_63_d0 sc_out sc_lv 32 signal 95 } 
	{ bufC_63_q0 sc_in sc_lv 32 signal 95 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bufA_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufA", "role": "address0" }} , 
 	{ "name": "bufA_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA", "role": "ce0" }} , 
 	{ "name": "bufA_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufA", "role": "q0" }} , 
 	{ "name": "bufA_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufA_1", "role": "address0" }} , 
 	{ "name": "bufA_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_1", "role": "ce0" }} , 
 	{ "name": "bufA_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufA_1", "role": "q0" }} , 
 	{ "name": "bufA_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufA_2", "role": "address0" }} , 
 	{ "name": "bufA_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_2", "role": "ce0" }} , 
 	{ "name": "bufA_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufA_2", "role": "q0" }} , 
 	{ "name": "bufA_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufA_3", "role": "address0" }} , 
 	{ "name": "bufA_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_3", "role": "ce0" }} , 
 	{ "name": "bufA_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufA_3", "role": "q0" }} , 
 	{ "name": "bufA_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufA_4", "role": "address0" }} , 
 	{ "name": "bufA_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_4", "role": "ce0" }} , 
 	{ "name": "bufA_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufA_4", "role": "q0" }} , 
 	{ "name": "bufA_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufA_5", "role": "address0" }} , 
 	{ "name": "bufA_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_5", "role": "ce0" }} , 
 	{ "name": "bufA_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufA_5", "role": "q0" }} , 
 	{ "name": "bufA_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufA_6", "role": "address0" }} , 
 	{ "name": "bufA_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_6", "role": "ce0" }} , 
 	{ "name": "bufA_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufA_6", "role": "q0" }} , 
 	{ "name": "bufA_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufA_7", "role": "address0" }} , 
 	{ "name": "bufA_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_7", "role": "ce0" }} , 
 	{ "name": "bufA_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufA_7", "role": "q0" }} , 
 	{ "name": "bufA_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufA_8", "role": "address0" }} , 
 	{ "name": "bufA_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_8", "role": "ce0" }} , 
 	{ "name": "bufA_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufA_8", "role": "q0" }} , 
 	{ "name": "bufA_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufA_9", "role": "address0" }} , 
 	{ "name": "bufA_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_9", "role": "ce0" }} , 
 	{ "name": "bufA_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufA_9", "role": "q0" }} , 
 	{ "name": "bufA_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufA_10", "role": "address0" }} , 
 	{ "name": "bufA_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_10", "role": "ce0" }} , 
 	{ "name": "bufA_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufA_10", "role": "q0" }} , 
 	{ "name": "bufA_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufA_11", "role": "address0" }} , 
 	{ "name": "bufA_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_11", "role": "ce0" }} , 
 	{ "name": "bufA_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufA_11", "role": "q0" }} , 
 	{ "name": "bufA_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufA_12", "role": "address0" }} , 
 	{ "name": "bufA_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_12", "role": "ce0" }} , 
 	{ "name": "bufA_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufA_12", "role": "q0" }} , 
 	{ "name": "bufA_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufA_13", "role": "address0" }} , 
 	{ "name": "bufA_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_13", "role": "ce0" }} , 
 	{ "name": "bufA_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufA_13", "role": "q0" }} , 
 	{ "name": "bufA_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufA_14", "role": "address0" }} , 
 	{ "name": "bufA_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_14", "role": "ce0" }} , 
 	{ "name": "bufA_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufA_14", "role": "q0" }} , 
 	{ "name": "bufA_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufA_15", "role": "address0" }} , 
 	{ "name": "bufA_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_15", "role": "ce0" }} , 
 	{ "name": "bufA_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufA_15", "role": "q0" }} , 
 	{ "name": "bufW_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufW", "role": "address0" }} , 
 	{ "name": "bufW_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW", "role": "ce0" }} , 
 	{ "name": "bufW_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufW", "role": "q0" }} , 
 	{ "name": "bufW_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufW_1", "role": "address0" }} , 
 	{ "name": "bufW_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_1", "role": "ce0" }} , 
 	{ "name": "bufW_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufW_1", "role": "q0" }} , 
 	{ "name": "bufW_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufW_2", "role": "address0" }} , 
 	{ "name": "bufW_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_2", "role": "ce0" }} , 
 	{ "name": "bufW_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufW_2", "role": "q0" }} , 
 	{ "name": "bufW_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufW_3", "role": "address0" }} , 
 	{ "name": "bufW_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_3", "role": "ce0" }} , 
 	{ "name": "bufW_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufW_3", "role": "q0" }} , 
 	{ "name": "bufW_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufW_4", "role": "address0" }} , 
 	{ "name": "bufW_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_4", "role": "ce0" }} , 
 	{ "name": "bufW_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufW_4", "role": "q0" }} , 
 	{ "name": "bufW_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufW_5", "role": "address0" }} , 
 	{ "name": "bufW_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_5", "role": "ce0" }} , 
 	{ "name": "bufW_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufW_5", "role": "q0" }} , 
 	{ "name": "bufW_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufW_6", "role": "address0" }} , 
 	{ "name": "bufW_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_6", "role": "ce0" }} , 
 	{ "name": "bufW_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufW_6", "role": "q0" }} , 
 	{ "name": "bufW_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufW_7", "role": "address0" }} , 
 	{ "name": "bufW_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_7", "role": "ce0" }} , 
 	{ "name": "bufW_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufW_7", "role": "q0" }} , 
 	{ "name": "bufW_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufW_8", "role": "address0" }} , 
 	{ "name": "bufW_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_8", "role": "ce0" }} , 
 	{ "name": "bufW_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufW_8", "role": "q0" }} , 
 	{ "name": "bufW_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufW_9", "role": "address0" }} , 
 	{ "name": "bufW_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_9", "role": "ce0" }} , 
 	{ "name": "bufW_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufW_9", "role": "q0" }} , 
 	{ "name": "bufW_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufW_10", "role": "address0" }} , 
 	{ "name": "bufW_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_10", "role": "ce0" }} , 
 	{ "name": "bufW_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufW_10", "role": "q0" }} , 
 	{ "name": "bufW_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufW_11", "role": "address0" }} , 
 	{ "name": "bufW_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_11", "role": "ce0" }} , 
 	{ "name": "bufW_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufW_11", "role": "q0" }} , 
 	{ "name": "bufW_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufW_12", "role": "address0" }} , 
 	{ "name": "bufW_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_12", "role": "ce0" }} , 
 	{ "name": "bufW_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufW_12", "role": "q0" }} , 
 	{ "name": "bufW_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufW_13", "role": "address0" }} , 
 	{ "name": "bufW_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_13", "role": "ce0" }} , 
 	{ "name": "bufW_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufW_13", "role": "q0" }} , 
 	{ "name": "bufW_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufW_14", "role": "address0" }} , 
 	{ "name": "bufW_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_14", "role": "ce0" }} , 
 	{ "name": "bufW_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufW_14", "role": "q0" }} , 
 	{ "name": "bufW_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufW_15", "role": "address0" }} , 
 	{ "name": "bufW_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_15", "role": "ce0" }} , 
 	{ "name": "bufW_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufW_15", "role": "q0" }} , 
 	{ "name": "bufC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC", "role": "address0" }} , 
 	{ "name": "bufC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC", "role": "ce0" }} , 
 	{ "name": "bufC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC", "role": "we0" }} , 
 	{ "name": "bufC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC", "role": "d0" }} , 
 	{ "name": "bufC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC", "role": "q0" }} , 
 	{ "name": "bufC_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_1", "role": "address0" }} , 
 	{ "name": "bufC_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_1", "role": "ce0" }} , 
 	{ "name": "bufC_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_1", "role": "we0" }} , 
 	{ "name": "bufC_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_1", "role": "d0" }} , 
 	{ "name": "bufC_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_1", "role": "q0" }} , 
 	{ "name": "bufC_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_2", "role": "address0" }} , 
 	{ "name": "bufC_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_2", "role": "ce0" }} , 
 	{ "name": "bufC_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_2", "role": "we0" }} , 
 	{ "name": "bufC_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_2", "role": "d0" }} , 
 	{ "name": "bufC_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_2", "role": "q0" }} , 
 	{ "name": "bufC_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_3", "role": "address0" }} , 
 	{ "name": "bufC_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_3", "role": "ce0" }} , 
 	{ "name": "bufC_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_3", "role": "we0" }} , 
 	{ "name": "bufC_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_3", "role": "d0" }} , 
 	{ "name": "bufC_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_3", "role": "q0" }} , 
 	{ "name": "bufC_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_4", "role": "address0" }} , 
 	{ "name": "bufC_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_4", "role": "ce0" }} , 
 	{ "name": "bufC_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_4", "role": "we0" }} , 
 	{ "name": "bufC_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_4", "role": "d0" }} , 
 	{ "name": "bufC_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_4", "role": "q0" }} , 
 	{ "name": "bufC_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_5", "role": "address0" }} , 
 	{ "name": "bufC_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_5", "role": "ce0" }} , 
 	{ "name": "bufC_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_5", "role": "we0" }} , 
 	{ "name": "bufC_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_5", "role": "d0" }} , 
 	{ "name": "bufC_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_5", "role": "q0" }} , 
 	{ "name": "bufC_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_6", "role": "address0" }} , 
 	{ "name": "bufC_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_6", "role": "ce0" }} , 
 	{ "name": "bufC_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_6", "role": "we0" }} , 
 	{ "name": "bufC_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_6", "role": "d0" }} , 
 	{ "name": "bufC_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_6", "role": "q0" }} , 
 	{ "name": "bufC_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_7", "role": "address0" }} , 
 	{ "name": "bufC_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_7", "role": "ce0" }} , 
 	{ "name": "bufC_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_7", "role": "we0" }} , 
 	{ "name": "bufC_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_7", "role": "d0" }} , 
 	{ "name": "bufC_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_7", "role": "q0" }} , 
 	{ "name": "bufC_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_8", "role": "address0" }} , 
 	{ "name": "bufC_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_8", "role": "ce0" }} , 
 	{ "name": "bufC_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_8", "role": "we0" }} , 
 	{ "name": "bufC_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_8", "role": "d0" }} , 
 	{ "name": "bufC_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_8", "role": "q0" }} , 
 	{ "name": "bufC_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_9", "role": "address0" }} , 
 	{ "name": "bufC_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_9", "role": "ce0" }} , 
 	{ "name": "bufC_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_9", "role": "we0" }} , 
 	{ "name": "bufC_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_9", "role": "d0" }} , 
 	{ "name": "bufC_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_9", "role": "q0" }} , 
 	{ "name": "bufC_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_10", "role": "address0" }} , 
 	{ "name": "bufC_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_10", "role": "ce0" }} , 
 	{ "name": "bufC_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_10", "role": "we0" }} , 
 	{ "name": "bufC_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_10", "role": "d0" }} , 
 	{ "name": "bufC_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_10", "role": "q0" }} , 
 	{ "name": "bufC_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_11", "role": "address0" }} , 
 	{ "name": "bufC_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_11", "role": "ce0" }} , 
 	{ "name": "bufC_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_11", "role": "we0" }} , 
 	{ "name": "bufC_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_11", "role": "d0" }} , 
 	{ "name": "bufC_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_11", "role": "q0" }} , 
 	{ "name": "bufC_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_12", "role": "address0" }} , 
 	{ "name": "bufC_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_12", "role": "ce0" }} , 
 	{ "name": "bufC_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_12", "role": "we0" }} , 
 	{ "name": "bufC_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_12", "role": "d0" }} , 
 	{ "name": "bufC_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_12", "role": "q0" }} , 
 	{ "name": "bufC_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_13", "role": "address0" }} , 
 	{ "name": "bufC_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_13", "role": "ce0" }} , 
 	{ "name": "bufC_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_13", "role": "we0" }} , 
 	{ "name": "bufC_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_13", "role": "d0" }} , 
 	{ "name": "bufC_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_13", "role": "q0" }} , 
 	{ "name": "bufC_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_14", "role": "address0" }} , 
 	{ "name": "bufC_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_14", "role": "ce0" }} , 
 	{ "name": "bufC_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_14", "role": "we0" }} , 
 	{ "name": "bufC_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_14", "role": "d0" }} , 
 	{ "name": "bufC_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_14", "role": "q0" }} , 
 	{ "name": "bufC_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_15", "role": "address0" }} , 
 	{ "name": "bufC_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_15", "role": "ce0" }} , 
 	{ "name": "bufC_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_15", "role": "we0" }} , 
 	{ "name": "bufC_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_15", "role": "d0" }} , 
 	{ "name": "bufC_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_15", "role": "q0" }} , 
 	{ "name": "bufC_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_16", "role": "address0" }} , 
 	{ "name": "bufC_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_16", "role": "ce0" }} , 
 	{ "name": "bufC_16_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_16", "role": "we0" }} , 
 	{ "name": "bufC_16_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_16", "role": "d0" }} , 
 	{ "name": "bufC_16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_16", "role": "q0" }} , 
 	{ "name": "bufC_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_17", "role": "address0" }} , 
 	{ "name": "bufC_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_17", "role": "ce0" }} , 
 	{ "name": "bufC_17_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_17", "role": "we0" }} , 
 	{ "name": "bufC_17_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_17", "role": "d0" }} , 
 	{ "name": "bufC_17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_17", "role": "q0" }} , 
 	{ "name": "bufC_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_18", "role": "address0" }} , 
 	{ "name": "bufC_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_18", "role": "ce0" }} , 
 	{ "name": "bufC_18_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_18", "role": "we0" }} , 
 	{ "name": "bufC_18_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_18", "role": "d0" }} , 
 	{ "name": "bufC_18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_18", "role": "q0" }} , 
 	{ "name": "bufC_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_19", "role": "address0" }} , 
 	{ "name": "bufC_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_19", "role": "ce0" }} , 
 	{ "name": "bufC_19_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_19", "role": "we0" }} , 
 	{ "name": "bufC_19_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_19", "role": "d0" }} , 
 	{ "name": "bufC_19_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_19", "role": "q0" }} , 
 	{ "name": "bufC_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_20", "role": "address0" }} , 
 	{ "name": "bufC_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_20", "role": "ce0" }} , 
 	{ "name": "bufC_20_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_20", "role": "we0" }} , 
 	{ "name": "bufC_20_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_20", "role": "d0" }} , 
 	{ "name": "bufC_20_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_20", "role": "q0" }} , 
 	{ "name": "bufC_21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_21", "role": "address0" }} , 
 	{ "name": "bufC_21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_21", "role": "ce0" }} , 
 	{ "name": "bufC_21_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_21", "role": "we0" }} , 
 	{ "name": "bufC_21_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_21", "role": "d0" }} , 
 	{ "name": "bufC_21_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_21", "role": "q0" }} , 
 	{ "name": "bufC_22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_22", "role": "address0" }} , 
 	{ "name": "bufC_22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_22", "role": "ce0" }} , 
 	{ "name": "bufC_22_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_22", "role": "we0" }} , 
 	{ "name": "bufC_22_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_22", "role": "d0" }} , 
 	{ "name": "bufC_22_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_22", "role": "q0" }} , 
 	{ "name": "bufC_23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_23", "role": "address0" }} , 
 	{ "name": "bufC_23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_23", "role": "ce0" }} , 
 	{ "name": "bufC_23_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_23", "role": "we0" }} , 
 	{ "name": "bufC_23_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_23", "role": "d0" }} , 
 	{ "name": "bufC_23_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_23", "role": "q0" }} , 
 	{ "name": "bufC_24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_24", "role": "address0" }} , 
 	{ "name": "bufC_24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_24", "role": "ce0" }} , 
 	{ "name": "bufC_24_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_24", "role": "we0" }} , 
 	{ "name": "bufC_24_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_24", "role": "d0" }} , 
 	{ "name": "bufC_24_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_24", "role": "q0" }} , 
 	{ "name": "bufC_25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_25", "role": "address0" }} , 
 	{ "name": "bufC_25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_25", "role": "ce0" }} , 
 	{ "name": "bufC_25_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_25", "role": "we0" }} , 
 	{ "name": "bufC_25_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_25", "role": "d0" }} , 
 	{ "name": "bufC_25_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_25", "role": "q0" }} , 
 	{ "name": "bufC_26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_26", "role": "address0" }} , 
 	{ "name": "bufC_26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_26", "role": "ce0" }} , 
 	{ "name": "bufC_26_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_26", "role": "we0" }} , 
 	{ "name": "bufC_26_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_26", "role": "d0" }} , 
 	{ "name": "bufC_26_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_26", "role": "q0" }} , 
 	{ "name": "bufC_27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_27", "role": "address0" }} , 
 	{ "name": "bufC_27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_27", "role": "ce0" }} , 
 	{ "name": "bufC_27_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_27", "role": "we0" }} , 
 	{ "name": "bufC_27_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_27", "role": "d0" }} , 
 	{ "name": "bufC_27_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_27", "role": "q0" }} , 
 	{ "name": "bufC_28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_28", "role": "address0" }} , 
 	{ "name": "bufC_28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_28", "role": "ce0" }} , 
 	{ "name": "bufC_28_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_28", "role": "we0" }} , 
 	{ "name": "bufC_28_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_28", "role": "d0" }} , 
 	{ "name": "bufC_28_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_28", "role": "q0" }} , 
 	{ "name": "bufC_29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_29", "role": "address0" }} , 
 	{ "name": "bufC_29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_29", "role": "ce0" }} , 
 	{ "name": "bufC_29_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_29", "role": "we0" }} , 
 	{ "name": "bufC_29_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_29", "role": "d0" }} , 
 	{ "name": "bufC_29_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_29", "role": "q0" }} , 
 	{ "name": "bufC_30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_30", "role": "address0" }} , 
 	{ "name": "bufC_30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_30", "role": "ce0" }} , 
 	{ "name": "bufC_30_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_30", "role": "we0" }} , 
 	{ "name": "bufC_30_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_30", "role": "d0" }} , 
 	{ "name": "bufC_30_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_30", "role": "q0" }} , 
 	{ "name": "bufC_31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_31", "role": "address0" }} , 
 	{ "name": "bufC_31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_31", "role": "ce0" }} , 
 	{ "name": "bufC_31_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_31", "role": "we0" }} , 
 	{ "name": "bufC_31_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_31", "role": "d0" }} , 
 	{ "name": "bufC_31_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_31", "role": "q0" }} , 
 	{ "name": "bufC_32_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_32", "role": "address0" }} , 
 	{ "name": "bufC_32_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_32", "role": "ce0" }} , 
 	{ "name": "bufC_32_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_32", "role": "we0" }} , 
 	{ "name": "bufC_32_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_32", "role": "d0" }} , 
 	{ "name": "bufC_32_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_32", "role": "q0" }} , 
 	{ "name": "bufC_33_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_33", "role": "address0" }} , 
 	{ "name": "bufC_33_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_33", "role": "ce0" }} , 
 	{ "name": "bufC_33_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_33", "role": "we0" }} , 
 	{ "name": "bufC_33_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_33", "role": "d0" }} , 
 	{ "name": "bufC_33_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_33", "role": "q0" }} , 
 	{ "name": "bufC_34_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_34", "role": "address0" }} , 
 	{ "name": "bufC_34_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_34", "role": "ce0" }} , 
 	{ "name": "bufC_34_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_34", "role": "we0" }} , 
 	{ "name": "bufC_34_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_34", "role": "d0" }} , 
 	{ "name": "bufC_34_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_34", "role": "q0" }} , 
 	{ "name": "bufC_35_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_35", "role": "address0" }} , 
 	{ "name": "bufC_35_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_35", "role": "ce0" }} , 
 	{ "name": "bufC_35_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_35", "role": "we0" }} , 
 	{ "name": "bufC_35_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_35", "role": "d0" }} , 
 	{ "name": "bufC_35_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_35", "role": "q0" }} , 
 	{ "name": "bufC_36_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_36", "role": "address0" }} , 
 	{ "name": "bufC_36_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_36", "role": "ce0" }} , 
 	{ "name": "bufC_36_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_36", "role": "we0" }} , 
 	{ "name": "bufC_36_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_36", "role": "d0" }} , 
 	{ "name": "bufC_36_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_36", "role": "q0" }} , 
 	{ "name": "bufC_37_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_37", "role": "address0" }} , 
 	{ "name": "bufC_37_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_37", "role": "ce0" }} , 
 	{ "name": "bufC_37_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_37", "role": "we0" }} , 
 	{ "name": "bufC_37_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_37", "role": "d0" }} , 
 	{ "name": "bufC_37_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_37", "role": "q0" }} , 
 	{ "name": "bufC_38_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_38", "role": "address0" }} , 
 	{ "name": "bufC_38_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_38", "role": "ce0" }} , 
 	{ "name": "bufC_38_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_38", "role": "we0" }} , 
 	{ "name": "bufC_38_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_38", "role": "d0" }} , 
 	{ "name": "bufC_38_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_38", "role": "q0" }} , 
 	{ "name": "bufC_39_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_39", "role": "address0" }} , 
 	{ "name": "bufC_39_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_39", "role": "ce0" }} , 
 	{ "name": "bufC_39_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_39", "role": "we0" }} , 
 	{ "name": "bufC_39_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_39", "role": "d0" }} , 
 	{ "name": "bufC_39_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_39", "role": "q0" }} , 
 	{ "name": "bufC_40_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_40", "role": "address0" }} , 
 	{ "name": "bufC_40_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_40", "role": "ce0" }} , 
 	{ "name": "bufC_40_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_40", "role": "we0" }} , 
 	{ "name": "bufC_40_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_40", "role": "d0" }} , 
 	{ "name": "bufC_40_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_40", "role": "q0" }} , 
 	{ "name": "bufC_41_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_41", "role": "address0" }} , 
 	{ "name": "bufC_41_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_41", "role": "ce0" }} , 
 	{ "name": "bufC_41_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_41", "role": "we0" }} , 
 	{ "name": "bufC_41_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_41", "role": "d0" }} , 
 	{ "name": "bufC_41_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_41", "role": "q0" }} , 
 	{ "name": "bufC_42_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_42", "role": "address0" }} , 
 	{ "name": "bufC_42_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_42", "role": "ce0" }} , 
 	{ "name": "bufC_42_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_42", "role": "we0" }} , 
 	{ "name": "bufC_42_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_42", "role": "d0" }} , 
 	{ "name": "bufC_42_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_42", "role": "q0" }} , 
 	{ "name": "bufC_43_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_43", "role": "address0" }} , 
 	{ "name": "bufC_43_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_43", "role": "ce0" }} , 
 	{ "name": "bufC_43_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_43", "role": "we0" }} , 
 	{ "name": "bufC_43_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_43", "role": "d0" }} , 
 	{ "name": "bufC_43_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_43", "role": "q0" }} , 
 	{ "name": "bufC_44_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_44", "role": "address0" }} , 
 	{ "name": "bufC_44_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_44", "role": "ce0" }} , 
 	{ "name": "bufC_44_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_44", "role": "we0" }} , 
 	{ "name": "bufC_44_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_44", "role": "d0" }} , 
 	{ "name": "bufC_44_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_44", "role": "q0" }} , 
 	{ "name": "bufC_45_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_45", "role": "address0" }} , 
 	{ "name": "bufC_45_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_45", "role": "ce0" }} , 
 	{ "name": "bufC_45_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_45", "role": "we0" }} , 
 	{ "name": "bufC_45_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_45", "role": "d0" }} , 
 	{ "name": "bufC_45_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_45", "role": "q0" }} , 
 	{ "name": "bufC_46_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_46", "role": "address0" }} , 
 	{ "name": "bufC_46_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_46", "role": "ce0" }} , 
 	{ "name": "bufC_46_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_46", "role": "we0" }} , 
 	{ "name": "bufC_46_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_46", "role": "d0" }} , 
 	{ "name": "bufC_46_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_46", "role": "q0" }} , 
 	{ "name": "bufC_47_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_47", "role": "address0" }} , 
 	{ "name": "bufC_47_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_47", "role": "ce0" }} , 
 	{ "name": "bufC_47_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_47", "role": "we0" }} , 
 	{ "name": "bufC_47_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_47", "role": "d0" }} , 
 	{ "name": "bufC_47_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_47", "role": "q0" }} , 
 	{ "name": "bufC_48_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_48", "role": "address0" }} , 
 	{ "name": "bufC_48_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_48", "role": "ce0" }} , 
 	{ "name": "bufC_48_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_48", "role": "we0" }} , 
 	{ "name": "bufC_48_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_48", "role": "d0" }} , 
 	{ "name": "bufC_48_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_48", "role": "q0" }} , 
 	{ "name": "bufC_49_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_49", "role": "address0" }} , 
 	{ "name": "bufC_49_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_49", "role": "ce0" }} , 
 	{ "name": "bufC_49_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_49", "role": "we0" }} , 
 	{ "name": "bufC_49_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_49", "role": "d0" }} , 
 	{ "name": "bufC_49_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_49", "role": "q0" }} , 
 	{ "name": "bufC_50_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_50", "role": "address0" }} , 
 	{ "name": "bufC_50_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_50", "role": "ce0" }} , 
 	{ "name": "bufC_50_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_50", "role": "we0" }} , 
 	{ "name": "bufC_50_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_50", "role": "d0" }} , 
 	{ "name": "bufC_50_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_50", "role": "q0" }} , 
 	{ "name": "bufC_51_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_51", "role": "address0" }} , 
 	{ "name": "bufC_51_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_51", "role": "ce0" }} , 
 	{ "name": "bufC_51_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_51", "role": "we0" }} , 
 	{ "name": "bufC_51_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_51", "role": "d0" }} , 
 	{ "name": "bufC_51_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_51", "role": "q0" }} , 
 	{ "name": "bufC_52_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_52", "role": "address0" }} , 
 	{ "name": "bufC_52_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_52", "role": "ce0" }} , 
 	{ "name": "bufC_52_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_52", "role": "we0" }} , 
 	{ "name": "bufC_52_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_52", "role": "d0" }} , 
 	{ "name": "bufC_52_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_52", "role": "q0" }} , 
 	{ "name": "bufC_53_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_53", "role": "address0" }} , 
 	{ "name": "bufC_53_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_53", "role": "ce0" }} , 
 	{ "name": "bufC_53_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_53", "role": "we0" }} , 
 	{ "name": "bufC_53_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_53", "role": "d0" }} , 
 	{ "name": "bufC_53_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_53", "role": "q0" }} , 
 	{ "name": "bufC_54_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_54", "role": "address0" }} , 
 	{ "name": "bufC_54_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_54", "role": "ce0" }} , 
 	{ "name": "bufC_54_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_54", "role": "we0" }} , 
 	{ "name": "bufC_54_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_54", "role": "d0" }} , 
 	{ "name": "bufC_54_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_54", "role": "q0" }} , 
 	{ "name": "bufC_55_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_55", "role": "address0" }} , 
 	{ "name": "bufC_55_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_55", "role": "ce0" }} , 
 	{ "name": "bufC_55_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_55", "role": "we0" }} , 
 	{ "name": "bufC_55_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_55", "role": "d0" }} , 
 	{ "name": "bufC_55_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_55", "role": "q0" }} , 
 	{ "name": "bufC_56_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_56", "role": "address0" }} , 
 	{ "name": "bufC_56_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_56", "role": "ce0" }} , 
 	{ "name": "bufC_56_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_56", "role": "we0" }} , 
 	{ "name": "bufC_56_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_56", "role": "d0" }} , 
 	{ "name": "bufC_56_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_56", "role": "q0" }} , 
 	{ "name": "bufC_57_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_57", "role": "address0" }} , 
 	{ "name": "bufC_57_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_57", "role": "ce0" }} , 
 	{ "name": "bufC_57_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_57", "role": "we0" }} , 
 	{ "name": "bufC_57_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_57", "role": "d0" }} , 
 	{ "name": "bufC_57_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_57", "role": "q0" }} , 
 	{ "name": "bufC_58_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_58", "role": "address0" }} , 
 	{ "name": "bufC_58_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_58", "role": "ce0" }} , 
 	{ "name": "bufC_58_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_58", "role": "we0" }} , 
 	{ "name": "bufC_58_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_58", "role": "d0" }} , 
 	{ "name": "bufC_58_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_58", "role": "q0" }} , 
 	{ "name": "bufC_59_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_59", "role": "address0" }} , 
 	{ "name": "bufC_59_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_59", "role": "ce0" }} , 
 	{ "name": "bufC_59_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_59", "role": "we0" }} , 
 	{ "name": "bufC_59_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_59", "role": "d0" }} , 
 	{ "name": "bufC_59_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_59", "role": "q0" }} , 
 	{ "name": "bufC_60_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_60", "role": "address0" }} , 
 	{ "name": "bufC_60_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_60", "role": "ce0" }} , 
 	{ "name": "bufC_60_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_60", "role": "we0" }} , 
 	{ "name": "bufC_60_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_60", "role": "d0" }} , 
 	{ "name": "bufC_60_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_60", "role": "q0" }} , 
 	{ "name": "bufC_61_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_61", "role": "address0" }} , 
 	{ "name": "bufC_61_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_61", "role": "ce0" }} , 
 	{ "name": "bufC_61_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_61", "role": "we0" }} , 
 	{ "name": "bufC_61_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_61", "role": "d0" }} , 
 	{ "name": "bufC_61_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_61", "role": "q0" }} , 
 	{ "name": "bufC_62_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_62", "role": "address0" }} , 
 	{ "name": "bufC_62_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_62", "role": "ce0" }} , 
 	{ "name": "bufC_62_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_62", "role": "we0" }} , 
 	{ "name": "bufC_62_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_62", "role": "d0" }} , 
 	{ "name": "bufC_62_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_62", "role": "q0" }} , 
 	{ "name": "bufC_63_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_63", "role": "address0" }} , 
 	{ "name": "bufC_63_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_63", "role": "ce0" }} , 
 	{ "name": "bufC_63_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_63", "role": "we0" }} , 
 	{ "name": "bufC_63_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_63", "role": "d0" }} , 
 	{ "name": "bufC_63_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_63", "role": "q0" }}  ]}

set ArgLastReadFirstWriteLatency {
	qwen_linear_layer_1_Pipeline_VITIS_LOOP_268_8_VITIS_LOOP_269_9_VITIS_LOOP_274_10 {
		bufA {Type I LastRead 1 FirstWrite -1}
		bufA_1 {Type I LastRead 1 FirstWrite -1}
		bufA_2 {Type I LastRead 1 FirstWrite -1}
		bufA_3 {Type I LastRead 1 FirstWrite -1}
		bufA_4 {Type I LastRead 1 FirstWrite -1}
		bufA_5 {Type I LastRead 1 FirstWrite -1}
		bufA_6 {Type I LastRead 1 FirstWrite -1}
		bufA_7 {Type I LastRead 1 FirstWrite -1}
		bufA_8 {Type I LastRead 1 FirstWrite -1}
		bufA_9 {Type I LastRead 1 FirstWrite -1}
		bufA_10 {Type I LastRead 1 FirstWrite -1}
		bufA_11 {Type I LastRead 1 FirstWrite -1}
		bufA_12 {Type I LastRead 1 FirstWrite -1}
		bufA_13 {Type I LastRead 1 FirstWrite -1}
		bufA_14 {Type I LastRead 1 FirstWrite -1}
		bufA_15 {Type I LastRead 1 FirstWrite -1}
		bufW {Type I LastRead 1 FirstWrite -1}
		bufW_1 {Type I LastRead 1 FirstWrite -1}
		bufW_2 {Type I LastRead 1 FirstWrite -1}
		bufW_3 {Type I LastRead 1 FirstWrite -1}
		bufW_4 {Type I LastRead 1 FirstWrite -1}
		bufW_5 {Type I LastRead 1 FirstWrite -1}
		bufW_6 {Type I LastRead 1 FirstWrite -1}
		bufW_7 {Type I LastRead 1 FirstWrite -1}
		bufW_8 {Type I LastRead 1 FirstWrite -1}
		bufW_9 {Type I LastRead 1 FirstWrite -1}
		bufW_10 {Type I LastRead 1 FirstWrite -1}
		bufW_11 {Type I LastRead 1 FirstWrite -1}
		bufW_12 {Type I LastRead 1 FirstWrite -1}
		bufW_13 {Type I LastRead 1 FirstWrite -1}
		bufW_14 {Type I LastRead 1 FirstWrite -1}
		bufW_15 {Type I LastRead 1 FirstWrite -1}
		bufC {Type IO LastRead 2 FirstWrite 3}
		bufC_1 {Type IO LastRead 2 FirstWrite 3}
		bufC_2 {Type IO LastRead 2 FirstWrite 3}
		bufC_3 {Type IO LastRead 2 FirstWrite 3}
		bufC_4 {Type IO LastRead 2 FirstWrite 3}
		bufC_5 {Type IO LastRead 2 FirstWrite 3}
		bufC_6 {Type IO LastRead 2 FirstWrite 3}
		bufC_7 {Type IO LastRead 2 FirstWrite 3}
		bufC_8 {Type IO LastRead 2 FirstWrite 3}
		bufC_9 {Type IO LastRead 2 FirstWrite 3}
		bufC_10 {Type IO LastRead 2 FirstWrite 3}
		bufC_11 {Type IO LastRead 2 FirstWrite 3}
		bufC_12 {Type IO LastRead 2 FirstWrite 3}
		bufC_13 {Type IO LastRead 2 FirstWrite 3}
		bufC_14 {Type IO LastRead 2 FirstWrite 3}
		bufC_15 {Type IO LastRead 2 FirstWrite 3}
		bufC_16 {Type IO LastRead 2 FirstWrite 3}
		bufC_17 {Type IO LastRead 2 FirstWrite 3}
		bufC_18 {Type IO LastRead 2 FirstWrite 3}
		bufC_19 {Type IO LastRead 2 FirstWrite 3}
		bufC_20 {Type IO LastRead 2 FirstWrite 3}
		bufC_21 {Type IO LastRead 2 FirstWrite 3}
		bufC_22 {Type IO LastRead 2 FirstWrite 3}
		bufC_23 {Type IO LastRead 2 FirstWrite 3}
		bufC_24 {Type IO LastRead 2 FirstWrite 3}
		bufC_25 {Type IO LastRead 2 FirstWrite 3}
		bufC_26 {Type IO LastRead 2 FirstWrite 3}
		bufC_27 {Type IO LastRead 2 FirstWrite 3}
		bufC_28 {Type IO LastRead 2 FirstWrite 3}
		bufC_29 {Type IO LastRead 2 FirstWrite 3}
		bufC_30 {Type IO LastRead 2 FirstWrite 3}
		bufC_31 {Type IO LastRead 2 FirstWrite 3}
		bufC_32 {Type IO LastRead 2 FirstWrite 3}
		bufC_33 {Type IO LastRead 2 FirstWrite 3}
		bufC_34 {Type IO LastRead 2 FirstWrite 3}
		bufC_35 {Type IO LastRead 2 FirstWrite 3}
		bufC_36 {Type IO LastRead 2 FirstWrite 3}
		bufC_37 {Type IO LastRead 2 FirstWrite 3}
		bufC_38 {Type IO LastRead 2 FirstWrite 3}
		bufC_39 {Type IO LastRead 2 FirstWrite 3}
		bufC_40 {Type IO LastRead 2 FirstWrite 3}
		bufC_41 {Type IO LastRead 2 FirstWrite 3}
		bufC_42 {Type IO LastRead 2 FirstWrite 3}
		bufC_43 {Type IO LastRead 2 FirstWrite 3}
		bufC_44 {Type IO LastRead 2 FirstWrite 3}
		bufC_45 {Type IO LastRead 2 FirstWrite 3}
		bufC_46 {Type IO LastRead 2 FirstWrite 3}
		bufC_47 {Type IO LastRead 2 FirstWrite 3}
		bufC_48 {Type IO LastRead 2 FirstWrite 3}
		bufC_49 {Type IO LastRead 2 FirstWrite 3}
		bufC_50 {Type IO LastRead 2 FirstWrite 3}
		bufC_51 {Type IO LastRead 2 FirstWrite 3}
		bufC_52 {Type IO LastRead 2 FirstWrite 3}
		bufC_53 {Type IO LastRead 2 FirstWrite 3}
		bufC_54 {Type IO LastRead 2 FirstWrite 3}
		bufC_55 {Type IO LastRead 2 FirstWrite 3}
		bufC_56 {Type IO LastRead 2 FirstWrite 3}
		bufC_57 {Type IO LastRead 2 FirstWrite 3}
		bufC_58 {Type IO LastRead 2 FirstWrite 3}
		bufC_59 {Type IO LastRead 2 FirstWrite 3}
		bufC_60 {Type IO LastRead 2 FirstWrite 3}
		bufC_61 {Type IO LastRead 2 FirstWrite 3}
		bufC_62 {Type IO LastRead 2 FirstWrite 3}
		bufC_63 {Type IO LastRead 2 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "65538", "Max" : "65538"}
	, {"Name" : "Interval", "Min" : "65537", "Max" : "65537"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	bufA { ap_memory {  { bufA_address0 mem_address 1 6 }  { bufA_ce0 mem_ce 1 1 }  { bufA_q0 mem_dout 0 16 } } }
	bufA_1 { ap_memory {  { bufA_1_address0 mem_address 1 6 }  { bufA_1_ce0 mem_ce 1 1 }  { bufA_1_q0 mem_dout 0 16 } } }
	bufA_2 { ap_memory {  { bufA_2_address0 mem_address 1 6 }  { bufA_2_ce0 mem_ce 1 1 }  { bufA_2_q0 mem_dout 0 16 } } }
	bufA_3 { ap_memory {  { bufA_3_address0 mem_address 1 6 }  { bufA_3_ce0 mem_ce 1 1 }  { bufA_3_q0 mem_dout 0 16 } } }
	bufA_4 { ap_memory {  { bufA_4_address0 mem_address 1 6 }  { bufA_4_ce0 mem_ce 1 1 }  { bufA_4_q0 mem_dout 0 16 } } }
	bufA_5 { ap_memory {  { bufA_5_address0 mem_address 1 6 }  { bufA_5_ce0 mem_ce 1 1 }  { bufA_5_q0 mem_dout 0 16 } } }
	bufA_6 { ap_memory {  { bufA_6_address0 mem_address 1 6 }  { bufA_6_ce0 mem_ce 1 1 }  { bufA_6_q0 mem_dout 0 16 } } }
	bufA_7 { ap_memory {  { bufA_7_address0 mem_address 1 6 }  { bufA_7_ce0 mem_ce 1 1 }  { bufA_7_q0 mem_dout 0 16 } } }
	bufA_8 { ap_memory {  { bufA_8_address0 mem_address 1 6 }  { bufA_8_ce0 mem_ce 1 1 }  { bufA_8_q0 mem_dout 0 16 } } }
	bufA_9 { ap_memory {  { bufA_9_address0 mem_address 1 6 }  { bufA_9_ce0 mem_ce 1 1 }  { bufA_9_q0 mem_dout 0 16 } } }
	bufA_10 { ap_memory {  { bufA_10_address0 mem_address 1 6 }  { bufA_10_ce0 mem_ce 1 1 }  { bufA_10_q0 mem_dout 0 16 } } }
	bufA_11 { ap_memory {  { bufA_11_address0 mem_address 1 6 }  { bufA_11_ce0 mem_ce 1 1 }  { bufA_11_q0 mem_dout 0 16 } } }
	bufA_12 { ap_memory {  { bufA_12_address0 mem_address 1 6 }  { bufA_12_ce0 mem_ce 1 1 }  { bufA_12_q0 mem_dout 0 16 } } }
	bufA_13 { ap_memory {  { bufA_13_address0 mem_address 1 6 }  { bufA_13_ce0 mem_ce 1 1 }  { bufA_13_q0 mem_dout 0 16 } } }
	bufA_14 { ap_memory {  { bufA_14_address0 mem_address 1 6 }  { bufA_14_ce0 mem_ce 1 1 }  { bufA_14_q0 mem_dout 0 16 } } }
	bufA_15 { ap_memory {  { bufA_15_address0 mem_address 1 6 }  { bufA_15_ce0 mem_ce 1 1 }  { bufA_15_q0 mem_dout 0 16 } } }
	bufW { ap_memory {  { bufW_address0 mem_address 1 6 }  { bufW_ce0 mem_ce 1 1 }  { bufW_q0 mem_dout 0 16 } } }
	bufW_1 { ap_memory {  { bufW_1_address0 mem_address 1 6 }  { bufW_1_ce0 mem_ce 1 1 }  { bufW_1_q0 mem_dout 0 16 } } }
	bufW_2 { ap_memory {  { bufW_2_address0 mem_address 1 6 }  { bufW_2_ce0 mem_ce 1 1 }  { bufW_2_q0 mem_dout 0 16 } } }
	bufW_3 { ap_memory {  { bufW_3_address0 mem_address 1 6 }  { bufW_3_ce0 mem_ce 1 1 }  { bufW_3_q0 mem_dout 0 16 } } }
	bufW_4 { ap_memory {  { bufW_4_address0 mem_address 1 6 }  { bufW_4_ce0 mem_ce 1 1 }  { bufW_4_q0 mem_dout 0 16 } } }
	bufW_5 { ap_memory {  { bufW_5_address0 mem_address 1 6 }  { bufW_5_ce0 mem_ce 1 1 }  { bufW_5_q0 mem_dout 0 16 } } }
	bufW_6 { ap_memory {  { bufW_6_address0 mem_address 1 6 }  { bufW_6_ce0 mem_ce 1 1 }  { bufW_6_q0 mem_dout 0 16 } } }
	bufW_7 { ap_memory {  { bufW_7_address0 mem_address 1 6 }  { bufW_7_ce0 mem_ce 1 1 }  { bufW_7_q0 mem_dout 0 16 } } }
	bufW_8 { ap_memory {  { bufW_8_address0 mem_address 1 6 }  { bufW_8_ce0 mem_ce 1 1 }  { bufW_8_q0 mem_dout 0 16 } } }
	bufW_9 { ap_memory {  { bufW_9_address0 mem_address 1 6 }  { bufW_9_ce0 mem_ce 1 1 }  { bufW_9_q0 mem_dout 0 16 } } }
	bufW_10 { ap_memory {  { bufW_10_address0 mem_address 1 6 }  { bufW_10_ce0 mem_ce 1 1 }  { bufW_10_q0 mem_dout 0 16 } } }
	bufW_11 { ap_memory {  { bufW_11_address0 mem_address 1 6 }  { bufW_11_ce0 mem_ce 1 1 }  { bufW_11_q0 mem_dout 0 16 } } }
	bufW_12 { ap_memory {  { bufW_12_address0 mem_address 1 6 }  { bufW_12_ce0 mem_ce 1 1 }  { bufW_12_q0 mem_dout 0 16 } } }
	bufW_13 { ap_memory {  { bufW_13_address0 mem_address 1 6 }  { bufW_13_ce0 mem_ce 1 1 }  { bufW_13_q0 mem_dout 0 16 } } }
	bufW_14 { ap_memory {  { bufW_14_address0 mem_address 1 6 }  { bufW_14_ce0 mem_ce 1 1 }  { bufW_14_q0 mem_dout 0 16 } } }
	bufW_15 { ap_memory {  { bufW_15_address0 mem_address 1 6 }  { bufW_15_ce0 mem_ce 1 1 }  { bufW_15_q0 mem_dout 0 16 } } }
	bufC { ap_memory {  { bufC_address0 mem_address 1 4 }  { bufC_ce0 mem_ce 1 1 }  { bufC_we0 mem_we 1 1 }  { bufC_d0 mem_din 1 32 }  { bufC_q0 mem_dout 0 32 } } }
	bufC_1 { ap_memory {  { bufC_1_address0 mem_address 1 4 }  { bufC_1_ce0 mem_ce 1 1 }  { bufC_1_we0 mem_we 1 1 }  { bufC_1_d0 mem_din 1 32 }  { bufC_1_q0 mem_dout 0 32 } } }
	bufC_2 { ap_memory {  { bufC_2_address0 mem_address 1 4 }  { bufC_2_ce0 mem_ce 1 1 }  { bufC_2_we0 mem_we 1 1 }  { bufC_2_d0 mem_din 1 32 }  { bufC_2_q0 mem_dout 0 32 } } }
	bufC_3 { ap_memory {  { bufC_3_address0 mem_address 1 4 }  { bufC_3_ce0 mem_ce 1 1 }  { bufC_3_we0 mem_we 1 1 }  { bufC_3_d0 mem_din 1 32 }  { bufC_3_q0 mem_dout 0 32 } } }
	bufC_4 { ap_memory {  { bufC_4_address0 mem_address 1 4 }  { bufC_4_ce0 mem_ce 1 1 }  { bufC_4_we0 mem_we 1 1 }  { bufC_4_d0 mem_din 1 32 }  { bufC_4_q0 mem_dout 0 32 } } }
	bufC_5 { ap_memory {  { bufC_5_address0 mem_address 1 4 }  { bufC_5_ce0 mem_ce 1 1 }  { bufC_5_we0 mem_we 1 1 }  { bufC_5_d0 mem_din 1 32 }  { bufC_5_q0 mem_dout 0 32 } } }
	bufC_6 { ap_memory {  { bufC_6_address0 mem_address 1 4 }  { bufC_6_ce0 mem_ce 1 1 }  { bufC_6_we0 mem_we 1 1 }  { bufC_6_d0 mem_din 1 32 }  { bufC_6_q0 mem_dout 0 32 } } }
	bufC_7 { ap_memory {  { bufC_7_address0 mem_address 1 4 }  { bufC_7_ce0 mem_ce 1 1 }  { bufC_7_we0 mem_we 1 1 }  { bufC_7_d0 mem_din 1 32 }  { bufC_7_q0 mem_dout 0 32 } } }
	bufC_8 { ap_memory {  { bufC_8_address0 mem_address 1 4 }  { bufC_8_ce0 mem_ce 1 1 }  { bufC_8_we0 mem_we 1 1 }  { bufC_8_d0 mem_din 1 32 }  { bufC_8_q0 mem_dout 0 32 } } }
	bufC_9 { ap_memory {  { bufC_9_address0 mem_address 1 4 }  { bufC_9_ce0 mem_ce 1 1 }  { bufC_9_we0 mem_we 1 1 }  { bufC_9_d0 mem_din 1 32 }  { bufC_9_q0 mem_dout 0 32 } } }
	bufC_10 { ap_memory {  { bufC_10_address0 mem_address 1 4 }  { bufC_10_ce0 mem_ce 1 1 }  { bufC_10_we0 mem_we 1 1 }  { bufC_10_d0 mem_din 1 32 }  { bufC_10_q0 mem_dout 0 32 } } }
	bufC_11 { ap_memory {  { bufC_11_address0 mem_address 1 4 }  { bufC_11_ce0 mem_ce 1 1 }  { bufC_11_we0 mem_we 1 1 }  { bufC_11_d0 mem_din 1 32 }  { bufC_11_q0 mem_dout 0 32 } } }
	bufC_12 { ap_memory {  { bufC_12_address0 mem_address 1 4 }  { bufC_12_ce0 mem_ce 1 1 }  { bufC_12_we0 mem_we 1 1 }  { bufC_12_d0 mem_din 1 32 }  { bufC_12_q0 mem_dout 0 32 } } }
	bufC_13 { ap_memory {  { bufC_13_address0 mem_address 1 4 }  { bufC_13_ce0 mem_ce 1 1 }  { bufC_13_we0 mem_we 1 1 }  { bufC_13_d0 mem_din 1 32 }  { bufC_13_q0 mem_dout 0 32 } } }
	bufC_14 { ap_memory {  { bufC_14_address0 mem_address 1 4 }  { bufC_14_ce0 mem_ce 1 1 }  { bufC_14_we0 mem_we 1 1 }  { bufC_14_d0 mem_din 1 32 }  { bufC_14_q0 mem_dout 0 32 } } }
	bufC_15 { ap_memory {  { bufC_15_address0 mem_address 1 4 }  { bufC_15_ce0 mem_ce 1 1 }  { bufC_15_we0 mem_we 1 1 }  { bufC_15_d0 mem_din 1 32 }  { bufC_15_q0 mem_dout 0 32 } } }
	bufC_16 { ap_memory {  { bufC_16_address0 mem_address 1 4 }  { bufC_16_ce0 mem_ce 1 1 }  { bufC_16_we0 mem_we 1 1 }  { bufC_16_d0 mem_din 1 32 }  { bufC_16_q0 mem_dout 0 32 } } }
	bufC_17 { ap_memory {  { bufC_17_address0 mem_address 1 4 }  { bufC_17_ce0 mem_ce 1 1 }  { bufC_17_we0 mem_we 1 1 }  { bufC_17_d0 mem_din 1 32 }  { bufC_17_q0 mem_dout 0 32 } } }
	bufC_18 { ap_memory {  { bufC_18_address0 mem_address 1 4 }  { bufC_18_ce0 mem_ce 1 1 }  { bufC_18_we0 mem_we 1 1 }  { bufC_18_d0 mem_din 1 32 }  { bufC_18_q0 mem_dout 0 32 } } }
	bufC_19 { ap_memory {  { bufC_19_address0 mem_address 1 4 }  { bufC_19_ce0 mem_ce 1 1 }  { bufC_19_we0 mem_we 1 1 }  { bufC_19_d0 mem_din 1 32 }  { bufC_19_q0 mem_dout 0 32 } } }
	bufC_20 { ap_memory {  { bufC_20_address0 mem_address 1 4 }  { bufC_20_ce0 mem_ce 1 1 }  { bufC_20_we0 mem_we 1 1 }  { bufC_20_d0 mem_din 1 32 }  { bufC_20_q0 mem_dout 0 32 } } }
	bufC_21 { ap_memory {  { bufC_21_address0 mem_address 1 4 }  { bufC_21_ce0 mem_ce 1 1 }  { bufC_21_we0 mem_we 1 1 }  { bufC_21_d0 mem_din 1 32 }  { bufC_21_q0 mem_dout 0 32 } } }
	bufC_22 { ap_memory {  { bufC_22_address0 mem_address 1 4 }  { bufC_22_ce0 mem_ce 1 1 }  { bufC_22_we0 mem_we 1 1 }  { bufC_22_d0 mem_din 1 32 }  { bufC_22_q0 mem_dout 0 32 } } }
	bufC_23 { ap_memory {  { bufC_23_address0 mem_address 1 4 }  { bufC_23_ce0 mem_ce 1 1 }  { bufC_23_we0 mem_we 1 1 }  { bufC_23_d0 mem_din 1 32 }  { bufC_23_q0 mem_dout 0 32 } } }
	bufC_24 { ap_memory {  { bufC_24_address0 mem_address 1 4 }  { bufC_24_ce0 mem_ce 1 1 }  { bufC_24_we0 mem_we 1 1 }  { bufC_24_d0 mem_din 1 32 }  { bufC_24_q0 mem_dout 0 32 } } }
	bufC_25 { ap_memory {  { bufC_25_address0 mem_address 1 4 }  { bufC_25_ce0 mem_ce 1 1 }  { bufC_25_we0 mem_we 1 1 }  { bufC_25_d0 mem_din 1 32 }  { bufC_25_q0 mem_dout 0 32 } } }
	bufC_26 { ap_memory {  { bufC_26_address0 mem_address 1 4 }  { bufC_26_ce0 mem_ce 1 1 }  { bufC_26_we0 mem_we 1 1 }  { bufC_26_d0 mem_din 1 32 }  { bufC_26_q0 mem_dout 0 32 } } }
	bufC_27 { ap_memory {  { bufC_27_address0 mem_address 1 4 }  { bufC_27_ce0 mem_ce 1 1 }  { bufC_27_we0 mem_we 1 1 }  { bufC_27_d0 mem_din 1 32 }  { bufC_27_q0 mem_dout 0 32 } } }
	bufC_28 { ap_memory {  { bufC_28_address0 mem_address 1 4 }  { bufC_28_ce0 mem_ce 1 1 }  { bufC_28_we0 mem_we 1 1 }  { bufC_28_d0 mem_din 1 32 }  { bufC_28_q0 mem_dout 0 32 } } }
	bufC_29 { ap_memory {  { bufC_29_address0 mem_address 1 4 }  { bufC_29_ce0 mem_ce 1 1 }  { bufC_29_we0 mem_we 1 1 }  { bufC_29_d0 mem_din 1 32 }  { bufC_29_q0 mem_dout 0 32 } } }
	bufC_30 { ap_memory {  { bufC_30_address0 mem_address 1 4 }  { bufC_30_ce0 mem_ce 1 1 }  { bufC_30_we0 mem_we 1 1 }  { bufC_30_d0 mem_din 1 32 }  { bufC_30_q0 mem_dout 0 32 } } }
	bufC_31 { ap_memory {  { bufC_31_address0 mem_address 1 4 }  { bufC_31_ce0 mem_ce 1 1 }  { bufC_31_we0 mem_we 1 1 }  { bufC_31_d0 mem_din 1 32 }  { bufC_31_q0 mem_dout 0 32 } } }
	bufC_32 { ap_memory {  { bufC_32_address0 mem_address 1 4 }  { bufC_32_ce0 mem_ce 1 1 }  { bufC_32_we0 mem_we 1 1 }  { bufC_32_d0 mem_din 1 32 }  { bufC_32_q0 mem_dout 0 32 } } }
	bufC_33 { ap_memory {  { bufC_33_address0 mem_address 1 4 }  { bufC_33_ce0 mem_ce 1 1 }  { bufC_33_we0 mem_we 1 1 }  { bufC_33_d0 mem_din 1 32 }  { bufC_33_q0 mem_dout 0 32 } } }
	bufC_34 { ap_memory {  { bufC_34_address0 mem_address 1 4 }  { bufC_34_ce0 mem_ce 1 1 }  { bufC_34_we0 mem_we 1 1 }  { bufC_34_d0 mem_din 1 32 }  { bufC_34_q0 mem_dout 0 32 } } }
	bufC_35 { ap_memory {  { bufC_35_address0 mem_address 1 4 }  { bufC_35_ce0 mem_ce 1 1 }  { bufC_35_we0 mem_we 1 1 }  { bufC_35_d0 mem_din 1 32 }  { bufC_35_q0 mem_dout 0 32 } } }
	bufC_36 { ap_memory {  { bufC_36_address0 mem_address 1 4 }  { bufC_36_ce0 mem_ce 1 1 }  { bufC_36_we0 mem_we 1 1 }  { bufC_36_d0 mem_din 1 32 }  { bufC_36_q0 mem_dout 0 32 } } }
	bufC_37 { ap_memory {  { bufC_37_address0 mem_address 1 4 }  { bufC_37_ce0 mem_ce 1 1 }  { bufC_37_we0 mem_we 1 1 }  { bufC_37_d0 mem_din 1 32 }  { bufC_37_q0 mem_dout 0 32 } } }
	bufC_38 { ap_memory {  { bufC_38_address0 mem_address 1 4 }  { bufC_38_ce0 mem_ce 1 1 }  { bufC_38_we0 mem_we 1 1 }  { bufC_38_d0 mem_din 1 32 }  { bufC_38_q0 mem_dout 0 32 } } }
	bufC_39 { ap_memory {  { bufC_39_address0 mem_address 1 4 }  { bufC_39_ce0 mem_ce 1 1 }  { bufC_39_we0 mem_we 1 1 }  { bufC_39_d0 mem_din 1 32 }  { bufC_39_q0 mem_dout 0 32 } } }
	bufC_40 { ap_memory {  { bufC_40_address0 mem_address 1 4 }  { bufC_40_ce0 mem_ce 1 1 }  { bufC_40_we0 mem_we 1 1 }  { bufC_40_d0 mem_din 1 32 }  { bufC_40_q0 mem_dout 0 32 } } }
	bufC_41 { ap_memory {  { bufC_41_address0 mem_address 1 4 }  { bufC_41_ce0 mem_ce 1 1 }  { bufC_41_we0 mem_we 1 1 }  { bufC_41_d0 mem_din 1 32 }  { bufC_41_q0 mem_dout 0 32 } } }
	bufC_42 { ap_memory {  { bufC_42_address0 mem_address 1 4 }  { bufC_42_ce0 mem_ce 1 1 }  { bufC_42_we0 mem_we 1 1 }  { bufC_42_d0 mem_din 1 32 }  { bufC_42_q0 mem_dout 0 32 } } }
	bufC_43 { ap_memory {  { bufC_43_address0 mem_address 1 4 }  { bufC_43_ce0 mem_ce 1 1 }  { bufC_43_we0 mem_we 1 1 }  { bufC_43_d0 mem_din 1 32 }  { bufC_43_q0 mem_dout 0 32 } } }
	bufC_44 { ap_memory {  { bufC_44_address0 mem_address 1 4 }  { bufC_44_ce0 mem_ce 1 1 }  { bufC_44_we0 mem_we 1 1 }  { bufC_44_d0 mem_din 1 32 }  { bufC_44_q0 mem_dout 0 32 } } }
	bufC_45 { ap_memory {  { bufC_45_address0 mem_address 1 4 }  { bufC_45_ce0 mem_ce 1 1 }  { bufC_45_we0 mem_we 1 1 }  { bufC_45_d0 mem_din 1 32 }  { bufC_45_q0 mem_dout 0 32 } } }
	bufC_46 { ap_memory {  { bufC_46_address0 mem_address 1 4 }  { bufC_46_ce0 mem_ce 1 1 }  { bufC_46_we0 mem_we 1 1 }  { bufC_46_d0 mem_din 1 32 }  { bufC_46_q0 mem_dout 0 32 } } }
	bufC_47 { ap_memory {  { bufC_47_address0 mem_address 1 4 }  { bufC_47_ce0 mem_ce 1 1 }  { bufC_47_we0 mem_we 1 1 }  { bufC_47_d0 mem_din 1 32 }  { bufC_47_q0 mem_dout 0 32 } } }
	bufC_48 { ap_memory {  { bufC_48_address0 mem_address 1 4 }  { bufC_48_ce0 mem_ce 1 1 }  { bufC_48_we0 mem_we 1 1 }  { bufC_48_d0 mem_din 1 32 }  { bufC_48_q0 mem_dout 0 32 } } }
	bufC_49 { ap_memory {  { bufC_49_address0 mem_address 1 4 }  { bufC_49_ce0 mem_ce 1 1 }  { bufC_49_we0 mem_we 1 1 }  { bufC_49_d0 mem_din 1 32 }  { bufC_49_q0 mem_dout 0 32 } } }
	bufC_50 { ap_memory {  { bufC_50_address0 mem_address 1 4 }  { bufC_50_ce0 mem_ce 1 1 }  { bufC_50_we0 mem_we 1 1 }  { bufC_50_d0 mem_din 1 32 }  { bufC_50_q0 mem_dout 0 32 } } }
	bufC_51 { ap_memory {  { bufC_51_address0 mem_address 1 4 }  { bufC_51_ce0 mem_ce 1 1 }  { bufC_51_we0 mem_we 1 1 }  { bufC_51_d0 mem_din 1 32 }  { bufC_51_q0 mem_dout 0 32 } } }
	bufC_52 { ap_memory {  { bufC_52_address0 mem_address 1 4 }  { bufC_52_ce0 mem_ce 1 1 }  { bufC_52_we0 mem_we 1 1 }  { bufC_52_d0 mem_din 1 32 }  { bufC_52_q0 mem_dout 0 32 } } }
	bufC_53 { ap_memory {  { bufC_53_address0 mem_address 1 4 }  { bufC_53_ce0 mem_ce 1 1 }  { bufC_53_we0 mem_we 1 1 }  { bufC_53_d0 mem_din 1 32 }  { bufC_53_q0 mem_dout 0 32 } } }
	bufC_54 { ap_memory {  { bufC_54_address0 mem_address 1 4 }  { bufC_54_ce0 mem_ce 1 1 }  { bufC_54_we0 mem_we 1 1 }  { bufC_54_d0 mem_din 1 32 }  { bufC_54_q0 mem_dout 0 32 } } }
	bufC_55 { ap_memory {  { bufC_55_address0 mem_address 1 4 }  { bufC_55_ce0 mem_ce 1 1 }  { bufC_55_we0 mem_we 1 1 }  { bufC_55_d0 mem_din 1 32 }  { bufC_55_q0 mem_dout 0 32 } } }
	bufC_56 { ap_memory {  { bufC_56_address0 mem_address 1 4 }  { bufC_56_ce0 mem_ce 1 1 }  { bufC_56_we0 mem_we 1 1 }  { bufC_56_d0 mem_din 1 32 }  { bufC_56_q0 mem_dout 0 32 } } }
	bufC_57 { ap_memory {  { bufC_57_address0 mem_address 1 4 }  { bufC_57_ce0 mem_ce 1 1 }  { bufC_57_we0 mem_we 1 1 }  { bufC_57_d0 mem_din 1 32 }  { bufC_57_q0 mem_dout 0 32 } } }
	bufC_58 { ap_memory {  { bufC_58_address0 mem_address 1 4 }  { bufC_58_ce0 mem_ce 1 1 }  { bufC_58_we0 mem_we 1 1 }  { bufC_58_d0 mem_din 1 32 }  { bufC_58_q0 mem_dout 0 32 } } }
	bufC_59 { ap_memory {  { bufC_59_address0 mem_address 1 4 }  { bufC_59_ce0 mem_ce 1 1 }  { bufC_59_we0 mem_we 1 1 }  { bufC_59_d0 mem_din 1 32 }  { bufC_59_q0 mem_dout 0 32 } } }
	bufC_60 { ap_memory {  { bufC_60_address0 mem_address 1 4 }  { bufC_60_ce0 mem_ce 1 1 }  { bufC_60_we0 mem_we 1 1 }  { bufC_60_d0 mem_din 1 32 }  { bufC_60_q0 mem_dout 0 32 } } }
	bufC_61 { ap_memory {  { bufC_61_address0 mem_address 1 4 }  { bufC_61_ce0 mem_ce 1 1 }  { bufC_61_we0 mem_we 1 1 }  { bufC_61_d0 mem_din 1 32 }  { bufC_61_q0 mem_dout 0 32 } } }
	bufC_62 { ap_memory {  { bufC_62_address0 mem_address 1 4 }  { bufC_62_ce0 mem_ce 1 1 }  { bufC_62_we0 mem_we 1 1 }  { bufC_62_d0 mem_din 1 32 }  { bufC_62_q0 mem_dout 0 32 } } }
	bufC_63 { ap_memory {  { bufC_63_address0 mem_address 1 4 }  { bufC_63_ce0 mem_ce 1 1 }  { bufC_63_we0 mem_we 1 1 }  { bufC_63_d0 mem_din 1 32 }  { bufC_63_q0 mem_dout 0 32 } } }
}
