-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "05/20/2024 11:06:13"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	KeyboardReader IS
    PORT (
	Line : IN std_logic_vector(3 DOWNTO 0);
	Reset : IN std_logic;
	clk : IN std_logic;
	ACK : IN std_logic;
	Dval : BUFFER std_logic;
	Col : BUFFER std_logic_vector(2 DOWNTO 0);
	Q : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END KeyboardReader;

-- Design Ports Information
-- Dval	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Col[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Col[1]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Col[2]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[0]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACK	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Line[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Line[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Line[3]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Line[2]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF KeyboardReader IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Line : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_ACK : std_logic;
SIGNAL ww_Dval : std_logic;
SIGNAL ww_Col : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rtl~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \OutputBuffer_U0|BufferControl_U0|CurrentState~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~6clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~5clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~7clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Dval~output_o\ : std_logic;
SIGNAL \Col[0]~output_o\ : std_logic;
SIGNAL \Col[1]~output_o\ : std_logic;
SIGNAL \Col[2]~output_o\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ACK~input_o\ : std_logic;
SIGNAL \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~0_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\ : std_logic;
SIGNAL \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~0_combout\ : std_logic;
SIGNAL \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\ : std_logic;
SIGNAL \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~0_combout\ : std_logic;
SIGNAL \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~q\ : std_logic;
SIGNAL \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~0_combout\ : std_logic;
SIGNAL \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\ : std_logic;
SIGNAL \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~0_combout\ : std_logic;
SIGNAL \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\ : std_logic;
SIGNAL \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~0_combout\ : std_logic;
SIGNAL \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~feeder_combout\ : std_logic;
SIGNAL \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~q\ : std_logic;
SIGNAL \RingBuffer_U0|MemoryAddressControl_U0|empty~0_combout\ : std_logic;
SIGNAL \RingBuffer_U0|MemoryAddressControl_U0|empty~1_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RingBufferControl_U0|Selector0~2_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RingBufferControl_U0|Selector0~3_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RingBufferControl_U0|Selector0~4_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_000~q\ : std_logic;
SIGNAL \RingBuffer_U0|RingBufferControl_U0|NextState.STATE_001~0_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_001~q\ : std_logic;
SIGNAL \RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~feeder_combout\ : std_logic;
SIGNAL \RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\ : std_logic;
SIGNAL \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_011~feeder_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_011~q\ : std_logic;
SIGNAL \RingBuffer_U0|RingBufferControl_U0|Selector1~0_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_100~q\ : std_logic;
SIGNAL \Line[1]~input_o\ : std_logic;
SIGNAL \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~0_combout\ : std_logic;
SIGNAL \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\ : std_logic;
SIGNAL \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~0_combout\ : std_logic;
SIGNAL \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\ : std_logic;
SIGNAL \Line[0]~input_o\ : std_logic;
SIGNAL \Line[2]~input_o\ : std_logic;
SIGNAL \Line[3]~input_o\ : std_logic;
SIGNAL \KeyDecode_U0|KeyScan_Unit0|KeyScan_Mux_U0|Y~0_combout\ : std_logic;
SIGNAL \KeyDecode_U0|KeyScan_Unit0|KeyScan_Mux_U0|Y~1_combout\ : std_logic;
SIGNAL \KeyDecode_U0|KeyControl_Unit0|Selector2~0_combout\ : std_logic;
SIGNAL \KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_WAITING~q\ : std_logic;
SIGNAL \KeyDecode_U0|KeyControl_Unit0|Selector0~0_combout\ : std_logic;
SIGNAL \KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SCANNING~q\ : std_logic;
SIGNAL \KeyDecode_U0|KeyControl_Unit0|Selector1~0_combout\ : std_logic;
SIGNAL \KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SEARCHING~q\ : std_logic;
SIGNAL \RingBuffer_U0|RingBufferControl_U0|GenerateNextState~0_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RingBufferControl_U0|GenerateNextState~1_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RingBufferControl_U0|Selector2~0_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_101~q\ : std_logic;
SIGNAL \OutputBuffer_U0|BufferControl_U0|NextState~0_combout\ : std_logic;
SIGNAL \OutputBuffer_U0|BufferControl_U0|CurrentState~feeder_combout\ : std_logic;
SIGNAL \OutputBuffer_U0|BufferControl_U0|CurrentState~q\ : std_logic;
SIGNAL \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~0_combout\ : std_logic;
SIGNAL \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\ : std_logic;
SIGNAL \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Adder_U0|FullAdder_U2|CyOut~0_combout\ : std_logic;
SIGNAL \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~0_combout\ : std_logic;
SIGNAL \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\ : std_logic;
SIGNAL \KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|Col~0_combout\ : std_logic;
SIGNAL \KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|Col~1_combout\ : std_logic;
SIGNAL \KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|Col~2_combout\ : std_logic;
SIGNAL \OutputBuffer_U0|BufferControl_U0|CurrentState~clkctrl_outclk\ : std_logic;
SIGNAL \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ : std_logic;
SIGNAL \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ : std_logic;
SIGNAL \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ : std_logic;
SIGNAL \rtl~2_combout\ : std_logic;
SIGNAL \rtl~2clkctrl_outclk\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~0_combout\ : std_logic;
SIGNAL \rtl~1_combout\ : std_logic;
SIGNAL \rtl~1clkctrl_outclk\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~4_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~34_combout\ : std_logic;
SIGNAL \rtl~3_combout\ : std_logic;
SIGNAL \rtl~3clkctrl_outclk\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~12_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \rtl~0clkctrl_outclk\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~8_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~35_combout\ : std_logic;
SIGNAL \rtl~7_combout\ : std_logic;
SIGNAL \rtl~7clkctrl_outclk\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~28_combout\ : std_logic;
SIGNAL \rtl~4_combout\ : std_logic;
SIGNAL \rtl~4clkctrl_outclk\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~20_combout\ : std_logic;
SIGNAL \rtl~5_combout\ : std_logic;
SIGNAL \rtl~5clkctrl_outclk\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~24_combout\ : std_logic;
SIGNAL \rtl~6_combout\ : std_logic;
SIGNAL \rtl~6clkctrl_outclk\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~16_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~32_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~33_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~36_combout\ : std_logic;
SIGNAL \OutputBuffer_U0|OutputRegister_U0|FFD_U3|Q~q\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~13_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~1_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~5_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~39_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~9_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~40_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~29_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~21_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~25_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~17_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~37_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~38_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~41_combout\ : std_logic;
SIGNAL \OutputBuffer_U0|OutputRegister_U0|FFD_U2|Q~q\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~10_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~6_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~2_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~44_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~14_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~45_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~22_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~30_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~26_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~18_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~42_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~43_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~46_combout\ : std_logic;
SIGNAL \OutputBuffer_U0|OutputRegister_U0|FFD_U1|Q~q\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~15_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~7_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~3_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~49_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~11_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~50_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~31_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~23_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~27_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~19_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~47_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~48_combout\ : std_logic;
SIGNAL \RingBuffer_U0|RAM_U0|ram~51_combout\ : std_logic;
SIGNAL \OutputBuffer_U0|OutputRegister_U0|FFD_U0|Q~q\ : std_logic;
SIGNAL \ALT_INV_Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|ALT_INV_Col~2_combout\ : std_logic;
SIGNAL \KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|ALT_INV_Col~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Line <= Line;
ww_Reset <= Reset;
ww_clk <= clk;
ww_ACK <= ACK;
Dval <= ww_Dval;
Col <= ww_Col;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\rtl~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~2_combout\);

\rtl~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~0_combout\);

\OutputBuffer_U0|BufferControl_U0|CurrentState~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \OutputBuffer_U0|BufferControl_U0|CurrentState~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\rtl~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~1_combout\);

\rtl~6clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~6_combout\);

