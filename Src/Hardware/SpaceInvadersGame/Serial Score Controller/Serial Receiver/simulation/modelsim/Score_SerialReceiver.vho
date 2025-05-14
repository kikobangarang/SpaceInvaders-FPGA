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

-- DATE "05/23/2024 01:38:50"

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

ENTITY 	Score_SerialReceiver IS
    PORT (
	SDX : IN std_logic;
	SCLK : IN std_logic;
	SS : IN std_logic;
	accept : IN std_logic;
	Reset : IN std_logic;
	clk : IN std_logic;
	D : OUT std_logic_vector(6 DOWNTO 0);
	DXval : OUT std_logic
	);
END Score_SerialReceiver;

-- Design Ports Information
-- D[0]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[4]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[5]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[6]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DXval	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDX	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accept	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SS	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Score_SerialReceiver IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SDX : std_logic;
SIGNAL ww_SCLK : std_logic;
SIGNAL ww_SS : std_logic;
SIGNAL ww_accept : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DXval : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \D[0]~output_o\ : std_logic;
SIGNAL \D[1]~output_o\ : std_logic;
SIGNAL \D[2]~output_o\ : std_logic;
SIGNAL \D[3]~output_o\ : std_logic;
SIGNAL \D[4]~output_o\ : std_logic;
SIGNAL \D[5]~output_o\ : std_logic;
SIGNAL \D[6]~output_o\ : std_logic;
SIGNAL \DXval~output_o\ : std_logic;
SIGNAL \SCLK~input_o\ : std_logic;
SIGNAL \SCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \SDX~input_o\ : std_logic;
SIGNAL \Score_SerialReceiver_ShiftRegister_U0|FFD0|Q~feeder_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~0_combout\ : std_logic;
SIGNAL \ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~0_combout\ : std_logic;
SIGNAL \ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~q\ : std_logic;
SIGNAL \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~0_combout\ : std_logic;
SIGNAL \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\ : std_logic;
SIGNAL \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~0_combout\ : std_logic;
SIGNAL \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~q\ : std_logic;
SIGNAL \Compare8_U0|R~0_combout\ : std_logic;
SIGNAL \SerialControl_U0|Selector2~1_combout\ : std_logic;
SIGNAL \SerialControl_U0|CurrentState.STATE_ERRORCHECK~q\ : std_logic;
SIGNAL \SS~input_o\ : std_logic;
SIGNAL \accept~input_o\ : std_logic;
SIGNAL \SerialControl_U0|Selector3~0_combout\ : std_logic;
SIGNAL \SerialControl_U0|Selector3~1_combout\ : std_logic;
SIGNAL \SerialControl_U0|CurrentState.STATE_WAITINGACCEPT~q\ : std_logic;
SIGNAL \SerialControl_U0|Selector0~0_combout\ : std_logic;
SIGNAL \SerialControl_U0|Selector0~1_combout\ : std_logic;
SIGNAL \SerialControl_U0|CurrentState.STATE_INIT~q\ : std_logic;
SIGNAL \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\ : std_logic;
SIGNAL \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~0_combout\ : std_logic;
SIGNAL \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\ : std_logic;
SIGNAL \SerialControl_U0|Selector2~0_combout\ : std_logic;
SIGNAL \SerialControl_U0|Selector1~0_combout\ : std_logic;
SIGNAL \SerialControl_U0|Selector1~1_combout\ : std_logic;
SIGNAL \SerialControl_U0|CurrentState.STATE_WRITING~feeder_combout\ : std_logic;
SIGNAL \SerialControl_U0|CurrentState.STATE_WRITING~q\ : std_logic;
SIGNAL \Score_SerialReceiver_ShiftRegister_U0|FFD0|Q~q\ : std_logic;
SIGNAL \Score_SerialReceiver_ShiftRegister_U0|FFD1|Q~feeder_combout\ : std_logic;
SIGNAL \Score_SerialReceiver_ShiftRegister_U0|FFD1|Q~q\ : std_logic;
SIGNAL \Score_SerialReceiver_ShiftRegister_U0|FFD2|Q~feeder_combout\ : std_logic;
SIGNAL \Score_SerialReceiver_ShiftRegister_U0|FFD2|Q~q\ : std_logic;
SIGNAL \Score_SerialReceiver_ShiftRegister_U0|FFD3|Q~feeder_combout\ : std_logic;
SIGNAL \Score_SerialReceiver_ShiftRegister_U0|FFD3|Q~q\ : std_logic;
SIGNAL \Score_SerialReceiver_ShiftRegister_U0|FFD4|Q~feeder_combout\ : std_logic;
SIGNAL \Score_SerialReceiver_ShiftRegister_U0|FFD4|Q~q\ : std_logic;
SIGNAL \Score_SerialReceiver_ShiftRegister_U0|FFD5|Q~feeder_combout\ : std_logic;
SIGNAL \Score_SerialReceiver_ShiftRegister_U0|FFD5|Q~q\ : std_logic;
SIGNAL \Score_SerialReceiver_ShiftRegister_U0|FFD6|Q~feeder_combout\ : std_logic;
SIGNAL \Score_SerialReceiver_ShiftRegister_U0|FFD6|Q~q\ : std_logic;
SIGNAL \ALT_INV_Reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SDX <= SDX;
ww_SCLK <= SCLK;
ww_SS <= SS;
ww_accept <= accept;
ww_Reset <= Reset;
ww_clk <= clk;
D <= ww_D;
DXval <= ww_DXval;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\SCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SCLK~input_o\);
\ALT_INV_Reset~inputclkctrl_outclk\ <= NOT \Reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
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

