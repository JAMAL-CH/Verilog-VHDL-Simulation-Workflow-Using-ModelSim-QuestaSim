# Useful ModelSim/VSIM commands

## compilation

```
# Before running a simulation, always compile your design to check for syntax errors:

# Example:
vcom mux4to1.v
vcom tb_mux4to1.v

```
# Simulation 

```
vsim -wlf mux4to1.wlf work.tb_mux4to1
run -all 100 ns                                          // You can change 100 ns to any simulation time you want 

After launching the simulation 

Select the signals you want to observe in the waveform window (Right-click → Add to Wave).

Creat a group signals into categories (e.g., inputs, outputs, internal) for easier observation.

When done, press Ctrl + S to save the waveform layout as a .do file.

The .do file allows you to reload the same waveform view next time.

```

# Re-simulation using the same waveform configuratio

```
For the next time when you wont to Re-simulat using the same waveform configuration make this commande :

do file.do 

```
