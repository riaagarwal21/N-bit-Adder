# N-bit Adder Module (adder_n)

The `adder_n` module is a parameterized n-bit adder designed in SystemVerilog. It adds two n-bit input vectors (A and B) to produce an n-bit sum output (Sum). The module employs a combination of half adders and full adders for efficient addition across multiple bits.

## Files

- `adder_n.sv`: Main module implementing the n-bit adder.
- `halfAdder.sv`: Module defining a half adder for adding the least significant bit.
- `fullAdder.sv`: Module defining a full adder for adding bits beyond the least significant bit.
- `tb_adder_n.sv`: Testbench module for verifying the functionality of `adder_n`.

## Design Overview

The `adder_n` module uses the following components:
- **Parameters**: 
  - `n`: Parameter specifying the bit-width of the adder.
  
- **Inputs**:
  - `A`: Input vector of size `n`, representing one of the operands.
  - `B`: Input vector of size `n`, representing the other operand.

- **Outputs**:
  - `Sum`: Output vector of size `n`, representing the sum of `A` and `B`.

- **Internals**:
  - `Carry`: Internal vector used for carry propagation between adder stages.
  - `Cout`: Carry output indicating overflow or carry out from the most significant bit.

- **Operation**:
  - The addition operation starts with a half adder for the least significant bit.
  - Full adders are used iteratively for each subsequent bit, utilizing the `Carry` vector for carry propagation.
  - The `Cout` signal indicates if there is an overflow or carry out beyond the most significant bit.

## Testbench (`tb_adder_n`)

The testbench `tb_adder_n` verifies the functionality of the `adder_n` module by applying various test cases and comparing the expected output (`Sum`) with the actual output produced by the module.

### Files

- `tb_adder_n.sv`: Main testbench module.
- `adder_n.sv`: Module under test (MUT).

### Test Cases

The testbench includes the following types of test cases:
- **Basic Cases**: Tests with specific input values to verify basic addition.
- **Edge Cases**: Tests with edge values to verify behavior at boundaries.
- **Random Cases**: Tests with randomly generated input values to ensure robustness.

### Usage

To use the `adder_n` module in your SystemVerilog project, instantiate it and connect the `A`, `B`, and `Sum` ports accordingly. Ensure that `A` and `B` are of size `n`, and `Sum` will also be of size `n`.

To get a local copy of the project, you can clone the repository using the below mentioned command:

      git clone https://github.com/riaagarwal21/N-bit-Adder

### Simulation Results
![image](https://github.com/user-attachments/assets/048d95c5-111d-43d7-a265-9b9b27e05a3b)


