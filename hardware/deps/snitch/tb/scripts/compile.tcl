# This script was generated automatically by bender.
set ROOT "/scratch/sem23h18/project/mempool"

if {[catch {vlog -incr -sv \
    -svinputport=compat \
    +define+TARGET_ROCACHE_TEST \
    +define+TARGET_SIMULATION \
    +define+TARGET_VSIM \
    "$ROOT/hardware/deps/common_verification/src/clk_rst_gen.sv" \
    "$ROOT/hardware/deps/common_verification/src/rand_id_queue.sv" \
    "$ROOT/hardware/deps/common_verification/src/rand_stream_mst.sv" \
    "$ROOT/hardware/deps/common_verification/src/rand_synch_holdable_driver.sv" \
    "$ROOT/hardware/deps/common_verification/src/rand_verif_pkg.sv" \
    "$ROOT/hardware/deps/common_verification/src/sim_timeout.sv" \
    "$ROOT/hardware/deps/common_verification/src/rand_synch_driver.sv" \
    "$ROOT/hardware/deps/common_verification/src/rand_stream_slv.sv"
}]} {return 1}

if {[catch {vlog -incr -sv \
    -svinputport=compat \
    +define+TARGET_ROCACHE_TEST \
    +define+TARGET_SIMULATION \
    +define+TARGET_VSIM \
    "$ROOT/hardware/deps/tech_cells_generic/src/deprecated/cluster_clk_cells.sv" \
    "$ROOT/hardware/deps/tech_cells_generic/src/deprecated/pulp_clk_cells.sv"
}]} {return 1}

if {[catch {vlog -incr -sv \
    -svinputport=compat \
    +define+TARGET_ROCACHE_TEST \
    +define+TARGET_SIMULATION \
    +define+TARGET_VSIM \
    "$ROOT/hardware/deps/tech_cells_generic/src/rtl/tc_clk.sv"
}]} {return 1}

if {[catch {vlog -incr -sv \
    -svinputport=compat \
    +define+TARGET_ROCACHE_TEST \
    +define+TARGET_SIMULATION \
    +define+TARGET_VSIM \
    "$ROOT/hardware/deps/tech_cells_generic/src/deprecated/cluster_pwr_cells.sv" \
    "$ROOT/hardware/deps/tech_cells_generic/src/deprecated/generic_memory.sv" \
    "$ROOT/hardware/deps/tech_cells_generic/src/deprecated/generic_rom.sv" \
    "$ROOT/hardware/deps/tech_cells_generic/src/deprecated/pad_functional.sv" \
    "$ROOT/hardware/deps/tech_cells_generic/src/deprecated/pulp_buffer.sv" \
    "$ROOT/hardware/deps/tech_cells_generic/src/deprecated/pulp_pwr_cells.sv" \
    "$ROOT/hardware/deps/tech_cells_generic/src/tc_pwr.sv"
}]} {return 1}

if {[catch {vlog -incr -sv \
    -svinputport=compat \
    +define+TARGET_ROCACHE_TEST \
    +define+TARGET_SIMULATION \
    +define+TARGET_VSIM \
    "$ROOT/hardware/deps/tech_cells_generic/src/deprecated/pulp_clock_gating_async.sv"
}]} {return 1}

