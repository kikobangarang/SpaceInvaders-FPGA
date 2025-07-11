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

-- DATE "05/16/2024 18:34:00"

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

ENTITY 	KeyDecode IS
    PORT (
	Reset : IN std_logic;
	CLK : IN std_logic;
	Line : IN std_logic_vector(3 DOWNTO 0);
	Kack : IN std_logic;
	Col : BUFFER std_logic_vector(2 DOWNTO 0);
	Kval : BUFFER std_logic;
	K : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END KeyDecode;

-- Design Ports Information
-- Col[0]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Col[1]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Col[2]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Kval	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K[0]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K[1]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K[2]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K[3]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Kack	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Line[1]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Line[0]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Line[3]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Line[2]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF KeyDecode IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Line : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Kack : std_logic;
SIGNAL ww_Col : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Kval : std_logic;
SIGNAL ww_K : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Col[0]~output_o\ : std_logic;
SIGNAL \Col[1]~output_o\ : std_logic;
SIGNAL \Col[2]~output_o\ : std_logic;
SIGNAL \Kval~output_o\ : std_logic;
SIGNAL \K[0]~output_o\ : std_logic;
SIGNAL \K[1]~output_o\ : std_logic;
SIGNAL \K[2]~output_o\ : std_logic;
SIGNAL \K[3]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Line[2]~input_o\ : std_logic;
SIGNAL \Line[3]~input_o\ : std_logic;
SIGNAL \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~0_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\ : std_logic;
SIGNAL \KeyScan_Unit0|KeyScan_Mux_U0|Y~1_combout\ : std_logic;
SIGNAL \Line[1]~input_o\ : std_logic;
SIGNAL \Line[0]~input_o\ : std_logic;
SIGNAL \KeyScan_Unit0|KeyScan_Mux_U0|Y~0_combout\ : std_logic;
SIGNAL \Kack~input_o\ : std_logic;
SIGNAL \KeyControl_Unit0|Selector1~0_combout\ : std_logic;
SIGNAL \KeyControl_Unit0|Selector1~1_combout\ : std_logic;
SIGNAL \KeyControl_Unit0|CurrentState.STATE_SEARCHING~q\ : std_logic;
SIGNAL \KeyControl_Unit0|Selector2~0_combout\ : std_logic;
SIGNAL \KeyControl_Unit0|Selector2~1_combout\ : std_logic;
SIGNAL \KeyControl_Unit0|CurrentState.STATE_WAITING~q\ : std_logic;
SIGNAL \KeyControl_Unit0|Selector0~0_combout\ : std_logic;
SIGNAL \KeyControl_Unit0|Selector0~1_combout\ : std_logic;
SIGNAL \KeyControl_Unit0|CurrentState.STATE_SCANNING~q\ : std_logic;
SIGNAL \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~0_combout\ : std_logic;
SIGNAL \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\ : std_logic;
SIGNAL \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~0_combout\ : std_logic;
SIGNAL \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\ : std_logic;
SIGNAL \KeyScan_Unit0|KeyScan_Cont_U0|Adder_U0|FullAdder_U2|CyOut~0_combout\ : std_logic;
SIGNAL \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~0_combout\ : std_logic;
SIGNAL \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\ : std_logic;
SIGNAL \KeyScan_Unit0|KeyScan_Decoder_U0|Col~0_combout\ : std_logic;
SIGNAL \KeyScan_Unit0|KeyScan_Decoder_U0|Col~1_combout\ : std_logic;
SIGNAL \KeyScan_Unit0|KeyScan_Decoder_U0|Col~2_combout\ : std_logic;
SIGNAL \ALT_INV_Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \KeyScan_Unit0|KeyScan_Decoder_U0|ALT_INV_Col~2_combout\ : std_logic;
SIGNAL \KeyScan_Unit0|KeyScan_Decoder_U0|ALT_INV_Col~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Reset <= Reset;
ww_CLK <= CLK;
ww_Line <= Line;
ww_Kack <= Kack;
Col <= ww_Col;
Kval <= ww_Kval;
K <= ww_K;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_Reset~inputclkctrl_outclk\ <= NOT \Reset~inputclkctrl_outclk\;
\KeyScan_Unit0|KeyScan_Decoder_U0|ALT_INV_Col~2_combout\ <= NOT \KeyScan_Unit0|KeyScan_Decoder_U0|Col~2_combout\;
\KeyScan_Unit0|KeyScan_Decoder_U0|ALT_INV_Col~1_combout\ <= NOT \KeyScan_Unit0|KeyScan_Decoder_U0|Col~1_combout\;
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

-- Location: IOOBUF_X24_Y39_N2
\Col[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \KeyScan_Unit0|KeyScan_Decoder_U0|Col~0_combout\,
	devoe => ww_devoe,
	o => \Col[0]~output_o\);

-- Location: IOOBUF_X24_Y39_N23
\Col[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \KeyScan_Unit0|KeyScan_Decoder_U0|ALT_INV_Col~1_combout\,
	devoe => ww_devoe,
	o => \Col[1]~output_o\);

-- Location: IOOBUF_X22_Y39_N16
\Col[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \KeyScan_Unit0|KeyScan_Decoder_U0|ALT_INV_Col~2_combout\,
	devoe => ww_devoe,
	o => \Col[2]~output_o\);

-- Location: IOOBUF_X24_Y39_N30
\Kval~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \KeyControl_Unit0|CurrentState.STATE_SEARCHING~q\,
	devoe => ww_devoe,
	o => \Kval~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\K[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\,
	devoe => ww_devoe,
	o => \K[0]~output_o\);

-- Location: IOOBUF_X26_Y39_N30
\K[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\,
	devoe => ww_devoe,
	o => \K[1]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\K[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\,
	devoe => ww_devoe,
	o => \K[2]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\K[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\,
	devoe => ww_devoe,
	o => \K[3]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G3
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X26_Y39_N15
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

-- Location: IOIBUF_X22_Y39_N29
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

-- Location: LCCOMB_X25_Y35_N2
\KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~0_combout\ = \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\ $ (((\KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\ & !\KeyControl_Unit0|CurrentState.STATE_SCANNING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\,
	datac => \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\,
	datad => \KeyControl_Unit0|CurrentState.STATE_SCANNING~q\,
	combout => \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~0_combout\);

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

-- Location: CLKCTRL_G4
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

-- Location: FF_X25_Y35_N3
\KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\);

-- Location: LCCOMB_X25_Y35_N8
\KeyScan_Unit0|KeyScan_Mux_U0|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KeyScan_Unit0|KeyScan_Mux_U0|Y~1_combout\ = (\KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\ & ((\KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\ & ((\Line[3]~input_o\))) # (!\KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\ & (\Line[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Line[2]~input_o\,
	datab => \Line[3]~input_o\,
	datac => \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\,
	datad => \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\,
	combout => \KeyScan_Unit0|KeyScan_Mux_U0|Y~1_combout\);

-- Location: IOIBUF_X26_Y39_N8
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

-- Location: IOIBUF_X22_Y39_N22
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

-- Location: LCCOMB_X25_Y35_N30
\KeyScan_Unit0|KeyScan_Mux_U0|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KeyScan_Unit0|KeyScan_Mux_U0|Y~0_combout\ = (!\KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\ & ((\KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\ & (\Line[1]~input_o\)) # (!\KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\ & ((\Line[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Line[1]~input_o\,
	datab => \Line[0]~input_o\,
	datac => \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\,
	datad => \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\,
	combout => \KeyScan_Unit0|KeyScan_Mux_U0|Y~0_combout\);

-- Location: IOIBUF_X26_Y39_N1
\Kack~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Kack,
	o => \Kack~input_o\);

-- Location: LCCOMB_X25_Y35_N24
\KeyControl_Unit0|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KeyControl_Unit0|Selector1~0_combout\ = (!\Kack~input_o\ & \KeyControl_Unit0|CurrentState.STATE_SEARCHING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Kack~input_o\,
	datad => \KeyControl_Unit0|CurrentState.STATE_SEARCHING~q\,
	combout => \KeyControl_Unit0|Selector1~0_combout\);

-- Location: LCCOMB_X25_Y35_N6
\KeyControl_Unit0|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KeyControl_Unit0|Selector1~1_combout\ = (\KeyControl_Unit0|Selector1~0_combout\) # ((!\KeyControl_Unit0|CurrentState.STATE_SCANNING~q\ & (!\KeyScan_Unit0|KeyScan_Mux_U0|Y~1_combout\ & !\KeyScan_Unit0|KeyScan_Mux_U0|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KeyControl_Unit0|CurrentState.STATE_SCANNING~q\,
	datab => \KeyScan_Unit0|KeyScan_Mux_U0|Y~1_combout\,
	datac => \KeyScan_Unit0|KeyScan_Mux_U0|Y~0_combout\,
	datad => \KeyControl_Unit0|Selector1~0_combout\,
	combout => \KeyControl_Unit0|Selector1~1_combout\);

-- Location: FF_X25_Y35_N7
\KeyControl_Unit0|CurrentState.STATE_SEARCHING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KeyControl_Unit0|Selector1~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KeyControl_Unit0|CurrentState.STATE_SEARCHING~q\);

-- Location: LCCOMB_X25_Y35_N10
\KeyControl_Unit0|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KeyControl_Unit0|Selector2~0_combout\ = (\Kack~input_o\ & ((\KeyControl_Unit0|CurrentState.STATE_WAITING~q\) # (\KeyControl_Unit0|CurrentState.STATE_SEARCHING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Kack~input_o\,
	datac => \KeyControl_Unit0|CurrentState.STATE_WAITING~q\,
	datad => \KeyControl_Unit0|CurrentState.STATE_SEARCHING~q\,
	combout => \KeyControl_Unit0|Selector2~0_combout\);

-- Location: LCCOMB_X25_Y35_N14
\KeyControl_Unit0|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KeyControl_Unit0|Selector2~1_combout\ = (\KeyControl_Unit0|Selector2~0_combout\) # ((!\KeyScan_Unit0|KeyScan_Mux_U0|Y~0_combout\ & (!\KeyScan_Unit0|KeyScan_Mux_U0|Y~1_combout\ & \KeyControl_Unit0|CurrentState.STATE_WAITING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KeyScan_Unit0|KeyScan_Mux_U0|Y~0_combout\,
	datab => \KeyScan_Unit0|KeyScan_Mux_U0|Y~1_combout\,
	datac => \KeyControl_Unit0|CurrentState.STATE_WAITING~q\,
	datad => \KeyControl_Unit0|Selector2~0_combout\,
	combout => \KeyControl_Unit0|Selector2~1_combout\);

-- Location: FF_X25_Y35_N15
\KeyControl_Unit0|CurrentState.STATE_WAITING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KeyControl_Unit0|Selector2~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KeyControl_Unit0|CurrentState.STATE_WAITING~q\);

-- Location: LCCOMB_X25_Y35_N12
\KeyControl_Unit0|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KeyControl_Unit0|Selector0~0_combout\ = ((!\Kack~input_o\ & \KeyControl_Unit0|CurrentState.STATE_WAITING~q\)) # (!\KeyControl_Unit0|CurrentState.STATE_SCANNING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Kack~input_o\,
	datac => \KeyControl_Unit0|CurrentState.STATE_WAITING~q\,
	datad => \KeyControl_Unit0|CurrentState.STATE_SCANNING~q\,
	combout => \KeyControl_Unit0|Selector0~0_combout\);

-- Location: LCCOMB_X25_Y35_N20
\KeyControl_Unit0|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KeyControl_Unit0|Selector0~1_combout\ = ((!\KeyScan_Unit0|KeyScan_Mux_U0|Y~1_combout\ & !\KeyScan_Unit0|KeyScan_Mux_U0|Y~0_combout\)) # (!\KeyControl_Unit0|Selector0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KeyScan_Unit0|KeyScan_Mux_U0|Y~1_combout\,
	datac => \KeyScan_Unit0|KeyScan_Mux_U0|Y~0_combout\,
	datad => \KeyControl_Unit0|Selector0~0_combout\,
	combout => \KeyControl_Unit0|Selector0~1_combout\);

-- Location: FF_X25_Y35_N21
\KeyControl_Unit0|CurrentState.STATE_SCANNING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KeyControl_Unit0|Selector0~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KeyControl_Unit0|CurrentState.STATE_SCANNING~q\);

