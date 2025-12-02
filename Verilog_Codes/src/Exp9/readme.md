# 🎛 Experiment 9 – 4:1 MUX and 1:4 DEMUX in Verilog

## 🎯 Aim
To develop Verilog modules for:
1. A **4:1 Multiplexer (MUX)**
2. A **1:4 Demultiplexer (DEMUX)**

---

## 📚 Theory

### 🔹 4:1 Multiplexer (MUX)

A 4:1 MUX selects **one out of four inputs** based on **two select lines**:

- Inputs: `I0, I1, I2, I3`
- Select lines: `S1, S0`
- Output: `Y`

| S1 | S0 | Output Y |
|----|----|----------|
| 0  | 0  | I0       |
| 0  | 1  | I1       |
| 1  | 0  | I2       |
| 1  | 1  | I3       |

---

### 🔹 1:4 Demultiplexer (DEMUX)

A 1:4 DEMUX takes **one input line** and routes it to **one of four outputs** based on **two select lines**:

- Input: `D`
- Select lines: `S1, S0`
- Outputs: `Y0, Y1, Y2, Y3`

| S1 | S0 | Active Output |
|----|----|---------------|
| 0  | 0  | Y0 = D        |
| 0  | 1  | Y1 = D        |
| 1  | 0  | Y2 = D        |
| 1  | 1  | Y3 = D        |

---

## 📁 Suggested Files

- `mux4to1.v`        → 4:1 MUX module  
- `demux1to4.v`      → 1:4 DEMUX module  
- `tb_mux4to1.v`     → Testbench for 4:1 MUX  
- `tb_demux1to4.v`   → Testbench for 1:4 DEMUX  
- `sim/`             → VCD waveform files

---
