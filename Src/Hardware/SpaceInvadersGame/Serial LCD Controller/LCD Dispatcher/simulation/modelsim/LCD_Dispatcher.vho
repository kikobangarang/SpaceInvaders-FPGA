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

-- DATE "05/18/2024 13:25:16"

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

ENTITY 	LCD_Dispatcher IS
    PORT (
	Din : IN std_logic_vector(8 DOWNTO 0);
	Dval : IN std_logic;
	clk : IN std_logic;
	Reset : IN std_logic;
	WrL : OUT std_logic;
	done : OUT std_logic;
	Dout : OUT std_logic_vector(8 DOWNTO 0)
	);
END LCD_Dispatcher;

-- Design Ports Information
-- WrL	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- done	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[1]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[2]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[3]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[4]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[5]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[6]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[7]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[8]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dval	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[2]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[3]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[4]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[5]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[6]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[7]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[8]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LCD_Dispatcher IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Din : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_Dval : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_WrL : std_logic;
SIGNAL ww_done : std_logic;
SIGNAL ww_Dout : std_logic_vector(8 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CurrentState.STATE_DATA~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \WrL~output_o\ : std_logic;
SIGNAL \done~output_o\ : std_logic;
SIGNAL \Dout[0]~output_o\ : std_logic;
SIGNAL \Dout[1]~output_o\ : std_logic;
SIGNAL \Dout[2]~output_o\ : std_logic;
SIGNAL \Dout[3]~output_o\ : std_logic;
SIGNAL \Dout[4]~output_o\ : std_logic;
SIGNAL \Dout[5]~output_o\ : std_logic;
SIGNAL \Dout[6]~output_o\ : std_logic;
SIGNAL \Dout[7]~output_o\ : std_logic;
SIGNAL \Dout[8]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Dval~input_o\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \CurrentState.STATE_WAITING~feeder_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \CurrentState.STATE_WAITING~q\ : std_logic;
SIGNAL \NextState.STATE_DATA~0_combout\ : std_logic;
SIGNAL \CurrentState.STATE_DATA~q\ : std_logic;
SIGNAL \CurrentState.STATE_ENABLE~feeder_combout\ : std_logic;
SIGNAL \CurrentState.STATE_ENABLE~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \CurrentState.STATE_DONE~q\ : std_logic;
SIGNAL \Din[0]~input_o\ : std_logic;
SIGNAL \CurrentState.STATE_DATA~clkctrl_outclk\ : std_logic;
SIGNAL \Dout[0]$latch~combout\ : std_logic;
SIGNAL \Din[1]~input_o\ : std_logic;
SIGNAL \Dout[1]$latch~combout\ : std_logic;
SIGNAL \Din[2]~input_o\ : std_logic;
SIGNAL \Dout[2]$latch~combout\ : std_logic;
SIGNAL \Din[3]~input_o\ : std_logic;
SIGNAL \Dout[3]$latch~combout\ : std_logic;
SIGNAL \Din[4]~input_o\ : std_logic;
SIGNAL \Dout[4]$latch~combout\ : std_logic;
SIGNAL \Din[5]~input_o\ : std_logic;
SIGNAL \Dout[5]$latch~combout\ : std_logic;
SIGNAL \Din[6]~input_o\ : std_logic;
SIGNAL \Dout[6]$latch~combout\ : std_logic;
SIGNAL \Din[7]~input_o\ : std_logic;
SIGNAL \Dout[7]$latch~combout\ : std_logic;
SIGNAL \Din[8]~input_o\ : std_logic;
SIGNAL \Dout[8]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Din <= Din;
ww_Dval <= Dval;
ww_clk <= clk;
ww_Reset <= Reset;
WrL <= ww_WrL;
done <= ww_done;
Dout <= ww_Dout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CurrentState.STATE_DATA~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CurrentState.STATE_DATA~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\Reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset~input_o\);
\ALT_INV_Reset~inputclkctrl_outclk\ <= NOT \Reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N16
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

-- Location: IOOBUF_X46_Y54_N30
\WrL~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CurrentState.STATE_ENABLE~q\,
	devoe => ww_devoe,
	o => \WrL~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\done~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CurrentState.STATE_DONE~q\,
	devoe => ww_devoe,
	o => \done~output_o\);

