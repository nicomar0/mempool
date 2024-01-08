# Copyright 2021 ETH Zurich and University of Bologna.
# Solderpad Hardware License, Version 0.51, see LICENSE for details.
# SPDX-License-Identifier: SHL-0.51
set allow_faults 1
#[lindex $argv 0]

# Run the fault injection script
if {$::env(icache_faults)  == 1} {
    source ../scripts/questa/mempool_inject_fault.tcl
}
do ../scripts/questa/wave.tcl

log -r /*
run -a
