set moduleName qwen_linear_layer_1_Pipeline_VITIS_LOOP_291_11
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
set C_modelName {qwen_linear_layer.1_Pipeline_VITIS_LOOP_291_11}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict bufC { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_32 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_1 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_33 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_2 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_34 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_3 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_35 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_4 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_36 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_5 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_37 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_6 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_38 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_7 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_39 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_8 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_40 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_9 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_41 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_10 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_42 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_11 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_43 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_12 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_44 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_13 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_45 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_14 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_46 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_15 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_47 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_16 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_48 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_17 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_49 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_18 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_50 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_19 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_51 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_20 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_52 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_21 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_53 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_22 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_54 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_23 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_55 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_24 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_56 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_25 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_57 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_26 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_58 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_27 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_59 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_28 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_60 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_29 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_61 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_30 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_62 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_31 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_63 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ sext_ln259 int 32 regular  }
	{ zext_ln246_2 int 31 regular  }
	{ shl_ln int 63 regular  }
	{ C int 64 regular  }
	{ bufC int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_32 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_1 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_33 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_2 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_34 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_3 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_35 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_4 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_36 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_5 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_37 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_6 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_38 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_7 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_39 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_8 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_40 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_9 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_41 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_10 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_42 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_11 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_43 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_12 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_44 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_13 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_45 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_14 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_46 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_15 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_47 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_16 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_48 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_17 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_49 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_18 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_50 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_19 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_51 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_20 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_52 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_21 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_53 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_22 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_54 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_23 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_55 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_24 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_56 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_25 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_57 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_26 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_58 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_27 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_59 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_28 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_60 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_29 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_61 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_30 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_62 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_31 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_63 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ gmem0 int 16 regular {axi_master 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "sext_ln259", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln246_2", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "C", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bufC", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_32", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_33", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_34", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_35", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_36", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_37", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_38", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_39", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_40", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_41", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_42", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_43", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_44", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_45", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_46", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_47", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_16", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_48", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_17", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_49", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_18", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_50", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_19", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_51", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_20", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_52", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_21", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_53", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_22", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_54", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_23", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_55", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_24", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_56", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_25", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_57", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_26", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_58", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_27", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_59", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_28", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_60", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_29", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_61", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_30", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_62", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_31", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_63", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 16, "direction" : "WRITEONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "A","offset": { "type": "dynamic","port_name": "A","bundle": "control"},"direction": "READONLY"},{"cName": "C","offset": { "type": "dynamic","port_name": "C","bundle": "control"},"direction": "WRITEONLY"}]}]} ]}
# RTL Port declarations: 
set portNum 248
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem0_0_AWVALID sc_out sc_logic 1 signal 68 } 
	{ m_axi_gmem0_0_AWREADY sc_in sc_logic 1 signal 68 } 
	{ m_axi_gmem0_0_AWADDR sc_out sc_lv 64 signal 68 } 
	{ m_axi_gmem0_0_AWID sc_out sc_lv 1 signal 68 } 
	{ m_axi_gmem0_0_AWLEN sc_out sc_lv 32 signal 68 } 
	{ m_axi_gmem0_0_AWSIZE sc_out sc_lv 3 signal 68 } 
	{ m_axi_gmem0_0_AWBURST sc_out sc_lv 2 signal 68 } 
	{ m_axi_gmem0_0_AWLOCK sc_out sc_lv 2 signal 68 } 
	{ m_axi_gmem0_0_AWCACHE sc_out sc_lv 4 signal 68 } 
	{ m_axi_gmem0_0_AWPROT sc_out sc_lv 3 signal 68 } 
	{ m_axi_gmem0_0_AWQOS sc_out sc_lv 4 signal 68 } 
	{ m_axi_gmem0_0_AWREGION sc_out sc_lv 4 signal 68 } 
	{ m_axi_gmem0_0_AWUSER sc_out sc_lv 1 signal 68 } 
	{ m_axi_gmem0_0_WVALID sc_out sc_logic 1 signal 68 } 
	{ m_axi_gmem0_0_WREADY sc_in sc_logic 1 signal 68 } 
	{ m_axi_gmem0_0_WDATA sc_out sc_lv 16 signal 68 } 
	{ m_axi_gmem0_0_WSTRB sc_out sc_lv 2 signal 68 } 
	{ m_axi_gmem0_0_WLAST sc_out sc_logic 1 signal 68 } 
	{ m_axi_gmem0_0_WID sc_out sc_lv 1 signal 68 } 
	{ m_axi_gmem0_0_WUSER sc_out sc_lv 1 signal 68 } 
	{ m_axi_gmem0_0_ARVALID sc_out sc_logic 1 signal 68 } 
	{ m_axi_gmem0_0_ARREADY sc_in sc_logic 1 signal 68 } 
	{ m_axi_gmem0_0_ARADDR sc_out sc_lv 64 signal 68 } 
	{ m_axi_gmem0_0_ARID sc_out sc_lv 1 signal 68 } 
	{ m_axi_gmem0_0_ARLEN sc_out sc_lv 32 signal 68 } 
	{ m_axi_gmem0_0_ARSIZE sc_out sc_lv 3 signal 68 } 
	{ m_axi_gmem0_0_ARBURST sc_out sc_lv 2 signal 68 } 
	{ m_axi_gmem0_0_ARLOCK sc_out sc_lv 2 signal 68 } 
	{ m_axi_gmem0_0_ARCACHE sc_out sc_lv 4 signal 68 } 
	{ m_axi_gmem0_0_ARPROT sc_out sc_lv 3 signal 68 } 
	{ m_axi_gmem0_0_ARQOS sc_out sc_lv 4 signal 68 } 
	{ m_axi_gmem0_0_ARREGION sc_out sc_lv 4 signal 68 } 
	{ m_axi_gmem0_0_ARUSER sc_out sc_lv 1 signal 68 } 
	{ m_axi_gmem0_0_RVALID sc_in sc_logic 1 signal 68 } 
	{ m_axi_gmem0_0_RREADY sc_out sc_logic 1 signal 68 } 
	{ m_axi_gmem0_0_RDATA sc_in sc_lv 16 signal 68 } 
	{ m_axi_gmem0_0_RLAST sc_in sc_logic 1 signal 68 } 
	{ m_axi_gmem0_0_RID sc_in sc_lv 1 signal 68 } 
	{ m_axi_gmem0_0_RFIFONUM sc_in sc_lv 10 signal 68 } 
	{ m_axi_gmem0_0_RUSER sc_in sc_lv 1 signal 68 } 
	{ m_axi_gmem0_0_RRESP sc_in sc_lv 2 signal 68 } 
	{ m_axi_gmem0_0_BVALID sc_in sc_logic 1 signal 68 } 
	{ m_axi_gmem0_0_BREADY sc_out sc_logic 1 signal 68 } 
	{ m_axi_gmem0_0_BRESP sc_in sc_lv 2 signal 68 } 
	{ m_axi_gmem0_0_BID sc_in sc_lv 1 signal 68 } 
	{ m_axi_gmem0_0_BUSER sc_in sc_lv 1 signal 68 } 
	{ sext_ln259 sc_in sc_lv 32 signal 0 } 
	{ zext_ln246_2 sc_in sc_lv 31 signal 1 } 
	{ shl_ln sc_in sc_lv 63 signal 2 } 
	{ C sc_in sc_lv 64 signal 3 } 
	{ bufC_address0 sc_out sc_lv 4 signal 4 } 
	{ bufC_ce0 sc_out sc_logic 1 signal 4 } 
	{ bufC_q0 sc_in sc_lv 32 signal 4 } 
	{ bufC_32_address0 sc_out sc_lv 4 signal 5 } 
	{ bufC_32_ce0 sc_out sc_logic 1 signal 5 } 
	{ bufC_32_q0 sc_in sc_lv 32 signal 5 } 
	{ bufC_1_address0 sc_out sc_lv 4 signal 6 } 
	{ bufC_1_ce0 sc_out sc_logic 1 signal 6 } 
	{ bufC_1_q0 sc_in sc_lv 32 signal 6 } 
	{ bufC_33_address0 sc_out sc_lv 4 signal 7 } 
	{ bufC_33_ce0 sc_out sc_logic 1 signal 7 } 
	{ bufC_33_q0 sc_in sc_lv 32 signal 7 } 
	{ bufC_2_address0 sc_out sc_lv 4 signal 8 } 
	{ bufC_2_ce0 sc_out sc_logic 1 signal 8 } 
	{ bufC_2_q0 sc_in sc_lv 32 signal 8 } 
	{ bufC_34_address0 sc_out sc_lv 4 signal 9 } 
	{ bufC_34_ce0 sc_out sc_logic 1 signal 9 } 
	{ bufC_34_q0 sc_in sc_lv 32 signal 9 } 
	{ bufC_3_address0 sc_out sc_lv 4 signal 10 } 
	{ bufC_3_ce0 sc_out sc_logic 1 signal 10 } 
	{ bufC_3_q0 sc_in sc_lv 32 signal 10 } 
	{ bufC_35_address0 sc_out sc_lv 4 signal 11 } 
	{ bufC_35_ce0 sc_out sc_logic 1 signal 11 } 
	{ bufC_35_q0 sc_in sc_lv 32 signal 11 } 
	{ bufC_4_address0 sc_out sc_lv 4 signal 12 } 
	{ bufC_4_ce0 sc_out sc_logic 1 signal 12 } 
	{ bufC_4_q0 sc_in sc_lv 32 signal 12 } 
	{ bufC_36_address0 sc_out sc_lv 4 signal 13 } 
	{ bufC_36_ce0 sc_out sc_logic 1 signal 13 } 
	{ bufC_36_q0 sc_in sc_lv 32 signal 13 } 
	{ bufC_5_address0 sc_out sc_lv 4 signal 14 } 
	{ bufC_5_ce0 sc_out sc_logic 1 signal 14 } 
	{ bufC_5_q0 sc_in sc_lv 32 signal 14 } 
	{ bufC_37_address0 sc_out sc_lv 4 signal 15 } 
	{ bufC_37_ce0 sc_out sc_logic 1 signal 15 } 
	{ bufC_37_q0 sc_in sc_lv 32 signal 15 } 
	{ bufC_6_address0 sc_out sc_lv 4 signal 16 } 
	{ bufC_6_ce0 sc_out sc_logic 1 signal 16 } 
	{ bufC_6_q0 sc_in sc_lv 32 signal 16 } 
	{ bufC_38_address0 sc_out sc_lv 4 signal 17 } 
	{ bufC_38_ce0 sc_out sc_logic 1 signal 17 } 
	{ bufC_38_q0 sc_in sc_lv 32 signal 17 } 
	{ bufC_7_address0 sc_out sc_lv 4 signal 18 } 
	{ bufC_7_ce0 sc_out sc_logic 1 signal 18 } 
	{ bufC_7_q0 sc_in sc_lv 32 signal 18 } 
	{ bufC_39_address0 sc_out sc_lv 4 signal 19 } 
	{ bufC_39_ce0 sc_out sc_logic 1 signal 19 } 
	{ bufC_39_q0 sc_in sc_lv 32 signal 19 } 
	{ bufC_8_address0 sc_out sc_lv 4 signal 20 } 
	{ bufC_8_ce0 sc_out sc_logic 1 signal 20 } 
	{ bufC_8_q0 sc_in sc_lv 32 signal 20 } 
	{ bufC_40_address0 sc_out sc_lv 4 signal 21 } 
	{ bufC_40_ce0 sc_out sc_logic 1 signal 21 } 
	{ bufC_40_q0 sc_in sc_lv 32 signal 21 } 
	{ bufC_9_address0 sc_out sc_lv 4 signal 22 } 
	{ bufC_9_ce0 sc_out sc_logic 1 signal 22 } 
	{ bufC_9_q0 sc_in sc_lv 32 signal 22 } 
	{ bufC_41_address0 sc_out sc_lv 4 signal 23 } 
	{ bufC_41_ce0 sc_out sc_logic 1 signal 23 } 
	{ bufC_41_q0 sc_in sc_lv 32 signal 23 } 
	{ bufC_10_address0 sc_out sc_lv 4 signal 24 } 
	{ bufC_10_ce0 sc_out sc_logic 1 signal 24 } 
	{ bufC_10_q0 sc_in sc_lv 32 signal 24 } 
	{ bufC_42_address0 sc_out sc_lv 4 signal 25 } 
	{ bufC_42_ce0 sc_out sc_logic 1 signal 25 } 
	{ bufC_42_q0 sc_in sc_lv 32 signal 25 } 
	{ bufC_11_address0 sc_out sc_lv 4 signal 26 } 
	{ bufC_11_ce0 sc_out sc_logic 1 signal 26 } 
	{ bufC_11_q0 sc_in sc_lv 32 signal 26 } 
	{ bufC_43_address0 sc_out sc_lv 4 signal 27 } 
	{ bufC_43_ce0 sc_out sc_logic 1 signal 27 } 
	{ bufC_43_q0 sc_in sc_lv 32 signal 27 } 
	{ bufC_12_address0 sc_out sc_lv 4 signal 28 } 
	{ bufC_12_ce0 sc_out sc_logic 1 signal 28 } 
	{ bufC_12_q0 sc_in sc_lv 32 signal 28 } 
	{ bufC_44_address0 sc_out sc_lv 4 signal 29 } 
	{ bufC_44_ce0 sc_out sc_logic 1 signal 29 } 
	{ bufC_44_q0 sc_in sc_lv 32 signal 29 } 
	{ bufC_13_address0 sc_out sc_lv 4 signal 30 } 
	{ bufC_13_ce0 sc_out sc_logic 1 signal 30 } 
	{ bufC_13_q0 sc_in sc_lv 32 signal 30 } 
	{ bufC_45_address0 sc_out sc_lv 4 signal 31 } 
	{ bufC_45_ce0 sc_out sc_logic 1 signal 31 } 
	{ bufC_45_q0 sc_in sc_lv 32 signal 31 } 
	{ bufC_14_address0 sc_out sc_lv 4 signal 32 } 
	{ bufC_14_ce0 sc_out sc_logic 1 signal 32 } 
	{ bufC_14_q0 sc_in sc_lv 32 signal 32 } 
	{ bufC_46_address0 sc_out sc_lv 4 signal 33 } 
	{ bufC_46_ce0 sc_out sc_logic 1 signal 33 } 
	{ bufC_46_q0 sc_in sc_lv 32 signal 33 } 
	{ bufC_15_address0 sc_out sc_lv 4 signal 34 } 
	{ bufC_15_ce0 sc_out sc_logic 1 signal 34 } 
	{ bufC_15_q0 sc_in sc_lv 32 signal 34 } 
	{ bufC_47_address0 sc_out sc_lv 4 signal 35 } 
	{ bufC_47_ce0 sc_out sc_logic 1 signal 35 } 
	{ bufC_47_q0 sc_in sc_lv 32 signal 35 } 
	{ bufC_16_address0 sc_out sc_lv 4 signal 36 } 
	{ bufC_16_ce0 sc_out sc_logic 1 signal 36 } 
	{ bufC_16_q0 sc_in sc_lv 32 signal 36 } 
	{ bufC_48_address0 sc_out sc_lv 4 signal 37 } 
	{ bufC_48_ce0 sc_out sc_logic 1 signal 37 } 
	{ bufC_48_q0 sc_in sc_lv 32 signal 37 } 
	{ bufC_17_address0 sc_out sc_lv 4 signal 38 } 
	{ bufC_17_ce0 sc_out sc_logic 1 signal 38 } 
	{ bufC_17_q0 sc_in sc_lv 32 signal 38 } 
	{ bufC_49_address0 sc_out sc_lv 4 signal 39 } 
	{ bufC_49_ce0 sc_out sc_logic 1 signal 39 } 
	{ bufC_49_q0 sc_in sc_lv 32 signal 39 } 
	{ bufC_18_address0 sc_out sc_lv 4 signal 40 } 
	{ bufC_18_ce0 sc_out sc_logic 1 signal 40 } 
	{ bufC_18_q0 sc_in sc_lv 32 signal 40 } 
	{ bufC_50_address0 sc_out sc_lv 4 signal 41 } 
	{ bufC_50_ce0 sc_out sc_logic 1 signal 41 } 
	{ bufC_50_q0 sc_in sc_lv 32 signal 41 } 
	{ bufC_19_address0 sc_out sc_lv 4 signal 42 } 
	{ bufC_19_ce0 sc_out sc_logic 1 signal 42 } 
	{ bufC_19_q0 sc_in sc_lv 32 signal 42 } 
	{ bufC_51_address0 sc_out sc_lv 4 signal 43 } 
	{ bufC_51_ce0 sc_out sc_logic 1 signal 43 } 
	{ bufC_51_q0 sc_in sc_lv 32 signal 43 } 
	{ bufC_20_address0 sc_out sc_lv 4 signal 44 } 
	{ bufC_20_ce0 sc_out sc_logic 1 signal 44 } 
	{ bufC_20_q0 sc_in sc_lv 32 signal 44 } 
	{ bufC_52_address0 sc_out sc_lv 4 signal 45 } 
	{ bufC_52_ce0 sc_out sc_logic 1 signal 45 } 
	{ bufC_52_q0 sc_in sc_lv 32 signal 45 } 
	{ bufC_21_address0 sc_out sc_lv 4 signal 46 } 
	{ bufC_21_ce0 sc_out sc_logic 1 signal 46 } 
	{ bufC_21_q0 sc_in sc_lv 32 signal 46 } 
	{ bufC_53_address0 sc_out sc_lv 4 signal 47 } 
	{ bufC_53_ce0 sc_out sc_logic 1 signal 47 } 
	{ bufC_53_q0 sc_in sc_lv 32 signal 47 } 
	{ bufC_22_address0 sc_out sc_lv 4 signal 48 } 
	{ bufC_22_ce0 sc_out sc_logic 1 signal 48 } 
	{ bufC_22_q0 sc_in sc_lv 32 signal 48 } 
	{ bufC_54_address0 sc_out sc_lv 4 signal 49 } 
	{ bufC_54_ce0 sc_out sc_logic 1 signal 49 } 
	{ bufC_54_q0 sc_in sc_lv 32 signal 49 } 
	{ bufC_23_address0 sc_out sc_lv 4 signal 50 } 
	{ bufC_23_ce0 sc_out sc_logic 1 signal 50 } 
	{ bufC_23_q0 sc_in sc_lv 32 signal 50 } 
	{ bufC_55_address0 sc_out sc_lv 4 signal 51 } 
	{ bufC_55_ce0 sc_out sc_logic 1 signal 51 } 
	{ bufC_55_q0 sc_in sc_lv 32 signal 51 } 
	{ bufC_24_address0 sc_out sc_lv 4 signal 52 } 
	{ bufC_24_ce0 sc_out sc_logic 1 signal 52 } 
	{ bufC_24_q0 sc_in sc_lv 32 signal 52 } 
	{ bufC_56_address0 sc_out sc_lv 4 signal 53 } 
	{ bufC_56_ce0 sc_out sc_logic 1 signal 53 } 
	{ bufC_56_q0 sc_in sc_lv 32 signal 53 } 
	{ bufC_25_address0 sc_out sc_lv 4 signal 54 } 
	{ bufC_25_ce0 sc_out sc_logic 1 signal 54 } 
	{ bufC_25_q0 sc_in sc_lv 32 signal 54 } 
	{ bufC_57_address0 sc_out sc_lv 4 signal 55 } 
	{ bufC_57_ce0 sc_out sc_logic 1 signal 55 } 
	{ bufC_57_q0 sc_in sc_lv 32 signal 55 } 
	{ bufC_26_address0 sc_out sc_lv 4 signal 56 } 
	{ bufC_26_ce0 sc_out sc_logic 1 signal 56 } 
	{ bufC_26_q0 sc_in sc_lv 32 signal 56 } 
	{ bufC_58_address0 sc_out sc_lv 4 signal 57 } 
	{ bufC_58_ce0 sc_out sc_logic 1 signal 57 } 
	{ bufC_58_q0 sc_in sc_lv 32 signal 57 } 
	{ bufC_27_address0 sc_out sc_lv 4 signal 58 } 
	{ bufC_27_ce0 sc_out sc_logic 1 signal 58 } 
	{ bufC_27_q0 sc_in sc_lv 32 signal 58 } 
	{ bufC_59_address0 sc_out sc_lv 4 signal 59 } 
	{ bufC_59_ce0 sc_out sc_logic 1 signal 59 } 
	{ bufC_59_q0 sc_in sc_lv 32 signal 59 } 
	{ bufC_28_address0 sc_out sc_lv 4 signal 60 } 
	{ bufC_28_ce0 sc_out sc_logic 1 signal 60 } 
	{ bufC_28_q0 sc_in sc_lv 32 signal 60 } 
	{ bufC_60_address0 sc_out sc_lv 4 signal 61 } 
	{ bufC_60_ce0 sc_out sc_logic 1 signal 61 } 
	{ bufC_60_q0 sc_in sc_lv 32 signal 61 } 
	{ bufC_29_address0 sc_out sc_lv 4 signal 62 } 
	{ bufC_29_ce0 sc_out sc_logic 1 signal 62 } 
	{ bufC_29_q0 sc_in sc_lv 32 signal 62 } 
	{ bufC_61_address0 sc_out sc_lv 4 signal 63 } 
	{ bufC_61_ce0 sc_out sc_logic 1 signal 63 } 
	{ bufC_61_q0 sc_in sc_lv 32 signal 63 } 
	{ bufC_30_address0 sc_out sc_lv 4 signal 64 } 
	{ bufC_30_ce0 sc_out sc_logic 1 signal 64 } 
	{ bufC_30_q0 sc_in sc_lv 32 signal 64 } 
	{ bufC_62_address0 sc_out sc_lv 4 signal 65 } 
	{ bufC_62_ce0 sc_out sc_logic 1 signal 65 } 
	{ bufC_62_q0 sc_in sc_lv 32 signal 65 } 
	{ bufC_31_address0 sc_out sc_lv 4 signal 66 } 
	{ bufC_31_ce0 sc_out sc_logic 1 signal 66 } 
	{ bufC_31_q0 sc_in sc_lv 32 signal 66 } 
	{ bufC_63_address0 sc_out sc_lv 4 signal 67 } 
	{ bufC_63_ce0 sc_out sc_logic 1 signal 67 } 
	{ bufC_63_q0 sc_in sc_lv 32 signal 67 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_gmem0_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_gmem0_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_gmem0_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWID" }} , 
 	{ "name": "m_axi_gmem0_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_gmem0_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_gmem0_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_gmem0_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_gmem0_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_gmem0_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_gmem0_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_gmem0_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_gmem0_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gmem0", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_gmem0_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_gmem0_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_gmem0_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_WID" }} , 
 	{ "name": "m_axi_gmem0_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_gmem0_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_gmem0_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_gmem0_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_gmem0_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARID" }} , 
 	{ "name": "m_axi_gmem0_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_gmem0_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_gmem0_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_gmem0_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_gmem0_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_gmem0_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_gmem0_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_gmem0_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_gmem0_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gmem0", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_gmem0_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_gmem0_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_RID" }} , 
 	{ "name": "m_axi_gmem0_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "gmem0", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_gmem0_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_gmem0_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_gmem0_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_gmem0_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_gmem0_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_gmem0_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_BID" }} , 
 	{ "name": "m_axi_gmem0_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_BUSER" }} , 
 	{ "name": "sext_ln259", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln259", "role": "default" }} , 
 	{ "name": "zext_ln246_2", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "zext_ln246_2", "role": "default" }} , 
 	{ "name": "shl_ln", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "shl_ln", "role": "default" }} , 
 	{ "name": "C", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "C", "role": "default" }} , 
 	{ "name": "bufC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC", "role": "address0" }} , 
 	{ "name": "bufC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC", "role": "ce0" }} , 
 	{ "name": "bufC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC", "role": "q0" }} , 
 	{ "name": "bufC_32_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_32", "role": "address0" }} , 
 	{ "name": "bufC_32_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_32", "role": "ce0" }} , 
 	{ "name": "bufC_32_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_32", "role": "q0" }} , 
 	{ "name": "bufC_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_1", "role": "address0" }} , 
 	{ "name": "bufC_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_1", "role": "ce0" }} , 
 	{ "name": "bufC_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_1", "role": "q0" }} , 
 	{ "name": "bufC_33_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_33", "role": "address0" }} , 
 	{ "name": "bufC_33_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_33", "role": "ce0" }} , 
 	{ "name": "bufC_33_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_33", "role": "q0" }} , 
 	{ "name": "bufC_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_2", "role": "address0" }} , 
 	{ "name": "bufC_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_2", "role": "ce0" }} , 
 	{ "name": "bufC_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_2", "role": "q0" }} , 
 	{ "name": "bufC_34_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_34", "role": "address0" }} , 
 	{ "name": "bufC_34_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_34", "role": "ce0" }} , 
 	{ "name": "bufC_34_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_34", "role": "q0" }} , 
 	{ "name": "bufC_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_3", "role": "address0" }} , 
 	{ "name": "bufC_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_3", "role": "ce0" }} , 
 	{ "name": "bufC_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_3", "role": "q0" }} , 
 	{ "name": "bufC_35_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_35", "role": "address0" }} , 
 	{ "name": "bufC_35_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_35", "role": "ce0" }} , 
 	{ "name": "bufC_35_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_35", "role": "q0" }} , 
 	{ "name": "bufC_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_4", "role": "address0" }} , 
 	{ "name": "bufC_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_4", "role": "ce0" }} , 
 	{ "name": "bufC_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_4", "role": "q0" }} , 
 	{ "name": "bufC_36_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_36", "role": "address0" }} , 
 	{ "name": "bufC_36_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_36", "role": "ce0" }} , 
 	{ "name": "bufC_36_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_36", "role": "q0" }} , 
 	{ "name": "bufC_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_5", "role": "address0" }} , 
 	{ "name": "bufC_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_5", "role": "ce0" }} , 
 	{ "name": "bufC_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_5", "role": "q0" }} , 
 	{ "name": "bufC_37_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_37", "role": "address0" }} , 
 	{ "name": "bufC_37_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_37", "role": "ce0" }} , 
 	{ "name": "bufC_37_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_37", "role": "q0" }} , 
 	{ "name": "bufC_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_6", "role": "address0" }} , 
 	{ "name": "bufC_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_6", "role": "ce0" }} , 
 	{ "name": "bufC_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_6", "role": "q0" }} , 
 	{ "name": "bufC_38_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_38", "role": "address0" }} , 
 	{ "name": "bufC_38_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_38", "role": "ce0" }} , 
 	{ "name": "bufC_38_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_38", "role": "q0" }} , 
 	{ "name": "bufC_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_7", "role": "address0" }} , 
 	{ "name": "bufC_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_7", "role": "ce0" }} , 
 	{ "name": "bufC_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_7", "role": "q0" }} , 
 	{ "name": "bufC_39_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_39", "role": "address0" }} , 
 	{ "name": "bufC_39_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_39", "role": "ce0" }} , 
 	{ "name": "bufC_39_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_39", "role": "q0" }} , 
 	{ "name": "bufC_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_8", "role": "address0" }} , 
 	{ "name": "bufC_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_8", "role": "ce0" }} , 
 	{ "name": "bufC_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_8", "role": "q0" }} , 
 	{ "name": "bufC_40_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_40", "role": "address0" }} , 
 	{ "name": "bufC_40_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_40", "role": "ce0" }} , 
 	{ "name": "bufC_40_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_40", "role": "q0" }} , 
 	{ "name": "bufC_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_9", "role": "address0" }} , 
 	{ "name": "bufC_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_9", "role": "ce0" }} , 
 	{ "name": "bufC_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_9", "role": "q0" }} , 
 	{ "name": "bufC_41_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_41", "role": "address0" }} , 
 	{ "name": "bufC_41_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_41", "role": "ce0" }} , 
 	{ "name": "bufC_41_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_41", "role": "q0" }} , 
 	{ "name": "bufC_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_10", "role": "address0" }} , 
 	{ "name": "bufC_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_10", "role": "ce0" }} , 
 	{ "name": "bufC_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_10", "role": "q0" }} , 
 	{ "name": "bufC_42_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_42", "role": "address0" }} , 
 	{ "name": "bufC_42_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_42", "role": "ce0" }} , 
 	{ "name": "bufC_42_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_42", "role": "q0" }} , 
 	{ "name": "bufC_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_11", "role": "address0" }} , 
 	{ "name": "bufC_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_11", "role": "ce0" }} , 
 	{ "name": "bufC_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_11", "role": "q0" }} , 
 	{ "name": "bufC_43_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_43", "role": "address0" }} , 
 	{ "name": "bufC_43_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_43", "role": "ce0" }} , 
 	{ "name": "bufC_43_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_43", "role": "q0" }} , 
 	{ "name": "bufC_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_12", "role": "address0" }} , 
 	{ "name": "bufC_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_12", "role": "ce0" }} , 
 	{ "name": "bufC_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_12", "role": "q0" }} , 
 	{ "name": "bufC_44_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_44", "role": "address0" }} , 
 	{ "name": "bufC_44_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_44", "role": "ce0" }} , 
 	{ "name": "bufC_44_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_44", "role": "q0" }} , 
 	{ "name": "bufC_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_13", "role": "address0" }} , 
 	{ "name": "bufC_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_13", "role": "ce0" }} , 
 	{ "name": "bufC_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_13", "role": "q0" }} , 
 	{ "name": "bufC_45_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_45", "role": "address0" }} , 
 	{ "name": "bufC_45_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_45", "role": "ce0" }} , 
 	{ "name": "bufC_45_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_45", "role": "q0" }} , 
 	{ "name": "bufC_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_14", "role": "address0" }} , 
 	{ "name": "bufC_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_14", "role": "ce0" }} , 
 	{ "name": "bufC_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_14", "role": "q0" }} , 
 	{ "name": "bufC_46_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_46", "role": "address0" }} , 
 	{ "name": "bufC_46_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_46", "role": "ce0" }} , 
 	{ "name": "bufC_46_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_46", "role": "q0" }} , 
 	{ "name": "bufC_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_15", "role": "address0" }} , 
 	{ "name": "bufC_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_15", "role": "ce0" }} , 
 	{ "name": "bufC_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_15", "role": "q0" }} , 
 	{ "name": "bufC_47_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_47", "role": "address0" }} , 
 	{ "name": "bufC_47_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_47", "role": "ce0" }} , 
 	{ "name": "bufC_47_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_47", "role": "q0" }} , 
 	{ "name": "bufC_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_16", "role": "address0" }} , 
 	{ "name": "bufC_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_16", "role": "ce0" }} , 
 	{ "name": "bufC_16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_16", "role": "q0" }} , 
 	{ "name": "bufC_48_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_48", "role": "address0" }} , 
 	{ "name": "bufC_48_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_48", "role": "ce0" }} , 
 	{ "name": "bufC_48_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_48", "role": "q0" }} , 
 	{ "name": "bufC_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_17", "role": "address0" }} , 
 	{ "name": "bufC_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_17", "role": "ce0" }} , 
 	{ "name": "bufC_17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_17", "role": "q0" }} , 
 	{ "name": "bufC_49_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_49", "role": "address0" }} , 
 	{ "name": "bufC_49_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_49", "role": "ce0" }} , 
 	{ "name": "bufC_49_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_49", "role": "q0" }} , 
 	{ "name": "bufC_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_18", "role": "address0" }} , 
 	{ "name": "bufC_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_18", "role": "ce0" }} , 
 	{ "name": "bufC_18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_18", "role": "q0" }} , 
 	{ "name": "bufC_50_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_50", "role": "address0" }} , 
 	{ "name": "bufC_50_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_50", "role": "ce0" }} , 
 	{ "name": "bufC_50_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_50", "role": "q0" }} , 
 	{ "name": "bufC_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_19", "role": "address0" }} , 
 	{ "name": "bufC_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_19", "role": "ce0" }} , 
 	{ "name": "bufC_19_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_19", "role": "q0" }} , 
 	{ "name": "bufC_51_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_51", "role": "address0" }} , 
 	{ "name": "bufC_51_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_51", "role": "ce0" }} , 
 	{ "name": "bufC_51_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_51", "role": "q0" }} , 
 	{ "name": "bufC_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_20", "role": "address0" }} , 
 	{ "name": "bufC_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_20", "role": "ce0" }} , 
 	{ "name": "bufC_20_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_20", "role": "q0" }} , 
 	{ "name": "bufC_52_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_52", "role": "address0" }} , 
 	{ "name": "bufC_52_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_52", "role": "ce0" }} , 
 	{ "name": "bufC_52_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_52", "role": "q0" }} , 
 	{ "name": "bufC_21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_21", "role": "address0" }} , 
 	{ "name": "bufC_21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_21", "role": "ce0" }} , 
 	{ "name": "bufC_21_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_21", "role": "q0" }} , 
 	{ "name": "bufC_53_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_53", "role": "address0" }} , 
 	{ "name": "bufC_53_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_53", "role": "ce0" }} , 
 	{ "name": "bufC_53_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_53", "role": "q0" }} , 
 	{ "name": "bufC_22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_22", "role": "address0" }} , 
 	{ "name": "bufC_22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_22", "role": "ce0" }} , 
 	{ "name": "bufC_22_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_22", "role": "q0" }} , 
 	{ "name": "bufC_54_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_54", "role": "address0" }} , 
 	{ "name": "bufC_54_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_54", "role": "ce0" }} , 
 	{ "name": "bufC_54_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_54", "role": "q0" }} , 
 	{ "name": "bufC_23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_23", "role": "address0" }} , 
 	{ "name": "bufC_23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_23", "role": "ce0" }} , 
 	{ "name": "bufC_23_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_23", "role": "q0" }} , 
 	{ "name": "bufC_55_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_55", "role": "address0" }} , 
 	{ "name": "bufC_55_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_55", "role": "ce0" }} , 
 	{ "name": "bufC_55_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_55", "role": "q0" }} , 
 	{ "name": "bufC_24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_24", "role": "address0" }} , 
 	{ "name": "bufC_24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_24", "role": "ce0" }} , 
 	{ "name": "bufC_24_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_24", "role": "q0" }} , 
 	{ "name": "bufC_56_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_56", "role": "address0" }} , 
 	{ "name": "bufC_56_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_56", "role": "ce0" }} , 
 	{ "name": "bufC_56_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_56", "role": "q0" }} , 
 	{ "name": "bufC_25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_25", "role": "address0" }} , 
 	{ "name": "bufC_25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_25", "role": "ce0" }} , 
 	{ "name": "bufC_25_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_25", "role": "q0" }} , 
 	{ "name": "bufC_57_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_57", "role": "address0" }} , 
 	{ "name": "bufC_57_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_57", "role": "ce0" }} , 
 	{ "name": "bufC_57_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_57", "role": "q0" }} , 
 	{ "name": "bufC_26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_26", "role": "address0" }} , 
 	{ "name": "bufC_26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_26", "role": "ce0" }} , 
 	{ "name": "bufC_26_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_26", "role": "q0" }} , 
 	{ "name": "bufC_58_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_58", "role": "address0" }} , 
 	{ "name": "bufC_58_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_58", "role": "ce0" }} , 
 	{ "name": "bufC_58_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_58", "role": "q0" }} , 
 	{ "name": "bufC_27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_27", "role": "address0" }} , 
 	{ "name": "bufC_27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_27", "role": "ce0" }} , 
 	{ "name": "bufC_27_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_27", "role": "q0" }} , 
 	{ "name": "bufC_59_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_59", "role": "address0" }} , 
 	{ "name": "bufC_59_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_59", "role": "ce0" }} , 
 	{ "name": "bufC_59_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_59", "role": "q0" }} , 
 	{ "name": "bufC_28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_28", "role": "address0" }} , 
 	{ "name": "bufC_28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_28", "role": "ce0" }} , 
 	{ "name": "bufC_28_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_28", "role": "q0" }} , 
 	{ "name": "bufC_60_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_60", "role": "address0" }} , 
 	{ "name": "bufC_60_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_60", "role": "ce0" }} , 
 	{ "name": "bufC_60_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_60", "role": "q0" }} , 
 	{ "name": "bufC_29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_29", "role": "address0" }} , 
 	{ "name": "bufC_29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_29", "role": "ce0" }} , 
 	{ "name": "bufC_29_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_29", "role": "q0" }} , 
 	{ "name": "bufC_61_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_61", "role": "address0" }} , 
 	{ "name": "bufC_61_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_61", "role": "ce0" }} , 
 	{ "name": "bufC_61_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_61", "role": "q0" }} , 
 	{ "name": "bufC_30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_30", "role": "address0" }} , 
 	{ "name": "bufC_30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_30", "role": "ce0" }} , 
 	{ "name": "bufC_30_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_30", "role": "q0" }} , 
 	{ "name": "bufC_62_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_62", "role": "address0" }} , 
 	{ "name": "bufC_62_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_62", "role": "ce0" }} , 
 	{ "name": "bufC_62_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_62", "role": "q0" }} , 
 	{ "name": "bufC_31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_31", "role": "address0" }} , 
 	{ "name": "bufC_31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_31", "role": "ce0" }} , 
 	{ "name": "bufC_31_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_31", "role": "q0" }} , 
 	{ "name": "bufC_63_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_63", "role": "address0" }} , 
 	{ "name": "bufC_63_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_63", "role": "ce0" }} , 
 	{ "name": "bufC_63_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_63", "role": "q0" }}  ]}