-- Location: IOOBUF_X51_Y54_N30
\Dout[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[0]$latch~combout\,
	devoe => ww_devoe,
	o => \Dout[0]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\Dout[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[1]$latch~combout\,
	devoe => ww_devoe,
	o => \Dout[1]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\Dout[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[2]$latch~combout\,
	devoe => ww_devoe,
	o => \Dout[2]~output_o\);

-- Location: IOOBUF_X0_Y36_N16
\Dout[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[3]$latch~combout\,
	devoe => ww_devoe,
	o => \Dout[3]~output_o\);

-- Location: IOOBUF_X22_Y39_N30
\Dout[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[4]$latch~combout\,
	devoe => ww_devoe,
	o => \Dout[4]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\Dout[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[5]$latch~combout\,
	devoe => ww_devoe,
	o => \Dout[5]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\Dout[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[6]$latch~combout\,
	devoe => ww_devoe,
	o => \Dout[6]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\Dout[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[7]$latch~combout\,
	devoe => ww_devoe,
	o => \Dout[7]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\Dout[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[8]$latch~combout\,
	devoe => ww_devoe,
	o => \Dout[8]~output_o\);

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

-- Location: IOIBUF_X46_Y54_N22
\Dval~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dval,
	o => \Dval~input_o\);

-- Location: LCCOMB_X45_Y53_N30
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\Dval~input_o\) # ((\CurrentState.STATE_DATA~q\) # (\CurrentState.STATE_ENABLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dval~input_o\,
	datac => \CurrentState.STATE_DATA~q\,
	datad => \CurrentState.STATE_ENABLE~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X45_Y53_N28
\CurrentState.STATE_WAITING~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CurrentState.STATE_WAITING~feeder_combout\ = \Selector0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector0~0_combout\,
	combout => \CurrentState.STATE_WAITING~feeder_combout\);

-- Location: IOIBUF_X0_Y18_N22
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

-- Location: CLKCTRL_G1
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

-- Location: FF_X45_Y53_N29
\CurrentState.STATE_WAITING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CurrentState.STATE_WAITING~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CurrentState.STATE_WAITING~q\);

-- Location: LCCOMB_X45_Y53_N10
\NextState.STATE_DATA~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \NextState.STATE_DATA~0_combout\ = (\Dval~input_o\ & !\CurrentState.STATE_WAITING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dval~input_o\,
	datad => \CurrentState.STATE_WAITING~q\,
	combout => \NextState.STATE_DATA~0_combout\);

-- Location: FF_X45_Y53_N11
\CurrentState.STATE_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \NextState.STATE_DATA~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CurrentState.STATE_DATA~q\);

-- Location: LCCOMB_X45_Y53_N24
\CurrentState.STATE_ENABLE~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CurrentState.STATE_ENABLE~feeder_combout\ = \CurrentState.STATE_DATA~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CurrentState.STATE_DATA~q\,
	combout => \CurrentState.STATE_ENABLE~feeder_combout\);

-- Location: FF_X45_Y53_N25
\CurrentState.STATE_ENABLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CurrentState.STATE_ENABLE~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CurrentState.STATE_ENABLE~q\);

-- Location: LCCOMB_X45_Y53_N22
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\CurrentState.STATE_ENABLE~q\) # ((\Dval~input_o\ & \CurrentState.STATE_DONE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dval~input_o\,
	datac => \CurrentState.STATE_DONE~q\,
	datad => \CurrentState.STATE_ENABLE~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X45_Y53_N23
\CurrentState.STATE_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CurrentState.STATE_DONE~q\);

-- Location: IOIBUF_X51_Y54_N22
\Din[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(0),
	o => \Din[0]~input_o\);

-- Location: CLKCTRL_G12
\CurrentState.STATE_DATA~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CurrentState.STATE_DATA~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CurrentState.STATE_DATA~clkctrl_outclk\);

-- Location: LCCOMB_X51_Y53_N24
\Dout[0]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dout[0]$latch~combout\ = (GLOBAL(\CurrentState.STATE_DATA~clkctrl_outclk\) & (\Din[0]~input_o\)) # (!GLOBAL(\CurrentState.STATE_DATA~clkctrl_outclk\) & ((\Dout[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din[0]~input_o\,
	datab => \Dout[0]$latch~combout\,
	datad => \CurrentState.STATE_DATA~clkctrl_outclk\,
	combout => \Dout[0]$latch~combout\);

-- Location: IOIBUF_X56_Y54_N8
\Din[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(1),
	o => \Din[1]~input_o\);

-- Location: LCCOMB_X56_Y53_N28
\Dout[1]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dout[1]$latch~combout\ = (GLOBAL(\CurrentState.STATE_DATA~clkctrl_outclk\) & (\Din[1]~input_o\)) # (!GLOBAL(\CurrentState.STATE_DATA~clkctrl_outclk\) & ((\Dout[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din[1]~input_o\,
	datab => \Dout[1]$latch~combout\,
	datad => \CurrentState.STATE_DATA~clkctrl_outclk\,
	combout => \Dout[1]$latch~combout\);

-- Location: IOIBUF_X0_Y27_N15
\Din[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(2),
	o => \Din[2]~input_o\);

-- Location: LCCOMB_X1_Y27_N16
\Dout[2]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dout[2]$latch~combout\ = (GLOBAL(\CurrentState.STATE_DATA~clkctrl_outclk\) & (\Din[2]~input_o\)) # (!GLOBAL(\CurrentState.STATE_DATA~clkctrl_outclk\) & ((\Dout[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din[2]~input_o\,
	datac => \CurrentState.STATE_DATA~clkctrl_outclk\,
	datad => \Dout[2]$latch~combout\,
	combout => \Dout[2]$latch~combout\);

