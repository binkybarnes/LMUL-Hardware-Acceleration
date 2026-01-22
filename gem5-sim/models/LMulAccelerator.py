# Python wrapper for LMUL Accelerator gem5 model

from m5.params import *
from m5.objects.Device import BasicPioDevice

class LMulAccelerator(BasicPioDevice):
    """
    LMUL Hardware Accelerator for BF16 Matrix Multiplication
    
    Memory-mapped device with configurable PE array size.
    """
    
    type = 'LMulAccelerator'
    cxx_header = "dev/lmul_accel/lmul_accelerator.hh"
    cxx_class = 'gem5::LMulAccelerator'
    
    # PIO configuration
    pio_size = Param.Addr(0x1000, "Size of MMIO region (4KB)")
    
    # Accelerator configuration
    pe_array_rows = Param.UInt32(4, "Number of PE array rows")
    pe_array_cols = Param.UInt32(4, "Number of PE array columns")
    
    # Timing parameters
    compute_latency = Param.Cycles(1, "Cycles per PE operation")
    memory_latency = Param.Cycles(100, "Memory access latency")
    
    # Operation mode
    use_lmul = Param.Bool(True, "Use LMUL (True) or IEEE BF16 (False)")
    
    @classmethod
    def makeDefault(cls, **kwargs):
        """Create default LMUL accelerator (4x4 PE array, LMUL mode)"""
        return cls(
            pe_array_rows=4,
            pe_array_cols=4,
            compute_latency=1,
            memory_latency=100,
            use_lmul=True,
            **kwargs
        )
    
    @classmethod
    def makeIEEE(cls, **kwargs):
        """Create IEEE BF16 accelerator for comparison"""
        return cls(
            pe_array_rows=4,
            pe_array_cols=4,
            compute_latency=3,  # IEEE BF16 is ~3x slower
            memory_latency=100,
            use_lmul=False,
            **kwargs
        )
    
    @classmethod
    def makeLarge(cls, **kwargs):
        """Create large LMUL accelerator (16x16 PE array)"""
        return cls(
            pe_array_rows=16,
            pe_array_cols=16,
            compute_latency=1,
            memory_latency=100,
            use_lmul=True,
            **kwargs
        )