if {[catch {vlog -incr -sv \
    -svinputport=compat \
    +define+TARGET_ROCACHE_TEST \
    +define+TARGET_SIMULATION \
    +define+TARGET_VSIM \
    "+incdir+$ROOT/hardware/deps/common_cells/include" \
    "$ROOT/hardware/deps/common_cells/src/binary_to_gray.sv" \
    "$ROOT/hardware/deps/common_cells/src/cb_filter_pkg.sv" \
    "$ROOT/hardware/deps/common_cells/src/cc_onehot.sv" \
    "$ROOT/hardware/deps/common_cells/src/cdc_2phase.sv" \
    "$ROOT/hardware/deps/common_cells/src/cf_math_pkg.sv" \
    "$ROOT/hardware/deps/common_cells/src/clk_div.sv" \
    "$ROOT/hardware/deps/common_cells/src/delta_counter.sv" \
    "$ROOT/hardware/deps/common_cells/src/ecc_pkg.sv" \
    "$ROOT/hardware/deps/common_cells/src/edge_propagator_tx.sv" \
    "$ROOT/hardware/deps/common_cells/src/exp_backoff.sv" \
    "$ROOT/hardware/deps/common_cells/src/fifo_v3.sv" \
    "$ROOT/hardware/deps/common_cells/src/gray_to_binary.sv" \
    "$ROOT/hardware/deps/common_cells/src/isochronous_4phase_handshake.sv" \
    "$ROOT/hardware/deps/common_cells/src/isochronous_spill_register.sv" \
    "$ROOT/hardware/deps/common_cells/src/lfsr.sv" \
    "$ROOT/hardware/deps/common_cells/src/lfsr_16bit.sv" \
    "$ROOT/hardware/deps/common_cells/src/lfsr_8bit.sv" \
    "$ROOT/hardware/deps/common_cells/src/mv_filter.sv" \
    "$ROOT/hardware/deps/common_cells/src/onehot_to_bin.sv" \
    "$ROOT/hardware/deps/common_cells/src/plru_tree.sv" \
    "$ROOT/hardware/deps/common_cells/src/popcount.sv" \
    "$ROOT/hardware/deps/common_cells/src/rr_arb_tree.sv" \
    "$ROOT/hardware/deps/common_cells/src/rstgen_bypass.sv" \
    "$ROOT/hardware/deps/common_cells/src/serial_deglitch.sv" \
    "$ROOT/hardware/deps/common_cells/src/shift_reg.sv" \
    "$ROOT/hardware/deps/common_cells/src/spill_register_flushable.sv" \
    "$ROOT/hardware/deps/common_cells/src/stream_demux.sv" \
    "$ROOT/hardware/deps/common_cells/src/stream_filter.sv" \
    "$ROOT/hardware/deps/common_cells/src/stream_fork.sv" \
    "$ROOT/hardware/deps/common_cells/src/stream_intf.sv" \
    "$ROOT/hardware/deps/common_cells/src/stream_join.sv" \
    "$ROOT/hardware/deps/common_cells/src/stream_mux.sv" \
    "$ROOT/hardware/deps/common_cells/src/sub_per_hash.sv" \
    "$ROOT/hardware/deps/common_cells/src/sync.sv" \
    "$ROOT/hardware/deps/common_cells/src/sync_wedge.sv" \
    "$ROOT/hardware/deps/common_cells/src/unread.sv" \
    "$ROOT/hardware/deps/common_cells/src/addr_decode.sv" \
    "$ROOT/hardware/deps/common_cells/src/cb_filter.sv" \
    "$ROOT/hardware/deps/common_cells/src/cdc_fifo_2phase.sv" \
    "$ROOT/hardware/deps/common_cells/src/counter.sv" \
    "$ROOT/hardware/deps/common_cells/src/ecc_decode.sv" \
    "$ROOT/hardware/deps/common_cells/src/ecc_encode.sv" \
    "$ROOT/hardware/deps/common_cells/src/edge_detect.sv" \
    "$ROOT/hardware/deps/common_cells/src/lzc.sv" \
    "$ROOT/hardware/deps/common_cells/src/max_counter.sv" \
    "$ROOT/hardware/deps/common_cells/src/rstgen.sv" \
    "$ROOT/hardware/deps/common_cells/src/spill_register.sv" \
    "$ROOT/hardware/deps/common_cells/src/stream_delay.sv" \
    "$ROOT/hardware/deps/common_cells/src/stream_fifo.sv" \
    "$ROOT/hardware/deps/common_cells/src/stream_fork_dynamic.sv" \
    "$ROOT/hardware/deps/common_cells/src/cdc_fifo_gray.sv" \
    "$ROOT/hardware/deps/common_cells/src/fall_through_register.sv" \
    "$ROOT/hardware/deps/common_cells/src/id_queue.sv" \
    "$ROOT/hardware/deps/common_cells/src/stream_to_mem.sv" \
    "$ROOT/hardware/deps/common_cells/src/stream_arbiter_flushable.sv" \
    "$ROOT/hardware/deps/common_cells/src/stream_register.sv" \
    "$ROOT/hardware/deps/common_cells/src/stream_xbar.sv" \
    "$ROOT/hardware/deps/common_cells/src/stream_arbiter.sv" \
    "$ROOT/hardware/deps/common_cells/src/stream_omega_net.sv"
}]} {return 1}

