// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XQWEN_SUPERBLOCK_H
#define XQWEN_SUPERBLOCK_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xqwen_superblock_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XQwen_superblock_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XQwen_superblock;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XQwen_superblock_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XQwen_superblock_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XQwen_superblock_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XQwen_superblock_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XQwen_superblock_Initialize(XQwen_superblock *InstancePtr, UINTPTR BaseAddress);
XQwen_superblock_Config* XQwen_superblock_LookupConfig(UINTPTR BaseAddress);
#else
int XQwen_superblock_Initialize(XQwen_superblock *InstancePtr, u16 DeviceId);
XQwen_superblock_Config* XQwen_superblock_LookupConfig(u16 DeviceId);
#endif
int XQwen_superblock_CfgInitialize(XQwen_superblock *InstancePtr, XQwen_superblock_Config *ConfigPtr);
#else
int XQwen_superblock_Initialize(XQwen_superblock *InstancePtr, const char* InstanceName);
int XQwen_superblock_Release(XQwen_superblock *InstancePtr);
#endif

void XQwen_superblock_Start(XQwen_superblock *InstancePtr);
u32 XQwen_superblock_IsDone(XQwen_superblock *InstancePtr);
u32 XQwen_superblock_IsIdle(XQwen_superblock *InstancePtr);
u32 XQwen_superblock_IsReady(XQwen_superblock *InstancePtr);
void XQwen_superblock_EnableAutoRestart(XQwen_superblock *InstancePtr);
void XQwen_superblock_DisableAutoRestart(XQwen_superblock *InstancePtr);

void XQwen_superblock_Set_A(XQwen_superblock *InstancePtr, u64 Data);
u64 XQwen_superblock_Get_A(XQwen_superblock *InstancePtr);
void XQwen_superblock_Set_W1(XQwen_superblock *InstancePtr, u64 Data);
u64 XQwen_superblock_Get_W1(XQwen_superblock *InstancePtr);
void XQwen_superblock_Set_W2(XQwen_superblock *InstancePtr, u64 Data);
u64 XQwen_superblock_Get_W2(XQwen_superblock *InstancePtr);
void XQwen_superblock_Set_C(XQwen_superblock *InstancePtr, u64 Data);
u64 XQwen_superblock_Get_C(XQwen_superblock *InstancePtr);

void XQwen_superblock_InterruptGlobalEnable(XQwen_superblock *InstancePtr);
void XQwen_superblock_InterruptGlobalDisable(XQwen_superblock *InstancePtr);
void XQwen_superblock_InterruptEnable(XQwen_superblock *InstancePtr, u32 Mask);
void XQwen_superblock_InterruptDisable(XQwen_superblock *InstancePtr, u32 Mask);
void XQwen_superblock_InterruptClear(XQwen_superblock *InstancePtr, u32 Mask);
u32 XQwen_superblock_InterruptGetEnabled(XQwen_superblock *InstancePtr);
u32 XQwen_superblock_InterruptGetStatus(XQwen_superblock *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
