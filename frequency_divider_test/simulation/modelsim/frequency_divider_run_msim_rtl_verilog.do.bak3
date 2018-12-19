transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/prime_for_FPGA/Lite/demo/frequency_divider_test {E:/prime_for_FPGA/Lite/demo/frequency_divider_test/frequency_divider.v}

vlog -vlog01compat -work work +incdir+E:/prime_for_FPGA/Lite/demo/frequency_divider_test {E:/prime_for_FPGA/Lite/demo/frequency_divider_test/frequency_divider.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  frequency_divider_top

add wave *
view structure
view signals
run -all
