/*
 * LMUL Hardware Accelerator Model for gem5
 * 
 * This models a memory-mapped LMUL (Logarithmic Multiplication) accelerator
 * for BF16 matrix operations.
 */

#ifndef __DEV_LMUL_ACCEL_LMUL_ACCELERATOR_HH__
#define __DEV_LMUL_ACCEL_LMUL_ACCELERATOR_HH__

#include <queue>
#include <vector>

#include "dev/dma_device.hh"
#include "params/LMulAccelerator.hh"
#include "sim/eventq.hh"

namespace gem5
{

/**
 * LMUL Accelerator Device
 * 
 * Memory-mapped accelerator for matrix multiplication using
 * logarithmic multiplication (LMUL) with BF16 precision.
 * 
 * Features:
 * - Configurable PE array size
 * - DMA for data transfer
 * - Interrupt on completion
 * - Cycle-accurate timing model
 */
class LMulAccelerator : public DmaDevice
{
  public:
    typedef LMulAcceleratorParams Params;
    LMulAccelerator(const Params &p);
    AddrRangeList getAddrRanges() const override;

    /**
     * Read from device registers
     */
    Tick read(PacketPtr pkt) override;

    /**
     * Write to device registers
     */
    Tick write(PacketPtr pkt) override;

  protected:
    // MMIO configuration
    const Addr pioAddr;
    const Addr pioSize;
    const Tick pioDelay;

    // Configuration parameters
    const uint32_t peArrayRows;      // PE array rows (e.g., 4)
    const uint32_t peArrayCols;      // PE array cols (e.g., 4)
    const Tick computeLatency;       // Cycles per PE operation
    const Tick memoryLatency;        // Memory access latency
    const double energyPerOpPJ;      // Estimated compute energy per op (pJ)
    const double dmaEnergyPerBytePJ; // Estimated DMA energy per byte (pJ)
    const double leakagePowerMW;     // Estimated leakage power during active time (mW)
    
    // Register map (memory-mapped I/O)
    enum Registers {
        REG_CONTROL     = 0x00,  // Control register
        REG_STATUS      = 0x04,  // Status register
        REG_A_ADDR      = 0x08,  // Input matrix A address
        REG_B_ADDR      = 0x0C,  // Input matrix B address
        REG_C_ADDR      = 0x10,  // Output matrix C address
        REG_M_SIZE      = 0x14,  // M dimension (A rows)
        REG_N_SIZE      = 0x18,  // N dimension (A cols, B rows)
        REG_P_SIZE      = 0x1C,  // P dimension (B cols)
        REG_PE_CONFIG   = 0x20,  // PE array configuration
        REG_CYCLES      = 0x24,  // Cycle counter
        REG_OPS_COUNT   = 0x28,  // Operations counter
        REG_ERROR       = 0x2C,  // Error register
        REG_RESULT_IDX  = 0x30,  // Result readback: element index
        REG_RESULT_DATA = 0x34,  // Result readback: element data (BF16)
        REG_A_STREAM    = 0x38,  // Stream input A element (lower 16b)
        REG_B_STREAM    = 0x3C,  // Stream input B element (lower 16b)
        REG_SIZE        = 0x40   // Total register space
    };

    // Control register bits
    enum ControlBits {
        CTRL_START      = 0x01,  // Start computation
        CTRL_RESET      = 0x02,  // Reset accelerator
        CTRL_IRQ_EN     = 0x04,  // Enable interrupt
        CTRL_DMA_EN     = 0x08   // Enable DMA
    };

    // Status register bits
    enum StatusBits {
        STAT_IDLE       = 0x00,  // Idle
        STAT_BUSY       = 0x01,  // Computing
        STAT_DONE       = 0x02,  // Computation done
        STAT_ERROR      = 0x04   // Error occurred
    };

    // Device state
    struct DeviceState {
        uint32_t control;
        uint32_t status;
        Addr aAddr;
        Addr bAddr;
        Addr cAddr;
        uint32_t mSize;
        uint32_t nSize;
        uint32_t pSize;
        uint32_t cycles;
        uint32_t opsCount;
        uint32_t error;
        uint32_t resultIdx;  // For result readback
    } state;

    // Statistics
    struct Stats : public statistics::Group
    {
        Stats(LMulAccelerator *accel);
        
        statistics::Scalar numReads;
        statistics::Scalar numWrites;
        statistics::Scalar numStarts;
        statistics::Scalar numCompletions;
        statistics::Scalar totalCycles;
        statistics::Scalar totalOps;
        statistics::Scalar dmaReadReqs;
        statistics::Scalar dmaWriteReqs;
        statistics::Scalar dmaReadBytes;
        statistics::Scalar dmaWriteBytes;
        statistics::Scalar mmioReadCycles;
        statistics::Scalar mmioWriteCycles;
        statistics::Scalar mmioTotalCycles;
        statistics::Scalar dmaReadCycles;
        statistics::Scalar computeCycles;
        statistics::Scalar dmaWriteCycles;
        statistics::Scalar memoryTransferCycles;
        statistics::Scalar estimatedComputeEnergyJ;
        statistics::Scalar estimatedDmaEnergyJ;
        statistics::Scalar estimatedLeakageEnergyJ;
        statistics::Scalar estimatedTotalEnergyJ;
        statistics::Histogram opLatency;
    } stats;

    // Computation state
    struct ComputeJob {
        Tick startTick;
        uint32_t m, n, p;
        Addr aAddr, bAddr, cAddr;
        bool useDma = false;
        bool useStreamedInputs = false;
        uint64_t dmaReadBytes = 0;
        uint64_t dmaWriteBytes = 0;
        Tick dmaReadStartTick = 0;
        Tick computeStartTick = 0;
        Tick dmaWriteStartTick = 0;
        Tick dmaReadTicks = 0;
        Tick computeTicks = 0;
        Tick dmaWriteTicks = 0;
        std::vector<uint16_t> matrixA;
        std::vector<uint16_t> matrixB;
        std::vector<uint16_t> matrixC;
    };
    
    ComputeJob *currentJob;
    std::vector<uint16_t> lastResult;  // Completed result buffer for MMIO readback
    std::vector<uint16_t> stagedA;      // Input A streamed over MMIO
    std::vector<uint16_t> stagedB;      // Input B streamed over MMIO

    // Event for async computation completion
    EventFunctionWrapper computeEvent;
    EventFunctionWrapper dmaReadAEvent;
    EventFunctionWrapper dmaReadBEvent;
    EventFunctionWrapper dmaWriteCEvent;

    // Internal methods
    void startComputation();
    void completeComputation();
    void onDmaReadAComplete();
    void onDmaReadBComplete();
    void onDmaWriteCComplete();
    void finalizeComputation();
    void processCompute();
    
    // BF16 operations
    uint16_t lmulBF16(uint16_t a, uint16_t b);
    float bf16ToFloat(uint16_t bf16);
    uint16_t floatToBF16(float f);
    
    // Timing estimation
    Tick estimateComputeTime(uint32_t m, uint32_t n, uint32_t p);
    Tick estimateMemoryTime(uint32_t m, uint32_t n, uint32_t p);
};

} // namespace gem5

#endif // __DEV_LMUL_ACCEL_LMUL_ACCELERATOR_HH__
