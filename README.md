# Verilog Implementation of 32x8 Asynchronous FIFO

This repository contains the Verilog implementation of a 32x8 Asynchronous FIFO (First-In First-Out) memory, designed to handle safe data transfer between two independent clock domains. The project demonstrates how key concepts in digital design and synchronization can be put into practice using Verilog HDL and simulated using ModelSim.

---

## 📚 Table of Contents

1. [Project Description](#project-description)  
2. [Key Concepts Learnt](#key-concepts-learnt)  
3. [Tools Used](#tools-used)  
4. [How to Run](#how-to-run)  
5. [Simulation Output Screenshots](#simulation-output-screenshots)  
6. [Folder Structure](#folder-structure)  
7. [Contact](#contact)

---

## 🧾 Project Description

An **Asynchronous FIFO** is a memory buffer used to safely pass data between two systems that operate on different clocks. This design supports independent read and write operations with asynchronous clocks and incorporates Gray code pointer management, synchronization logic, and control signals to detect FIFO full/empty conditions. The design is verified using testbenches and waveform analysis in ModelSim.

---

## 🧠 Key Concepts Learnt

> "I’m excited to share my new project on Verilog implementation of a 32x8 asynchronous FIFO. It may sound like a basic project, but this was my journey of decoding logic from scratch, learning, failing, and debugging my way through."

In the process of building this FIFO from scratch, I gained hands-on experience in:
- Write and read pointer generation and management.
- Gray code conversion for safe clock domain crossing.
- Full/empty detection logic for FIFO buffers.
- Synchronization and metastability handling.
- Simulation and debugging in ModelSim.

---

## 🛠️ Tools Used

| Tool        | Purpose                            |
|-------------|------------------------------------|
| Verilog HDL | RTL Design                         |
| ModelSim    | Simulation and Waveform Analysis   |
| Git         | Version Control                    |
| Markdown    | Documentation                      |

---

## ▶️ How to Run

1. Clone this repository:
```bash
git clone https://github.com/yourusername/async-fifo-verilog.git
cd async-fifo-verilog
