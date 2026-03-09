// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xqwen_superblock.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XQwen_superblock_CfgInitialize(XQwen_superblock *InstancePtr, XQwen_superblock_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XQwen_superblock_Start(XQwen_superblock *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQwen_superblock_ReadReg(InstancePtr->Control_BaseAddress, XQWEN_SUPERBLOCK_CONTROL_ADDR_AP_CTRL) & 0x80;
    XQwen_superblock_WriteReg(InstancePtr->Control_BaseAddress, XQWEN_SUPERBLOCK_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XQwen_superblock_IsDone(XQwen_superblock *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQwen_superblock_ReadReg(InstancePtr->Control_BaseAddress, XQWEN_SUPERBLOCK_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XQwen_superblock_IsIdle(XQwen_superblock *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQwen_superblock_ReadReg(InstancePtr->Control_BaseAddress, XQWEN_SUPERBLOCK_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XQwen_superblock_IsReady(XQwen_superblock *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQwen_superblock_ReadReg(InstancePtr->Control_BaseAddress, XQWEN_SUPERBLOCK_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XQwen_superblock_EnableAutoRestart(XQwen_superblock *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQwen_superblock_WriteReg(InstancePtr->Control_BaseAddress, XQWEN_SUPERBLOCK_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XQwen_superblock_DisableAutoRestart(XQwen_superblock *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQwen_superblock_WriteReg(InstancePtr->Control_BaseAddress, XQWEN_SUPERBLOCK_CONTROL_ADDR_AP_CTRL, 0);
}

void XQwen_superblock_Set_A(XQwen_superblock *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQwen_superblock_WriteReg(InstancePtr->Control_BaseAddress, XQWEN_SUPERBLOCK_CONTROL_ADDR_A_DATA, (u32)(Data));
    XQwen_superblock_WriteReg(InstancePtr->Control_BaseAddress, XQWEN_SUPERBLOCK_CONTROL_ADDR_A_DATA + 4, (u32)(Data >> 32));
}

u64 XQwen_superblock_Get_A(XQwen_superblock *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQwen_superblock_ReadReg(InstancePtr->Control_BaseAddress, XQWEN_SUPERBLOCK_CONTROL_ADDR_A_DATA);
    Data += (u64)XQwen_superblock_ReadReg(InstancePtr->Control_BaseAddress, XQWEN_SUPERBLOCK_CONTROL_ADDR_A_DATA + 4) << 32;
    return Data;
}

void XQwen_superblock_Set_W1(XQwen_superblock *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQwen_superblock_WriteReg(InstancePtr->Control_BaseAddress, XQWEN_SUPERBLOCK_CONTROL_ADDR_W1_DATA, (u32)(Data));
    XQwen_superblock_WriteReg(InstancePtr->Control_BaseAddress, XQWEN_SUPERBLOCK_CONTROL_ADDR_W1_DATA + 4, (u32)(Data >> 32));
}

u64 XQwen_superblock_Get_W1(XQwen_superblock *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQwen_superblock_ReadReg(InstancePtr->Control_BaseAddress, XQWEN_SUPERBLOCK_CONTROL_ADDR_W1_DATA);
    Data += (u64)XQwen_superblock_ReadReg(InstancePtr->Control_BaseAddress, XQWEN_SUPERBLOCK_CONTROL_ADDR_W1_DATA + 4) << 32;
    return Data;
}

void XQwen_superblock_Set_W2(XQwen_superblock *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQwen_superblock_WriteReg(InstancePtr->Control_BaseAddress, XQWEN_SUPERBLOCK_CONTROL_ADDR_W2_DATA, (u32)(Data));
    XQwen_superblock_WriteReg(InstancePtr->Control_BaseAddress, XQWEN_SUPERBLOCK_CONTROL_ADDR_W2_DATA + 4, (u32)(Data >> 32));
}

u64 XQwen_superblock_Get_W2(XQwen_superblock *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQwen_superblock_ReadReg(InstancePtr->Control_BaseAddress, XQWEN_SUPERBLOCK_CONTROL_ADDR_W2_DATA);
    Data += (u64)XQwen_superblock_ReadReg(InstancePtr->Control_BaseAddress, XQWEN_SUPERBLOCK_CONTROL_ADDR_W2_DATA + 4) << 32;
    return Data;
}

void XQwen_superblock_Set_C(XQwen_superblock *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQwen_superblock_WriteReg(InstancePtr->Control_BaseAddress, XQWEN_SUPERBLOCK_CONTROL_ADDR_C_DATA, (u32)(Data));
    XQwen_superblock_WriteReg(InstancePtr->Control_BaseAddress, XQWEN_SUPERBLOCK_CONTROL_ADDR_C_DATA + 4, (u32)(Data >> 32));
}

u64 XQwen_superblock_Get_C(XQwen_superblock *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQwen_superblock_ReadReg(InstancePtr->Control_BaseAddress, XQWEN_SUPERBLOCK_CONTROL_ADDR_C_DATA);
    Data += (u64)XQwen_superblock_ReadReg(InstancePtr->Control_BaseAddress, XQWEN_SUPERBLOCK_CONTROL_ADDR_C_DATA + 4) << 32;
    return Data;
}

void XQwen_superblock_InterruptGlobalEnable(XQwen_superblock *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQwen_superblock_WriteReg(InstancePtr->Control_BaseAddress, XQWEN_SUPERBLOCK_CONTROL_ADDR_GIE, 1);
}

void XQwen_superblock_InterruptGlobalDisable(XQwen_superblock *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQwen_superblock_WriteReg(InstancePtr->Control_BaseAddress, XQWEN_SUPERBLOCK_CONTROL_ADDR_GIE, 0);
}

void XQwen_superblock_InterruptEnable(XQwen_superblock *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XQwen_superblock_ReadReg(InstancePtr->Control_BaseAddress, XQWEN_SUPERBLOCK_CONTROL_ADDR_IER);
    XQwen_superblock_WriteReg(InstancePtr->Control_BaseAddress, XQWEN_SUPERBLOCK_CONTROL_ADDR_IER, Register | Mask);
}

void XQwen_superblock_InterruptDisable(XQwen_superblock *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XQwen_superblock_ReadReg(InstancePtr->Control_BaseAddress, XQWEN_SUPERBLOCK_CONTROL_ADDR_IER);
    XQwen_superblock_WriteReg(InstancePtr->Control_BaseAddress, XQWEN_SUPERBLOCK_CONTROL_ADDR_IER, Register & (~Mask));
}

void XQwen_superblock_InterruptClear(XQwen_superblock *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQwen_superblock_WriteReg(InstancePtr->Control_BaseAddress, XQWEN_SUPERBLOCK_CONTROL_ADDR_ISR, Mask);
}

u32 XQwen_superblock_InterruptGetEnabled(XQwen_superblock *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XQwen_superblock_ReadReg(InstancePtr->Control_BaseAddress, XQWEN_SUPERBLOCK_CONTROL_ADDR_IER);
}

u32 XQwen_superblock_InterruptGetStatus(XQwen_superblock *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XQwen_superblock_ReadReg(InstancePtr->Control_BaseAddress, XQWEN_SUPERBLOCK_CONTROL_ADDR_ISR);
}