-- Location: IOOBUF_X16_Y0_N23
\D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score_SerialReceiver_ShiftRegister_U0|FFD6|Q~q\,
	devoe => ww_devoe,
	o => \D[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score_SerialReceiver_ShiftRegister_U0|FFD5|Q~q\,
	devoe => ww_devoe,
	o => \D[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score_SerialReceiver_ShiftRegister_U0|FFD4|Q~q\,
	devoe => ww_devoe,
	o => \D[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score_SerialReceiver_ShiftRegister_U0|FFD3|Q~q\,
	devoe => ww_devoe,
	o => \D[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\D[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score_SerialReceiver_ShiftRegister_U0|FFD2|Q~q\,
	devoe => ww_devoe,
	o => \D[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\D[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score_SerialReceiver_ShiftRegister_U0|FFD1|Q~q\,
	devoe => ww_devoe,
	o => \D[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\D[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score_SerialReceiver_ShiftRegister_U0|FFD0|Q~q\,
	devoe => ww_devoe,
	o => \D[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\DXval~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SerialControl_U0|CurrentState.STATE_WAITINGACCEPT~q\,
	devoe => ww_devoe,
	o => \DXval~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\SCLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SCLK,
	o => \SCLK~input_o\);

-- Location: CLKCTRL_G3
\SCLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SCLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SCLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X18_Y0_N8
\SDX~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SDX,
	o => \SDX~input_o\);

-- Location: LCCOMB_X16_Y1_N16
\Score_SerialReceiver_ShiftRegister_U0|FFD0|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score_SerialReceiver_ShiftRegister_U0|FFD0|Q~feeder_combout\ = \SDX~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SDX~input_o\,
	combout => \Score_SerialReceiver_ShiftRegister_U0|FFD0|Q~feeder_combout\);

-- Location: IOIBUF_X0_Y23_N15
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

-- Location: CLKCTRL_G2
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

-- Location: IOIBUF_X0_Y18_N22
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

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X17_Y1_N20
\Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~0_combout\ = !\Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\,
	combout => \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~0_combout\);

-- Location: LCCOMB_X17_Y1_N16
\ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~0_combout\ = \ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~q\ $ (\SDX~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~q\,
	datad => \SDX~input_o\,
	combout => \ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~0_combout\);

-- Location: FF_X17_Y1_N17
\ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~0_combout\,
	clrn => \SerialControl_U0|CurrentState.STATE_INIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~q\);

-- Location: LCCOMB_X17_Y1_N4
\Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~0_combout\ = \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\ $ (((\Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\ & \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\,
	datab => \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\,
	datac => \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\,
	combout => \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~0_combout\);

-- Location: FF_X17_Y1_N5
\Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~0_combout\,
	clrn => \SerialControl_U0|CurrentState.STATE_INIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\);

-- Location: LCCOMB_X17_Y1_N26
\Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~0_combout\ = \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~q\ $ (((\Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\ & (\Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\ & 
-- \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\,
	datab => \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\,
	datac => \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~q\,
	datad => \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\,
	combout => \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~0_combout\);

-- Location: FF_X17_Y1_N27
\Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~0_combout\,
	clrn => \SerialControl_U0|CurrentState.STATE_INIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~q\);

-- Location: LCCOMB_X17_Y1_N14
\Compare8_U0|R~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Compare8_U0|R~0_combout\ = (\Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~q\ & (!\Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\ & (!\Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\ & !\Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~q\,
	datab => \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\,
	datac => \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\,
	datad => \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\,
	combout => \Compare8_U0|R~0_combout\);

-- Location: LCCOMB_X17_Y1_N8
\SerialControl_U0|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SerialControl_U0|Selector2~1_combout\ = (\SerialControl_U0|CurrentState.STATE_WRITING~q\ & ((\SerialControl_U0|Selector2~0_combout\) # ((!\Compare8_U0|R~0_combout\ & \SerialControl_U0|CurrentState.STATE_ERRORCHECK~q\)))) # 
-- (!\SerialControl_U0|CurrentState.STATE_WRITING~q\ & (!\Compare8_U0|R~0_combout\ & (\SerialControl_U0|CurrentState.STATE_ERRORCHECK~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SerialControl_U0|CurrentState.STATE_WRITING~q\,
	datab => \Compare8_U0|R~0_combout\,
	datac => \SerialControl_U0|CurrentState.STATE_ERRORCHECK~q\,
	datad => \SerialControl_U0|Selector2~0_combout\,
	combout => \SerialControl_U0|Selector2~1_combout\);

-- Location: FF_X17_Y1_N9
\SerialControl_U0|CurrentState.STATE_ERRORCHECK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SerialControl_U0|Selector2~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SerialControl_U0|CurrentState.STATE_ERRORCHECK~q\);

-- Location: IOIBUF_X18_Y0_N29
\SS~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SS,
	o => \SS~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\accept~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_accept,
	o => \accept~input_o\);

-- Location: LCCOMB_X17_Y1_N6
\SerialControl_U0|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SerialControl_U0|Selector3~0_combout\ = (!\accept~input_o\ & \SerialControl_U0|CurrentState.STATE_WAITINGACCEPT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \accept~input_o\,
	datad => \SerialControl_U0|CurrentState.STATE_WAITINGACCEPT~q\,
	combout => \SerialControl_U0|Selector3~0_combout\);

-- Location: LCCOMB_X17_Y1_N24
\SerialControl_U0|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SerialControl_U0|Selector3~1_combout\ = (\SerialControl_U0|Selector3~0_combout\) # ((!\ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~q\ & (\SerialControl_U0|CurrentState.STATE_ERRORCHECK~q\ & 
-- \Compare8_U0|R~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~q\,
	datab => \SerialControl_U0|CurrentState.STATE_ERRORCHECK~q\,
	datac => \Compare8_U0|R~0_combout\,
	datad => \SerialControl_U0|Selector3~0_combout\,
	combout => \SerialControl_U0|Selector3~1_combout\);

-- Location: FF_X17_Y1_N25
\SerialControl_U0|CurrentState.STATE_WAITINGACCEPT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SerialControl_U0|Selector3~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SerialControl_U0|CurrentState.STATE_WAITINGACCEPT~q\);

-- Location: LCCOMB_X17_Y1_N12
\SerialControl_U0|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SerialControl_U0|Selector0~0_combout\ = (\accept~input_o\ & (((\SerialControl_U0|CurrentState.STATE_WAITINGACCEPT~q\) # (!\SerialControl_U0|CurrentState.STATE_INIT~q\)))) # (!\accept~input_o\ & (!\SS~input_o\ & 
-- (!\SerialControl_U0|CurrentState.STATE_INIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS~input_o\,
	datab => \accept~input_o\,
	datac => \SerialControl_U0|CurrentState.STATE_INIT~q\,
	datad => \SerialControl_U0|CurrentState.STATE_WAITINGACCEPT~q\,
	combout => \SerialControl_U0|Selector0~0_combout\);

-- Location: LCCOMB_X17_Y1_N22
\SerialControl_U0|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SerialControl_U0|Selector0~1_combout\ = (!\SerialControl_U0|Selector0~0_combout\ & (((!\SerialControl_U0|CurrentState.STATE_ERRORCHECK~q\) # (!\Compare8_U0|R~0_combout\)) # 
-- (!\ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~q\,
	datab => \Compare8_U0|R~0_combout\,
	datac => \SerialControl_U0|CurrentState.STATE_ERRORCHECK~q\,
	datad => \SerialControl_U0|Selector0~0_combout\,
	combout => \SerialControl_U0|Selector0~1_combout\);

-- Location: FF_X17_Y1_N23
\SerialControl_U0|CurrentState.STATE_INIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SerialControl_U0|Selector0~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SerialControl_U0|CurrentState.STATE_INIT~q\);

-- Location: FF_X17_Y1_N21
\Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~0_combout\,
	clrn => \SerialControl_U0|CurrentState.STATE_INIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\);

-- Location: LCCOMB_X17_Y1_N30
\Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~0_combout\ = \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\ $ (\Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\,
	datad => \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\,
	combout => \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~0_combout\);

-- Location: FF_X17_Y1_N31
\Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~0_combout\,
	clrn => \SerialControl_U0|CurrentState.STATE_INIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\);

-- Location: LCCOMB_X17_Y1_N10
\SerialControl_U0|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SerialControl_U0|Selector2~0_combout\ = (\Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\ & (\Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\ & (!\Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~q\ & 
-- \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\,
	datab => \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\,
	datac => \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~q\,
	datad => \Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\,
	combout => \SerialControl_U0|Selector2~0_combout\);

-- Location: LCCOMB_X17_Y1_N28
\SerialControl_U0|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SerialControl_U0|Selector1~0_combout\ = (\SS~input_o\ & (!\accept~input_o\ & !\SerialControl_U0|CurrentState.STATE_INIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS~input_o\,
	datab => \accept~input_o\,
	datac => \SerialControl_U0|CurrentState.STATE_INIT~q\,
	combout => \SerialControl_U0|Selector1~0_combout\);

-- Location: LCCOMB_X16_Y1_N12
\SerialControl_U0|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SerialControl_U0|Selector1~1_combout\ = (\SerialControl_U0|Selector1~0_combout\) # ((\SerialControl_U0|CurrentState.STATE_WRITING~q\ & !\SerialControl_U0|Selector2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SerialControl_U0|CurrentState.STATE_WRITING~q\,
	datac => \SerialControl_U0|Selector2~0_combout\,
	datad => \SerialControl_U0|Selector1~0_combout\,
	combout => \SerialControl_U0|Selector1~1_combout\);

-- Location: LCCOMB_X16_Y1_N22
\SerialControl_U0|CurrentState.STATE_WRITING~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SerialControl_U0|CurrentState.STATE_WRITING~feeder_combout\ = \SerialControl_U0|Selector1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SerialControl_U0|Selector1~1_combout\,
	combout => \SerialControl_U0|CurrentState.STATE_WRITING~feeder_combout\);

-- Location: FF_X16_Y1_N23
\SerialControl_U0|CurrentState.STATE_WRITING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SerialControl_U0|CurrentState.STATE_WRITING~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SerialControl_U0|CurrentState.STATE_WRITING~q\);

-- Location: FF_X16_Y1_N17
\Score_SerialReceiver_ShiftRegister_U0|FFD0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \Score_SerialReceiver_ShiftRegister_U0|FFD0|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \SerialControl_U0|CurrentState.STATE_WRITING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score_SerialReceiver_ShiftRegister_U0|FFD0|Q~q\);

-- Location: LCCOMB_X16_Y1_N2
\Score_SerialReceiver_ShiftRegister_U0|FFD1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score_SerialReceiver_ShiftRegister_U0|FFD1|Q~feeder_combout\ = \Score_SerialReceiver_ShiftRegister_U0|FFD0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Score_SerialReceiver_ShiftRegister_U0|FFD0|Q~q\,
	combout => \Score_SerialReceiver_ShiftRegister_U0|FFD1|Q~feeder_combout\);

-- Location: FF_X16_Y1_N3
\Score_SerialReceiver_ShiftRegister_U0|FFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \Score_SerialReceiver_ShiftRegister_U0|FFD1|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \SerialControl_U0|CurrentState.STATE_WRITING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score_SerialReceiver_ShiftRegister_U0|FFD1|Q~q\);

-- Location: LCCOMB_X16_Y1_N20
\Score_SerialReceiver_ShiftRegister_U0|FFD2|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score_SerialReceiver_ShiftRegister_U0|FFD2|Q~feeder_combout\ = \Score_SerialReceiver_ShiftRegister_U0|FFD1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Score_SerialReceiver_ShiftRegister_U0|FFD1|Q~q\,
	combout => \Score_SerialReceiver_ShiftRegister_U0|FFD2|Q~feeder_combout\);

-- Location: FF_X16_Y1_N21
\Score_SerialReceiver_ShiftRegister_U0|FFD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \Score_SerialReceiver_ShiftRegister_U0|FFD2|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \SerialControl_U0|CurrentState.STATE_WRITING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score_SerialReceiver_ShiftRegister_U0|FFD2|Q~q\);

-- Location: LCCOMB_X16_Y1_N6
\Score_SerialReceiver_ShiftRegister_U0|FFD3|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score_SerialReceiver_ShiftRegister_U0|FFD3|Q~feeder_combout\ = \Score_SerialReceiver_ShiftRegister_U0|FFD2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Score_SerialReceiver_ShiftRegister_U0|FFD2|Q~q\,
	combout => \Score_SerialReceiver_ShiftRegister_U0|FFD3|Q~feeder_combout\);

-- Location: FF_X16_Y1_N7
\Score_SerialReceiver_ShiftRegister_U0|FFD3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \Score_SerialReceiver_ShiftRegister_U0|FFD3|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \SerialControl_U0|CurrentState.STATE_WRITING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score_SerialReceiver_ShiftRegister_U0|FFD3|Q~q\);

-- Location: LCCOMB_X16_Y1_N24
\Score_SerialReceiver_ShiftRegister_U0|FFD4|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score_SerialReceiver_ShiftRegister_U0|FFD4|Q~feeder_combout\ = \Score_SerialReceiver_ShiftRegister_U0|FFD3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Score_SerialReceiver_ShiftRegister_U0|FFD3|Q~q\,
	combout => \Score_SerialReceiver_ShiftRegister_U0|FFD4|Q~feeder_combout\);

-- Location: FF_X16_Y1_N25
\Score_SerialReceiver_ShiftRegister_U0|FFD4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \Score_SerialReceiver_ShiftRegister_U0|FFD4|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \SerialControl_U0|CurrentState.STATE_WRITING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score_SerialReceiver_ShiftRegister_U0|FFD4|Q~q\);

-- Location: LCCOMB_X16_Y1_N18
\Score_SerialReceiver_ShiftRegister_U0|FFD5|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score_SerialReceiver_ShiftRegister_U0|FFD5|Q~feeder_combout\ = \Score_SerialReceiver_ShiftRegister_U0|FFD4|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Score_SerialReceiver_ShiftRegister_U0|FFD4|Q~q\,
	combout => \Score_SerialReceiver_ShiftRegister_U0|FFD5|Q~feeder_combout\);

-- Location: FF_X16_Y1_N19
\Score_SerialReceiver_ShiftRegister_U0|FFD5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \Score_SerialReceiver_ShiftRegister_U0|FFD5|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \SerialControl_U0|CurrentState.STATE_WRITING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score_SerialReceiver_ShiftRegister_U0|FFD5|Q~q\);

-- Location: LCCOMB_X16_Y1_N28
\Score_SerialReceiver_ShiftRegister_U0|FFD6|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score_SerialReceiver_ShiftRegister_U0|FFD6|Q~feeder_combout\ = \Score_SerialReceiver_ShiftRegister_U0|FFD5|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Score_SerialReceiver_ShiftRegister_U0|FFD5|Q~q\,
	combout => \Score_SerialReceiver_ShiftRegister_U0|FFD6|Q~feeder_combout\);

-- Location: FF_X16_Y1_N29
\Score_SerialReceiver_ShiftRegister_U0|FFD6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \Score_SerialReceiver_ShiftRegister_U0|FFD6|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \SerialControl_U0|CurrentState.STATE_WRITING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score_SerialReceiver_ShiftRegister_U0|FFD6|Q~q\);

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

ww_D(0) <= \D[0]~output_o\;

ww_D(1) <= \D[1]~output_o\;

ww_D(2) <= \D[2]~output_o\;

ww_D(3) <= \D[3]~output_o\;

ww_D(4) <= \D[4]~output_o\;

ww_D(5) <= \D[5]~output_o\;

ww_D(6) <= \D[6]~output_o\;

ww_DXval <= \DXval~output_o\;
END structure;


