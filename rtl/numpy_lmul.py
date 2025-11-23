import numpy as np
from utils.floats import float_to_bf16_array, bf16_to_float_array

BF16_FIELD_MASK = 0x7FFF
BF16_OFFSET_MOD = 0x4080
BF16_MANTISSA_BITS = 7


def lmul_numpy_vectorized(a_bf16: np.ndarray, b_bf16: np.ndarray) -> np.ndarray:
    a_bf16 = a_bf16.astype(np.uint16)
    b_bf16 = b_bf16.astype(np.uint16)
    
    a_fld = a_bf16 & BF16_FIELD_MASK
    b_fld = b_bf16 & BF16_FIELD_MASK
    
    a_exp = (a_fld >> BF16_MANTISSA_BITS) & 0xFF
    b_exp = (b_fld >> BF16_MANTISSA_BITS) & 0xFF
    
    zero_or_sub = (a_exp == 0) | (b_exp == 0)
    
    sum_full = a_fld.astype(np.uint32) + b_fld.astype(np.uint32) + BF16_OFFSET_MOD
    
    carry2 = (sum_full >> 15) & 0x3
    low_bits = sum_full & BF16_FIELD_MASK
    
    field_sel = np.zeros_like(a_fld, dtype=np.uint16)
    
    normal_mask = (carry2 == 1) & ~zero_or_sub
    field_sel[normal_mask] = low_bits[normal_mask].astype(np.uint16)
    
    overflow_mask = (carry2 >= 2) & ~zero_or_sub
    field_sel[overflow_mask] = BF16_FIELD_MASK
    
    out_sign_raw = ((a_bf16 ^ b_bf16) >> 15) & 1
    result_is_zero = (field_sel == 0)
    out_sign = np.where(result_is_zero, 0, out_sign_raw)
    
    return (out_sign.astype(np.uint16) << 15) | field_sel


def lmul_numpy_float(a: np.ndarray, b: np.ndarray) -> np.ndarray:
    a_bf16 = float_to_bf16_array(a)
    b_bf16 = float_to_bf16_array(b)
    result_bf16 = lmul_numpy_vectorized(a_bf16, b_bf16)
    return bf16_to_float_array(result_bf16)

