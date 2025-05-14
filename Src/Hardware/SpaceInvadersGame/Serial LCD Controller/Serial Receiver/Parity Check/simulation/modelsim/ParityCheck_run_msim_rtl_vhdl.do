transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial LCD Controller/Serial Receiver/Parity Check/ParityCheck.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial LCD Controller/Serial Receiver/Parity Check/paritycheck_counter.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial LCD Controller/Serial Receiver/Parity Check/paritycheck_counter_adder.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial LCD Controller/Serial Receiver/Parity Check/paritycheck_counter_adder_fulladder.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial LCD Controller/Serial Receiver/Parity Check/paritycheck_counter_reg.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial LCD Controller/Serial Receiver/Parity Check/paritycheck_counter_reg_ffd.vhd}

