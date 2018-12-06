onerror {exit -code 1}
vlib work
vlog -work work selecting_machine_test.vo
vlog -work work Waveform5.vwf.vt
vsim -novopt -c -t 1ps -L maxii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.selecting_machine_test_vlg_vec_tst -voptargs="+acc"
vcd file -direction selecting_machine_test.msim.vcd
vcd add -internal selecting_machine_test_vlg_vec_tst/*
vcd add -internal selecting_machine_test_vlg_vec_tst/i1/*
run -all
quit -f
