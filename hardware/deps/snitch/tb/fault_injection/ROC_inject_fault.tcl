transcript quietly

set verbosity 1
set log_injections 1
set seed 12345
set script_base_path "/scratch/sem23h18/project/mempool/hardware/deps/snitch/tb/fault_injection/"
set inject_start_time 500000ns
set inject_stop_time 0
#use a clock in the tb
set injection_clock "/snitch_read_only_cache_tb/fault_clk"
set injection_clock_trigger 0
set fault_period 10
set rand_initial_injection_phase 0
set max_num_fault_inject 1000
set signal_fault_duration 20ns
set register_fault_duration 0ns

set allow_multi_bit_upset 1
set use_bitwidth_as_weight 1
set check_core_output_modification 0
set check_core_next_state_modification 0
set reg_to_sig_ratio 1

proc base_path {} {return "/snitch_read_only_cache_tb/dut/i_lookup/gen_sram/i_tag"} 



#set inject_register_netlist [find nets [base_path]/*]
#/snitch_read_only_cache_tb/dut/i_lookup/gen_sram/i_tag/sram
#/snitch_read_only_cache_tb/dut/i_lookup/i_data/sram 

set inject_register_netlist {
    /snitch_read_only_cache_tb/dut/i_lookup/i_data/sram[*]
}
#/snitch_read_only_cache_tb/dut/i_lookup/gen_sram/i_tag/sram

set inject_signals_netlist []
set output_netlist []
set next_state_netlist []
set assertion_disable_list []

source ${::script_base_path}inject_fault.tcl