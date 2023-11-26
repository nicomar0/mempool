transcript quietly

set verbosity 1
set log_injections 1
set seed 12345
set script_base_path "/scratch/sem23h18/project/mempool/hardware/scripts/questa/"
set inject_start_time 10ns
set inject_stop_time 0
#use a clock in the tb, fault_clk is 10 times faster than clk
set injection_clock "/mempool_tb/clk"
set injection_clock_trigger 0
set fault_period 1
set rand_initial_injection_phase 0
set max_num_fault_inject 12000
set signal_fault_duration 20ns
set register_fault_duration 0ns

set allow_multi_bit_upset 0
set use_bitwidth_as_weight 1
set check_core_output_modification 0
set check_core_next_state_modification 0
set reg_to_sig_ratio 1

#proc base_path {} {return "/snitch_read_only_cache_tb/dut/i_lookup/gen_sram/i_tag"} 
source ${::script_base_path}get_banks.tcl

proc add_signals_injection {tag_list tag_idx tag_max_width data_list no_databanks} {
    foreach inst $tag_list {
        for {set index $tag_idx} {$index >= 0} {incr index -1} {
            set signal_path "${inst}[${index}][${tag_max_width}]"
            lappend inject_register_netlist $signal_path
        }
    }
    foreach inst $data_list {
        for {set index $no_databanks} {$index >= 0} {incr index -1} {
            set signal_path "${inst}[${index}]"
            lappend inject_register_netlist $signal_path
        }
    }
}
set inject_register_netlist {}
set max_idx_icache 31
set max_tag_width_icache 25

set no_banks_icache 63
#add_signals_injection $L1_tag_list $max_idx_icache $max_tag_width_icache $L1_data_list $no_banks_icache

    foreach inst $L1_tag_list {
        for {set index $max_idx_icache} {$index >= 0} {incr index -1} {
            set signal_path "${inst}[${index}]"
#set signal_path "${inst}[${index}][${max_tag_width_icache}]"
            lappend inject_register_netlist $signal_path
        }
    }
    foreach inst $L1_data_list {
        for {set index $no_banks_icache} {$index >= 0} {incr index -1} {
            set signal_path "${inst}[${index}]"
            lappend inject_register_netlist $signal_path
        }
    }

set max_idx_rocache 63
set max_tag_width_rocache 47

set no_banks_rocache 127
#add_signals_injection $ROC_tag_list $max_idx_rocache $max_tag_width_rocache $L1_data_list $no_banks_rocache

    foreach inst $ROC_tag_list {
        for {set index $max_idx_rocache} {$index >= 0} {incr index -1} {
#set signal_path "${inst}[${index}][${max_tag_width_rocache}]"
            set signal_path "${inst}[${index}]"
            lappend inject_register_netlist $signal_path
        }
    }
    foreach inst $ROC_data_list {
        for {set index $no_banks_rocache} {$index >= 0} {incr index -1} {
            set signal_path "${inst}[${index}]"
            lappend inject_register_netlist $signal_path
        }
    }


set inject_signals_netlist []
set output_netlist []
set next_state_netlist []
set assertion_disable_list []

source ${::script_base_path}inject_fault.tcl
