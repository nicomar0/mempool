do compile.tcl

vopt snitch_read_only_cache_tb -o snitch_read_only_cache_tb_opt +acc

vsim snitch_read_only_cache_tb_opt -voptargs=+acc

# waves
add wave -noupdate -expand -group lookup /snitch_read_only_cache_tb/dut/i_lookup/*
add wave -noupdate -group handler /snitch_read_only_cache_tb/dut/i_handler/*
add wave -noupdate -group refill /snitch_read_only_cache_tb/dut/i_refill/*