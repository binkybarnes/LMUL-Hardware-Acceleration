import torch
@torch.compile
def lmul_bits(a: torch.Tensor, b: torch.Tensor) -> torch.Tensor:
    #THIS IS THE VERSION THAT IS USED FOR THIS NOTEBOOK. it is based on the definition in the section 2 of the report
    """
    goal should be:
    two tensors of floats:
    Convert to bfloat16 bit representation
    Extract sign and field bits (exponent+mantissa)
    Add fields with bias compensation
    Handle overflow/underflow
    XOR signs
    Repack into BF16 bits and convert back to float32 for readability

    Except that we add like this bit shift at the end 
    result = result + (result / (1 << 5)) + (result / (1 << 6))
    because for some reason it's been off by like 5% (and this corrects that)
    you can remove that line if you want to measure the raw mult accuracy between torch tensors
      and write about that in the report (iirc it should be a further 10% accuracy drop though).
      It seems that for LSTM, because multiplication errors stack up a lot quicker the actual raw 
      mult. result should matter a lot more (as opposed to MLP which just cares about being in 
      ball park (relative) since its only like 2 mult operations)
    """
    #Convert to BF16 binary form (simulate using float32)
    a = a.to(torch.float32)
    b = b.to(torch.float32)
    #view raw bit patterns
    a_bits = a.view(torch.int32)
    b_bits = b.view(torch.int32)
    #Extract BF16 upper bits (simulate truncation)
    a_bf16 = (a_bits >> 16) & 0xFFFF
    b_bf16 = (b_bits >> 16) & 0xFFFF
    #Extract sign and field bits ---
    a_sign = (a_bf16 >> 15) & 0x1
    b_sign = (b_bf16 >> 15) & 0x1
    a_field = a_bf16 & 0x7FFF
    b_field = b_bf16 & 0x7FFF
    #Handle zeros / subnormals (exp == 0) ---
    a_exp = (a_field >> 7) & 0xFF
    b_exp = (b_field >> 7) & 0xFF
    zero_mask = (a_exp == 0) | (b_exp == 0)
    #Add the fields with bias correction ---
    OFFSET_MOD = 0x4080  # (2^15 - (127 << 7)) & 0x7FFF = 0x4080
    sum_full = a_field.to(torch.int32) + b_field.to(torch.int32) + OFFSET_MOD
    #use 17-bit precision
    carry2 = (sum_full >> 15) & 0x3  # top 2 bits
    field_sel = torch.zeros_like(sum_full)
    #Handle overflow/underflow
    # 00: underflow → 0
    mask_underflow = (carry2 == 0)
    # 01: normal → use lower 15 bits
    mask_normal = (carry2 == 1)
    # 1x: overflow → saturate to 0x7FFF
    mask_overflow = (carry2 >= 2)

    field_sel = torch.where(mask_normal, sum_full & 0x7FFF, field_sel)
    field_sel = torch.where(mask_overflow, torch.tensor(0x7FFF, dtype=torch.int32, device=sum_full.device), field_sel)

    #Calculate the sign bit
    s_result = (a_sign ^ b_sign).to(torch.int32)
    s_result = torch.where(field_sel == 0, torch.tensor(0, device=sum_full.device, dtype=torch.int32), s_result)
    #Pack result (sign << 15) | field
    result_bits_bf16 = ((s_result << 15) | field_sel).to(torch.int32)

    
    #Convert back to float32 by restoring 16 LSBs as zeros
    result_bits_f32 = result_bits_bf16 << 16
    result = result_bits_f32.view(torch.float32)
    #bias bitshift
    result = result + (result / (1 << 5)) + (result / (1 << 6))
    #Handle zeros
    result = torch.where(zero_mask, torch.zeros_like(result), result)
   
    return result 