transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/prime_for_FPGA/Lite/demo/selecting_machine_with_flash {E:/prime_for_FPGA/Lite/demo/selecting_machine_with_flash/selecting_machine_with_flash.v}

