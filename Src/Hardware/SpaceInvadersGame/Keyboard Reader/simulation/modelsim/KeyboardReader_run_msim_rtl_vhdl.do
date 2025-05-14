transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/KeyboardReader.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/keydecode.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/keyscan.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/keyscan_cont.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/keyscan_cont_adder.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/keyscan_cont_fulladder.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/keyscan_cont_reg.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/keyscan_cont_ffd.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/keyscan_decoder.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/keyscan_mux.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/keycontrol.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/ringbuffer.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/ringbuffercontrol.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/memoryaddresscontrol.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/mac_cont.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/mac_cont_adder.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/mac_cont_fulladder.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/mac_cont_reg.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/mac_ffd.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/mac_mux.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/mac_compare.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/ram.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/outputbuffer.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/buffercontrol.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/outputregister.vhd}
vcom -93 -work work {C:/Users/Miguel Portela/Desktop/LIC/Hardware/SpaceInvadersGame/Keyboard Reader/outputregister_ffd.vhd}

