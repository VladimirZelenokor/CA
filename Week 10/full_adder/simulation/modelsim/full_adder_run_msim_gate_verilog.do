transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {full_adder.vo}

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/Week\ 10/full_adder {C:/intelFPGA_lite/18.1/Week 10/full_adder/full_adder_testbench.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  full_adder_testbench

do C:/intelFPGA_lite/18.1/Week 10/full_adder/Tcl_script1.tcl
