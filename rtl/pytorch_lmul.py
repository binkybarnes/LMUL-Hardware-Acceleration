try:
    import torch
    from utils.floats import float_to_bf16_tensor, bf16_to_float_tensor
    
    BF16_FIELD_MASK = 0x7FFF
    BF16_OFFSET_MOD = 0x4080
    BF16_MANTISSA_BITS = 7
    
    
    def lmul_torch_vectorized(a_bf16: torch.Tensor, b_bf16: torch.Tensor) -> torch.Tensor:
        a_bf16_int = a_bf16.to(torch.int32)
        b_bf16_int = b_bf16.to(torch.int32)
        
        a_fld = (a_bf16_int & BF16_FIELD_MASK).to(torch.int32)
        b_fld = (b_bf16_int & BF16_FIELD_MASK).to(torch.int32)
        
        a_exp = (a_fld >> BF16_MANTISSA_BITS) & 0xFF
        b_exp = (b_fld >> BF16_MANTISSA_BITS) & 0xFF
        
        zero_or_sub = (a_exp == 0) | (b_exp == 0)
        
        sum_full = a_fld + b_fld + BF16_OFFSET_MOD
        
        carry2 = (sum_full >> 15) & 0x3
        low_bits = sum_full & BF16_FIELD_MASK
        
        field_sel = torch.zeros_like(a_fld, dtype=torch.int32)
        
        normal_mask = (carry2 == 1) & ~zero_or_sub
        field_sel[normal_mask] = low_bits[normal_mask]
        
        overflow_mask = (carry2 >= 2) & ~zero_or_sub
        field_sel[overflow_mask] = BF16_FIELD_MASK
        
        out_sign_raw = ((a_bf16_int ^ b_bf16_int) >> 15) & 1
        result_is_zero = (field_sel == 0)
        out_sign = torch.where(result_is_zero, torch.tensor(0, dtype=torch.int32), out_sign_raw)
        
        result = ((out_sign << 15) | field_sel).to(torch.uint16)
        return result
    
    
    def lmul_torch_float(a_bf16: torch.Tensor, b_bf16: torch.Tensor) -> torch.Tensor:
        """LMUL on uint16 BF16 tensors, returns float32 tensor."""
        result_bf16 = lmul_torch_vectorized(a_bf16, b_bf16)
        return bf16_to_float_tensor(result_bf16)
    
    
    class LMULFunction(torch.autograd.Function):
        @staticmethod
        def forward(ctx, a: torch.Tensor, b: torch.Tensor) -> torch.Tensor:
            ctx.save_for_backward(a, b)
            return lmul_torch_float(a, b)
        
        @staticmethod
        def backward(ctx, grad_output: torch.Tensor) -> tuple:
            a, b = ctx.saved_tensors
            grad_a = grad_output * b
            grad_b = grad_output * a
            return grad_a, grad_b
    
    
    def lmul_torch(a: torch.Tensor, b: torch.Tensor) -> torch.Tensor:
        return LMULFunction.apply(a, b)
    
    
    def lmul_torch_matmul(a_bf16: torch.Tensor, b_bf16: torch.Tensor) -> torch.Tensor:
        """
        Matrix multiplication using LMUL for element-wise operations.
        
        Args:
            a_bf16: PyTorch tensor of shape (m, n) with uint16 BF16 values
            b_bf16: PyTorch tensor of shape (n, p) with uint16 BF16 values
        
        Returns:
            PyTorch tensor of shape (m, p) with LMUL-based matrix multiplication (float32)
        """
        # Expand dimensions for broadcasting: (m, n) -> (m, n, 1) and (n, p) -> (1, n, p)
        # This allows element-wise LMUL: result[i, k, j] = LMUL(A[i, k], B[k, j])
        a_expanded = a_bf16.unsqueeze(2)  # (m, n, 1)
        b_expanded = b_bf16.unsqueeze(0)  # (1, n, p)
        
        # Explicitly expand to ensure consistent shapes before passing to lmul_torch_vectorized
        # PyTorch will broadcast automatically, but we need to ensure the shapes are compatible
        a_broadcast = a_expanded.expand(-1, -1, b_expanded.size(2))  # (m, n, p)
        b_broadcast = b_expanded.expand(a_expanded.size(0), -1, -1)  # (m, n, p)
        
        # Perform element-wise LMUL multiplication: (m, n, p)
        products_bf16 = lmul_torch_vectorized(a_broadcast, b_broadcast)
        
        # Convert products back to float before summing to avoid BF16 overflow
        products_float = bf16_to_float_tensor(products_bf16)
        
        # Sum along the n dimension (axis 1) to get (m, p)
        result = products_float.sum(dim=1)
        
        return result
    
except ImportError:
    pass

