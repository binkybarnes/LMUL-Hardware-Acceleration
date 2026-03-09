set moduleName qwen_linear_layer_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
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
set C_modelName {qwen_linear_layer.1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
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
	{ W int 64 regular  }
	{ gmem0 int 16 regular {axi_master 1}  }
	{ C int 64 regular  }
	{ M int 32 regular  }
	{ N int 32 regular  }
	{ K int 32 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
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
 	{ "Name" : "W", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 16, "direction" : "WRITEONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "A","offset": { "type": "dynamic","port_name": "A","bundle": "control"},"direction": "READONLY"},{"cName": "C","offset": { "type": "dynamic","port_name": "C","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "C", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "M", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "N", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "K", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 200
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ A_0_address0 sc_out sc_lv 11 signal 0 } 
	{ A_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ A_0_q0 sc_in sc_lv 16 signal 0 } 
	{ A_0_address1 sc_out sc_lv 11 signal 0 } 
	{ A_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ A_0_q1 sc_in sc_lv 16 signal 0 } 
	{ A_1_address0 sc_out sc_lv 11 signal 1 } 
	{ A_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ A_1_q0 sc_in sc_lv 16 signal 1 } 
	{ A_1_address1 sc_out sc_lv 11 signal 1 } 
	{ A_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ A_1_q1 sc_in sc_lv 16 signal 1 } 
	{ A_2_address0 sc_out sc_lv 11 signal 2 } 
	{ A_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ A_2_q0 sc_in sc_lv 16 signal 2 } 
	{ A_2_address1 sc_out sc_lv 11 signal 2 } 
	{ A_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ A_2_q1 sc_in sc_lv 16 signal 2 } 
	{ A_3_address0 sc_out sc_lv 11 signal 3 } 
	{ A_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ A_3_q0 sc_in sc_lv 16 signal 3 } 
	{ A_3_address1 sc_out sc_lv 11 signal 3 } 
	{ A_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ A_3_q1 sc_in sc_lv 16 signal 3 } 
	{ A_4_address0 sc_out sc_lv 11 signal 4 } 
	{ A_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ A_4_q0 sc_in sc_lv 16 signal 4 } 
	{ A_4_address1 sc_out sc_lv 11 signal 4 } 
	{ A_4_ce1 sc_out sc_logic 1 signal 4 } 
	{ A_4_q1 sc_in sc_lv 16 signal 4 } 
	{ A_5_address0 sc_out sc_lv 11 signal 5 } 
	{ A_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ A_5_q0 sc_in sc_lv 16 signal 5 } 
	{ A_5_address1 sc_out sc_lv 11 signal 5 } 
	{ A_5_ce1 sc_out sc_logic 1 signal 5 } 
	{ A_5_q1 sc_in sc_lv 16 signal 5 } 
	{ A_6_address0 sc_out sc_lv 11 signal 6 } 
	{ A_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ A_6_q0 sc_in sc_lv 16 signal 6 } 
	{ A_6_address1 sc_out sc_lv 11 signal 6 } 
	{ A_6_ce1 sc_out sc_logic 1 signal 6 } 
	{ A_6_q1 sc_in sc_lv 16 signal 6 } 
	{ A_7_address0 sc_out sc_lv 11 signal 7 } 
	{ A_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ A_7_q0 sc_in sc_lv 16 signal 7 } 
	{ A_7_address1 sc_out sc_lv 11 signal 7 } 
	{ A_7_ce1 sc_out sc_logic 1 signal 7 } 
	{ A_7_q1 sc_in sc_lv 16 signal 7 } 
	{ A_8_address0 sc_out sc_lv 11 signal 8 } 
	{ A_8_ce0 sc_out sc_logic 1 signal 8 } 
	{ A_8_q0 sc_in sc_lv 16 signal 8 } 
	{ A_8_address1 sc_out sc_lv 11 signal 8 } 
	{ A_8_ce1 sc_out sc_logic 1 signal 8 } 
	{ A_8_q1 sc_in sc_lv 16 signal 8 } 
	{ A_9_address0 sc_out sc_lv 11 signal 9 } 
	{ A_9_ce0 sc_out sc_logic 1 signal 9 } 
	{ A_9_q0 sc_in sc_lv 16 signal 9 } 
	{ A_9_address1 sc_out sc_lv 11 signal 9 } 
	{ A_9_ce1 sc_out sc_logic 1 signal 9 } 
	{ A_9_q1 sc_in sc_lv 16 signal 9 } 
	{ A_10_address0 sc_out sc_lv 11 signal 10 } 
	{ A_10_ce0 sc_out sc_logic 1 signal 10 } 
	{ A_10_q0 sc_in sc_lv 16 signal 10 } 
	{ A_10_address1 sc_out sc_lv 11 signal 10 } 
	{ A_10_ce1 sc_out sc_logic 1 signal 10 } 
	{ A_10_q1 sc_in sc_lv 16 signal 10 } 
	{ A_11_address0 sc_out sc_lv 11 signal 11 } 
	{ A_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ A_11_q0 sc_in sc_lv 16 signal 11 } 
	{ A_11_address1 sc_out sc_lv 11 signal 11 } 
	{ A_11_ce1 sc_out sc_logic 1 signal 11 } 
	{ A_11_q1 sc_in sc_lv 16 signal 11 } 
	{ A_12_address0 sc_out sc_lv 11 signal 12 } 
	{ A_12_ce0 sc_out sc_logic 1 signal 12 } 
	{ A_12_q0 sc_in sc_lv 16 signal 12 } 
	{ A_12_address1 sc_out sc_lv 11 signal 12 } 
	{ A_12_ce1 sc_out sc_logic 1 signal 12 } 
	{ A_12_q1 sc_in sc_lv 16 signal 12 } 
	{ A_13_address0 sc_out sc_lv 11 signal 13 } 
	{ A_13_ce0 sc_out sc_logic 1 signal 13 } 
	{ A_13_q0 sc_in sc_lv 16 signal 13 } 
	{ A_13_address1 sc_out sc_lv 11 signal 13 } 
	{ A_13_ce1 sc_out sc_logic 1 signal 13 } 
	{ A_13_q1 sc_in sc_lv 16 signal 13 } 
	{ A_14_address0 sc_out sc_lv 11 signal 14 } 
	{ A_14_ce0 sc_out sc_logic 1 signal 14 } 
	{ A_14_q0 sc_in sc_lv 16 signal 14 } 
	{ A_14_address1 sc_out sc_lv 11 signal 14 } 
	{ A_14_ce1 sc_out sc_logic 1 signal 14 } 
	{ A_14_q1 sc_in sc_lv 16 signal 14 } 
	{ A_15_address0 sc_out sc_lv 11 signal 15 } 
	{ A_15_ce0 sc_out sc_logic 1 signal 15 } 
	{ A_15_q0 sc_in sc_lv 16 signal 15 } 
	{ A_15_address1 sc_out sc_lv 11 signal 15 } 
	{ A_15_ce1 sc_out sc_logic 1 signal 15 } 
	{ A_15_q1 sc_in sc_lv 16 signal 15 } 
	{ m_axi_gmem2_0_AWVALID sc_out sc_logic 1 signal 16 } 
	{ m_axi_gmem2_0_AWREADY sc_in sc_logic 1 signal 16 } 
	{ m_axi_gmem2_0_AWADDR sc_out sc_lv 64 signal 16 } 
	{ m_axi_gmem2_0_AWID sc_out sc_lv 1 signal 16 } 
	{ m_axi_gmem2_0_AWLEN sc_out sc_lv 32 signal 16 } 
	{ m_axi_gmem2_0_AWSIZE sc_out sc_lv 3 signal 16 } 
	{ m_axi_gmem2_0_AWBURST sc_out sc_lv 2 signal 16 } 
	{ m_axi_gmem2_0_AWLOCK sc_out sc_lv 2 signal 16 } 
	{ m_axi_gmem2_0_AWCACHE sc_out sc_lv 4 signal 16 } 
	{ m_axi_gmem2_0_AWPROT sc_out sc_lv 3 signal 16 } 
	{ m_axi_gmem2_0_AWQOS sc_out sc_lv 4 signal 16 } 
	{ m_axi_gmem2_0_AWREGION sc_out sc_lv 4 signal 16 } 
	{ m_axi_gmem2_0_AWUSER sc_out sc_lv 1 signal 16 } 
	{ m_axi_gmem2_0_WVALID sc_out sc_logic 1 signal 16 } 
	{ m_axi_gmem2_0_WREADY sc_in sc_logic 1 signal 16 } 
	{ m_axi_gmem2_0_WDATA sc_out sc_lv 16 signal 16 } 
	{ m_axi_gmem2_0_WSTRB sc_out sc_lv 2 signal 16 } 
	{ m_axi_gmem2_0_WLAST sc_out sc_logic 1 signal 16 } 
	{ m_axi_gmem2_0_WID sc_out sc_lv 1 signal 16 } 
	{ m_axi_gmem2_0_WUSER sc_out sc_lv 1 signal 16 } 
	{ m_axi_gmem2_0_ARVALID sc_out sc_logic 1 signal 16 } 
	{ m_axi_gmem2_0_ARREADY sc_in sc_logic 1 signal 16 } 
	{ m_axi_gmem2_0_ARADDR sc_out sc_lv 64 signal 16 } 
	{ m_axi_gmem2_0_ARID sc_out sc_lv 1 signal 16 } 
	{ m_axi_gmem2_0_ARLEN sc_out sc_lv 32 signal 16 } 
	{ m_axi_gmem2_0_ARSIZE sc_out sc_lv 3 signal 16 } 
	{ m_axi_gmem2_0_ARBURST sc_out sc_lv 2 signal 16 } 
	{ m_axi_gmem2_0_ARLOCK sc_out sc_lv 2 signal 16 } 
	{ m_axi_gmem2_0_ARCACHE sc_out sc_lv 4 signal 16 } 
	{ m_axi_gmem2_0_ARPROT sc_out sc_lv 3 signal 16 } 
	{ m_axi_gmem2_0_ARQOS sc_out sc_lv 4 signal 16 } 
	{ m_axi_gmem2_0_ARREGION sc_out sc_lv 4 signal 16 } 
	{ m_axi_gmem2_0_ARUSER sc_out sc_lv 1 signal 16 } 
	{ m_axi_gmem2_0_RVALID sc_in sc_logic 1 signal 16 } 
	{ m_axi_gmem2_0_RREADY sc_out sc_logic 1 signal 16 } 
	{ m_axi_gmem2_0_RDATA sc_in sc_lv 16 signal 16 } 
	{ m_axi_gmem2_0_RLAST sc_in sc_logic 1 signal 16 } 
	{ m_axi_gmem2_0_RID sc_in sc_lv 1 signal 16 } 
	{ m_axi_gmem2_0_RFIFONUM sc_in sc_lv 10 signal 16 } 
	{ m_axi_gmem2_0_RUSER sc_in sc_lv 1 signal 16 } 
	{ m_axi_gmem2_0_RRESP sc_in sc_lv 2 signal 16 } 
	{ m_axi_gmem2_0_BVALID sc_in sc_logic 1 signal 16 } 
	{ m_axi_gmem2_0_BREADY sc_out sc_logic 1 signal 16 } 
	{ m_axi_gmem2_0_BRESP sc_in sc_lv 2 signal 16 } 
	{ m_axi_gmem2_0_BID sc_in sc_lv 1 signal 16 } 
	{ m_axi_gmem2_0_BUSER sc_in sc_lv 1 signal 16 } 
	{ W sc_in sc_lv 64 signal 17 } 
	{ m_axi_gmem0_0_AWVALID sc_out sc_logic 1 signal 18 } 
	{ m_axi_gmem0_0_AWREADY sc_in sc_logic 1 signal 18 } 
	{ m_axi_gmem0_0_AWADDR sc_out sc_lv 64 signal 18 } 
	{ m_axi_gmem0_0_AWID sc_out sc_lv 1 signal 18 } 
	{ m_axi_gmem0_0_AWLEN sc_out sc_lv 32 signal 18 } 
	{ m_axi_gmem0_0_AWSIZE sc_out sc_lv 3 signal 18 } 
	{ m_axi_gmem0_0_AWBURST sc_out sc_lv 2 signal 18 } 
	{ m_axi_gmem0_0_AWLOCK sc_out sc_lv 2 signal 18 } 
	{ m_axi_gmem0_0_AWCACHE sc_out sc_lv 4 signal 18 } 
	{ m_axi_gmem0_0_AWPROT sc_out sc_lv 3 signal 18 } 
	{ m_axi_gmem0_0_AWQOS sc_out sc_lv 4 signal 18 } 
	{ m_axi_gmem0_0_AWREGION sc_out sc_lv 4 signal 18 } 
	{ m_axi_gmem0_0_AWUSER sc_out sc_lv 1 signal 18 } 
	{ m_axi_gmem0_0_WVALID sc_out sc_logic 1 signal 18 } 
	{ m_axi_gmem0_0_WREADY sc_in sc_logic 1 signal 18 } 
	{ m_axi_gmem0_0_WDATA sc_out sc_lv 16 signal 18 } 
	{ m_axi_gmem0_0_WSTRB sc_out sc_lv 2 signal 18 } 
	{ m_axi_gmem0_0_WLAST sc_out sc_logic 1 signal 18 } 
	{ m_axi_gmem0_0_WID sc_out sc_lv 1 signal 18 } 
	{ m_axi_gmem0_0_WUSER sc_out sc_lv 1 signal 18 } 
	{ m_axi_gmem0_0_ARVALID sc_out sc_logic 1 signal 18 } 
	{ m_axi_gmem0_0_ARREADY sc_in sc_logic 1 signal 18 } 
	{ m_axi_gmem0_0_ARADDR sc_out sc_lv 64 signal 18 } 
	{ m_axi_gmem0_0_ARID sc_out sc_lv 1 signal 18 } 
	{ m_axi_gmem0_0_ARLEN sc_out sc_lv 32 signal 18 } 
	{ m_axi_gmem0_0_ARSIZE sc_out sc_lv 3 signal 18 } 
	{ m_axi_gmem0_0_ARBURST sc_out sc_lv 2 signal 18 } 
	{ m_axi_gmem0_0_ARLOCK sc_out sc_lv 2 signal 18 } 
	{ m_axi_gmem0_0_ARCACHE sc_out sc_lv 4 signal 18 } 
	{ m_axi_gmem0_0_ARPROT sc_out sc_lv 3 signal 18 } 
	{ m_axi_gmem0_0_ARQOS sc_out sc_lv 4 signal 18 } 
	{ m_axi_gmem0_0_ARREGION sc_out sc_lv 4 signal 18 } 
	{ m_axi_gmem0_0_ARUSER sc_out sc_lv 1 signal 18 } 
	{ m_axi_gmem0_0_RVALID sc_in sc_logic 1 signal 18 } 
	{ m_axi_gmem0_0_RREADY sc_out sc_logic 1 signal 18 } 
	{ m_axi_gmem0_0_RDATA sc_in sc_lv 16 signal 18 } 
	{ m_axi_gmem0_0_RLAST sc_in sc_logic 1 signal 18 } 
	{ m_axi_gmem0_0_RID sc_in sc_lv 1 signal 18 } 
	{ m_axi_gmem0_0_RFIFONUM sc_in sc_lv 10 signal 18 } 
	{ m_axi_gmem0_0_RUSER sc_in sc_lv 1 signal 18 } 
	{ m_axi_gmem0_0_RRESP sc_in sc_lv 2 signal 18 } 
	{ m_axi_gmem0_0_BVALID sc_in sc_logic 1 signal 18 } 
	{ m_axi_gmem0_0_BREADY sc_out sc_logic 1 signal 18 } 
	{ m_axi_gmem0_0_BRESP sc_in sc_lv 2 signal 18 } 
	{ m_axi_gmem0_0_BID sc_in sc_lv 1 signal 18 } 
	{ m_axi_gmem0_0_BUSER sc_in sc_lv 1 signal 18 } 
	{ C sc_in sc_lv 64 signal 19 } 
	{ M sc_in sc_lv 32 signal 20 } 
	{ N sc_in sc_lv 32 signal 21 } 
	{ K sc_in sc_lv 32 signal 22 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
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
 	{ "name": "W", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W", "role": "default" }} , 
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
 	{ "name": "C", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "C", "role": "default" }} , 
 	{ "name": "M", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M", "role": "default" }} , 
 	{ "name": "N", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "N", "role": "default" }} , 
 	{ "name": "K", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	qwen_linear_layer_1 {
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
		W {Type I LastRead 0 FirstWrite -1}
		gmem0 {Type O LastRead 35 FirstWrite 3}
		C {Type I LastRead 0 FirstWrite -1}
		M {Type I LastRead 0 FirstWrite -1}
		N {Type I LastRead 0 FirstWrite -1}
		K {Type I LastRead 0 FirstWrite -1}}
	qwen_linear_layer_1_Pipeline_VITIS_LOOP_250_3 {
		bufC_63 {Type O LastRead -1 FirstWrite 0}
		bufC_62 {Type O LastRead -1 FirstWrite 0}
		bufC_61 {Type O LastRead -1 FirstWrite 0}
		bufC_60 {Type O LastRead -1 FirstWrite 0}
		bufC_59 {Type O LastRead -1 FirstWrite 0}
		bufC_58 {Type O LastRead -1 FirstWrite 0}
		bufC_57 {Type O LastRead -1 FirstWrite 0}
		bufC_56 {Type O LastRead -1 FirstWrite 0}
		bufC_55 {Type O LastRead -1 FirstWrite 0}
		bufC_54 {Type O LastRead -1 FirstWrite 0}
		bufC_53 {Type O LastRead -1 FirstWrite 0}
		bufC_52 {Type O LastRead -1 FirstWrite 0}
		bufC_51 {Type O LastRead -1 FirstWrite 0}
		bufC_50 {Type O LastRead -1 FirstWrite 0}
		bufC_49 {Type O LastRead -1 FirstWrite 0}
		bufC_48 {Type O LastRead -1 FirstWrite 0}
		bufC_47 {Type O LastRead -1 FirstWrite 0}
		bufC_46 {Type O LastRead -1 FirstWrite 0}
		bufC_45 {Type O LastRead -1 FirstWrite 0}
		bufC_44 {Type O LastRead -1 FirstWrite 0}
		bufC_43 {Type O LastRead -1 FirstWrite 0}
		bufC_42 {Type O LastRead -1 FirstWrite 0}
		bufC_41 {Type O LastRead -1 FirstWrite 0}
		bufC_40 {Type O LastRead -1 FirstWrite 0}
		bufC_39 {Type O LastRead -1 FirstWrite 0}
		bufC_38 {Type O LastRead -1 FirstWrite 0}
		bufC_37 {Type O LastRead -1 FirstWrite 0}
		bufC_36 {Type O LastRead -1 FirstWrite 0}
		bufC_35 {Type O LastRead -1 FirstWrite 0}
		bufC_34 {Type O LastRead -1 FirstWrite 0}
		bufC_33 {Type O LastRead -1 FirstWrite 0}
		bufC_32 {Type O LastRead -1 FirstWrite 0}
		bufC_31 {Type O LastRead -1 FirstWrite 0}
		bufC_30 {Type O LastRead -1 FirstWrite 0}
		bufC_29 {Type O LastRead -1 FirstWrite 0}
		bufC_28 {Type O LastRead -1 FirstWrite 0}
		bufC_27 {Type O LastRead -1 FirstWrite 0}
		bufC_26 {Type O LastRead -1 FirstWrite 0}
		bufC_25 {Type O LastRead -1 FirstWrite 0}
		bufC_24 {Type O LastRead -1 FirstWrite 0}
		bufC_23 {Type O LastRead -1 FirstWrite 0}
		bufC_22 {Type O LastRead -1 FirstWrite 0}
		bufC_21 {Type O LastRead -1 FirstWrite 0}
		bufC_20 {Type O LastRead -1 FirstWrite 0}
		bufC_19 {Type O LastRead -1 FirstWrite 0}
		bufC_18 {Type O LastRead -1 FirstWrite 0}
		bufC_17 {Type O LastRead -1 FirstWrite 0}
		bufC_16 {Type O LastRead -1 FirstWrite 0}
		bufC_15 {Type O LastRead -1 FirstWrite 0}
		bufC_14 {Type O LastRead -1 FirstWrite 0}
		bufC_13 {Type O LastRead -1 FirstWrite 0}
		bufC_12 {Type O LastRead -1 FirstWrite 0}
		bufC_11 {Type O LastRead -1 FirstWrite 0}
		bufC_10 {Type O LastRead -1 FirstWrite 0}
		bufC_9 {Type O LastRead -1 FirstWrite 0}
		bufC_8 {Type O LastRead -1 FirstWrite 0}
		bufC_7 {Type O LastRead -1 FirstWrite 0}
		bufC_6 {Type O LastRead -1 FirstWrite 0}
		bufC_5 {Type O LastRead -1 FirstWrite 0}
		bufC_4 {Type O LastRead -1 FirstWrite 0}
		bufC_3 {Type O LastRead -1 FirstWrite 0}
		bufC_2 {Type O LastRead -1 FirstWrite 0}
		bufC_1 {Type O LastRead -1 FirstWrite 0}
		bufC {Type O LastRead -1 FirstWrite 0}}
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
		or_ln262_29 {Type I LastRead 0 FirstWrite -1}}
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
		gmem0 {Type O LastRead 35 FirstWrite 3}}
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
	{"Name" : "Latency", "Min" : "1", "Max" : "52225659"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "52225659"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
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
	W { ap_none {  { W in_data 0 64 } } }
	 { m_axi {  { m_axi_gmem0_0_AWVALID VALID 1 1 }  { m_axi_gmem0_0_AWREADY READY 0 1 }  { m_axi_gmem0_0_AWADDR ADDR 1 64 }  { m_axi_gmem0_0_AWID ID 1 1 }  { m_axi_gmem0_0_AWLEN SIZE 1 32 }  { m_axi_gmem0_0_AWSIZE BURST 1 3 }  { m_axi_gmem0_0_AWBURST LOCK 1 2 }  { m_axi_gmem0_0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_0_AWCACHE PROT 1 4 }  { m_axi_gmem0_0_AWPROT QOS 1 3 }  { m_axi_gmem0_0_AWQOS REGION 1 4 }  { m_axi_gmem0_0_AWREGION USER 1 4 }  { m_axi_gmem0_0_AWUSER DATA 1 1 }  { m_axi_gmem0_0_WVALID VALID 1 1 }  { m_axi_gmem0_0_WREADY READY 0 1 }  { m_axi_gmem0_0_WDATA FIFONUM 1 16 }  { m_axi_gmem0_0_WSTRB STRB 1 2 }  { m_axi_gmem0_0_WLAST LAST 1 1 }  { m_axi_gmem0_0_WID ID 1 1 }  { m_axi_gmem0_0_WUSER DATA 1 1 }  { m_axi_gmem0_0_ARVALID VALID 1 1 }  { m_axi_gmem0_0_ARREADY READY 0 1 }  { m_axi_gmem0_0_ARADDR ADDR 1 64 }  { m_axi_gmem0_0_ARID ID 1 1 }  { m_axi_gmem0_0_ARLEN SIZE 1 32 }  { m_axi_gmem0_0_ARSIZE BURST 1 3 }  { m_axi_gmem0_0_ARBURST LOCK 1 2 }  { m_axi_gmem0_0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_0_ARCACHE PROT 1 4 }  { m_axi_gmem0_0_ARPROT QOS 1 3 }  { m_axi_gmem0_0_ARQOS REGION 1 4 }  { m_axi_gmem0_0_ARREGION USER 1 4 }  { m_axi_gmem0_0_ARUSER DATA 1 1 }  { m_axi_gmem0_0_RVALID VALID 0 1 }  { m_axi_gmem0_0_RREADY READY 1 1 }  { m_axi_gmem0_0_RDATA FIFONUM 0 16 }  { m_axi_gmem0_0_RLAST LAST 0 1 }  { m_axi_gmem0_0_RID ID 0 1 }  { m_axi_gmem0_0_RFIFONUM LEN 0 10 }  { m_axi_gmem0_0_RUSER DATA 0 1 }  { m_axi_gmem0_0_RRESP RESP 0 2 }  { m_axi_gmem0_0_BVALID VALID 0 1 }  { m_axi_gmem0_0_BREADY READY 1 1 }  { m_axi_gmem0_0_BRESP RESP 0 2 }  { m_axi_gmem0_0_BID ID 0 1 }  { m_axi_gmem0_0_BUSER DATA 0 1 } } }
	C { ap_none {  { C in_data 0 64 } } }
	M { ap_none {  { M in_data 0 32 } } }
	N { ap_none {  { N in_data 0 32 } } }
	K { ap_none {  { K in_data 0 32 } } }
}
