/*
 * LMUL Hardware Accelerator Implementation
 */

#include "dev/lmul_accel/lmul_accelerator.hh"

#include <cmath>
#include <cstring>

#include "base/trace.hh"
#include "debug/LMulAccel.hh"
#include "mem/packet.hh"
#include "mem/packet_access.hh"

namespace gem5
{

LMulAccelerator::LMulAccelerator(const Params &p)
    : BasicPioDevice(p, p.pio_size),
      peArrayRows(p.pe_array_rows),
      peArrayCols(p.pe_array_cols),
      computeLatency(p.compute_latency),
      memoryLatency(p.memory_latency),
      useLMul(p.use_lmul),
      stats(this),
      currentJob(nullptr),
      computeEvent([this]{ completeComputation(); }, name())
{
    // Initialize device state
    state.control = 0;
    state.status = STAT_IDLE;
    state.aAddr = 0;
    state.bAddr = 0;
    state.cAddr = 0;
    state.mSize = 0;
    state.nSize = 0;
    state.pSize = 0;
    state.cycles = 0;
    state.opsCount = 0;
    state.error = 0;
    state.resultIdx = 0;

    DPRINTF(LMulAccel, "LMulAccelerator created: PE=%dx%d, LMUL=%d\n",
            peArrayRows, peArrayCols, useLMul);
}

LMulAccelerator::Stats::Stats(LMulAccelerator *accel)
    : statistics::Group(accel),
      ADD_STAT(numReads, statistics::units::Count::get(),
               "Number of register reads"),
      ADD_STAT(numWrites, statistics::units::Count::get(),
               "Number of register writes"),
      ADD_STAT(numStarts, statistics::units::Count::get(),
               "Number of computations started"),
      ADD_STAT(numCompletions, statistics::units::Count::get(),
               "Number of computations completed"),
      ADD_STAT(totalCycles, statistics::units::Cycle::get(),
               "Total compute cycles"),
      ADD_STAT(totalOps, statistics::units::Count::get(),
               "Total operations performed"),
      ADD_STAT(opLatency, statistics::units::Tick::get(),
               "Latency distribution for operations")
{
    opLatency.init(32);  // 32 bins for histogram
}

Tick
LMulAccelerator::read(PacketPtr pkt)
{
    assert(pkt->getAddr() >= pioAddr && pkt->getAddr() < pioAddr + pioSize);
    
    Addr offset = pkt->getAddr() - pioAddr;
    uint32_t value = 0;

    // Read appropriate register
    switch (offset) {
        case REG_CONTROL:
            value = state.control;
            break;
        case REG_STATUS:
            value = state.status;
            break;
        case REG_A_ADDR:
            value = state.aAddr;
            break;
        case REG_B_ADDR:
            value = state.bAddr;
            break;
        case REG_C_ADDR:
            value = state.cAddr;
            break;
        case REG_M_SIZE:
            value = state.mSize;
            break;
        case REG_N_SIZE:
            value = state.nSize;
            break;
        case REG_P_SIZE:
            value = state.pSize;
            break;
        case REG_PE_CONFIG:
            value = (peArrayRows << 16) | peArrayCols;
            break;
        case REG_CYCLES:
            value = state.cycles;
            break;
        case REG_OPS_COUNT:
            value = state.opsCount;
            break;
        case REG_ERROR:
            value = state.error;
            break;
        case REG_RESULT_IDX:
            value = state.resultIdx;
            break;
        case REG_RESULT_DATA:
            // Read result element at current index
            if (currentJob && currentJob->matrixC.size() > 0) {
                if (state.resultIdx < currentJob->matrixC.size()) {
                    value = currentJob->matrixC[state.resultIdx];
                } else {
                    value = 0;
                    warn("LMulAccelerator: Result index %d out of range (max %d)\n",
                         state.resultIdx, currentJob->matrixC.size() - 1);
                }
            } else {
                value = 0;
            }
            break;
        default:
            warn("LMulAccelerator: Read from invalid offset 0x%x\n", offset);
            value = 0;
    }

    // Write value to packet using little-endian byte order (matches gem5 devices)
    pkt->setUintX(value, ByteOrder::little);
    stats.numReads++;

    DPRINTF(LMulAccel, "Read offset=0x%x, value=0x%x\n", offset, value);

    return pioDelay;
}

Tick
LMulAccelerator::write(PacketPtr pkt)
{
    assert(pkt->getAddr() >= pioAddr && pkt->getAddr() < pioAddr + pioSize);
    
    Addr offset = pkt->getAddr() - pioAddr;
    // Read value from packet using little-endian byte order
    uint32_t value = pkt->getUintX(ByteOrder::little);

    DPRINTF(LMulAccel, "Write offset=0x%x, value=0x%x\n", offset, value);

    // Write to appropriate register
    switch (offset) {
        case REG_CONTROL:
            state.control = value;
            if (value & CTRL_START) {
                startComputation();
            }
            if (value & CTRL_RESET) {
                state.status = STAT_IDLE;
                state.cycles = 0;
                state.opsCount = 0;
                state.error = 0;
            }
            break;
            
        case REG_A_ADDR:
            state.aAddr = value;
            break;
            
        case REG_B_ADDR:
            state.bAddr = value;
            break;
            
        case REG_C_ADDR:
            state.cAddr = value;
            break;
            
        case REG_M_SIZE:
            state.mSize = value;
            break;
            
        case REG_N_SIZE:
            state.nSize = value;
            break;
            
        case REG_P_SIZE:
            state.pSize = value;
            break;
            
        case REG_RESULT_IDX:
            state.resultIdx = value;
            break;
            
        default:
            warn("LMulAccelerator: Write to read-only or invalid offset 0x%x\n",
                 offset);
    }

    stats.numWrites++;
    return pioDelay;
}

void
LMulAccelerator::startComputation()
{
    if (state.status == STAT_BUSY) {
        warn("LMulAccelerator: Start requested while busy\n");
        state.error = 1;
        return;
    }

    DPRINTF(LMulAccel, "Starting computation: M=%d, N=%d, P=%d\n",
            state.mSize, state.nSize, state.pSize);

    // Validate dimensions
    if (state.mSize == 0 || state.nSize == 0 || state.pSize == 0) {
        warn("LMulAccelerator: Invalid dimensions\n");
        state.error = 2;
        state.status = STAT_ERROR;
        return;
    }

    // Create compute job
    currentJob = new ComputeJob;
    currentJob->m = state.mSize;
    currentJob->n = state.nSize;
    currentJob->p = state.pSize;
    currentJob->aAddr = state.aAddr;
    currentJob->bAddr = state.bAddr;
    currentJob->cAddr = state.cAddr;
    currentJob->startTick = curTick();

    // Allocate matrices
    currentJob->matrixA.resize(state.mSize * state.nSize);
    currentJob->matrixB.resize(state.nSize * state.pSize);
    currentJob->matrixC.resize(state.mSize * state.pSize, 0);

    // Update state
    state.status = STAT_BUSY;
    state.cycles = 0;
    stats.numStarts++;

    // Schedule computation completion
    // In a real implementation, we would do DMA transfers here
    // For now, we'll do functional simulation with timing model
    Tick computeTime = estimateComputeTime(state.mSize, state.nSize, state.pSize);
    Tick memoryTime = estimateMemoryTime(state.mSize, state.nSize, state.pSize);
    Tick totalTime = computeTime + memoryTime;

    DPRINTF(LMulAccel, "Scheduling completion in %d ticks\n", totalTime);
    
    schedule(computeEvent, curTick() + totalTime);
}

void
LMulAccelerator::completeComputation()
{
    assert(currentJob != nullptr);

    DPRINTF(LMulAccel, "Completing computation\n");

    // Perform matrix multiplication (functional model)
    processCompute();

    // Update statistics
    Tick latency = curTick() - currentJob->startTick;
    uint32_t totalOps = currentJob->m * currentJob->n * currentJob->p;
    
    state.cycles = latency / clockPeriod();
    state.opsCount = totalOps;
    state.status = STAT_DONE;

    stats.numCompletions++;
    stats.totalCycles += state.cycles;
    stats.totalOps += totalOps;
    stats.opLatency.sample(latency);

    DPRINTF(LMulAccel, "Completed: %d ops in %d cycles (%.2f GOPS)\n",
            totalOps, state.cycles, 
            (double)totalOps / state.cycles);

    // Clean up
    delete currentJob;
    currentJob = nullptr;

    // Generate interrupt if enabled
    if (state.control & CTRL_IRQ_EN) {
        // TODO: Trigger interrupt
        DPRINTF(LMulAccel, "Would trigger interrupt here\n");
    }
}

void
LMulAccelerator::processCompute()
{
    // Functional matrix multiplication: C = A * B
    // A: M x N
    // B: N x P
    // C: M x P

    // TODO: Implement DMA to read actual data from aAddr, bAddr
    // For now, we use a simple pattern for testing:
    // - Matrix A: row-major pattern (i*N + j)
    // - Matrix B: column-major pattern (k*P + j)
    // This allows us to verify computation without full DMA
    
    // Generate test pattern instead of all 1.0s
    // This creates a predictable result we can verify
    for (uint32_t i = 0; i < currentJob->m; i++) {
        for (uint32_t j = 0; j < currentJob->n; j++) {
            // Pattern: value based on position
            float val = (float)(i * currentJob->n + j + 1) / 10.0f;
            currentJob->matrixA[i * currentJob->n + j] = floatToBF16(val);
        }
    }
    
    for (uint32_t i = 0; i < currentJob->n; i++) {
        for (uint32_t j = 0; j < currentJob->p; j++) {
            // Pattern: value based on position
            float val = (float)(i * currentJob->p + j + 1) / 10.0f;
            currentJob->matrixB[i * currentJob->p + j] = floatToBF16(val);
        }
    }
    
    DPRINTF(LMulAccel, "Using test pattern data (not reading from memory yet)\n");

    // Perform multiplication
    for (uint32_t i = 0; i < currentJob->m; i++) {
        for (uint32_t j = 0; j < currentJob->p; j++) {
            float sum = 0.0f;
            for (uint32_t k = 0; k < currentJob->n; k++) {
                uint16_t a = currentJob->matrixA[i * currentJob->n + k];
                uint16_t b = currentJob->matrixB[k * currentJob->p + j];
                uint16_t prod;
                
                if (useLMul) {
                    prod = lmulBF16(a, b);
                } else {
                    prod = ieeeBF16(a, b);
                }
                
                sum += bf16ToFloat(prod);
            }
            currentJob->matrixC[i * currentJob->p + j] = floatToBF16(sum);
        }
    }
}

Tick
LMulAccelerator::estimateComputeTime(uint32_t m, uint32_t n, uint32_t p)
{
    // Total operations: m * n * p
    uint64_t totalOps = (uint64_t)m * n * p;
    
    // PE array can do (peArrayRows * peArrayCols) operations in parallel
    uint32_t parallelOps = peArrayRows * peArrayCols;
    
    // Compute cycles needed
    uint64_t cycles = (totalOps + parallelOps - 1) / parallelOps;
    
    // Add per-operation latency
    cycles *= computeLatency;
    
    return cycles * clockPeriod();
}

Tick
LMulAccelerator::estimateMemoryTime(uint32_t m, uint32_t n, uint32_t p)
{
    // Memory transfers needed:
    // - Read A: m * n elements
    // - Read B: n * p elements
    // - Write C: m * p elements
    uint64_t totalElements = (uint64_t)m * n + n * p + m * p;
    uint64_t totalBytes = totalElements * 2;  // 2 bytes per BF16
    
    // Assume memory bandwidth (simplified model)
    // Each memory access takes memoryLatency
    uint64_t memAccesses = totalBytes / 64;  // 64-byte cache lines
    
    return memAccesses * memoryLatency;
}

uint16_t
LMulAccelerator::lmulBF16(uint16_t a, uint16_t b)
{
    // Simplified LMUL implementation
    // In reality, this would match your Verilog RTL exactly
    
    // Extract fields
    uint8_t a_sign = (a >> 15) & 0x1;
    uint8_t b_sign = (b >> 15) & 0x1;
    uint16_t a_fld = a & 0x7FFF;  // exp + mantissa
    uint16_t b_fld = b & 0x7FFF;
    
    // Check for zero
    uint8_t a_exp = (a_fld >> 7) & 0xFF;
    uint8_t b_exp = (b_fld >> 7) & 0xFF;
    if (a_exp == 0 || b_exp == 0) {
        return 0;
    }
    
    // LMUL: add exponent+mantissa fields
    uint32_t sum = (uint32_t)a_fld + b_fld + ((1 << 15) - (127 << 7));
    
    // Check overflow/underflow
    uint16_t result_fld;
    if (sum >= (1 << 17)) {
        result_fld = 0x7FFF;  // Overflow: saturate
    } else if (sum < (1 << 15)) {
        result_fld = 0x0000;  // Underflow: zero
    } else {
        result_fld = (sum - (1 << 15)) & 0x7FFF;
    }
    
    // Combine sign
    uint8_t result_sign = a_sign ^ b_sign;
    if (result_fld == 0) result_sign = 0;
    
    return (result_sign << 15) | result_fld;
}

uint16_t
LMulAccelerator::ieeeBF16(uint16_t a, uint16_t b)
{
    // Convert to float, multiply, convert back
    float fa = bf16ToFloat(a);
    float fb = bf16ToFloat(b);
    return floatToBF16(fa * fb);
}

float
LMulAccelerator::bf16ToFloat(uint16_t bf16)
{
    uint32_t bits = (uint32_t)bf16 << 16;
    float result;
    memcpy(&result, &bits, sizeof(float));
    return result;
}

uint16_t
LMulAccelerator::floatToBF16(float f)
{
    uint32_t bits;
    memcpy(&bits, &f, sizeof(float));
    
    // Round to nearest even
    uint32_t rounding = 0x7FFF + ((bits >> 16) & 1);
    bits += rounding;
    
    return (uint16_t)(bits >> 16);
}

} // namespace gem5
