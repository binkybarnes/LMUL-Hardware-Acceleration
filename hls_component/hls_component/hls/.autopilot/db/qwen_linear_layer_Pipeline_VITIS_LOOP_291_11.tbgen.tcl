set moduleName qwen_linear_layer_Pipeline_VITIS_LOOP_291_11
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
set C_modelName {qwen_linear_layer_Pipeline_VITIS_LOOP_291_11}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict bufC_94 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_126 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict C_0 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict C_1 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict C_2 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict C_3 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict C_4 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict C_5 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict C_6 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict C_7 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict C_8 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict C_9 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict C_10 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict C_11 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict C_12 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict C_13 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict C_14 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict C_15 { MEM_WIDTH 16 MEM_SIZE 3584 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict bufC_93 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_125 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_92 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_124 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_91 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_123 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_90 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_122 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_89 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_121 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_88 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_120 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_87 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_119 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_86 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_118 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_85 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_117 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_84 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_116 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_83 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_115 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_82 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_114 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_81 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_113 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_80 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_112 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_79 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_111 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_78 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_110 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_77 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_109 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_76 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_108 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_75 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_107 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_74 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_106 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_73 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_105 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_72 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_104 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_71 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_103 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_70 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_102 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_69 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_101 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_68 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_100 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_67 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_99 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_66 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_98 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_65 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_97 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_64 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_96 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bufC_95 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ bufC_94 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_126 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ or_ln295_29 int 15 regular  }
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
	{ bufC_93 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_125 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ or_ln295_28 int 15 regular  }
	{ bufC_92 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_124 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ or_ln295_27 int 15 regular  }
	{ bufC_91 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_123 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ or_ln295_26 int 15 regular  }
	{ bufC_90 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_122 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ or_ln295_25 int 15 regular  }
	{ bufC_89 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_121 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ or_ln295_24 int 15 regular  }
	{ bufC_88 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_120 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ or_ln295_23 int 15 regular  }
	{ bufC_87 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_119 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ or_ln295_22 int 15 regular  }
	{ bufC_86 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_118 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ or_ln295_21 int 15 regular  }
	{ bufC_85 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_117 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ or_ln295_20 int 15 regular  }
	{ bufC_84 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_116 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ or_ln295_19 int 15 regular  }
	{ bufC_83 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_115 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ or_ln295_18 int 15 regular  }
	{ bufC_82 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_114 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ or_ln295_17 int 15 regular  }
	{ bufC_81 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_113 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ or_ln295_16 int 15 regular  }
	{ bufC_80 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_112 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ or_ln295_15 int 15 regular  }
	{ bufC_79 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_111 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ or_ln295_14 int 15 regular  }
	{ bufC_78 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_110 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ or_ln295_13 int 15 regular  }
	{ bufC_77 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_109 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ or_ln295_12 int 15 regular  }
	{ bufC_76 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_108 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ or_ln295_11 int 15 regular  }
	{ bufC_75 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_107 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ or_ln295_10 int 15 regular  }
	{ bufC_74 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_106 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ or_ln295_s int 15 regular  }
	{ bufC_73 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_105 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ or_ln295_9 int 15 regular  }
	{ bufC_72 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_104 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ or_ln295_8 int 15 regular  }
	{ bufC_71 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_103 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ or_ln295_7 int 15 regular  }
	{ bufC_70 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_102 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ or_ln295_6 int 15 regular  }
	{ bufC_69 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_101 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ or_ln295_5 int 15 regular  }
	{ bufC_68 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_100 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ or_ln295_4 int 15 regular  }
	{ bufC_67 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_99 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ or_ln295_3 int 15 regular  }
	{ bufC_66 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_98 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ or_ln295_2 int 15 regular  }
	{ bufC_65 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_97 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ or_ln295_1 int 15 regular  }
	{ bufC_64 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_96 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ or_ln4 int 15 regular  }
	{ empty_20 int 15 regular  }
	{ empty_21 int 15 regular  }
	{ bufC int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ bufC_95 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ empty int 15 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "bufC_94", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_126", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln295_29", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
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
 	{ "Name" : "bufC_93", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_125", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln295_28", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_92", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_124", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln295_27", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_91", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_123", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln295_26", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_90", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_122", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln295_25", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_89", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_121", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln295_24", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_88", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_120", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln295_23", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_87", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_119", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln295_22", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_86", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_118", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln295_21", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_85", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_117", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln295_20", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_84", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_116", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln295_19", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_83", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_115", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln295_18", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_82", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_114", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln295_17", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_81", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_113", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln295_16", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_80", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_112", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln295_15", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_79", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_111", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln295_14", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_78", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_110", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln295_13", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_77", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_109", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln295_12", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_76", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_108", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln295_11", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_75", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_107", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln295_10", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_74", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_106", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln295_s", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_73", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_105", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln295_9", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_72", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_104", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln295_8", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_71", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_103", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln295_7", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_70", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_102", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln295_6", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_69", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_101", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln295_5", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_68", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_100", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln295_4", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_67", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_99", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln295_3", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_66", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_98", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln295_2", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_65", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_97", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln295_1", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_64", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_96", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln4", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "empty_20", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "empty_21", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "bufC", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bufC_95", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 360
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bufC_94_address0 sc_out sc_lv 4 signal 0 } 
	{ bufC_94_ce0 sc_out sc_logic 1 signal 0 } 
	{ bufC_94_q0 sc_in sc_lv 32 signal 0 } 
	{ bufC_126_address0 sc_out sc_lv 4 signal 1 } 
	{ bufC_126_ce0 sc_out sc_logic 1 signal 1 } 
	{ bufC_126_q0 sc_in sc_lv 32 signal 1 } 
	{ or_ln295_29 sc_in sc_lv 15 signal 2 } 
	{ C_0_address0 sc_out sc_lv 11 signal 3 } 
	{ C_0_ce0 sc_out sc_logic 1 signal 3 } 
	{ C_0_we0 sc_out sc_logic 1 signal 3 } 
	{ C_0_d0 sc_out sc_lv 16 signal 3 } 
	{ C_0_address1 sc_out sc_lv 11 signal 3 } 
	{ C_0_ce1 sc_out sc_logic 1 signal 3 } 
	{ C_0_we1 sc_out sc_logic 1 signal 3 } 
	{ C_0_d1 sc_out sc_lv 16 signal 3 } 
	{ C_1_address0 sc_out sc_lv 11 signal 4 } 
	{ C_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ C_1_we0 sc_out sc_logic 1 signal 4 } 
	{ C_1_d0 sc_out sc_lv 16 signal 4 } 
	{ C_1_address1 sc_out sc_lv 11 signal 4 } 
	{ C_1_ce1 sc_out sc_logic 1 signal 4 } 
	{ C_1_we1 sc_out sc_logic 1 signal 4 } 
	{ C_1_d1 sc_out sc_lv 16 signal 4 } 
	{ C_2_address0 sc_out sc_lv 11 signal 5 } 
	{ C_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ C_2_we0 sc_out sc_logic 1 signal 5 } 
	{ C_2_d0 sc_out sc_lv 16 signal 5 } 
	{ C_2_address1 sc_out sc_lv 11 signal 5 } 
	{ C_2_ce1 sc_out sc_logic 1 signal 5 } 
	{ C_2_we1 sc_out sc_logic 1 signal 5 } 
	{ C_2_d1 sc_out sc_lv 16 signal 5 } 
	{ C_3_address0 sc_out sc_lv 11 signal 6 } 
	{ C_3_ce0 sc_out sc_logic 1 signal 6 } 
	{ C_3_we0 sc_out sc_logic 1 signal 6 } 
	{ C_3_d0 sc_out sc_lv 16 signal 6 } 
	{ C_3_address1 sc_out sc_lv 11 signal 6 } 
	{ C_3_ce1 sc_out sc_logic 1 signal 6 } 
	{ C_3_we1 sc_out sc_logic 1 signal 6 } 
	{ C_3_d1 sc_out sc_lv 16 signal 6 } 
	{ C_4_address0 sc_out sc_lv 11 signal 7 } 
	{ C_4_ce0 sc_out sc_logic 1 signal 7 } 
	{ C_4_we0 sc_out sc_logic 1 signal 7 } 
	{ C_4_d0 sc_out sc_lv 16 signal 7 } 
	{ C_4_address1 sc_out sc_lv 11 signal 7 } 
	{ C_4_ce1 sc_out sc_logic 1 signal 7 } 
	{ C_4_we1 sc_out sc_logic 1 signal 7 } 
	{ C_4_d1 sc_out sc_lv 16 signal 7 } 
	{ C_5_address0 sc_out sc_lv 11 signal 8 } 
	{ C_5_ce0 sc_out sc_logic 1 signal 8 } 
	{ C_5_we0 sc_out sc_logic 1 signal 8 } 
	{ C_5_d0 sc_out sc_lv 16 signal 8 } 
	{ C_5_address1 sc_out sc_lv 11 signal 8 } 
	{ C_5_ce1 sc_out sc_logic 1 signal 8 } 
	{ C_5_we1 sc_out sc_logic 1 signal 8 } 
	{ C_5_d1 sc_out sc_lv 16 signal 8 } 
	{ C_6_address0 sc_out sc_lv 11 signal 9 } 
	{ C_6_ce0 sc_out sc_logic 1 signal 9 } 
	{ C_6_we0 sc_out sc_logic 1 signal 9 } 
	{ C_6_d0 sc_out sc_lv 16 signal 9 } 
	{ C_6_address1 sc_out sc_lv 11 signal 9 } 
	{ C_6_ce1 sc_out sc_logic 1 signal 9 } 
	{ C_6_we1 sc_out sc_logic 1 signal 9 } 
	{ C_6_d1 sc_out sc_lv 16 signal 9 } 
	{ C_7_address0 sc_out sc_lv 11 signal 10 } 
	{ C_7_ce0 sc_out sc_logic 1 signal 10 } 
	{ C_7_we0 sc_out sc_logic 1 signal 10 } 
	{ C_7_d0 sc_out sc_lv 16 signal 10 } 
	{ C_7_address1 sc_out sc_lv 11 signal 10 } 
	{ C_7_ce1 sc_out sc_logic 1 signal 10 } 
	{ C_7_we1 sc_out sc_logic 1 signal 10 } 
	{ C_7_d1 sc_out sc_lv 16 signal 10 } 
	{ C_8_address0 sc_out sc_lv 11 signal 11 } 
	{ C_8_ce0 sc_out sc_logic 1 signal 11 } 
	{ C_8_we0 sc_out sc_logic 1 signal 11 } 
	{ C_8_d0 sc_out sc_lv 16 signal 11 } 
	{ C_8_address1 sc_out sc_lv 11 signal 11 } 
	{ C_8_ce1 sc_out sc_logic 1 signal 11 } 
	{ C_8_we1 sc_out sc_logic 1 signal 11 } 
	{ C_8_d1 sc_out sc_lv 16 signal 11 } 
	{ C_9_address0 sc_out sc_lv 11 signal 12 } 
	{ C_9_ce0 sc_out sc_logic 1 signal 12 } 
	{ C_9_we0 sc_out sc_logic 1 signal 12 } 
	{ C_9_d0 sc_out sc_lv 16 signal 12 } 
	{ C_9_address1 sc_out sc_lv 11 signal 12 } 
	{ C_9_ce1 sc_out sc_logic 1 signal 12 } 
	{ C_9_we1 sc_out sc_logic 1 signal 12 } 
	{ C_9_d1 sc_out sc_lv 16 signal 12 } 
	{ C_10_address0 sc_out sc_lv 11 signal 13 } 
	{ C_10_ce0 sc_out sc_logic 1 signal 13 } 
	{ C_10_we0 sc_out sc_logic 1 signal 13 } 
	{ C_10_d0 sc_out sc_lv 16 signal 13 } 
	{ C_10_address1 sc_out sc_lv 11 signal 13 } 
	{ C_10_ce1 sc_out sc_logic 1 signal 13 } 
	{ C_10_we1 sc_out sc_logic 1 signal 13 } 
	{ C_10_d1 sc_out sc_lv 16 signal 13 } 
	{ C_11_address0 sc_out sc_lv 11 signal 14 } 
	{ C_11_ce0 sc_out sc_logic 1 signal 14 } 
	{ C_11_we0 sc_out sc_logic 1 signal 14 } 
	{ C_11_d0 sc_out sc_lv 16 signal 14 } 
	{ C_11_address1 sc_out sc_lv 11 signal 14 } 
	{ C_11_ce1 sc_out sc_logic 1 signal 14 } 
	{ C_11_we1 sc_out sc_logic 1 signal 14 } 
	{ C_11_d1 sc_out sc_lv 16 signal 14 } 
	{ C_12_address0 sc_out sc_lv 11 signal 15 } 
	{ C_12_ce0 sc_out sc_logic 1 signal 15 } 
	{ C_12_we0 sc_out sc_logic 1 signal 15 } 
	{ C_12_d0 sc_out sc_lv 16 signal 15 } 
	{ C_12_address1 sc_out sc_lv 11 signal 15 } 
	{ C_12_ce1 sc_out sc_logic 1 signal 15 } 
	{ C_12_we1 sc_out sc_logic 1 signal 15 } 
	{ C_12_d1 sc_out sc_lv 16 signal 15 } 
	{ C_13_address0 sc_out sc_lv 11 signal 16 } 
	{ C_13_ce0 sc_out sc_logic 1 signal 16 } 
	{ C_13_we0 sc_out sc_logic 1 signal 16 } 
	{ C_13_d0 sc_out sc_lv 16 signal 16 } 
	{ C_13_address1 sc_out sc_lv 11 signal 16 } 
	{ C_13_ce1 sc_out sc_logic 1 signal 16 } 
	{ C_13_we1 sc_out sc_logic 1 signal 16 } 
	{ C_13_d1 sc_out sc_lv 16 signal 16 } 
	{ C_14_address0 sc_out sc_lv 11 signal 17 } 
	{ C_14_ce0 sc_out sc_logic 1 signal 17 } 
	{ C_14_we0 sc_out sc_logic 1 signal 17 } 
	{ C_14_d0 sc_out sc_lv 16 signal 17 } 
	{ C_14_address1 sc_out sc_lv 11 signal 17 } 
	{ C_14_ce1 sc_out sc_logic 1 signal 17 } 
	{ C_14_we1 sc_out sc_logic 1 signal 17 } 
	{ C_14_d1 sc_out sc_lv 16 signal 17 } 
	{ C_15_address0 sc_out sc_lv 11 signal 18 } 
	{ C_15_ce0 sc_out sc_logic 1 signal 18 } 
	{ C_15_we0 sc_out sc_logic 1 signal 18 } 
	{ C_15_d0 sc_out sc_lv 16 signal 18 } 
	{ C_15_address1 sc_out sc_lv 11 signal 18 } 
	{ C_15_ce1 sc_out sc_logic 1 signal 18 } 
	{ C_15_we1 sc_out sc_logic 1 signal 18 } 
	{ C_15_d1 sc_out sc_lv 16 signal 18 } 
	{ bufC_93_address0 sc_out sc_lv 4 signal 19 } 
	{ bufC_93_ce0 sc_out sc_logic 1 signal 19 } 
	{ bufC_93_q0 sc_in sc_lv 32 signal 19 } 
	{ bufC_125_address0 sc_out sc_lv 4 signal 20 } 
	{ bufC_125_ce0 sc_out sc_logic 1 signal 20 } 
	{ bufC_125_q0 sc_in sc_lv 32 signal 20 } 
	{ or_ln295_28 sc_in sc_lv 15 signal 21 } 
	{ bufC_92_address0 sc_out sc_lv 4 signal 22 } 
	{ bufC_92_ce0 sc_out sc_logic 1 signal 22 } 
	{ bufC_92_q0 sc_in sc_lv 32 signal 22 } 
	{ bufC_124_address0 sc_out sc_lv 4 signal 23 } 
	{ bufC_124_ce0 sc_out sc_logic 1 signal 23 } 
	{ bufC_124_q0 sc_in sc_lv 32 signal 23 } 
	{ or_ln295_27 sc_in sc_lv 15 signal 24 } 
	{ bufC_91_address0 sc_out sc_lv 4 signal 25 } 
	{ bufC_91_ce0 sc_out sc_logic 1 signal 25 } 
	{ bufC_91_q0 sc_in sc_lv 32 signal 25 } 
	{ bufC_123_address0 sc_out sc_lv 4 signal 26 } 
	{ bufC_123_ce0 sc_out sc_logic 1 signal 26 } 
	{ bufC_123_q0 sc_in sc_lv 32 signal 26 } 
	{ or_ln295_26 sc_in sc_lv 15 signal 27 } 
	{ bufC_90_address0 sc_out sc_lv 4 signal 28 } 
	{ bufC_90_ce0 sc_out sc_logic 1 signal 28 } 
	{ bufC_90_q0 sc_in sc_lv 32 signal 28 } 
	{ bufC_122_address0 sc_out sc_lv 4 signal 29 } 
	{ bufC_122_ce0 sc_out sc_logic 1 signal 29 } 
	{ bufC_122_q0 sc_in sc_lv 32 signal 29 } 
	{ or_ln295_25 sc_in sc_lv 15 signal 30 } 
	{ bufC_89_address0 sc_out sc_lv 4 signal 31 } 
	{ bufC_89_ce0 sc_out sc_logic 1 signal 31 } 
	{ bufC_89_q0 sc_in sc_lv 32 signal 31 } 
	{ bufC_121_address0 sc_out sc_lv 4 signal 32 } 
	{ bufC_121_ce0 sc_out sc_logic 1 signal 32 } 
	{ bufC_121_q0 sc_in sc_lv 32 signal 32 } 
	{ or_ln295_24 sc_in sc_lv 15 signal 33 } 
	{ bufC_88_address0 sc_out sc_lv 4 signal 34 } 
	{ bufC_88_ce0 sc_out sc_logic 1 signal 34 } 
	{ bufC_88_q0 sc_in sc_lv 32 signal 34 } 
	{ bufC_120_address0 sc_out sc_lv 4 signal 35 } 
	{ bufC_120_ce0 sc_out sc_logic 1 signal 35 } 
	{ bufC_120_q0 sc_in sc_lv 32 signal 35 } 
	{ or_ln295_23 sc_in sc_lv 15 signal 36 } 
	{ bufC_87_address0 sc_out sc_lv 4 signal 37 } 
	{ bufC_87_ce0 sc_out sc_logic 1 signal 37 } 
	{ bufC_87_q0 sc_in sc_lv 32 signal 37 } 
	{ bufC_119_address0 sc_out sc_lv 4 signal 38 } 
	{ bufC_119_ce0 sc_out sc_logic 1 signal 38 } 
	{ bufC_119_q0 sc_in sc_lv 32 signal 38 } 
	{ or_ln295_22 sc_in sc_lv 15 signal 39 } 
	{ bufC_86_address0 sc_out sc_lv 4 signal 40 } 
	{ bufC_86_ce0 sc_out sc_logic 1 signal 40 } 
	{ bufC_86_q0 sc_in sc_lv 32 signal 40 } 
	{ bufC_118_address0 sc_out sc_lv 4 signal 41 } 
	{ bufC_118_ce0 sc_out sc_logic 1 signal 41 } 
	{ bufC_118_q0 sc_in sc_lv 32 signal 41 } 
	{ or_ln295_21 sc_in sc_lv 15 signal 42 } 
	{ bufC_85_address0 sc_out sc_lv 4 signal 43 } 
	{ bufC_85_ce0 sc_out sc_logic 1 signal 43 } 
	{ bufC_85_q0 sc_in sc_lv 32 signal 43 } 
	{ bufC_117_address0 sc_out sc_lv 4 signal 44 } 
	{ bufC_117_ce0 sc_out sc_logic 1 signal 44 } 
	{ bufC_117_q0 sc_in sc_lv 32 signal 44 } 
	{ or_ln295_20 sc_in sc_lv 15 signal 45 } 
	{ bufC_84_address0 sc_out sc_lv 4 signal 46 } 
	{ bufC_84_ce0 sc_out sc_logic 1 signal 46 } 
	{ bufC_84_q0 sc_in sc_lv 32 signal 46 } 
	{ bufC_116_address0 sc_out sc_lv 4 signal 47 } 
	{ bufC_116_ce0 sc_out sc_logic 1 signal 47 } 
	{ bufC_116_q0 sc_in sc_lv 32 signal 47 } 
	{ or_ln295_19 sc_in sc_lv 15 signal 48 } 
	{ bufC_83_address0 sc_out sc_lv 4 signal 49 } 
	{ bufC_83_ce0 sc_out sc_logic 1 signal 49 } 
	{ bufC_83_q0 sc_in sc_lv 32 signal 49 } 
	{ bufC_115_address0 sc_out sc_lv 4 signal 50 } 
	{ bufC_115_ce0 sc_out sc_logic 1 signal 50 } 
	{ bufC_115_q0 sc_in sc_lv 32 signal 50 } 
	{ or_ln295_18 sc_in sc_lv 15 signal 51 } 
	{ bufC_82_address0 sc_out sc_lv 4 signal 52 } 
	{ bufC_82_ce0 sc_out sc_logic 1 signal 52 } 
	{ bufC_82_q0 sc_in sc_lv 32 signal 52 } 
	{ bufC_114_address0 sc_out sc_lv 4 signal 53 } 
	{ bufC_114_ce0 sc_out sc_logic 1 signal 53 } 
	{ bufC_114_q0 sc_in sc_lv 32 signal 53 } 
	{ or_ln295_17 sc_in sc_lv 15 signal 54 } 
	{ bufC_81_address0 sc_out sc_lv 4 signal 55 } 
	{ bufC_81_ce0 sc_out sc_logic 1 signal 55 } 
	{ bufC_81_q0 sc_in sc_lv 32 signal 55 } 
	{ bufC_113_address0 sc_out sc_lv 4 signal 56 } 
	{ bufC_113_ce0 sc_out sc_logic 1 signal 56 } 
	{ bufC_113_q0 sc_in sc_lv 32 signal 56 } 
	{ or_ln295_16 sc_in sc_lv 15 signal 57 } 
	{ bufC_80_address0 sc_out sc_lv 4 signal 58 } 
	{ bufC_80_ce0 sc_out sc_logic 1 signal 58 } 
	{ bufC_80_q0 sc_in sc_lv 32 signal 58 } 
	{ bufC_112_address0 sc_out sc_lv 4 signal 59 } 
	{ bufC_112_ce0 sc_out sc_logic 1 signal 59 } 
	{ bufC_112_q0 sc_in sc_lv 32 signal 59 } 
	{ or_ln295_15 sc_in sc_lv 15 signal 60 } 
	{ bufC_79_address0 sc_out sc_lv 4 signal 61 } 
	{ bufC_79_ce0 sc_out sc_logic 1 signal 61 } 
	{ bufC_79_q0 sc_in sc_lv 32 signal 61 } 
	{ bufC_111_address0 sc_out sc_lv 4 signal 62 } 
	{ bufC_111_ce0 sc_out sc_logic 1 signal 62 } 
	{ bufC_111_q0 sc_in sc_lv 32 signal 62 } 
	{ or_ln295_14 sc_in sc_lv 15 signal 63 } 
	{ bufC_78_address0 sc_out sc_lv 4 signal 64 } 
	{ bufC_78_ce0 sc_out sc_logic 1 signal 64 } 
	{ bufC_78_q0 sc_in sc_lv 32 signal 64 } 
	{ bufC_110_address0 sc_out sc_lv 4 signal 65 } 
	{ bufC_110_ce0 sc_out sc_logic 1 signal 65 } 
	{ bufC_110_q0 sc_in sc_lv 32 signal 65 } 
	{ or_ln295_13 sc_in sc_lv 15 signal 66 } 
	{ bufC_77_address0 sc_out sc_lv 4 signal 67 } 
	{ bufC_77_ce0 sc_out sc_logic 1 signal 67 } 
	{ bufC_77_q0 sc_in sc_lv 32 signal 67 } 
	{ bufC_109_address0 sc_out sc_lv 4 signal 68 } 
	{ bufC_109_ce0 sc_out sc_logic 1 signal 68 } 
	{ bufC_109_q0 sc_in sc_lv 32 signal 68 } 
	{ or_ln295_12 sc_in sc_lv 15 signal 69 } 
	{ bufC_76_address0 sc_out sc_lv 4 signal 70 } 
	{ bufC_76_ce0 sc_out sc_logic 1 signal 70 } 
	{ bufC_76_q0 sc_in sc_lv 32 signal 70 } 
	{ bufC_108_address0 sc_out sc_lv 4 signal 71 } 
	{ bufC_108_ce0 sc_out sc_logic 1 signal 71 } 
	{ bufC_108_q0 sc_in sc_lv 32 signal 71 } 
	{ or_ln295_11 sc_in sc_lv 15 signal 72 } 
	{ bufC_75_address0 sc_out sc_lv 4 signal 73 } 
	{ bufC_75_ce0 sc_out sc_logic 1 signal 73 } 
	{ bufC_75_q0 sc_in sc_lv 32 signal 73 } 
	{ bufC_107_address0 sc_out sc_lv 4 signal 74 } 
	{ bufC_107_ce0 sc_out sc_logic 1 signal 74 } 
	{ bufC_107_q0 sc_in sc_lv 32 signal 74 } 
	{ or_ln295_10 sc_in sc_lv 15 signal 75 } 
	{ bufC_74_address0 sc_out sc_lv 4 signal 76 } 
	{ bufC_74_ce0 sc_out sc_logic 1 signal 76 } 
	{ bufC_74_q0 sc_in sc_lv 32 signal 76 } 
	{ bufC_106_address0 sc_out sc_lv 4 signal 77 } 
	{ bufC_106_ce0 sc_out sc_logic 1 signal 77 } 
	{ bufC_106_q0 sc_in sc_lv 32 signal 77 } 
	{ or_ln295_s sc_in sc_lv 15 signal 78 } 
	{ bufC_73_address0 sc_out sc_lv 4 signal 79 } 
	{ bufC_73_ce0 sc_out sc_logic 1 signal 79 } 
	{ bufC_73_q0 sc_in sc_lv 32 signal 79 } 
	{ bufC_105_address0 sc_out sc_lv 4 signal 80 } 
	{ bufC_105_ce0 sc_out sc_logic 1 signal 80 } 
	{ bufC_105_q0 sc_in sc_lv 32 signal 80 } 
	{ or_ln295_9 sc_in sc_lv 15 signal 81 } 
	{ bufC_72_address0 sc_out sc_lv 4 signal 82 } 
	{ bufC_72_ce0 sc_out sc_logic 1 signal 82 } 
	{ bufC_72_q0 sc_in sc_lv 32 signal 82 } 
	{ bufC_104_address0 sc_out sc_lv 4 signal 83 } 
	{ bufC_104_ce0 sc_out sc_logic 1 signal 83 } 
	{ bufC_104_q0 sc_in sc_lv 32 signal 83 } 
	{ or_ln295_8 sc_in sc_lv 15 signal 84 } 
	{ bufC_71_address0 sc_out sc_lv 4 signal 85 } 
	{ bufC_71_ce0 sc_out sc_logic 1 signal 85 } 
	{ bufC_71_q0 sc_in sc_lv 32 signal 85 } 
	{ bufC_103_address0 sc_out sc_lv 4 signal 86 } 
	{ bufC_103_ce0 sc_out sc_logic 1 signal 86 } 
	{ bufC_103_q0 sc_in sc_lv 32 signal 86 } 
	{ or_ln295_7 sc_in sc_lv 15 signal 87 } 
	{ bufC_70_address0 sc_out sc_lv 4 signal 88 } 
	{ bufC_70_ce0 sc_out sc_logic 1 signal 88 } 
	{ bufC_70_q0 sc_in sc_lv 32 signal 88 } 
	{ bufC_102_address0 sc_out sc_lv 4 signal 89 } 
	{ bufC_102_ce0 sc_out sc_logic 1 signal 89 } 
	{ bufC_102_q0 sc_in sc_lv 32 signal 89 } 
	{ or_ln295_6 sc_in sc_lv 15 signal 90 } 
	{ bufC_69_address0 sc_out sc_lv 4 signal 91 } 
	{ bufC_69_ce0 sc_out sc_logic 1 signal 91 } 
	{ bufC_69_q0 sc_in sc_lv 32 signal 91 } 
	{ bufC_101_address0 sc_out sc_lv 4 signal 92 } 
	{ bufC_101_ce0 sc_out sc_logic 1 signal 92 } 
	{ bufC_101_q0 sc_in sc_lv 32 signal 92 } 
	{ or_ln295_5 sc_in sc_lv 15 signal 93 } 
	{ bufC_68_address0 sc_out sc_lv 4 signal 94 } 
	{ bufC_68_ce0 sc_out sc_logic 1 signal 94 } 
	{ bufC_68_q0 sc_in sc_lv 32 signal 94 } 
	{ bufC_100_address0 sc_out sc_lv 4 signal 95 } 
	{ bufC_100_ce0 sc_out sc_logic 1 signal 95 } 
	{ bufC_100_q0 sc_in sc_lv 32 signal 95 } 
	{ or_ln295_4 sc_in sc_lv 15 signal 96 } 
	{ bufC_67_address0 sc_out sc_lv 4 signal 97 } 
	{ bufC_67_ce0 sc_out sc_logic 1 signal 97 } 
	{ bufC_67_q0 sc_in sc_lv 32 signal 97 } 
	{ bufC_99_address0 sc_out sc_lv 4 signal 98 } 
	{ bufC_99_ce0 sc_out sc_logic 1 signal 98 } 
	{ bufC_99_q0 sc_in sc_lv 32 signal 98 } 
	{ or_ln295_3 sc_in sc_lv 15 signal 99 } 
	{ bufC_66_address0 sc_out sc_lv 4 signal 100 } 
	{ bufC_66_ce0 sc_out sc_logic 1 signal 100 } 
	{ bufC_66_q0 sc_in sc_lv 32 signal 100 } 
	{ bufC_98_address0 sc_out sc_lv 4 signal 101 } 
	{ bufC_98_ce0 sc_out sc_logic 1 signal 101 } 
	{ bufC_98_q0 sc_in sc_lv 32 signal 101 } 
	{ or_ln295_2 sc_in sc_lv 15 signal 102 } 
	{ bufC_65_address0 sc_out sc_lv 4 signal 103 } 
	{ bufC_65_ce0 sc_out sc_logic 1 signal 103 } 
	{ bufC_65_q0 sc_in sc_lv 32 signal 103 } 
	{ bufC_97_address0 sc_out sc_lv 4 signal 104 } 
	{ bufC_97_ce0 sc_out sc_logic 1 signal 104 } 
	{ bufC_97_q0 sc_in sc_lv 32 signal 104 } 
	{ or_ln295_1 sc_in sc_lv 15 signal 105 } 
	{ bufC_64_address0 sc_out sc_lv 4 signal 106 } 
	{ bufC_64_ce0 sc_out sc_logic 1 signal 106 } 
	{ bufC_64_q0 sc_in sc_lv 32 signal 106 } 
	{ bufC_96_address0 sc_out sc_lv 4 signal 107 } 
	{ bufC_96_ce0 sc_out sc_logic 1 signal 107 } 
	{ bufC_96_q0 sc_in sc_lv 32 signal 107 } 
	{ or_ln4 sc_in sc_lv 15 signal 108 } 
	{ empty_20 sc_in sc_lv 15 signal 109 } 
	{ empty_21 sc_in sc_lv 15 signal 110 } 
	{ bufC_address0 sc_out sc_lv 4 signal 111 } 
	{ bufC_ce0 sc_out sc_logic 1 signal 111 } 
	{ bufC_q0 sc_in sc_lv 32 signal 111 } 
	{ bufC_95_address0 sc_out sc_lv 4 signal 112 } 
	{ bufC_95_ce0 sc_out sc_logic 1 signal 112 } 
	{ bufC_95_q0 sc_in sc_lv 32 signal 112 } 
	{ empty sc_in sc_lv 15 signal 113 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bufC_94_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_94", "role": "address0" }} , 
 	{ "name": "bufC_94_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_94", "role": "ce0" }} , 
 	{ "name": "bufC_94_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_94", "role": "q0" }} , 
 	{ "name": "bufC_126_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_126", "role": "address0" }} , 
 	{ "name": "bufC_126_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_126", "role": "ce0" }} , 
 	{ "name": "bufC_126_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_126", "role": "q0" }} , 
 	{ "name": "or_ln295_29", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln295_29", "role": "default" }} , 
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
 	{ "name": "bufC_93_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_93", "role": "address0" }} , 
 	{ "name": "bufC_93_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_93", "role": "ce0" }} , 
 	{ "name": "bufC_93_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_93", "role": "q0" }} , 
 	{ "name": "bufC_125_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_125", "role": "address0" }} , 
 	{ "name": "bufC_125_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_125", "role": "ce0" }} , 
 	{ "name": "bufC_125_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_125", "role": "q0" }} , 
 	{ "name": "or_ln295_28", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln295_28", "role": "default" }} , 
 	{ "name": "bufC_92_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_92", "role": "address0" }} , 
 	{ "name": "bufC_92_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_92", "role": "ce0" }} , 
 	{ "name": "bufC_92_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_92", "role": "q0" }} , 
 	{ "name": "bufC_124_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_124", "role": "address0" }} , 
 	{ "name": "bufC_124_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_124", "role": "ce0" }} , 
 	{ "name": "bufC_124_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_124", "role": "q0" }} , 
 	{ "name": "or_ln295_27", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln295_27", "role": "default" }} , 
 	{ "name": "bufC_91_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_91", "role": "address0" }} , 
 	{ "name": "bufC_91_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_91", "role": "ce0" }} , 
 	{ "name": "bufC_91_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_91", "role": "q0" }} , 
 	{ "name": "bufC_123_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_123", "role": "address0" }} , 
 	{ "name": "bufC_123_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_123", "role": "ce0" }} , 
 	{ "name": "bufC_123_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_123", "role": "q0" }} , 
 	{ "name": "or_ln295_26", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln295_26", "role": "default" }} , 
 	{ "name": "bufC_90_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_90", "role": "address0" }} , 
 	{ "name": "bufC_90_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_90", "role": "ce0" }} , 
 	{ "name": "bufC_90_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_90", "role": "q0" }} , 
 	{ "name": "bufC_122_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_122", "role": "address0" }} , 
 	{ "name": "bufC_122_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_122", "role": "ce0" }} , 
 	{ "name": "bufC_122_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_122", "role": "q0" }} , 
 	{ "name": "or_ln295_25", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln295_25", "role": "default" }} , 
 	{ "name": "bufC_89_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_89", "role": "address0" }} , 
 	{ "name": "bufC_89_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_89", "role": "ce0" }} , 
 	{ "name": "bufC_89_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_89", "role": "q0" }} , 
 	{ "name": "bufC_121_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_121", "role": "address0" }} , 
 	{ "name": "bufC_121_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_121", "role": "ce0" }} , 
 	{ "name": "bufC_121_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_121", "role": "q0" }} , 
 	{ "name": "or_ln295_24", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln295_24", "role": "default" }} , 
 	{ "name": "bufC_88_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_88", "role": "address0" }} , 
 	{ "name": "bufC_88_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_88", "role": "ce0" }} , 
 	{ "name": "bufC_88_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_88", "role": "q0" }} , 
 	{ "name": "bufC_120_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_120", "role": "address0" }} , 
 	{ "name": "bufC_120_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_120", "role": "ce0" }} , 
 	{ "name": "bufC_120_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_120", "role": "q0" }} , 
 	{ "name": "or_ln295_23", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln295_23", "role": "default" }} , 
 	{ "name": "bufC_87_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_87", "role": "address0" }} , 
 	{ "name": "bufC_87_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_87", "role": "ce0" }} , 
 	{ "name": "bufC_87_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_87", "role": "q0" }} , 
 	{ "name": "bufC_119_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_119", "role": "address0" }} , 
 	{ "name": "bufC_119_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_119", "role": "ce0" }} , 
 	{ "name": "bufC_119_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_119", "role": "q0" }} , 
 	{ "name": "or_ln295_22", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln295_22", "role": "default" }} , 
 	{ "name": "bufC_86_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_86", "role": "address0" }} , 
 	{ "name": "bufC_86_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_86", "role": "ce0" }} , 
 	{ "name": "bufC_86_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_86", "role": "q0" }} , 
 	{ "name": "bufC_118_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_118", "role": "address0" }} , 
 	{ "name": "bufC_118_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_118", "role": "ce0" }} , 
 	{ "name": "bufC_118_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_118", "role": "q0" }} , 
 	{ "name": "or_ln295_21", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln295_21", "role": "default" }} , 
 	{ "name": "bufC_85_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_85", "role": "address0" }} , 
 	{ "name": "bufC_85_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_85", "role": "ce0" }} , 
 	{ "name": "bufC_85_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_85", "role": "q0" }} , 
 	{ "name": "bufC_117_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_117", "role": "address0" }} , 
 	{ "name": "bufC_117_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_117", "role": "ce0" }} , 
 	{ "name": "bufC_117_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_117", "role": "q0" }} , 
 	{ "name": "or_ln295_20", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln295_20", "role": "default" }} , 
 	{ "name": "bufC_84_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_84", "role": "address0" }} , 
 	{ "name": "bufC_84_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_84", "role": "ce0" }} , 
 	{ "name": "bufC_84_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_84", "role": "q0" }} , 
 	{ "name": "bufC_116_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_116", "role": "address0" }} , 
 	{ "name": "bufC_116_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_116", "role": "ce0" }} , 
 	{ "name": "bufC_116_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_116", "role": "q0" }} , 
 	{ "name": "or_ln295_19", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln295_19", "role": "default" }} , 
 	{ "name": "bufC_83_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_83", "role": "address0" }} , 
 	{ "name": "bufC_83_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_83", "role": "ce0" }} , 
 	{ "name": "bufC_83_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_83", "role": "q0" }} , 
 	{ "name": "bufC_115_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_115", "role": "address0" }} , 
 	{ "name": "bufC_115_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_115", "role": "ce0" }} , 
 	{ "name": "bufC_115_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_115", "role": "q0" }} , 
 	{ "name": "or_ln295_18", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln295_18", "role": "default" }} , 
 	{ "name": "bufC_82_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_82", "role": "address0" }} , 
 	{ "name": "bufC_82_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_82", "role": "ce0" }} , 
 	{ "name": "bufC_82_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_82", "role": "q0" }} , 
 	{ "name": "bufC_114_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_114", "role": "address0" }} , 
 	{ "name": "bufC_114_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_114", "role": "ce0" }} , 
 	{ "name": "bufC_114_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_114", "role": "q0" }} , 
 	{ "name": "or_ln295_17", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln295_17", "role": "default" }} , 
 	{ "name": "bufC_81_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_81", "role": "address0" }} , 
 	{ "name": "bufC_81_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_81", "role": "ce0" }} , 
 	{ "name": "bufC_81_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_81", "role": "q0" }} , 
 	{ "name": "bufC_113_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_113", "role": "address0" }} , 
 	{ "name": "bufC_113_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_113", "role": "ce0" }} , 
 	{ "name": "bufC_113_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_113", "role": "q0" }} , 
 	{ "name": "or_ln295_16", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln295_16", "role": "default" }} , 
 	{ "name": "bufC_80_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_80", "role": "address0" }} , 
 	{ "name": "bufC_80_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_80", "role": "ce0" }} , 
 	{ "name": "bufC_80_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_80", "role": "q0" }} , 
 	{ "name": "bufC_112_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_112", "role": "address0" }} , 
 	{ "name": "bufC_112_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_112", "role": "ce0" }} , 
 	{ "name": "bufC_112_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_112", "role": "q0" }} , 
 	{ "name": "or_ln295_15", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln295_15", "role": "default" }} , 
 	{ "name": "bufC_79_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_79", "role": "address0" }} , 
 	{ "name": "bufC_79_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_79", "role": "ce0" }} , 
 	{ "name": "bufC_79_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_79", "role": "q0" }} , 
 	{ "name": "bufC_111_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_111", "role": "address0" }} , 
 	{ "name": "bufC_111_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_111", "role": "ce0" }} , 
 	{ "name": "bufC_111_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_111", "role": "q0" }} , 
 	{ "name": "or_ln295_14", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln295_14", "role": "default" }} , 
 	{ "name": "bufC_78_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_78", "role": "address0" }} , 
 	{ "name": "bufC_78_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_78", "role": "ce0" }} , 
 	{ "name": "bufC_78_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_78", "role": "q0" }} , 
 	{ "name": "bufC_110_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_110", "role": "address0" }} , 
 	{ "name": "bufC_110_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_110", "role": "ce0" }} , 
 	{ "name": "bufC_110_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_110", "role": "q0" }} , 
 	{ "name": "or_ln295_13", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln295_13", "role": "default" }} , 
 	{ "name": "bufC_77_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_77", "role": "address0" }} , 
 	{ "name": "bufC_77_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_77", "role": "ce0" }} , 
 	{ "name": "bufC_77_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_77", "role": "q0" }} , 
 	{ "name": "bufC_109_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_109", "role": "address0" }} , 
 	{ "name": "bufC_109_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_109", "role": "ce0" }} , 
 	{ "name": "bufC_109_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_109", "role": "q0" }} , 
 	{ "name": "or_ln295_12", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln295_12", "role": "default" }} , 
 	{ "name": "bufC_76_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_76", "role": "address0" }} , 
 	{ "name": "bufC_76_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_76", "role": "ce0" }} , 
 	{ "name": "bufC_76_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_76", "role": "q0" }} , 
 	{ "name": "bufC_108_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_108", "role": "address0" }} , 
 	{ "name": "bufC_108_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_108", "role": "ce0" }} , 
 	{ "name": "bufC_108_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_108", "role": "q0" }} , 
 	{ "name": "or_ln295_11", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln295_11", "role": "default" }} , 
 	{ "name": "bufC_75_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_75", "role": "address0" }} , 
 	{ "name": "bufC_75_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_75", "role": "ce0" }} , 
 	{ "name": "bufC_75_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_75", "role": "q0" }} , 
 	{ "name": "bufC_107_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_107", "role": "address0" }} , 
 	{ "name": "bufC_107_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_107", "role": "ce0" }} , 
 	{ "name": "bufC_107_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_107", "role": "q0" }} , 
 	{ "name": "or_ln295_10", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln295_10", "role": "default" }} , 
 	{ "name": "bufC_74_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_74", "role": "address0" }} , 
 	{ "name": "bufC_74_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_74", "role": "ce0" }} , 
 	{ "name": "bufC_74_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_74", "role": "q0" }} , 
 	{ "name": "bufC_106_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_106", "role": "address0" }} , 
 	{ "name": "bufC_106_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_106", "role": "ce0" }} , 
 	{ "name": "bufC_106_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_106", "role": "q0" }} , 
 	{ "name": "or_ln295_s", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln295_s", "role": "default" }} , 
 	{ "name": "bufC_73_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_73", "role": "address0" }} , 
 	{ "name": "bufC_73_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_73", "role": "ce0" }} , 
 	{ "name": "bufC_73_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_73", "role": "q0" }} , 
 	{ "name": "bufC_105_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_105", "role": "address0" }} , 
 	{ "name": "bufC_105_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_105", "role": "ce0" }} , 
 	{ "name": "bufC_105_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_105", "role": "q0" }} , 
 	{ "name": "or_ln295_9", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln295_9", "role": "default" }} , 
 	{ "name": "bufC_72_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_72", "role": "address0" }} , 
 	{ "name": "bufC_72_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_72", "role": "ce0" }} , 
 	{ "name": "bufC_72_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_72", "role": "q0" }} , 
 	{ "name": "bufC_104_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_104", "role": "address0" }} , 
 	{ "name": "bufC_104_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_104", "role": "ce0" }} , 
 	{ "name": "bufC_104_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_104", "role": "q0" }} , 
 	{ "name": "or_ln295_8", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln295_8", "role": "default" }} , 
 	{ "name": "bufC_71_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_71", "role": "address0" }} , 
 	{ "name": "bufC_71_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_71", "role": "ce0" }} , 
 	{ "name": "bufC_71_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_71", "role": "q0" }} , 
 	{ "name": "bufC_103_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_103", "role": "address0" }} , 
 	{ "name": "bufC_103_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_103", "role": "ce0" }} , 
 	{ "name": "bufC_103_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_103", "role": "q0" }} , 
 	{ "name": "or_ln295_7", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln295_7", "role": "default" }} , 
 	{ "name": "bufC_70_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_70", "role": "address0" }} , 
 	{ "name": "bufC_70_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_70", "role": "ce0" }} , 
 	{ "name": "bufC_70_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_70", "role": "q0" }} , 
 	{ "name": "bufC_102_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_102", "role": "address0" }} , 
 	{ "name": "bufC_102_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_102", "role": "ce0" }} , 
 	{ "name": "bufC_102_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_102", "role": "q0" }} , 
 	{ "name": "or_ln295_6", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln295_6", "role": "default" }} , 
 	{ "name": "bufC_69_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_69", "role": "address0" }} , 
 	{ "name": "bufC_69_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_69", "role": "ce0" }} , 
 	{ "name": "bufC_69_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_69", "role": "q0" }} , 
 	{ "name": "bufC_101_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_101", "role": "address0" }} , 
 	{ "name": "bufC_101_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_101", "role": "ce0" }} , 
 	{ "name": "bufC_101_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_101", "role": "q0" }} , 
 	{ "name": "or_ln295_5", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln295_5", "role": "default" }} , 
 	{ "name": "bufC_68_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_68", "role": "address0" }} , 
 	{ "name": "bufC_68_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_68", "role": "ce0" }} , 
 	{ "name": "bufC_68_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_68", "role": "q0" }} , 
 	{ "name": "bufC_100_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_100", "role": "address0" }} , 
 	{ "name": "bufC_100_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_100", "role": "ce0" }} , 
 	{ "name": "bufC_100_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_100", "role": "q0" }} , 
 	{ "name": "or_ln295_4", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln295_4", "role": "default" }} , 
 	{ "name": "bufC_67_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_67", "role": "address0" }} , 
 	{ "name": "bufC_67_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_67", "role": "ce0" }} , 
 	{ "name": "bufC_67_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_67", "role": "q0" }} , 
 	{ "name": "bufC_99_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_99", "role": "address0" }} , 
 	{ "name": "bufC_99_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_99", "role": "ce0" }} , 
 	{ "name": "bufC_99_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_99", "role": "q0" }} , 
 	{ "name": "or_ln295_3", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln295_3", "role": "default" }} , 
 	{ "name": "bufC_66_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_66", "role": "address0" }} , 
 	{ "name": "bufC_66_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_66", "role": "ce0" }} , 
 	{ "name": "bufC_66_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_66", "role": "q0" }} , 
 	{ "name": "bufC_98_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_98", "role": "address0" }} , 
 	{ "name": "bufC_98_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_98", "role": "ce0" }} , 
 	{ "name": "bufC_98_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_98", "role": "q0" }} , 
 	{ "name": "or_ln295_2", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln295_2", "role": "default" }} , 
 	{ "name": "bufC_65_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_65", "role": "address0" }} , 
 	{ "name": "bufC_65_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_65", "role": "ce0" }} , 
 	{ "name": "bufC_65_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_65", "role": "q0" }} , 
 	{ "name": "bufC_97_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_97", "role": "address0" }} , 
 	{ "name": "bufC_97_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_97", "role": "ce0" }} , 
 	{ "name": "bufC_97_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_97", "role": "q0" }} , 
 	{ "name": "or_ln295_1", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln295_1", "role": "default" }} , 
 	{ "name": "bufC_64_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_64", "role": "address0" }} , 
 	{ "name": "bufC_64_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_64", "role": "ce0" }} , 
 	{ "name": "bufC_64_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_64", "role": "q0" }} , 
 	{ "name": "bufC_96_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_96", "role": "address0" }} , 
 	{ "name": "bufC_96_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_96", "role": "ce0" }} , 
 	{ "name": "bufC_96_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_96", "role": "q0" }} , 
 	{ "name": "or_ln4", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "or_ln4", "role": "default" }} , 
 	{ "name": "empty_20", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "empty_20", "role": "default" }} , 
 	{ "name": "empty_21", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "empty_21", "role": "default" }} , 
 	{ "name": "bufC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC", "role": "address0" }} , 
 	{ "name": "bufC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC", "role": "ce0" }} , 
 	{ "name": "bufC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC", "role": "q0" }} , 
 	{ "name": "bufC_95_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bufC_95", "role": "address0" }} , 
 	{ "name": "bufC_95_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bufC_95", "role": "ce0" }} , 
 	{ "name": "bufC_95_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bufC_95", "role": "q0" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "empty", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
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
		empty {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "36", "Max" : "36"}
	, {"Name" : "Interval", "Min" : "33", "Max" : "33"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	bufC_94 { ap_memory {  { bufC_94_address0 mem_address 1 4 }  { bufC_94_ce0 mem_ce 1 1 }  { bufC_94_q0 mem_dout 0 32 } } }
	bufC_126 { ap_memory {  { bufC_126_address0 mem_address 1 4 }  { bufC_126_ce0 mem_ce 1 1 }  { bufC_126_q0 mem_dout 0 32 } } }
	or_ln295_29 { ap_none {  { or_ln295_29 in_data 0 15 } } }
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
	bufC_93 { ap_memory {  { bufC_93_address0 mem_address 1 4 }  { bufC_93_ce0 mem_ce 1 1 }  { bufC_93_q0 mem_dout 0 32 } } }
	bufC_125 { ap_memory {  { bufC_125_address0 mem_address 1 4 }  { bufC_125_ce0 mem_ce 1 1 }  { bufC_125_q0 mem_dout 0 32 } } }
	or_ln295_28 { ap_none {  { or_ln295_28 in_data 0 15 } } }
	bufC_92 { ap_memory {  { bufC_92_address0 mem_address 1 4 }  { bufC_92_ce0 mem_ce 1 1 }  { bufC_92_q0 mem_dout 0 32 } } }
	bufC_124 { ap_memory {  { bufC_124_address0 mem_address 1 4 }  { bufC_124_ce0 mem_ce 1 1 }  { bufC_124_q0 mem_dout 0 32 } } }
	or_ln295_27 { ap_none {  { or_ln295_27 in_data 0 15 } } }
	bufC_91 { ap_memory {  { bufC_91_address0 mem_address 1 4 }  { bufC_91_ce0 mem_ce 1 1 }  { bufC_91_q0 mem_dout 0 32 } } }
	bufC_123 { ap_memory {  { bufC_123_address0 mem_address 1 4 }  { bufC_123_ce0 mem_ce 1 1 }  { bufC_123_q0 mem_dout 0 32 } } }
	or_ln295_26 { ap_none {  { or_ln295_26 in_data 0 15 } } }
	bufC_90 { ap_memory {  { bufC_90_address0 mem_address 1 4 }  { bufC_90_ce0 mem_ce 1 1 }  { bufC_90_q0 mem_dout 0 32 } } }
	bufC_122 { ap_memory {  { bufC_122_address0 mem_address 1 4 }  { bufC_122_ce0 mem_ce 1 1 }  { bufC_122_q0 mem_dout 0 32 } } }
	or_ln295_25 { ap_none {  { or_ln295_25 in_data 0 15 } } }
	bufC_89 { ap_memory {  { bufC_89_address0 mem_address 1 4 }  { bufC_89_ce0 mem_ce 1 1 }  { bufC_89_q0 mem_dout 0 32 } } }
	bufC_121 { ap_memory {  { bufC_121_address0 mem_address 1 4 }  { bufC_121_ce0 mem_ce 1 1 }  { bufC_121_q0 mem_dout 0 32 } } }
	or_ln295_24 { ap_none {  { or_ln295_24 in_data 0 15 } } }
	bufC_88 { ap_memory {  { bufC_88_address0 mem_address 1 4 }  { bufC_88_ce0 mem_ce 1 1 }  { bufC_88_q0 mem_dout 0 32 } } }
	bufC_120 { ap_memory {  { bufC_120_address0 mem_address 1 4 }  { bufC_120_ce0 mem_ce 1 1 }  { bufC_120_q0 mem_dout 0 32 } } }
	or_ln295_23 { ap_none {  { or_ln295_23 in_data 0 15 } } }
	bufC_87 { ap_memory {  { bufC_87_address0 mem_address 1 4 }  { bufC_87_ce0 mem_ce 1 1 }  { bufC_87_q0 mem_dout 0 32 } } }
	bufC_119 { ap_memory {  { bufC_119_address0 mem_address 1 4 }  { bufC_119_ce0 mem_ce 1 1 }  { bufC_119_q0 mem_dout 0 32 } } }
	or_ln295_22 { ap_none {  { or_ln295_22 in_data 0 15 } } }
	bufC_86 { ap_memory {  { bufC_86_address0 mem_address 1 4 }  { bufC_86_ce0 mem_ce 1 1 }  { bufC_86_q0 mem_dout 0 32 } } }
	bufC_118 { ap_memory {  { bufC_118_address0 mem_address 1 4 }  { bufC_118_ce0 mem_ce 1 1 }  { bufC_118_q0 mem_dout 0 32 } } }
	or_ln295_21 { ap_none {  { or_ln295_21 in_data 0 15 } } }
	bufC_85 { ap_memory {  { bufC_85_address0 mem_address 1 4 }  { bufC_85_ce0 mem_ce 1 1 }  { bufC_85_q0 mem_dout 0 32 } } }
	bufC_117 { ap_memory {  { bufC_117_address0 mem_address 1 4 }  { bufC_117_ce0 mem_ce 1 1 }  { bufC_117_q0 mem_dout 0 32 } } }
	or_ln295_20 { ap_none {  { or_ln295_20 in_data 0 15 } } }
	bufC_84 { ap_memory {  { bufC_84_address0 mem_address 1 4 }  { bufC_84_ce0 mem_ce 1 1 }  { bufC_84_q0 mem_dout 0 32 } } }
	bufC_116 { ap_memory {  { bufC_116_address0 mem_address 1 4 }  { bufC_116_ce0 mem_ce 1 1 }  { bufC_116_q0 mem_dout 0 32 } } }
	or_ln295_19 { ap_none {  { or_ln295_19 in_data 0 15 } } }
	bufC_83 { ap_memory {  { bufC_83_address0 mem_address 1 4 }  { bufC_83_ce0 mem_ce 1 1 }  { bufC_83_q0 mem_dout 0 32 } } }
	bufC_115 { ap_memory {  { bufC_115_address0 mem_address 1 4 }  { bufC_115_ce0 mem_ce 1 1 }  { bufC_115_q0 mem_dout 0 32 } } }
	or_ln295_18 { ap_none {  { or_ln295_18 in_data 0 15 } } }
	bufC_82 { ap_memory {  { bufC_82_address0 mem_address 1 4 }  { bufC_82_ce0 mem_ce 1 1 }  { bufC_82_q0 mem_dout 0 32 } } }
	bufC_114 { ap_memory {  { bufC_114_address0 mem_address 1 4 }  { bufC_114_ce0 mem_ce 1 1 }  { bufC_114_q0 mem_dout 0 32 } } }
	or_ln295_17 { ap_none {  { or_ln295_17 in_data 0 15 } } }
	bufC_81 { ap_memory {  { bufC_81_address0 mem_address 1 4 }  { bufC_81_ce0 mem_ce 1 1 }  { bufC_81_q0 mem_dout 0 32 } } }
	bufC_113 { ap_memory {  { bufC_113_address0 mem_address 1 4 }  { bufC_113_ce0 mem_ce 1 1 }  { bufC_113_q0 mem_dout 0 32 } } }
	or_ln295_16 { ap_none {  { or_ln295_16 in_data 0 15 } } }
	bufC_80 { ap_memory {  { bufC_80_address0 mem_address 1 4 }  { bufC_80_ce0 mem_ce 1 1 }  { bufC_80_q0 mem_dout 0 32 } } }
	bufC_112 { ap_memory {  { bufC_112_address0 mem_address 1 4 }  { bufC_112_ce0 mem_ce 1 1 }  { bufC_112_q0 mem_dout 0 32 } } }
	or_ln295_15 { ap_none {  { or_ln295_15 in_data 0 15 } } }
	bufC_79 { ap_memory {  { bufC_79_address0 mem_address 1 4 }  { bufC_79_ce0 mem_ce 1 1 }  { bufC_79_q0 mem_dout 0 32 } } }
	bufC_111 { ap_memory {  { bufC_111_address0 mem_address 1 4 }  { bufC_111_ce0 mem_ce 1 1 }  { bufC_111_q0 mem_dout 0 32 } } }
	or_ln295_14 { ap_none {  { or_ln295_14 in_data 0 15 } } }
	bufC_78 { ap_memory {  { bufC_78_address0 mem_address 1 4 }  { bufC_78_ce0 mem_ce 1 1 }  { bufC_78_q0 mem_dout 0 32 } } }
	bufC_110 { ap_memory {  { bufC_110_address0 mem_address 1 4 }  { bufC_110_ce0 mem_ce 1 1 }  { bufC_110_q0 mem_dout 0 32 } } }
	or_ln295_13 { ap_none {  { or_ln295_13 in_data 0 15 } } }
	bufC_77 { ap_memory {  { bufC_77_address0 mem_address 1 4 }  { bufC_77_ce0 mem_ce 1 1 }  { bufC_77_q0 mem_dout 0 32 } } }
	bufC_109 { ap_memory {  { bufC_109_address0 mem_address 1 4 }  { bufC_109_ce0 mem_ce 1 1 }  { bufC_109_q0 mem_dout 0 32 } } }
	or_ln295_12 { ap_none {  { or_ln295_12 in_data 0 15 } } }
	bufC_76 { ap_memory {  { bufC_76_address0 mem_address 1 4 }  { bufC_76_ce0 mem_ce 1 1 }  { bufC_76_q0 mem_dout 0 32 } } }
	bufC_108 { ap_memory {  { bufC_108_address0 mem_address 1 4 }  { bufC_108_ce0 mem_ce 1 1 }  { bufC_108_q0 mem_dout 0 32 } } }
	or_ln295_11 { ap_none {  { or_ln295_11 in_data 0 15 } } }
	bufC_75 { ap_memory {  { bufC_75_address0 mem_address 1 4 }  { bufC_75_ce0 mem_ce 1 1 }  { bufC_75_q0 mem_dout 0 32 } } }
	bufC_107 { ap_memory {  { bufC_107_address0 mem_address 1 4 }  { bufC_107_ce0 mem_ce 1 1 }  { bufC_107_q0 mem_dout 0 32 } } }
	or_ln295_10 { ap_none {  { or_ln295_10 in_data 0 15 } } }
	bufC_74 { ap_memory {  { bufC_74_address0 mem_address 1 4 }  { bufC_74_ce0 mem_ce 1 1 }  { bufC_74_q0 mem_dout 0 32 } } }
	bufC_106 { ap_memory {  { bufC_106_address0 mem_address 1 4 }  { bufC_106_ce0 mem_ce 1 1 }  { bufC_106_q0 mem_dout 0 32 } } }
	or_ln295_s { ap_none {  { or_ln295_s in_data 0 15 } } }
	bufC_73 { ap_memory {  { bufC_73_address0 mem_address 1 4 }  { bufC_73_ce0 mem_ce 1 1 }  { bufC_73_q0 mem_dout 0 32 } } }
	bufC_105 { ap_memory {  { bufC_105_address0 mem_address 1 4 }  { bufC_105_ce0 mem_ce 1 1 }  { bufC_105_q0 mem_dout 0 32 } } }
	or_ln295_9 { ap_none {  { or_ln295_9 in_data 0 15 } } }
	bufC_72 { ap_memory {  { bufC_72_address0 mem_address 1 4 }  { bufC_72_ce0 mem_ce 1 1 }  { bufC_72_q0 mem_dout 0 32 } } }
	bufC_104 { ap_memory {  { bufC_104_address0 mem_address 1 4 }  { bufC_104_ce0 mem_ce 1 1 }  { bufC_104_q0 mem_dout 0 32 } } }
	or_ln295_8 { ap_none {  { or_ln295_8 in_data 0 15 } } }
	bufC_71 { ap_memory {  { bufC_71_address0 mem_address 1 4 }  { bufC_71_ce0 mem_ce 1 1 }  { bufC_71_q0 mem_dout 0 32 } } }
	bufC_103 { ap_memory {  { bufC_103_address0 mem_address 1 4 }  { bufC_103_ce0 mem_ce 1 1 }  { bufC_103_q0 mem_dout 0 32 } } }
	or_ln295_7 { ap_none {  { or_ln295_7 in_data 0 15 } } }
	bufC_70 { ap_memory {  { bufC_70_address0 mem_address 1 4 }  { bufC_70_ce0 mem_ce 1 1 }  { bufC_70_q0 mem_dout 0 32 } } }
	bufC_102 { ap_memory {  { bufC_102_address0 mem_address 1 4 }  { bufC_102_ce0 mem_ce 1 1 }  { bufC_102_q0 mem_dout 0 32 } } }
	or_ln295_6 { ap_none {  { or_ln295_6 in_data 0 15 } } }
	bufC_69 { ap_memory {  { bufC_69_address0 mem_address 1 4 }  { bufC_69_ce0 mem_ce 1 1 }  { bufC_69_q0 mem_dout 0 32 } } }
	bufC_101 { ap_memory {  { bufC_101_address0 mem_address 1 4 }  { bufC_101_ce0 mem_ce 1 1 }  { bufC_101_q0 mem_dout 0 32 } } }
	or_ln295_5 { ap_none {  { or_ln295_5 in_data 0 15 } } }
	bufC_68 { ap_memory {  { bufC_68_address0 mem_address 1 4 }  { bufC_68_ce0 mem_ce 1 1 }  { bufC_68_q0 mem_dout 0 32 } } }
	bufC_100 { ap_memory {  { bufC_100_address0 mem_address 1 4 }  { bufC_100_ce0 mem_ce 1 1 }  { bufC_100_q0 mem_dout 0 32 } } }
	or_ln295_4 { ap_none {  { or_ln295_4 in_data 0 15 } } }
	bufC_67 { ap_memory {  { bufC_67_address0 mem_address 1 4 }  { bufC_67_ce0 mem_ce 1 1 }  { bufC_67_q0 mem_dout 0 32 } } }
	bufC_99 { ap_memory {  { bufC_99_address0 mem_address 1 4 }  { bufC_99_ce0 mem_ce 1 1 }  { bufC_99_q0 mem_dout 0 32 } } }
	or_ln295_3 { ap_none {  { or_ln295_3 in_data 0 15 } } }
	bufC_66 { ap_memory {  { bufC_66_address0 mem_address 1 4 }  { bufC_66_ce0 mem_ce 1 1 }  { bufC_66_q0 mem_dout 0 32 } } }
	bufC_98 { ap_memory {  { bufC_98_address0 mem_address 1 4 }  { bufC_98_ce0 mem_ce 1 1 }  { bufC_98_q0 mem_dout 0 32 } } }
	or_ln295_2 { ap_none {  { or_ln295_2 in_data 0 15 } } }
	bufC_65 { ap_memory {  { bufC_65_address0 mem_address 1 4 }  { bufC_65_ce0 mem_ce 1 1 }  { bufC_65_q0 mem_dout 0 32 } } }
	bufC_97 { ap_memory {  { bufC_97_address0 mem_address 1 4 }  { bufC_97_ce0 mem_ce 1 1 }  { bufC_97_q0 mem_dout 0 32 } } }
	or_ln295_1 { ap_none {  { or_ln295_1 in_data 0 15 } } }
	bufC_64 { ap_memory {  { bufC_64_address0 mem_address 1 4 }  { bufC_64_ce0 mem_ce 1 1 }  { bufC_64_q0 mem_dout 0 32 } } }
	bufC_96 { ap_memory {  { bufC_96_address0 mem_address 1 4 }  { bufC_96_ce0 mem_ce 1 1 }  { bufC_96_q0 mem_dout 0 32 } } }
	or_ln4 { ap_none {  { or_ln4 in_data 0 15 } } }
	empty_20 { ap_none {  { empty_20 in_data 0 15 } } }
	empty_21 { ap_none {  { empty_21 in_data 0 15 } } }
	bufC { ap_memory {  { bufC_address0 mem_address 1 4 }  { bufC_ce0 mem_ce 1 1 }  { bufC_q0 mem_dout 0 32 } } }
	bufC_95 { ap_memory {  { bufC_95_address0 mem_address 1 4 }  { bufC_95_ce0 mem_ce 1 1 }  { bufC_95_q0 mem_dout 0 32 } } }
	empty { ap_none {  { empty in_data 0 15 } } }
}