set ArgLastReadFirstWriteLatency {
	qwen_linear_layer_1_Pipeline_VITIS_LOOP_291_11 {
		sext_ln259 {Type I LastRead 0 FirstWrite -1}
		zext_ln246_2 {Type I LastRead 0 FirstWrite -1}
		shl_ln {Type I LastRead 0 FirstWrite -1}
		C {Type I LastRead 0 FirstWrite -1}
		bufC {Type I LastRead 1 FirstWrite -1}
		bufC_32 {Type I LastRead 1 FirstWrite -1}
		bufC_1 {Type I LastRead 1 FirstWrite -1}
		bufC_33 {Type I LastRead 1 FirstWrite -1}
		bufC_2 {Type I LastRead 1 FirstWrite -1}
		bufC_34 {Type I LastRead 1 FirstWrite -1}
		bufC_3 {Type I LastRead 1 FirstWrite -1}
		bufC_35 {Type I LastRead 1 FirstWrite -1}
		bufC_4 {Type I LastRead 1 FirstWrite -1}
		bufC_36 {Type I LastRead 1 FirstWrite -1}
		bufC_5 {Type I LastRead 1 FirstWrite -1}
		bufC_37 {Type I LastRead 1 FirstWrite -1}
		bufC_6 {Type I LastRead 1 FirstWrite -1}
		bufC_38 {Type I LastRead 1 FirstWrite -1}
		bufC_7 {Type I LastRead 1 FirstWrite -1}
		bufC_39 {Type I LastRead 1 FirstWrite -1}
		bufC_8 {Type I LastRead 1 FirstWrite -1}
		bufC_40 {Type I LastRead 1 FirstWrite -1}
		bufC_9 {Type I LastRead 1 FirstWrite -1}
		bufC_41 {Type I LastRead 1 FirstWrite -1}
		bufC_10 {Type I LastRead 1 FirstWrite -1}
		bufC_42 {Type I LastRead 1 FirstWrite -1}
		bufC_11 {Type I LastRead 1 FirstWrite -1}
		bufC_43 {Type I LastRead 1 FirstWrite -1}
		bufC_12 {Type I LastRead 1 FirstWrite -1}
		bufC_44 {Type I LastRead 1 FirstWrite -1}
		bufC_13 {Type I LastRead 1 FirstWrite -1}
		bufC_45 {Type I LastRead 1 FirstWrite -1}
		bufC_14 {Type I LastRead 1 FirstWrite -1}
		bufC_46 {Type I LastRead 1 FirstWrite -1}
		bufC_15 {Type I LastRead 1 FirstWrite -1}
		bufC_47 {Type I LastRead 1 FirstWrite -1}
		bufC_16 {Type I LastRead 1 FirstWrite -1}
		bufC_48 {Type I LastRead 1 FirstWrite -1}
		bufC_17 {Type I LastRead 1 FirstWrite -1}
		bufC_49 {Type I LastRead 1 FirstWrite -1}
		bufC_18 {Type I LastRead 1 FirstWrite -1}
		bufC_50 {Type I LastRead 1 FirstWrite -1}
		bufC_19 {Type I LastRead 1 FirstWrite -1}
		bufC_51 {Type I LastRead 1 FirstWrite -1}
		bufC_20 {Type I LastRead 1 FirstWrite -1}
		bufC_52 {Type I LastRead 1 FirstWrite -1}
		bufC_21 {Type I LastRead 1 FirstWrite -1}
		bufC_53 {Type I LastRead 1 FirstWrite -1}
		bufC_22 {Type I LastRead 1 FirstWrite -1}
		bufC_54 {Type I LastRead 1 FirstWrite -1}
		bufC_23 {Type I LastRead 1 FirstWrite -1}
		bufC_55 {Type I LastRead 1 FirstWrite -1}
		bufC_24 {Type I LastRead 1 FirstWrite -1}
		bufC_56 {Type I LastRead 1 FirstWrite -1}
		bufC_25 {Type I LastRead 1 FirstWrite -1}
		bufC_57 {Type I LastRead 1 FirstWrite -1}
		bufC_26 {Type I LastRead 1 FirstWrite -1}
		bufC_58 {Type I LastRead 1 FirstWrite -1}
		bufC_27 {Type I LastRead 1 FirstWrite -1}
		bufC_59 {Type I LastRead 1 FirstWrite -1}
		bufC_28 {Type I LastRead 1 FirstWrite -1}
		bufC_60 {Type I LastRead 1 FirstWrite -1}
		bufC_29 {Type I LastRead 1 FirstWrite -1}
		bufC_61 {Type I LastRead 1 FirstWrite -1}
		bufC_30 {Type I LastRead 1 FirstWrite -1}
		bufC_62 {Type I LastRead 1 FirstWrite -1}
		bufC_31 {Type I LastRead 1 FirstWrite -1}
		bufC_63 {Type I LastRead 1 FirstWrite -1}
		gmem0 {Type O LastRead 35 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1032", "Max" : "1032"}
	, {"Name" : "Interval", "Min" : "1031", "Max" : "1031"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sext_ln259 { ap_none {  { sext_ln259 in_data 0 32 } } }
	zext_ln246_2 { ap_none {  { zext_ln246_2 in_data 0 31 } } }
	shl_ln { ap_none {  { shl_ln in_data 0 63 } } }
	C { ap_none {  { C in_data 0 64 } } }
	bufC { ap_memory {  { bufC_address0 mem_address 1 4 }  { bufC_ce0 mem_ce 1 1 }  { bufC_q0 mem_dout 0 32 } } }
	bufC_32 { ap_memory {  { bufC_32_address0 mem_address 1 4 }  { bufC_32_ce0 mem_ce 1 1 }  { bufC_32_q0 mem_dout 0 32 } } }
	bufC_1 { ap_memory {  { bufC_1_address0 mem_address 1 4 }  { bufC_1_ce0 mem_ce 1 1 }  { bufC_1_q0 mem_dout 0 32 } } }
	bufC_33 { ap_memory {  { bufC_33_address0 mem_address 1 4 }  { bufC_33_ce0 mem_ce 1 1 }  { bufC_33_q0 mem_dout 0 32 } } }
	bufC_2 { ap_memory {  { bufC_2_address0 mem_address 1 4 }  { bufC_2_ce0 mem_ce 1 1 }  { bufC_2_q0 mem_dout 0 32 } } }
	bufC_34 { ap_memory {  { bufC_34_address0 mem_address 1 4 }  { bufC_34_ce0 mem_ce 1 1 }  { bufC_34_q0 mem_dout 0 32 } } }
	bufC_3 { ap_memory {  { bufC_3_address0 mem_address 1 4 }  { bufC_3_ce0 mem_ce 1 1 }  { bufC_3_q0 mem_dout 0 32 } } }
	bufC_35 { ap_memory {  { bufC_35_address0 mem_address 1 4 }  { bufC_35_ce0 mem_ce 1 1 }  { bufC_35_q0 mem_dout 0 32 } } }
	bufC_4 { ap_memory {  { bufC_4_address0 mem_address 1 4 }  { bufC_4_ce0 mem_ce 1 1 }  { bufC_4_q0 mem_dout 0 32 } } }
	bufC_36 { ap_memory {  { bufC_36_address0 mem_address 1 4 }  { bufC_36_ce0 mem_ce 1 1 }  { bufC_36_q0 mem_dout 0 32 } } }
	bufC_5 { ap_memory {  { bufC_5_address0 mem_address 1 4 }  { bufC_5_ce0 mem_ce 1 1 }  { bufC_5_q0 mem_dout 0 32 } } }
	bufC_37 { ap_memory {  { bufC_37_address0 mem_address 1 4 }  { bufC_37_ce0 mem_ce 1 1 }  { bufC_37_q0 mem_dout 0 32 } } }
	bufC_6 { ap_memory {  { bufC_6_address0 mem_address 1 4 }  { bufC_6_ce0 mem_ce 1 1 }  { bufC_6_q0 mem_dout 0 32 } } }
	bufC_38 { ap_memory {  { bufC_38_address0 mem_address 1 4 }  { bufC_38_ce0 mem_ce 1 1 }  { bufC_38_q0 mem_dout 0 32 } } }
	bufC_7 { ap_memory {  { bufC_7_address0 mem_address 1 4 }  { bufC_7_ce0 mem_ce 1 1 }  { bufC_7_q0 mem_dout 0 32 } } }
	bufC_39 { ap_memory {  { bufC_39_address0 mem_address 1 4 }  { bufC_39_ce0 mem_ce 1 1 }  { bufC_39_q0 mem_dout 0 32 } } }
	bufC_8 { ap_memory {  { bufC_8_address0 mem_address 1 4 }  { bufC_8_ce0 mem_ce 1 1 }  { bufC_8_q0 mem_dout 0 32 } } }
	bufC_40 { ap_memory {  { bufC_40_address0 mem_address 1 4 }  { bufC_40_ce0 mem_ce 1 1 }  { bufC_40_q0 mem_dout 0 32 } } }
	bufC_9 { ap_memory {  { bufC_9_address0 mem_address 1 4 }  { bufC_9_ce0 mem_ce 1 1 }  { bufC_9_q0 mem_dout 0 32 } } }
	bufC_41 { ap_memory {  { bufC_41_address0 mem_address 1 4 }  { bufC_41_ce0 mem_ce 1 1 }  { bufC_41_q0 mem_dout 0 32 } } }
	bufC_10 { ap_memory {  { bufC_10_address0 mem_address 1 4 }  { bufC_10_ce0 mem_ce 1 1 }  { bufC_10_q0 mem_dout 0 32 } } }
	bufC_42 { ap_memory {  { bufC_42_address0 mem_address 1 4 }  { bufC_42_ce0 mem_ce 1 1 }  { bufC_42_q0 mem_dout 0 32 } } }
	bufC_11 { ap_memory {  { bufC_11_address0 mem_address 1 4 }  { bufC_11_ce0 mem_ce 1 1 }  { bufC_11_q0 mem_dout 0 32 } } }
	bufC_43 { ap_memory {  { bufC_43_address0 mem_address 1 4 }  { bufC_43_ce0 mem_ce 1 1 }  { bufC_43_q0 mem_dout 0 32 } } }
	bufC_12 { ap_memory {  { bufC_12_address0 mem_address 1 4 }  { bufC_12_ce0 mem_ce 1 1 }  { bufC_12_q0 mem_dout 0 32 } } }
	bufC_44 { ap_memory {  { bufC_44_address0 mem_address 1 4 }  { bufC_44_ce0 mem_ce 1 1 }  { bufC_44_q0 mem_dout 0 32 } } }
	bufC_13 { ap_memory {  { bufC_13_address0 mem_address 1 4 }  { bufC_13_ce0 mem_ce 1 1 }  { bufC_13_q0 mem_dout 0 32 } } }
	bufC_45 { ap_memory {  { bufC_45_address0 mem_address 1 4 }  { bufC_45_ce0 mem_ce 1 1 }  { bufC_45_q0 mem_dout 0 32 } } }
	bufC_14 { ap_memory {  { bufC_14_address0 mem_address 1 4 }  { bufC_14_ce0 mem_ce 1 1 }  { bufC_14_q0 mem_dout 0 32 } } }
	bufC_46 { ap_memory {  { bufC_46_address0 mem_address 1 4 }  { bufC_46_ce0 mem_ce 1 1 }  { bufC_46_q0 mem_dout 0 32 } } }
	bufC_15 { ap_memory {  { bufC_15_address0 mem_address 1 4 }  { bufC_15_ce0 mem_ce 1 1 }  { bufC_15_q0 mem_dout 0 32 } } }
	bufC_47 { ap_memory {  { bufC_47_address0 mem_address 1 4 }  { bufC_47_ce0 mem_ce 1 1 }  { bufC_47_q0 mem_dout 0 32 } } }
	bufC_16 { ap_memory {  { bufC_16_address0 mem_address 1 4 }  { bufC_16_ce0 mem_ce 1 1 }  { bufC_16_q0 mem_dout 0 32 } } }
	bufC_48 { ap_memory {  { bufC_48_address0 mem_address 1 4 }  { bufC_48_ce0 mem_ce 1 1 }  { bufC_48_q0 mem_dout 0 32 } } }
	bufC_17 { ap_memory {  { bufC_17_address0 mem_address 1 4 }  { bufC_17_ce0 mem_ce 1 1 }  { bufC_17_q0 mem_dout 0 32 } } }
	bufC_49 { ap_memory {  { bufC_49_address0 mem_address 1 4 }  { bufC_49_ce0 mem_ce 1 1 }  { bufC_49_q0 mem_dout 0 32 } } }
	bufC_18 { ap_memory {  { bufC_18_address0 mem_address 1 4 }  { bufC_18_ce0 mem_ce 1 1 }  { bufC_18_q0 mem_dout 0 32 } } }
	bufC_50 { ap_memory {  { bufC_50_address0 mem_address 1 4 }  { bufC_50_ce0 mem_ce 1 1 }  { bufC_50_q0 mem_dout 0 32 } } }
	bufC_19 { ap_memory {  { bufC_19_address0 mem_address 1 4 }  { bufC_19_ce0 mem_ce 1 1 }  { bufC_19_q0 mem_dout 0 32 } } }
	bufC_51 { ap_memory {  { bufC_51_address0 mem_address 1 4 }  { bufC_51_ce0 mem_ce 1 1 }  { bufC_51_q0 mem_dout 0 32 } } }
	bufC_20 { ap_memory {  { bufC_20_address0 mem_address 1 4 }  { bufC_20_ce0 mem_ce 1 1 }  { bufC_20_q0 mem_dout 0 32 } } }
	bufC_52 { ap_memory {  { bufC_52_address0 mem_address 1 4 }  { bufC_52_ce0 mem_ce 1 1 }  { bufC_52_q0 mem_dout 0 32 } } }
	bufC_21 { ap_memory {  { bufC_21_address0 mem_address 1 4 }  { bufC_21_ce0 mem_ce 1 1 }  { bufC_21_q0 mem_dout 0 32 } } }
	bufC_53 { ap_memory {  { bufC_53_address0 mem_address 1 4 }  { bufC_53_ce0 mem_ce 1 1 }  { bufC_53_q0 mem_dout 0 32 } } }
	bufC_22 { ap_memory {  { bufC_22_address0 mem_address 1 4 }  { bufC_22_ce0 mem_ce 1 1 }  { bufC_22_q0 mem_dout 0 32 } } }
	bufC_54 { ap_memory {  { bufC_54_address0 mem_address 1 4 }  { bufC_54_ce0 mem_ce 1 1 }  { bufC_54_q0 mem_dout 0 32 } } }
	bufC_23 { ap_memory {  { bufC_23_address0 mem_address 1 4 }  { bufC_23_ce0 mem_ce 1 1 }  { bufC_23_q0 mem_dout 0 32 } } }
	bufC_55 { ap_memory {  { bufC_55_address0 mem_address 1 4 }  { bufC_55_ce0 mem_ce 1 1 }  { bufC_55_q0 mem_dout 0 32 } } }
	bufC_24 { ap_memory {  { bufC_24_address0 mem_address 1 4 }  { bufC_24_ce0 mem_ce 1 1 }  { bufC_24_q0 mem_dout 0 32 } } }
	bufC_56 { ap_memory {  { bufC_56_address0 mem_address 1 4 }  { bufC_56_ce0 mem_ce 1 1 }  { bufC_56_q0 mem_dout 0 32 } } }
	bufC_25 { ap_memory {  { bufC_25_address0 mem_address 1 4 }  { bufC_25_ce0 mem_ce 1 1 }  { bufC_25_q0 mem_dout 0 32 } } }
	bufC_57 { ap_memory {  { bufC_57_address0 mem_address 1 4 }  { bufC_57_ce0 mem_ce 1 1 }  { bufC_57_q0 mem_dout 0 32 } } }
	bufC_26 { ap_memory {  { bufC_26_address0 mem_address 1 4 }  { bufC_26_ce0 mem_ce 1 1 }  { bufC_26_q0 mem_dout 0 32 } } }
	bufC_58 { ap_memory {  { bufC_58_address0 mem_address 1 4 }  { bufC_58_ce0 mem_ce 1 1 }  { bufC_58_q0 mem_dout 0 32 } } }
	bufC_27 { ap_memory {  { bufC_27_address0 mem_address 1 4 }  { bufC_27_ce0 mem_ce 1 1 }  { bufC_27_q0 mem_dout 0 32 } } }
	bufC_59 { ap_memory {  { bufC_59_address0 mem_address 1 4 }  { bufC_59_ce0 mem_ce 1 1 }  { bufC_59_q0 mem_dout 0 32 } } }
	bufC_28 { ap_memory {  { bufC_28_address0 mem_address 1 4 }  { bufC_28_ce0 mem_ce 1 1 }  { bufC_28_q0 mem_dout 0 32 } } }
	bufC_60 { ap_memory {  { bufC_60_address0 mem_address 1 4 }  { bufC_60_ce0 mem_ce 1 1 }  { bufC_60_q0 mem_dout 0 32 } } }
	bufC_29 { ap_memory {  { bufC_29_address0 mem_address 1 4 }  { bufC_29_ce0 mem_ce 1 1 }  { bufC_29_q0 mem_dout 0 32 } } }
	bufC_61 { ap_memory {  { bufC_61_address0 mem_address 1 4 }  { bufC_61_ce0 mem_ce 1 1 }  { bufC_61_q0 mem_dout 0 32 } } }
	bufC_30 { ap_memory {  { bufC_30_address0 mem_address 1 4 }  { bufC_30_ce0 mem_ce 1 1 }  { bufC_30_q0 mem_dout 0 32 } } }
	bufC_62 { ap_memory {  { bufC_62_address0 mem_address 1 4 }  { bufC_62_ce0 mem_ce 1 1 }  { bufC_62_q0 mem_dout 0 32 } } }
	bufC_31 { ap_memory {  { bufC_31_address0 mem_address 1 4 }  { bufC_31_ce0 mem_ce 1 1 }  { bufC_31_q0 mem_dout 0 32 } } }
	bufC_63 { ap_memory {  { bufC_63_address0 mem_address 1 4 }  { bufC_63_ce0 mem_ce 1 1 }  { bufC_63_q0 mem_dout 0 32 } } }
	 { m_axi {  { m_axi_gmem0_0_AWVALID VALID 1 1 }  { m_axi_gmem0_0_AWREADY READY 0 1 }  { m_axi_gmem0_0_AWADDR ADDR 1 64 }  { m_axi_gmem0_0_AWID ID 1 1 }  { m_axi_gmem0_0_AWLEN SIZE 1 32 }  { m_axi_gmem0_0_AWSIZE BURST 1 3 }  { m_axi_gmem0_0_AWBURST LOCK 1 2 }  { m_axi_gmem0_0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_0_AWCACHE PROT 1 4 }  { m_axi_gmem0_0_AWPROT QOS 1 3 }  { m_axi_gmem0_0_AWQOS REGION 1 4 }  { m_axi_gmem0_0_AWREGION USER 1 4 }  { m_axi_gmem0_0_AWUSER DATA 1 1 }  { m_axi_gmem0_0_WVALID VALID 1 1 }  { m_axi_gmem0_0_WREADY READY 0 1 }  { m_axi_gmem0_0_WDATA FIFONUM 1 16 }  { m_axi_gmem0_0_WSTRB STRB 1 2 }  { m_axi_gmem0_0_WLAST LAST 1 1 }  { m_axi_gmem0_0_WID ID 1 1 }  { m_axi_gmem0_0_WUSER DATA 1 1 }  { m_axi_gmem0_0_ARVALID VALID 1 1 }  { m_axi_gmem0_0_ARREADY READY 0 1 }  { m_axi_gmem0_0_ARADDR ADDR 1 64 }  { m_axi_gmem0_0_ARID ID 1 1 }  { m_axi_gmem0_0_ARLEN SIZE 1 32 }  { m_axi_gmem0_0_ARSIZE BURST 1 3 }  { m_axi_gmem0_0_ARBURST LOCK 1 2 }  { m_axi_gmem0_0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_0_ARCACHE PROT 1 4 }  { m_axi_gmem0_0_ARPROT QOS 1 3 }  { m_axi_gmem0_0_ARQOS REGION 1 4 }  { m_axi_gmem0_0_ARREGION USER 1 4 }  { m_axi_gmem0_0_ARUSER DATA 1 1 }  { m_axi_gmem0_0_RVALID VALID 0 1 }  { m_axi_gmem0_0_RREADY READY 1 1 }  { m_axi_gmem0_0_RDATA FIFONUM 0 16 }  { m_axi_gmem0_0_RLAST LAST 0 1 }  { m_axi_gmem0_0_RID ID 0 1 }  { m_axi_gmem0_0_RFIFONUM LEN 0 10 }  { m_axi_gmem0_0_RUSER DATA 0 1 }  { m_axi_gmem0_0_RRESP RESP 0 2 }  { m_axi_gmem0_0_BVALID VALID 0 1 }  { m_axi_gmem0_0_BREADY READY 1 1 }  { m_axi_gmem0_0_BRESP RESP 0 2 }  { m_axi_gmem0_0_BID ID 0 1 }  { m_axi_gmem0_0_BUSER DATA 0 1 } } }
}