\rtl~5clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~5_combout\);

\Reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset~input_o\);

\rtl~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~4_combout\);

\rtl~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~3_combout\);

\rtl~7clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~7_combout\);
\ALT_INV_Reset~inputclkctrl_outclk\ <= NOT \Reset~inputclkctrl_outclk\;
\KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|ALT_INV_Col~2_combout\ <= NOT \KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|Col~2_combout\;
\KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|ALT_INV_Col~1_combout\ <= NOT \KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|Col~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X78_Y36_N2
\Dval~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OutputBuffer_U0|BufferControl_U0|CurrentState~q\,
	devoe => ww_devoe,
	o => \Dval~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\Col[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|Col~0_combout\,
	devoe => ww_devoe,
	o => \Col[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N30
\Col[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|ALT_INV_Col~1_combout\,
	devoe => ww_devoe,
	o => \Col[1]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\Col[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|ALT_INV_Col~2_combout\,
	devoe => ww_devoe,
	o => \Col[2]~output_o\);

-- Location: IOOBUF_X34_Y39_N16
\Q[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OutputBuffer_U0|OutputRegister_U0|FFD_U3|Q~q\,
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X34_Y39_N2
\Q[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OutputBuffer_U0|OutputRegister_U0|FFD_U2|Q~q\,
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\Q[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OutputBuffer_U0|OutputRegister_U0|FFD_U1|Q~q\,
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\Q[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OutputBuffer_U0|OutputRegister_U0|FFD_U0|Q~q\,
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X34_Y39_N29
\ACK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ACK,
	o => \ACK~input_o\);

-- Location: LCCOMB_X45_Y36_N24
\RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~0_combout\ = \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\ $ (\RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_101~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	datad => \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_101~q\,
	combout => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~0_combout\);

-- Location: IOIBUF_X31_Y0_N1
\Reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: CLKCTRL_G18
\Reset~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset~inputclkctrl_outclk\);

-- Location: FF_X45_Y36_N25
\RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\);

-- Location: LCCOMB_X45_Y36_N18
\RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~0_combout\ = \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\ $ (((\RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\ & 
-- \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_101~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	datac => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\,
	datad => \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_101~q\,
	combout => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~0_combout\);

-- Location: FF_X45_Y36_N19
\RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\);

-- Location: LCCOMB_X46_Y36_N22
\RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~0_combout\ = \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~q\ $ (((\RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_101~q\ & 
-- (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\ & \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_101~q\,
	datab => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	datac => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~q\,
	datad => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\,
	combout => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~0_combout\);

-- Location: FF_X46_Y36_N23
\RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~q\);

-- Location: LCCOMB_X45_Y36_N14
\RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~0_combout\ = \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\ $ (\RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_011~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	datad => \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_011~q\,
	combout => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~0_combout\);

-- Location: FF_X45_Y36_N15
\RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\);

-- Location: LCCOMB_X45_Y36_N6
\RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~0_combout\ = \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\ $ (((\RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\ & 
-- \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_011~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	datac => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\,
	datad => \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_011~q\,
	combout => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~0_combout\);

-- Location: FF_X45_Y36_N7
\RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\);

-- Location: LCCOMB_X46_Y36_N20
\RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~0_combout\ = \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~q\ $ (((\RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\ & 
-- (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\ & \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_011~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	datab => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\,
	datac => \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_011~q\,
	datad => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~q\,
	combout => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~0_combout\);

-- Location: LCCOMB_X46_Y36_N24
\RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~feeder_combout\ = \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~0_combout\,
	combout => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~feeder_combout\);

-- Location: FF_X46_Y36_N25
\RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~q\);

-- Location: LCCOMB_X46_Y36_N16
\RingBuffer_U0|MemoryAddressControl_U0|empty~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|MemoryAddressControl_U0|empty~0_combout\ = (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~q\ & (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~q\ & 
-- (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\ & \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~q\,
	datab => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~q\,
	datac => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\,
	datad => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	combout => \RingBuffer_U0|MemoryAddressControl_U0|empty~0_combout\);

-- Location: LCCOMB_X46_Y36_N28
\RingBuffer_U0|MemoryAddressControl_U0|empty~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|MemoryAddressControl_U0|empty~1_combout\ = (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\ & (\RingBuffer_U0|MemoryAddressControl_U0|empty~0_combout\ & 
-- \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	datac => \RingBuffer_U0|MemoryAddressControl_U0|empty~0_combout\,
	datad => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\,
	combout => \RingBuffer_U0|MemoryAddressControl_U0|empty~1_combout\);

-- Location: LCCOMB_X46_Y36_N12
\RingBuffer_U0|RingBufferControl_U0|Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RingBufferControl_U0|Selector0~2_combout\ = (\KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SEARCHING~q\ & (((\RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\ & \RingBuffer_U0|MemoryAddressControl_U0|empty~1_combout\)))) # 
-- (!\KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SEARCHING~q\ & ((\RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_100~q\) # ((!\RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\ & \RingBuffer_U0|MemoryAddressControl_U0|empty~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_100~q\,
	datab => \RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\,
	datac => \RingBuffer_U0|MemoryAddressControl_U0|empty~1_combout\,
	datad => \KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SEARCHING~q\,
	combout => \RingBuffer_U0|RingBufferControl_U0|Selector0~2_combout\);

-- Location: LCCOMB_X46_Y36_N2
\RingBuffer_U0|RingBufferControl_U0|Selector0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RingBufferControl_U0|Selector0~3_combout\ = (\RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_000~q\ & (\RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_100~q\ & 
-- ((!\KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SEARCHING~q\)))) # (!\RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_000~q\ & (((\RingBuffer_U0|RingBufferControl_U0|Selector0~2_combout\) # 
-- (!\KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SEARCHING~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_100~q\,
	datab => \RingBuffer_U0|RingBufferControl_U0|Selector0~2_combout\,
	datac => \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_000~q\,
	datad => \KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SEARCHING~q\,
	combout => \RingBuffer_U0|RingBufferControl_U0|Selector0~3_combout\);

-- Location: LCCOMB_X46_Y36_N8
\RingBuffer_U0|RingBufferControl_U0|Selector0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RingBufferControl_U0|Selector0~4_combout\ = (\RingBuffer_U0|RingBufferControl_U0|Selector0~3_combout\ & (!\OutputBuffer_U0|BufferControl_U0|CurrentState~q\ & ((!\RingBuffer_U0|RingBufferControl_U0|Selector0~2_combout\)))) # 
-- (!\RingBuffer_U0|RingBufferControl_U0|Selector0~3_combout\ & (((!\RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_101~q\)) # (!\OutputBuffer_U0|BufferControl_U0|CurrentState~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|RingBufferControl_U0|Selector0~3_combout\,
	datab => \OutputBuffer_U0|BufferControl_U0|CurrentState~q\,
	datac => \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_101~q\,
	datad => \RingBuffer_U0|RingBufferControl_U0|Selector0~2_combout\,
	combout => \RingBuffer_U0|RingBufferControl_U0|Selector0~4_combout\);

-- Location: FF_X46_Y36_N9
\RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RingBuffer_U0|RingBufferControl_U0|Selector0~4_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_000~q\);

-- Location: LCCOMB_X45_Y36_N22
\RingBuffer_U0|RingBufferControl_U0|NextState.STATE_001~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RingBufferControl_U0|NextState.STATE_001~0_combout\ = (\KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SEARCHING~q\ & (!\RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_000~q\ & 
-- ((!\RingBuffer_U0|MemoryAddressControl_U0|empty~1_combout\) # (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SEARCHING~q\,
	datab => \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_000~q\,
	datac => \RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\,
	datad => \RingBuffer_U0|MemoryAddressControl_U0|empty~1_combout\,
	combout => \RingBuffer_U0|RingBufferControl_U0|NextState.STATE_001~0_combout\);

-- Location: FF_X45_Y36_N23
\RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RingBuffer_U0|RingBufferControl_U0|NextState.STATE_001~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_001~q\);

-- Location: LCCOMB_X45_Y39_N20
\RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~feeder_combout\ = \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_001~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_001~q\,
	combout => \RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~feeder_combout\);

-- Location: FF_X45_Y39_N21
\RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\);

-- Location: LCCOMB_X46_Y36_N18
\RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_011~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_011~feeder_combout\ = \RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\,
	combout => \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_011~feeder_combout\);

-- Location: FF_X46_Y36_N19
\RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_011~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_011~q\);

-- Location: LCCOMB_X46_Y36_N10
\RingBuffer_U0|RingBufferControl_U0|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RingBufferControl_U0|Selector1~0_combout\ = (\RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_011~q\) # ((\RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_100~q\ & \KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SEARCHING~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_011~q\,
	datac => \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_100~q\,
	datad => \KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SEARCHING~q\,
	combout => \RingBuffer_U0|RingBufferControl_U0|Selector1~0_combout\);

-- Location: FF_X46_Y36_N11
\RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RingBuffer_U0|RingBufferControl_U0|Selector1~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_100~q\);

-- Location: IOIBUF_X46_Y54_N22
\Line[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Line(1),
	o => \Line[1]~input_o\);

-- Location: LCCOMB_X46_Y37_N0
\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~0_combout\ = \KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SCANNING~q\ $ (!\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SCANNING~q\,
	datac => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\,
	combout => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~0_combout\);

-- Location: FF_X46_Y37_N1
\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\);

-- Location: LCCOMB_X46_Y38_N16
\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~0_combout\ = \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\ $ (((!\KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SCANNING~q\ & 
-- \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SCANNING~q\,
	datac => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\,
	datad => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\,
	combout => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~0_combout\);

-- Location: FF_X46_Y38_N17
\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\);

-- Location: IOIBUF_X46_Y54_N15
\Line[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Line(0),
	o => \Line[0]~input_o\);

-- Location: IOIBUF_X34_Y39_N22
\Line[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Line(2),
	o => \Line[2]~input_o\);

-- Location: IOIBUF_X46_Y54_N1
\Line[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Line(3),
	o => \Line[3]~input_o\);

-- Location: LCCOMB_X46_Y38_N12
\KeyDecode_U0|KeyScan_Unit0|KeyScan_Mux_U0|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KeyDecode_U0|KeyScan_Unit0|KeyScan_Mux_U0|Y~0_combout\ = (\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\ & ((\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\ & ((\Line[3]~input_o\))) # 
-- (!\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\ & (\Line[2]~input_o\)))) # (!\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\ & (((\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Line[2]~input_o\,
	datab => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\,
	datac => \Line[3]~input_o\,
	datad => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\,
	combout => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Mux_U0|Y~0_combout\);

-- Location: LCCOMB_X46_Y38_N10
\KeyDecode_U0|KeyScan_Unit0|KeyScan_Mux_U0|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KeyDecode_U0|KeyScan_Unit0|KeyScan_Mux_U0|Y~1_combout\ = (\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\ & (((\KeyDecode_U0|KeyScan_Unit0|KeyScan_Mux_U0|Y~0_combout\)))) # (!\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\ & 
-- ((\KeyDecode_U0|KeyScan_Unit0|KeyScan_Mux_U0|Y~0_combout\ & (\Line[1]~input_o\)) # (!\KeyDecode_U0|KeyScan_Unit0|KeyScan_Mux_U0|Y~0_combout\ & ((\Line[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Line[1]~input_o\,
	datab => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\,
	datac => \Line[0]~input_o\,
	datad => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Mux_U0|Y~0_combout\,
	combout => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Mux_U0|Y~1_combout\);

-- Location: LCCOMB_X46_Y38_N28
\KeyDecode_U0|KeyControl_Unit0|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KeyDecode_U0|KeyControl_Unit0|Selector2~0_combout\ = (\RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_100~q\ & ((\KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SEARCHING~q\) # ((\KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_WAITING~q\)))) # 
-- (!\RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_100~q\ & (((\KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_WAITING~q\ & !\KeyDecode_U0|KeyScan_Unit0|KeyScan_Mux_U0|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SEARCHING~q\,
	datab => \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_100~q\,
	datac => \KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_WAITING~q\,
	datad => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Mux_U0|Y~1_combout\,
	combout => \KeyDecode_U0|KeyControl_Unit0|Selector2~0_combout\);

-- Location: FF_X46_Y38_N29
\KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_WAITING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \KeyDecode_U0|KeyControl_Unit0|Selector2~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_WAITING~q\);

-- Location: LCCOMB_X46_Y38_N26
\KeyDecode_U0|KeyControl_Unit0|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KeyDecode_U0|KeyControl_Unit0|Selector0~0_combout\ = ((\KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SCANNING~q\ & ((\RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_100~q\) # (!\KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_WAITING~q\)))) # 
-- (!\KeyDecode_U0|KeyScan_Unit0|KeyScan_Mux_U0|Y~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Mux_U0|Y~1_combout\,
	datab => \KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_WAITING~q\,
	datac => \KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SCANNING~q\,
	datad => \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_100~q\,
	combout => \KeyDecode_U0|KeyControl_Unit0|Selector0~0_combout\);

-- Location: FF_X46_Y38_N27
\KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SCANNING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \KeyDecode_U0|KeyControl_Unit0|Selector0~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SCANNING~q\);

-- Location: LCCOMB_X46_Y36_N6
\KeyDecode_U0|KeyControl_Unit0|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KeyDecode_U0|KeyControl_Unit0|Selector1~0_combout\ = (\RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_100~q\ & (!\KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SCANNING~q\ & ((!\KeyDecode_U0|KeyScan_Unit0|KeyScan_Mux_U0|Y~1_combout\)))) # 
-- (!\RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_100~q\ & ((\KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SEARCHING~q\) # ((!\KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SCANNING~q\ & 
-- !\KeyDecode_U0|KeyScan_Unit0|KeyScan_Mux_U0|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_100~q\,
	datab => \KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SCANNING~q\,
	datac => \KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SEARCHING~q\,
	datad => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Mux_U0|Y~1_combout\,
	combout => \KeyDecode_U0|KeyControl_Unit0|Selector1~0_combout\);

-- Location: FF_X46_Y36_N7
\KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SEARCHING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \KeyDecode_U0|KeyControl_Unit0|Selector1~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SEARCHING~q\);

-- Location: LCCOMB_X46_Y36_N14
\RingBuffer_U0|RingBufferControl_U0|GenerateNextState~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RingBufferControl_U0|GenerateNextState~0_combout\ = (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\ & (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\ & 
-- \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	datac => \RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\,
	datad => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\,
	combout => \RingBuffer_U0|RingBufferControl_U0|GenerateNextState~0_combout\);

-- Location: LCCOMB_X46_Y36_N30
\RingBuffer_U0|RingBufferControl_U0|GenerateNextState~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RingBufferControl_U0|GenerateNextState~1_combout\ = (\KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SEARCHING~q\) # ((\OutputBuffer_U0|BufferControl_U0|CurrentState~q\) # ((\RingBuffer_U0|MemoryAddressControl_U0|empty~0_combout\ & 
-- \RingBuffer_U0|RingBufferControl_U0|GenerateNextState~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SEARCHING~q\,
	datab => \RingBuffer_U0|MemoryAddressControl_U0|empty~0_combout\,
	datac => \RingBuffer_U0|RingBufferControl_U0|GenerateNextState~0_combout\,
	datad => \OutputBuffer_U0|BufferControl_U0|CurrentState~q\,
	combout => \RingBuffer_U0|RingBufferControl_U0|GenerateNextState~1_combout\);

-- Location: LCCOMB_X46_Y36_N26
\RingBuffer_U0|RingBufferControl_U0|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RingBufferControl_U0|Selector2~0_combout\ = (\OutputBuffer_U0|BufferControl_U0|CurrentState~q\ & (!\RingBuffer_U0|RingBufferControl_U0|GenerateNextState~1_combout\ & ((!\RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_000~q\)))) # 
-- (!\OutputBuffer_U0|BufferControl_U0|CurrentState~q\ & ((\RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_101~q\) # ((!\RingBuffer_U0|RingBufferControl_U0|GenerateNextState~1_combout\ & 
-- !\RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OutputBuffer_U0|BufferControl_U0|CurrentState~q\,
	datab => \RingBuffer_U0|RingBufferControl_U0|GenerateNextState~1_combout\,
	datac => \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_101~q\,
	datad => \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_000~q\,
	combout => \RingBuffer_U0|RingBufferControl_U0|Selector2~0_combout\);

-- Location: FF_X46_Y36_N27
\RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RingBuffer_U0|RingBufferControl_U0|Selector2~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_101~q\);

-- Location: LCCOMB_X46_Y36_N4
\OutputBuffer_U0|BufferControl_U0|NextState~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \OutputBuffer_U0|BufferControl_U0|NextState~0_combout\ = (\RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_101~q\) # ((!\ACK~input_o\ & \OutputBuffer_U0|BufferControl_U0|CurrentState~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACK~input_o\,
	datac => \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_101~q\,
	datad => \OutputBuffer_U0|BufferControl_U0|CurrentState~q\,
	combout => \OutputBuffer_U0|BufferControl_U0|NextState~0_combout\);

-- Location: LCCOMB_X50_Y36_N12
\OutputBuffer_U0|BufferControl_U0|CurrentState~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \OutputBuffer_U0|BufferControl_U0|CurrentState~feeder_combout\ = \OutputBuffer_U0|BufferControl_U0|NextState~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OutputBuffer_U0|BufferControl_U0|NextState~0_combout\,
	combout => \OutputBuffer_U0|BufferControl_U0|CurrentState~feeder_combout\);

-- Location: FF_X50_Y36_N13
\OutputBuffer_U0|BufferControl_U0|CurrentState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \OutputBuffer_U0|BufferControl_U0|CurrentState~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OutputBuffer_U0|BufferControl_U0|CurrentState~q\);

-- Location: LCCOMB_X46_Y38_N30
\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~0_combout\ = \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\ $ (((!\KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SCANNING~q\ & 
-- (\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\ & \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SCANNING~q\,
	datab => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\,
	datac => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\,
	datad => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\,
	combout => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~0_combout\);

-- Location: FF_X46_Y38_N31
\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\);

-- Location: LCCOMB_X46_Y38_N20
\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Adder_U0|FullAdder_U2|CyOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Adder_U0|FullAdder_U2|CyOut~0_combout\ = (\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\ & (\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\ & 
-- (!\KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SCANNING~q\ & \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\,
	datab => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\,
	datac => \KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SCANNING~q\,
	datad => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\,
	combout => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Adder_U0|FullAdder_U2|CyOut~0_combout\);

-- Location: LCCOMB_X46_Y38_N8
\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~0_combout\ = \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\ $ (\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Adder_U0|FullAdder_U2|CyOut~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\,
	datad => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Adder_U0|FullAdder_U2|CyOut~0_combout\,
	combout => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~0_combout\);

-- Location: FF_X46_Y38_N9
\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\);

-- Location: LCCOMB_X44_Y39_N16
\KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|Col~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|Col~0_combout\ = (\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\) # (\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\,
	datac => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\,
	combout => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|Col~0_combout\);

-- Location: LCCOMB_X46_Y40_N24
\KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|Col~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|Col~1_combout\ = (\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\ & !\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\,
	datad => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\,
	combout => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|Col~1_combout\);

-- Location: LCCOMB_X44_Y39_N14
\KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|Col~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|Col~2_combout\ = (!\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\ & \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\,
	datac => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\,
	combout => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|Col~2_combout\);

-- Location: CLKCTRL_G8
\OutputBuffer_U0|BufferControl_U0|CurrentState~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \OutputBuffer_U0|BufferControl_U0|CurrentState~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \OutputBuffer_U0|BufferControl_U0|CurrentState~clkctrl_outclk\);

-- Location: LCCOMB_X45_Y36_N16
\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ = (\RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_001~q\ & (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\)) # 
-- (!\RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_001~q\ & ((\RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\,
	datac => \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_001~q\,
	datad => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\,
	combout => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\);

-- Location: LCCOMB_X45_Y36_N28
\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ = (\RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_001~q\ & (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\)) # 
-- (!\RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_001~q\ & ((\RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_001~q\,
	datac => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	datad => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	combout => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\);

-- Location: LCCOMB_X46_Y36_N0
\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ = (\RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_001~q\ & (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~q\)) # 
-- (!\RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_001~q\ & ((\RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~q\,
	datac => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~q\,
	datad => \RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_001~q\,
	combout => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\);

-- Location: LCCOMB_X45_Y39_N16
\rtl~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~2_combout\ = (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & 
-- \RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datab => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datac => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\,
	datad => \RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\,
	combout => \rtl~2_combout\);

-- Location: CLKCTRL_G11
\rtl~2clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~2clkctrl_outclk\);

-- Location: LCCOMB_X46_Y39_N30
\RingBuffer_U0|RAM_U0|ram~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~0_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\RingBuffer_U0|RAM_U0|ram~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\,
	datac => \RingBuffer_U0|RAM_U0|ram~0_combout\,
	datad => \rtl~2clkctrl_outclk\,
	combout => \RingBuffer_U0|RAM_U0|ram~0_combout\);

-- Location: LCCOMB_X45_Y39_N24
\rtl~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~1_combout\ = (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & 
-- \RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datab => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datac => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\,
	datad => \RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\,
	combout => \rtl~1_combout\);

-- Location: CLKCTRL_G10
\rtl~1clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~1clkctrl_outclk\);

-- Location: LCCOMB_X46_Y39_N16
\RingBuffer_U0|RAM_U0|ram~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~4_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\)) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\RingBuffer_U0|RAM_U0|ram~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\,
	datac => \rtl~1clkctrl_outclk\,
	datad => \RingBuffer_U0|RAM_U0|ram~4_combout\,
	combout => \RingBuffer_U0|RAM_U0|ram~4_combout\);

-- Location: LCCOMB_X46_Y39_N8
\RingBuffer_U0|RAM_U0|ram~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~34_combout\ = (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & ((\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\) # ((\RingBuffer_U0|RAM_U0|ram~4_combout\)))) # 
-- (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (\RingBuffer_U0|RAM_U0|ram~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datab => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datac => \RingBuffer_U0|RAM_U0|ram~0_combout\,
	datad => \RingBuffer_U0|RAM_U0|ram~4_combout\,
	combout => \RingBuffer_U0|RAM_U0|ram~34_combout\);

-- Location: LCCOMB_X45_Y39_N12
\rtl~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~3_combout\ = (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & 
-- \RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datab => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datac => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\,
	datad => \RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\,
	combout => \rtl~3_combout\);

-- Location: CLKCTRL_G12
\rtl~3clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~3clkctrl_outclk\);

-- Location: LCCOMB_X46_Y37_N18
\RingBuffer_U0|RAM_U0|ram~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~12_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & ((\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\))) # (!GLOBAL(\rtl~3clkctrl_outclk\) & (\RingBuffer_U0|RAM_U0|ram~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBuffer_U0|RAM_U0|ram~12_combout\,
	datac => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\,
	datad => \rtl~3clkctrl_outclk\,
	combout => \RingBuffer_U0|RAM_U0|ram~12_combout\);

-- Location: LCCOMB_X45_Y39_N22
\rtl~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & 
-- \RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datab => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datac => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\,
	datad => \RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\,
	combout => \rtl~0_combout\);

-- Location: CLKCTRL_G6
\rtl~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~0clkctrl_outclk\);

-- Location: LCCOMB_X46_Y37_N4
\RingBuffer_U0|RAM_U0|ram~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~8_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & ((\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\))) # (!GLOBAL(\rtl~0clkctrl_outclk\) & (\RingBuffer_U0|RAM_U0|ram~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBuffer_U0|RAM_U0|ram~8_combout\,
	datac => \rtl~0clkctrl_outclk\,
	datad => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\,
	combout => \RingBuffer_U0|RAM_U0|ram~8_combout\);

-- Location: LCCOMB_X46_Y39_N14
\RingBuffer_U0|RAM_U0|ram~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~35_combout\ = (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & ((\RingBuffer_U0|RAM_U0|ram~34_combout\ & (\RingBuffer_U0|RAM_U0|ram~12_combout\)) # (!\RingBuffer_U0|RAM_U0|ram~34_combout\ & 
-- ((\RingBuffer_U0|RAM_U0|ram~8_combout\))))) # (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (\RingBuffer_U0|RAM_U0|ram~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datab => \RingBuffer_U0|RAM_U0|ram~34_combout\,
	datac => \RingBuffer_U0|RAM_U0|ram~12_combout\,
	datad => \RingBuffer_U0|RAM_U0|ram~8_combout\,
	combout => \RingBuffer_U0|RAM_U0|ram~35_combout\);

-- Location: LCCOMB_X45_Y39_N8
\rtl~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~7_combout\ = (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & 
-- \RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datab => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datac => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\,
	datad => \RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\,
	combout => \rtl~7_combout\);

-- Location: CLKCTRL_G13
\rtl~7clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~7clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~7clkctrl_outclk\);

-- Location: LCCOMB_X46_Y37_N30
\RingBuffer_U0|RAM_U0|ram~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~28_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\)) # (!GLOBAL(\rtl~7clkctrl_outclk\) & ((\RingBuffer_U0|RAM_U0|ram~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\,
	datac => \RingBuffer_U0|RAM_U0|ram~28_combout\,
	datad => \rtl~7clkctrl_outclk\,
	combout => \RingBuffer_U0|RAM_U0|ram~28_combout\);

