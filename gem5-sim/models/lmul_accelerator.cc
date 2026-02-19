/*
 * LMUL Hardware Accelerator Implementation
 */

#include "dev/lmul_accel/lmul_accelerator.hh"

#include <algorithm>
#include <cmath>
#include <cstring>

#include "base/trace.hh"
#include "debug/LMulAccel.hh"
#include "mem/packet.hh"
#include "mem/packet_access.hh"
#include "sim/core.hh"

namespace gem5
{

LMulAccelerator::LMulAccelerator(const Params &p)
    : DmaDevice(p),
      pioAddr(p.pio_addr),
      pioSize(p.pio_size),
      pioDelay(p.pio_latency),
      peArrayRows(p.pe_array_rows),
      peArrayCols(p.pe_array_cols),
      computeLatency(p.compute_latency),
      memoryLatency(p.memory_latency),
      energyPerOpPJ(p.energy_per_op_pj),
      dmaEnergyPerBytePJ(p.dma_energy_per_byte_pj),
      leakagePowerMW(p.leakage_power_mw),
      stats(this),
      currentJob(nullptr),
      computeEvent([this]{ completeComputation(); }, name()),
      dmaReadAEvent([this]{ onDmaReadAComplete(); }, name()),
      dmaReadBEvent([this]{ onDmaReadBComplete(); }, name()),
      dmaWriteCEvent([this]{ onDmaWriteCComplete(); }, name())
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

    DPRINTF(LMulAccel, "LMulAccelerator created: PE=%dx%d\n",
            peArrayRows, peArrayCols);
}

AddrRangeList
LMulAccelerator::getAddrRanges() const
{
    return {RangeSize(pioAddr, pioSize)};
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
      ADD_STAT(dmaReadReqs, statistics::units::Count::get(),
               "Number of DMA read requests issued"),
      ADD_STAT(dmaWriteReqs, statistics::units::Count::get(),
               "Number of DMA write requests issued"),
      ADD_STAT(dmaReadBytes, statistics::units::Byte::get(),
               "Total DMA read bytes"),
      ADD_STAT(dmaWriteBytes, statistics::units::Byte::get(),
               "Total DMA write bytes"),
      ADD_STAT(mmioReadCycles, statistics::units::Cycle::get(),
               "Estimated MMIO read service cycles"),
      ADD_STAT(mmioWriteCycles, statistics::units::Cycle::get(),
               "Estimated MMIO write service cycles"),
      ADD_STAT(mmioTotalCycles, statistics::units::Cycle::get(),
               "Estimated total MMIO service cycles"),
      ADD_STAT(dmaReadCycles, statistics::units::Cycle::get(),
               "DMA-read phase cycles"),
      ADD_STAT(computeCycles, statistics::units::Cycle::get(),
               "Compute phase cycles"),
      ADD_STAT(dmaWriteCycles, statistics::units::Cycle::get(),
               "DMA-write phase cycles"),
      ADD_STAT(memoryTransferCycles, statistics::units::Cycle::get(),
               "Total memory-transfer cycles (DMA read + DMA write)"),
      ADD_STAT(estimatedComputeEnergyJ, statistics::units::Joule::get(),
               "Estimated compute dynamic energy (J)"),
      ADD_STAT(estimatedDmaEnergyJ, statistics::units::Joule::get(),
               "Estimated DMA transfer energy (J)"),
      ADD_STAT(estimatedLeakageEnergyJ, statistics::units::Joule::get(),
               "Estimated leakage/static energy during active periods (J)"),
      ADD_STAT(estimatedTotalEnergyJ, statistics::units::Joule::get(),
               "Estimated total accelerator energy (J)"),
      ADD_STAT(opLatency, statistics::units::Tick::get(),
               "Latency distribution for operations")
{
    opLatency.init(32);  // 32 bins for histogram
    // Energy values are often sub-microjoule for small matrices; increase
    // dump precision so stats.txt does not round them to 0.000000.
    estimatedComputeEnergyJ.precision(12);
    estimatedDmaEnergyJ.precision(12);
    estimatedLeakageEnergyJ.precision(12);
    estimatedTotalEnergyJ.precision(12);
}

Tick
LMulAccelerator::read(PacketPtr pkt)
{
    Addr pkt_addr = pkt->getAddr();
    if (pkt_addr < pioAddr || pkt_addr >= pioAddr + pioSize) {
        warn("LMulAccelerator::read: Address 0x%x out of range [0x%x, 0x%x)\n",
             pkt_addr, pioAddr, pioAddr + pioSize);
        pkt->makeResponse();
        pkt->setUintX(0, ByteOrder::little);
        return pioDelay;
    }
    
    Addr offset = pkt_addr - pioAddr;
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
            if (currentJob && !currentJob->matrixC.empty()) {
                if (state.resultIdx < currentJob->matrixC.size()) {
                    value = currentJob->matrixC[state.resultIdx];
                } else {
                    value = 0;
                    warn("LMulAccelerator: Result index %d out of range (max %d)\n",
                         state.resultIdx, currentJob->matrixC.size() - 1);
                }
            } else if (!lastResult.empty()) {
                if (state.resultIdx < lastResult.size()) {
                    value = lastResult[state.resultIdx];
                } else {
                    value = 0;
                    warn("LMulAccelerator: Result index %d out of range (max %d)\n",
                         state.resultIdx, lastResult.size() - 1);
                }
            } else {
                value = 0;
            }
            break;
        default:
            warn("LMulAccelerator: Read from invalid offset 0x%x\n", offset);
            value = 0;
    }

    // Convert request to response (required by PioPort)
    pkt->makeResponse();
    pkt->setUintX(value, ByteOrder::little);
    stats.numReads++;
    const Tick clk = std::max<Tick>(clockPeriod(), 1);
    const uint64_t pioCycles = static_cast<uint64_t>((pioDelay + clk - 1) / clk);
    stats.mmioReadCycles += pioCycles;
    stats.mmioTotalCycles += pioCycles;

    DPRINTF(LMulAccel, "Read offset=0x%x, value=0x%x\n", offset, value);

    return pioDelay;
}

