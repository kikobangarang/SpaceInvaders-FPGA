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

-- DATE "05/21/2024 10:20:14"

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

ENTITY 	RingBuffer IS
    PORT (
	DAV : IN std_logic;
	CTS : IN std_logic;
	clk : IN std_logic;
	Reset : IN std_logic;
	D : IN std_logic_vector(3 DOWNTO 0);
	Q : BUFFER std_logic_vector(3 DOWNTO 0);
	Wreg : BUFFER std_logic;
	DAC : BUFFER std_logic
	);
END RingBuffer;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Wreg	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DAC	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DAV	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CTS	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RingBuffer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DAV : std_logic;
SIGNAL ww_CTS : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_D : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Wreg : std_logic;
SIGNAL ww_DAC : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rtl~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~7clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~6clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~5clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \Wreg~output_o\ : std_logic;
SIGNAL \DAC~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \DAV~input_o\ : std_logic;
SIGNAL \MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~0_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\ : std_logic;
SIGNAL \MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~0_combout\ : std_logic;
SIGNAL \MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~q\ : std_logic;
SIGNAL \MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~0_combout\ : std_logic;
SIGNAL \MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\ : std_logic;
SIGNAL \MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~0_combout\ : std_logic;
SIGNAL \MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~q\ : std_logic;
SIGNAL \MemoryAddressControl_U0|empty~0_combout\ : std_logic;
SIGNAL \RingBufferControl_U0|Selector2~0_combout\ : std_logic;
SIGNAL \RingBufferControl_U0|Selector2~1_combout\ : std_logic;
SIGNAL \CTS~input_o\ : std_logic;
SIGNAL \RingBufferControl_U0|Selector1~0_combout\ : std_logic;
SIGNAL \RingBufferControl_U0|CurrentState.STATE_100~q\ : std_logic;
SIGNAL \RingBufferControl_U0|Selector0~0_combout\ : std_logic;
SIGNAL \RingBufferControl_U0|NextState~0_combout\ : std_logic;
SIGNAL \RingBufferControl_U0|Selector0~1_combout\ : std_logic;
SIGNAL \RingBufferControl_U0|CurrentState.STATE_000~q\ : std_logic;
SIGNAL \RingBufferControl_U0|Selector2~2_combout\ : std_logic;
SIGNAL \RingBufferControl_U0|CurrentState.STATE_101~q\ : std_logic;
SIGNAL \MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~0_combout\ : std_logic;
SIGNAL \MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\ : std_logic;
SIGNAL \MemoryAddressControl_U0|empty~1_combout\ : std_logic;
SIGNAL \RingBufferControl_U0|NextState.STATE_001~0_combout\ : std_logic;
SIGNAL \RingBufferControl_U0|CurrentState.STATE_001~q\ : std_logic;
SIGNAL \MemoryAddressControl_U0|MAC_FFD_U0|Q~feeder_combout\ : std_logic;
SIGNAL \MemoryAddressControl_U0|MAC_FFD_U0|Q~q\ : std_logic;
SIGNAL \RingBufferControl_U0|CurrentState.STATE_011~q\ : std_logic;
SIGNAL \MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~0_combout\ : std_logic;
SIGNAL \MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\ : std_logic;
SIGNAL \MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ : std_logic;
SIGNAL \MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ : std_logic;
SIGNAL \rtl~7_combout\ : std_logic;
SIGNAL \rtl~7clkctrl_outclk\ : std_logic;
SIGNAL \RAM_U0|ram~28_combout\ : std_logic;
SIGNAL \rtl~6_combout\ : std_logic;
SIGNAL \rtl~6clkctrl_outclk\ : std_logic;
SIGNAL \RAM_U0|ram~16_combout\ : std_logic;
SIGNAL \rtl~5_combout\ : std_logic;
SIGNAL \rtl~5clkctrl_outclk\ : std_logic;
SIGNAL \RAM_U0|ram~24_combout\ : std_logic;
SIGNAL \RAM_U0|ram~32_combout\ : std_logic;
SIGNAL \rtl~4_combout\ : std_logic;
SIGNAL \rtl~4clkctrl_outclk\ : std_logic;
SIGNAL \RAM_U0|ram~20_combout\ : std_logic;
SIGNAL \RAM_U0|ram~33_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \rtl~0clkctrl_outclk\ : std_logic;
SIGNAL \RAM_U0|ram~8_combout\ : std_logic;
SIGNAL \rtl~2_combout\ : std_logic;
SIGNAL \rtl~2clkctrl_outclk\ : std_logic;
SIGNAL \RAM_U0|ram~0_combout\ : std_logic;
SIGNAL \rtl~1_combout\ : std_logic;
SIGNAL \rtl~1clkctrl_outclk\ : std_logic;
SIGNAL \RAM_U0|ram~4_combout\ : std_logic;
SIGNAL \RAM_U0|ram~34_combout\ : std_logic;
SIGNAL \rtl~3_combout\ : std_logic;
SIGNAL \rtl~3clkctrl_outclk\ : std_logic;
SIGNAL \RAM_U0|ram~12_combout\ : std_logic;
SIGNAL \RAM_U0|ram~35_combout\ : std_logic;
SIGNAL \RAM_U0|ram~36_combout\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \RAM_U0|ram~29_combout\ : std_logic;
SIGNAL \RAM_U0|ram~17_combout\ : std_logic;
SIGNAL \RAM_U0|ram~25_combout\ : std_logic;
SIGNAL \RAM_U0|ram~37_combout\ : std_logic;
SIGNAL \RAM_U0|ram~21_combout\ : std_logic;
SIGNAL \RAM_U0|ram~38_combout\ : std_logic;
SIGNAL \RAM_U0|ram~1_combout\ : std_logic;
SIGNAL \RAM_U0|ram~5_combout\ : std_logic;
SIGNAL \RAM_U0|ram~39_combout\ : std_logic;
SIGNAL \RAM_U0|ram~13_combout\ : std_logic;
SIGNAL \RAM_U0|ram~9_combout\ : std_logic;
SIGNAL \RAM_U0|ram~40_combout\ : std_logic;
SIGNAL \RAM_U0|ram~41_combout\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \RAM_U0|ram~6_combout\ : std_logic;
SIGNAL \RAM_U0|ram~2_combout\ : std_logic;
SIGNAL \RAM_U0|ram~44_combout\ : std_logic;
SIGNAL \RAM_U0|ram~14_combout\ : std_logic;
SIGNAL \RAM_U0|ram~10_combout\ : std_logic;
SIGNAL \RAM_U0|ram~45_combout\ : std_logic;
SIGNAL \RAM_U0|ram~30_combout\ : std_logic;
SIGNAL \RAM_U0|ram~26_combout\ : std_logic;
SIGNAL \RAM_U0|ram~18_combout\ : std_logic;
SIGNAL \RAM_U0|ram~42_combout\ : std_logic;
SIGNAL \RAM_U0|ram~22_combout\ : std_logic;
SIGNAL \RAM_U0|ram~43_combout\ : std_logic;
SIGNAL \RAM_U0|ram~46_combout\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \RAM_U0|ram~15_combout\ : std_logic;
SIGNAL \RAM_U0|ram~11_combout\ : std_logic;
SIGNAL \RAM_U0|ram~7_combout\ : std_logic;
SIGNAL \RAM_U0|ram~3_combout\ : std_logic;
SIGNAL \RAM_U0|ram~49_combout\ : std_logic;
SIGNAL \RAM_U0|ram~50_combout\ : std_logic;
SIGNAL \RAM_U0|ram~23_combout\ : std_logic;
SIGNAL \RAM_U0|ram~19_combout\ : std_logic;
SIGNAL \RAM_U0|ram~27_combout\ : std_logic;
SIGNAL \RAM_U0|ram~47_combout\ : std_logic;
SIGNAL \RAM_U0|ram~31_combout\ : std_logic;
SIGNAL \RAM_U0|ram~48_combout\ : std_logic;
SIGNAL \RAM_U0|ram~51_combout\ : std_logic;
SIGNAL \ALT_INV_Reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_DAV <= DAV;
ww_CTS <= CTS;
ww_clk <= clk;
ww_Reset <= Reset;
ww_D <= D;
Q <= ww_Q;
Wreg <= ww_Wreg;
DAC <= ww_DAC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\rtl~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~3_combout\);

