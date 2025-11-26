transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+Z:/ELEN_21L/Lab7 {Z:/ELEN_21L/Lab7/Counter.v}
vlog -vlog01compat -work work +incdir+Z:/ELEN_21L/Lab7 {Z:/ELEN_21L/Lab7/DownControl.v}
vlog -vlog01compat -work work +incdir+Z:/ELEN_21L/Lab7 {Z:/ELEN_21L/Lab7/UpControl.v}
vlog -vlog01compat -work work +incdir+Z:/ELEN_21L/Lab7 {Z:/ELEN_21L/Lab7/WinLose.v}
vlog -vlog01compat -work work +incdir+Z:/ELEN_21L/Lab7 {Z:/ELEN_21L/Lab7/lab7.v}

vlog -vlog01compat -work work +incdir+Z:/ELEN_21L/Lab7 {Z:/ELEN_21L/Lab7/tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb

add wave *
view structure
view signals
run -all