if {[catch {vlog -incr -sv \
    -svinputport=compat \
    +define+TARGET_ROCACHE_TEST \
    +define+TARGET_SIMULATION \
    +define+TARGET_VSIM \
    "+incdir+$ROOT/hardware/deps/common_cells/include" \
    "$ROOT/hardware/deps/common_cells/src/deprecated/sram.sv"
}]} {return 1}

if {[catch {vlog -incr -sv \
    -svinputport=compat \
    +define+TARGET_ROCACHE_TEST \
    +define+TARGET_SIMULATION \
    +define+TARGET_VSIM \
    "+incdir+$ROOT/hardware/deps/common_cells/include" \
    "$ROOT/hardware/deps/common_cells/src/deprecated/clock_divider_counter.sv" \
    "$ROOT/hardware/deps/common_cells/src/deprecated/find_first_one.sv" \
    "$ROOT/hardware/deps/common_cells/src/deprecated/generic_LFSR_8bit.sv" \
    "$ROOT/hardware/deps/common_cells/src/deprecated/generic_fifo.sv" \
    "$ROOT/hardware/deps/common_cells/src/deprecated/prioarbiter.sv" \
    "$ROOT/hardware/deps/common_cells/src/deprecated/pulp_sync.sv" \
    "$ROOT/hardware/deps/common_cells/src/deprecated/pulp_sync_wedge.sv" \
    "$ROOT/hardware/deps/common_cells/src/deprecated/rrarbiter.sv" \
    "$ROOT/hardware/deps/common_cells/src/deprecated/clock_divider.sv" \
    "$ROOT/hardware/deps/common_cells/src/deprecated/fifo_v2.sv" \
    "$ROOT/hardware/deps/common_cells/src/deprecated/fifo_v1.sv" \
    "$ROOT/hardware/deps/common_cells/src/edge_propagator.sv" \
    "$ROOT/hardware/deps/common_cells/src/edge_propagator_rx.sv"
}]} {return 1}

if {[catch {vlog -incr -sv \
    -svinputport=compat \
    +define+TARGET_ROCACHE_TEST \
    +define+TARGET_SIMULATION \
    +define+TARGET_VSIM \
    "+incdir+$ROOT/hardware/deps/axi/include" \
    "+incdir+$ROOT/hardware/deps/common_cells/include" \
    "$ROOT/hardware/deps/axi/src/axi_pkg.sv" \
    "$ROOT/hardware/deps/axi/src/axi_intf.sv" \
    "$ROOT/hardware/deps/axi/src/axi_atop_filter.sv" \
    "$ROOT/hardware/deps/axi/src/axi_burst_splitter.sv" \
    "$ROOT/hardware/deps/axi/src/axi_cdc_dst.sv" \
    "$ROOT/hardware/deps/axi/src/axi_cdc_src.sv" \
    "$ROOT/hardware/deps/axi/src/axi_cut.sv" \
    "$ROOT/hardware/deps/axi/src/axi_delayer.sv" \
    "$ROOT/hardware/deps/axi/src/axi_demux.sv" \
    "$ROOT/hardware/deps/axi/src/axi_dw_downsizer.sv" \
    "$ROOT/hardware/deps/axi/src/axi_dw_upsizer.sv" \
    "$ROOT/hardware/deps/axi/src/axi_id_remap.sv" \
    "$ROOT/hardware/deps/axi/src/axi_id_prepend.sv" \
    "$ROOT/hardware/deps/axi/src/axi_isolate.sv" \
    "$ROOT/hardware/deps/axi/src/axi_join.sv" \
    "$ROOT/hardware/deps/axi/src/axi_lite_demux.sv" \
    "$ROOT/hardware/deps/axi/src/axi_lite_join.sv" \
    "$ROOT/hardware/deps/axi/src/axi_lite_mailbox.sv" \
    "$ROOT/hardware/deps/axi/src/axi_lite_mux.sv" \
    "$ROOT/hardware/deps/axi/src/axi_lite_regs.sv" \
    "$ROOT/hardware/deps/axi/src/axi_lite_to_apb.sv" \
    "$ROOT/hardware/deps/axi/src/axi_lite_to_axi.sv" \
    "$ROOT/hardware/deps/axi/src/axi_modify_address.sv" \
    "$ROOT/hardware/deps/axi/src/axi_mux.sv" \
    "$ROOT/hardware/deps/axi/src/axi_serializer.sv" \
    "$ROOT/hardware/deps/axi/src/axi_cdc.sv" \
    "$ROOT/hardware/deps/axi/src/axi_err_slv.sv" \
    "$ROOT/hardware/deps/axi/src/axi_dw_converter.sv" \
    "$ROOT/hardware/deps/axi/src/axi_id_serialize.sv" \
    "$ROOT/hardware/deps/axi/src/axi_multicut.sv" \
    "$ROOT/hardware/deps/axi/src/axi_to_axi_lite.sv" \
    "$ROOT/hardware/deps/axi/src/axi_iw_converter.sv" \
    "$ROOT/hardware/deps/axi/src/axi_lite_xbar.sv" \
    "$ROOT/hardware/deps/axi/src/axi_xbar.sv"
}]} {return 1}

