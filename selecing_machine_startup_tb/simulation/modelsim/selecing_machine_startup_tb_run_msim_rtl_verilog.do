transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/prime_for_FPGA/Lite/demo/selecing_machine_startup_tb {E:/prime_for_FPGA/Lite/demo/selecing_machine_startup_tb/selecting_machine_startup_test_tb.v}
vlog -vlog01compat -work work +incdir+E:/prime_for_FPGA/Lite/demo/selecing_machine_startup_tb {E:/prime_for_FPGA/Lite/demo/selecing_machine_startup_tb/selecting_machine_startup_test.v}