Tick
LMulAccelerator::write(PacketPtr pkt)
{
    Addr pkt_addr = pkt->getAddr();
    if (pkt_addr < pioAddr || pkt_addr >= pioAddr + pioSize) {
        warn("LMulAccelerator::write: Address 0x%x out of range [0x%x, 0x%x)\n",
             pkt_addr, pioAddr, pioAddr + pioSize);
        pkt->makeResponse();
        return pioDelay;
    }
    
    Addr offset = pkt_addr - pioAddr;
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
                if (computeEvent.scheduled()) {
                    deschedule(computeEvent);
                }
                if (dmaReadAEvent.scheduled()) {
                    deschedule(dmaReadAEvent);
                }
                if (dmaReadBEvent.scheduled()) {
                    deschedule(dmaReadBEvent);
                }
                if (dmaWriteCEvent.scheduled()) {
                    deschedule(dmaWriteCEvent);
                }
                if (dmaPending()) {
                    dmaPort.abortPending();
                }
                if (currentJob) {
                    delete currentJob;
                    currentJob = nullptr;
                }
                state.status = STAT_IDLE;
                state.cycles = 0;
                state.opsCount = 0;
                state.error = 0;
                state.resultIdx = 0;
                lastResult.clear();
                stagedA.clear();
                stagedB.clear();
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
            stagedA.clear();
            stagedB.clear();
            break;
            
        case REG_N_SIZE:
            state.nSize = value;
            stagedA.clear();
            stagedB.clear();
            break;
            
        case REG_P_SIZE:
            state.pSize = value;
            stagedA.clear();
            stagedB.clear();
            break;
            
        case REG_RESULT_IDX:
            state.resultIdx = value;
            break;

        case REG_A_STREAM: {
            const uint64_t expected = static_cast<uint64_t>(state.mSize) * state.nSize;
            if (expected == 0) {
                warn("LMulAccelerator: A stream write before dimensions configured\n");
            } else if (stagedA.size() >= expected) {
                warn("LMulAccelerator: A stream overflow (%llu >= %llu)\n",
                     static_cast<unsigned long long>(stagedA.size()),
                     static_cast<unsigned long long>(expected));
                state.error = 3;
            } else {
                stagedA.push_back(static_cast<uint16_t>(value & 0xFFFFu));
            }
            break;
        }

        case REG_B_STREAM: {
            const uint64_t expected = static_cast<uint64_t>(state.nSize) * state.pSize;
            if (expected == 0) {
                warn("LMulAccelerator: B stream write before dimensions configured\n");
            } else if (stagedB.size() >= expected) {
                warn("LMulAccelerator: B stream overflow (%llu >= %llu)\n",
                     static_cast<unsigned long long>(stagedB.size()),
                     static_cast<unsigned long long>(expected));
                state.error = 4;
            } else {
                stagedB.push_back(static_cast<uint16_t>(value & 0xFFFFu));
            }
            break;
        }
            
        default:
            warn("LMulAccelerator: Write to read-only or invalid offset 0x%x\n",
                 offset);
    }

    // Convert request to response (required by PioPort)
    pkt->makeResponse();
    stats.numWrites++;
    const Tick clk = std::max<Tick>(clockPeriod(), 1);
    const uint64_t pioCycles = static_cast<uint64_t>((pioDelay + clk - 1) / clk);
    stats.mmioWriteCycles += pioCycles;
    stats.mmioTotalCycles += pioCycles;
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
    currentJob->useDma = (state.control & CTRL_DMA_EN) != 0;

    // Allocate matrices
    currentJob->matrixA.resize(state.mSize * state.nSize);
    currentJob->matrixB.resize(state.nSize * state.pSize);
    currentJob->matrixC.resize(state.mSize * state.pSize, 0);

    // If benchmark streamed inputs over MMIO, use them directly in non-DMA mode.
    const uint64_t expectedA = static_cast<uint64_t>(state.mSize) * state.nSize;
    const uint64_t expectedB = static_cast<uint64_t>(state.nSize) * state.pSize;
    if (!currentJob->useDma &&
        stagedA.size() == expectedA && stagedB.size() == expectedB) {
        currentJob->matrixA = stagedA;
        currentJob->matrixB = stagedB;
        currentJob->useStreamedInputs = true;
        DPRINTF(LMulAccel, "Using streamed inputs (A=%llu, B=%llu)\n",
                static_cast<unsigned long long>(stagedA.size()),
                static_cast<unsigned long long>(stagedB.size()));
    } else {
        currentJob->useStreamedInputs = false;
        if (!currentJob->useDma) {
            DPRINTF(LMulAccel,
                    "No full streamed inputs (A=%llu/%llu, B=%llu/%llu), using fallback pattern\n",
                    static_cast<unsigned long long>(stagedA.size()),
                    static_cast<unsigned long long>(expectedA),
                    static_cast<unsigned long long>(stagedB.size()),
                    static_cast<unsigned long long>(expectedB));
        }
    }

    // Update state
    state.status = STAT_BUSY;
    state.cycles = 0;
    state.opsCount = 0;
    state.error = 0;
    lastResult.clear();
    stagedA.clear();
    stagedB.clear();
    stats.numStarts++;

    if (currentJob->useDma) {
        if (currentJob->aAddr == 0 || currentJob->bAddr == 0 || currentJob->cAddr == 0) {
            warn("LMulAccelerator: DMA mode requested but one or more matrix addresses are zero\n");
            state.error = 5;
            state.status = STAT_ERROR;
            delete currentJob;
            currentJob = nullptr;
            return;
        }

        const uint64_t bytesA = expectedA * sizeof(uint16_t);
        const uint64_t bytesB = expectedB * sizeof(uint16_t);
        const uint64_t bytesC =
            static_cast<uint64_t>(state.mSize) * state.pSize * sizeof(uint16_t);
        currentJob->dmaReadBytes = bytesA + bytesB;
        currentJob->dmaWriteBytes = bytesC;

        stats.dmaReadReqs += 2;
        stats.dmaWriteReqs += 1;
        stats.dmaReadBytes += currentJob->dmaReadBytes;
        stats.dmaWriteBytes += currentJob->dmaWriteBytes;
        currentJob->dmaReadStartTick = curTick();

        DPRINTF(LMulAccel, "DMA read A: addr=0x%x bytes=%llu\n",
                currentJob->aAddr,
                static_cast<unsigned long long>(bytesA));

        dmaRead(currentJob->aAddr, static_cast<int>(bytesA), &dmaReadAEvent,
                reinterpret_cast<uint8_t *>(currentJob->matrixA.data()));
        return;
    }

    // Non-DMA mode: use the synthetic memory-time model.
    Tick computeTime = estimateComputeTime(state.mSize, state.nSize, state.pSize);
    Tick memoryTime = currentJob->useStreamedInputs
        ? 0
        : estimateMemoryTime(state.mSize, state.nSize, state.pSize);
    Tick totalTime = computeTime + memoryTime;
    currentJob->dmaReadTicks = memoryTime;
    currentJob->computeTicks = computeTime;
    currentJob->dmaWriteTicks = 0;

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

    if (currentJob->useDma) {
        currentJob->computeTicks = curTick() - currentJob->computeStartTick;
        currentJob->dmaWriteStartTick = curTick();
        const uint64_t bytesC =
            static_cast<uint64_t>(currentJob->m) * currentJob->p * sizeof(uint16_t);
        DPRINTF(LMulAccel, "DMA write C: addr=0x%x bytes=%llu\n",
                currentJob->cAddr,
                static_cast<unsigned long long>(bytesC));
        dmaWrite(currentJob->cAddr, static_cast<int>(bytesC), &dmaWriteCEvent,
                 reinterpret_cast<uint8_t *>(currentJob->matrixC.data()));
        return;
    }

    finalizeComputation();
}

