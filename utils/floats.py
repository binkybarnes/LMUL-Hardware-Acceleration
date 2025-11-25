import struct
import numpy as np

try:
    import torch
    TORCH_AVAILABLE = True
except ImportError:
    TORCH_AVAILABLE = False


def float_to_bf16(f: float) -> int:
    if np.isnan(f):
        return 0x7FC0
    if np.isinf(f):
        return 0xFF80 if f < 0 else 0x7F80
    f = np.clip(f, -3.4e38, 3.4e38)
    f32_bits = struct.unpack('>I', struct.pack('>f', np.float32(f)))[0]
    bf16_bits = (f32_bits >> 16) & 0xFFFF
    return bf16_bits


def bf16_to_float(bf16: int) -> float:
    f32_bits = (bf16 & 0xFFFF) << 16
    return struct.unpack('>f', struct.pack('>I', f32_bits))[0]


def float_to_bf16_array(f: np.ndarray) -> np.ndarray:
    f = np.clip(f, -3.4e38, 3.4e38)
    f32 = f.astype(np.float32)
    f32_bits = f32.view(np.uint32)
    bf16_bits = (f32_bits >> 16).astype(np.uint16)
    
    nan_mask = np.isnan(f)
    inf_mask = np.isinf(f)
    neg_inf_mask = inf_mask & (f < 0)
    pos_inf_mask = inf_mask & (f >= 0)
    
    bf16_bits[nan_mask] = 0x7FC0
    bf16_bits[neg_inf_mask] = 0xFF80
    bf16_bits[pos_inf_mask] = 0x7F80
    
    return bf16_bits.astype(np.uint16)


def bf16_to_float_array(bf16: np.ndarray) -> np.ndarray:
    f32_bits = bf16.astype(np.uint32) << 16
    return f32_bits.view(np.float32)


if TORCH_AVAILABLE:
    def float_to_bf16_tensor(f: torch.Tensor) -> torch.Tensor:
        f = torch.clamp(f, -3.4e38, 3.4e38)
        f32 = f.to(torch.float32)
        f32_bits = f32.view(torch.uint32)
        bf16_bits = (f32_bits.to(torch.int64) >> 16).to(torch.int32) & 0xFFFF
        
        nan_mask = torch.isnan(f)
        inf_mask = torch.isinf(f)
        neg_inf_mask = inf_mask & (f < 0)
        pos_inf_mask = inf_mask & (f >= 0)
        
        bf16_bits = torch.where(nan_mask, torch.tensor(0x7FC0, dtype=torch.int32), bf16_bits)
        bf16_bits = torch.where(neg_inf_mask, torch.tensor(0xFF80, dtype=torch.int32), bf16_bits)
        bf16_bits = torch.where(pos_inf_mask, torch.tensor(0x7F80, dtype=torch.int32), bf16_bits)
        
        return bf16_bits.to(torch.uint16)
    
    
    def bf16_to_float_tensor(bf16: torch.Tensor) -> torch.Tensor:
        f32_bits = (bf16.to(torch.int64) << 16).to(torch.uint32)
        return f32_bits.view(torch.float32)