-- Location: IOIBUF_X0_Y36_N8
\Din[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(3),
	o => \Din[3]~input_o\);

-- Location: LCCOMB_X1_Y36_N16
\Dout[3]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dout[3]$latch~combout\ = (GLOBAL(\CurrentState.STATE_DATA~clkctrl_outclk\) & (\Din[3]~input_o\)) # (!GLOBAL(\CurrentState.STATE_DATA~clkctrl_outclk\) & ((\Dout[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din[3]~input_o\,
	datac => \CurrentState.STATE_DATA~clkctrl_outclk\,
	datad => \Dout[3]$latch~combout\,
	combout => \Dout[3]$latch~combout\);

-- Location: IOIBUF_X22_Y39_N22
\Din[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(4),
	o => \Din[4]~input_o\);

-- Location: LCCOMB_X22_Y36_N16
\Dout[4]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dout[4]$latch~combout\ = (GLOBAL(\CurrentState.STATE_DATA~clkctrl_outclk\) & (\Din[4]~input_o\)) # (!GLOBAL(\CurrentState.STATE_DATA~clkctrl_outclk\) & ((\Dout[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din[4]~input_o\,
	datac => \CurrentState.STATE_DATA~clkctrl_outclk\,
	datad => \Dout[4]$latch~combout\,
	combout => \Dout[4]$latch~combout\);

-- Location: IOIBUF_X34_Y0_N29
\Din[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(5),
	o => \Din[5]~input_o\);

-- Location: LCCOMB_X34_Y1_N0
\Dout[5]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dout[5]$latch~combout\ = (GLOBAL(\CurrentState.STATE_DATA~clkctrl_outclk\) & (\Din[5]~input_o\)) # (!GLOBAL(\CurrentState.STATE_DATA~clkctrl_outclk\) & ((\Dout[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din[5]~input_o\,
	datac => \CurrentState.STATE_DATA~clkctrl_outclk\,
	datad => \Dout[5]$latch~combout\,
	combout => \Dout[5]$latch~combout\);

-- Location: IOIBUF_X78_Y42_N8
\Din[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(6),
	o => \Din[6]~input_o\);

-- Location: LCCOMB_X77_Y42_N16
\Dout[6]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dout[6]$latch~combout\ = (GLOBAL(\CurrentState.STATE_DATA~clkctrl_outclk\) & (\Din[6]~input_o\)) # (!GLOBAL(\CurrentState.STATE_DATA~clkctrl_outclk\) & ((\Dout[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din[6]~input_o\,
	datac => \CurrentState.STATE_DATA~clkctrl_outclk\,
	datad => \Dout[6]$latch~combout\,
	combout => \Dout[6]$latch~combout\);

-- Location: IOIBUF_X29_Y0_N15
\Din[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(7),
	o => \Din[7]~input_o\);

-- Location: LCCOMB_X29_Y1_N28
\Dout[7]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dout[7]$latch~combout\ = (GLOBAL(\CurrentState.STATE_DATA~clkctrl_outclk\) & (\Din[7]~input_o\)) # (!GLOBAL(\CurrentState.STATE_DATA~clkctrl_outclk\) & ((\Dout[7]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din[7]~input_o\,
	datac => \CurrentState.STATE_DATA~clkctrl_outclk\,
	datad => \Dout[7]$latch~combout\,
	combout => \Dout[7]$latch~combout\);

-- Location: IOIBUF_X0_Y10_N22
\Din[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(8),
	o => \Din[8]~input_o\);

-- Location: LCCOMB_X1_Y10_N16
\Dout[8]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dout[8]$latch~combout\ = (GLOBAL(\CurrentState.STATE_DATA~clkctrl_outclk\) & (\Din[8]~input_o\)) # (!GLOBAL(\CurrentState.STATE_DATA~clkctrl_outclk\) & ((\Dout[8]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din[8]~input_o\,
	datab => \Dout[8]$latch~combout\,
	datad => \CurrentState.STATE_DATA~clkctrl_outclk\,
	combout => \Dout[8]$latch~combout\);

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

ww_WrL <= \WrL~output_o\;

ww_done <= \done~output_o\;

ww_Dout(0) <= \Dout[0]~output_o\;

ww_Dout(1) <= \Dout[1]~output_o\;

ww_Dout(2) <= \Dout[2]~output_o\;

ww_Dout(3) <= \Dout[3]~output_o\;

ww_Dout(4) <= \Dout[4]~output_o\;

ww_Dout(5) <= \Dout[5]~output_o\;

ww_Dout(6) <= \Dout[6]~output_o\;

ww_Dout(7) <= \Dout[7]~output_o\;

ww_Dout(8) <= \Dout[8]~output_o\;
END structure;


