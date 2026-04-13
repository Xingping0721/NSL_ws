# NSL / Verilog / SystemC Tutorial

## 1. NSL → Verilog → Simulation

### Step 1: Convert NSL to Verilog

```bash
nsl2vl tut0.nsl -verisim2 -target tut0
```

* Generated: `tut0.v`

---

### Step 2: Compile Verilog

```bash
iverilog -o tut0.vvp tut0.v
```

* Generated: `tut0.vvp`

---

### Step 3: Run Simulation

```bash
vvp tut0.vvp
```

### Output:

```text
VCD info: dumpfile tut0.vcd opened for output.
Hello World
```

* Simulation worked correctly
* `tut0.vcd` waveform file was generated

### Waveform:

```text
gtkwave tut0.vcd
```

* The waveform can be observed using a VCD file such as `tut0.vcd` using GTKWave.


---

## 2. NSL → SystemC → Simulation

### Step 1: Convert NSL to SystemC

```bash
nsl2sc tut0.nsl -scsim2 -target tut0 -split
```

* Generated files:

  * `tut0.cpp`
  * `tut0.h`
  * `tut0_sim.sc` (testbench)

---

### Step 2: Change extension

```bash
cp tut0_sim.sc tut0_sim.cpp
```

* Reason: `g++` cannot compile `.sc` files

---

### Step 3: Install SystemC

```bash
sudo apt install libsystemc-dev
```

---

### Step 4: Compile SystemC

```bash
g++ -o tut0_sim tut0_sim.cpp -lsystemc
```

* Generated: `tut0_sim` (executable)

---

### Step 5: Run Simulation

```bash
./tut0_sim
```

### Output:

```text
SystemC 2.3.3
Hello World
Simulation stopped by user.
```

---

## 3. Notes

* Verilog flow:

  ```
  NSL → Verilog → iverilog → vvp → simulation
  ```

* SystemC flow:

  ```
  NSL → SystemC → g++ → executable → simulation
  ```

* Both flows successfully executed "Hello World"

---

## 4. Conclusion

* NSL environment is correctly set up
* Both Verilog and SystemC simulation flows are working
---
