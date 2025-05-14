transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/Ring Buffer/RingBuffer.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/Ring Buffer/ringbuffercontrol.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/Ring Buffer/memoryaddresscontrol.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/Ring Buffer/mac_cont.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/Ring Buffer/mac_cont_adder.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/Ring Buffer/mac_cont_fulladder.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/Ring Buffer/mac_cont_reg.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/Ring Buffer/mac_ffd.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/Ring Buffer/mac_mux.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/Ring Buffer/mac_compare.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/Ring Buffer/ram.vhd}

