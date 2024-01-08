transcript quietly

set verbosity 1
set log_injections 1
set seed 12345
set script_base_path "/scratch/sem23h18/project/mempool/hardware/scripts/questa/"
set inject_start_time 5500ns
set inject_stop_time 10000ns
#use a clock in the tb, fault_clk is 10 times faster than clk
set injection_clock "/mempool_tb/fault_clk"
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

source ${::script_base_path}get_banks.tcl
set inject_register_netlist {}

# Tag fault injection on Snitch Instruction Cache
# how many lines in the tag banks
set max_idx_icache 31
# length of tag banks line
set max_tag_width_icache 25
# lines in the data banks
set no_banks_icache 63

# To check error detection on the tag, inject faults only on the parity bits. To check performance, inject on the entire line.
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

# Tag fault injection on Snitch RO Cache
set max_idx_rocache 63
set max_tag_width_rocache 47
set no_banks_rocache 127

    foreach inst $ROC_tag_list {
        for {set index $max_idx_rocache} {$index >= 0} {incr index -1} {
#set signal_path "${inst}[${index}][${max_tag_width_rocache}]"
            set signal_path "${inst}[${index}]"
            #lappend inject_register_netlist $signal_path
        }
    }
    foreach inst $ROC_data_list {
        for {set index $no_banks_rocache} {$index >= 0} {incr index -1} {
            set signal_path "${inst}[${index}]"
            #lappend inject_register_netlist $signal_path
        }
    }

# Tag fault injection in the L0 Cache, unfortunately not working correctly due to a bug. See fault injection script for more details.
set max_idx_l0cache 3
set max_tag_width_l0cache 27
set no_banks_l0cache 3

    foreach inst $L0_tag_list {
        for {set index $max_idx_l0cache} {$index >= 0} {incr index -1} {
            #set signal_path "${inst}[${index}].tag[${max_tag_width_l0cache}]"
            set signal_path "${inst}[${index}].tag"
            #set signal_path "${inst}[${index}]"
            #lappend inject_register_netlist $signal_path
        }
    }
    foreach inst $L0_data_list {
        for {set index $no_banks_l0cache} {$index >= 0} {incr index -1} {
            set signal_path "${inst}[${index}]"
            lappend inject_register_netlist $signal_path
        }
    }


# Random shuffle of the list, the log showed that fault injection script is not so random in picking the signals
for {set i 0} {$i < [llength $inject_register_netlist]} {incr i} {
    set j [expr {int(rand() * [llength $inject_register_netlist])}]
    set temp [lindex $inject_register_netlist $j]
    set inject_register_netlist [lreplace $inject_register_netlist $j $j [lindex $inject_register_netlist $i]]
    set inject_register_netlist [lreplace $inject_register_netlist $i $i $temp]
}

set inject_signals_netlist []
set output_netlist []
set next_state_netlist []
set assertion_disable_list []

source ${::script_base_path}inject_fault.tcl