-- Location: LCCOMB_X45_Y39_N14
\rtl~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~4_combout\ = (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & 
-- \RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datab => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datac => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\,
	datad => \RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\,
	combout => \rtl~4_combout\);

-- Location: CLKCTRL_G5
\rtl~4clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~4clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~4clkctrl_outclk\);

-- Location: LCCOMB_X47_Y38_N12
\RingBuffer_U0|RAM_U0|ram~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~20_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\RingBuffer_U0|RAM_U0|ram~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\,
	datac => \rtl~4clkctrl_outclk\,
	datad => \RingBuffer_U0|RAM_U0|ram~20_combout\,
	combout => \RingBuffer_U0|RAM_U0|ram~20_combout\);

-- Location: LCCOMB_X45_Y39_N6
\rtl~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~5_combout\ = (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & 
-- \RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datab => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\,
	datac => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datad => \RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\,
	combout => \rtl~5_combout\);

-- Location: CLKCTRL_G14
\rtl~5clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~5clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~5clkctrl_outclk\);

-- Location: LCCOMB_X47_Y39_N0
\RingBuffer_U0|RAM_U0|ram~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~24_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & ((\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\))) # (!GLOBAL(\rtl~5clkctrl_outclk\) & (\RingBuffer_U0|RAM_U0|ram~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBuffer_U0|RAM_U0|ram~24_combout\,
	datac => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\,
	datad => \rtl~5clkctrl_outclk\,
	combout => \RingBuffer_U0|RAM_U0|ram~24_combout\);