if {[catch {vlog -incr -sv \
    -svinputport=compat \
    +define+TARGET_ROCACHE_TEST \
    +define+TARGET_SIMULATION \
    +define+TARGET_VSIM \
    "+incdir+$ROOT/hardware/deps/axi/include" \
    "+incdir+$ROOT/hardware/deps/common_cells/include" \
    "$ROOT/hardware/deps/axi/src/axi_sim_mem.sv" \
    "$ROOT/hardware/deps/axi/src/axi_test.sv"
}]} {return 1}

if {[catch {vlog -incr -sv \
    -svinputport=compat \
    +define+SNITCH_ENABLE_PERF=1 \
    +define+TARGET_ROCACHE_TEST \
    +define+TARGET_SIMULATION \
    +define+TARGET_VSIM \
    "+incdir+$ROOT/hardware/deps/axi/include" \
    "+incdir+$ROOT/hardware/deps/common_cells/include" \
    "$ROOT/hardware/deps/snitch/src/riscv_instr.sv" \
    "$ROOT/hardware/deps/snitch/src/snitch_pkg.sv" \
    "$ROOT/hardware/deps/snitch/src/snitch_axi_pkg.sv" \
    "$ROOT/hardware/deps/snitch/src/snitch_icache/snitch_icache_pkg.sv" \
    "$ROOT/hardware/deps/snitch/src/snitch.sv" \
    "$ROOT/hardware/deps/snitch/src/snitch_regfile_ff.sv" \
    "$ROOT/hardware/deps/snitch/src/snitch_lsu.sv" \
    "$ROOT/hardware/deps/snitch/src/snitch_ipu.sv" \
    "$ROOT/hardware/deps/snitch/src/snitch_shared_muldiv.sv" \
    "$ROOT/hardware/deps/snitch/src/snitch_demux.sv" \
    "$ROOT/hardware/deps/snitch/src/snitch_axi_adapter.sv" \
    "$ROOT/hardware/deps/snitch/src/snitch_icache/snitch_icache.sv" \
    "$ROOT/hardware/deps/snitch/src/snitch_icache/snitch_icache_l0.sv" \
    "$ROOT/hardware/deps/snitch/src/snitch_icache/snitch_icache_handler.sv" \
    "$ROOT/hardware/deps/snitch/src/snitch_icache/snitch_icache_lfsr.sv" \
    "$ROOT/hardware/deps/snitch/src/snitch_icache/snitch_icache_lookup_parallel.sv" \
    "$ROOT/hardware/deps/snitch/src/snitch_icache/snitch_icache_lookup_serial.sv" \
    "$ROOT/hardware/deps/snitch/src/snitch_icache/snitch_icache_refill.sv" \
    "$ROOT/hardware/deps/snitch/src/snitch_read_only_cache/snitch_axi_to_cache.sv" \
    "$ROOT/hardware/deps/snitch/src/snitch_read_only_cache/snitch_read_only_cache.sv"
}]} {return 1}

if {[catch {vlog -incr -sv \
    -svinputport=compat \
    +define+TARGET_ROCACHE_TEST \
    +define+TARGET_SIMULATION \
    +define+TARGET_VSIM \
    "+incdir+$ROOT/hardware/deps/axi/include" \
    "+incdir+$ROOT/hardware/deps/common_cells/include" \
    "$ROOT/hardware/deps/snitch/tb/src/snitch_read_only_cache_tb.sv"
}]} {return 1}
