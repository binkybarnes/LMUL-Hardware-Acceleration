set moduleName qwen_superblock
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type dataflow
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
set C_modelName {qwen_superblock}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ gmem0 int 16 regular {axi_master 2}  }
	{ gmem1 int 16 regular {axi_master 0}  }
	{ gmem2 int 16 regular {axi_master 0}  }
	{ A int 64 regular {axi_slave 0}  }
	{ W1 int 64 regular {axi_slave 0}  }
	{ W2 int 64 regular {axi_slave 0}  }
	{ C int 64 regular {axi_slave 0}  }
	{ M int 32 regular  }
	{ N_W1 int 32 regular  }
	{ N_W2 int 32 regular  }
	{ K int 32 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READWRITE", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "A","offset": { "type": "dynamic","port_name": "A","bundle": "control"},"direction": "READONLY"},{"cName": "C","offset": { "type": "dynamic","port_name": "C","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "W1","offset": { "type": "dynamic","port_name": "W1","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem2", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "W2","offset": { "type": "dynamic","port_name": "W2","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "A", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "W1", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "W2", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "C", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":63}} , 
 	{ "Name" : "M", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "N_W1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "N_W2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "K", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 159
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem1_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem1_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem1_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem1_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem1_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem1_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_gmem1_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem1_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem1_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem2_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem2_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem2_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem2_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem2_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem2_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_gmem2_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem2_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem2_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem2_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem2_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem2_BUSER sc_in sc_lv 1 signal 2 } 
	{ M sc_in sc_lv 32 signal 7 } 
	{ N_W1 sc_in sc_lv 32 signal 8 } 
	{ N_W2 sc_in sc_lv 32 signal 9 } 
	{ K sc_in sc_lv 32 signal 10 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"qwen_superblock","role":"start","value":"0","valid_bit":"0"},{"name":"qwen_superblock","role":"continue","value":"0","valid_bit":"4"},{"name":"qwen_superblock","role":"auto_start","value":"0","valid_bit":"7"},{"name":"A","role":"data","value":"16"},{"name":"W1","role":"data","value":"28"},{"name":"W2","role":"data","value":"40"},{"name":"C","role":"data","value":"52"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"qwen_superblock","role":"start","value":"0","valid_bit":"0"},{"name":"qwen_superblock","role":"done","value":"0","valid_bit":"1"},{"name":"qwen_superblock","role":"idle","value":"0","valid_bit":"2"},{"name":"qwen_superblock","role":"ready","value":"0","valid_bit":"3"},{"name":"qwen_superblock","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WID" }} , 
 	{ "name": "m_axi_gmem1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RID" }} , 
 	{ "name": "m_axi_gmem1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BID" }} , 
 	{ "name": "m_axi_gmem1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WID" }} , 
 	{ "name": "m_axi_gmem2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RID" }} , 
 	{ "name": "m_axi_gmem2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BID" }} , 
 	{ "name": "m_axi_gmem2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BUSER" }} , 
 	{ "name": "M", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M", "role": "default" }} , 
 	{ "name": "N_W1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "N_W1", "role": "default" }} , 
 	{ "name": "N_W2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "N_W2", "role": "default" }} , 
 	{ "name": "K", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	qwen_superblock {
		gmem0 {Type IO LastRead 41 FirstWrite -1}
		gmem1 {Type I LastRead 40 FirstWrite -1}
		gmem2 {Type I LastRead 41 FirstWrite -1}
		A {Type I LastRead 0 FirstWrite -1}
		W1 {Type I LastRead 0 FirstWrite -1}
		W2 {Type I LastRead 0 FirstWrite -1}
		C {Type I LastRead 0 FirstWrite -1}
		M {Type I LastRead 0 FirstWrite -1}
		N_W1 {Type I LastRead 0 FirstWrite -1}
		N_W2 {Type I LastRead 2 FirstWrite -1}
		K {Type I LastRead 0 FirstWrite -1}}
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
		bufC_126 {Type IO LastRead 2 FirstWrite 3}}
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
	{"Name" : "Latency", "Min" : "3", "Max" : "104438327"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "52225660"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem0 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 8 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 32 }  { m_axi_gmem0_WSTRB STRB 1 4 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 8 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 32 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	gmem1 { m_axi {  { m_axi_gmem1_AWVALID VALID 1 1 }  { m_axi_gmem1_AWREADY READY 0 1 }  { m_axi_gmem1_AWADDR ADDR 1 64 }  { m_axi_gmem1_AWID ID 1 1 }  { m_axi_gmem1_AWLEN SIZE 1 8 }  { m_axi_gmem1_AWSIZE BURST 1 3 }  { m_axi_gmem1_AWBURST LOCK 1 2 }  { m_axi_gmem1_AWLOCK CACHE 1 2 }  { m_axi_gmem1_AWCACHE PROT 1 4 }  { m_axi_gmem1_AWPROT QOS 1 3 }  { m_axi_gmem1_AWQOS REGION 1 4 }  { m_axi_gmem1_AWREGION USER 1 4 }  { m_axi_gmem1_AWUSER DATA 1 1 }  { m_axi_gmem1_WVALID VALID 1 1 }  { m_axi_gmem1_WREADY READY 0 1 }  { m_axi_gmem1_WDATA FIFONUM 1 32 }  { m_axi_gmem1_WSTRB STRB 1 4 }  { m_axi_gmem1_WLAST LAST 1 1 }  { m_axi_gmem1_WID ID 1 1 }  { m_axi_gmem1_WUSER DATA 1 1 }  { m_axi_gmem1_ARVALID VALID 1 1 }  { m_axi_gmem1_ARREADY READY 0 1 }  { m_axi_gmem1_ARADDR ADDR 1 64 }  { m_axi_gmem1_ARID ID 1 1 }  { m_axi_gmem1_ARLEN SIZE 1 8 }  { m_axi_gmem1_ARSIZE BURST 1 3 }  { m_axi_gmem1_ARBURST LOCK 1 2 }  { m_axi_gmem1_ARLOCK CACHE 1 2 }  { m_axi_gmem1_ARCACHE PROT 1 4 }  { m_axi_gmem1_ARPROT QOS 1 3 }  { m_axi_gmem1_ARQOS REGION 1 4 }  { m_axi_gmem1_ARREGION USER 1 4 }  { m_axi_gmem1_ARUSER DATA 1 1 }  { m_axi_gmem1_RVALID VALID 0 1 }  { m_axi_gmem1_RREADY READY 1 1 }  { m_axi_gmem1_RDATA FIFONUM 0 32 }  { m_axi_gmem1_RLAST LAST 0 1 }  { m_axi_gmem1_RID ID 0 1 }  { m_axi_gmem1_RUSER DATA 0 1 }  { m_axi_gmem1_RRESP RESP 0 2 }  { m_axi_gmem1_BVALID VALID 0 1 }  { m_axi_gmem1_BREADY READY 1 1 }  { m_axi_gmem1_BRESP RESP 0 2 }  { m_axi_gmem1_BID ID 0 1 }  { m_axi_gmem1_BUSER DATA 0 1 } } }
	gmem2 { m_axi {  { m_axi_gmem2_AWVALID VALID 1 1 }  { m_axi_gmem2_AWREADY READY 0 1 }  { m_axi_gmem2_AWADDR ADDR 1 64 }  { m_axi_gmem2_AWID ID 1 1 }  { m_axi_gmem2_AWLEN SIZE 1 8 }  { m_axi_gmem2_AWSIZE BURST 1 3 }  { m_axi_gmem2_AWBURST LOCK 1 2 }  { m_axi_gmem2_AWLOCK CACHE 1 2 }  { m_axi_gmem2_AWCACHE PROT 1 4 }  { m_axi_gmem2_AWPROT QOS 1 3 }  { m_axi_gmem2_AWQOS REGION 1 4 }  { m_axi_gmem2_AWREGION USER 1 4 }  { m_axi_gmem2_AWUSER DATA 1 1 }  { m_axi_gmem2_WVALID VALID 1 1 }  { m_axi_gmem2_WREADY READY 0 1 }  { m_axi_gmem2_WDATA FIFONUM 1 32 }  { m_axi_gmem2_WSTRB STRB 1 4 }  { m_axi_gmem2_WLAST LAST 1 1 }  { m_axi_gmem2_WID ID 1 1 }  { m_axi_gmem2_WUSER DATA 1 1 }  { m_axi_gmem2_ARVALID VALID 1 1 }  { m_axi_gmem2_ARREADY READY 0 1 }  { m_axi_gmem2_ARADDR ADDR 1 64 }  { m_axi_gmem2_ARID ID 1 1 }  { m_axi_gmem2_ARLEN SIZE 1 8 }  { m_axi_gmem2_ARSIZE BURST 1 3 }  { m_axi_gmem2_ARBURST LOCK 1 2 }  { m_axi_gmem2_ARLOCK CACHE 1 2 }  { m_axi_gmem2_ARCACHE PROT 1 4 }  { m_axi_gmem2_ARPROT QOS 1 3 }  { m_axi_gmem2_ARQOS REGION 1 4 }  { m_axi_gmem2_ARREGION USER 1 4 }  { m_axi_gmem2_ARUSER DATA 1 1 }  { m_axi_gmem2_RVALID VALID 0 1 }  { m_axi_gmem2_RREADY READY 1 1 }  { m_axi_gmem2_RDATA FIFONUM 0 32 }  { m_axi_gmem2_RLAST LAST 0 1 }  { m_axi_gmem2_RID ID 0 1 }  { m_axi_gmem2_RUSER DATA 0 1 }  { m_axi_gmem2_RRESP RESP 0 2 }  { m_axi_gmem2_BVALID VALID 0 1 }  { m_axi_gmem2_BREADY READY 1 1 }  { m_axi_gmem2_BRESP RESP 0 2 }  { m_axi_gmem2_BID ID 0 1 }  { m_axi_gmem2_BUSER DATA 0 1 } } }
	M { ap_none {  { M in_data 0 32 } } }
	N_W1 { ap_none {  { N_W1 in_data 0 32 } } }
	N_W2 { ap_none {  { N_W2 in_data 0 32 } } }
	K { ap_none {  { K in_data 0 32 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem0 { CHANNEL_NUM 0 BUNDLE gmem0 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}
dict set maxi_interface_dict gmem1 { CHANNEL_NUM 0 BUNDLE gmem1 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem2 { CHANNEL_NUM 0 BUNDLE gmem2 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem0 1 }
	{ gmem1 1 }
	{ gmem2 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem0 1 }
	{ gmem1 1 }
	{ gmem2 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
