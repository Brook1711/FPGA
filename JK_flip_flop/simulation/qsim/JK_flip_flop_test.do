onerror {exit -code 1}
vlib work
vlog -work work JK_flip_flop_test.vo
vlog -work work Waveform2.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.JK_flip_flop_test_vlg_vec_tst -voptargs="+acc"
vcd file -direction JK_flip_flop_test.msim.vcd
vcd add -internal JK_flip_flop_test_vlg_vec_tst/*
vcd add -internal JK_flip_flop_test_vlg_vec_tst/i1/*
run -all
quit -f
