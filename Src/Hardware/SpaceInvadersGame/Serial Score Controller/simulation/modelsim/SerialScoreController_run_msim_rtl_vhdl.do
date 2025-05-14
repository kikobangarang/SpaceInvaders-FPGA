transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial Score Controller/SerialScoreController.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial Score Controller/serialreceiver.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial Score Controller/serialcontrol.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial Score Controller/paritycheck.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial Score Controller/paritycheck_counter.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial Score Controller/paritycheck_counter_adder.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial Score Controller/paritycheck_counter_adder_fulladder.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial Score Controller/paritycheck_counter_reg.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial Score Controller/paritycheck_counter_reg_ffd.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial Score Controller/counter.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial Score Controller/counter_adder.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial Score Controller/counter_adder_fulladder.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial Score Controller/counter_reg.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial Score Controller/counter_reg_ffd.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial Score Controller/compare8.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial Score Controller/compare7.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial Score Controller/shiftregister.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial Score Controller/shiftregister_ffd.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial Score Controller/score_dispatcher.vhd}