-- Location: LCCOMB_X45_Y39_N18
\rtl~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~6_combout\ = (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & 
-- \RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datab => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datac => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\,
	datad => \RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\,
	combout => \rtl~6_combout\);

-- Location: CLKCTRL_G9
\rtl~6clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~6clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~6clkctrl_outclk\);

-- Location: LCCOMB_X47_Y37_N20
\RingBuffer_U0|RAM_U0|ram~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~16_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\RingBuffer_U0|RAM_U0|ram~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\,
	datab => \RingBuffer_U0|RAM_U0|ram~16_combout\,
	datad => \rtl~6clkctrl_outclk\,
	combout => \RingBuffer_U0|RAM_U0|ram~16_combout\);

-- Location: LCCOMB_X46_Y39_N12
\RingBuffer_U0|RAM_U0|ram~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~32_combout\ = (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (((\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\)))) # 
-- (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & ((\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (\RingBuffer_U0|RAM_U0|ram~24_combout\)) # 
-- (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & ((\RingBuffer_U0|RAM_U0|ram~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datab => \RingBuffer_U0|RAM_U0|ram~24_combout\,
	datac => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datad => \RingBuffer_U0|RAM_U0|ram~16_combout\,
	combout => \RingBuffer_U0|RAM_U0|ram~32_combout\);

-- Location: LCCOMB_X46_Y39_N6
\RingBuffer_U0|RAM_U0|ram~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~33_combout\ = (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & ((\RingBuffer_U0|RAM_U0|ram~32_combout\ & (\RingBuffer_U0|RAM_U0|ram~28_combout\)) # (!\RingBuffer_U0|RAM_U0|ram~32_combout\ & 
-- ((\RingBuffer_U0|RAM_U0|ram~20_combout\))))) # (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (((\RingBuffer_U0|RAM_U0|ram~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datab => \RingBuffer_U0|RAM_U0|ram~28_combout\,
	datac => \RingBuffer_U0|RAM_U0|ram~20_combout\,
	datad => \RingBuffer_U0|RAM_U0|ram~32_combout\,
	combout => \RingBuffer_U0|RAM_U0|ram~33_combout\);

-- Location: LCCOMB_X46_Y39_N20
\RingBuffer_U0|RAM_U0|ram~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~36_combout\ = (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & ((\RingBuffer_U0|RAM_U0|ram~33_combout\))) # (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & 
-- (\RingBuffer_U0|RAM_U0|ram~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBuffer_U0|RAM_U0|ram~35_combout\,
	datac => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\,
	datad => \RingBuffer_U0|RAM_U0|ram~33_combout\,
	combout => \RingBuffer_U0|RAM_U0|ram~36_combout\);

-- Location: FF_X46_Y39_N21
\OutputBuffer_U0|OutputRegister_U0|FFD_U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OutputBuffer_U0|BufferControl_U0|CurrentState~clkctrl_outclk\,
	d => \RingBuffer_U0|RAM_U0|ram~36_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OutputBuffer_U0|OutputRegister_U0|FFD_U3|Q~q\);

-- Location: LCCOMB_X46_Y39_N28
\RingBuffer_U0|RAM_U0|ram~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~13_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\)) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\RingBuffer_U0|RAM_U0|ram~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\,
	datac => \RingBuffer_U0|RAM_U0|ram~13_combout\,
	datad => \rtl~3clkctrl_outclk\,
	combout => \RingBuffer_U0|RAM_U0|ram~13_combout\);

