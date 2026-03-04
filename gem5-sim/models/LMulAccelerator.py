# Python wrapper for LMUL Accelerator gem5 model

from m5.params import *
from m5.objects.Device import DmaVirtDevice

class LMulAccelerator(DmaVirtDevice):
    """
    LMUL Hardware Accelerator for BF16 Matrix Multiplication
    
    Memory-mapped device with configurable PE array size.
    """
    
    type = 'LMulAccelerator'
    cxx_header = "dev/lmul_accel/lmul_accelerator.hh"
    cxx_class = 'gem5::LMulAccelerator'
    
    # MMIO configuration
    pio_addr = Param.Addr(0x40000000, "MMIO base address")
    pio_size = Param.Addr(0x1000, "Size of MMIO region (4KB)")
    pio_latency = Param.Latency("100ns", "Programmed I/O latency")
    
    # Accelerator configuration
    pe_array_rows = Param.UInt32(4, "Number of PE array rows")
    pe_array_cols = Param.UInt32(4, "Number of PE array columns")
    
    # Timing parameters
    compute_latency = Param.Cycles(1, "Cycles per PE operation")
    memory_latency = Param.Cycles(100, "Memory access latency")

    # First-order accelerator power model parameters
    energy_per_op_pj = Param.Float(0.5, "Estimated compute energy per op (pJ)")
    dma_energy_per_byte_pj = Param.Float(0.05, "Estimated DMA energy per byte (pJ)")
    leakage_power_mw = Param.Float(1.0, "Estimated accelerator leakage power (mW)")
    
    @classmethod
    def makeDefault(cls, **kwargs):
        """Create default LMUL accelerator (4x4 PE array)"""
        return cls(
            pio_addr=0x40000000,
            pio_size=0x1000,
            pio_latency="100ns",
            pe_array_rows=4,
            pe_array_cols=4,
            compute_latency=1,
            memory_latency=100,
            **kwargs
        )
    
    @classmethod
    def makeLarge(cls, **kwargs):
        """Create large LMUL accelerator (16x16 PE array)"""
        return cls(
            pio_addr=0x40000000,
            pio_size=0x1000,
            pio_latency="100ns",
            pe_array_rows=16,
            pe_array_cols=16,
            compute_latency=1,
            memory_latency=100,
            **kwargs
        )
