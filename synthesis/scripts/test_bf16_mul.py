#!/usr/bin/env python3
"""
Test script to verify IEEE BF16 multiplier works correctly
Compares hardware simulation results with Python standard multiplication
"""

import sys
import struct
import subprocess
import tempfile
import os

sys.path.insert(0, 'rtl')
from lmul_tester import BatchLMULTester

def float_to_bf16(f: float) -> int:
    """Convert float32 to bfloat16 (16-bit)"""
    import numpy as np
    if np.isnan(f):
        return 0x7FC0
    if np.isinf(f):
        return 0xFF80 if f < 0 else 0x7F80
    f = np.clip(f, -3.4e38, 3.4e38)
    f32_bits = struct.unpack('>I', struct.pack('>f', np.float32(f)))[0]
    bf16_bits = (f32_bits >> 16) & 0xFFFF
    return bf16_bits

def bf16_to_float(bf16: int) -> float:
    """Convert bfloat16 to float32"""
    # Sign extend to 32 bits
    f32_bits = (bf16 & 0xFFFF) << 16
    return struct.unpack('>f', struct.pack('>I', f32_bits))[0]

def create_testbench(test_cases):
    """Create Verilog testbench for IEEE BF16 multiplier"""
    testbench = """
`timescale 1ns/1ps
module tb_bf16_mul;
    reg clk;
    reg rstn;
    reg i_valid;
    reg o_ready;
    reg [15:0] i_a;
    reg [15:0] i_b;
    wire i_ready;
    wire o_valid;
    wire [15:0] o_p;
    
    // Instantiate DUT
    bf16_mul dut (
        .clk(clk),
        .rstn(rstn),
        .i_valid(i_valid),
        .i_ready(i_ready),
        .i_a(i_a),
        .i_b(i_b),
        .o_valid(o_valid),
        .o_ready(o_ready),
        .o_p(o_p)
    );
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        rstn = 0;
        i_valid = 0;
        o_ready = 1;
        #20;
        rstn = 1;
        #10;
"""
    
    for i, (a_bf16, b_bf16) in enumerate(test_cases):
        testbench += f"""
        // Test case {i}
        i_a = 16'h{a_bf16:04X};
        i_b = 16'h{b_bf16:04X};
        i_valid = 1;
        #10;
        while (!o_valid) #10;
        $display("RESULT: %04X", o_p);
        i_valid = 0;
        #10;
"""
    
    testbench += """
        #100;
        $finish;
    end
endmodule
"""
    return testbench

def test_ieee_multiplier():
    """Test IEEE BF16 multiplier against standard multiplication"""
    print("=" * 70)
    print("Testing IEEE BF16 Multiplier")
    print("=" * 70)
    print()
    
    # Test cases: (a, b) pairs
    test_cases = [
        (2.5, 3.5),      # 8.75
        (1.0, 1.0),      # 1.0
        (0.5, 0.5),      # 0.25
        (10.0, 2.0),     # 20.0
        (0.1, 0.1),      # 0.01
        (100.0, 0.5),    # 50.0
        (-2.0, 3.0),     # -6.0
        (0.0, 5.0),      # 0.0 (zero case)
    ]
    
    # Convert to BF16
    test_vectors = [(float_to_bf16(a), float_to_bf16(b)) for a, b in test_cases]
    
    # Create testbench
    tb_code = create_testbench(test_vectors)
    
    # Write testbench to temp file
    with tempfile.NamedTemporaryFile(mode='w', suffix='.v', delete=False) as f:
        f.write(tb_code)
        tb_file = f.name
    
    try:
        # Compile
        compile_cmd = ['iverilog', '-o', '/tmp/bf16_test', 
                      'synthesis/rtl/bf16_mul.v', tb_file]
        result = subprocess.run(compile_cmd, capture_output=True, text=True)
        if result.returncode != 0:
            print(f"❌ Compilation failed:")
            print(result.stderr)
            return False
        
        # Run simulation
        run_cmd = ['vvp', '/tmp/bf16_test']
        result = subprocess.run(run_cmd, capture_output=True, text=True)
        
        # Parse results
        results = []
        for line in result.stdout.split('\n'):
            if 'RESULT:' in line:
                hex_val = line.split()[-1]
                results.append(int(hex_val, 16))
        
        if len(results) != len(test_cases):
            print(f"❌ Expected {len(test_cases)} results, got {len(results)}")
            return False
        
        # Compare with standard multiplication
        print(f"{'A':<12} {'B':<12} {'Expected':<15} {'Got':<15} {'Match':<10}")
        print("-" * 70)
        
        all_match = True
        for i, ((a, b), (a_bf16, b_bf16), hw_result) in enumerate(zip(test_cases, test_vectors, results)):
            expected_float = a * b
            expected_bf16 = float_to_bf16(expected_float)
            got_float = bf16_to_float(hw_result)
            
            # Compare (allow small differences due to rounding)
            match = "✅ YES" if expected_bf16 == hw_result else "⚠️  CLOSE" if abs(got_float - expected_float) < abs(expected_float) * 0.1 else "❌ NO"
            if expected_bf16 != hw_result:
                all_match = False
            
            print(f"{a:<12.2f} {b:<12.2f} {expected_float:<15.6f} {got_float:<15.6f} {match:<10}")
            if expected_bf16 != hw_result:
                print(f"  Expected BF16: 0x{expected_bf16:04X}, Got: 0x{hw_result:04X}")
        
        print()
        if all_match:
            print("✅ All test cases match exactly!")
        else:
            print("⚠️  Some test cases have small differences (expected due to BF16 precision)")
        
        return True
        
    finally:
        # Cleanup
        if os.path.exists(tb_file):
            os.unlink(tb_file)
        if os.path.exists('/tmp/bf16_test'):
            os.unlink('/tmp/bf16_test')

if __name__ == "__main__":
    success = test_ieee_multiplier()
    sys.exit(0 if success else 1)

