onerror {exit -code 1}
vlib work
vlog -work work frequency_divider.vo
vlog -work work frequency_divider_top.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.frequency_divider_top_vlg_vec_tst -voptargs="+acc"
vcd file -direction frequency_divider.msim.vcd
vcd add -internal frequency_divider_top_vlg_vec_tst/*
vcd add -internal frequency_divider_top_vlg_vec_tst/i1/*
run -all
quit -f
