# Asynchronous FIFO in Verilog (32x8)

## 📌 Project Description
This project implements a 32x8 asynchronous FIFO in Verilog to safely transfer data between two clock domains. Key concepts include Gray-coded pointers, full/empty detection logic, clock domain synchronization, and metastability handling.

## 📁 Folder Structure
- **src/** – RTL code for FIFO and support modules.
- **tb/** – Testbench files for simulation and validation.
- **sim/** – ModelSim simulation scripts and waveform results.
- **docs/** – Diagrams and documentation explaining FIFO internals.
- **reports/** – Project summary and analysis.

## 🧠 Key Concepts Learned
- Gray Code for Clock Domain Crossing
- Write/Read Pointer Management
- Full and Empty Flag Detection
- Synchronization and Metastability Avoidance

## ✅ Simulation
Verified using ModelSim. Outputs compared against expected data using dynamic testbench.

## 🚀 Getting Started
```sh
# Clone the repo
git clone https://github.com/Vidhya0104/async-fifo-verilog

# Open ModelSim and run the simulation
vsim -do sim/modelsim.do
