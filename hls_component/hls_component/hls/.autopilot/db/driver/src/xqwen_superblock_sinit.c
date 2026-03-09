// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xqwen_superblock.h"

extern XQwen_superblock_Config XQwen_superblock_ConfigTable[];

#ifdef SDT
XQwen_superblock_Config *XQwen_superblock_LookupConfig(UINTPTR BaseAddress) {
	XQwen_superblock_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XQwen_superblock_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XQwen_superblock_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XQwen_superblock_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XQwen_superblock_Initialize(XQwen_superblock *InstancePtr, UINTPTR BaseAddress) {
	XQwen_superblock_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XQwen_superblock_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XQwen_superblock_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XQwen_superblock_Config *XQwen_superblock_LookupConfig(u16 DeviceId) {
	XQwen_superblock_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XQWEN_SUPERBLOCK_NUM_INSTANCES; Index++) {
		if (XQwen_superblock_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XQwen_superblock_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XQwen_superblock_Initialize(XQwen_superblock *InstancePtr, u16 DeviceId) {
	XQwen_superblock_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XQwen_superblock_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XQwen_superblock_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

