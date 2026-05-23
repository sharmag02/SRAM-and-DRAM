# CMOS VLSI Design of SRAM and DRAM using Cadence Virtuoso

## Overview

This directory contains the CMOS VLSI implementation and simulation of:

- SRAM (Static Random Access Memory)
- DRAM (Dynamic Random Access Memory)

The designs are implemented using:
- Cadence Virtuoso
- Spectre Simulator
- CMOS Technology Libraries

The project demonstrates:
- Memory Cell Design
- CMOS Circuit Implementation
- DC Analysis
- Transient Analysis
- Read and Write Operations
- Stability Verification

---

# Folder Structure

```bash
CMOS-VLSI/
│
├── SRAM/
│   │
│   ├── 6TSRAM.png
│   ├── 6T SRAM Cell.png
│   ├── 6T SRAM Transient Analysis.png
│   ├── 6TSRAM DC Analysis.png
│   └── README.md
│
├── DRAM/
│   │
│   ├── dram.PNG
│   ├── dram timing diagram.PNG
│   ├── DRAM DC Analysis.png
│   └── README.md
│
└── README.md
```

---

# SRAM CMOS Design

## 6T SRAM Cell

The SRAM design is based on a standard:
- 6 Transistor SRAM Architecture
- Cross-Coupled Inverters
- Access Transistors controlled by Word Line

### Features

- Static Data Retention
- Complementary Outputs (`Q` and `Qb`)
- Read and Write Operations
- Stability Verification
- DC and Transient Analysis

---

## SRAM Design Preview

![6T SRAM]
<img width="1378" height="598" alt="image" src="https://github.com/user-attachments/assets/a719800f-2361-4ee6-9fd2-77ab689b12cb" />


---

## SRAM Transient Analysis

![SRAM Transient]
<img width="1706" height="598" alt="image" src="https://github.com/user-attachments/assets/3e86aec9-5619-4f3c-a542-b240f8e9930a" />


---

## SRAM DC Analysis

![SRAM DC]
<img width="1713" height="667" alt="image" src="https://github.com/user-attachments/assets/dc8dfa8e-7b5a-4046-86e1-23588042ebf4" />


---

# DRAM CMOS Design

## 1T1C DRAM Cell

The DRAM design is based on:
- 1 Access NMOS Transistor
- 1 Storage Capacitor

### Features

- Dynamic Charge Storage
- Read and Write Operations
- Capacitor Charging/Discharging
- Timing Analysis
- DC Analysis

---

## DRAM Design Preview

![DRAM]
<img width="669" height="354" alt="image" src="https://github.com/user-attachments/assets/43091dfd-1105-48c5-a5ba-98f934bc3ea0" />


---

## DRAM Transient Analysis

![DRAM Timing]
<img width="1151" height="339" alt="image" src="https://github.com/user-attachments/assets/e664502b-95bc-44e8-aa0a-a23f3f0b2909" />


---

## DRAM DC Analysis

![DRAM DC]
<img width="1711" height="660" alt="image" src="https://github.com/user-attachments/assets/ee950758-ba53-4897-9c3e-1589d1f3eea4" />


---

# Tools and Technologies

| Tool | Purpose |
|------|---------|
| Cadence Virtuoso | CMOS Circuit Design |
| Spectre Simulator | Analog Simulation |
| CMOS Technology Library | Device Modeling |
| VMware | Virtual Environment |

---

# Simulations Performed

## SRAM Simulations
- Transient Analysis
- DC Analysis
- Stability Verification
- Read Operation
- Write Operation

---

## DRAM Simulations
- Transient Analysis
- DC Analysis
- Capacitor Charge Analysis
- Read Operation
- Write Operation

---

# Memory Design Concepts

## SRAM
- Uses bistable latching circuitry
- Retains data as long as power is supplied
- Faster access time
- Used in cache memory

---

## DRAM
- Stores data as capacitor charge
- Requires periodic refresh
- Higher density memory
- Used in main memory systems

---

# Applications

- Cache Memory Design
- Main Memory Systems
- Embedded Systems
- VLSI Memory Arrays
- Digital IC Design
- Low Power Memory Design

---

# Future Improvements

- SRAM Array Design
- DRAM Refresh Circuit
- Layout Design
- DRC/LVS Verification
- Low Power Optimization
- Sense Amplifier Integration

---

# Author

## Gaurav Kumar

### Contact Information

- Email: contact.sharmag02@gmail.com
- LinkedIn: https://www.linkedin.com/in/sharmag02
- GitHub: https://github.com/sharmag02

---

# Contributions

Contributions and suggestions are welcome.

Feel free to:
- Open Issues
- Suggest Improvements
- Fork the Repository
- Create Pull Requests

---

# License

This project is developed for educational and academic purposes.
