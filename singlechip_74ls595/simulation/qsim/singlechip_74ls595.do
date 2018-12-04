onerror {exit -code 1}
vlib work
vlog -work work singlechip_74ls595.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.singlechip_74ls595_test_vlg_vec_tst -voptargs="+acc"
vcd file -direction singlechip_74ls595.msim.vcd
vcd add -internal singlechip_74ls595_test_vlg_vec_tst/*
vcd add -internal singlechip_74ls595_test_vlg_vec_tst/i1/*
run -all
quit -f
