transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project {C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project/mux_32_1.v}
vlog -vlog01compat -work work +incdir+C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project {C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project/encoder_32_5.v}
vlog -vlog01compat -work work +incdir+C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project {C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project/TestBus.v}

vlog -vlog01compat -work work +incdir+C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project {C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project/TestBus_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiii_ver -L rtl_work -L work -voptargs="+acc"  TestBus_tb

add wave *
view structure
view signals
run 500 ns
