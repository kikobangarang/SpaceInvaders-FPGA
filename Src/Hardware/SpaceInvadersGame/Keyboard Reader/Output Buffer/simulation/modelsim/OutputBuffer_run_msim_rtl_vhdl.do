transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/Output Buffer/OutputBuffer.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/Output Buffer/buffercontrol.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/Output Buffer/outputregister.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/Output Buffer/outputregister_ffd.vhd}

