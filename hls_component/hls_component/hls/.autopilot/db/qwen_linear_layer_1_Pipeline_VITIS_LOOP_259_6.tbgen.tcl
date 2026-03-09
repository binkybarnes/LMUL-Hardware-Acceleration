set moduleName qwen_linear_layer_1_Pipeline_VITIS_LOOP_259_6
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
set C_modelName {qwen_linear_layer.1_Pipeline_VITIS_LOOP_259_6}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict bufA { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufA_1 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufA_2 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufA_3 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufA_4 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufA_5 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufA_6 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufA_7 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufA_8 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufA_9 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufA_10 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufA_11 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufA_12 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufA_13 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufA_14 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufA_15 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufW { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufW_1 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufW_2 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufW_3 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufW_4 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufW_5 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufW_6 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufW_7 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufW_8 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufW_9 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufW_10 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufW_11 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufW_12 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufW_13 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufW_14 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufW_15 { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict A_0 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_1 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_2 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_3 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_4 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_5 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_6 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_7 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_8 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_9 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_10 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_11 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_12 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_13 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_14 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_15 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ bufA int 16 regular {array 64 { 0 3 } 0 1 }  }
	{ bufA_1 int 16 regular {array 64 { 0 3 } 0 1 }  }
	{ bufA_2 int 16 regular {array 64 { 0 3 } 0 1 }  }
	{ bufA_3 int 16 regular {array 64 { 0 3 } 0 1 }  }
	{ bufA_4 int 16 regular {array 64 { 0 3 } 0 1 }  }
	{ bufA_5 int 16 regular {array 64 { 0 3 } 0 1 }  }
	{ bufA_6 int 16 regular {array 64 { 0 3 } 0 1 }  }
	{ bufA_7 int 16 regular {array 64 { 0 3 } 0 1 }  }
	{ bufA_8 int 16 regular {array 64 { 0 3 } 0 1 }  }
	{ bufA_9 int 16 regular {array 64 { 0 3 } 0 1 }  }
	{ bufA_10 int 16 regular {array 64 { 0 3 } 0 1 }  }
	{ bufA_11 int 16 regular {array 64 { 0 3 } 0 1 }  }
	{ bufA_12 int 16 regular {array 64 { 0 3 } 0 1 }  }
	{ bufA_13 int 16 regular {array 64 { 0 3 } 0 1 }  }
	{ bufA_14 int 16 regular {array 64 { 0 3 } 0 1 }  }
	{ bufA_15 int 16 regular {array 64 { 0 3 } 0 1 }  }
	{ sext_ln259 int 32 regular  }
	{ zext_ln246_2 int 31 regular  }
	{ shl_ln1 int 63 regular  }
	{ W int 64 regular  }
	{ bufW int 16 regular {array 64 { 0 3 } 0 1 }  }
	{ bufW_1 int 16 regular {array 64 { 0 3 } 0 1 }  }
	{ bufW_2 int 16 regular {array 64 { 0 3 } 0 1 }  }
	{ bufW_3 int 16 regular {array 64 { 0 3 } 0 1 }  }
	{ bufW_4 int 16 regular {array 64 { 0 3 } 0 1 }  }
	{ bufW_5 int 16 regular {array 64 { 0 3 } 0 1 }  }
	{ bufW_6 int 16 regular {array 64 { 0 3 } 0 1 }  }
	{ bufW_7 int 16 regular {array 64 { 0 3 } 0 1 }  }
	{ bufW_8 int 16 regular {array 64 { 0 3 } 0 1 }  }
	{ bufW_9 int 16 regular {array 64 { 0 3 } 0 1 }  }
	{ bufW_10 int 16 regular {array 64 { 0 3 } 0 1 }  }
	{ bufW_11 int 16 regular {array 64 { 0 3 } 0 1 }  }
	{ bufW_12 int 16 regular {array 64 { 0 3 } 0 1 }  }
	{ bufW_13 int 16 regular {array 64 { 0 3 } 0 1 }  }
	{ bufW_14 int 16 regular {array 64 { 0 3 } 0 1 }  }
	{ bufW_15 int 16 regular {array 64 { 0 3 } 0 1 }  }
	{ empty_22 int 15 regular  }
	{ empty_23 int 15 regular  }
	{ empty int 15 regular  }
	{ A_0 int 16 regular {array 1792 { 1 1 } 1 1 }  }
	{ A_1 int 16 regular {array 1792 { 1 1 } 1 1 }  }
	{ A_2 int 16 regular {array 1792 { 1 1 } 1 1 }  }
	{ A_3 int 16 regular {array 1792 { 1 1 } 1 1 }  }
	{ A_4 int 16 regular {array 1792 { 1 1 } 1 1 }  }
	{ A_5 int 16 regular {array 1792 { 1 1 } 1 1 }  }
	{ A_6 int 16 regular {array 1792 { 1 1 } 1 1 }  }
	{ A_7 int 16 regular {array 1792 { 1 1 } 1 1 }  }
	{ A_8 int 16 regular {array 1792 { 1 1 } 1 1 }  }
	{ A_9 int 16 regular {array 1792 { 1 1 } 1 1 }  }
	{ A_10 int 16 regular {array 1792 { 1 1 } 1 1 }  }
	{ A_11 int 16 regular {array 1792 { 1 1 } 1 1 }  }
	{ A_12 int 16 regular {array 1792 { 1 1 } 1 1 }  }
	{ A_13 int 16 regular {array 1792 { 1 1 } 1 1 }  }
	{ A_14 int 16 regular {array 1792 { 1 1 } 1 1 }  }
	{ A_15 int 16 regular {array 1792 { 1 1 } 1 1 }  }
	{ gmem2 int 16 regular {axi_master 0}  }
	{ or_ln2 int 15 regular  }
	{ or_ln262_1 int 15 regular  }
	{ or_ln262_2 int 15 regular  }
	{ or_ln262_3 int 15 regular  }
	{ or_ln262_4 int 15 regular  }
	{ or_ln262_5 int 15 regular  }
	{ or_ln262_6 int 15 regular  }
	{ or_ln262_7 int 15 regular  }
	{ or_ln262_8 int 15 regular  }
	{ or_ln262_9 int 15 regular  }
	{ or_ln262_s int 15 regular  }
	{ or_ln262_10 int 15 regular  }
	{ or_ln262_11 int 15 regular  }
	{ or_ln262_12 int 15 regular  }
	{ or_ln262_13 int 15 regular  }
	{ or_ln262_14 int 15 regular  }
	{ or_ln262_15 int 15 regular  }
	{ or_ln262_16 int 15 regular  }
	{ or_ln262_17 int 15 regular  }
	{ or_ln262_18 int 15 regular  }
	{ or_ln262_19 int 15 regular  }
	{ or_ln262_20 int 15 regular  }
	{ or_ln262_21 int 15 regular  }
	{ or_ln262_22 int 15 regular  }
	{ or_ln262_23 int 15 regular  }
	{ or_ln262_24 int 15 regular  }
	{ or_ln262_25 int 15 regular  }
	{ or_ln262_26 int 15 regular  }
	{ or_ln262_27 int 15 regular  }
	{ or_ln262_28 int 15 regular  }
	{ or_ln262_29 int 15 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "bufA", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bufA_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bufA_2", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bufA_3", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bufA_4", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bufA_5", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bufA_6", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bufA_7", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bufA_8", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bufA_9", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bufA_10", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bufA_11", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bufA_12", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bufA_13", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bufA_14", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bufA_15", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sext_ln259", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln246_2", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln1", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "W", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bufW", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bufW_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bufW_2", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bufW_3", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bufW_4", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bufW_5", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bufW_6", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bufW_7", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bufW_8", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bufW_9", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bufW_10", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bufW_11", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bufW_12", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bufW_13", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bufW_14", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bufW_15", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "empty_22", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "empty_23", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "A_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "A_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "A_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "A_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "A_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "A_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "A_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "A_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "A_8", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "A_9", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "A_10", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "A_11", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "A_12", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "A_13", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "A_14", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "A_15", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "gmem2", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "W2","offset": { "type": "dynamic","port_name": "W2","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "or_ln2", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln262_1", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln262_2", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln262_3", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln262_4", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln262_5", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln262_6", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln262_7", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln262_8", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln262_9", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln262_s", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln262_10", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln262_11", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln262_12", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln262_13", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln262_14", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln262_15", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln262_16", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln262_17", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln262_18", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln262_19", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln262_20", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln262_21", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln262_22", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln262_23", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln262_24", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln262_25", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln262_26", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln262_27", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln262_28", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln262_29", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 314
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem2_0_AWVALID sc_out sc_logic 1 signal 55 } 
	{ m_axi_gmem2_0_AWREADY sc_in sc_logic 1 signal 55 } 
	{ m_axi_gmem2_0_AWADDR sc_out sc_lv 64 signal 55 } 
	{ m_axi_gmem2_0_AWID sc_out sc_lv 1 signal 55 } 
	{ m_axi_gmem2_0_AWLEN sc_out sc_lv 32 signal 55 } 
	{ m_axi_gmem2_0_AWSIZE sc_out sc_lv 3 signal 55 } 
	{ m_axi_gmem2_0_AWBURST sc_out sc_lv 2 signal 55 } 
	{ m_axi_gmem2_0_AWLOCK sc_out sc_lv 2 signal 55 } 
	{ m_axi_gmem2_0_AWCACHE sc_out sc_lv 4 signal 55 } 
	{ m_axi_gmem2_0_AWPROT sc_out sc_lv 3 signal 55 } 
	{ m_axi_gmem2_0_AWQOS sc_out sc_lv 4 signal 55 } 
	{ m_axi_gmem2_0_AWREGION sc_out sc_lv 4 signal 55 } 
	{ m_axi_gmem2_0_AWUSER sc_out sc_lv 1 signal 55 } 
	{ m_axi_gmem2_0_WVALID sc_out sc_logic 1 signal 55 } 
	{ m_axi_gmem2_0_WREADY sc_in sc_logic 1 signal 55 } 
	{ m_axi_gmem2_0_WDATA sc_out sc_lv 16 signal 55 } 
	{ m_axi_gmem2_0_WSTRB sc_out sc_lv 2 signal 55 } 
	{ m_axi_gmem2_0_WLAST sc_out sc_logic 1 signal 55 } 
	{ m_axi_gmem2_0_WID sc_out sc_lv 1 signal 55 } 
	{ m_axi_gmem2_0_WUSER sc_out sc_lv 1 signal 55 } 
	{ m_axi_gmem2_0_ARVALID sc_out sc_logic 1 signal 55 } 
	{ m_axi_gmem2_0_ARREADY sc_in sc_logic 1 signal 55 } 
	{ m_axi_gmem2_0_ARADDR sc_out sc_lv 64 signal 55 } 
	{ m_axi_gmem2_0_ARID sc_out sc_lv 1 signal 55 } 
	{ m_axi_gmem2_0_ARLEN sc_out sc_lv 32 signal 55 } 
	{ m_axi_gmem2_0_ARSIZE sc_out sc_lv 3 signal 55 } 
	{ m_axi_gmem2_0_ARBURST sc_out sc_lv 2 signal 55 } 
	{ m_axi_gmem2_0_ARLOCK sc_out sc_lv 2 signal 55 } 
	{ m_axi_gmem2_0_ARCACHE sc_out sc_lv 4 signal 55 } 
	{ m_axi_gmem2_0_ARPROT sc_out sc_lv 3 signal 55 } 
	{ m_axi_gmem2_0_ARQOS sc_out sc_lv 4 signal 55 } 
	{ m_axi_gmem2_0_ARREGION sc_out sc_lv 4 signal 55 } 
	{ m_axi_gmem2_0_ARUSER sc_out sc_lv 1 signal 55 } 
	{ m_axi_gmem2_0_RVALID sc_in sc_logic 1 signal 55 } 
	{ m_axi_gmem2_0_RREADY sc_out sc_logic 1 signal 55 } 
	{ m_axi_gmem2_0_RDATA sc_in sc_lv 16 signal 55 } 
	{ m_axi_gmem2_0_RLAST sc_in sc_logic 1 signal 55 } 
	{ m_axi_gmem2_0_RID sc_in sc_lv 1 signal 55 } 
	{ m_axi_gmem2_0_RFIFONUM sc_in sc_lv 10 signal 55 } 
	{ m_axi_gmem2_0_RUSER sc_in sc_lv 1 signal 55 } 
	{ m_axi_gmem2_0_RRESP sc_in sc_lv 2 signal 55 } 
	{ m_axi_gmem2_0_BVALID sc_in sc_logic 1 signal 55 } 
	{ m_axi_gmem2_0_BREADY sc_out sc_logic 1 signal 55 } 
	{ m_axi_gmem2_0_BRESP sc_in sc_lv 2 signal 55 } 
	{ m_axi_gmem2_0_BID sc_in sc_lv 1 signal 55 } 
	{ m_axi_gmem2_0_BUSER sc_in sc_lv 1 signal 55 } 
	{ bufA_address0 sc_out sc_lv 6 signal 0 } 
	{ bufA_ce0 sc_out sc_logic 1 signal 0 } 
	{ bufA_we0 sc_out sc_logic 1 signal 0 } 
	{ bufA_d0 sc_out sc_lv 16 signal 0 } 
	{ bufA_1_address0 sc_out sc_lv 6 signal 1 } 
	{ bufA_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ bufA_1_we0 sc_out sc_logic 1 signal 1 } 
	{ bufA_1_d0 sc_out sc_lv 16 signal 1 } 
	{ bufA_2_address0 sc_out sc_lv 6 signal 2 } 
	{ bufA_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ bufA_2_we0 sc_out sc_logic 1 signal 2 } 
	{ bufA_2_d0 sc_out sc_lv 16 signal 2 } 
	{ bufA_3_address0 sc_out sc_lv 6 signal 3 } 
	{ bufA_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ bufA_3_we0 sc_out sc_logic 1 signal 3 } 
	{ bufA_3_d0 sc_out sc_lv 16 signal 3 } 
	{ bufA_4_address0 sc_out sc_lv 6 signal 4 } 
	{ bufA_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ bufA_4_we0 sc_out sc_logic 1 signal 4 } 
	{ bufA_4_d0 sc_out sc_lv 16 signal 4 } 
	{ bufA_5_address0 sc_out sc_lv 6 signal 5 } 
	{ bufA_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ bufA_5_we0 sc_out sc_logic 1 signal 5 } 
	{ bufA_5_d0 sc_out sc_lv 16 signal 5 } 
	{ bufA_6_address0 sc_out sc_lv 6 signal 6 } 
	{ bufA_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ bufA_6_we0 sc_out sc_logic 1 signal 6 } 
	{ bufA_6_d0 sc_out sc_lv 16 signal 6 } 
	{ bufA_7_address0 sc_out sc_lv 6 signal 7 } 
	{ bufA_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ bufA_7_we0 sc_out sc_logic 1 signal 7 } 
	{ bufA_7_d0 sc_out sc_lv 16 signal 7 } 
	{ bufA_8_address0 sc_out sc_lv 6 signal 8 } 
	{ bufA_8_ce0 sc_out sc_logic 1 signal 8 } 
	{ bufA_8_we0 sc_out sc_logic 1 signal 8 } 
	{ bufA_8_d0 sc_out sc_lv 16 signal 8 } 
	{ bufA_9_address0 sc_out sc_lv 6 signal 9 } 
	{ bufA_9_ce0 sc_out sc_logic 1 signal 9 } 
	{ bufA_9_we0 sc_out sc_logic 1 signal 9 } 
	{ bufA_9_d0 sc_out sc_lv 16 signal 9 } 
	{ bufA_10_address0 sc_out sc_lv 6 signal 10 } 
	{ bufA_10_ce0 sc_out sc_logic 1 signal 10 } 
	{ bufA_10_we0 sc_out sc_logic 1 signal 10 } 
	{ bufA_10_d0 sc_out sc_lv 16 signal 10 } 
	{ bufA_11_address0 sc_out sc_lv 6 signal 11 } 
	{ bufA_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ bufA_11_we0 sc_out sc_logic 1 signal 11 } 
	{ bufA_11_d0 sc_out sc_lv 16 signal 11 } 
	{ bufA_12_address0 sc_out sc_lv 6 signal 12 } 
	{ bufA_12_ce0 sc_out sc_logic 1 signal 12 } 
	{ bufA_12_we0 sc_out sc_logic 1 signal 12 } 
	{ bufA_12_d0 sc_out sc_lv 16 signal 12 } 
	{ bufA_13_address0 sc_out sc_lv 6 signal 13 } 
	{ bufA_13_ce0 sc_out sc_logic 1 signal 13 } 
	{ bufA_13_we0 sc_out sc_logic 1 signal 13 } 
	{ bufA_13_d0 sc_out sc_lv 16 signal 13 } 
	{ bufA_14_address0 sc_out sc_lv 6 signal 14 } 
	{ bufA_14_ce0 sc_out sc_logic 1 signal 14 } 
	{ bufA_14_we0 sc_out sc_logic 1 signal 14 } 
	{ bufA_14_d0 sc_out sc_lv 16 signal 14 } 
	{ bufA_15_address0 sc_out sc_lv 6 signal 15 } 
	{ bufA_15_ce0 sc_out sc_logic 1 signal 15 } 
	{ bufA_15_we0 sc_out sc_logic 1 signal 15 } 
	{ bufA_15_d0 sc_out sc_lv 16 signal 15 } 
	{ sext_ln259 sc_in sc_lv 32 signal 16 } 
	{ zext_ln246_2 sc_in sc_lv 31 signal 17 } 
	{ shl_ln1 sc_in sc_lv 63 signal 18 } 
	{ W sc_in sc_lv 64 signal 19 } 
	{ bufW_address0 sc_out sc_lv 6 signal 20 } 
	{ bufW_ce0 sc_out sc_logic 1 signal 20 } 
	{ bufW_we0 sc_out sc_logic 1 signal 20 } 
	{ bufW_d0 sc_out sc_lv 16 signal 20 } 
	{ bufW_1_address0 sc_out sc_lv 6 signal 21 } 
	{ bufW_1_ce0 sc_out sc_logic 1 signal 21 } 
	{ bufW_1_we0 sc_out sc_logic 1 signal 21 } 
	{ bufW_1_d0 sc_out sc_lv 16 signal 21 } 
	{ bufW_2_address0 sc_out sc_lv 6 signal 22 } 
	{ bufW_2_ce0 sc_out sc_logic 1 signal 22 } 
	{ bufW_2_we0 sc_out sc_logic 1 signal 22 } 
	{ bufW_2_d0 sc_out sc_lv 16 signal 22 } 
	{ bufW_3_address0 sc_out sc_lv 6 signal 23 } 
	{ bufW_3_ce0 sc_out sc_logic 1 signal 23 } 
	{ bufW_3_we0 sc_out sc_logic 1 signal 23 } 
	{ bufW_3_d0 sc_out sc_lv 16 signal 23 } 
	{ bufW_4_address0 sc_out sc_lv 6 signal 24 } 
	{ bufW_4_ce0 sc_out sc_logic 1 signal 24 } 
	{ bufW_4_we0 sc_out sc_logic 1 signal 24 } 
	{ bufW_4_d0 sc_out sc_lv 16 signal 24 } 
	{ bufW_5_address0 sc_out sc_lv 6 signal 25 } 
	{ bufW_5_ce0 sc_out sc_logic 1 signal 25 } 
	{ bufW_5_we0 sc_out sc_logic 1 signal 25 } 
	{ bufW_5_d0 sc_out sc_lv 16 signal 25 } 
	{ bufW_6_address0 sc_out sc_lv 6 signal 26 } 
	{ bufW_6_ce0 sc_out sc_logic 1 signal 26 } 
	{ bufW_6_we0 sc_out sc_logic 1 signal 26 } 
	{ bufW_6_d0 sc_out sc_lv 16 signal 26 } 
	{ bufW_7_address0 sc_out sc_lv 6 signal 27 } 
	{ bufW_7_ce0 sc_out sc_logic 1 signal 27 } 
	{ bufW_7_we0 sc_out sc_logic 1 signal 27 } 
	{ bufW_7_d0 sc_out sc_lv 16 signal 27 } 
	{ bufW_8_address0 sc_out sc_lv 6 signal 28 } 
	{ bufW_8_ce0 sc_out sc_logic 1 signal 28 } 
	{ bufW_8_we0 sc_out sc_logic 1 signal 28 } 
	{ bufW_8_d0 sc_out sc_lv 16 signal 28 } 
	{ bufW_9_address0 sc_out sc_lv 6 signal 29 } 
	{ bufW_9_ce0 sc_out sc_logic 1 signal 29 } 
	{ bufW_9_we0 sc_out sc_logic 1 signal 29 } 
	{ bufW_9_d0 sc_out sc_lv 16 signal 29 } 
	{ bufW_10_address0 sc_out sc_lv 6 signal 30 } 
	{ bufW_10_ce0 sc_out sc_logic 1 signal 30 } 
	{ bufW_10_we0 sc_out sc_logic 1 signal 30 } 
	{ bufW_10_d0 sc_out sc_lv 16 signal 30 } 
	{ bufW_11_address0 sc_out sc_lv 6 signal 31 } 
	{ bufW_11_ce0 sc_out sc_logic 1 signal 31 } 
	{ bufW_11_we0 sc_out sc_logic 1 signal 31 } 
	{ bufW_11_d0 sc_out sc_lv 16 signal 31 } 
	{ bufW_12_address0 sc_out sc_lv 6 signal 32 } 
	{ bufW_12_ce0 sc_out sc_logic 1 signal 32 } 
	{ bufW_12_we0 sc_out sc_logic 1 signal 32 } 
	{ bufW_12_d0 sc_out sc_lv 16 signal 32 } 
	{ bufW_13_address0 sc_out sc_lv 6 signal 33 } 
	{ bufW_13_ce0 sc_out sc_logic 1 signal 33 } 
	{ bufW_13_we0 sc_out sc_logic 1 signal 33 } 
	{ bufW_13_d0 sc_out sc_lv 16 signal 33 } 
	{ bufW_14_address0 sc_out sc_lv 6 signal 34 } 
	{ bufW_14_ce0 sc_out sc_logic 1 signal 34 } 
	{ bufW_14_we0 sc_out sc_logic 1 signal 34 } 
	{ bufW_14_d0 sc_out sc_lv 16 signal 34 } 
	{ bufW_15_address0 sc_out sc_lv 6 signal 35 } 
	{ bufW_15_ce0 sc_out sc_logic 1 signal 35 } 
	{ bufW_15_we0 sc_out sc_logic 1 signal 35 } 
	{ bufW_15_d0 sc_out sc_lv 16 signal 35 } 
	{ empty_22 sc_in sc_lv 15 signal 36 } 
	{ empty_23 sc_in sc_lv 15 signal 37 } 
	{ empty sc_in sc_lv 15 signal 38 } 
	{ A_0_address0 sc_out sc_lv 11 signal 39 } 
	{ A_0_ce0 sc_out sc_logic 1 signal 39 } 
	{ A_0_q0 sc_in sc_lv 16 signal 39 } 
	{ A_0_address1 sc_out sc_lv 11 signal 39 } 
	{ A_0_ce1 sc_out sc_logic 1 signal 39 } 
	{ A_0_q1 sc_in sc_lv 16 signal 39 } 
	{ A_1_address0 sc_out sc_lv 11 signal 40 } 
	{ A_1_ce0 sc_out sc_logic 1 signal 40 } 
	{ A_1_q0 sc_in sc_lv 16 signal 40 } 
	{ A_1_address1 sc_out sc_lv 11 signal 40 } 
	{ A_1_ce1 sc_out sc_logic 1 signal 40 } 
	{ A_1_q1 sc_in sc_lv 16 signal 40 } 
	{ A_2_address0 sc_out sc_lv 11 signal 41 } 
	{ A_2_ce0 sc_out sc_logic 1 signal 41 } 
	{ A_2_q0 sc_in sc_lv 16 signal 41 } 
	{ A_2_address1 sc_out sc_lv 11 signal 41 } 
	{ A_2_ce1 sc_out sc_logic 1 signal 41 } 
	{ A_2_q1 sc_in sc_lv 16 signal 41 } 
	{ A_3_address0 sc_out sc_lv 11 signal 42 } 
	{ A_3_ce0 sc_out sc_logic 1 signal 42 } 
	{ A_3_q0 sc_in sc_lv 16 signal 42 } 
	{ A_3_address1 sc_out sc_lv 11 signal 42 } 
	{ A_3_ce1 sc_out sc_logic 1 signal 42 } 
	{ A_3_q1 sc_in sc_lv 16 signal 42 } 
	{ A_4_address0 sc_out sc_lv 11 signal 43 } 
	{ A_4_ce0 sc_out sc_logic 1 signal 43 } 
	{ A_4_q0 sc_in sc_lv 16 signal 43 } 
	{ A_4_address1 sc_out sc_lv 11 signal 43 } 
	{ A_4_ce1 sc_out sc_logic 1 signal 43 } 
	{ A_4_q1 sc_in sc_lv 16 signal 43 } 
	{ A_5_address0 sc_out sc_lv 11 signal 44 } 
	{ A_5_ce0 sc_out sc_logic 1 signal 44 } 
	{ A_5_q0 sc_in sc_lv 16 signal 44 } 
	{ A_5_address1 sc_out sc_lv 11 signal 44 } 
	{ A_5_ce1 sc_out sc_logic 1 signal 44 } 
	{ A_5_q1 sc_in sc_lv 16 signal 44 } 
	{ A_6_address0 sc_out sc_lv 11 signal 45 } 
	{ A_6_ce0 sc_out sc_logic 1 signal 45 } 
	{ A_6_q0 sc_in sc_lv 16 signal 45 } 
	{ A_6_address1 sc_out sc_lv 11 signal 45 } 
	{ A_6_ce1 sc_out sc_logic 1 signal 45 } 
	{ A_6_q1 sc_in sc_lv 16 signal 45 } 
	{ A_7_address0 sc_out sc_lv 11 signal 46 } 
	{ A_7_ce0 sc_out sc_logic 1 signal 46 } 
	{ A_7_q0 sc_in sc_lv 16 signal 46 } 
	{ A_7_address1 sc_out sc_lv 11 signal 46 } 
	{ A_7_ce1 sc_out sc_logic 1 signal 46 } 
	{ A_7_q1 sc_in sc_lv 16 signal 46 } 
	{ A_8_address0 sc_out sc_lv 11 signal 47 } 
	{ A_8_ce0 sc_out sc_logic 1 signal 47 } 
	{ A_8_q0 sc_in sc_lv 16 signal 47 } 
	{ A_8_address1 sc_out sc_lv 11 signal 47 } 
	{ A_8_ce1 sc_out sc_logic 1 signal 47 } 
	{ A_8_q1 sc_in sc_lv 16 signal 47 } 
	{ A_9_address0 sc_out sc_lv 11 signal 48 } 
	{ A_9_ce0 sc_out sc_logic 1 signal 48 } 
	{ A_9_q0 sc_in sc_lv 16 signal 48 } 
	{ A_9_address1 sc_out sc_lv 11 signal 48 } 
	{ A_9_ce1 sc_out sc_logic 1 signal 48 } 
	{ A_9_q1 sc_in sc_lv 16 signal 48 } 
	{ A_10_address0 sc_out sc_lv 11 signal 49 } 
	{ A_10_ce0 sc_out sc_logic 1 signal 49 } 
	{ A_10_q0 sc_in sc_lv 16 signal 49 } 
	{ A_10_address1 sc_out sc_lv 11 signal 49 } 
	{ A_10_ce1 sc_out sc_logic 1 signal 49 } 
	{ A_10_q1 sc_in sc_lv 16 signal 49 } 
	{ A_11_address0 sc_out sc_lv 11 signal 50 } 
	{ A_11_ce0 sc_out sc_logic 1 signal 50 } 
	{ A_11_q0 sc_in sc_lv 16 signal 50 } 
	{ A_11_address1 sc_out sc_lv 11 signal 50 } 
	{ A_11_ce1 sc_out sc_logic 1 signal 50 } 
	{ A_11_q1 sc_in sc_lv 16 signal 50 } 
	{ A_12_address0 sc_out sc_lv 11 signal 51 } 
	{ A_12_ce0 sc_out sc_logic 1 signal 51 } 
	{ A_12_q0 sc_in sc_lv 16 signal 51 } 
	{ A_12_address1 sc_out sc_lv 11 signal 51 } 
	{ A_12_ce1 sc_out sc_logic 1 signal 51 } 
	{ A_12_q1 sc_in sc_lv 16 signal 51 } 
	{ A_13_address0 sc_out sc_lv 11 signal 52 } 
	{ A_13_ce0 sc_out sc_logic 1 signal 52 } 
	{ A_13_q0 sc_in sc_lv 16 signal 52 } 
	{ A_13_address1 sc_out sc_lv 11 signal 52 } 
	{ A_13_ce1 sc_out sc_logic 1 signal 52 } 
	{ A_13_q1 sc_in sc_lv 16 signal 52 } 
	{ A_14_address0 sc_out sc_lv 11 signal 53 } 
	{ A_14_ce0 sc_out sc_logic 1 signal 53 } 
	{ A_14_q0 sc_in sc_lv 16 signal 53 } 
	{ A_14_address1 sc_out sc_lv 11 signal 53 } 
	{ A_14_ce1 sc_out sc_logic 1 signal 53 } 
	{ A_14_q1 sc_in sc_lv 16 signal 53 } 
	{ A_15_address0 sc_out sc_lv 11 signal 54 } 
	{ A_15_ce0 sc_out sc_logic 1 signal 54 } 
	{ A_15_q0 sc_in sc_lv 16 signal 54 } 
	{ A_15_address1 sc_out sc_lv 11 signal 54 } 
	{ A_15_ce1 sc_out sc_logic 1 signal 54 } 
	{ A_15_q1 sc_in sc_lv 16 signal 54 } 
	{ or_ln2 sc_in sc_lv 15 signal 56 } 
	{ or_ln262_1 sc_in sc_lv 15 signal 57 } 
	{ or_ln262_2 sc_in sc_lv 15 signal 58 } 
	{ or_ln262_3 sc_in sc_lv 15 signal 59 } 
	{ or_ln262_4 sc_in sc_lv 15 signal 60 } 
	{ or_ln262_5 sc_in sc_lv 15 signal 61 } 
	{ or_ln262_6 sc_in sc_lv 15 signal 62 } 
	{ or_ln262_7 sc_in sc_lv 15 signal 63 } 
	{ or_ln262_8 sc_in sc_lv 15 signal 64 } 
	{ or_ln262_9 sc_in sc_lv 15 signal 65 } 
	{ or_ln262_s sc_in sc_lv 15 signal 66 } 
	{ or_ln262_10 sc_in sc_lv 15 signal 67 } 
	{ or_ln262_11 sc_in sc_lv 15 signal 68 } 
	{ or_ln262_12 sc_in sc_lv 15 signal 69 } 
	{ or_ln262_13 sc_in sc_lv 15 signal 70 } 
	{ or_ln262_14 sc_in sc_lv 15 signal 71 } 
	{ or_ln262_15 sc_in sc_lv 15 signal 72 } 
	{ or_ln262_16 sc_in sc_lv 15 signal 73 } 
	{ or_ln262_17 sc_in sc_lv 15 signal 74 } 
	{ or_ln262_18 sc_in sc_lv 15 signal 75 } 
	{ or_ln262_19 sc_in sc_lv 15 signal 76 } 
	{ or_ln262_20 sc_in sc_lv 15 signal 77 } 
	{ or_ln262_21 sc_in sc_lv 15 signal 78 } 
	{ or_ln262_22 sc_in sc_lv 15 signal 79 } 
	{ or_ln262_23 sc_in sc_lv 15 signal 80 } 
	{ or_ln262_24 sc_in sc_lv 15 signal 81 } 
	{ or_ln262_25 sc_in sc_lv 15 signal 82 } 
	{ or_ln262_26 sc_in sc_lv 15 signal 83 } 
	{ or_ln262_27 sc_in sc_lv 15 signal 84 } 
	{ or_ln262_28 sc_in sc_lv 15 signal 85 } 
	{ or_ln262_29 sc_in sc_lv 15 signal 86 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem2_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_gmem2_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_gmem2_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_gmem2_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWID" }} , 
 	{ "name": "m_axi_gmem2_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_gmem2_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_gmem2_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_gmem2_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_gmem2_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_gmem2_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_gmem2_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_gmem2_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_gmem2_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_gmem2_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_gmem2_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_gmem2_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gmem2", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_gmem2_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_gmem2_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_gmem2_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_WID" }} , 
 	{ "name": "m_axi_gmem2_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_gmem2_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_gmem2_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_gmem2_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_gmem2_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARID" }} , 
 	{ "name": "m_axi_gmem2_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_gmem2_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_gmem2_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_gmem2_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_gmem2_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_gmem2_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_gmem2_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_gmem2_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_gmem2_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_gmem2_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_gmem2_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_gmem2_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gmem2", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_gmem2_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_gmem2_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_RID" }} , 
 	{ "name": "m_axi_gmem2_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "gmem2", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_gmem2_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_gmem2_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_gmem2_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_gmem2_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_gmem2_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_gmem2_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_BID" }} , 
 	{ "name": "m_axi_gmem2_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_BUSER" }} , 
 	{ "name": "bufA_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufA", "role": "address0" }} , 
 	{ "name": "bufA_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA", "role": "ce0" }} , 
 	{ "name": "bufA_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA", "role": "we0" }} , 
 	{ "name": "bufA_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufA", "role": "d0" }} , 
 	{ "name": "bufA_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufA_1", "role": "address0" }} , 
 	{ "name": "bufA_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_1", "role": "ce0" }} , 
 	{ "name": "bufA_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_1", "role": "we0" }} , 
 	{ "name": "bufA_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufA_1", "role": "d0" }} , 
 	{ "name": "bufA_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufA_2", "role": "address0" }} , 
 	{ "name": "bufA_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_2", "role": "ce0" }} , 
 	{ "name": "bufA_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_2", "role": "we0" }} , 
 	{ "name": "bufA_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufA_2", "role": "d0" }} , 
 	{ "name": "bufA_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufA_3", "role": "address0" }} , 
 	{ "name": "bufA_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_3", "role": "ce0" }} , 
 	{ "name": "bufA_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_3", "role": "we0" }} , 
 	{ "name": "bufA_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufA_3", "role": "d0" }} , 
 	{ "name": "bufA_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufA_4", "role": "address0" }} , 
 	{ "name": "bufA_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_4", "role": "ce0" }} , 
 	{ "name": "bufA_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_4", "role": "we0" }} , 
 	{ "name": "bufA_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufA_4", "role": "d0" }} , 
 	{ "name": "bufA_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufA_5", "role": "address0" }} , 
 	{ "name": "bufA_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_5", "role": "ce0" }} , 
 	{ "name": "bufA_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_5", "role": "we0" }} , 
 	{ "name": "bufA_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufA_5", "role": "d0" }} , 
 	{ "name": "bufA_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufA_6", "role": "address0" }} , 
 	{ "name": "bufA_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_6", "role": "ce0" }} , 
 	{ "name": "bufA_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_6", "role": "we0" }} , 
 	{ "name": "bufA_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufA_6", "role": "d0" }} , 
 	{ "name": "bufA_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufA_7", "role": "address0" }} , 
 	{ "name": "bufA_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_7", "role": "ce0" }} , 
 	{ "name": "bufA_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_7", "role": "we0" }} , 
 	{ "name": "bufA_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufA_7", "role": "d0" }} , 
 	{ "name": "bufA_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufA_8", "role": "address0" }} , 
 	{ "name": "bufA_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_8", "role": "ce0" }} , 
 	{ "name": "bufA_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_8", "role": "we0" }} , 
 	{ "name": "bufA_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufA_8", "role": "d0" }} , 
 	{ "name": "bufA_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufA_9", "role": "address0" }} , 
 	{ "name": "bufA_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_9", "role": "ce0" }} , 
 	{ "name": "bufA_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_9", "role": "we0" }} , 
 	{ "name": "bufA_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufA_9", "role": "d0" }} , 
 	{ "name": "bufA_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufA_10", "role": "address0" }} , 
 	{ "name": "bufA_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_10", "role": "ce0" }} , 
 	{ "name": "bufA_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_10", "role": "we0" }} , 
 	{ "name": "bufA_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufA_10", "role": "d0" }} , 
 	{ "name": "bufA_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufA_11", "role": "address0" }} , 
 	{ "name": "bufA_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_11", "role": "ce0" }} , 
 	{ "name": "bufA_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_11", "role": "we0" }} , 
 	{ "name": "bufA_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufA_11", "role": "d0" }} , 
 	{ "name": "bufA_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufA_12", "role": "address0" }} , 
 	{ "name": "bufA_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_12", "role": "ce0" }} , 
 	{ "name": "bufA_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_12", "role": "we0" }} , 
 	{ "name": "bufA_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufA_12", "role": "d0" }} , 
 	{ "name": "bufA_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufA_13", "role": "address0" }} , 
 	{ "name": "bufA_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_13", "role": "ce0" }} , 
 	{ "name": "bufA_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_13", "role": "we0" }} , 
 	{ "name": "bufA_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufA_13", "role": "d0" }} , 
 	{ "name": "bufA_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufA_14", "role": "address0" }} , 
 	{ "name": "bufA_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_14", "role": "ce0" }} , 
 	{ "name": "bufA_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_14", "role": "we0" }} , 
 	{ "name": "bufA_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufA_14", "role": "d0" }} , 
 	{ "name": "bufA_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufA_15", "role": "address0" }} , 
 	{ "name": "bufA_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_15", "role": "ce0" }} , 
 	{ "name": "bufA_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufA_15", "role": "we0" }} , 
 	{ "name": "bufA_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufA_15", "role": "d0" }} , 
 	{ "name": "sext_ln259", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln259", "role": "default" }} , 
 	{ "name": "zext_ln246_2", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "zext_ln246_2", "role": "default" }} , 
 	{ "name": "shl_ln1", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "shl_ln1", "role": "default" }} , 
 	{ "name": "W", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W", "role": "default" }} , 
 	{ "name": "bufW_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufW", "role": "address0" }} , 
 	{ "name": "bufW_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW", "role": "ce0" }} , 
 	{ "name": "bufW_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW", "role": "we0" }} , 
 	{ "name": "bufW_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufW", "role": "d0" }} , 
 	{ "name": "bufW_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufW_1", "role": "address0" }} , 
 	{ "name": "bufW_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_1", "role": "ce0" }} , 
 	{ "name": "bufW_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_1", "role": "we0" }} , 
 	{ "name": "bufW_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufW_1", "role": "d0" }} , 
 	{ "name": "bufW_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufW_2", "role": "address0" }} , 
 	{ "name": "bufW_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_2", "role": "ce0" }} , 
 	{ "name": "bufW_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_2", "role": "we0" }} , 
 	{ "name": "bufW_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufW_2", "role": "d0" }} , 
 	{ "name": "bufW_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufW_3", "role": "address0" }} , 
 	{ "name": "bufW_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_3", "role": "ce0" }} , 
 	{ "name": "bufW_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_3", "role": "we0" }} , 
 	{ "name": "bufW_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufW_3", "role": "d0" }} , 
 	{ "name": "bufW_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufW_4", "role": "address0" }} , 
 	{ "name": "bufW_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_4", "role": "ce0" }} , 
 	{ "name": "bufW_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_4", "role": "we0" }} , 
 	{ "name": "bufW_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufW_4", "role": "d0" }} , 
 	{ "name": "bufW_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufW_5", "role": "address0" }} , 
 	{ "name": "bufW_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_5", "role": "ce0" }} , 
 	{ "name": "bufW_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_5", "role": "we0" }} , 
 	{ "name": "bufW_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufW_5", "role": "d0" }} , 
 	{ "name": "bufW_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufW_6", "role": "address0" }} , 
 	{ "name": "bufW_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_6", "role": "ce0" }} , 
 	{ "name": "bufW_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_6", "role": "we0" }} , 
 	{ "name": "bufW_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufW_6", "role": "d0" }} , 
 	{ "name": "bufW_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufW_7", "role": "address0" }} , 
 	{ "name": "bufW_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_7", "role": "ce0" }} , 
 	{ "name": "bufW_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_7", "role": "we0" }} , 
 	{ "name": "bufW_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufW_7", "role": "d0" }} , 
 	{ "name": "bufW_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufW_8", "role": "address0" }} , 
 	{ "name": "bufW_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_8", "role": "ce0" }} , 
 	{ "name": "bufW_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_8", "role": "we0" }} , 
 	{ "name": "bufW_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufW_8", "role": "d0" }} , 
 	{ "name": "bufW_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufW_9", "role": "address0" }} , 
 	{ "name": "bufW_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_9", "role": "ce0" }} , 
 	{ "name": "bufW_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_9", "role": "we0" }} , 
 	{ "name": "bufW_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufW_9", "role": "d0" }} , 
 	{ "name": "bufW_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufW_10", "role": "address0" }} , 
 	{ "name": "bufW_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_10", "role": "ce0" }} , 
 	{ "name": "bufW_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_10", "role": "we0" }} , 
 	{ "name": "bufW_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufW_10", "role": "d0" }} , 
 	{ "name": "bufW_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufW_11", "role": "address0" }} , 
 	{ "name": "bufW_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_11", "role": "ce0" }} , 
 	{ "name": "bufW_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_11", "role": "we0" }} , 
 	{ "name": "bufW_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufW_11", "role": "d0" }} , 
 	{ "name": "bufW_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufW_12", "role": "address0" }} , 
 	{ "name": "bufW_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_12", "role": "ce0" }} , 
 	{ "name": "bufW_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_12", "role": "we0" }} , 
 	{ "name": "bufW_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufW_12", "role": "d0" }} , 
 	{ "name": "bufW_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufW_13", "role": "address0" }} , 
 	{ "name": "bufW_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_13", "role": "ce0" }} , 
 	{ "name": "bufW_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_13", "role": "we0" }} , 
 	{ "name": "bufW_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufW_13", "role": "d0" }} , 
 	{ "name": "bufW_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufW_14", "role": "address0" }} , 
 	{ "name": "bufW_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_14", "role": "ce0" }} , 
 	{ "name": "bufW_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_14", "role": "we0" }} , 
 	{ "name": "bufW_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufW_14", "role": "d0" }} , 
 	{ "name": "bufW_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bufW_15", "role": "address0" }} , 
 	{ "name": "bufW_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_15", "role": "ce0" }} , 
 	{ "name": "bufW_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufW_15", "role": "we0" }} , 
 	{ "name": "bufW_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufW_15", "role": "d0" }} , 
 	{ "name": "empty_22", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "empty_22", "role": "default" }} , 
 	{ "name": "empty_23", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "empty_23", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "A_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "A_0", "role": "address0" }} , 
 	{ "name": "A_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_0", "role": "ce0" }} , 
 	{ "name": "A_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_0", "role": "q0" }} , 
 	{ "name": "A_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "A_0", "role": "address1" }} , 
 	{ "name": "A_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_0", "role": "ce1" }} , 
 	{ "name": "A_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_0", "role": "q1" }} , 
 	{ "name": "A_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "A_1", "role": "address0" }} , 
 	{ "name": "A_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_1", "role": "ce0" }} , 
 	{ "name": "A_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_1", "role": "q0" }} , 
 	{ "name": "A_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "A_1", "role": "address1" }} , 
 	{ "name": "A_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_1", "role": "ce1" }} , 
 	{ "name": "A_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_1", "role": "q1" }} , 
 	{ "name": "A_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "A_2", "role": "address0" }} , 
 	{ "name": "A_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_2", "role": "ce0" }} , 
 	{ "name": "A_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_2", "role": "q0" }} , 
 	{ "name": "A_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "A_2", "role": "address1" }} , 
 	{ "name": "A_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_2", "role": "ce1" }} , 
 	{ "name": "A_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_2", "role": "q1" }} , 
 	{ "name": "A_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "A_3", "role": "address0" }} , 
 	{ "name": "A_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_3", "role": "ce0" }} , 
 	{ "name": "A_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_3", "role": "q0" }} , 
 	{ "name": "A_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "A_3", "role": "address1" }} , 
 	{ "name": "A_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_3", "role": "ce1" }} , 
 	{ "name": "A_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_3", "role": "q1" }} , 
 	{ "name": "A_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "A_4", "role": "address0" }} , 
 	{ "name": "A_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_4", "role": "ce0" }} , 
 	{ "name": "A_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_4", "role": "q0" }} , 
 	{ "name": "A_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "A_4", "role": "address1" }} , 
 	{ "name": "A_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_4", "role": "ce1" }} , 
 	{ "name": "A_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_4", "role": "q1" }} , 
 	{ "name": "A_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "A_5", "role": "address0" }} , 
 	{ "name": "A_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_5", "role": "ce0" }} , 
 	{ "name": "A_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_5", "role": "q0" }} , 
 	{ "name": "A_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "A_5", "role": "address1" }} , 
 	{ "name": "A_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_5", "role": "ce1" }} , 
 	{ "name": "A_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_5", "role": "q1" }} , 
 	{ "name": "A_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "A_6", "role": "address0" }} , 
 	{ "name": "A_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_6", "role": "ce0" }} , 
 	{ "name": "A_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_6", "role": "q0" }} , 
 	{ "name": "A_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "A_6", "role": "address1" }} , 
 	{ "name": "A_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_6", "role": "ce1" }} , 
 	{ "name": "A_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_6", "role": "q1" }} , 
 	{ "name": "A_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "A_7", "role": "address0" }} , 
 	{ "name": "A_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_7", "role": "ce0" }} , 
 	{ "name": "A_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_7", "role": "q0" }} , 
 	{ "name": "A_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "A_7", "role": "address1" }} , 
 	{ "name": "A_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_7", "role": "ce1" }} , 
 	{ "name": "A_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_7", "role": "q1" }} , 
 	{ "name": "A_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "A_8", "role": "address0" }} , 
 	{ "name": "A_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_8", "role": "ce0" }} , 
 	{ "name": "A_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_8", "role": "q0" }} , 
 	{ "name": "A_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "A_8", "role": "address1" }} , 
 	{ "name": "A_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_8", "role": "ce1" }} , 
 	{ "name": "A_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_8", "role": "q1" }} , 
 	{ "name": "A_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "A_9", "role": "address0" }} , 
 	{ "name": "A_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_9", "role": "ce0" }} , 
 	{ "name": "A_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_9", "role": "q0" }} , 
 	{ "name": "A_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "A_9", "role": "address1" }} , 
 	{ "name": "A_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_9", "role": "ce1" }} , 
 	{ "name": "A_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_9", "role": "q1" }} , 
 	{ "name": "A_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "A_10", "role": "address0" }} , 
 	{ "name": "A_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_10", "role": "ce0" }} , 
 	{ "name": "A_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_10", "role": "q0" }} , 
 	{ "name": "A_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "A_10", "role": "address1" }} , 
 	{ "name": "A_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_10", "role": "ce1" }} , 
 	{ "name": "A_10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_10", "role": "q1" }} , 
 	{ "name": "A_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "A_11", "role": "address0" }} , 
 	{ "name": "A_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_11", "role": "ce0" }} , 
 	{ "name": "A_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_11", "role": "q0" }} , 
 	{ "name": "A_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "A_11", "role": "address1" }} , 
 	{ "name": "A_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_11", "role": "ce1" }} , 
 	{ "name": "A_11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_11", "role": "q1" }} , 
 	{ "name": "A_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "A_12", "role": "address0" }} , 
 	{ "name": "A_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_12", "role": "ce0" }} , 
 	{ "name": "A_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_12", "role": "q0" }} , 
 	{ "name": "A_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "A_12", "role": "address1" }} , 
 	{ "name": "A_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_12", "role": "ce1" }} , 
 	{ "name": "A_12_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_12", "role": "q1" }} , 
 	{ "name": "A_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "A_13", "role": "address0" }} , 
 	{ "name": "A_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_13", "role": "ce0" }} , 
 	{ "name": "A_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_13", "role": "q0" }} , 
 	{ "name": "A_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "A_13", "role": "address1" }} , 
 	{ "name": "A_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_13", "role": "ce1" }} , 
 	{ "name": "A_13_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_13", "role": "q1" }} , 
 	{ "name": "A_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "A_14", "role": "address0" }} , 
 	{ "name": "A_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_14", "role": "ce0" }} , 
 	{ "name": "A_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_14", "role": "q0" }} , 
 	{ "name": "A_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "A_14", "role": "address1" }} , 
 	{ "name": "A_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_14", "role": "ce1" }} , 
 	{ "name": "A_14_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_14", "role": "q1" }} , 
 	{ "name": "A_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "A_15", "role": "address0" }} , 
 	{ "name": "A_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_15", "role": "ce0" }} , 
 	{ "name": "A_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_15", "role": "q0" }} , 
 	{ "name": "A_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "A_15", "role": "address1" }} , 
 	{ "name": "A_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_15", "role": "ce1" }} , 
 	{ "name": "A_15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "A_15", "role": "q1" }} , 
 	{ "name": "or_ln2", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln2", "role": "default" }} , 
 	{ "name": "or_ln262_1", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln262_1", "role": "default" }} , 
 	{ "name": "or_ln262_2", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln262_2", "role": "default" }} , 
 	{ "name": "or_ln262_3", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln262_3", "role": "default" }} , 
 	{ "name": "or_ln262_4", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln262_4", "role": "default" }} , 
 	{ "name": "or_ln262_5", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln262_5", "role": "default" }} , 
 	{ "name": "or_ln262_6", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln262_6", "role": "default" }} , 
 	{ "name": "or_ln262_7", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln262_7", "role": "default" }} , 
 	{ "name": "or_ln262_8", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln262_8", "role": "default" }} , 
 	{ "name": "or_ln262_9", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln262_9", "role": "default" }} , 
 	{ "name": "or_ln262_s", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln262_s", "role": "default" }} , 
 	{ "name": "or_ln262_10", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln262_10", "role": "default" }} , 
 	{ "name": "or_ln262_11", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln262_11", "role": "default" }} , 
 	{ "name": "or_ln262_12", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln262_12", "role": "default" }} , 
 	{ "name": "or_ln262_13", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln262_13", "role": "default" }} , 
 	{ "name": "or_ln262_14", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln262_14", "role": "default" }} , 
 	{ "name": "or_ln262_15", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln262_15", "role": "default" }} , 
 	{ "name": "or_ln262_16", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln262_16", "role": "default" }} , 
 	{ "name": "or_ln262_17", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln262_17", "role": "default" }} , 
 	{ "name": "or_ln262_18", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln262_18", "role": "default" }} , 
 	{ "name": "or_ln262_19", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln262_19", "role": "default" }} , 
 	{ "name": "or_ln262_20", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln262_20", "role": "default" }} , 
 	{ "name": "or_ln262_21", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln262_21", "role": "default" }} , 
 	{ "name": "or_ln262_22", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln262_22", "role": "default" }} , 
 	{ "name": "or_ln262_23", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln262_23", "role": "default" }} , 
 	{ "name": "or_ln262_24", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln262_24", "role": "default" }} , 
 	{ "name": "or_ln262_25", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln262_25", "role": "default" }} , 
 	{ "name": "or_ln262_26", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln262_26", "role": "default" }} , 
 	{ "name": "or_ln262_27", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln262_27", "role": "default" }} , 
 	{ "name": "or_ln262_28", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln262_28", "role": "default" }} , 
 	{ "name": "or_ln262_29", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln262_29", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	qwen_linear_layer_1_Pipeline_VITIS_LOOP_259_6 {
		bufA {Type O LastRead -1 FirstWrite 5}
		bufA_1 {Type O LastRead -1 FirstWrite 5}
		bufA_2 {Type O LastRead -1 FirstWrite 6}
		bufA_3 {Type O LastRead -1 FirstWrite 6}
		bufA_4 {Type O LastRead -1 FirstWrite 7}
		bufA_5 {Type O LastRead -1 FirstWrite 7}
		bufA_6 {Type O LastRead -1 FirstWrite 8}
		bufA_7 {Type O LastRead -1 FirstWrite 8}
		bufA_8 {Type O LastRead -1 FirstWrite 9}
		bufA_9 {Type O LastRead -1 FirstWrite 9}
		bufA_10 {Type O LastRead -1 FirstWrite 10}
		bufA_11 {Type O LastRead -1 FirstWrite 10}
		bufA_12 {Type O LastRead -1 FirstWrite 11}
		bufA_13 {Type O LastRead -1 FirstWrite 11}
		bufA_14 {Type O LastRead -1 FirstWrite 12}
		bufA_15 {Type O LastRead -1 FirstWrite 12}
		sext_ln259 {Type I LastRead 0 FirstWrite -1}
		zext_ln246_2 {Type I LastRead 0 FirstWrite -1}
		shl_ln1 {Type I LastRead 0 FirstWrite -1}
		W {Type I LastRead 0 FirstWrite -1}
		bufW {Type O LastRead -1 FirstWrite 11}
		bufW_1 {Type O LastRead -1 FirstWrite 11}
		bufW_2 {Type O LastRead -1 FirstWrite 11}
		bufW_3 {Type O LastRead -1 FirstWrite 11}
		bufW_4 {Type O LastRead -1 FirstWrite 11}
		bufW_5 {Type O LastRead -1 FirstWrite 11}
		bufW_6 {Type O LastRead -1 FirstWrite 11}
		bufW_7 {Type O LastRead -1 FirstWrite 11}
		bufW_8 {Type O LastRead -1 FirstWrite 11}
		bufW_9 {Type O LastRead -1 FirstWrite 11}
		bufW_10 {Type O LastRead -1 FirstWrite 11}
		bufW_11 {Type O LastRead -1 FirstWrite 11}
		bufW_12 {Type O LastRead -1 FirstWrite 11}
		bufW_13 {Type O LastRead -1 FirstWrite 11}
		bufW_14 {Type O LastRead -1 FirstWrite 11}
		bufW_15 {Type O LastRead -1 FirstWrite 11}
		empty_22 {Type I LastRead 0 FirstWrite -1}
		empty_23 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		A_0 {Type I LastRead 20 FirstWrite -1}
		A_1 {Type I LastRead 20 FirstWrite -1}
		A_2 {Type I LastRead 20 FirstWrite -1}
		A_3 {Type I LastRead 20 FirstWrite -1}
		A_4 {Type I LastRead 20 FirstWrite -1}
		A_5 {Type I LastRead 20 FirstWrite -1}
		A_6 {Type I LastRead 20 FirstWrite -1}
		A_7 {Type I LastRead 20 FirstWrite -1}
		A_8 {Type I LastRead 20 FirstWrite -1}
		A_9 {Type I LastRead 20 FirstWrite -1}
		A_10 {Type I LastRead 20 FirstWrite -1}
		A_11 {Type I LastRead 20 FirstWrite -1}
		A_12 {Type I LastRead 20 FirstWrite -1}
		A_13 {Type I LastRead 20 FirstWrite -1}
		A_14 {Type I LastRead 20 FirstWrite -1}
		A_15 {Type I LastRead 20 FirstWrite -1}
		gmem2 {Type I LastRead 41 FirstWrite -1}
		or_ln2 {Type I LastRead 0 FirstWrite -1}
		or_ln262_1 {Type I LastRead 0 FirstWrite -1}
		or_ln262_2 {Type I LastRead 0 FirstWrite -1}
		or_ln262_3 {Type I LastRead 0 FirstWrite -1}
		or_ln262_4 {Type I LastRead 0 FirstWrite -1}
		or_ln262_5 {Type I LastRead 0 FirstWrite -1}
		or_ln262_6 {Type I LastRead 0 FirstWrite -1}
		or_ln262_7 {Type I LastRead 0 FirstWrite -1}
		or_ln262_8 {Type I LastRead 0 FirstWrite -1}
		or_ln262_9 {Type I LastRead 0 FirstWrite -1}
		or_ln262_s {Type I LastRead 0 FirstWrite -1}
		or_ln262_10 {Type I LastRead 0 FirstWrite -1}
		or_ln262_11 {Type I LastRead 0 FirstWrite -1}
		or_ln262_12 {Type I LastRead 0 FirstWrite -1}
		or_ln262_13 {Type I LastRead 0 FirstWrite -1}
		or_ln262_14 {Type I LastRead 0 FirstWrite -1}
		or_ln262_15 {Type I LastRead 0 FirstWrite -1}
		or_ln262_16 {Type I LastRead 0 FirstWrite -1}
		or_ln262_17 {Type I LastRead 0 FirstWrite -1}
		or_ln262_18 {Type I LastRead 0 FirstWrite -1}
		or_ln262_19 {Type I LastRead 0 FirstWrite -1}
		or_ln262_20 {Type I LastRead 0 FirstWrite -1}
		or_ln262_21 {Type I LastRead 0 FirstWrite -1}
		or_ln262_22 {Type I LastRead 0 FirstWrite -1}
		or_ln262_23 {Type I LastRead 0 FirstWrite -1}
		or_ln262_24 {Type I LastRead 0 FirstWrite -1}
		or_ln262_25 {Type I LastRead 0 FirstWrite -1}
		or_ln262_26 {Type I LastRead 0 FirstWrite -1}
		or_ln262_27 {Type I LastRead 0 FirstWrite -1}
		or_ln262_28 {Type I LastRead 0 FirstWrite -1}
		or_ln262_29 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1035", "Max" : "1035"}
	, {"Name" : "Interval", "Min" : "1034", "Max" : "1034"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	bufA { ap_memory {  { bufA_address0 mem_address 1 6 }  { bufA_ce0 mem_ce 1 1 }  { bufA_we0 mem_we 1 1 }  { bufA_d0 mem_din 1 16 } } }
	bufA_1 { ap_memory {  { bufA_1_address0 mem_address 1 6 }  { bufA_1_ce0 mem_ce 1 1 }  { bufA_1_we0 mem_we 1 1 }  { bufA_1_d0 mem_din 1 16 } } }
	bufA_2 { ap_memory {  { bufA_2_address0 mem_address 1 6 }  { bufA_2_ce0 mem_ce 1 1 }  { bufA_2_we0 mem_we 1 1 }  { bufA_2_d0 mem_din 1 16 } } }
	bufA_3 { ap_memory {  { bufA_3_address0 mem_address 1 6 }  { bufA_3_ce0 mem_ce 1 1 }  { bufA_3_we0 mem_we 1 1 }  { bufA_3_d0 mem_din 1 16 } } }
	bufA_4 { ap_memory {  { bufA_4_address0 mem_address 1 6 }  { bufA_4_ce0 mem_ce 1 1 }  { bufA_4_we0 mem_we 1 1 }  { bufA_4_d0 mem_din 1 16 } } }
	bufA_5 { ap_memory {  { bufA_5_address0 mem_address 1 6 }  { bufA_5_ce0 mem_ce 1 1 }  { bufA_5_we0 mem_we 1 1 }  { bufA_5_d0 mem_din 1 16 } } }
	bufA_6 { ap_memory {  { bufA_6_address0 mem_address 1 6 }  { bufA_6_ce0 mem_ce 1 1 }  { bufA_6_we0 mem_we 1 1 }  { bufA_6_d0 mem_din 1 16 } } }
	bufA_7 { ap_memory {  { bufA_7_address0 mem_address 1 6 }  { bufA_7_ce0 mem_ce 1 1 }  { bufA_7_we0 mem_we 1 1 }  { bufA_7_d0 mem_din 1 16 } } }
	bufA_8 { ap_memory {  { bufA_8_address0 mem_address 1 6 }  { bufA_8_ce0 mem_ce 1 1 }  { bufA_8_we0 mem_we 1 1 }  { bufA_8_d0 mem_din 1 16 } } }
	bufA_9 { ap_memory {  { bufA_9_address0 mem_address 1 6 }  { bufA_9_ce0 mem_ce 1 1 }  { bufA_9_we0 mem_we 1 1 }  { bufA_9_d0 mem_din 1 16 } } }
	bufA_10 { ap_memory {  { bufA_10_address0 mem_address 1 6 }  { bufA_10_ce0 mem_ce 1 1 }  { bufA_10_we0 mem_we 1 1 }  { bufA_10_d0 mem_din 1 16 } } }
	bufA_11 { ap_memory {  { bufA_11_address0 mem_address 1 6 }  { bufA_11_ce0 mem_ce 1 1 }  { bufA_11_we0 mem_we 1 1 }  { bufA_11_d0 mem_din 1 16 } } }
	bufA_12 { ap_memory {  { bufA_12_address0 mem_address 1 6 }  { bufA_12_ce0 mem_ce 1 1 }  { bufA_12_we0 mem_we 1 1 }  { bufA_12_d0 mem_din 1 16 } } }
	bufA_13 { ap_memory {  { bufA_13_address0 mem_address 1 6 }  { bufA_13_ce0 mem_ce 1 1 }  { bufA_13_we0 mem_we 1 1 }  { bufA_13_d0 mem_din 1 16 } } }
	bufA_14 { ap_memory {  { bufA_14_address0 mem_address 1 6 }  { bufA_14_ce0 mem_ce 1 1 }  { bufA_14_we0 mem_we 1 1 }  { bufA_14_d0 mem_din 1 16 } } }
	bufA_15 { ap_memory {  { bufA_15_address0 mem_address 1 6 }  { bufA_15_ce0 mem_ce 1 1 }  { bufA_15_we0 mem_we 1 1 }  { bufA_15_d0 mem_din 1 16 } } }
	sext_ln259 { ap_none {  { sext_ln259 in_data 0 32 } } }
	zext_ln246_2 { ap_none {  { zext_ln246_2 in_data 0 31 } } }
	shl_ln1 { ap_none {  { shl_ln1 in_data 0 63 } } }
	W { ap_none {  { W in_data 0 64 } } }
	bufW { ap_memory {  { bufW_address0 mem_address 1 6 }  { bufW_ce0 mem_ce 1 1 }  { bufW_we0 mem_we 1 1 }  { bufW_d0 mem_din 1 16 } } }
	bufW_1 { ap_memory {  { bufW_1_address0 mem_address 1 6 }  { bufW_1_ce0 mem_ce 1 1 }  { bufW_1_we0 mem_we 1 1 }  { bufW_1_d0 mem_din 1 16 } } }
	bufW_2 { ap_memory {  { bufW_2_address0 mem_address 1 6 }  { bufW_2_ce0 mem_ce 1 1 }  { bufW_2_we0 mem_we 1 1 }  { bufW_2_d0 mem_din 1 16 } } }
	bufW_3 { ap_memory {  { bufW_3_address0 mem_address 1 6 }  { bufW_3_ce0 mem_ce 1 1 }  { bufW_3_we0 mem_we 1 1 }  { bufW_3_d0 mem_din 1 16 } } }
	bufW_4 { ap_memory {  { bufW_4_address0 mem_address 1 6 }  { bufW_4_ce0 mem_ce 1 1 }  { bufW_4_we0 mem_we 1 1 }  { bufW_4_d0 mem_din 1 16 } } }
	bufW_5 { ap_memory {  { bufW_5_address0 mem_address 1 6 }  { bufW_5_ce0 mem_ce 1 1 }  { bufW_5_we0 mem_we 1 1 }  { bufW_5_d0 mem_din 1 16 } } }
	bufW_6 { ap_memory {  { bufW_6_address0 mem_address 1 6 }  { bufW_6_ce0 mem_ce 1 1 }  { bufW_6_we0 mem_we 1 1 }  { bufW_6_d0 mem_din 1 16 } } }
	bufW_7 { ap_memory {  { bufW_7_address0 mem_address 1 6 }  { bufW_7_ce0 mem_ce 1 1 }  { bufW_7_we0 mem_we 1 1 }  { bufW_7_d0 mem_din 1 16 } } }
	bufW_8 { ap_memory {  { bufW_8_address0 mem_address 1 6 }  { bufW_8_ce0 mem_ce 1 1 }  { bufW_8_we0 mem_we 1 1 }  { bufW_8_d0 mem_din 1 16 } } }
	bufW_9 { ap_memory {  { bufW_9_address0 mem_address 1 6 }  { bufW_9_ce0 mem_ce 1 1 }  { bufW_9_we0 mem_we 1 1 }  { bufW_9_d0 mem_din 1 16 } } }
	bufW_10 { ap_memory {  { bufW_10_address0 mem_address 1 6 }  { bufW_10_ce0 mem_ce 1 1 }  { bufW_10_we0 mem_we 1 1 }  { bufW_10_d0 mem_din 1 16 } } }
	bufW_11 { ap_memory {  { bufW_11_address0 mem_address 1 6 }  { bufW_11_ce0 mem_ce 1 1 }  { bufW_11_we0 mem_we 1 1 }  { bufW_11_d0 mem_din 1 16 } } }
	bufW_12 { ap_memory {  { bufW_12_address0 mem_address 1 6 }  { bufW_12_ce0 mem_ce 1 1 }  { bufW_12_we0 mem_we 1 1 }  { bufW_12_d0 mem_din 1 16 } } }
	bufW_13 { ap_memory {  { bufW_13_address0 mem_address 1 6 }  { bufW_13_ce0 mem_ce 1 1 }  { bufW_13_we0 mem_we 1 1 }  { bufW_13_d0 mem_din 1 16 } } }
	bufW_14 { ap_memory {  { bufW_14_address0 mem_address 1 6 }  { bufW_14_ce0 mem_ce 1 1 }  { bufW_14_we0 mem_we 1 1 }  { bufW_14_d0 mem_din 1 16 } } }
	bufW_15 { ap_memory {  { bufW_15_address0 mem_address 1 6 }  { bufW_15_ce0 mem_ce 1 1 }  { bufW_15_we0 mem_we 1 1 }  { bufW_15_d0 mem_din 1 16 } } }
	empty_22 { ap_none {  { empty_22 in_data 0 15 } } }
	empty_23 { ap_none {  { empty_23 in_data 0 15 } } }
	empty { ap_none {  { empty in_data 0 15 } } }
	A_0 { ap_memory {  { A_0_address0 mem_address 1 11 }  { A_0_ce0 mem_ce 1 1 }  { A_0_q0 mem_dout 0 16 }  { A_0_address1 MemPortADDR2 1 11 }  { A_0_ce1 MemPortCE2 1 1 }  { A_0_q1 MemPortDOUT2 0 16 } } }
	A_1 { ap_memory {  { A_1_address0 mem_address 1 11 }  { A_1_ce0 mem_ce 1 1 }  { A_1_q0 mem_dout 0 16 }  { A_1_address1 MemPortADDR2 1 11 }  { A_1_ce1 MemPortCE2 1 1 }  { A_1_q1 MemPortDOUT2 0 16 } } }
	A_2 { ap_memory {  { A_2_address0 mem_address 1 11 }  { A_2_ce0 mem_ce 1 1 }  { A_2_q0 mem_dout 0 16 }  { A_2_address1 MemPortADDR2 1 11 }  { A_2_ce1 MemPortCE2 1 1 }  { A_2_q1 MemPortDOUT2 0 16 } } }
	A_3 { ap_memory {  { A_3_address0 mem_address 1 11 }  { A_3_ce0 mem_ce 1 1 }  { A_3_q0 mem_dout 0 16 }  { A_3_address1 MemPortADDR2 1 11 }  { A_3_ce1 MemPortCE2 1 1 }  { A_3_q1 MemPortDOUT2 0 16 } } }
	A_4 { ap_memory {  { A_4_address0 mem_address 1 11 }  { A_4_ce0 mem_ce 1 1 }  { A_4_q0 mem_dout 0 16 }  { A_4_address1 MemPortADDR2 1 11 }  { A_4_ce1 MemPortCE2 1 1 }  { A_4_q1 MemPortDOUT2 0 16 } } }
	A_5 { ap_memory {  { A_5_address0 mem_address 1 11 }  { A_5_ce0 mem_ce 1 1 }  { A_5_q0 mem_dout 0 16 }  { A_5_address1 MemPortADDR2 1 11 }  { A_5_ce1 MemPortCE2 1 1 }  { A_5_q1 MemPortDOUT2 0 16 } } }
	A_6 { ap_memory {  { A_6_address0 mem_address 1 11 }  { A_6_ce0 mem_ce 1 1 }  { A_6_q0 mem_dout 0 16 }  { A_6_address1 MemPortADDR2 1 11 }  { A_6_ce1 MemPortCE2 1 1 }  { A_6_q1 MemPortDOUT2 0 16 } } }
	A_7 { ap_memory {  { A_7_address0 mem_address 1 11 }  { A_7_ce0 mem_ce 1 1 }  { A_7_q0 mem_dout 0 16 }  { A_7_address1 MemPortADDR2 1 11 }  { A_7_ce1 MemPortCE2 1 1 }  { A_7_q1 MemPortDOUT2 0 16 } } }
	A_8 { ap_memory {  { A_8_address0 mem_address 1 11 }  { A_8_ce0 mem_ce 1 1 }  { A_8_q0 mem_dout 0 16 }  { A_8_address1 MemPortADDR2 1 11 }  { A_8_ce1 MemPortCE2 1 1 }  { A_8_q1 MemPortDOUT2 0 16 } } }
	A_9 { ap_memory {  { A_9_address0 mem_address 1 11 }  { A_9_ce0 mem_ce 1 1 }  { A_9_q0 mem_dout 0 16 }  { A_9_address1 MemPortADDR2 1 11 }  { A_9_ce1 MemPortCE2 1 1 }  { A_9_q1 MemPortDOUT2 0 16 } } }
	A_10 { ap_memory {  { A_10_address0 mem_address 1 11 }  { A_10_ce0 mem_ce 1 1 }  { A_10_q0 mem_dout 0 16 }  { A_10_address1 MemPortADDR2 1 11 }  { A_10_ce1 MemPortCE2 1 1 }  { A_10_q1 MemPortDOUT2 0 16 } } }
	A_11 { ap_memory {  { A_11_address0 mem_address 1 11 }  { A_11_ce0 mem_ce 1 1 }  { A_11_q0 mem_dout 0 16 }  { A_11_address1 MemPortADDR2 1 11 }  { A_11_ce1 MemPortCE2 1 1 }  { A_11_q1 MemPortDOUT2 0 16 } } }
	A_12 { ap_memory {  { A_12_address0 mem_address 1 11 }  { A_12_ce0 mem_ce 1 1 }  { A_12_q0 mem_dout 0 16 }  { A_12_address1 MemPortADDR2 1 11 }  { A_12_ce1 MemPortCE2 1 1 }  { A_12_q1 MemPortDOUT2 0 16 } } }
	A_13 { ap_memory {  { A_13_address0 mem_address 1 11 }  { A_13_ce0 mem_ce 1 1 }  { A_13_q0 mem_dout 0 16 }  { A_13_address1 MemPortADDR2 1 11 }  { A_13_ce1 MemPortCE2 1 1 }  { A_13_q1 MemPortDOUT2 0 16 } } }
	A_14 { ap_memory {  { A_14_address0 mem_address 1 11 }  { A_14_ce0 mem_ce 1 1 }  { A_14_q0 mem_dout 0 16 }  { A_14_address1 MemPortADDR2 1 11 }  { A_14_ce1 MemPortCE2 1 1 }  { A_14_q1 MemPortDOUT2 0 16 } } }
	A_15 { ap_memory {  { A_15_address0 mem_address 1 11 }  { A_15_ce0 mem_ce 1 1 }  { A_15_q0 mem_dout 0 16 }  { A_15_address1 MemPortADDR2 1 11 }  { A_15_ce1 MemPortCE2 1 1 }  { A_15_q1 MemPortDOUT2 0 16 } } }
	 { m_axi {  { m_axi_gmem2_0_AWVALID VALID 1 1 }  { m_axi_gmem2_0_AWREADY READY 0 1 }  { m_axi_gmem2_0_AWADDR ADDR 1 64 }  { m_axi_gmem2_0_AWID ID 1 1 }  { m_axi_gmem2_0_AWLEN SIZE 1 32 }  { m_axi_gmem2_0_AWSIZE BURST 1 3 }  { m_axi_gmem2_0_AWBURST LOCK 1 2 }  { m_axi_gmem2_0_AWLOCK CACHE 1 2 }  { m_axi_gmem2_0_AWCACHE PROT 1 4 }  { m_axi_gmem2_0_AWPROT QOS 1 3 }  { m_axi_gmem2_0_AWQOS REGION 1 4 }  { m_axi_gmem2_0_AWREGION USER 1 4 }  { m_axi_gmem2_0_AWUSER DATA 1 1 }  { m_axi_gmem2_0_WVALID VALID 1 1 }  { m_axi_gmem2_0_WREADY READY 0 1 }  { m_axi_gmem2_0_WDATA FIFONUM 1 16 }  { m_axi_gmem2_0_WSTRB STRB 1 2 }  { m_axi_gmem2_0_WLAST LAST 1 1 }  { m_axi_gmem2_0_WID ID 1 1 }  { m_axi_gmem2_0_WUSER DATA 1 1 }  { m_axi_gmem2_0_ARVALID VALID 1 1 }  { m_axi_gmem2_0_ARREADY READY 0 1 }  { m_axi_gmem2_0_ARADDR ADDR 1 64 }  { m_axi_gmem2_0_ARID ID 1 1 }  { m_axi_gmem2_0_ARLEN SIZE 1 32 }  { m_axi_gmem2_0_ARSIZE BURST 1 3 }  { m_axi_gmem2_0_ARBURST LOCK 1 2 }  { m_axi_gmem2_0_ARLOCK CACHE 1 2 }  { m_axi_gmem2_0_ARCACHE PROT 1 4 }  { m_axi_gmem2_0_ARPROT QOS 1 3 }  { m_axi_gmem2_0_ARQOS REGION 1 4 }  { m_axi_gmem2_0_ARREGION USER 1 4 }  { m_axi_gmem2_0_ARUSER DATA 1 1 }  { m_axi_gmem2_0_RVALID VALID 0 1 }  { m_axi_gmem2_0_RREADY READY 1 1 }  { m_axi_gmem2_0_RDATA FIFONUM 0 16 }  { m_axi_gmem2_0_RLAST LAST 0 1 }  { m_axi_gmem2_0_RID ID 0 1 }  { m_axi_gmem2_0_RFIFONUM LEN 0 10 }  { m_axi_gmem2_0_RUSER DATA 0 1 }  { m_axi_gmem2_0_RRESP RESP 0 2 }  { m_axi_gmem2_0_BVALID VALID 0 1 }  { m_axi_gmem2_0_BREADY READY 1 1 }  { m_axi_gmem2_0_BRESP RESP 0 2 }  { m_axi_gmem2_0_BID ID 0 1 }  { m_axi_gmem2_0_BUSER DATA 0 1 } } }
	or_ln2 { ap_none {  { or_ln2 in_data 0 15 } } }
	or_ln262_1 { ap_none {  { or_ln262_1 in_data 0 15 } } }
	or_ln262_2 { ap_none {  { or_ln262_2 in_data 0 15 } } }
	or_ln262_3 { ap_none {  { or_ln262_3 in_data 0 15 } } }
	or_ln262_4 { ap_none {  { or_ln262_4 in_data 0 15 } } }
	or_ln262_5 { ap_none {  { or_ln262_5 in_data 0 15 } } }
	or_ln262_6 { ap_none {  { or_ln262_6 in_data 0 15 } } }
	or_ln262_7 { ap_none {  { or_ln262_7 in_data 0 15 } } }
	or_ln262_8 { ap_none {  { or_ln262_8 in_data 0 15 } } }
	or_ln262_9 { ap_none {  { or_ln262_9 in_data 0 15 } } }
	or_ln262_s { ap_none {  { or_ln262_s in_data 0 15 } } }
	or_ln262_10 { ap_none {  { or_ln262_10 in_data 0 15 } } }
	or_ln262_11 { ap_none {  { or_ln262_11 in_data 0 15 } } }
	or_ln262_12 { ap_none {  { or_ln262_12 in_data 0 15 } } }
	or_ln262_13 { ap_none {  { or_ln262_13 in_data 0 15 } } }
	or_ln262_14 { ap_none {  { or_ln262_14 in_data 0 15 } } }
	or_ln262_15 { ap_none {  { or_ln262_15 in_data 0 15 } } }
	or_ln262_16 { ap_none {  { or_ln262_16 in_data 0 15 } } }
	or_ln262_17 { ap_none {  { or_ln262_17 in_data 0 15 } } }
	or_ln262_18 { ap_none {  { or_ln262_18 in_data 0 15 } } }
	or_ln262_19 { ap_none {  { or_ln262_19 in_data 0 15 } } }
	or_ln262_20 { ap_none {  { or_ln262_20 in_data 0 15 } } }
	or_ln262_21 { ap_none {  { or_ln262_21 in_data 0 15 } } }
	or_ln262_22 { ap_none {  { or_ln262_22 in_data 0 15 } } }
	or_ln262_23 { ap_none {  { or_ln262_23 in_data 0 15 } } }
	or_ln262_24 { ap_none {  { or_ln262_24 in_data 0 15 } } }
	or_ln262_25 { ap_none {  { or_ln262_25 in_data 0 15 } } }
	or_ln262_26 { ap_none {  { or_ln262_26 in_data 0 15 } } }
	or_ln262_27 { ap_none {  { or_ln262_27 in_data 0 15 } } }
	or_ln262_28 { ap_none {  { or_ln262_28 in_data 0 15 } } }
	or_ln262_29 { ap_none {  { or_ln262_29 in_data 0 15 } } }
}
