set moduleName qwen_linear_layer_Pipeline_VITIS_LOOP_259_6
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
set C_modelName {qwen_linear_layer_Pipeline_VITIS_LOOP_259_6}
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
	{ shl_ln4 int 31 regular  }
	{ sext_ln244_4 int 32 regular  }
	{ zext_ln246 int 31 regular  }
	{ W int 64 regular  }
	{ shl_ln int 31 regular  }
	{ sext_ln244 int 31 regular  }
	{ zext_ln255 int 32 regular  }
	{ A int 64 regular  }
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
	{ gmem0 int 16 regular {axi_master 0}  }
	{ gmem1 int 16 regular {axi_master 0}  }
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
 	{ "Name" : "shl_ln4", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln244_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln246", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "W", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln244", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln255", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
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
 	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "A","offset": { "type": "dynamic","port_name": "A","bundle": "control"},"direction": "READONLY"},{"cName": "C","offset": { "type": "dynamic","port_name": "C","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "W1","offset": { "type": "dynamic","port_name": "W1","bundle": "control"},"direction": "READONLY"}]}]} ]}
# RTL Port declarations: 
set portNum 234
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem0_0_AWVALID sc_out sc_logic 1 signal 40 } 
	{ m_axi_gmem0_0_AWREADY sc_in sc_logic 1 signal 40 } 
	{ m_axi_gmem0_0_AWADDR sc_out sc_lv 64 signal 40 } 
	{ m_axi_gmem0_0_AWID sc_out sc_lv 1 signal 40 } 
	{ m_axi_gmem0_0_AWLEN sc_out sc_lv 32 signal 40 } 
	{ m_axi_gmem0_0_AWSIZE sc_out sc_lv 3 signal 40 } 
	{ m_axi_gmem0_0_AWBURST sc_out sc_lv 2 signal 40 } 
	{ m_axi_gmem0_0_AWLOCK sc_out sc_lv 2 signal 40 } 
	{ m_axi_gmem0_0_AWCACHE sc_out sc_lv 4 signal 40 } 
	{ m_axi_gmem0_0_AWPROT sc_out sc_lv 3 signal 40 } 
	{ m_axi_gmem0_0_AWQOS sc_out sc_lv 4 signal 40 } 
	{ m_axi_gmem0_0_AWREGION sc_out sc_lv 4 signal 40 } 
	{ m_axi_gmem0_0_AWUSER sc_out sc_lv 1 signal 40 } 
	{ m_axi_gmem0_0_WVALID sc_out sc_logic 1 signal 40 } 
	{ m_axi_gmem0_0_WREADY sc_in sc_logic 1 signal 40 } 
	{ m_axi_gmem0_0_WDATA sc_out sc_lv 16 signal 40 } 
	{ m_axi_gmem0_0_WSTRB sc_out sc_lv 2 signal 40 } 
	{ m_axi_gmem0_0_WLAST sc_out sc_logic 1 signal 40 } 
	{ m_axi_gmem0_0_WID sc_out sc_lv 1 signal 40 } 
	{ m_axi_gmem0_0_WUSER sc_out sc_lv 1 signal 40 } 
	{ m_axi_gmem0_0_ARVALID sc_out sc_logic 1 signal 40 } 
	{ m_axi_gmem0_0_ARREADY sc_in sc_logic 1 signal 40 } 
	{ m_axi_gmem0_0_ARADDR sc_out sc_lv 64 signal 40 } 
	{ m_axi_gmem0_0_ARID sc_out sc_lv 1 signal 40 } 
	{ m_axi_gmem0_0_ARLEN sc_out sc_lv 32 signal 40 } 
	{ m_axi_gmem0_0_ARSIZE sc_out sc_lv 3 signal 40 } 
	{ m_axi_gmem0_0_ARBURST sc_out sc_lv 2 signal 40 } 
	{ m_axi_gmem0_0_ARLOCK sc_out sc_lv 2 signal 40 } 
	{ m_axi_gmem0_0_ARCACHE sc_out sc_lv 4 signal 40 } 
	{ m_axi_gmem0_0_ARPROT sc_out sc_lv 3 signal 40 } 
	{ m_axi_gmem0_0_ARQOS sc_out sc_lv 4 signal 40 } 
	{ m_axi_gmem0_0_ARREGION sc_out sc_lv 4 signal 40 } 
	{ m_axi_gmem0_0_ARUSER sc_out sc_lv 1 signal 40 } 
	{ m_axi_gmem0_0_RVALID sc_in sc_logic 1 signal 40 } 
	{ m_axi_gmem0_0_RREADY sc_out sc_logic 1 signal 40 } 
	{ m_axi_gmem0_0_RDATA sc_in sc_lv 16 signal 40 } 
	{ m_axi_gmem0_0_RLAST sc_in sc_logic 1 signal 40 } 
	{ m_axi_gmem0_0_RID sc_in sc_lv 1 signal 40 } 
	{ m_axi_gmem0_0_RFIFONUM sc_in sc_lv 10 signal 40 } 
	{ m_axi_gmem0_0_RUSER sc_in sc_lv 1 signal 40 } 
	{ m_axi_gmem0_0_RRESP sc_in sc_lv 2 signal 40 } 
	{ m_axi_gmem0_0_BVALID sc_in sc_logic 1 signal 40 } 
	{ m_axi_gmem0_0_BREADY sc_out sc_logic 1 signal 40 } 
	{ m_axi_gmem0_0_BRESP sc_in sc_lv 2 signal 40 } 
	{ m_axi_gmem0_0_BID sc_in sc_lv 1 signal 40 } 
	{ m_axi_gmem0_0_BUSER sc_in sc_lv 1 signal 40 } 
	{ m_axi_gmem1_0_AWVALID sc_out sc_logic 1 signal 41 } 
	{ m_axi_gmem1_0_AWREADY sc_in sc_logic 1 signal 41 } 
	{ m_axi_gmem1_0_AWADDR sc_out sc_lv 64 signal 41 } 
	{ m_axi_gmem1_0_AWID sc_out sc_lv 1 signal 41 } 
	{ m_axi_gmem1_0_AWLEN sc_out sc_lv 32 signal 41 } 
	{ m_axi_gmem1_0_AWSIZE sc_out sc_lv 3 signal 41 } 
	{ m_axi_gmem1_0_AWBURST sc_out sc_lv 2 signal 41 } 
	{ m_axi_gmem1_0_AWLOCK sc_out sc_lv 2 signal 41 } 
	{ m_axi_gmem1_0_AWCACHE sc_out sc_lv 4 signal 41 } 
	{ m_axi_gmem1_0_AWPROT sc_out sc_lv 3 signal 41 } 
	{ m_axi_gmem1_0_AWQOS sc_out sc_lv 4 signal 41 } 
	{ m_axi_gmem1_0_AWREGION sc_out sc_lv 4 signal 41 } 
	{ m_axi_gmem1_0_AWUSER sc_out sc_lv 1 signal 41 } 
	{ m_axi_gmem1_0_WVALID sc_out sc_logic 1 signal 41 } 
	{ m_axi_gmem1_0_WREADY sc_in sc_logic 1 signal 41 } 
	{ m_axi_gmem1_0_WDATA sc_out sc_lv 16 signal 41 } 
	{ m_axi_gmem1_0_WSTRB sc_out sc_lv 2 signal 41 } 
	{ m_axi_gmem1_0_WLAST sc_out sc_logic 1 signal 41 } 
	{ m_axi_gmem1_0_WID sc_out sc_lv 1 signal 41 } 
	{ m_axi_gmem1_0_WUSER sc_out sc_lv 1 signal 41 } 
	{ m_axi_gmem1_0_ARVALID sc_out sc_logic 1 signal 41 } 
	{ m_axi_gmem1_0_ARREADY sc_in sc_logic 1 signal 41 } 
	{ m_axi_gmem1_0_ARADDR sc_out sc_lv 64 signal 41 } 
	{ m_axi_gmem1_0_ARID sc_out sc_lv 1 signal 41 } 
	{ m_axi_gmem1_0_ARLEN sc_out sc_lv 32 signal 41 } 
	{ m_axi_gmem1_0_ARSIZE sc_out sc_lv 3 signal 41 } 
	{ m_axi_gmem1_0_ARBURST sc_out sc_lv 2 signal 41 } 
	{ m_axi_gmem1_0_ARLOCK sc_out sc_lv 2 signal 41 } 
	{ m_axi_gmem1_0_ARCACHE sc_out sc_lv 4 signal 41 } 
	{ m_axi_gmem1_0_ARPROT sc_out sc_lv 3 signal 41 } 
	{ m_axi_gmem1_0_ARQOS sc_out sc_lv 4 signal 41 } 
	{ m_axi_gmem1_0_ARREGION sc_out sc_lv 4 signal 41 } 
	{ m_axi_gmem1_0_ARUSER sc_out sc_lv 1 signal 41 } 
	{ m_axi_gmem1_0_RVALID sc_in sc_logic 1 signal 41 } 
	{ m_axi_gmem1_0_RREADY sc_out sc_logic 1 signal 41 } 
	{ m_axi_gmem1_0_RDATA sc_in sc_lv 16 signal 41 } 
	{ m_axi_gmem1_0_RLAST sc_in sc_logic 1 signal 41 } 
	{ m_axi_gmem1_0_RID sc_in sc_lv 1 signal 41 } 
	{ m_axi_gmem1_0_RFIFONUM sc_in sc_lv 10 signal 41 } 
	{ m_axi_gmem1_0_RUSER sc_in sc_lv 1 signal 41 } 
	{ m_axi_gmem1_0_RRESP sc_in sc_lv 2 signal 41 } 
	{ m_axi_gmem1_0_BVALID sc_in sc_logic 1 signal 41 } 
	{ m_axi_gmem1_0_BREADY sc_out sc_logic 1 signal 41 } 
	{ m_axi_gmem1_0_BRESP sc_in sc_lv 2 signal 41 } 
	{ m_axi_gmem1_0_BID sc_in sc_lv 1 signal 41 } 
	{ m_axi_gmem1_0_BUSER sc_in sc_lv 1 signal 41 } 
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
	{ shl_ln4 sc_in sc_lv 31 signal 16 } 
	{ sext_ln244_4 sc_in sc_lv 32 signal 17 } 
	{ zext_ln246 sc_in sc_lv 31 signal 18 } 
	{ W sc_in sc_lv 64 signal 19 } 
	{ shl_ln sc_in sc_lv 31 signal 20 } 
	{ sext_ln244 sc_in sc_lv 31 signal 21 } 
	{ zext_ln255 sc_in sc_lv 32 signal 22 } 
	{ A sc_in sc_lv 64 signal 23 } 
	{ bufW_address0 sc_out sc_lv 6 signal 24 } 
	{ bufW_ce0 sc_out sc_logic 1 signal 24 } 
	{ bufW_we0 sc_out sc_logic 1 signal 24 } 
	{ bufW_d0 sc_out sc_lv 16 signal 24 } 
	{ bufW_1_address0 sc_out sc_lv 6 signal 25 } 
	{ bufW_1_ce0 sc_out sc_logic 1 signal 25 } 
	{ bufW_1_we0 sc_out sc_logic 1 signal 25 } 
	{ bufW_1_d0 sc_out sc_lv 16 signal 25 } 
	{ bufW_2_address0 sc_out sc_lv 6 signal 26 } 
	{ bufW_2_ce0 sc_out sc_logic 1 signal 26 } 
	{ bufW_2_we0 sc_out sc_logic 1 signal 26 } 
	{ bufW_2_d0 sc_out sc_lv 16 signal 26 } 
	{ bufW_3_address0 sc_out sc_lv 6 signal 27 } 
	{ bufW_3_ce0 sc_out sc_logic 1 signal 27 } 
	{ bufW_3_we0 sc_out sc_logic 1 signal 27 } 
	{ bufW_3_d0 sc_out sc_lv 16 signal 27 } 
	{ bufW_4_address0 sc_out sc_lv 6 signal 28 } 
	{ bufW_4_ce0 sc_out sc_logic 1 signal 28 } 
	{ bufW_4_we0 sc_out sc_logic 1 signal 28 } 
	{ bufW_4_d0 sc_out sc_lv 16 signal 28 } 
	{ bufW_5_address0 sc_out sc_lv 6 signal 29 } 
	{ bufW_5_ce0 sc_out sc_logic 1 signal 29 } 
	{ bufW_5_we0 sc_out sc_logic 1 signal 29 } 
	{ bufW_5_d0 sc_out sc_lv 16 signal 29 } 
	{ bufW_6_address0 sc_out sc_lv 6 signal 30 } 
	{ bufW_6_ce0 sc_out sc_logic 1 signal 30 } 
	{ bufW_6_we0 sc_out sc_logic 1 signal 30 } 
	{ bufW_6_d0 sc_out sc_lv 16 signal 30 } 
	{ bufW_7_address0 sc_out sc_lv 6 signal 31 } 
	{ bufW_7_ce0 sc_out sc_logic 1 signal 31 } 
	{ bufW_7_we0 sc_out sc_logic 1 signal 31 } 
	{ bufW_7_d0 sc_out sc_lv 16 signal 31 } 
	{ bufW_8_address0 sc_out sc_lv 6 signal 32 } 
	{ bufW_8_ce0 sc_out sc_logic 1 signal 32 } 
	{ bufW_8_we0 sc_out sc_logic 1 signal 32 } 
	{ bufW_8_d0 sc_out sc_lv 16 signal 32 } 
	{ bufW_9_address0 sc_out sc_lv 6 signal 33 } 
	{ bufW_9_ce0 sc_out sc_logic 1 signal 33 } 
	{ bufW_9_we0 sc_out sc_logic 1 signal 33 } 
	{ bufW_9_d0 sc_out sc_lv 16 signal 33 } 
	{ bufW_10_address0 sc_out sc_lv 6 signal 34 } 
	{ bufW_10_ce0 sc_out sc_logic 1 signal 34 } 
	{ bufW_10_we0 sc_out sc_logic 1 signal 34 } 
	{ bufW_10_d0 sc_out sc_lv 16 signal 34 } 
	{ bufW_11_address0 sc_out sc_lv 6 signal 35 } 
	{ bufW_11_ce0 sc_out sc_logic 1 signal 35 } 
	{ bufW_11_we0 sc_out sc_logic 1 signal 35 } 
	{ bufW_11_d0 sc_out sc_lv 16 signal 35 } 
	{ bufW_12_address0 sc_out sc_lv 6 signal 36 } 
	{ bufW_12_ce0 sc_out sc_logic 1 signal 36 } 
	{ bufW_12_we0 sc_out sc_logic 1 signal 36 } 
	{ bufW_12_d0 sc_out sc_lv 16 signal 36 } 
	{ bufW_13_address0 sc_out sc_lv 6 signal 37 } 
	{ bufW_13_ce0 sc_out sc_logic 1 signal 37 } 
	{ bufW_13_we0 sc_out sc_logic 1 signal 37 } 
	{ bufW_13_d0 sc_out sc_lv 16 signal 37 } 
	{ bufW_14_address0 sc_out sc_lv 6 signal 38 } 
	{ bufW_14_ce0 sc_out sc_logic 1 signal 38 } 
	{ bufW_14_we0 sc_out sc_logic 1 signal 38 } 
	{ bufW_14_d0 sc_out sc_lv 16 signal 38 } 
	{ bufW_15_address0 sc_out sc_lv 6 signal 39 } 
	{ bufW_15_ce0 sc_out sc_logic 1 signal 39 } 
	{ bufW_15_we0 sc_out sc_logic 1 signal 39 } 
	{ bufW_15_d0 sc_out sc_lv 16 signal 39 } 
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
 	{ "name": "m_axi_gmem1_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_gmem1_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_gmem1_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_gmem1_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWID" }} , 
 	{ "name": "m_axi_gmem1_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_gmem1_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_gmem1_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_gmem1_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_gmem1_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_gmem1_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_gmem1_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_gmem1_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_gmem1_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_gmem1_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_gmem1_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_gmem1_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gmem1", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_gmem1_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_gmem1_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_gmem1_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_WID" }} , 
 	{ "name": "m_axi_gmem1_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_gmem1_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_gmem1_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_gmem1_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_gmem1_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARID" }} , 
 	{ "name": "m_axi_gmem1_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_gmem1_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_gmem1_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_gmem1_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_gmem1_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_gmem1_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_gmem1_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_gmem1_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_gmem1_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_gmem1_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_gmem1_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_gmem1_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gmem1", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_gmem1_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_gmem1_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_RID" }} , 
 	{ "name": "m_axi_gmem1_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "gmem1", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_gmem1_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_gmem1_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_gmem1_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_gmem1_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_gmem1_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_gmem1_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_BID" }} , 
 	{ "name": "m_axi_gmem1_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_BUSER" }} , 
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
 	{ "name": "shl_ln4", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "shl_ln4", "role": "default" }} , 
 	{ "name": "sext_ln244_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln244_4", "role": "default" }} , 
 	{ "name": "zext_ln246", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "zext_ln246", "role": "default" }} , 
 	{ "name": "W", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W", "role": "default" }} , 
 	{ "name": "shl_ln", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "shl_ln", "role": "default" }} , 
 	{ "name": "sext_ln244", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "sext_ln244", "role": "default" }} , 
 	{ "name": "zext_ln255", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "zext_ln255", "role": "default" }} , 
 	{ "name": "A", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A", "role": "default" }} , 
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
 	{ "name": "bufW_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bufW_15", "role": "d0" }}  ]}

