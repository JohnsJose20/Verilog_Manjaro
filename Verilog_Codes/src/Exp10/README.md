# 📘 **Experiment 10 – Flip-Flops and Counters (Behavioral Modeling)**

## 🎯 **Aim**

To develop Verilog modules for:

1. **SR Flip-Flop**
2. **JK Flip-Flop**
3. **T Flip-Flop**
4. **4-bit Ring Counter**
5. **4-bit Johnson Counter**

All circuits are implemented using **behavioral modeling**.

---

## 🧠 **Theory Overview**

### 🔹 **1. SR Flip-Flop**

* Inputs: **S (Set), R (Reset)**
* Output: **Q, Q̄**
* Behavior:

  * S=1, R=0 → Set
  * S=0, R=1 → Reset
  * S=0, R=0 → No change
  * S=1, R=1 → Invalid

---

### 🔹 **2. JK Flip-Flop**

Improves SR Flip-Flop by removing invalid state.

* J=0, K=0 → No change
* J=0, K=1 → Reset
* J=1, K=0 → Set
* J=1, K=1 → Toggle

---

### 🔹 **3. T Flip-Flop**

* T = 0 → Hold
* T = 1 → Toggle

Used in counters.

---

### 🔹 **4. Ring Counter (4-bit)**

A shift register with feedback:

```
0001 → 0010 → 0100 → 1000 → 0001 → ...
```

---

### 🔹 **5. Johnson Counter (4-bit)**

Also known as *Twisted Ring Counter*:

```
0000 → 0001 → 0011 → 0111 → 1111 → 1110 → 1100 → 1000 → 0000 → ...
```

---

## 📁 **Folder Structure**

```
Exp10/
├── sr_ff.v
├── jk_ff.v
├── t_ff.v
├── ring_counter.v
├── johnson_counter.v
├── tb_sr_ff.v
├── tb_jk_ff.v
├── tb_t_ff.v
├── tb_ring_counter.v
├── tb_johnson_counter.v
└── sim/
```

---

## 📂 **Module Summary**

| Module              | Description                                  |
| ------------------- | -------------------------------------------- |
| `sr_ff.v`           | SR flip-flop using behavioral `always` block |
| `jk_ff.v`           | JK flip-flop with toggle feature             |
| `t_ff.v`            | T flip-flop toggles on each clock            |
| `ring_counter.v`    | 4-bit rotating ring counter                  |
| `johnson_counter.v` | 4-bit Johnson (twisted ring) counter         |

---

## 🧪 **Testbenches**

Each testbench includes:

* Clock generator (`forever #5 clk = ~clk;`)
* Reset stimulus
* Test vector patterns
* Waveform dumping using:

```verilog
$dumpfile("sim/<filename>.vcd");
$dumpvars(0, <tb_module>);
```

This allows simulation using **Icarus Verilog** and waveform viewing in **GTKWave**.

---

## ▶ **Running the Experiment (Icarus Verilog)**

### **Compile**

Example for SR FF:

```bash
iverilog -o sr_tb tb_sr_ff.v sr_ff.v
```

### **Run**

```bash
vvp sr_tb
```

### **Open Waveform**

```bash
gtkwave sim/sr_ff.vcd
```

Repeat similarly for:

* `jk_ff`
* `t_ff`
* `ring_counter`
* `johnson_counter`

---

## ✅ **Expected Output**

* Flip-Flops should show correct **set, reset, hold, toggle** behavior.
* Ring counter should cycle through **one-hot pattern**.
* Johnson counter should generate **8-state sequence**.
* Waveforms should verify correct timing and transitions.

---