void
LMulAccelerator::onDmaReadAComplete()
{
    assert(currentJob != nullptr && currentJob->useDma);

    const uint64_t bytesB =
        static_cast<uint64_t>(currentJob->n) * currentJob->p * sizeof(uint16_t);
    DPRINTF(LMulAccel, "DMA read B: addr=0x%x bytes=%llu\n",
            currentJob->bAddr,
            static_cast<unsigned long long>(bytesB));

    dmaRead(currentJob->bAddr, static_cast<int>(bytesB), &dmaReadBEvent,
            reinterpret_cast<uint8_t *>(currentJob->matrixB.data()));
}

void
LMulAccelerator::onDmaReadBComplete()
{
    assert(currentJob != nullptr && currentJob->useDma);

    currentJob->dmaReadTicks = curTick() - currentJob->dmaReadStartTick;
    currentJob->computeStartTick = curTick();

    Tick computeTime = estimateComputeTime(currentJob->m, currentJob->n, currentJob->p);
    DPRINTF(LMulAccel, "DMA inputs ready, scheduling compute in %d ticks\n", computeTime);
    schedule(computeEvent, curTick() + computeTime);
}

void
LMulAccelerator::onDmaWriteCComplete()
{
    assert(currentJob != nullptr && currentJob->useDma);
    currentJob->dmaWriteTicks = curTick() - currentJob->dmaWriteStartTick;
    finalizeComputation();
}

