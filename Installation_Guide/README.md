# 📘 **Verilog Development Setup on Manjaro Linux (Vivado-Style Simulation)**

This guide helps you set up a **complete Verilog workflow on Manjaro** using:

* **Icarus Verilog** (Compiler/Simulator)
* **GTKWave** (Waveform viewer)
* **VS Code** (Editor for HDL)

This environment is lightweight, fast, and works similarly to Vivado's simulator.

---

# 🚀 **1. Install Verilog Tools**

Open terminal and run:

```bash
sudo pacman -S iverilog gtkwave
```

* **Icarus Verilog (iverilog)** → compiles and simulates Verilog
* **GTKWave** → displays waveform output (`.vcd`)

---

# 🖥️ **2. Install VS Code**

```bash
sudo pacman -S code
```

---

# 🔌 **3. Install Verilog Extensions in VS Code**

Open VS Code → press **Ctrl + Shift + X** → install:

1. **Verilog-HDL/SystemVerilog**
2. **Verilog Testbench Generator** (optional)
3. **Code Runner** (optional)

---

# 📂 **4. Create Project Structure**

Create a folder and open it in VS Code:

```
verilog_project/
 ├── src/         # Verilog modules
 │    └── dfgates.v
 ├── tb/          # Testbenches
 │    └── tb_dfgates.v
 └── sim/         # Simulation output (VCD)
```

---

# 🧩 **5. Example Verilog Module**

`src/dfgates.v`

```verilog
module dfgates(a, b, y1, y2, y3, y4, y5, y6);
    input a, b;
    output y1, y2, y3, y4, y5, y6;

    assign y1 = a | b;      // OR
    assign y2 = a & b;      // AND
    assign y3 = ~a;         // NOT
    assign y4 = a ^ b;      // XOR
    assign y5 = ~(a & b);   // NAND
    assign y6 = ~(a ^ b);   // XNOR
endmodule
```

---

# 🧪 **6. Testbench Example**

`tb/tb_dfgates.v`

```verilog
module tb_dfgates;
    reg a, b;
    wire y1, y2, y3, y4, y5, y6;

    dfgates uut(a, b, y1, y2, y3, y4, y5, y6);

    initial begin
        $dumpfile("sim/wave.vcd");
        $dumpvars(0, tb_dfgates);

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end
endmodule
```

---

# ⚙️ **7. Run Simulation**

Open VS Code terminal (**Ctrl + `**) and compile:

```bash
iverilog tb/tb_dfgates.v src/dfgates.v -o sim/run
```

Run the simulation:

```bash
./sim/run
```

This generates:

```
sim/wave.vcd
```

---

# 📈 **8. View Waveform in GTKWave**

```bash
gtkwave sim/wave.vcd
```

Inside GTKWave:

1. Expand `tb_dfgates`
2. Select all signals
3. Click **Insert**
4. Waveform appears (Vivado-like)

---

# 🖼️ **9. Export Waveform as PNG**

In GTKWave:

```
File → Write Image → PNG → Save
```

or

```
File → Print to File → PNG
```

---

# 🎯 **10. Optional: One-Click Simulation**

Create `run.sh`:

```bash
#!/bin/bash
iverilog tb/tb_dfgates.v src/dfgates.v -o sim/run
./sim/run
gtkwave sim/wave.vcd
```

Make it executable:

```bash
chmod +x run.sh
```

Run everything:

```bash
./run.sh
```

---

# ⭐ **Conclusion**

You now have a complete Verilog development environment on Manjaro:

* Write Verilog in VS Code
* Simulate using Icarus Verilog
* View waveforms using GTKWave
* Export PNGs
* Works similar to Vivado simulator

---
