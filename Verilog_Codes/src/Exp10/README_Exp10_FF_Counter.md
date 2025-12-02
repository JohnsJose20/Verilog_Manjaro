# Experiment 10 – Flip-Flops and Counters (Verilog, Behavioral Modeling)

## Aim
To develop Verilog modules for:
1. SR, JK, and T flip-flops.
2. 4-bit Ring counter and 4-bit Johnson counter.

All designs use **behavioral modeling** with:
- Positive-edge triggered flip-flops.
- Asynchronous active-high reset.

### Files

- `sr_ff.v` – SR flip-flop
- `jk_ff.v` – JK flip-flop
- `t_ff.v` – T flip-flop
- `ring_counter.v` – 4-bit ring counter
- `johnson_counter.v` – 4-bit Johnson counter
- `tb_sr_ff.v` – Testbench for SR flip-flop
- `tb_jk_ff.v` – Testbench for JK flip-flop
- `tb_t_ff.v` – Testbench for T flip-flop
- `tb_ring_counter.v` – Testbench for ring counter
- `tb_johnson_counter.v` – Testbench for Johnson counter

Each testbench:
- Generates a clock.
- Applies reset.
- Provides simple input patterns.
- Dumps waveforms to the `sim/` folder using `$dumpfile` and `$dumpvars`.
