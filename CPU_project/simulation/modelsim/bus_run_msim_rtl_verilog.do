transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project {C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project/mux_MDR.v}
vlog -vlog01compat -work work +incdir+C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project {C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project/divider.v}
vlog -vlog01compat -work work +incdir+C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project {C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project/shiftRightArithmetic.v}
vlog -vlog01compat -work work +incdir+C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project {C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project/shiftRight.v}
vlog -vlog01compat -work work +incdir+C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project {C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project/shiftLeft.v}
vlog -vlog01compat -work work +incdir+C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project {C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project/rotateRight.v}
vlog -vlog01compat -work work +incdir+C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project {C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project/rotateLeft.v}
vlog -vlog01compat -work work +incdir+C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project {C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project/Negate.v}
vlog -vlog01compat -work work +incdir+C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project {C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project/multiplier.v}
vlog -vlog01compat -work work +incdir+C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project {C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project/mux_32_1.v}
vlog -vlog01compat -work work +incdir+C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project {C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project/encoder_32_5.v}
vlog -vlog01compat -work work +incdir+C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project {C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project/bus.v}
vlog -vlog01compat -work work +incdir+C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project {C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project/register.v}
vlog -vlog01compat -work work +incdir+C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project {C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project/alu.v}
vlog -vlog01compat -work work +incdir+C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project {C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project/adder.v}
vlog -vlog01compat -work work +incdir+C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project {C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project/Not_32_bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project {C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project/Or_32_bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project {C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project/And_32_bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project {C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project/pc_32_bit.v}

vlog -vlog01compat -work work +incdir+C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project {C:/Users/olive/OneDrive/Documents/GitHub/ELEC-374-Labs/CPU_project/not_bus_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiii_ver -L rtl_work -L work -voptargs="+acc"  not_bus_tb

add wave *
view structure
view signals
run 500 ns
