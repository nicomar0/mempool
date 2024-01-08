## Testing MemPool with Fault Injection

The fault injection scripts (`inject_fault.tcl`, `extract_nets.tcl`) are called by the script `mempool_inject_fault.tcl`.
In this script, the signals under fault injection must be listed and the parameters modified.

This can be done with the `find signal` command in Questa, but for packed arrays this approach does not work.

Therefore, the full signal path is appended to the instance path of the modules containing the cache. This is done in the script `get_banks.tcl`.

To run the simulation, in the script `mempool_inject_fault.tcl` adapt the list of nets where to inject faults. Then, in the hardware folder run the following command:

```bash
app=hello_world icache_faults=1 make sim
```


## Get the number of faults that the Snitch Lookup had to deal with

After the simulation finishes, it is possible to get the information on how many faults were detected.

In the Questa command line, run the following script:

```bash
do ../script/questa/get_number_faults.tcl
```

This script generates a file `mempool/hardware/build/data_tag_faults_stats.txt` listing, for each lookup modules, how many tag and data faults occurred. It also computes the average value across all modules.