# 📘 **Experiment 7 – Basic Gates, SOP & POS Implementation in Verilog**

## 🔹 **Aim**

1. **Develop Verilog modules for basic logic gates and verify their truth tables.**
2. **Design and simulate HDL code to implement SOP and POS expressions.**

---

## 📁 **Folder Structure**

```
Exp7/
├── dfgates.v
├── sfgates.v
├── sopdf.v
├── sopsf.v
├── posdf.v
├── possf.v
├── tb_dfgates.v
├── tb_sfgates.v
├── tb_sopdf.v
├── tb_sopsf.v
├── tb_posdf.v
├── tb_possf.v
└── sim/
```

---

# 🧩 **Part 1 — Basic Gates**

Two models are created:

### **1. Dataflow Model – `dfgates.v`**

Implements gates using **assign** statements.

### **2. Structural Model – `sfgates.v`**

Implements gates using **gate-level primitives**:

```
and, or, not, xor, nand, xnor
```

### **Testbench**

* `tb_dfgates.v`
* `tb_sfgates.v`

Both testbenches apply **all input combinations** of `a` and `b` and store waveforms using:

```verilog
$dumpfile("sim/wave.vcd");
$dumpvars(0, testbench_name);
```

---

# 🧩 **Part 2 — SOP & POS Expressions**

### **SOP Expression Implemented**

[
F = a'c' + b'c
]

#### ✔ Dataflow Model — `sopdf.v`

Uses `assign`.

#### ✔ Structural Model — `sopsf.v`

Uses `not`, `and`, `or`.

#### Testbenches:

* `tb_sopdf.v`
* `tb_sopsf.v`

---

### **POS Expression Implemented**

[
F = (a + d')(b + d)
]

#### ✔ Dataflow Model — `posdf.v`

Uses OR & AND combinations.

#### ✔ Structural Model — `possf.v`

Uses `not`, `or`, `and`.

#### Testbenches:

* `tb_posdf.v`
* `tb_possf.v`

---

# ▶ **How to Run (Manjaro + Icarus Verilog)**

### **Compile**

```bash
iverilog -o gates_tb tb_sfgates.v sfgates.v
```

### **Run**

```bash
vvp gates_tb
```

### **Open Waveform**

```bash
gtkwave sim/wave_sfgates.vcd
```

---

# 📌 **Expected Outcome**

✔ Truth tables of **all basic gates** are verified.
✔ SOP & POS expressions are implemented using **dataflow** and **structural** models.
✔ Waveform visualization clearly shows gate-level behavior.
✔ Understanding of **HDL modeling styles** is strengthened.

---
