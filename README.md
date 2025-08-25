# DSP48A1 Spartan-6 FPGA Design

## 📖 Overview
This project implements the **DSP48A1 slice** from the Spartan-6 FPGA family.  
The DSP48A1 is a dedicated arithmetic block designed for **digital signal processing (DSP)** tasks such as multiply-accumulate, addition, subtraction, and wide arithmetic operations.  
The design was fully coded in Verilog, tested with QuestaSim, and synthesized/implemented in Vivado.

## ⚙️ Features
- Configurable registers: `A0REG, A1REG, B0REG, B1REG, CREG, DREG, MREG, PREG`
- Carry and cascade support: `CARRYIN`, `CARRYOUT`, `BCIN`, `PCIN`
- Supports both synchronous and asynchronous resets (`RSTTYPE`)
- Wide data paths: 18-bit (A, B, D), 48-bit (C, P), 36-bit (M)
- Dynamic arithmetic operations controlled via `OPMODE`

## 🛠️ Tools & Technologies
- **Language:** Verilog HDL  
- **Simulation:** QuestaSim (functional verification, waveform analysis)  
- **Synthesis/Implementation:** Vivado (timing, utilization, schematic)  
- **Target Device:** Spartan-6 (xc7a200tffg1156-3)  

## 🚀 Deliverables
- RTL & Testbench code  
- Simulation waveforms  
- Constraint file (100 MHz clock on W5)  
- Schematic snippets after elaboration & synthesis  
- Utilization & timing reports  
- Linting results (no errors)  


## 🖥️ Simulation & Results
- [PDF Report](https://github.com/Khaled15102002/DSP48A1/blob/main/_Khaled_Ali_Project1.pdf)

## 📌 Steps 
- [PDF Report DSP48A1](https://github.com/Khaled15102002/DSP48A1/blob/main/DSP48A1.pdf)
- [PDF Report TB_Description](https://github.com/Khaled15102002/DSP48A1/blob/main/DSP_TB_Description.pdf)
 

