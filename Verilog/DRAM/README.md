# DRAM 16Kx1 Design and Verification using Verilog

## Overview

This project presents the design and behavioral simulation of a **16K × 1 Dynamic Random Access Memory (DRAM)** using **Verilog HDL** in **Xilinx Vivado**.

The DRAM design supports:
- Row Address Strobe (RAS)
- Column Address Strobe (CAS)
- Read and Write Operations
- Bidirectional Data Bus
- Address Multiplexing
- Synchronous Memory Access

The functionality is verified using a custom Verilog Testbench and waveform simulation.

---

# Features

- 16K × 1 DRAM Architecture
- 14-bit Addressing using Row and Column Multiplexing
- Synchronous Operation
- Tri-state Bidirectional Data Bus
- Read and Write Support
- Behavioral Simulation in Vivado
- Block RAM Style Memory Inference

---

# Project Structure

```bash
DRAM/
│
├── dram_16k_x1.v         # DRAM RTL Design
├── dram_tb.v             # Testbench
├── dram.vcd              # Simulation Waveform Dump
├── schematic.png         # RTL Schematic
├── simulation.png        # Simulation Waveform
└── README.md             # Project Documentation
```

---

# DRAM Architecture

The RTL schematic generated from Vivado elaborated design is shown below.

## RTL Schematic

![RTL Schematic](schematic.png)

---

# DRAM Specifications

| Parameter | Value |
|-----------|-------|
| Memory Type | DRAM |
| Memory Size | 16K × 1 |
| Address Width | 14-bit |
| Row Address | 7-bit |
| Column Address | 7-bit |
| Data Width | 1-bit |
| Clock Type | Synchronous |
| Data Bus | Bidirectional |

---

# Input and Output Signals

| Signal | Direction | Description |
|--------|-----------|-------------|
| clk | Input | System Clock |
| rst_n | Input | Active Low Reset |
| ras_n | Input | Row Address Strobe |
| cas_n | Input | Column Address Strobe |
| we_n | Input | Write Enable |
| cs_n | Input | Chip Select |
| addr | Input | Multiplexed Address Bus |
| data | Inout | Bidirectional Data Bus |

---

# Internal Architecture

## Memory Array

The DRAM uses a 16K memory array:

```verilog
reg mem [0:16383];
```

---

## Address Latching

The address is divided into:
- Row Address
- Column Address

Both addresses are latched separately using:
- `RAS`
- `CAS`

### Full Address Formation

```text
Full Address = {Row Address, Column Address}
```

---

# Functional Operation

## Row Address Latching

When:
- `CS = 0`
- `RAS = 0`

The row address is stored into `row_addr`.

---

## Column Address Latching

When:
- `CS = 0`
- `CAS = 0`

The column address is stored into `col_addr`.

---

# Write Operation

During write operation:

- `WE = 0`
- Data from `data` bus is written into memory

### Write Flow

```text
DATA BUS → MEMORY ARRAY
```

---

# Read Operation

During read operation:

- `WE = 1`
- Memory data is placed onto the data bus

### Read Flow

```text
MEMORY ARRAY → data_out → DATA BUS
```

---

# Simulation Results

Behavioral simulation was performed using Xilinx Vivado.

---

## Simulation Waveform

![Simulation Waveform](simulation.png)

---

# Simulation Analysis

### Write Operation

- Row address `10` is latched
- Column address `5` is latched
- Data `1` is written into memory
- `drive = 1` enables data bus driving

---

### Read Operation

- Same row and column address are selected
- Stored data is successfully read back
- DRAM outputs data onto bidirectional bus

---

# DRAM Timing Signals

| Signal | Function |
|--------|----------|
| RAS | Row Address Selection |
| CAS | Column Address Selection |
| WE | Write Enable |
| CS | Chip Enable |

---

# Testbench Verification

The testbench performs:
- Reset Sequence
- Row Address Latching
- Column Address Latching
- Write Operation
- Read Operation
- Data Bus Verification

---

# Simulation Steps

## Run in Vivado

### Step 1
Open Vivado Project.

### Step 2
Add:
- `dram_16k_x1.v`
- `dram_tb.v`

### Step 3
Run Behavioral Simulation:

```text
Flow Navigator → Simulation → Run Behavioral Simulation
```

### Step 4
Observe waveform outputs.

---

# VCD Waveform Support

The project can generate:

```text
dram.vcd
```

This file can be opened using:
- GTKWave
- Vivado Waveform Viewer
- ModelSim

---

# Tools Used

| Tool | Purpose |
|------|---------|
| Verilog HDL | Hardware Description |
| Xilinx Vivado 2025.2 | Design & Simulation |
| GTKWave | Waveform Visualization |

---

# Applications

- Dynamic Memory Systems
- Embedded Systems
- FPGA Memory Modeling
- High Density Storage
- Computer Architecture Research

---

# Future Improvements

- DRAM Refresh Logic
- Burst Read/Write Support
- SDRAM Controller Design
- DDR DRAM Architecture
- Timing Optimization
- FPGA Hardware Implementation

---

# Author

**Gaurav Kumar**

---

# License

This project is developed for educational and academic purposes.