-- Location: LCCOMB_X25_Y35_N0
\KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~0_combout\ = \KeyControl_Unit0|CurrentState.STATE_SCANNING~q\ $ (!\KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KeyControl_Unit0|CurrentState.STATE_SCANNING~q\,
	datac => \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\,
	combout => \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~0_combout\);

-- Location: FF_X25_Y35_N1
\KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\);

-- Location: LCCOMB_X25_Y35_N26
\KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~0_combout\ = \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\ $ (((!\KeyControl_Unit0|CurrentState.STATE_SCANNING~q\ & (\KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\ & 
-- \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KeyControl_Unit0|CurrentState.STATE_SCANNING~q\,
	datab => \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\,
	datac => \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\,
	datad => \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\,
	combout => \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~0_combout\);

-- Location: FF_X25_Y35_N27
\KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\);

-- Location: LCCOMB_X25_Y35_N18
\KeyScan_Unit0|KeyScan_Cont_U0|Adder_U0|FullAdder_U2|CyOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KeyScan_Unit0|KeyScan_Cont_U0|Adder_U0|FullAdder_U2|CyOut~0_combout\ = (\KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\ & (!\KeyControl_Unit0|CurrentState.STATE_SCANNING~q\ & (\KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\ & 
-- \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\,
	datab => \KeyControl_Unit0|CurrentState.STATE_SCANNING~q\,
	datac => \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\,
	datad => \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\,
	combout => \KeyScan_Unit0|KeyScan_Cont_U0|Adder_U0|FullAdder_U2|CyOut~0_combout\);

-- Location: LCCOMB_X25_Y35_N16
\KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~0_combout\ = \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\ $ (\KeyScan_Unit0|KeyScan_Cont_U0|Adder_U0|FullAdder_U2|CyOut~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\,
	datad => \KeyScan_Unit0|KeyScan_Cont_U0|Adder_U0|FullAdder_U2|CyOut~0_combout\,
	combout => \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~0_combout\);

-- Location: FF_X25_Y35_N17
\KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\);

-- Location: LCCOMB_X25_Y35_N4
\KeyScan_Unit0|KeyScan_Decoder_U0|Col~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KeyScan_Unit0|KeyScan_Decoder_U0|Col~0_combout\ = (\KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\) # (\KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\,
	datad => \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\,
	combout => \KeyScan_Unit0|KeyScan_Decoder_U0|Col~0_combout\);

-- Location: LCCOMB_X25_Y35_N22
\KeyScan_Unit0|KeyScan_Decoder_U0|Col~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KeyScan_Unit0|KeyScan_Decoder_U0|Col~1_combout\ = (!\KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\ & \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\,
	datad => \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\,
	combout => \KeyScan_Unit0|KeyScan_Decoder_U0|Col~1_combout\);

-- Location: LCCOMB_X25_Y35_N28
\KeyScan_Unit0|KeyScan_Decoder_U0|Col~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KeyScan_Unit0|KeyScan_Decoder_U0|Col~2_combout\ = (\KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\ & !\KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\,
	datad => \KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\,
	combout => \KeyScan_Unit0|KeyScan_Decoder_U0|Col~2_combout\);

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

ww_Col(0) <= \Col[0]~output_o\;

ww_Col(1) <= \Col[1]~output_o\;

ww_Col(2) <= \Col[2]~output_o\;

ww_Kval <= \Kval~output_o\;

ww_K(0) <= \K[0]~output_o\;

ww_K(1) <= \K[1]~output_o\;

ww_K(2) <= \K[2]~output_o\;

ww_K(3) <= \K[3]~output_o\;
END structure;


