# 📘 **Experiment 10 – Flip-Flops and Counters (Behavioral Modeling in Verilog)**

## 🎯 **Aim**

To develop Verilog modules for:

1. **SR Flip-Flop**
2. **JK Flip-Flop**
3. **D Flip-Flop**
4. **T Flip-Flop**
5. **4-bit Ring Counter**
6. **4-bit Johnson Counter**

All implementations use **behavioral modeling**.

---

## 🧠 **Theory Overview**

### 🔹 **1. SR Flip-Flop**

* Inputs: **S (Set)**, **R (Reset)**
* Outputs: **Q**, **Q̄**
* Operation:

  * S=1, R=0 → Set
  * S=0, R=1 → Reset
  * S=0, R=0 → Hold
  * S=1, R=1 → Invalid

---

### 🔹 **2. JK Flip-Flop**

An improved version of SR FF without invalid state.

* J=0, K=0 → Hold
* J=0, K=1 → Reset
* J=1, K=0 → Set
* J=1, K=1 → Toggle

---

### 🔹 **3. D Flip-Flop**

The simplest FF — eliminates ambiguity.

* On each positive clock edge → **Q = D**
* Reset clears the output.

---

### 🔹 **4. T Flip-Flop**

Used widely in counters.

* T = 0 → Hold state
* T = 1 → Toggle state

---

### 🔹 **5. 4-bit Ring Counter**

A shift register where the MSB circulates to the LSB.

Sequence (4-bit):

```
0001 → 0010 → 0100 → 1000 → 0001 → ...
```

---

### 🔹 **6. 4-bit Johnson Counter**

Also known as Twisted Ring Counter.

Sequence (4-bit):

```
0000 → 0001 → 0011 → 0111 → 1111 → 1110 → 1100 → 1000 → 0000 → ...
```

---

## 📁 **Folder Structure**

```
Exp10/
├── sr_ff.v
├── jk_ff.v
├── d_ff.v
├── t_ff.v
├── ring_counter.v
├── johnson_counter.v
├── tb_sr_ff.v
├── tb_jk_ff.v
├── tb_d_ff.v
├── tb_t_ff.v
├── tb_ring_counter.v
├── tb_johnson_counter.v
└── sim/
```

---

## 🧪 **Testbench Details**

Each testbench includes:

* **Clock generator**

```verilog
forever #5 clk = ~clk;
```

* Asynchronous **active-high reset**
* Input stimulus patterns
* Waveform dump:

```verilog
$dumpfile("sim/<name>.vcd");
$dumpvars(0, <tb_module>);
```

View waveforms using GTKWave.

---

## ▶ **How to Run (Icarus Verilog + GTKWave)**

### Compile

```bash
iverilog -o sr_tb tb_sr_ff.v sr_ff.v
```

### Run

```bash
vvp sr_tb
```

### View waveform

```bash
gtkwave sim/sr_ff.vcd
```

Repeat similarly for:

* JK
* D
* T
* Ring Counter
* Johnson Counter

---

## ✅ **Expected Output**

* Flip-flops exhibit **set, reset, toggle, and hold** operations correctly.
* D flip-flop follows **Q = D** at the clock edge.
* Ring counter generates a **1-hot cyclic pattern**.
* Johnson counter produces an **8-step sequence**.
* GTKWave waveforms verify timing and operation.

