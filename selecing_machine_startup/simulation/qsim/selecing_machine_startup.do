onerror {exit -code 1}
vlib work
vlog -work work selecing_machine_startup.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L maxii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.selecting_machine_startup_test_vlg_vec_tst -voptargs="+acc"
vcd file -direction selecing_machine_startup.msim.vcd
vcd add -internal selecting_machine_startup_test_vlg_vec_tst/*
vcd add -internal selecting_machine_startup_test_vlg_vec_tst/i1/*
run -all
quit -f