-- Location: LCCOMB_X46_Y39_N26
\RingBuffer_U0|RAM_U0|ram~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~1_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & ((\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\))) # (!GLOBAL(\rtl~2clkctrl_outclk\) & (\RingBuffer_U0|RAM_U0|ram~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|RAM_U0|ram~1_combout\,
	datac => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\,
	datad => \rtl~2clkctrl_outclk\,
	combout => \RingBuffer_U0|RAM_U0|ram~1_combout\);

-- Location: LCCOMB_X46_Y39_N24
\RingBuffer_U0|RAM_U0|ram~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~5_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\)) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\RingBuffer_U0|RAM_U0|ram~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\,
	datac => \rtl~1clkctrl_outclk\,
	datad => \RingBuffer_U0|RAM_U0|ram~5_combout\,
	combout => \RingBuffer_U0|RAM_U0|ram~5_combout\);

-- Location: LCCOMB_X46_Y39_N4
\RingBuffer_U0|RAM_U0|ram~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~39_combout\ = (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & ((\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\) # ((\RingBuffer_U0|RAM_U0|ram~5_combout\)))) # 
-- (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (\RingBuffer_U0|RAM_U0|ram~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datab => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datac => \RingBuffer_U0|RAM_U0|ram~1_combout\,
	datad => \RingBuffer_U0|RAM_U0|ram~5_combout\,
	combout => \RingBuffer_U0|RAM_U0|ram~39_combout\);

-- Location: LCCOMB_X46_Y37_N28
\RingBuffer_U0|RAM_U0|ram~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~9_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\RingBuffer_U0|RAM_U0|ram~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\,
	datac => \rtl~0clkctrl_outclk\,
	datad => \RingBuffer_U0|RAM_U0|ram~9_combout\,
	combout => \RingBuffer_U0|RAM_U0|ram~9_combout\);

-- Location: LCCOMB_X46_Y39_N22
\RingBuffer_U0|RAM_U0|ram~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~40_combout\ = (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & ((\RingBuffer_U0|RAM_U0|ram~39_combout\ & (\RingBuffer_U0|RAM_U0|ram~13_combout\)) # (!\RingBuffer_U0|RAM_U0|ram~39_combout\ & 
-- ((\RingBuffer_U0|RAM_U0|ram~9_combout\))))) # (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (((\RingBuffer_U0|RAM_U0|ram~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datab => \RingBuffer_U0|RAM_U0|ram~13_combout\,
	datac => \RingBuffer_U0|RAM_U0|ram~39_combout\,
	datad => \RingBuffer_U0|RAM_U0|ram~9_combout\,
	combout => \RingBuffer_U0|RAM_U0|ram~40_combout\);

