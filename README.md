# ASIC Logic Synthesis & Static Timing Analysis (STA) Portfolio

## 📌 Overview
This repository serves as a technical portfolio demonstrating the **ASIC Logic Synthesis flow** and **Static Timing Analysis (STA)** methodology. Using **Cadence Genus** and standard cell libraries (45nm GPDK), these projects bridge the gap between behavioral RTL design and physical gate-level implementation. 

Instead of raw execution scripts, this repository focuses on **comprehensive documentation, detailed execution steps, and deep-dive analysis** of critical ASIC concepts such as timing constraints (SDC), area-delay trade-offs, and low-power techniques.

## 🛠️ Tools & Technologies
* **Synthesis & STA:** Cadence Genus
* **Simulation & Verification:** Cadence Xcelium, SimVision
* **Technology Node:** 45nm GPDK (Fast/Slow, LVT/HVT corners)
* **Constraints:** Synopsys Design Constraints (SDC)
* **Languages:** SystemVerilog, Tcl

---

## 🔬 Project Highlights & Analysis

### 1. Synthesis & Standard Cell Mapping (Lab 2)
* **Flow Setup:** Established the fundamental logic synthesis flow using Cadence Genus to map behavioral RTL models to 45nm standard cell libraries.
* **PVT Corner Analysis:** Evaluated the design across multiple Process, Voltage, and Temperature (PVT) corners to ensure robust performance.
* **Post-Synthesis Validation:** Validated functional correctness under real gate delays using **SDF back-annotation** in gate-level simulations.

### 2. Timing Closure & Area-Delay Trade-offs (Lab 3)
* **Constraint Sweeping:** Quantitatively analyzed the Area-Delay Trade-off by tightening the clock period constraint (`set_max_delay`) from 1.0 ns down to 0.5 ns. 
* **Tool Behavior Analysis:** Observed the synthesis engine forcing cell upsizing to meet strict timing constraints, which resulted in a significant logic area surge (from 29 to 63 cells). The design reached its physical performance limit at 0.5 ns with a slack of exactly 0.000 ns.
* **Low-Power Impact (Clock Gating):** Implemented clock gating on a 4-bit ALU. The analysis revealed a critical limitation in small-scale designs: the hardware overhead (Flip-flops increased from 4 to 20) caused a 111% increase in power consumption and systematic timing violations (slack = -0.404 ns). 

---
*Note: This portfolio is based on projects completed within the Introduction to IC Design coursework at Ho Chi Minh City University of Technology (HCMUT).*
