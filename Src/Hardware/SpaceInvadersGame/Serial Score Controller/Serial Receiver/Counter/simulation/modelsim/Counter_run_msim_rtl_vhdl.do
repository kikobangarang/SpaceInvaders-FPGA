transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial Score Controller/Serial Receiver/Counter/Counter.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial Score Controller/Serial Receiver/Counter/counter_adder.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial Score Controller/Serial Receiver/Counter/counter_adder_fulladder.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial Score Controller/Serial Receiver/Counter/counter_reg.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial Score Controller/Serial Receiver/Counter/counter_reg_ffd.vhd}