-- Location: LCCOMB_X47_Y38_N28
\RingBuffer_U0|RAM_U0|ram~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~29_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & ((\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\))) # (!GLOBAL(\rtl~7clkctrl_outclk\) & (\RingBuffer_U0|RAM_U0|ram~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBuffer_U0|RAM_U0|ram~29_combout\,
	datac => \rtl~7clkctrl_outclk\,
	datad => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\,
	combout => \RingBuffer_U0|RAM_U0|ram~29_combout\);

-- Location: LCCOMB_X46_Y38_N22
\RingBuffer_U0|RAM_U0|ram~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~21_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & ((\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\))) # (!GLOBAL(\rtl~4clkctrl_outclk\) & (\RingBuffer_U0|RAM_U0|ram~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|RAM_U0|ram~21_combout\,
	datac => \rtl~4clkctrl_outclk\,
	datad => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\,
	combout => \RingBuffer_U0|RAM_U0|ram~21_combout\);

-- Location: LCCOMB_X47_Y39_N30
\RingBuffer_U0|RAM_U0|ram~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~25_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & ((\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\))) # (!GLOBAL(\rtl~5clkctrl_outclk\) & (\RingBuffer_U0|RAM_U0|ram~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|RAM_U0|ram~25_combout\,
	datac => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\,
	datad => \rtl~5clkctrl_outclk\,
	combout => \RingBuffer_U0|RAM_U0|ram~25_combout\);

-- Location: LCCOMB_X47_Y38_N6
\RingBuffer_U0|RAM_U0|ram~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~17_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & ((\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\))) # (!GLOBAL(\rtl~6clkctrl_outclk\) & (\RingBuffer_U0|RAM_U0|ram~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|RAM_U0|ram~17_combout\,
	datac => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\,
	datad => \rtl~6clkctrl_outclk\,
	combout => \RingBuffer_U0|RAM_U0|ram~17_combout\);

-- Location: LCCOMB_X46_Y39_N0
\RingBuffer_U0|RAM_U0|ram~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~37_combout\ = (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\)) # 
-- (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & ((\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (\RingBuffer_U0|RAM_U0|ram~25_combout\)) # 
-- (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & ((\RingBuffer_U0|RAM_U0|ram~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datab => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datac => \RingBuffer_U0|RAM_U0|ram~25_combout\,
	datad => \RingBuffer_U0|RAM_U0|ram~17_combout\,
	combout => \RingBuffer_U0|RAM_U0|ram~37_combout\);

-- Location: LCCOMB_X46_Y39_N10
\RingBuffer_U0|RAM_U0|ram~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~38_combout\ = (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & ((\RingBuffer_U0|RAM_U0|ram~37_combout\ & (\RingBuffer_U0|RAM_U0|ram~29_combout\)) # (!\RingBuffer_U0|RAM_U0|ram~37_combout\ & 
-- ((\RingBuffer_U0|RAM_U0|ram~21_combout\))))) # (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (((\RingBuffer_U0|RAM_U0|ram~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|RAM_U0|ram~29_combout\,
	datab => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datac => \RingBuffer_U0|RAM_U0|ram~21_combout\,
	datad => \RingBuffer_U0|RAM_U0|ram~37_combout\,
	combout => \RingBuffer_U0|RAM_U0|ram~38_combout\);

-- Location: LCCOMB_X46_Y39_N18
\RingBuffer_U0|RAM_U0|ram~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~41_combout\ = (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & ((\RingBuffer_U0|RAM_U0|ram~38_combout\))) # (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & 
-- (\RingBuffer_U0|RAM_U0|ram~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|RAM_U0|ram~40_combout\,
	datac => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\,
	datad => \RingBuffer_U0|RAM_U0|ram~38_combout\,
	combout => \RingBuffer_U0|RAM_U0|ram~41_combout\);

-- Location: FF_X46_Y39_N19
\OutputBuffer_U0|OutputRegister_U0|FFD_U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OutputBuffer_U0|BufferControl_U0|CurrentState~clkctrl_outclk\,
	d => \RingBuffer_U0|RAM_U0|ram~41_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OutputBuffer_U0|OutputRegister_U0|FFD_U2|Q~q\);

-- Location: LCCOMB_X47_Y40_N20
\RingBuffer_U0|RAM_U0|ram~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~10_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & ((\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\))) # (!GLOBAL(\rtl~0clkctrl_outclk\) & (\RingBuffer_U0|RAM_U0|ram~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBuffer_U0|RAM_U0|ram~10_combout\,
	datac => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\,
	datad => \rtl~0clkctrl_outclk\,
	combout => \RingBuffer_U0|RAM_U0|ram~10_combout\);

