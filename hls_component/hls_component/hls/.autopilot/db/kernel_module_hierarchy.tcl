set ModuleHierarchy {[{
"Name" : "qwen_superblock", "RefName" : "qwen_superblock","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "qwen_linear_layer_U0", "RefName" : "qwen_linear_layer","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_244_1","RefName" : "VITIS_LOOP_244_1","ID" : "2","Type" : "no",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_246_2","RefName" : "VITIS_LOOP_246_2","ID" : "3","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_qwen_linear_layer_Pipeline_VITIS_LOOP_250_3_fu_661", "RefName" : "qwen_linear_layer_Pipeline_VITIS_LOOP_250_3","ID" : "4","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_250_3","RefName" : "VITIS_LOOP_250_3","ID" : "5","Type" : "pipeline"},]},
			{"Name" : "grp_qwen_linear_layer_Pipeline_VITIS_LOOP_291_11_fu_729", "RefName" : "qwen_linear_layer_Pipeline_VITIS_LOOP_291_11","ID" : "6","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_291_11","RefName" : "VITIS_LOOP_291_11","ID" : "7","Type" : "pipeline"},]},],
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_255_5","RefName" : "VITIS_LOOP_255_5","ID" : "8","Type" : "no",
				"SubInsts" : [
				{"Name" : "grp_qwen_linear_layer_Pipeline_VITIS_LOOP_259_6_fu_863", "RefName" : "qwen_linear_layer_Pipeline_VITIS_LOOP_259_6","ID" : "9","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_259_6","RefName" : "VITIS_LOOP_259_6","ID" : "10","Type" : "pipeline"},]},
				{"Name" : "grp_qwen_linear_layer_Pipeline_VITIS_LOOP_268_8_VITIS_LOOP_269_9_VITIS_LOOP_274_10_fu_912", "RefName" : "qwen_linear_layer_Pipeline_VITIS_LOOP_268_8_VITIS_LOOP_269_9_VITIS_LOOP_274_10","ID" : "11","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_268_8_VITIS_LOOP_269_9_VITIS_LOOP_274_10","RefName" : "VITIS_LOOP_268_8_VITIS_LOOP_269_9_VITIS_LOOP_274_10","ID" : "12","Type" : "pipeline"},]},]},]},]},]},
	{"Name" : "qwen_linear_layer_1_U0", "RefName" : "qwen_linear_layer_1","ID" : "13","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_244_1","RefName" : "VITIS_LOOP_244_1","ID" : "14","Type" : "no",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_246_2","RefName" : "VITIS_LOOP_246_2","ID" : "15","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_qwen_linear_layer_1_Pipeline_VITIS_LOOP_250_3_fu_660", "RefName" : "qwen_linear_layer_1_Pipeline_VITIS_LOOP_250_3","ID" : "16","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_250_3","RefName" : "VITIS_LOOP_250_3","ID" : "17","Type" : "pipeline"},]},
			{"Name" : "grp_qwen_linear_layer_1_Pipeline_VITIS_LOOP_291_11_fu_836", "RefName" : "qwen_linear_layer_1_Pipeline_VITIS_LOOP_291_11","ID" : "18","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_291_11","RefName" : "VITIS_LOOP_291_11","ID" : "19","Type" : "pipeline"},]},],
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_255_5","RefName" : "VITIS_LOOP_255_5","ID" : "20","Type" : "no",
				"SubInsts" : [
				{"Name" : "grp_qwen_linear_layer_1_Pipeline_VITIS_LOOP_259_6_fu_728", "RefName" : "qwen_linear_layer_1_Pipeline_VITIS_LOOP_259_6","ID" : "21","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_259_6","RefName" : "VITIS_LOOP_259_6","ID" : "22","Type" : "pipeline"},]},
				{"Name" : "grp_qwen_linear_layer_1_Pipeline_VITIS_LOOP_268_8_VITIS_LOOP_269_9_VITIS_LOOP_274_10_fu_910", "RefName" : "qwen_linear_layer_1_Pipeline_VITIS_LOOP_268_8_VITIS_LOOP_269_9_VITIS_LOOP_274_10","ID" : "23","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_268_8_VITIS_LOOP_269_9_VITIS_LOOP_274_10","RefName" : "VITIS_LOOP_268_8_VITIS_LOOP_269_9_VITIS_LOOP_274_10","ID" : "24","Type" : "pipeline"},]},]},]},]},]},]
}]}