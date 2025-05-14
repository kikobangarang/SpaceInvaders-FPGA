transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial LCD Controller/SerialLCDController.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial LCD Controller/serialreceiver.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial LCD Controller/serialcontrol.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial LCD Controller/paritycheck.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial LCD Controller/paritycheck_counter.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial LCD Controller/paritycheck_counter_adder.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial LCD Controller/paritycheck_counter_adder_fulladder.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial LCD Controller/paritycheck_counter_reg.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial LCD Controller/paritycheck_counter_reg_ffd.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial LCD Controller/counter.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial LCD Controller/counter_adder.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial LCD Controller/counter_adder_fulladder.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial LCD Controller/counter_reg.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial LCD Controller/counter_reg_ffd.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial LCD Controller/compare9.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial LCD Controller/compare10.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial LCD Controller/shiftregister.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial LCD Controller/shiftregister_ffd.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial LCD Controller/lcd_dispatcher.vhd}

