def lmul(a_bf16: int, b_bf16: int) -> int:
    """
    Bare-bones LMUL: BF16 int in, BF16 int out
    No conversions, no error checking, maximum speed
    
    Args:
        a_bf16: 16-bit BF16 integer
        b_bf16: 16-bit BF16 integer
    
    Returns:
        16-bit BF16 integer result
    """
    # Extract fields (15 bits: exp+mant)
    a_fld = a_bf16 & 0x7FFF
    b_fld = b_bf16 & 0x7FFF
    
    # Check zero/subnormal (exp == 0)
    # Exponent is bits [14:7] of the 15-bit field
    a_exp = (a_fld >> 7) & 0xFF
    b_exp = (b_fld >> 7) & 0xFF
    if (a_exp == 0) or (b_exp == 0):
        return 0
    
    # Calculate offset: OFFSET_MOD = ((1<<15) - (127<<7)) & 0x7FFF
    # This equals 0x4080, not 0x7F81!
    OFFSET_MOD = 0x4080
    
    # Add fields with offset
    # Use 17 bits to match Verilog's [EM_BITS+1:0] = [16:0]
    sum_full = a_fld + b_fld + OFFSET_MOD
    
    # Extract carry2 from bits [16:15] (2 bits) to match Verilog
    carry2 = (sum_full >> 15) & 0x3
    low_bits = sum_full & 0x7FFF
    
    # Select output field (matching Verilog logic)
    if carry2 == 0:  # underflow -> 0
        field_sel = 0
    elif carry2 == 1:  # normal
        field_sel = low_bits
    else:  # overflow (carry2 == 2 or 3) -> saturate
        field_sel = 0x7FFF
    
    # Sign: XOR, but zero if result is zero
    out_sign = 0 if field_sel == 0 else ((a_bf16 ^ b_bf16) >> 15) & 1
    
    return (out_sign << 15) | field_sel