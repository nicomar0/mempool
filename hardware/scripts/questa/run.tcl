# Copyright 2021 ETH Zurich and University of Bologna.
# Solderpad Hardware License, Version 0.51, see LICENSE for details.
# SPDX-License-Identifier: SHL-0.51
set allow_faults 1
#[lindex $argv 0]

if {$::env(icache_faults)  ==1} {
    source ../scripts/questa/mempool_inject_fault.tcl

}
do ../scripts/questa/wave.tcl
add wave -Group gr1_axitocache {sim:/mempool_tb/dut/i_mempool_cluster/gen_groups[1]/i_group/i_axi_interco/gen_bottom_level/gen_ro_cache/i_snitch_read_only_cache/i_axi_to_cache/*}
add wave -Group gr1_lookup {sim:/mempool_tb/dut/i_mempool_cluster/gen_groups[1]/i_group/i_axi_interco/gen_bottom_level/gen_ro_cache/i_snitch_read_only_cache/i_lookup/*}
add wave -Group gr1_roc {sim:/mempool_tb/dut/i_mempool_cluster/gen_groups[1]/i_group/i_axi_interco/gen_bottom_level/gen_ro_cache/i_snitch_read_only_cache/*}
add wave -Group gr1_refill {sim:/mempool_tb/dut/i_mempool_cluster/gen_groups[1]/i_group/i_axi_interco/gen_bottom_level/gen_ro_cache/i_snitch_read_only_cache/i_refill/*}
add wave -Group gr1_handler {sim:/mempool_tb/dut/i_mempool_cluster/gen_groups[1]/i_group/i_axi_interco/gen_bottom_level/gen_ro_cache/i_snitch_read_only_cache/i_handler/*}
add wave -Group gr1_splittertable {sim:/mempool_tb/dut/i_mempool_cluster/gen_groups[1]/i_group/i_axi_interco/gen_bottom_level/gen_ro_cache/i_snitch_read_only_cache/i_axi_to_cache/i_axi_burst_splitter_table/*}
add wave -Group idq {sim:/mempool_tb/dut/i_mempool_cluster/gen_groups[1]/i_group/i_axi_interco/gen_bottom_level/gen_ro_cache/i_snitch_read_only_cache/i_axi_to_cache/i_axi_burst_splitter_table/i_idq/*}

log -r /*
run -a
