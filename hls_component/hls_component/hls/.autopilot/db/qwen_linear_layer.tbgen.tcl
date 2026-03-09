set moduleName qwen_linear_layer
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
set C_modelName {qwen_linear_layer}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict C_0 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict C_1 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict C_2 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict C_3 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict C_4 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict C_5 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict C_6 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict C_7 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict C_8 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict C_9 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict C_10 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict C_11 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict C_12 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict C_13 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict C_14 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict C_15 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ gmem0 int 16 regular {axi_master 0}  }
	{ A int 64 regular  }
	{ gmem1 int 16 regular {axi_master 0}  }
	{ W int 64 regular  }
	{ C_0 int 16 regular {array 1792 { 0 0 } 0 1 }  }
	{ C_1 int 16 regular {array 1792 { 0 0 } 0 1 }  }
	{ C_2 int 16 regular {array 1792 { 0 0 } 0 1 }  }
	{ C_3 int 16 regular {array 1792 { 0 0 } 0 1 }  }
	{ C_4 int 16 regular {array 1792 { 0 0 } 0 1 }  }
	{ C_5 int 16 regular {array 1792 { 0 0 } 0 1 }  }
	{ C_6 int 16 regular {array 1792 { 0 0 } 0 1 }  }
	{ C_7 int 16 regular {array 1792 { 0 0 } 0 1 }  }
	{ C_8 int 16 regular {array 1792 { 0 0 } 0 1 }  }
	{ C_9 int 16 regular {array 1792 { 0 0 } 0 1 }  }
	{ C_10 int 16 regular {array 1792 { 0 0 } 0 1 }  }
	{ C_11 int 16 regular {array 1792 { 0 0 } 0 1 }  }
	{ C_12 int 16 regular {array 1792 { 0 0 } 0 1 }  }
	{ C_13 int 16 regular {array 1792 { 0 0 } 0 1 }  }
	{ C_14 int 16 regular {array 1792 { 0 0 } 0 1 }  }
	{ C_15 int 16 regular {array 1792 { 0 0 } 0 1 }  }
	{ M int 32 regular  }
	{ N int 32 regular  }
	{ K int 32 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "A","offset": { "type": "dynamic","port_name": "A","bundle": "control"},"direction": "READONLY"},{"cName": "C","offset": { "type": "dynamic","port_name": "C","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "A", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "W1","offset": { "type": "dynamic","port_name": "W1","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "W", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "C_0", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_2", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_3", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_4", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_5", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_6", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_7", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_8", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_9", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_10", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_11", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_12", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_13", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_14", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_15", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "M", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "N", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "K", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 232
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem0_0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_WDATA sc_out sc_lv 16 signal 0 } 
	{ m_axi_gmem0_0_WSTRB sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_RDATA sc_in sc_lv 16 signal 0 } 
	{ m_axi_gmem0_0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_RFIFONUM sc_in sc_lv 10 signal 0 } 
	{ m_axi_gmem0_0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_BUSER sc_in sc_lv 1 signal 0 } 
	{ A sc_in sc_lv 64 signal 1 } 
	{ m_axi_gmem1_0_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem1_0_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem1_0_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem1_0_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem1_0_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem1_0_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem1_0_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem1_0_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem1_0_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem1_0_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem1_0_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem1_0_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem1_0_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem1_0_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem1_0_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem1_0_WDATA sc_out sc_lv 16 signal 2 } 
	{ m_axi_gmem1_0_WSTRB sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem1_0_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem1_0_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem1_0_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem1_0_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem1_0_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem1_0_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem1_0_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem1_0_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem1_0_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem1_0_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem1_0_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem1_0_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem1_0_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem1_0_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem1_0_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem1_0_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem1_0_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem1_0_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem1_0_RDATA sc_in sc_lv 16 signal 2 } 
	{ m_axi_gmem1_0_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem1_0_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem1_0_RFIFONUM sc_in sc_lv 10 signal 2 } 
	{ m_axi_gmem1_0_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem1_0_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem1_0_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem1_0_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem1_0_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem1_0_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem1_0_BUSER sc_in sc_lv 1 signal 2 } 
	{ W sc_in sc_lv 64 signal 3 } 
	{ C_0_address0 sc_out sc_lv 11 signal 4 } 
	{ C_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ C_0_we0 sc_out sc_logic 1 signal 4 } 
	{ C_0_d0 sc_out sc_lv 16 signal 4 } 
	{ C_0_address1 sc_out sc_lv 11 signal 4 } 
	{ C_0_ce1 sc_out sc_logic 1 signal 4 } 
	{ C_0_we1 sc_out sc_logic 1 signal 4 } 
	{ C_0_d1 sc_out sc_lv 16 signal 4 } 
	{ C_1_address0 sc_out sc_lv 11 signal 5 } 
	{ C_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ C_1_we0 sc_out sc_logic 1 signal 5 } 
	{ C_1_d0 sc_out sc_lv 16 signal 5 } 
	{ C_1_address1 sc_out sc_lv 11 signal 5 } 
	{ C_1_ce1 sc_out sc_logic 1 signal 5 } 
	{ C_1_we1 sc_out sc_logic 1 signal 5 } 
	{ C_1_d1 sc_out sc_lv 16 signal 5 } 
	{ C_2_address0 sc_out sc_lv 11 signal 6 } 
	{ C_2_ce0 sc_out sc_logic 1 signal 6 } 
	{ C_2_we0 sc_out sc_logic 1 signal 6 } 
	{ C_2_d0 sc_out sc_lv 16 signal 6 } 
	{ C_2_address1 sc_out sc_lv 11 signal 6 } 
	{ C_2_ce1 sc_out sc_logic 1 signal 6 } 
	{ C_2_we1 sc_out sc_logic 1 signal 6 } 
	{ C_2_d1 sc_out sc_lv 16 signal 6 } 
	{ C_3_address0 sc_out sc_lv 11 signal 7 } 
	{ C_3_ce0 sc_out sc_logic 1 signal 7 } 
	{ C_3_we0 sc_out sc_logic 1 signal 7 } 
	{ C_3_d0 sc_out sc_lv 16 signal 7 } 
	{ C_3_address1 sc_out sc_lv 11 signal 7 } 
	{ C_3_ce1 sc_out sc_logic 1 signal 7 } 
	{ C_3_we1 sc_out sc_logic 1 signal 7 } 
	{ C_3_d1 sc_out sc_lv 16 signal 7 } 
	{ C_4_address0 sc_out sc_lv 11 signal 8 } 
	{ C_4_ce0 sc_out sc_logic 1 signal 8 } 
	{ C_4_we0 sc_out sc_logic 1 signal 8 } 
	{ C_4_d0 sc_out sc_lv 16 signal 8 } 
	{ C_4_address1 sc_out sc_lv 11 signal 8 } 
	{ C_4_ce1 sc_out sc_logic 1 signal 8 } 
	{ C_4_we1 sc_out sc_logic 1 signal 8 } 
	{ C_4_d1 sc_out sc_lv 16 signal 8 } 
	{ C_5_address0 sc_out sc_lv 11 signal 9 } 
	{ C_5_ce0 sc_out sc_logic 1 signal 9 } 
	{ C_5_we0 sc_out sc_logic 1 signal 9 } 
	{ C_5_d0 sc_out sc_lv 16 signal 9 } 
	{ C_5_address1 sc_out sc_lv 11 signal 9 } 
	{ C_5_ce1 sc_out sc_logic 1 signal 9 } 
	{ C_5_we1 sc_out sc_logic 1 signal 9 } 
	{ C_5_d1 sc_out sc_lv 16 signal 9 } 
	{ C_6_address0 sc_out sc_lv 11 signal 10 } 
	{ C_6_ce0 sc_out sc_logic 1 signal 10 } 
	{ C_6_we0 sc_out sc_logic 1 signal 10 } 
	{ C_6_d0 sc_out sc_lv 16 signal 10 } 
	{ C_6_address1 sc_out sc_lv 11 signal 10 } 
	{ C_6_ce1 sc_out sc_logic 1 signal 10 } 
	{ C_6_we1 sc_out sc_logic 1 signal 10 } 
	{ C_6_d1 sc_out sc_lv 16 signal 10 } 
	{ C_7_address0 sc_out sc_lv 11 signal 11 } 
	{ C_7_ce0 sc_out sc_logic 1 signal 11 } 
	{ C_7_we0 sc_out sc_logic 1 signal 11 } 
	{ C_7_d0 sc_out sc_lv 16 signal 11 } 
	{ C_7_address1 sc_out sc_lv 11 signal 11 } 
	{ C_7_ce1 sc_out sc_logic 1 signal 11 } 
	{ C_7_we1 sc_out sc_logic 1 signal 11 } 
	{ C_7_d1 sc_out sc_lv 16 signal 11 } 
	{ C_8_address0 sc_out sc_lv 11 signal 12 } 
	{ C_8_ce0 sc_out sc_logic 1 signal 12 } 
	{ C_8_we0 sc_out sc_logic 1 signal 12 } 
	{ C_8_d0 sc_out sc_lv 16 signal 12 } 
	{ C_8_address1 sc_out sc_lv 11 signal 12 } 
	{ C_8_ce1 sc_out sc_logic 1 signal 12 } 
	{ C_8_we1 sc_out sc_logic 1 signal 12 } 
	{ C_8_d1 sc_out sc_lv 16 signal 12 } 
	{ C_9_address0 sc_out sc_lv 11 signal 13 } 
	{ C_9_ce0 sc_out sc_logic 1 signal 13 } 
	{ C_9_we0 sc_out sc_logic 1 signal 13 } 
	{ C_9_d0 sc_out sc_lv 16 signal 13 } 
	{ C_9_address1 sc_out sc_lv 11 signal 13 } 
	{ C_9_ce1 sc_out sc_logic 1 signal 13 } 
	{ C_9_we1 sc_out sc_logic 1 signal 13 } 
	{ C_9_d1 sc_out sc_lv 16 signal 13 } 
	{ C_10_address0 sc_out sc_lv 11 signal 14 } 
	{ C_10_ce0 sc_out sc_logic 1 signal 14 } 
	{ C_10_we0 sc_out sc_logic 1 signal 14 } 
	{ C_10_d0 sc_out sc_lv 16 signal 14 } 
	{ C_10_address1 sc_out sc_lv 11 signal 14 } 
	{ C_10_ce1 sc_out sc_logic 1 signal 14 } 
	{ C_10_we1 sc_out sc_logic 1 signal 14 } 
	{ C_10_d1 sc_out sc_lv 16 signal 14 } 
	{ C_11_address0 sc_out sc_lv 11 signal 15 } 
	{ C_11_ce0 sc_out sc_logic 1 signal 15 } 
	{ C_11_we0 sc_out sc_logic 1 signal 15 } 
	{ C_11_d0 sc_out sc_lv 16 signal 15 } 
	{ C_11_address1 sc_out sc_lv 11 signal 15 } 
	{ C_11_ce1 sc_out sc_logic 1 signal 15 } 
	{ C_11_we1 sc_out sc_logic 1 signal 15 } 
	{ C_11_d1 sc_out sc_lv 16 signal 15 } 
	{ C_12_address0 sc_out sc_lv 11 signal 16 } 
	{ C_12_ce0 sc_out sc_logic 1 signal 16 } 
	{ C_12_we0 sc_out sc_logic 1 signal 16 } 
	{ C_12_d0 sc_out sc_lv 16 signal 16 } 
	{ C_12_address1 sc_out sc_lv 11 signal 16 } 
	{ C_12_ce1 sc_out sc_logic 1 signal 16 } 
	{ C_12_we1 sc_out sc_logic 1 signal 16 } 
	{ C_12_d1 sc_out sc_lv 16 signal 16 } 
	{ C_13_address0 sc_out sc_lv 11 signal 17 } 
	{ C_13_ce0 sc_out sc_logic 1 signal 17 } 
	{ C_13_we0 sc_out sc_logic 1 signal 17 } 
	{ C_13_d0 sc_out sc_lv 16 signal 17 } 
	{ C_13_address1 sc_out sc_lv 11 signal 17 } 
	{ C_13_ce1 sc_out sc_logic 1 signal 17 } 
	{ C_13_we1 sc_out sc_logic 1 signal 17 } 
	{ C_13_d1 sc_out sc_lv 16 signal 17 } 
	{ C_14_address0 sc_out sc_lv 11 signal 18 } 
	{ C_14_ce0 sc_out sc_logic 1 signal 18 } 
	{ C_14_we0 sc_out sc_logic 1 signal 18 } 
	{ C_14_d0 sc_out sc_lv 16 signal 18 } 
	{ C_14_address1 sc_out sc_lv 11 signal 18 } 
	{ C_14_ce1 sc_out sc_logic 1 signal 18 } 
	{ C_14_we1 sc_out sc_logic 1 signal 18 } 
	{ C_14_d1 sc_out sc_lv 16 signal 18 } 
	{ C_15_address0 sc_out sc_lv 11 signal 19 } 
	{ C_15_ce0 sc_out sc_logic 1 signal 19 } 
	{ C_15_we0 sc_out sc_logic 1 signal 19 } 
	{ C_15_d0 sc_out sc_lv 16 signal 19 } 
	{ C_15_address1 sc_out sc_lv 11 signal 19 } 
	{ C_15_ce1 sc_out sc_logic 1 signal 19 } 
	{ C_15_we1 sc_out sc_logic 1 signal 19 } 
	{ C_15_d1 sc_out sc_lv 16 signal 19 } 
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
 	{ "name": "A", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A", "role": "default" }} , 
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
 	{ "name": "W", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W", "role": "default" }} , 
 	{ "name": "C_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "C_0", "role": "address0" }} , 
 	{ "name": "C_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_0", "role": "ce0" }} , 
 	{ "name": "C_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_0", "role": "we0" }} , 
 	{ "name": "C_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_0", "role": "d0" }} , 
 	{ "name": "C_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "C_0", "role": "address1" }} , 
 	{ "name": "C_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_0", "role": "ce1" }} , 
 	{ "name": "C_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_0", "role": "we1" }} , 
 	{ "name": "C_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_0", "role": "d1" }} , 
 	{ "name": "C_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "C_1", "role": "address0" }} , 
 	{ "name": "C_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_1", "role": "ce0" }} , 
 	{ "name": "C_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_1", "role": "we0" }} , 
 	{ "name": "C_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_1", "role": "d0" }} , 
 	{ "name": "C_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "C_1", "role": "address1" }} , 
 	{ "name": "C_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_1", "role": "ce1" }} , 
 	{ "name": "C_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_1", "role": "we1" }} , 
 	{ "name": "C_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_1", "role": "d1" }} , 
 	{ "name": "C_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "C_2", "role": "address0" }} , 
 	{ "name": "C_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_2", "role": "ce0" }} , 
 	{ "name": "C_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_2", "role": "we0" }} , 
 	{ "name": "C_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_2", "role": "d0" }} , 
 	{ "name": "C_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "C_2", "role": "address1" }} , 
 	{ "name": "C_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_2", "role": "ce1" }} , 
 	{ "name": "C_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_2", "role": "we1" }} , 
 	{ "name": "C_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_2", "role": "d1" }} , 
 	{ "name": "C_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "C_3", "role": "address0" }} , 
 	{ "name": "C_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_3", "role": "ce0" }} , 
 	{ "name": "C_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_3", "role": "we0" }} , 
 	{ "name": "C_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_3", "role": "d0" }} , 
 	{ "name": "C_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "C_3", "role": "address1" }} , 
 	{ "name": "C_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_3", "role": "ce1" }} , 
 	{ "name": "C_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_3", "role": "we1" }} , 
 	{ "name": "C_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_3", "role": "d1" }} , 
 	{ "name": "C_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "C_4", "role": "address0" }} , 
 	{ "name": "C_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_4", "role": "ce0" }} , 
 	{ "name": "C_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_4", "role": "we0" }} , 
 	{ "name": "C_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_4", "role": "d0" }} , 
 	{ "name": "C_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "C_4", "role": "address1" }} , 
 	{ "name": "C_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_4", "role": "ce1" }} , 
 	{ "name": "C_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_4", "role": "we1" }} , 
 	{ "name": "C_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_4", "role": "d1" }} , 
 	{ "name": "C_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "C_5", "role": "address0" }} , 
 	{ "name": "C_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_5", "role": "ce0" }} , 
 	{ "name": "C_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_5", "role": "we0" }} , 
 	{ "name": "C_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_5", "role": "d0" }} , 
 	{ "name": "C_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "C_5", "role": "address1" }} , 
 	{ "name": "C_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_5", "role": "ce1" }} , 
 	{ "name": "C_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_5", "role": "we1" }} , 
 	{ "name": "C_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_5", "role": "d1" }} , 
 	{ "name": "C_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "C_6", "role": "address0" }} , 
 	{ "name": "C_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_6", "role": "ce0" }} , 
 	{ "name": "C_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_6", "role": "we0" }} , 
 	{ "name": "C_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_6", "role": "d0" }} , 
 	{ "name": "C_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "C_6", "role": "address1" }} , 
 	{ "name": "C_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_6", "role": "ce1" }} , 
 	{ "name": "C_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_6", "role": "we1" }} , 
 	{ "name": "C_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_6", "role": "d1" }} , 
 	{ "name": "C_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "C_7", "role": "address0" }} , 
 	{ "name": "C_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_7", "role": "ce0" }} , 
 	{ "name": "C_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_7", "role": "we0" }} , 
 	{ "name": "C_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_7", "role": "d0" }} , 
 	{ "name": "C_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "C_7", "role": "address1" }} , 
 	{ "name": "C_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_7", "role": "ce1" }} , 
 	{ "name": "C_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_7", "role": "we1" }} , 
 	{ "name": "C_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_7", "role": "d1" }} , 
 	{ "name": "C_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "C_8", "role": "address0" }} , 
 	{ "name": "C_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_8", "role": "ce0" }} , 
 	{ "name": "C_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_8", "role": "we0" }} , 
 	{ "name": "C_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_8", "role": "d0" }} , 
 	{ "name": "C_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "C_8", "role": "address1" }} , 
 	{ "name": "C_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_8", "role": "ce1" }} , 
 	{ "name": "C_8_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_8", "role": "we1" }} , 
 	{ "name": "C_8_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_8", "role": "d1" }} , 
 	{ "name": "C_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "C_9", "role": "address0" }} , 
 	{ "name": "C_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_9", "role": "ce0" }} , 
 	{ "name": "C_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_9", "role": "we0" }} , 
 	{ "name": "C_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_9", "role": "d0" }} , 
 	{ "name": "C_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "C_9", "role": "address1" }} , 
 	{ "name": "C_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_9", "role": "ce1" }} , 
 	{ "name": "C_9_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_9", "role": "we1" }} , 
 	{ "name": "C_9_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_9", "role": "d1" }} , 
 	{ "name": "C_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "C_10", "role": "address0" }} , 
 	{ "name": "C_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_10", "role": "ce0" }} , 
 	{ "name": "C_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_10", "role": "we0" }} , 
 	{ "name": "C_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_10", "role": "d0" }} , 
 	{ "name": "C_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "C_10", "role": "address1" }} , 
 	{ "name": "C_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_10", "role": "ce1" }} , 
 	{ "name": "C_10_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_10", "role": "we1" }} , 
 	{ "name": "C_10_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_10", "role": "d1" }} , 
 	{ "name": "C_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "C_11", "role": "address0" }} , 
 	{ "name": "C_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_11", "role": "ce0" }} , 
 	{ "name": "C_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_11", "role": "we0" }} , 
 	{ "name": "C_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_11", "role": "d0" }} , 
 	{ "name": "C_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "C_11", "role": "address1" }} , 
 	{ "name": "C_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_11", "role": "ce1" }} , 
 	{ "name": "C_11_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_11", "role": "we1" }} , 
 	{ "name": "C_11_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_11", "role": "d1" }} , 
 	{ "name": "C_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "C_12", "role": "address0" }} , 
 	{ "name": "C_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_12", "role": "ce0" }} , 
 	{ "name": "C_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_12", "role": "we0" }} , 
 	{ "name": "C_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_12", "role": "d0" }} , 
 	{ "name": "C_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "C_12", "role": "address1" }} , 
 	{ "name": "C_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_12", "role": "ce1" }} , 
 	{ "name": "C_12_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_12", "role": "we1" }} , 
 	{ "name": "C_12_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_12", "role": "d1" }} , 
 	{ "name": "C_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "C_13", "role": "address0" }} , 
 	{ "name": "C_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_13", "role": "ce0" }} , 
 	{ "name": "C_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_13", "role": "we0" }} , 
 	{ "name": "C_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_13", "role": "d0" }} , 
 	{ "name": "C_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "C_13", "role": "address1" }} , 
 	{ "name": "C_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_13", "role": "ce1" }} , 
 	{ "name": "C_13_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_13", "role": "we1" }} , 
 	{ "name": "C_13_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_13", "role": "d1" }} , 
 	{ "name": "C_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "C_14", "role": "address0" }} , 
 	{ "name": "C_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_14", "role": "ce0" }} , 
 	{ "name": "C_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_14", "role": "we0" }} , 
 	{ "name": "C_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_14", "role": "d0" }} , 
 	{ "name": "C_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "C_14", "role": "address1" }} , 
 	{ "name": "C_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_14", "role": "ce1" }} , 
 	{ "name": "C_14_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_14", "role": "we1" }} , 
 	{ "name": "C_14_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_14", "role": "d1" }} , 
 	{ "name": "C_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "C_15", "role": "address0" }} , 
 	{ "name": "C_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_15", "role": "ce0" }} , 
 	{ "name": "C_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_15", "role": "we0" }} , 
 	{ "name": "C_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_15", "role": "d0" }} , 
 	{ "name": "C_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "C_15", "role": "address1" }} , 
 	{ "name": "C_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_15", "role": "ce1" }} , 
 	{ "name": "C_15_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_15", "role": "we1" }} , 
 	{ "name": "C_15_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_15", "role": "d1" }} , 
 	{ "name": "M", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M", "role": "default" }} , 
 	{ "name": "N", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "N", "role": "default" }} , 
 	{ "name": "K", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	qwen_linear_layer {
		gmem0 {Type I LastRead 41 FirstWrite -1}
		A {Type I LastRead 0 FirstWrite -1}
		gmem1 {Type I LastRead 40 FirstWrite -1}
		W {Type I LastRead 0 FirstWrite -1}
		C_0 {Type O LastRead -1 FirstWrite 3}
		C_1 {Type O LastRead -1 FirstWrite 3}
		C_2 {Type O LastRead -1 FirstWrite 3}
		C_3 {Type O LastRead -1 FirstWrite 3}
		C_4 {Type O LastRead -1 FirstWrite 3}
		C_5 {Type O LastRead -1 FirstWrite 3}
		C_6 {Type O LastRead -1 FirstWrite 3}
		C_7 {Type O LastRead -1 FirstWrite 3}
		C_8 {Type O LastRead -1 FirstWrite 3}
		C_9 {Type O LastRead -1 FirstWrite 3}
		C_10 {Type O LastRead -1 FirstWrite 3}
		C_11 {Type O LastRead -1 FirstWrite 3}
		C_12 {Type O LastRead -1 FirstWrite 3}
		C_13 {Type O LastRead -1 FirstWrite 3}
		C_14 {Type O LastRead -1 FirstWrite 3}
		C_15 {Type O LastRead -1 FirstWrite 3}
		M {Type I LastRead 0 FirstWrite -1}
		N {Type I LastRead 0 FirstWrite -1}
		K {Type I LastRead 0 FirstWrite -1}}
	qwen_linear_layer_Pipeline_VITIS_LOOP_250_3 {
		bufC_126 {Type O LastRead -1 FirstWrite 0}
		bufC_125 {Type O LastRead -1 FirstWrite 0}
		bufC_124 {Type O LastRead -1 FirstWrite 0}
		bufC_123 {Type O LastRead -1 FirstWrite 0}
		bufC_122 {Type O LastRead -1 FirstWrite 0}
		bufC_121 {Type O LastRead -1 FirstWrite 0}
		bufC_120 {Type O LastRead -1 FirstWrite 0}
		bufC_119 {Type O LastRead -1 FirstWrite 0}
		bufC_118 {Type O LastRead -1 FirstWrite 0}
		bufC_117 {Type O LastRead -1 FirstWrite 0}
		bufC_116 {Type O LastRead -1 FirstWrite 0}
		bufC_115 {Type O LastRead -1 FirstWrite 0}
		bufC_114 {Type O LastRead -1 FirstWrite 0}
		bufC_113 {Type O LastRead -1 FirstWrite 0}
		bufC_112 {Type O LastRead -1 FirstWrite 0}
		bufC_111 {Type O LastRead -1 FirstWrite 0}
		bufC_110 {Type O LastRead -1 FirstWrite 0}
		bufC_109 {Type O LastRead -1 FirstWrite 0}
		bufC_108 {Type O LastRead -1 FirstWrite 0}
		bufC_107 {Type O LastRead -1 FirstWrite 0}
		bufC_106 {Type O LastRead -1 FirstWrite 0}
		bufC_105 {Type O LastRead -1 FirstWrite 0}
		bufC_104 {Type O LastRead -1 FirstWrite 0}
		bufC_103 {Type O LastRead -1 FirstWrite 0}
		bufC_102 {Type O LastRead -1 FirstWrite 0}
		bufC_101 {Type O LastRead -1 FirstWrite 0}
		bufC_100 {Type O LastRead -1 FirstWrite 0}
		bufC_99 {Type O LastRead -1 FirstWrite 0}
		bufC_98 {Type O LastRead -1 FirstWrite 0}
		bufC_97 {Type O LastRead -1 FirstWrite 0}
		bufC_96 {Type O LastRead -1 FirstWrite 0}
		bufC_95 {Type O LastRead -1 FirstWrite 0}
		bufC_94 {Type O LastRead -1 FirstWrite 0}
		bufC_93 {Type O LastRead -1 FirstWrite 0}
		bufC_92 {Type O LastRead -1 FirstWrite 0}
		bufC_91 {Type O LastRead -1 FirstWrite 0}
		bufC_90 {Type O LastRead -1 FirstWrite 0}
		bufC_89 {Type O LastRead -1 FirstWrite 0}
		bufC_88 {Type O LastRead -1 FirstWrite 0}
		bufC_87 {Type O LastRead -1 FirstWrite 0}
		bufC_86 {Type O LastRead -1 FirstWrite 0}
		bufC_85 {Type O LastRead -1 FirstWrite 0}
		bufC_84 {Type O LastRead -1 FirstWrite 0}
		bufC_83 {Type O LastRead -1 FirstWrite 0}
		bufC_82 {Type O LastRead -1 FirstWrite 0}
		bufC_81 {Type O LastRead -1 FirstWrite 0}
		bufC_80 {Type O LastRead -1 FirstWrite 0}
		bufC_79 {Type O LastRead -1 FirstWrite 0}
		bufC_78 {Type O LastRead -1 FirstWrite 0}
		bufC_77 {Type O LastRead -1 FirstWrite 0}
		bufC_76 {Type O LastRead -1 FirstWrite 0}
		bufC_75 {Type O LastRead -1 FirstWrite 0}
		bufC_74 {Type O LastRead -1 FirstWrite 0}
		bufC_73 {Type O LastRead -1 FirstWrite 0}
		bufC_72 {Type O LastRead -1 FirstWrite 0}
		bufC_71 {Type O LastRead -1 FirstWrite 0}
		bufC_70 {Type O LastRead -1 FirstWrite 0}
		bufC_69 {Type O LastRead -1 FirstWrite 0}
		bufC_68 {Type O LastRead -1 FirstWrite 0}
		bufC_67 {Type O LastRead -1 FirstWrite 0}
		bufC_66 {Type O LastRead -1 FirstWrite 0}
		bufC_65 {Type O LastRead -1 FirstWrite 0}
		bufC_64 {Type O LastRead -1 FirstWrite 0}
		bufC {Type O LastRead -1 FirstWrite 0}}
	qwen_linear_layer_Pipeline_VITIS_LOOP_291_11 {
		bufC_94 {Type I LastRead 0 FirstWrite -1}
		bufC_126 {Type I LastRead 0 FirstWrite -1}
		or_ln295_29 {Type I LastRead 0 FirstWrite -1}
		C_0 {Type O LastRead -1 FirstWrite 3}
		C_1 {Type O LastRead -1 FirstWrite 3}
		C_2 {Type O LastRead -1 FirstWrite 3}
		C_3 {Type O LastRead -1 FirstWrite 3}
		C_4 {Type O LastRead -1 FirstWrite 3}
		C_5 {Type O LastRead -1 FirstWrite 3}
		C_6 {Type O LastRead -1 FirstWrite 3}
		C_7 {Type O LastRead -1 FirstWrite 3}
		C_8 {Type O LastRead -1 FirstWrite 3}
		C_9 {Type O LastRead -1 FirstWrite 3}
		C_10 {Type O LastRead -1 FirstWrite 3}
		C_11 {Type O LastRead -1 FirstWrite 3}
		C_12 {Type O LastRead -1 FirstWrite 3}
		C_13 {Type O LastRead -1 FirstWrite 3}
		C_14 {Type O LastRead -1 FirstWrite 3}
		C_15 {Type O LastRead -1 FirstWrite 3}
		bufC_93 {Type I LastRead 0 FirstWrite -1}
		bufC_125 {Type I LastRead 0 FirstWrite -1}
		or_ln295_28 {Type I LastRead 0 FirstWrite -1}
		bufC_92 {Type I LastRead 0 FirstWrite -1}
		bufC_124 {Type I LastRead 0 FirstWrite -1}
		or_ln295_27 {Type I LastRead 0 FirstWrite -1}
		bufC_91 {Type I LastRead 0 FirstWrite -1}
		bufC_123 {Type I LastRead 0 FirstWrite -1}
		or_ln295_26 {Type I LastRead 0 FirstWrite -1}
		bufC_90 {Type I LastRead 0 FirstWrite -1}
		bufC_122 {Type I LastRead 0 FirstWrite -1}
		or_ln295_25 {Type I LastRead 0 FirstWrite -1}
		bufC_89 {Type I LastRead 0 FirstWrite -1}
		bufC_121 {Type I LastRead 0 FirstWrite -1}
		or_ln295_24 {Type I LastRead 0 FirstWrite -1}
		bufC_88 {Type I LastRead 0 FirstWrite -1}
		bufC_120 {Type I LastRead 0 FirstWrite -1}
		or_ln295_23 {Type I LastRead 0 FirstWrite -1}
		bufC_87 {Type I LastRead 0 FirstWrite -1}
		bufC_119 {Type I LastRead 0 FirstWrite -1}
		or_ln295_22 {Type I LastRead 0 FirstWrite -1}
		bufC_86 {Type I LastRead 0 FirstWrite -1}
		bufC_118 {Type I LastRead 0 FirstWrite -1}
		or_ln295_21 {Type I LastRead 0 FirstWrite -1}
		bufC_85 {Type I LastRead 0 FirstWrite -1}
		bufC_117 {Type I LastRead 0 FirstWrite -1}
		or_ln295_20 {Type I LastRead 0 FirstWrite -1}
		bufC_84 {Type I LastRead 0 FirstWrite -1}
		bufC_116 {Type I LastRead 0 FirstWrite -1}
		or_ln295_19 {Type I LastRead 0 FirstWrite -1}
		bufC_83 {Type I LastRead 0 FirstWrite -1}
		bufC_115 {Type I LastRead 0 FirstWrite -1}
		or_ln295_18 {Type I LastRead 0 FirstWrite -1}
		bufC_82 {Type I LastRead 0 FirstWrite -1}
		bufC_114 {Type I LastRead 0 FirstWrite -1}
		or_ln295_17 {Type I LastRead 0 FirstWrite -1}
		bufC_81 {Type I LastRead 0 FirstWrite -1}
		bufC_113 {Type I LastRead 0 FirstWrite -1}
		or_ln295_16 {Type I LastRead 0 FirstWrite -1}
		bufC_80 {Type I LastRead 0 FirstWrite -1}
		bufC_112 {Type I LastRead 0 FirstWrite -1}
		or_ln295_15 {Type I LastRead 0 FirstWrite -1}
		bufC_79 {Type I LastRead 0 FirstWrite -1}
		bufC_111 {Type I LastRead 0 FirstWrite -1}
		or_ln295_14 {Type I LastRead 0 FirstWrite -1}
		bufC_78 {Type I LastRead 0 FirstWrite -1}
		bufC_110 {Type I LastRead 0 FirstWrite -1}
		or_ln295_13 {Type I LastRead 0 FirstWrite -1}
		bufC_77 {Type I LastRead 0 FirstWrite -1}
		bufC_109 {Type I LastRead 0 FirstWrite -1}
		or_ln295_12 {Type I LastRead 0 FirstWrite -1}
		bufC_76 {Type I LastRead 0 FirstWrite -1}
		bufC_108 {Type I LastRead 0 FirstWrite -1}
		or_ln295_11 {Type I LastRead 0 FirstWrite -1}
		bufC_75 {Type I LastRead 0 FirstWrite -1}
		bufC_107 {Type I LastRead 0 FirstWrite -1}
		or_ln295_10 {Type I LastRead 0 FirstWrite -1}
		bufC_74 {Type I LastRead 0 FirstWrite -1}
		bufC_106 {Type I LastRead 0 FirstWrite -1}
		or_ln295_s {Type I LastRead 0 FirstWrite -1}
		bufC_73 {Type I LastRead 0 FirstWrite -1}
		bufC_105 {Type I LastRead 0 FirstWrite -1}
		or_ln295_9 {Type I LastRead 0 FirstWrite -1}
		bufC_72 {Type I LastRead 0 FirstWrite -1}
		bufC_104 {Type I LastRead 0 FirstWrite -1}
		or_ln295_8 {Type I LastRead 0 FirstWrite -1}
		bufC_71 {Type I LastRead 0 FirstWrite -1}
		bufC_103 {Type I LastRead 0 FirstWrite -1}
		or_ln295_7 {Type I LastRead 0 FirstWrite -1}
		bufC_70 {Type I LastRead 0 FirstWrite -1}
		bufC_102 {Type I LastRead 0 FirstWrite -1}
		or_ln295_6 {Type I LastRead 0 FirstWrite -1}
		bufC_69 {Type I LastRead 0 FirstWrite -1}
		bufC_101 {Type I LastRead 0 FirstWrite -1}
		or_ln295_5 {Type I LastRead 0 FirstWrite -1}
		bufC_68 {Type I LastRead 0 FirstWrite -1}
		bufC_100 {Type I LastRead 0 FirstWrite -1}
		or_ln295_4 {Type I LastRead 0 FirstWrite -1}
		bufC_67 {Type I LastRead 0 FirstWrite -1}
		bufC_99 {Type I LastRead 0 FirstWrite -1}
		or_ln295_3 {Type I LastRead 0 FirstWrite -1}
		bufC_66 {Type I LastRead 0 FirstWrite -1}
		bufC_98 {Type I LastRead 0 FirstWrite -1}
		or_ln295_2 {Type I LastRead 0 FirstWrite -1}
		bufC_65 {Type I LastRead 0 FirstWrite -1}
		bufC_97 {Type I LastRead 0 FirstWrite -1}
		or_ln295_1 {Type I LastRead 0 FirstWrite -1}
		bufC_64 {Type I LastRead 0 FirstWrite -1}
		bufC_96 {Type I LastRead 0 FirstWrite -1}
		or_ln4 {Type I LastRead 0 FirstWrite -1}
		empty_20 {Type I LastRead 0 FirstWrite -1}
		empty_21 {Type I LastRead 0 FirstWrite -1}
		bufC {Type I LastRead 0 FirstWrite -1}
		bufC_95 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}}
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
		gmem1 {Type I LastRead 40 FirstWrite -1}}
	qwen_linear_layer_Pipeline_VITIS_LOOP_268_8_VITIS_LOOP_269_9_VITIS_LOOP_274_10 {
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
		bufC_64 {Type IO LastRead 2 FirstWrite 3}
		bufC_65 {Type IO LastRead 2 FirstWrite 3}
		bufC_66 {Type IO LastRead 2 FirstWrite 3}
		bufC_67 {Type IO LastRead 2 FirstWrite 3}
		bufC_68 {Type IO LastRead 2 FirstWrite 3}
		bufC_69 {Type IO LastRead 2 FirstWrite 3}
		bufC_70 {Type IO LastRead 2 FirstWrite 3}
		bufC_71 {Type IO LastRead 2 FirstWrite 3}
		bufC_72 {Type IO LastRead 2 FirstWrite 3}
		bufC_73 {Type IO LastRead 2 FirstWrite 3}
		bufC_74 {Type IO LastRead 2 FirstWrite 3}
		bufC_75 {Type IO LastRead 2 FirstWrite 3}
		bufC_76 {Type IO LastRead 2 FirstWrite 3}
		bufC_77 {Type IO LastRead 2 FirstWrite 3}
		bufC_78 {Type IO LastRead 2 FirstWrite 3}
		bufC_79 {Type IO LastRead 2 FirstWrite 3}
		bufC_80 {Type IO LastRead 2 FirstWrite 3}
		bufC_81 {Type IO LastRead 2 FirstWrite 3}
		bufC_82 {Type IO LastRead 2 FirstWrite 3}
		bufC_83 {Type IO LastRead 2 FirstWrite 3}
		bufC_84 {Type IO LastRead 2 FirstWrite 3}
		bufC_85 {Type IO LastRead 2 FirstWrite 3}
		bufC_86 {Type IO LastRead 2 FirstWrite 3}
		bufC_87 {Type IO LastRead 2 FirstWrite 3}
		bufC_88 {Type IO LastRead 2 FirstWrite 3}
		bufC_89 {Type IO LastRead 2 FirstWrite 3}
		bufC_90 {Type IO LastRead 2 FirstWrite 3}
		bufC_91 {Type IO LastRead 2 FirstWrite 3}
		bufC_92 {Type IO LastRead 2 FirstWrite 3}
		bufC_93 {Type IO LastRead 2 FirstWrite 3}
		bufC_94 {Type IO LastRead 2 FirstWrite 3}
		bufC_95 {Type IO LastRead 2 FirstWrite 3}
		bufC_96 {Type IO LastRead 2 FirstWrite 3}
		bufC_97 {Type IO LastRead 2 FirstWrite 3}
		bufC_98 {Type IO LastRead 2 FirstWrite 3}
		bufC_99 {Type IO LastRead 2 FirstWrite 3}
		bufC_100 {Type IO LastRead 2 FirstWrite 3}
		bufC_101 {Type IO LastRead 2 FirstWrite 3}
		bufC_102 {Type IO LastRead 2 FirstWrite 3}
		bufC_103 {Type IO LastRead 2 FirstWrite 3}
		bufC_104 {Type IO LastRead 2 FirstWrite 3}
		bufC_105 {Type IO LastRead 2 FirstWrite 3}
		bufC_106 {Type IO LastRead 2 FirstWrite 3}
		bufC_107 {Type IO LastRead 2 FirstWrite 3}
		bufC_108 {Type IO LastRead 2 FirstWrite 3}
		bufC_109 {Type IO LastRead 2 FirstWrite 3}
		bufC_110 {Type IO LastRead 2 FirstWrite 3}
		bufC_111 {Type IO LastRead 2 FirstWrite 3}
		bufC_112 {Type IO LastRead 2 FirstWrite 3}
		bufC_113 {Type IO LastRead 2 FirstWrite 3}
		bufC_114 {Type IO LastRead 2 FirstWrite 3}
		bufC_115 {Type IO LastRead 2 FirstWrite 3}
		bufC_116 {Type IO LastRead 2 FirstWrite 3}
		bufC_117 {Type IO LastRead 2 FirstWrite 3}
		bufC_118 {Type IO LastRead 2 FirstWrite 3}
		bufC_119 {Type IO LastRead 2 FirstWrite 3}
		bufC_120 {Type IO LastRead 2 FirstWrite 3}
		bufC_121 {Type IO LastRead 2 FirstWrite 3}
		bufC_122 {Type IO LastRead 2 FirstWrite 3}
		bufC_123 {Type IO LastRead 2 FirstWrite 3}
		bufC_124 {Type IO LastRead 2 FirstWrite 3}
		bufC_125 {Type IO LastRead 2 FirstWrite 3}
		bufC_126 {Type IO LastRead 2 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "52212667"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "52212667"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem0_0_AWVALID VALID 1 1 }  { m_axi_gmem0_0_AWREADY READY 0 1 }  { m_axi_gmem0_0_AWADDR ADDR 1 64 }  { m_axi_gmem0_0_AWID ID 1 1 }  { m_axi_gmem0_0_AWLEN SIZE 1 32 }  { m_axi_gmem0_0_AWSIZE BURST 1 3 }  { m_axi_gmem0_0_AWBURST LOCK 1 2 }  { m_axi_gmem0_0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_0_AWCACHE PROT 1 4 }  { m_axi_gmem0_0_AWPROT QOS 1 3 }  { m_axi_gmem0_0_AWQOS REGION 1 4 }  { m_axi_gmem0_0_AWREGION USER 1 4 }  { m_axi_gmem0_0_AWUSER DATA 1 1 }  { m_axi_gmem0_0_WVALID VALID 1 1 }  { m_axi_gmem0_0_WREADY READY 0 1 }  { m_axi_gmem0_0_WDATA FIFONUM 1 16 }  { m_axi_gmem0_0_WSTRB STRB 1 2 }  { m_axi_gmem0_0_WLAST LAST 1 1 }  { m_axi_gmem0_0_WID ID 1 1 }  { m_axi_gmem0_0_WUSER DATA 1 1 }  { m_axi_gmem0_0_ARVALID VALID 1 1 }  { m_axi_gmem0_0_ARREADY READY 0 1 }  { m_axi_gmem0_0_ARADDR ADDR 1 64 }  { m_axi_gmem0_0_ARID ID 1 1 }  { m_axi_gmem0_0_ARLEN SIZE 1 32 }  { m_axi_gmem0_0_ARSIZE BURST 1 3 }  { m_axi_gmem0_0_ARBURST LOCK 1 2 }  { m_axi_gmem0_0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_0_ARCACHE PROT 1 4 }  { m_axi_gmem0_0_ARPROT QOS 1 3 }  { m_axi_gmem0_0_ARQOS REGION 1 4 }  { m_axi_gmem0_0_ARREGION USER 1 4 }  { m_axi_gmem0_0_ARUSER DATA 1 1 }  { m_axi_gmem0_0_RVALID VALID 0 1 }  { m_axi_gmem0_0_RREADY READY 1 1 }  { m_axi_gmem0_0_RDATA FIFONUM 0 16 }  { m_axi_gmem0_0_RLAST LAST 0 1 }  { m_axi_gmem0_0_RID ID 0 1 }  { m_axi_gmem0_0_RFIFONUM LEN 0 10 }  { m_axi_gmem0_0_RUSER DATA 0 1 }  { m_axi_gmem0_0_RRESP RESP 0 2 }  { m_axi_gmem0_0_BVALID VALID 0 1 }  { m_axi_gmem0_0_BREADY READY 1 1 }  { m_axi_gmem0_0_BRESP RESP 0 2 }  { m_axi_gmem0_0_BID ID 0 1 }  { m_axi_gmem0_0_BUSER DATA 0 1 } } }
	A { ap_none {  { A in_data 0 64 } } }
	 { m_axi {  { m_axi_gmem1_0_AWVALID VALID 1 1 }  { m_axi_gmem1_0_AWREADY READY 0 1 }  { m_axi_gmem1_0_AWADDR ADDR 1 64 }  { m_axi_gmem1_0_AWID ID 1 1 }  { m_axi_gmem1_0_AWLEN SIZE 1 32 }  { m_axi_gmem1_0_AWSIZE BURST 1 3 }  { m_axi_gmem1_0_AWBURST LOCK 1 2 }  { m_axi_gmem1_0_AWLOCK CACHE 1 2 }  { m_axi_gmem1_0_AWCACHE PROT 1 4 }  { m_axi_gmem1_0_AWPROT QOS 1 3 }  { m_axi_gmem1_0_AWQOS REGION 1 4 }  { m_axi_gmem1_0_AWREGION USER 1 4 }  { m_axi_gmem1_0_AWUSER DATA 1 1 }  { m_axi_gmem1_0_WVALID VALID 1 1 }  { m_axi_gmem1_0_WREADY READY 0 1 }  { m_axi_gmem1_0_WDATA FIFONUM 1 16 }  { m_axi_gmem1_0_WSTRB STRB 1 2 }  { m_axi_gmem1_0_WLAST LAST 1 1 }  { m_axi_gmem1_0_WID ID 1 1 }  { m_axi_gmem1_0_WUSER DATA 1 1 }  { m_axi_gmem1_0_ARVALID VALID 1 1 }  { m_axi_gmem1_0_ARREADY READY 0 1 }  { m_axi_gmem1_0_ARADDR ADDR 1 64 }  { m_axi_gmem1_0_ARID ID 1 1 }  { m_axi_gmem1_0_ARLEN SIZE 1 32 }  { m_axi_gmem1_0_ARSIZE BURST 1 3 }  { m_axi_gmem1_0_ARBURST LOCK 1 2 }  { m_axi_gmem1_0_ARLOCK CACHE 1 2 }  { m_axi_gmem1_0_ARCACHE PROT 1 4 }  { m_axi_gmem1_0_ARPROT QOS 1 3 }  { m_axi_gmem1_0_ARQOS REGION 1 4 }  { m_axi_gmem1_0_ARREGION USER 1 4 }  { m_axi_gmem1_0_ARUSER DATA 1 1 }  { m_axi_gmem1_0_RVALID VALID 0 1 }  { m_axi_gmem1_0_RREADY READY 1 1 }  { m_axi_gmem1_0_RDATA FIFONUM 0 16 }  { m_axi_gmem1_0_RLAST LAST 0 1 }  { m_axi_gmem1_0_RID ID 0 1 }  { m_axi_gmem1_0_RFIFONUM LEN 0 10 }  { m_axi_gmem1_0_RUSER DATA 0 1 }  { m_axi_gmem1_0_RRESP RESP 0 2 }  { m_axi_gmem1_0_BVALID VALID 0 1 }  { m_axi_gmem1_0_BREADY READY 1 1 }  { m_axi_gmem1_0_BRESP RESP 0 2 }  { m_axi_gmem1_0_BID ID 0 1 }  { m_axi_gmem1_0_BUSER DATA 0 1 } } }
	W { ap_none {  { W in_data 0 64 } } }
	C_0 { ap_memory {  { C_0_address0 mem_address 1 11 }  { C_0_ce0 mem_ce 1 1 }  { C_0_we0 mem_we 1 1 }  { C_0_d0 mem_din 1 16 }  { C_0_address1 MemPortADDR2 1 11 }  { C_0_ce1 MemPortCE2 1 1 }  { C_0_we1 MemPortWE2 1 1 }  { C_0_d1 MemPortDIN2 1 16 } } }
	C_1 { ap_memory {  { C_1_address0 mem_address 1 11 }  { C_1_ce0 mem_ce 1 1 }  { C_1_we0 mem_we 1 1 }  { C_1_d0 mem_din 1 16 }  { C_1_address1 MemPortADDR2 1 11 }  { C_1_ce1 MemPortCE2 1 1 }  { C_1_we1 MemPortWE2 1 1 }  { C_1_d1 MemPortDIN2 1 16 } } }
	C_2 { ap_memory {  { C_2_address0 mem_address 1 11 }  { C_2_ce0 mem_ce 1 1 }  { C_2_we0 mem_we 1 1 }  { C_2_d0 mem_din 1 16 }  { C_2_address1 MemPortADDR2 1 11 }  { C_2_ce1 MemPortCE2 1 1 }  { C_2_we1 MemPortWE2 1 1 }  { C_2_d1 MemPortDIN2 1 16 } } }
	C_3 { ap_memory {  { C_3_address0 mem_address 1 11 }  { C_3_ce0 mem_ce 1 1 }  { C_3_we0 mem_we 1 1 }  { C_3_d0 mem_din 1 16 }  { C_3_address1 MemPortADDR2 1 11 }  { C_3_ce1 MemPortCE2 1 1 }  { C_3_we1 MemPortWE2 1 1 }  { C_3_d1 MemPortDIN2 1 16 } } }
	C_4 { ap_memory {  { C_4_address0 mem_address 1 11 }  { C_4_ce0 mem_ce 1 1 }  { C_4_we0 mem_we 1 1 }  { C_4_d0 mem_din 1 16 }  { C_4_address1 MemPortADDR2 1 11 }  { C_4_ce1 MemPortCE2 1 1 }  { C_4_we1 MemPortWE2 1 1 }  { C_4_d1 MemPortDIN2 1 16 } } }
	C_5 { ap_memory {  { C_5_address0 mem_address 1 11 }  { C_5_ce0 mem_ce 1 1 }  { C_5_we0 mem_we 1 1 }  { C_5_d0 mem_din 1 16 }  { C_5_address1 MemPortADDR2 1 11 }  { C_5_ce1 MemPortCE2 1 1 }  { C_5_we1 MemPortWE2 1 1 }  { C_5_d1 MemPortDIN2 1 16 } } }
	C_6 { ap_memory {  { C_6_address0 mem_address 1 11 }  { C_6_ce0 mem_ce 1 1 }  { C_6_we0 mem_we 1 1 }  { C_6_d0 mem_din 1 16 }  { C_6_address1 MemPortADDR2 1 11 }  { C_6_ce1 MemPortCE2 1 1 }  { C_6_we1 MemPortWE2 1 1 }  { C_6_d1 MemPortDIN2 1 16 } } }
	C_7 { ap_memory {  { C_7_address0 mem_address 1 11 }  { C_7_ce0 mem_ce 1 1 }  { C_7_we0 mem_we 1 1 }  { C_7_d0 mem_din 1 16 }  { C_7_address1 MemPortADDR2 1 11 }  { C_7_ce1 MemPortCE2 1 1 }  { C_7_we1 MemPortWE2 1 1 }  { C_7_d1 MemPortDIN2 1 16 } } }
	C_8 { ap_memory {  { C_8_address0 mem_address 1 11 }  { C_8_ce0 mem_ce 1 1 }  { C_8_we0 mem_we 1 1 }  { C_8_d0 mem_din 1 16 }  { C_8_address1 MemPortADDR2 1 11 }  { C_8_ce1 MemPortCE2 1 1 }  { C_8_we1 MemPortWE2 1 1 }  { C_8_d1 MemPortDIN2 1 16 } } }
	C_9 { ap_memory {  { C_9_address0 mem_address 1 11 }  { C_9_ce0 mem_ce 1 1 }  { C_9_we0 mem_we 1 1 }  { C_9_d0 mem_din 1 16 }  { C_9_address1 MemPortADDR2 1 11 }  { C_9_ce1 MemPortCE2 1 1 }  { C_9_we1 MemPortWE2 1 1 }  { C_9_d1 MemPortDIN2 1 16 } } }
	C_10 { ap_memory {  { C_10_address0 mem_address 1 11 }  { C_10_ce0 mem_ce 1 1 }  { C_10_we0 mem_we 1 1 }  { C_10_d0 mem_din 1 16 }  { C_10_address1 MemPortADDR2 1 11 }  { C_10_ce1 MemPortCE2 1 1 }  { C_10_we1 MemPortWE2 1 1 }  { C_10_d1 MemPortDIN2 1 16 } } }
	C_11 { ap_memory {  { C_11_address0 mem_address 1 11 }  { C_11_ce0 mem_ce 1 1 }  { C_11_we0 mem_we 1 1 }  { C_11_d0 mem_din 1 16 }  { C_11_address1 MemPortADDR2 1 11 }  { C_11_ce1 MemPortCE2 1 1 }  { C_11_we1 MemPortWE2 1 1 }  { C_11_d1 MemPortDIN2 1 16 } } }
	C_12 { ap_memory {  { C_12_address0 mem_address 1 11 }  { C_12_ce0 mem_ce 1 1 }  { C_12_we0 mem_we 1 1 }  { C_12_d0 mem_din 1 16 }  { C_12_address1 MemPortADDR2 1 11 }  { C_12_ce1 MemPortCE2 1 1 }  { C_12_we1 MemPortWE2 1 1 }  { C_12_d1 MemPortDIN2 1 16 } } }
	C_13 { ap_memory {  { C_13_address0 mem_address 1 11 }  { C_13_ce0 mem_ce 1 1 }  { C_13_we0 mem_we 1 1 }  { C_13_d0 mem_din 1 16 }  { C_13_address1 MemPortADDR2 1 11 }  { C_13_ce1 MemPortCE2 1 1 }  { C_13_we1 MemPortWE2 1 1 }  { C_13_d1 MemPortDIN2 1 16 } } }
	C_14 { ap_memory {  { C_14_address0 mem_address 1 11 }  { C_14_ce0 mem_ce 1 1 }  { C_14_we0 mem_we 1 1 }  { C_14_d0 mem_din 1 16 }  { C_14_address1 MemPortADDR2 1 11 }  { C_14_ce1 MemPortCE2 1 1 }  { C_14_we1 MemPortWE2 1 1 }  { C_14_d1 MemPortDIN2 1 16 } } }
	C_15 { ap_memory {  { C_15_address0 mem_address 1 11 }  { C_15_ce0 mem_ce 1 1 }  { C_15_we0 mem_we 1 1 }  { C_15_d0 mem_din 1 16 }  { C_15_address1 MemPortADDR2 1 11 }  { C_15_ce1 MemPortCE2 1 1 }  { C_15_we1 MemPortWE2 1 1 }  { C_15_d1 MemPortDIN2 1 16 } } }
	M { ap_none {  { M in_data 0 32 } } }
	N { ap_none {  { N in_data 0 32 } } }
	K { ap_none {  { K in_data 0 32 } } }
}
