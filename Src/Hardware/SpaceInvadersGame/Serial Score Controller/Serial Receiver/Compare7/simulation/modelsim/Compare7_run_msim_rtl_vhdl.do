transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/Serial Score Controller/Serial Receiver/Compare7/Compare7.vhd}