-- Location: LCCOMB_X46_Y40_N4
\RingBuffer_U0|RAM_U0|ram~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~6_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & ((\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\))) # (!GLOBAL(\rtl~1clkctrl_outclk\) & (\RingBuffer_U0|RAM_U0|ram~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBuffer_U0|RAM_U0|ram~6_combout\,
	datac => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\,
	datad => \rtl~1clkctrl_outclk\,
	combout => \RingBuffer_U0|RAM_U0|ram~6_combout\);

-- Location: LCCOMB_X46_Y40_N10
\RingBuffer_U0|RAM_U0|ram~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~2_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & ((\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\))) # (!GLOBAL(\rtl~2clkctrl_outclk\) & (\RingBuffer_U0|RAM_U0|ram~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|RAM_U0|ram~2_combout\,
	datac => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\,
	datad => \rtl~2clkctrl_outclk\,
	combout => \RingBuffer_U0|RAM_U0|ram~2_combout\);

-- Location: LCCOMB_X46_Y40_N8
\RingBuffer_U0|RAM_U0|ram~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~44_combout\ = (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\)) # 
-- (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & ((\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (\RingBuffer_U0|RAM_U0|ram~6_combout\)) # 
-- (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & ((\RingBuffer_U0|RAM_U0|ram~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datab => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datac => \RingBuffer_U0|RAM_U0|ram~6_combout\,
	datad => \RingBuffer_U0|RAM_U0|ram~2_combout\,
	combout => \RingBuffer_U0|RAM_U0|ram~44_combout\);

-- Location: LCCOMB_X46_Y40_N12
\RingBuffer_U0|RAM_U0|ram~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~14_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\)) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\RingBuffer_U0|RAM_U0|ram~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~3clkctrl_outclk\,
	datac => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\,
	datad => \RingBuffer_U0|RAM_U0|ram~14_combout\,
	combout => \RingBuffer_U0|RAM_U0|ram~14_combout\);

-- Location: LCCOMB_X46_Y40_N26
\RingBuffer_U0|RAM_U0|ram~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~45_combout\ = (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & ((\RingBuffer_U0|RAM_U0|ram~44_combout\ & ((\RingBuffer_U0|RAM_U0|ram~14_combout\))) # (!\RingBuffer_U0|RAM_U0|ram~44_combout\ & 
-- (\RingBuffer_U0|RAM_U0|ram~10_combout\)))) # (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (((\RingBuffer_U0|RAM_U0|ram~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|RAM_U0|ram~10_combout\,
	datab => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datac => \RingBuffer_U0|RAM_U0|ram~44_combout\,
	datad => \RingBuffer_U0|RAM_U0|ram~14_combout\,
	combout => \RingBuffer_U0|RAM_U0|ram~45_combout\);

-- Location: LCCOMB_X46_Y38_N0
\RingBuffer_U0|RAM_U0|ram~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~22_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & ((\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\))) # (!GLOBAL(\rtl~4clkctrl_outclk\) & (\RingBuffer_U0|RAM_U0|ram~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBuffer_U0|RAM_U0|ram~22_combout\,
	datac => \rtl~4clkctrl_outclk\,
	datad => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\,
	combout => \RingBuffer_U0|RAM_U0|ram~22_combout\);

-- Location: LCCOMB_X47_Y38_N30
\RingBuffer_U0|RAM_U0|ram~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~30_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & ((\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\))) # (!GLOBAL(\rtl~7clkctrl_outclk\) & (\RingBuffer_U0|RAM_U0|ram~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|RAM_U0|ram~30_combout\,
	datac => \rtl~7clkctrl_outclk\,
	datad => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\,
	combout => \RingBuffer_U0|RAM_U0|ram~30_combout\);

-- Location: LCCOMB_X46_Y38_N14
\RingBuffer_U0|RAM_U0|ram~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~26_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & ((\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\))) # (!GLOBAL(\rtl~5clkctrl_outclk\) & (\RingBuffer_U0|RAM_U0|ram~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBuffer_U0|RAM_U0|ram~26_combout\,
	datac => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\,
	datad => \rtl~5clkctrl_outclk\,
	combout => \RingBuffer_U0|RAM_U0|ram~26_combout\);

-- Location: LCCOMB_X46_Y38_N24
\RingBuffer_U0|RAM_U0|ram~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~18_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & ((\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\))) # (!GLOBAL(\rtl~6clkctrl_outclk\) & (\RingBuffer_U0|RAM_U0|ram~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBuffer_U0|RAM_U0|ram~18_combout\,
	datac => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\,
	datad => \rtl~6clkctrl_outclk\,
	combout => \RingBuffer_U0|RAM_U0|ram~18_combout\);

-- Location: LCCOMB_X46_Y40_N28
\RingBuffer_U0|RAM_U0|ram~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~42_combout\ = (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & ((\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\) # ((\RingBuffer_U0|RAM_U0|ram~26_combout\)))) # 
-- (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & ((\RingBuffer_U0|RAM_U0|ram~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datab => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datac => \RingBuffer_U0|RAM_U0|ram~26_combout\,
	datad => \RingBuffer_U0|RAM_U0|ram~18_combout\,
	combout => \RingBuffer_U0|RAM_U0|ram~42_combout\);

-- Location: LCCOMB_X46_Y40_N6
\RingBuffer_U0|RAM_U0|ram~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~43_combout\ = (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & ((\RingBuffer_U0|RAM_U0|ram~42_combout\ & ((\RingBuffer_U0|RAM_U0|ram~30_combout\))) # (!\RingBuffer_U0|RAM_U0|ram~42_combout\ & 
-- (\RingBuffer_U0|RAM_U0|ram~22_combout\)))) # (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (((\RingBuffer_U0|RAM_U0|ram~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datab => \RingBuffer_U0|RAM_U0|ram~22_combout\,
	datac => \RingBuffer_U0|RAM_U0|ram~30_combout\,
	datad => \RingBuffer_U0|RAM_U0|ram~42_combout\,
	combout => \RingBuffer_U0|RAM_U0|ram~43_combout\);

-- Location: LCCOMB_X46_Y40_N22
\RingBuffer_U0|RAM_U0|ram~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~46_combout\ = (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & ((\RingBuffer_U0|RAM_U0|ram~43_combout\))) # (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & 
-- (\RingBuffer_U0|RAM_U0|ram~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\,
	datac => \RingBuffer_U0|RAM_U0|ram~45_combout\,
	datad => \RingBuffer_U0|RAM_U0|ram~43_combout\,
	combout => \RingBuffer_U0|RAM_U0|ram~46_combout\);

-- Location: FF_X46_Y40_N23
\OutputBuffer_U0|OutputRegister_U0|FFD_U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OutputBuffer_U0|BufferControl_U0|CurrentState~clkctrl_outclk\,
	d => \RingBuffer_U0|RAM_U0|ram~46_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OutputBuffer_U0|OutputRegister_U0|FFD_U1|Q~q\);

-- Location: LCCOMB_X46_Y40_N18
\RingBuffer_U0|RAM_U0|ram~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~15_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\)) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\RingBuffer_U0|RAM_U0|ram~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\,
	datac => \rtl~3clkctrl_outclk\,
	datad => \RingBuffer_U0|RAM_U0|ram~15_combout\,
	combout => \RingBuffer_U0|RAM_U0|ram~15_combout\);

