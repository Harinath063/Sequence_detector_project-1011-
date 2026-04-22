# 1011 Sequence Detector (Verilog)

## 📌 Overview
This project implements a sequence detector for the binary pattern **1011** using Verilog HDL. The detector monitors a serial input stream and produces an output signal whenever the sequence "1011" is detected.

## ⚙️ Features
- Detects sequence: **1011**
- Designed using Finite State Machine (FSM)
- Supports overlapping sequences
- Synthesizable Verilog code
- Includes testbench for simulation

## 🧠 Design Approach
The sequence detector is implemented using an FSM:
- States represent partial matching of the sequence
- Transitions occur based on input bits
- Output is asserted when full sequence is matched

Two types of implementations are possible:
- **Mealy Machine** (output depends on state + input)
- **Moore Machine** (output depends only on state)

## 🗂️ Files Included
- `sequence_detector.v` → Verilog design module
- `testbench.v` → Testbench for simulation
- `README.md` → Project documentation

## ▶️ Simulation
1. Compile the Verilog code using tools like ModelSim / Vivado
2. Run the testbench
3. Observe waveform output
4. Verify detection of sequence "1011"

## 📊 Example
Input Stream:  1 0 1 1  
Output:        0 0 0 1  

## 🛠️ Tools Used
- Verilog HDL
- ModelSim / Vivado (for simulation)

## 📚 Applications
- Pattern detection in digital systems
- Communication protocols
- Data stream monitoring

## 👨‍💻 Author
V.Venkata Harinath 
DECE in SVGP TIRUPATI..
