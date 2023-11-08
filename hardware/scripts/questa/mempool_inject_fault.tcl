transcript quietly

set verbosity 3
set log_injections 1
set seed 12345
set script_base_path "/scratch/sem23h18/project/mempool/hardware/scripts/questa/"
set inject_start_time 2000ns
set inject_stop_time 0
#use a clock in the tb
set injection_clock "/mempool_tb/fault_clk"
set injection_clock_trigger 0
set fault_period 100
set rand_initial_injection_phase 0
set max_num_fault_inject 20
set signal_fault_duration 20ns
set register_fault_duration 0ns

set allow_multi_bit_upset 1
set use_bitwidth_as_weight 1
set check_core_output_modification 0
set check_core_next_state_modification 0
set reg_to_sig_ratio 1

#proc base_path {} {return "/snitch_read_only_cache_tb/dut/i_lookup/gen_sram/i_tag"} 



#set inject_register_netlist [find nets [base_path]/*]

#/mempool_tb/dut/i_mempool_cluster/gen_groups[3]/i_group/gen_tiles[13]/i_tile/gen_caches[0]/i_snitch_icache/i_lookup/i_data/sram
#/mempool_tb/dut/i_mempool_cluster/gen_groups[3]/i_group/gen_tiles[15]/i_tile/gen_caches[0]/i_snitch_icache/i_lookup/gen_scm/g_sets[1]/i_tag/MemContentxDP

set itag_sram_path "/mempool_tb/dut/i_mempool_cluster/gen_groups[3]/i_group/gen_tiles[15]/i_tile/gen_caches[0]/i_snitch_icache/i_lookup/gen_scm/g_sets[1]/i_tag/MemContentxDP"

# Determine the maximum possible index for the first index
set max_index_value 31 ; # Replace with the actual maximum value
#debug : 32, normal 127

# Determine the largest possible second index
set max_tag_line_index 25 ; # Replace with the actual maximum value
#debug 57, normal 47

# Add the signal paths with maximum indices to the inject_register_netlist
for {set index $max_index_value} {$index >= 0} {incr index -1} {
    set signal_path "${itag_sram_path}[${index}][${max_tag_line_index}]"
    lappend inject_register_netlist $signal_path
}

set max_data_index 63;
#set max_data_index [expr {
#    $max_index_value * 2 + 1
#}]
set idata_sram_path "/snitch_read_only_cache_tb/dut/i_lookup/i_data/sram";
for {set index $max_data_index} {$index >= 0} {incr index -1} {
    set signal_path "${idata_sram_path}[${index}]"
    #lappend inject_register_netlist $signal_path
}


set inject_signals_netlist []
set output_netlist []
set next_state_netlist []
set assertion_disable_list []

source ${::script_base_path}inject_fault.tcl