void
LMulAccelerator::finalizeComputation()
{
    assert(currentJob != nullptr);

    // Update statistics
    Tick latency = curTick() - currentJob->startTick;
    const uint32_t totalOps = currentJob->m * currentJob->n * currentJob->p;
    state.cycles = latency / clockPeriod();
    state.opsCount = totalOps;
    state.status = STAT_DONE;

    stats.numCompletions++;
    stats.totalCycles += state.cycles;
    stats.totalOps += totalOps;
    stats.opLatency.sample(latency);
    const Tick clk = std::max<Tick>(clockPeriod(), 1);
    const auto ticksToCycles = [clk](Tick ticks) -> uint64_t {
        return static_cast<uint64_t>((ticks + clk - 1) / clk);
    };
    const uint64_t dmaReadCycles = ticksToCycles(currentJob->dmaReadTicks);
    const uint64_t computeCycles = ticksToCycles(currentJob->computeTicks);
    const uint64_t dmaWriteCycles = ticksToCycles(currentJob->dmaWriteTicks);
    stats.dmaReadCycles += dmaReadCycles;
    stats.computeCycles += computeCycles;
    stats.dmaWriteCycles += dmaWriteCycles;
    stats.memoryTransferCycles += (dmaReadCycles + dmaWriteCycles);

    // Estimated accelerator energy metrics (simple first-order model).
    const double latencySeconds =
        static_cast<double>(latency) / static_cast<double>(sim_clock::as_int::s);
    const double computeEnergyJ =
        static_cast<double>(totalOps) * energyPerOpPJ * 1.0e-12;
    const double dmaEnergyJ =
        static_cast<double>(currentJob->dmaReadBytes + currentJob->dmaWriteBytes) *
        dmaEnergyPerBytePJ * 1.0e-12;
    const double leakageEnergyJ =
        (leakagePowerMW * 1.0e-3) * latencySeconds;
    const double totalEnergyJ = computeEnergyJ + dmaEnergyJ + leakageEnergyJ;

    stats.estimatedComputeEnergyJ += computeEnergyJ;
    stats.estimatedDmaEnergyJ += dmaEnergyJ;
    stats.estimatedLeakageEnergyJ += leakageEnergyJ;
    stats.estimatedTotalEnergyJ += totalEnergyJ;

    const double gops_per_cycle = state.cycles ?
        static_cast<double>(totalOps) / static_cast<double>(state.cycles) : 0.0;
    DPRINTF(LMulAccel,
            "Completed: %d ops in %d cycles (%.2f GOPS/cycle), E=%.4e J\n",
            totalOps, state.cycles, gops_per_cycle, totalEnergyJ);

    // Keep completed results available for MMIO readback after job teardown.
    lastResult = currentJob->matrixC;

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

    if (!currentJob->useDma && !currentJob->useStreamedInputs) {
        // Fallback for compatibility when no streamed inputs are provided.
        for (uint32_t i = 0; i < currentJob->m; i++) {
            for (uint32_t j = 0; j < currentJob->n; j++) {
                uint32_t idx = i * currentJob->n + j;
                float val = ((float)(idx % 10) / 10.0f) + 0.5f;
                currentJob->matrixA[i * currentJob->n + j] = floatToBF16(val);
            }
        }

        for (uint32_t i = 0; i < currentJob->n; i++) {
            for (uint32_t j = 0; j < currentJob->p; j++) {
                uint32_t idx = i * currentJob->p + j;
                float val = ((float)(idx % 10) / 10.0f) + 0.5f;
                currentJob->matrixB[i * currentJob->p + j] = floatToBF16(val);
            }
        }

        DPRINTF(LMulAccel, "Using fallback test pattern (no streamed inputs)\n");
    }

    // Perform multiplication
    for (uint32_t i = 0; i < currentJob->m; i++) {
        for (uint32_t j = 0; j < currentJob->p; j++) {
            float sum = 0.0f;
            for (uint32_t k = 0; k < currentJob->n; k++) {
                uint16_t a = currentJob->matrixA[i * currentJob->n + k];
                uint16_t b = currentJob->matrixB[k * currentJob->p + j];
                uint16_t prod;
                
                // LMUL accelerator only does LMUL multiplication
                prod = lmulBF16(a, b);
                
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
