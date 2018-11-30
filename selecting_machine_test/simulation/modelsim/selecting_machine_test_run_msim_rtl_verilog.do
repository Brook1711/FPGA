transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/prime_for_FPGA/Lite/demo/selecting_machine_test {E:/prime_for_FPGA/Lite/demo/selecting_machine_test/selecting_machine_test.v}
vlog -vlog01compat -work work +incdir+E:/prime_for_FPGA/Lite/demo/selecting_machine_test {E:/prime_for_FPGA/Lite/demo/selecting_machine_test/debounce.v}

vlog -vlog01compat -work work +incdir+E:/prime_for_FPGA/Lite/demo/selecting_machine_test {E:/prime_for_FPGA/Lite/demo/selecting_machine_test/selecting_machine_test.v}
vlog -vlog01compat -work work +incdir+E:/prime_for_FPGA/Lite/demo/selecting_machine_test {E:/prime_for_FPGA/Lite/demo/selecting_machine_test/debounce.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  top

add wave *
view structure
view signals
run -all
