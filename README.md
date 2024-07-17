# N-bit Adder Module (adder_n)

The `adder_n` module is a parameterized n-bit adder designed in SystemVerilog. It adds two n-bit input vectors (A and B) to produce an n-bit sum output (Sum). The module employs a combination of half adders and full adders for efficient addition across multiple bits.

## Files

- `adder_n.sv`: Main module implementing the n-bit adder.
- `halfAdder.sv`: Module defining a half adder for adding the least significant bit.
- `fullAdder.sv`: Module defining a full adder for adding bits beyond the least significant bit.

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

## Usage

To use the `adder_n` module in your SystemVerilog project, instantiate it and connect the `A`, `B`, and `Sum` ports accordingly. Ensure that `A` and `B` are of size `n`, and `Sum` will also be of size `n`.

To get a local copy of the project, you can clone the repository using the below mentioned command:

      git clone https://github.com/riaagarwal21/N-bit-Adder

## Simulation Results
![image](https://github.com/user-attachments/assets/ad4e0c28-f655-4c5d-b63d-76c80670554c)

