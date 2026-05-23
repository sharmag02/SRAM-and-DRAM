# SRAM and DRAM Design using Verilog HDL

## Overview

This repository contains the Verilog implementation and simulation of:

- Static Random Access Memory (SRAM)
- Dynamic Random Access Memory (DRAM)

The project focuses on digital memory design, behavioral modeling, RTL implementation, and simulation verification using **Verilog HDL** and **Xilinx Vivado**.

The repository is organized into:
- Verilog-based memory designs
- CMOS/VLSI implementations
- Simulation waveforms
- RTL schematics
- Testbenches

---

# Repository Structure

```bash
SRAM-and-DRAM/
│
├── Verilog/
│   │
│   ├── SRAM/
│   │   ├── ssram.v
│   │   ├── ssram_tb.v
│   │   ├── ssram.vcd
│   │   ├── schematic.png
│   │   ├── simulation.png
│   │   ├── simulation2.png
│   │   └── README.md
│   │
│   ├── DRAM/
│   │   ├── dram_16k_x1.v
│   │   ├── dram_tb.v
│   │   ├── dram.vcd
│   │   ├── schematic.png
│   │   ├── simulation.png
│   │   └── README.md
│   │
│   └── README.md
│
├── CMOS-VLSI/
│
└── README.md
```

---

# Project Modules

## SRAM Design

The SRAM module implements:
- Synchronous Read/Write Operations
- Bidirectional Data Bus
- Address Registering
- Tri-state Output Control

### Features

- 4-bit Address Bus
- 8-bit Data Bus
- 16-word Memory Array
- Registered Output
- Behavioral Simulation

---

## DRAM Design

The DRAM module implements:
- Row and Column Address Multiplexing
- RAS/CAS Control Logic
- Dynamic Memory Access
- Bidirectional Data Bus

### Features

- 16K × 1 Memory
- 14-bit Addressing
- Row/Column Address Latching
- Read and Write Operations
- Block RAM Style Inference

---

# Tools and Technologies

| Tool / Technology | Purpose |
|------------------|---------|
| Verilog HDL | Hardware Description Language |
| Xilinx Vivado 2025.2 | Design & Simulation |
| GTKWave | Waveform Visualization |
| FPGA Design Flow | RTL Design & Verification |

---

# Simulation and Verification

Both SRAM and DRAM modules are verified using custom Verilog testbenches.

Simulation includes:
- Read Operations
- Write Operations
- Address Latching
- Bidirectional Bus Verification
- Waveform Analysis

---

# RTL Schematics

The repository includes:
- Elaborated RTL Schematics
- Simulation Waveforms
- Functional Verification Results

---

# SRAM Simulation

## RTL Schematic

![SRAM RTL](SRAM/schematic.png)

---

## SRAM Waveform

![SRAM Simulation](SRAM/simulation.png)

---

# DRAM Simulation

## RTL Schematic

![DRAM RTL](DRAM/schematic.png)

---

## DRAM Waveform

![DRAM Simulation](DRAM/simulation.png)

---

# How to Run the Project

## Using Xilinx Vivado

### Step 1
Clone the repository:

```bash
git clone <repository-link>
```

---

### Step 2
Open Vivado.

---

### Step 3
Navigate to:
- `Verilog/SRAM/`
- `Verilog/DRAM/`

---

### Step 4
Add source and testbench files.

---

### Step 5
Run Behavioral Simulation:

```text
Flow Navigator → Simulation → Run Behavioral Simulation
```

---

# Waveform Support

The repository includes:
- `.vcd` waveform files
- Vivado simulation screenshots
- RTL schematic images

Waveforms can be opened using:
- GTKWave
- Vivado
- ModelSim

---

# Applications

- FPGA Memory Design
- Embedded Systems
- Computer Architecture
- Digital Electronics
- VLSI Design
- Cache and Main Memory Modeling

---

# Future Enhancements

- SDRAM Controller
- DDR Memory Architecture
- Cache Memory Integration
- Dual-Port SRAM
- DRAM Refresh Logic
- FPGA Hardware Implementation

---

# Author

**Gaurav Kumar**

---

# License

This project is developed for educational and academic purposes.