-- Location: LCCOMB_X45_Y40_N22
\RingBuffer_U0|RAM_U0|ram~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~7_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & ((\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\))) # (!GLOBAL(\rtl~1clkctrl_outclk\) & (\RingBuffer_U0|RAM_U0|ram~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|RAM_U0|ram~7_combout\,
	datac => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\,
	datad => \rtl~1clkctrl_outclk\,
	combout => \RingBuffer_U0|RAM_U0|ram~7_combout\);

-- Location: LCCOMB_X45_Y40_N16
\RingBuffer_U0|RAM_U0|ram~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~3_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & ((\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\))) # (!GLOBAL(\rtl~2clkctrl_outclk\) & (\RingBuffer_U0|RAM_U0|ram~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBuffer_U0|RAM_U0|ram~3_combout\,
	datac => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\,
	datad => \rtl~2clkctrl_outclk\,
	combout => \RingBuffer_U0|RAM_U0|ram~3_combout\);

-- Location: LCCOMB_X45_Y40_N8
\RingBuffer_U0|RAM_U0|ram~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~49_combout\ = (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & ((\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\) # ((\RingBuffer_U0|RAM_U0|ram~7_combout\)))) # 
-- (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & ((\RingBuffer_U0|RAM_U0|ram~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datab => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datac => \RingBuffer_U0|RAM_U0|ram~7_combout\,
	datad => \RingBuffer_U0|RAM_U0|ram~3_combout\,
	combout => \RingBuffer_U0|RAM_U0|ram~49_combout\);

-- Location: LCCOMB_X45_Y40_N28
\RingBuffer_U0|RAM_U0|ram~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~11_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & ((\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\))) # (!GLOBAL(\rtl~0clkctrl_outclk\) & (\RingBuffer_U0|RAM_U0|ram~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBuffer_U0|RAM_U0|ram~11_combout\,
	datac => \rtl~0clkctrl_outclk\,
	datad => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\,
	combout => \RingBuffer_U0|RAM_U0|ram~11_combout\);

-- Location: LCCOMB_X45_Y40_N26
\RingBuffer_U0|RAM_U0|ram~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~50_combout\ = (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & ((\RingBuffer_U0|RAM_U0|ram~49_combout\ & (\RingBuffer_U0|RAM_U0|ram~15_combout\)) # (!\RingBuffer_U0|RAM_U0|ram~49_combout\ & 
-- ((\RingBuffer_U0|RAM_U0|ram~11_combout\))))) # (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (((\RingBuffer_U0|RAM_U0|ram~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datab => \RingBuffer_U0|RAM_U0|ram~15_combout\,
	datac => \RingBuffer_U0|RAM_U0|ram~49_combout\,
	datad => \RingBuffer_U0|RAM_U0|ram~11_combout\,
	combout => \RingBuffer_U0|RAM_U0|ram~50_combout\);

-- Location: LCCOMB_X45_Y38_N16
\RingBuffer_U0|RAM_U0|ram~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~31_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & ((\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\))) # (!GLOBAL(\rtl~7clkctrl_outclk\) & (\RingBuffer_U0|RAM_U0|ram~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBuffer_U0|RAM_U0|ram~31_combout\,
	datac => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\,
	datad => \rtl~7clkctrl_outclk\,
	combout => \RingBuffer_U0|RAM_U0|ram~31_combout\);

-- Location: LCCOMB_X46_Y38_N6
\RingBuffer_U0|RAM_U0|ram~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~23_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\RingBuffer_U0|RAM_U0|ram~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\,
	datac => \rtl~4clkctrl_outclk\,
	datad => \RingBuffer_U0|RAM_U0|ram~23_combout\,
	combout => \RingBuffer_U0|RAM_U0|ram~23_combout\);

-- Location: LCCOMB_X46_Y38_N4
\RingBuffer_U0|RAM_U0|ram~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~27_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & ((\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\))) # (!GLOBAL(\rtl~5clkctrl_outclk\) & (\RingBuffer_U0|RAM_U0|ram~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBuffer_U0|RAM_U0|ram~27_combout\,
	datac => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\,
	datad => \rtl~5clkctrl_outclk\,
	combout => \RingBuffer_U0|RAM_U0|ram~27_combout\);

-- Location: LCCOMB_X46_Y38_N18
\RingBuffer_U0|RAM_U0|ram~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~19_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & ((\KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\))) # (!GLOBAL(\rtl~6clkctrl_outclk\) & (\RingBuffer_U0|RAM_U0|ram~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBuffer_U0|RAM_U0|ram~19_combout\,
	datac => \KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\,
	datad => \rtl~6clkctrl_outclk\,
	combout => \RingBuffer_U0|RAM_U0|ram~19_combout\);

-- Location: LCCOMB_X46_Y38_N2
\RingBuffer_U0|RAM_U0|ram~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~47_combout\ = (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & ((\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\) # ((\RingBuffer_U0|RAM_U0|ram~27_combout\)))) # 
-- (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & ((\RingBuffer_U0|RAM_U0|ram~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datab => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datac => \RingBuffer_U0|RAM_U0|ram~27_combout\,
	datad => \RingBuffer_U0|RAM_U0|ram~19_combout\,
	combout => \RingBuffer_U0|RAM_U0|ram~47_combout\);

-- Location: LCCOMB_X45_Y40_N18
\RingBuffer_U0|RAM_U0|ram~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~48_combout\ = (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & ((\RingBuffer_U0|RAM_U0|ram~47_combout\ & (\RingBuffer_U0|RAM_U0|ram~31_combout\)) # (!\RingBuffer_U0|RAM_U0|ram~47_combout\ & 
-- ((\RingBuffer_U0|RAM_U0|ram~23_combout\))))) # (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (((\RingBuffer_U0|RAM_U0|ram~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datab => \RingBuffer_U0|RAM_U0|ram~31_combout\,
	datac => \RingBuffer_U0|RAM_U0|ram~23_combout\,
	datad => \RingBuffer_U0|RAM_U0|ram~47_combout\,
	combout => \RingBuffer_U0|RAM_U0|ram~48_combout\);

-- Location: LCCOMB_X45_Y40_N20
\RingBuffer_U0|RAM_U0|ram~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuffer_U0|RAM_U0|ram~51_combout\ = (\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & ((\RingBuffer_U0|RAM_U0|ram~48_combout\))) # (!\RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & 
-- (\RingBuffer_U0|RAM_U0|ram~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\,
	datac => \RingBuffer_U0|RAM_U0|ram~50_combout\,
	datad => \RingBuffer_U0|RAM_U0|ram~48_combout\,
	combout => \RingBuffer_U0|RAM_U0|ram~51_combout\);

-- Location: FF_X45_Y40_N21
\OutputBuffer_U0|OutputRegister_U0|FFD_U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OutputBuffer_U0|BufferControl_U0|CurrentState~clkctrl_outclk\,
	d => \RingBuffer_U0|RAM_U0|ram~51_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OutputBuffer_U0|OutputRegister_U0|FFD_U0|Q~q\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_Dval <= \Dval~output_o\;

ww_Col(0) <= \Col[0]~output_o\;

ww_Col(1) <= \Col[1]~output_o\;

ww_Col(2) <= \Col[2]~output_o\;

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;
END structure;