set ArgLastReadFirstWriteLatency {
	qwen_linear_layer_Pipeline_VITIS_LOOP_259_6 {
		bufA {Type O LastRead -1 FirstWrite 11}
		bufA_1 {Type O LastRead -1 FirstWrite 12}
		bufA_2 {Type O LastRead -1 FirstWrite 13}
		bufA_3 {Type O LastRead -1 FirstWrite 14}
		bufA_4 {Type O LastRead -1 FirstWrite 15}
		bufA_5 {Type O LastRead -1 FirstWrite 16}
		bufA_6 {Type O LastRead -1 FirstWrite 17}
		bufA_7 {Type O LastRead -1 FirstWrite 18}
		bufA_8 {Type O LastRead -1 FirstWrite 19}
		bufA_9 {Type O LastRead -1 FirstWrite 20}
		bufA_10 {Type O LastRead -1 FirstWrite 21}
		bufA_11 {Type O LastRead -1 FirstWrite 22}
		bufA_12 {Type O LastRead -1 FirstWrite 23}
		bufA_13 {Type O LastRead -1 FirstWrite 24}
		bufA_14 {Type O LastRead -1 FirstWrite 25}
		bufA_15 {Type O LastRead -1 FirstWrite 26}
		shl_ln4 {Type I LastRead 0 FirstWrite -1}
		sext_ln244_4 {Type I LastRead 0 FirstWrite -1}
		zext_ln246 {Type I LastRead 0 FirstWrite -1}
		W {Type I LastRead 0 FirstWrite -1}
		shl_ln {Type I LastRead 0 FirstWrite -1}
		sext_ln244 {Type I LastRead 0 FirstWrite -1}
		zext_ln255 {Type I LastRead 0 FirstWrite -1}
		A {Type I LastRead 0 FirstWrite -1}
		bufW {Type O LastRead -1 FirstWrite 10}
		bufW_1 {Type O LastRead -1 FirstWrite 10}
		bufW_2 {Type O LastRead -1 FirstWrite 10}
		bufW_3 {Type O LastRead -1 FirstWrite 10}
		bufW_4 {Type O LastRead -1 FirstWrite 10}
		bufW_5 {Type O LastRead -1 FirstWrite 10}
		bufW_6 {Type O LastRead -1 FirstWrite 10}
		bufW_7 {Type O LastRead -1 FirstWrite 10}
		bufW_8 {Type O LastRead -1 FirstWrite 10}
		bufW_9 {Type O LastRead -1 FirstWrite 10}
		bufW_10 {Type O LastRead -1 FirstWrite 10}
		bufW_11 {Type O LastRead -1 FirstWrite 10}
		bufW_12 {Type O LastRead -1 FirstWrite 10}
		bufW_13 {Type O LastRead -1 FirstWrite 10}
		bufW_14 {Type O LastRead -1 FirstWrite 10}
		bufW_15 {Type O LastRead -1 FirstWrite 10}
		gmem0 {Type I LastRead 41 FirstWrite -1}
		gmem1 {Type I LastRead 40 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1053", "Max" : "1053"}
	, {"Name" : "Interval", "Min" : "1052", "Max" : "1052"}
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
	shl_ln4 { ap_none {  { shl_ln4 in_data 0 31 } } }
	sext_ln244_4 { ap_none {  { sext_ln244_4 in_data 0 32 } } }
	zext_ln246 { ap_none {  { zext_ln246 in_data 0 31 } } }
	W { ap_none {  { W in_data 0 64 } } }
	shl_ln { ap_none {  { shl_ln in_data 0 31 } } }
	sext_ln244 { ap_none {  { sext_ln244 in_data 0 31 } } }
	zext_ln255 { ap_none {  { zext_ln255 in_data 0 32 } } }
	A { ap_none {  { A in_data 0 64 } } }
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
	 { m_axi {  { m_axi_gmem0_0_AWVALID VALID 1 1 }  { m_axi_gmem0_0_AWREADY READY 0 1 }  { m_axi_gmem0_0_AWADDR ADDR 1 64 }  { m_axi_gmem0_0_AWID ID 1 1 }  { m_axi_gmem0_0_AWLEN SIZE 1 32 }  { m_axi_gmem0_0_AWSIZE BURST 1 3 }  { m_axi_gmem0_0_AWBURST LOCK 1 2 }  { m_axi_gmem0_0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_0_AWCACHE PROT 1 4 }  { m_axi_gmem0_0_AWPROT QOS 1 3 }  { m_axi_gmem0_0_AWQOS REGION 1 4 }  { m_axi_gmem0_0_AWREGION USER 1 4 }  { m_axi_gmem0_0_AWUSER DATA 1 1 }  { m_axi_gmem0_0_WVALID VALID 1 1 }  { m_axi_gmem0_0_WREADY READY 0 1 }  { m_axi_gmem0_0_WDATA FIFONUM 1 16 }  { m_axi_gmem0_0_WSTRB STRB 1 2 }  { m_axi_gmem0_0_WLAST LAST 1 1 }  { m_axi_gmem0_0_WID ID 1 1 }  { m_axi_gmem0_0_WUSER DATA 1 1 }  { m_axi_gmem0_0_ARVALID VALID 1 1 }  { m_axi_gmem0_0_ARREADY READY 0 1 }  { m_axi_gmem0_0_ARADDR ADDR 1 64 }  { m_axi_gmem0_0_ARID ID 1 1 }  { m_axi_gmem0_0_ARLEN SIZE 1 32 }  { m_axi_gmem0_0_ARSIZE BURST 1 3 }  { m_axi_gmem0_0_ARBURST LOCK 1 2 }  { m_axi_gmem0_0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_0_ARCACHE PROT 1 4 }  { m_axi_gmem0_0_ARPROT QOS 1 3 }  { m_axi_gmem0_0_ARQOS REGION 1 4 }  { m_axi_gmem0_0_ARREGION USER 1 4 }  { m_axi_gmem0_0_ARUSER DATA 1 1 }  { m_axi_gmem0_0_RVALID VALID 0 1 }  { m_axi_gmem0_0_RREADY READY 1 1 }  { m_axi_gmem0_0_RDATA FIFONUM 0 16 }  { m_axi_gmem0_0_RLAST LAST 0 1 }  { m_axi_gmem0_0_RID ID 0 1 }  { m_axi_gmem0_0_RFIFONUM LEN 0 10 }  { m_axi_gmem0_0_RUSER DATA 0 1 }  { m_axi_gmem0_0_RRESP RESP 0 2 }  { m_axi_gmem0_0_BVALID VALID 0 1 }  { m_axi_gmem0_0_BREADY READY 1 1 }  { m_axi_gmem0_0_BRESP RESP 0 2 }  { m_axi_gmem0_0_BID ID 0 1 }  { m_axi_gmem0_0_BUSER DATA 0 1 } } }
	 { m_axi {  { m_axi_gmem1_0_AWVALID VALID 1 1 }  { m_axi_gmem1_0_AWREADY READY 0 1 }  { m_axi_gmem1_0_AWADDR ADDR 1 64 }  { m_axi_gmem1_0_AWID ID 1 1 }  { m_axi_gmem1_0_AWLEN SIZE 1 32 }  { m_axi_gmem1_0_AWSIZE BURST 1 3 }  { m_axi_gmem1_0_AWBURST LOCK 1 2 }  { m_axi_gmem1_0_AWLOCK CACHE 1 2 }  { m_axi_gmem1_0_AWCACHE PROT 1 4 }  { m_axi_gmem1_0_AWPROT QOS 1 3 }  { m_axi_gmem1_0_AWQOS REGION 1 4 }  { m_axi_gmem1_0_AWREGION USER 1 4 }  { m_axi_gmem1_0_AWUSER DATA 1 1 }  { m_axi_gmem1_0_WVALID VALID 1 1 }  { m_axi_gmem1_0_WREADY READY 0 1 }  { m_axi_gmem1_0_WDATA FIFONUM 1 16 }  { m_axi_gmem1_0_WSTRB STRB 1 2 }  { m_axi_gmem1_0_WLAST LAST 1 1 }  { m_axi_gmem1_0_WID ID 1 1 }  { m_axi_gmem1_0_WUSER DATA 1 1 }  { m_axi_gmem1_0_ARVALID VALID 1 1 }  { m_axi_gmem1_0_ARREADY READY 0 1 }  { m_axi_gmem1_0_ARADDR ADDR 1 64 }  { m_axi_gmem1_0_ARID ID 1 1 }  { m_axi_gmem1_0_ARLEN SIZE 1 32 }  { m_axi_gmem1_0_ARSIZE BURST 1 3 }  { m_axi_gmem1_0_ARBURST LOCK 1 2 }  { m_axi_gmem1_0_ARLOCK CACHE 1 2 }  { m_axi_gmem1_0_ARCACHE PROT 1 4 }  { m_axi_gmem1_0_ARPROT QOS 1 3 }  { m_axi_gmem1_0_ARQOS REGION 1 4 }  { m_axi_gmem1_0_ARREGION USER 1 4 }  { m_axi_gmem1_0_ARUSER DATA 1 1 }  { m_axi_gmem1_0_RVALID VALID 0 1 }  { m_axi_gmem1_0_RREADY READY 1 1 }  { m_axi_gmem1_0_RDATA FIFONUM 0 16 }  { m_axi_gmem1_0_RLAST LAST 0 1 }  { m_axi_gmem1_0_RID ID 0 1 }  { m_axi_gmem1_0_RFIFONUM LEN 0 10 }  { m_axi_gmem1_0_RUSER DATA 0 1 }  { m_axi_gmem1_0_RRESP RESP 0 2 }  { m_axi_gmem1_0_BVALID VALID 0 1 }  { m_axi_gmem1_0_BREADY READY 1 1 }  { m_axi_gmem1_0_BRESP RESP 0 2 }  { m_axi_gmem1_0_BID ID 0 1 }  { m_axi_gmem1_0_BUSER DATA 0 1 } } }
}
