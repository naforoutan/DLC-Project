# Verilog Projects Repository

## Description
This repository contains multiple Verilog implementations covering transistor-level, gate-level, and dataflow coding styles. Each module is accompanied by a testbench to validate functionality.

## Implemented Modules

### 1. Boolean Function Implementation
**Function:**  
\[ f(A, B, C, D) = A'C + AB'C + BD' + A'C'D' \]

- **Implementation:** Transistor-level Verilog coding
- **Testbench:** Tests all possible input combinations

### 2. 4-bit Signed Adder with Overflow Detection
- **Implementation:** Gate-level Verilog coding
- **Features:** Overflow detection
- **Testbench:**
  - Two positive numbers without overflow
  - Two positive numbers with overflow
  - Two negative numbers without overflow
  - Two negative numbers with overflow

### 3. 6-bit ALU with Four Operations
- **Implementation:** Dataflow coding
- **Operations:**
  - Mode 0: \( (A <<< 2) + (B >>> 1) \)
  - Mode 1: \( A + 3B \)
  - Mode 2: \( -B \)
  - Mode 3: \( |2A - B| \)
- **Testbench:** Tests all operation modes with varying inputs

### 4. Odd Number Counter (1 to 9)
- **Implementation:** Sequential logic
- **Testbench:** Verifies counting sequence from 1 to 9 (odd numbers only)

### 5. Sequence Detector (Detects 0110110)
- **Implementation:** Finite State Machine (FSM)
- **Testbench:** Verifies correct detection of the sequence within different input streams

## How to Run
1. Clone the repository:
   ```sh
   git clone <https://github.com/naforoutan/DLC-Project.git>
   cd <DLC-Project>
   ```
2. Use a Verilog simulator such as ModelSim, Vivado, or Icarus Verilog to compile and run each module.

## File Structure
```
/verilog-projects/

.
├── docs
│   ├── project.pdf
│   └── report.pdf
├── problem1
│   ├── problem1.module.v
│   ├── problem1.module.v.out
│   ├── problem1.testbench.v
│   ├── problem1.testbench.v.out
│   └── waveform_problem1.vcd
├── problem2
│   ├── signed.fulladder.module.v
│   ├── signed.fulladder.module.v.out
│   ├── signed.fulladder.testbench.v
│   ├── signed.fulladder.testbench.v.out
│   └── waveform_problem2.vcd
├── problem3
│   ├── alu.module.v
│   ├── alu.module.v.out
│   ├── alu.testbench.v
│   ├── alu.testbench.v.out
│   └── waveform_problem3.vcd
├── problem4
│   ├── odd.counter.module.v
│   ├── odd.counter.module.v.out
│   ├── odd.counter.testbench.v
│   ├── odd.counter.testbench.v.out
│   └── waveform_problem4.vcd
├── problem5
│   ├── sequence.detector.module.v
│   ├── sequence.detector.module.v.out
│   ├── sequence.detector.testbench.v
│   ├── sequence.detector.testbench.v.out
│   └── waveform_problem5.vcd
└── README.md

6 directories, 28 files

```

## Author
Nazanin Foroutan, a computer engineering student and passionate about tech.

