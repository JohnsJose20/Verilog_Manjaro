# 🔢 Experiment 8 – Adders in Verilog

## 🎯 Aim

1. To develop Verilog modules for **Half Adder** in three modeling styles:
   - Dataflow modeling  
   - Structural modeling  
   - Behavioral modeling  

2. To develop Verilog modules for **Full Adder using Half Adder**.

---

## 📚 Theory

### ➤ Half Adder

A **Half Adder** adds two 1-bit binary inputs, `A` and `B`, and produces:
- **SUM** = A ⊕ B  
- **CARRY** = A · B  

| A | B | SUM | CARRY |
|---|---|-----|-------|
| 0 | 0 |  0  |   0   |
| 0 | 1 |  1  |   0   |
| 1 | 0 |  1  |   0   |
| 1 | 1 |  0  |   1   |

---

### ➤ Full Adder (Using Half Adders)

A **Full Adder** adds three 1-bit inputs: `A`, `B`, and `Cin` (carry-in), and produces:
- **SUM**  
- **Cout** (carry-out)

Using **two Half Adders** and an **OR gate**:

1. First Half Adder:  
   - Inputs: A, B  
   - Outputs: S1, C1  

2. Second Half Adder:  
   - Inputs: S1, Cin  
   - Outputs: SUM, C2  

3. Carry Out:
   - Cout = C1 + C2

---

## 📁 Suggested Folder Structure

```bash
Exp8/
├── ha_dataflow.v
├── ha_structural.v
├── ha_behavioral.v
├── fa_using_ha.v
├── tb_ha_dataflow.v
├── tb_ha_structural.v
├── tb_ha_behavioral.v
├── tb_fa_using_ha.v
└── sim/
````

---

## 🧩 Module Overview

### 1️⃣ Half Adder – Dataflow (`ha_dataflow.v`)

* Uses **`assign`** statements.
* Implements:

  * `sum = a ^ b;`
  * `carry = a & b;`

### 2️⃣ Half Adder – Structural (`ha_structural.v`)

* Uses **gate-level primitives**:

  * `xor`, `and`

### 3️⃣ Half Adder – Behavioral (`ha_behavioral.v`)

* Uses **`always` block** with:

  * `sum` and `carry` assigned using procedural statements.

### 4️⃣ Full Adder using Half Adder (`fa_using_ha.v`)

* Instantiates:

  * **Two Half Adders**
  * **One OR gate** for final carry.

---

## 🧪 Testbenches

Each module should have a **separate testbench** to verify all input combinations.

### ✔ Testbenches

* `tb_ha_dataflow.v`
* `tb_ha_structural.v`
* `tb_ha_behavioral.v`
* `tb_fa_using_ha.v`

Each testbench should:

* Declare `reg` inputs (`a`, `b`, `cin` where needed)
* Declare `wire` outputs (`sum`, `carry` / `cout`)
* Apply all input combinations using delays (`#10;`)
* Use:

```verilog
$dumpfile("sim/<waveform_name>.vcd");
$dumpvars(0, <testbench_module_name>);
```

---

## ▶ How to Run (Icarus Verilog Example)

### 🛠 Compile

```bash
iverilog -o ha_df_tb tb_ha_dataflow.v ha_dataflow.v
iverilog -o ha_str_tb tb_ha_structural.v ha_structural.v
iverilog -o ha_beh_tb tb_ha_behavioral.v ha_behavioral.v
iverilog -o fa_ha_tb tb_fa_using_ha.v fa_using_ha.v ha_dataflow.v
```

*(Use the correct half adder file name that you instantiate in full adder.)*

### 🏃 Run

```bash
vvp ha_df_tb
vvp ha_str_tb
vvp ha_beh_tb
vvp fa_ha_tb
```

### 👀 View Waveforms (GTKWave)

```bash
gtkwave sim/ha_dataflow.vcd
gtkwave sim/ha_structural.vcd
gtkwave sim/ha_behavioral.vcd
gtkwave sim/fa_using_ha.vcd
```

---

## ✅ Expected Outcome

* Truth table of the **Half Adder** is verified using:

  * Dataflow, Structural, and Behavioral models.
* **Full Adder** operation is verified using **two Half Adders and an OR gate**.
* Students understand:

  * Different **modeling styles** in Verilog.
  * How to build complex circuits (**Full Adder**) from simpler blocks (**Half Adder**).

