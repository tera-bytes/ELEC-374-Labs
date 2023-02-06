transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project {C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project/register.v}

vlog -vlog01compat -work work +incdir+C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project {C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project/register_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiii_ver -L rtl_work -L work -voptargs="+acc"  register_tb

add wave *
view structure
view signals
run 300 ns