\rtl~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~1_combout\);

\rtl~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~0_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\rtl~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~2_combout\);

\rtl~7clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~7_combout\);

\rtl~6clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~6_combout\);

\Reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset~input_o\);

\rtl~5clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~5_combout\);

\rtl~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~4_combout\);
\ALT_INV_Reset~inputclkctrl_outclk\ <= NOT \Reset~inputclkctrl_outclk\;
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

-- Location: IOOBUF_X36_Y39_N16
\Q[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM_U0|ram~36_combout\,
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X24_Y39_N23
\Q[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM_U0|ram~41_combout\,
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\Q[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM_U0|ram~46_combout\,
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\Q[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM_U0|ram~51_combout\,
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\Wreg~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RingBufferControl_U0|CurrentState.STATE_101~q\,
	devoe => ww_devoe,
	o => \Wreg~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\DAC~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RingBufferControl_U0|CurrentState.STATE_100~q\,
	devoe => ww_devoe,
	o => \DAC~output_o\);

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

-- Location: IOIBUF_X26_Y39_N29
\DAV~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DAV,
	o => \DAV~input_o\);

-- Location: LCCOMB_X26_Y32_N22
\MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~0_combout\ = \MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\ $ (((\MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\ & 
-- \RingBufferControl_U0|CurrentState.STATE_011~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	datac => \MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\,
	datad => \RingBufferControl_U0|CurrentState.STATE_011~q\,
	combout => \MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~0_combout\);

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

-- Location: FF_X26_Y32_N23
\MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\);

-- Location: LCCOMB_X26_Y32_N2
\MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~0_combout\ = \MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~q\ $ (((\MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\ & 
-- (\RingBufferControl_U0|CurrentState.STATE_011~q\ & \MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	datab => \MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~q\,
	datac => \RingBufferControl_U0|CurrentState.STATE_011~q\,
	datad => \MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\,
	combout => \MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~0_combout\);

-- Location: FF_X26_Y32_N7
\MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~q\);

-- Location: LCCOMB_X25_Y32_N6
\MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~0_combout\ = \MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\ $ (((\MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\ & 
-- \RingBufferControl_U0|CurrentState.STATE_101~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	datac => \MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\,
	datad => \RingBufferControl_U0|CurrentState.STATE_101~q\,
	combout => \MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~0_combout\);

-- Location: FF_X25_Y32_N7
\MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\);

-- Location: LCCOMB_X25_Y32_N14
\MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~0_combout\ = \MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~q\ $ (((\MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\ & 
-- (\MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\ & \RingBufferControl_U0|CurrentState.STATE_101~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\,
	datab => \MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	datac => \MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~q\,
	datad => \RingBufferControl_U0|CurrentState.STATE_101~q\,
	combout => \MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~0_combout\);

-- Location: FF_X25_Y32_N15
\MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~q\);

-- Location: LCCOMB_X26_Y32_N0
\MemoryAddressControl_U0|empty~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryAddressControl_U0|empty~0_combout\ = (\MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\ & (\MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~q\ & (\MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\ & 
-- \MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	datab => \MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~q\,
	datac => \MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\,
	datad => \MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~q\,
	combout => \MemoryAddressControl_U0|empty~0_combout\);

-- Location: LCCOMB_X25_Y32_N24
\RingBufferControl_U0|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBufferControl_U0|Selector2~0_combout\ = (\MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\ & (\MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\ & !\MemoryAddressControl_U0|MAC_FFD_U0|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\,
	datab => \MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	datad => \MemoryAddressControl_U0|MAC_FFD_U0|Q~q\,
	combout => \RingBufferControl_U0|Selector2~0_combout\);

-- Location: LCCOMB_X25_Y32_N30
\RingBufferControl_U0|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBufferControl_U0|Selector2~1_combout\ = (\DAV~input_o\) # ((\MemoryAddressControl_U0|empty~0_combout\ & \RingBufferControl_U0|Selector2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DAV~input_o\,
	datac => \MemoryAddressControl_U0|empty~0_combout\,
	datad => \RingBufferControl_U0|Selector2~0_combout\,
	combout => \RingBufferControl_U0|Selector2~1_combout\);

-- Location: IOIBUF_X26_Y39_N22
\CTS~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CTS,
	o => \CTS~input_o\);

-- Location: LCCOMB_X26_Y32_N14
\RingBufferControl_U0|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBufferControl_U0|Selector1~0_combout\ = (\RingBufferControl_U0|CurrentState.STATE_011~q\) # ((\DAV~input_o\ & \RingBufferControl_U0|CurrentState.STATE_100~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DAV~input_o\,
	datac => \RingBufferControl_U0|CurrentState.STATE_100~q\,
	datad => \RingBufferControl_U0|CurrentState.STATE_011~q\,
	combout => \RingBufferControl_U0|Selector1~0_combout\);

-- Location: FF_X26_Y32_N15
\RingBufferControl_U0|CurrentState.STATE_100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RingBufferControl_U0|Selector1~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBufferControl_U0|CurrentState.STATE_100~q\);

-- Location: LCCOMB_X26_Y32_N20
\RingBufferControl_U0|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBufferControl_U0|Selector0~0_combout\ = (\CTS~input_o\ & (!\DAV~input_o\ & (\RingBufferControl_U0|CurrentState.STATE_100~q\))) # (!\CTS~input_o\ & ((\RingBufferControl_U0|CurrentState.STATE_101~q\) # ((!\DAV~input_o\ & 
-- \RingBufferControl_U0|CurrentState.STATE_100~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTS~input_o\,
	datab => \DAV~input_o\,
	datac => \RingBufferControl_U0|CurrentState.STATE_100~q\,
	datad => \RingBufferControl_U0|CurrentState.STATE_101~q\,
	combout => \RingBufferControl_U0|Selector0~0_combout\);

-- Location: LCCOMB_X26_Y32_N4
\RingBufferControl_U0|NextState~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBufferControl_U0|NextState~0_combout\ = (\DAV~input_o\ & (((!\MemoryAddressControl_U0|empty~1_combout\) # (!\MemoryAddressControl_U0|MAC_FFD_U0|Q~q\)))) # (!\DAV~input_o\ & (\CTS~input_o\ & ((\MemoryAddressControl_U0|MAC_FFD_U0|Q~q\) # 
-- (!\MemoryAddressControl_U0|empty~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTS~input_o\,
	datab => \DAV~input_o\,
	datac => \MemoryAddressControl_U0|MAC_FFD_U0|Q~q\,
	datad => \MemoryAddressControl_U0|empty~1_combout\,
	combout => \RingBufferControl_U0|NextState~0_combout\);

-- Location: LCCOMB_X26_Y32_N18
\RingBufferControl_U0|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBufferControl_U0|Selector0~1_combout\ = (!\RingBufferControl_U0|Selector0~0_combout\ & ((\RingBufferControl_U0|CurrentState.STATE_000~q\) # (\RingBufferControl_U0|NextState~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBufferControl_U0|Selector0~0_combout\,
	datac => \RingBufferControl_U0|CurrentState.STATE_000~q\,
	datad => \RingBufferControl_U0|NextState~0_combout\,
	combout => \RingBufferControl_U0|Selector0~1_combout\);

-- Location: FF_X26_Y32_N19
\RingBufferControl_U0|CurrentState.STATE_000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RingBufferControl_U0|Selector0~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBufferControl_U0|CurrentState.STATE_000~q\);

-- Location: LCCOMB_X25_Y32_N18
\RingBufferControl_U0|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBufferControl_U0|Selector2~2_combout\ = (\CTS~input_o\ & ((\RingBufferControl_U0|CurrentState.STATE_101~q\) # ((!\RingBufferControl_U0|Selector2~1_combout\ & !\RingBufferControl_U0|CurrentState.STATE_000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBufferControl_U0|Selector2~1_combout\,
	datab => \CTS~input_o\,
	datac => \RingBufferControl_U0|CurrentState.STATE_101~q\,
	datad => \RingBufferControl_U0|CurrentState.STATE_000~q\,
	combout => \RingBufferControl_U0|Selector2~2_combout\);

-- Location: FF_X25_Y32_N19
\RingBufferControl_U0|CurrentState.STATE_101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RingBufferControl_U0|Selector2~2_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBufferControl_U0|CurrentState.STATE_101~q\);

-- Location: LCCOMB_X25_Y32_N16
\MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~0_combout\ = \MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\ $ (\RingBufferControl_U0|CurrentState.STATE_101~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	datad => \RingBufferControl_U0|CurrentState.STATE_101~q\,
	combout => \MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~0_combout\);

-- Location: FF_X25_Y32_N17
\MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\);

-- Location: LCCOMB_X26_Y32_N16
\MemoryAddressControl_U0|empty~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryAddressControl_U0|empty~1_combout\ = (\MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\ & (\MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\ & \MemoryAddressControl_U0|empty~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	datab => \MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\,
	datac => \MemoryAddressControl_U0|empty~0_combout\,
	combout => \MemoryAddressControl_U0|empty~1_combout\);

-- Location: LCCOMB_X26_Y32_N28
\RingBufferControl_U0|NextState.STATE_001~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBufferControl_U0|NextState.STATE_001~0_combout\ = (\DAV~input_o\ & (!\RingBufferControl_U0|CurrentState.STATE_000~q\ & ((!\MemoryAddressControl_U0|empty~1_combout\) # (!\MemoryAddressControl_U0|MAC_FFD_U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressControl_U0|MAC_FFD_U0|Q~q\,
	datab => \DAV~input_o\,
	datac => \MemoryAddressControl_U0|empty~1_combout\,
	datad => \RingBufferControl_U0|CurrentState.STATE_000~q\,
	combout => \RingBufferControl_U0|NextState.STATE_001~0_combout\);

-- Location: FF_X26_Y32_N29
\RingBufferControl_U0|CurrentState.STATE_001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RingBufferControl_U0|NextState.STATE_001~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBufferControl_U0|CurrentState.STATE_001~q\);

-- Location: LCCOMB_X26_Y32_N26
\MemoryAddressControl_U0|MAC_FFD_U0|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryAddressControl_U0|MAC_FFD_U0|Q~feeder_combout\ = \RingBufferControl_U0|CurrentState.STATE_001~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RingBufferControl_U0|CurrentState.STATE_001~q\,
	combout => \MemoryAddressControl_U0|MAC_FFD_U0|Q~feeder_combout\);

-- Location: FF_X26_Y32_N27
\MemoryAddressControl_U0|MAC_FFD_U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MemoryAddressControl_U0|MAC_FFD_U0|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryAddressControl_U0|MAC_FFD_U0|Q~q\);

-- Location: FF_X26_Y32_N3
\RingBufferControl_U0|CurrentState.STATE_011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryAddressControl_U0|MAC_FFD_U0|Q~q\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBufferControl_U0|CurrentState.STATE_011~q\);

-- Location: LCCOMB_X26_Y32_N10
\MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~0_combout\ = \MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\ $ (\RingBufferControl_U0|CurrentState.STATE_011~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	datad => \RingBufferControl_U0|CurrentState.STATE_011~q\,
	combout => \MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~0_combout\);

-- Location: FF_X26_Y32_N11
\MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\);

-- Location: LCCOMB_X26_Y32_N30
\MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ = (\RingBufferControl_U0|CurrentState.STATE_001~q\ & (\MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\)) # (!\RingBufferControl_U0|CurrentState.STATE_001~q\ & 
-- ((\MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	datac => \MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	datad => \RingBufferControl_U0|CurrentState.STATE_001~q\,
	combout => \MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\);

-- Location: IOIBUF_X36_Y39_N29
\D[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

-- Location: LCCOMB_X26_Y32_N6
\MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ = (\RingBufferControl_U0|CurrentState.STATE_001~q\ & ((\MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~q\))) # (!\RingBufferControl_U0|CurrentState.STATE_001~q\ & 
-- (\MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~q\,
	datac => \MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~q\,
	datad => \RingBufferControl_U0|CurrentState.STATE_001~q\,
	combout => \MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\);

-- Location: LCCOMB_X26_Y32_N12
\MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ = (\RingBufferControl_U0|CurrentState.STATE_001~q\ & ((\MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\))) # (!\RingBufferControl_U0|CurrentState.STATE_001~q\ & 
-- (\MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\,
	datac => \MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\,
	datad => \RingBufferControl_U0|CurrentState.STATE_001~q\,
	combout => \MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\);

-- Location: LCCOMB_X26_Y35_N20
\rtl~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~7_combout\ = (\MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (\MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & (\MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & \MemoryAddressControl_U0|MAC_FFD_U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datab => \MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\,
	datac => \MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datad => \MemoryAddressControl_U0|MAC_FFD_U0|Q~q\,
	combout => \rtl~7_combout\);

-- Location: CLKCTRL_G0
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

-- Location: LCCOMB_X42_Y36_N20
\RAM_U0|ram~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~28_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\D[0]~input_o\)) # (!GLOBAL(\rtl~7clkctrl_outclk\) & ((\RAM_U0|ram~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[0]~input_o\,
	datac => \rtl~7clkctrl_outclk\,
	datad => \RAM_U0|ram~28_combout\,
	combout => \RAM_U0|ram~28_combout\);

-- Location: LCCOMB_X26_Y32_N24
\rtl~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~6_combout\ = (\MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & (!\MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (!\MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & \MemoryAddressControl_U0|MAC_FFD_U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\,
	datab => \MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datac => \MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datad => \MemoryAddressControl_U0|MAC_FFD_U0|Q~q\,
	combout => \rtl~6_combout\);

-- Location: CLKCTRL_G13
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

-- Location: LCCOMB_X42_Y36_N26
\RAM_U0|ram~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~16_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\D[0]~input_o\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\RAM_U0|ram~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[0]~input_o\,
	datac => \RAM_U0|ram~16_combout\,
	datad => \rtl~6clkctrl_outclk\,
	combout => \RAM_U0|ram~16_combout\);

-- Location: LCCOMB_X26_Y32_N8
\rtl~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~5_combout\ = (\MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & (\MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (!\MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & \MemoryAddressControl_U0|MAC_FFD_U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\,
	datab => \MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datac => \MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datad => \MemoryAddressControl_U0|MAC_FFD_U0|Q~q\,
	combout => \rtl~5_combout\);

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X43_Y36_N18
\RAM_U0|ram~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~24_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\D[0]~input_o\)) # (!GLOBAL(\rtl~5clkctrl_outclk\) & ((\RAM_U0|ram~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[0]~input_o\,
	datac => \rtl~5clkctrl_outclk\,
	datad => \RAM_U0|ram~24_combout\,
	combout => \RAM_U0|ram~24_combout\);

-- Location: LCCOMB_X43_Y36_N8
\RAM_U0|ram~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~32_combout\ = (\MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & ((\MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\) # ((\RAM_U0|ram~24_combout\)))) # (!\MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & 
-- (!\MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (\RAM_U0|ram~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datab => \MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datac => \RAM_U0|ram~16_combout\,
	datad => \RAM_U0|ram~24_combout\,
	combout => \RAM_U0|ram~32_combout\);

-- Location: LCCOMB_X26_Y35_N2
\rtl~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~4_combout\ = (\MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (\MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & (!\MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & \MemoryAddressControl_U0|MAC_FFD_U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datab => \MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\,
	datac => \MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datad => \MemoryAddressControl_U0|MAC_FFD_U0|Q~q\,
	combout => \rtl~4_combout\);

-- Location: CLKCTRL_G2
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

-- Location: LCCOMB_X43_Y36_N20
\RAM_U0|ram~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~20_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\D[0]~input_o\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\RAM_U0|ram~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[0]~input_o\,
	datac => \rtl~4clkctrl_outclk\,
	datad => \RAM_U0|ram~20_combout\,
	combout => \RAM_U0|ram~20_combout\);

-- Location: LCCOMB_X43_Y36_N2
\RAM_U0|ram~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~33_combout\ = (\MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & ((\RAM_U0|ram~32_combout\ & (\RAM_U0|ram~28_combout\)) # (!\RAM_U0|ram~32_combout\ & ((\RAM_U0|ram~20_combout\))))) # 
-- (!\MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (((\RAM_U0|ram~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datab => \RAM_U0|ram~28_combout\,
	datac => \RAM_U0|ram~32_combout\,
	datad => \RAM_U0|ram~20_combout\,
	combout => \RAM_U0|ram~33_combout\);

-- Location: LCCOMB_X27_Y32_N6
\rtl~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = (!\MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & (!\MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (\MemoryAddressControl_U0|MAC_FFD_U0|Q~q\ & \MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\,
	datab => \MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datac => \MemoryAddressControl_U0|MAC_FFD_U0|Q~q\,
	datad => \MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	combout => \rtl~0_combout\);

-- Location: CLKCTRL_G12
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

-- Location: LCCOMB_X42_Y36_N22
\RAM_U0|ram~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~8_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\D[0]~input_o\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\RAM_U0|ram~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[0]~input_o\,
	datac => \RAM_U0|ram~8_combout\,
	datad => \rtl~0clkctrl_outclk\,
	combout => \RAM_U0|ram~8_combout\);

-- Location: LCCOMB_X27_Y32_N20
\rtl~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~2_combout\ = (!\MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & (!\MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (\MemoryAddressControl_U0|MAC_FFD_U0|Q~q\ & !\MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\,
	datab => \MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datac => \MemoryAddressControl_U0|MAC_FFD_U0|Q~q\,
	datad => \MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	combout => \rtl~2_combout\);

-- Location: CLKCTRL_G10
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

-- Location: LCCOMB_X43_Y35_N0
\RAM_U0|ram~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~0_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\D[0]~input_o\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\RAM_U0|ram~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[0]~input_o\,
	datac => \rtl~2clkctrl_outclk\,
	datad => \RAM_U0|ram~0_combout\,
	combout => \RAM_U0|ram~0_combout\);

-- Location: LCCOMB_X26_Y35_N14
\rtl~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~1_combout\ = (\MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (!\MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & (!\MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & \MemoryAddressControl_U0|MAC_FFD_U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datab => \MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\,
	datac => \MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datad => \MemoryAddressControl_U0|MAC_FFD_U0|Q~q\,
	combout => \rtl~1_combout\);

-- Location: CLKCTRL_G1
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

-- Location: LCCOMB_X43_Y37_N20
\RAM_U0|ram~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~4_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\D[0]~input_o\)) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\RAM_U0|ram~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~input_o\,
	datac => \rtl~1clkctrl_outclk\,
	datad => \RAM_U0|ram~4_combout\,
	combout => \RAM_U0|ram~4_combout\);

-- Location: LCCOMB_X43_Y36_N4
\RAM_U0|ram~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~34_combout\ = (\MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (((\MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\)))) # (!\MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & 
-- ((\MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & ((\RAM_U0|ram~4_combout\))) # (!\MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (\RAM_U0|ram~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datab => \RAM_U0|ram~0_combout\,
	datac => \MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datad => \RAM_U0|ram~4_combout\,
	combout => \RAM_U0|ram~34_combout\);

-- Location: LCCOMB_X27_Y32_N18
\rtl~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~3_combout\ = (!\MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & (\MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (\MemoryAddressControl_U0|MAC_FFD_U0|Q~q\ & \MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\,
	datab => \MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datac => \MemoryAddressControl_U0|MAC_FFD_U0|Q~q\,
	datad => \MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	combout => \rtl~3_combout\);

-- Location: CLKCTRL_G11
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

-- Location: LCCOMB_X43_Y36_N12
\RAM_U0|ram~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~12_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & ((\D[0]~input_o\))) # (!GLOBAL(\rtl~3clkctrl_outclk\) & (\RAM_U0|ram~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_U0|ram~12_combout\,
	datab => \D[0]~input_o\,
	datad => \rtl~3clkctrl_outclk\,
	combout => \RAM_U0|ram~12_combout\);

-- Location: LCCOMB_X43_Y36_N10
\RAM_U0|ram~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~35_combout\ = (\MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & ((\RAM_U0|ram~34_combout\ & ((\RAM_U0|ram~12_combout\))) # (!\RAM_U0|ram~34_combout\ & (\RAM_U0|ram~8_combout\)))) # 
-- (!\MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (((\RAM_U0|ram~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datab => \RAM_U0|ram~8_combout\,
	datac => \RAM_U0|ram~34_combout\,
	datad => \RAM_U0|ram~12_combout\,
	combout => \RAM_U0|ram~35_combout\);

-- Location: LCCOMB_X42_Y36_N24
\RAM_U0|ram~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~36_combout\ = (\MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & (\RAM_U0|ram~33_combout\)) # (!\MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & ((\RAM_U0|ram~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_U0|ram~33_combout\,
	datab => \RAM_U0|ram~35_combout\,
	datac => \MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\,
	combout => \RAM_U0|ram~36_combout\);

-- Location: IOIBUF_X24_Y39_N29
\D[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

-- Location: LCCOMB_X25_Y36_N26
\RAM_U0|ram~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~29_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\D[1]~input_o\)) # (!GLOBAL(\rtl~7clkctrl_outclk\) & ((\RAM_U0|ram~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[1]~input_o\,
	datac => \RAM_U0|ram~29_combout\,
	datad => \rtl~7clkctrl_outclk\,
	combout => \RAM_U0|ram~29_combout\);

-- Location: LCCOMB_X24_Y36_N8
\RAM_U0|ram~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~17_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\D[1]~input_o\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\RAM_U0|ram~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[1]~input_o\,
	datac => \RAM_U0|ram~17_combout\,
	datad => \rtl~6clkctrl_outclk\,
	combout => \RAM_U0|ram~17_combout\);

-- Location: LCCOMB_X25_Y36_N20
\RAM_U0|ram~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~25_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\D[1]~input_o\)) # (!GLOBAL(\rtl~5clkctrl_outclk\) & ((\RAM_U0|ram~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[1]~input_o\,
	datac => \rtl~5clkctrl_outclk\,
	datad => \RAM_U0|ram~25_combout\,
	combout => \RAM_U0|ram~25_combout\);

-- Location: LCCOMB_X25_Y36_N4
\RAM_U0|ram~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~37_combout\ = (\MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (((\RAM_U0|ram~25_combout\) # (\MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\)))) # (!\MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & 
-- (\RAM_U0|ram~17_combout\ & ((!\MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_U0|ram~17_combout\,
	datab => \RAM_U0|ram~25_combout\,
	datac => \MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datad => \MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	combout => \RAM_U0|ram~37_combout\);

-- Location: LCCOMB_X25_Y36_N10
\RAM_U0|ram~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~21_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & ((\D[1]~input_o\))) # (!GLOBAL(\rtl~4clkctrl_outclk\) & (\RAM_U0|ram~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_U0|ram~21_combout\,
	datab => \D[1]~input_o\,
	datad => \rtl~4clkctrl_outclk\,
	combout => \RAM_U0|ram~21_combout\);

-- Location: LCCOMB_X25_Y36_N30
\RAM_U0|ram~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~38_combout\ = (\MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & ((\RAM_U0|ram~37_combout\ & (\RAM_U0|ram~29_combout\)) # (!\RAM_U0|ram~37_combout\ & ((\RAM_U0|ram~21_combout\))))) # 
-- (!\MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (((\RAM_U0|ram~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_U0|ram~29_combout\,
	datab => \MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datac => \RAM_U0|ram~37_combout\,
	datad => \RAM_U0|ram~21_combout\,
	combout => \RAM_U0|ram~38_combout\);

-- Location: LCCOMB_X24_Y35_N30
\RAM_U0|ram~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~1_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\D[1]~input_o\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\RAM_U0|ram~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[1]~input_o\,
	datac => \RAM_U0|ram~1_combout\,
	datad => \rtl~2clkctrl_outclk\,
	combout => \RAM_U0|ram~1_combout\);

-- Location: LCCOMB_X24_Y35_N28
\RAM_U0|ram~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~5_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\D[1]~input_o\)) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\RAM_U0|ram~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[1]~input_o\,
	datac => \rtl~1clkctrl_outclk\,
	datad => \RAM_U0|ram~5_combout\,
	combout => \RAM_U0|ram~5_combout\);

-- Location: LCCOMB_X25_Y36_N16
\RAM_U0|ram~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~39_combout\ = (\MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (((\MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\)))) # (!\MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & 
-- ((\MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & ((\RAM_U0|ram~5_combout\))) # (!\MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (\RAM_U0|ram~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_U0|ram~1_combout\,
	datab => \RAM_U0|ram~5_combout\,
	datac => \MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datad => \MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	combout => \RAM_U0|ram~39_combout\);

-- Location: LCCOMB_X27_Y36_N30
\RAM_U0|ram~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~13_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\D[1]~input_o\)) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\RAM_U0|ram~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[1]~input_o\,
	datac => \RAM_U0|ram~13_combout\,
	datad => \rtl~3clkctrl_outclk\,
	combout => \RAM_U0|ram~13_combout\);

-- Location: LCCOMB_X27_Y36_N8
\RAM_U0|ram~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~9_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\D[1]~input_o\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\RAM_U0|ram~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[1]~input_o\,
	datac => \RAM_U0|ram~9_combout\,
	datad => \rtl~0clkctrl_outclk\,
	combout => \RAM_U0|ram~9_combout\);

-- Location: LCCOMB_X26_Y36_N24
\RAM_U0|ram~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~40_combout\ = (\RAM_U0|ram~39_combout\ & (((\RAM_U0|ram~13_combout\)) # (!\MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\))) # (!\RAM_U0|ram~39_combout\ & (\MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & 
-- ((\RAM_U0|ram~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_U0|ram~39_combout\,
	datab => \MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datac => \RAM_U0|ram~13_combout\,
	datad => \RAM_U0|ram~9_combout\,
	combout => \RAM_U0|ram~40_combout\);

-- Location: LCCOMB_X25_Y36_N14
\RAM_U0|ram~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~41_combout\ = (\MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & (\RAM_U0|ram~38_combout\)) # (!\MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & ((\RAM_U0|ram~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_U0|ram~38_combout\,
	datab => \RAM_U0|ram~40_combout\,
	datad => \MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\,
	combout => \RAM_U0|ram~41_combout\);

-- Location: IOIBUF_X26_Y39_N1
\D[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

-- Location: LCCOMB_X26_Y35_N10
\RAM_U0|ram~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~6_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\D[2]~input_o\)) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\RAM_U0|ram~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[2]~input_o\,
	datac => \rtl~1clkctrl_outclk\,
	datad => \RAM_U0|ram~6_combout\,
	combout => \RAM_U0|ram~6_combout\);

-- Location: LCCOMB_X26_Y35_N12
\RAM_U0|ram~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~2_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\D[2]~input_o\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\RAM_U0|ram~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[2]~input_o\,
	datac => \rtl~2clkctrl_outclk\,
	datad => \RAM_U0|ram~2_combout\,
	combout => \RAM_U0|ram~2_combout\);

-- Location: LCCOMB_X26_Y35_N16
\RAM_U0|ram~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~44_combout\ = (\MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & ((\RAM_U0|ram~6_combout\) # ((\MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\)))) # (!\MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & 
-- (((!\MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & \RAM_U0|ram~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_U0|ram~6_combout\,
	datab => \MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datac => \MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datad => \RAM_U0|ram~2_combout\,
	combout => \RAM_U0|ram~44_combout\);

-- Location: LCCOMB_X26_Y36_N28
\RAM_U0|ram~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~14_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\D[2]~input_o\)) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\RAM_U0|ram~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[2]~input_o\,
	datac => \rtl~3clkctrl_outclk\,
	datad => \RAM_U0|ram~14_combout\,
	combout => \RAM_U0|ram~14_combout\);

-- Location: LCCOMB_X26_Y36_N18
\RAM_U0|ram~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~10_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & ((\D[2]~input_o\))) # (!GLOBAL(\rtl~0clkctrl_outclk\) & (\RAM_U0|ram~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_U0|ram~10_combout\,
	datac => \D[2]~input_o\,
	datad => \rtl~0clkctrl_outclk\,
	combout => \RAM_U0|ram~10_combout\);

-- Location: LCCOMB_X26_Y36_N22
\RAM_U0|ram~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~45_combout\ = (\RAM_U0|ram~44_combout\ & ((\RAM_U0|ram~14_combout\) # ((!\MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\)))) # (!\RAM_U0|ram~44_combout\ & (((\MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & 
-- \RAM_U0|ram~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_U0|ram~44_combout\,
	datab => \RAM_U0|ram~14_combout\,
	datac => \MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datad => \RAM_U0|ram~10_combout\,
	combout => \RAM_U0|ram~45_combout\);

-- Location: LCCOMB_X25_Y36_N12
\RAM_U0|ram~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~30_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & ((\D[2]~input_o\))) # (!GLOBAL(\rtl~7clkctrl_outclk\) & (\RAM_U0|ram~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_U0|ram~30_combout\,
	datac => \D[2]~input_o\,
	datad => \rtl~7clkctrl_outclk\,
	combout => \RAM_U0|ram~30_combout\);

-- Location: LCCOMB_X25_Y36_N6
\RAM_U0|ram~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~26_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\D[2]~input_o\)) # (!GLOBAL(\rtl~5clkctrl_outclk\) & ((\RAM_U0|ram~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[2]~input_o\,
	datac => \rtl~5clkctrl_outclk\,
	datad => \RAM_U0|ram~26_combout\,
	combout => \RAM_U0|ram~26_combout\);

-- Location: LCCOMB_X26_Y36_N12
\RAM_U0|ram~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~18_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\D[2]~input_o\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\RAM_U0|ram~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[2]~input_o\,
	datac => \rtl~6clkctrl_outclk\,
	datad => \RAM_U0|ram~18_combout\,
	combout => \RAM_U0|ram~18_combout\);

-- Location: LCCOMB_X25_Y36_N8
\RAM_U0|ram~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~42_combout\ = (\MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & ((\RAM_U0|ram~26_combout\) # ((\MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\)))) # (!\MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & 
-- (((\RAM_U0|ram~18_combout\ & !\MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_U0|ram~26_combout\,
	datab => \MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datac => \RAM_U0|ram~18_combout\,
	datad => \MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	combout => \RAM_U0|ram~42_combout\);

-- Location: LCCOMB_X25_Y36_N24
\RAM_U0|ram~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~22_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\D[2]~input_o\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\RAM_U0|ram~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[2]~input_o\,
	datac => \rtl~4clkctrl_outclk\,
	datad => \RAM_U0|ram~22_combout\,
	combout => \RAM_U0|ram~22_combout\);

-- Location: LCCOMB_X25_Y36_N22
\RAM_U0|ram~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~43_combout\ = (\MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & ((\RAM_U0|ram~42_combout\ & (\RAM_U0|ram~30_combout\)) # (!\RAM_U0|ram~42_combout\ & ((\RAM_U0|ram~22_combout\))))) # 
-- (!\MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (((\RAM_U0|ram~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_U0|ram~30_combout\,
	datab => \MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datac => \RAM_U0|ram~42_combout\,
	datad => \RAM_U0|ram~22_combout\,
	combout => \RAM_U0|ram~43_combout\);

-- Location: LCCOMB_X25_Y36_N28
\RAM_U0|ram~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~46_combout\ = (\MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & ((\RAM_U0|ram~43_combout\))) # (!\MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & (\RAM_U0|ram~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_U0|ram~45_combout\,
	datac => \RAM_U0|ram~43_combout\,
	datad => \MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\,
	combout => \RAM_U0|ram~46_combout\);

-- Location: IOIBUF_X34_Y39_N22
\D[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

-- Location: LCCOMB_X31_Y36_N28
\RAM_U0|ram~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~15_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\D[3]~input_o\)) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\RAM_U0|ram~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[3]~input_o\,
	datac => \rtl~3clkctrl_outclk\,
	datad => \RAM_U0|ram~15_combout\,
	combout => \RAM_U0|ram~15_combout\);

-- Location: LCCOMB_X31_Y36_N30
\RAM_U0|ram~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~11_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\D[3]~input_o\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\RAM_U0|ram~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[3]~input_o\,
	datac => \RAM_U0|ram~11_combout\,
	datad => \rtl~0clkctrl_outclk\,
	combout => \RAM_U0|ram~11_combout\);

-- Location: LCCOMB_X31_Y35_N10
\RAM_U0|ram~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~7_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\D[3]~input_o\)) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\RAM_U0|ram~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[3]~input_o\,
	datac => \rtl~1clkctrl_outclk\,
	datad => \RAM_U0|ram~7_combout\,
	combout => \RAM_U0|ram~7_combout\);

-- Location: LCCOMB_X31_Y35_N20
\RAM_U0|ram~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~3_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\D[3]~input_o\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\RAM_U0|ram~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[3]~input_o\,
	datac => \rtl~2clkctrl_outclk\,
	datad => \RAM_U0|ram~3_combout\,
	combout => \RAM_U0|ram~3_combout\);

-- Location: LCCOMB_X31_Y35_N12
\RAM_U0|ram~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~49_combout\ = (\MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (((\MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\)))) # (!\MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & 
-- ((\MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (\RAM_U0|ram~7_combout\)) # (!\MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & ((\RAM_U0|ram~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_U0|ram~7_combout\,
	datab => \RAM_U0|ram~3_combout\,
	datac => \MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datad => \MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	combout => \RAM_U0|ram~49_combout\);

-- Location: LCCOMB_X31_Y35_N6
\RAM_U0|ram~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~50_combout\ = (\MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & ((\RAM_U0|ram~49_combout\ & (\RAM_U0|ram~15_combout\)) # (!\RAM_U0|ram~49_combout\ & ((\RAM_U0|ram~11_combout\))))) # 
-- (!\MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (((\RAM_U0|ram~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_U0|ram~15_combout\,
	datab => \RAM_U0|ram~11_combout\,
	datac => \MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datad => \RAM_U0|ram~49_combout\,
	combout => \RAM_U0|ram~50_combout\);

-- Location: LCCOMB_X32_Y36_N12
\RAM_U0|ram~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~23_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\D[3]~input_o\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\RAM_U0|ram~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[3]~input_o\,
	datac => \rtl~4clkctrl_outclk\,
	datad => \RAM_U0|ram~23_combout\,
	combout => \RAM_U0|ram~23_combout\);

-- Location: LCCOMB_X32_Y36_N14
\RAM_U0|ram~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~19_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\D[3]~input_o\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\RAM_U0|ram~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[3]~input_o\,
	datac => \RAM_U0|ram~19_combout\,
	datad => \rtl~6clkctrl_outclk\,
	combout => \RAM_U0|ram~19_combout\);

-- Location: LCCOMB_X31_Y36_N12
\RAM_U0|ram~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~27_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\D[3]~input_o\)) # (!GLOBAL(\rtl~5clkctrl_outclk\) & ((\RAM_U0|ram~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[3]~input_o\,
	datac => \rtl~5clkctrl_outclk\,
	datad => \RAM_U0|ram~27_combout\,
	combout => \RAM_U0|ram~27_combout\);

-- Location: LCCOMB_X31_Y35_N28
\RAM_U0|ram~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~47_combout\ = (\MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & ((\MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\) # ((\RAM_U0|ram~27_combout\)))) # (!\MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & 
-- (!\MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (\RAM_U0|ram~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datab => \MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datac => \RAM_U0|ram~19_combout\,
	datad => \RAM_U0|ram~27_combout\,
	combout => \RAM_U0|ram~47_combout\);

-- Location: LCCOMB_X32_Y36_N28
\RAM_U0|ram~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~31_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\D[3]~input_o\)) # (!GLOBAL(\rtl~7clkctrl_outclk\) & ((\RAM_U0|ram~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[3]~input_o\,
	datac => \rtl~7clkctrl_outclk\,
	datad => \RAM_U0|ram~31_combout\,
	combout => \RAM_U0|ram~31_combout\);

-- Location: LCCOMB_X31_Y35_N18
\RAM_U0|ram~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~48_combout\ = (\RAM_U0|ram~47_combout\ & (((\RAM_U0|ram~31_combout\) # (!\MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\)))) # (!\RAM_U0|ram~47_combout\ & (\RAM_U0|ram~23_combout\ & 
-- ((\MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_U0|ram~23_combout\,
	datab => \RAM_U0|ram~47_combout\,
	datac => \RAM_U0|ram~31_combout\,
	datad => \MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	combout => \RAM_U0|ram~48_combout\);

-- Location: LCCOMB_X31_Y35_N8
\RAM_U0|ram~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM_U0|ram~51_combout\ = (\MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & ((\RAM_U0|ram~48_combout\))) # (!\MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & (\RAM_U0|ram~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_U0|ram~50_combout\,
	datac => \MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\,
	datad => \RAM_U0|ram~48_combout\,
	combout => \RAM_U0|ram~51_combout\);

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

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;

ww_Wreg <= \Wreg~output_o\;

ww_DAC <= \DAC~output_o\;
END structure;


