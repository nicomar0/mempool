## Read-only cache test bench

This folder contains the test bench for the read-only cache and the fault injection scripts to test the fault tolerance mechanism. 
Faults are injected on the tag and data lines inside the lookup module.

In order to test fault detection on the tag lines, a fault can be injected only on the parity bits, otherwise it will be treated as a miss.
To test fault detection on the data lines, each line is added separately to the list of signals where to inject faults.

In order to test for the faults, the dimensions inside the `mempool/hardware/deps/snitch/tb/fault_injection/ROC_inject_fault.tcl` file have to be updated.

Usage: 

```bash
cd questa
questa-2022.3 vsim -do ../FI_sim_setup.tcl
```