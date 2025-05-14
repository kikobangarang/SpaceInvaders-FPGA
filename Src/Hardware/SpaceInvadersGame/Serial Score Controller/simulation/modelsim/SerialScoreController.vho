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

-- DATE "05/23/2024 01:39:56"

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

ENTITY 	SerialScoreController IS
    PORT (
	SDX : IN std_logic;
	SCLK : IN std_logic;
	SS : IN std_logic;
	Reset : IN std_logic;
	clk : IN std_logic;
	Dout : OUT std_logic_vector(6 DOWNTO 0);
	WrD : OUT std_logic
	);
END SerialScoreController;

-- Design Ports Information
-- Dout[0]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[1]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[2]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[3]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[4]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[5]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[6]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WrD	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDX	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SS	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SerialScoreController IS
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
SIGNAL ww_Reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_Dout : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_WrD : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Dout[0]~output_o\ : std_logic;
SIGNAL \Dout[1]~output_o\ : std_logic;
SIGNAL \Dout[2]~output_o\ : std_logic;
SIGNAL \Dout[3]~output_o\ : std_logic;
SIGNAL \Dout[4]~output_o\ : std_logic;
SIGNAL \Dout[5]~output_o\ : std_logic;
SIGNAL \Dout[6]~output_o\ : std_logic;
SIGNAL \WrD~output_o\ : std_logic;
SIGNAL \SCLK~input_o\ : std_logic;
SIGNAL \SCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \SDX~input_o\ : std_logic;
SIGNAL \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD0|Q~feeder_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \SS~input_o\ : std_logic;
SIGNAL \Score_SerialReceiver_U0|ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~0_combout\ : std_logic;
SIGNAL \Score_SerialReceiver_U0|ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~q\ : std_logic;
SIGNAL \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~0_combout\ : std_logic;
SIGNAL \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\ : std_logic;
SIGNAL \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~0_combout\ : std_logic;
SIGNAL \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\ : std_logic;
SIGNAL \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~0_combout\ : std_logic;
SIGNAL \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\ : std_logic;
SIGNAL \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~0_combout\ : std_logic;
SIGNAL \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~q\ : std_logic;
SIGNAL \Score_SerialReceiver_U0|SerialControl_U0|Selector2~0_combout\ : std_logic;
SIGNAL \Score_SerialReceiver_U0|Compare8_U0|R~0_combout\ : std_logic;
SIGNAL \Score_SerialReceiver_U0|SerialControl_U0|Selector2~1_combout\ : std_logic;
SIGNAL \Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_ERRORCHECK~q\ : std_logic;
SIGNAL \Score_SerialReceiver_U0|SerialControl_U0|Selector3~0_combout\ : std_logic;
SIGNAL \Score_SerialReceiver_U0|SerialControl_U0|Selector3~1_combout\ : std_logic;
SIGNAL \Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WAITINGACCEPT~q\ : std_logic;
SIGNAL \Score_Dispatcher_U0|Selector0~0_combout\ : std_logic;
SIGNAL \Score_Dispatcher_U0|CurrentState.STATE_WAITING~q\ : std_logic;
SIGNAL \Score_Dispatcher_U0|NextState.STATE_DATA~0_combout\ : std_logic;
SIGNAL \Score_Dispatcher_U0|CurrentState.STATE_DATA~q\ : std_logic;
SIGNAL \Score_Dispatcher_U0|CurrentState.STATE_ENABLE~feeder_combout\ : std_logic;
SIGNAL \Score_Dispatcher_U0|CurrentState.STATE_ENABLE~q\ : std_logic;
SIGNAL \Score_Dispatcher_U0|Selector1~0_combout\ : std_logic;
SIGNAL \Score_Dispatcher_U0|CurrentState.STATE_DONE~q\ : std_logic;
SIGNAL \Score_SerialReceiver_U0|SerialControl_U0|Selector0~0_combout\ : std_logic;
SIGNAL \Score_SerialReceiver_U0|SerialControl_U0|Selector0~1_combout\ : std_logic;
SIGNAL \Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_INIT~q\ : std_logic;
SIGNAL \Score_SerialReceiver_U0|SerialControl_U0|Selector1~0_combout\ : std_logic;
SIGNAL \Score_SerialReceiver_U0|SerialControl_U0|Selector1~1_combout\ : std_logic;
SIGNAL \Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~feeder_combout\ : std_logic;
SIGNAL \Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~q\ : std_logic;
SIGNAL \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD0|Q~q\ : std_logic;
SIGNAL \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD1|Q~feeder_combout\ : std_logic;
SIGNAL \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD1|Q~q\ : std_logic;
SIGNAL \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD2|Q~feeder_combout\ : std_logic;
SIGNAL \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD2|Q~q\ : std_logic;
SIGNAL \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD3|Q~feeder_combout\ : std_logic;
SIGNAL \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD3|Q~q\ : std_logic;
SIGNAL \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD4|Q~feeder_combout\ : std_logic;
SIGNAL \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD4|Q~q\ : std_logic;
SIGNAL \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD5|Q~feeder_combout\ : std_logic;
SIGNAL \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD5|Q~q\ : std_logic;
SIGNAL \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD6|Q~q\ : std_logic;
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
ww_Reset <= Reset;
ww_clk <= clk;
Dout <= ww_Dout;
WrD <= ww_WrD;
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

-- Location: IOOBUF_X26_Y39_N9
\Dout[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD6|Q~q\,
	devoe => ww_devoe,
	o => \Dout[0]~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\Dout[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD5|Q~q\,
	devoe => ww_devoe,
	o => \Dout[1]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\Dout[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD4|Q~q\,
	devoe => ww_devoe,
	o => \Dout[2]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\Dout[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD3|Q~q\,
	devoe => ww_devoe,
	o => \Dout[3]~output_o\);

-- Location: IOOBUF_X24_Y39_N23
\Dout[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD2|Q~q\,
	devoe => ww_devoe,
	o => \Dout[4]~output_o\);

-- Location: IOOBUF_X24_Y39_N30
\Dout[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD1|Q~q\,
	devoe => ww_devoe,
	o => \Dout[5]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\Dout[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD0|Q~q\,
	devoe => ww_devoe,
	o => \Dout[6]~output_o\);

-- Location: IOOBUF_X26_Y39_N30
\WrD~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score_Dispatcher_U0|CurrentState.STATE_ENABLE~q\,
	devoe => ww_devoe,
	o => \WrD~output_o\);

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

-- Location: IOIBUF_X26_Y39_N22
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

-- Location: LCCOMB_X25_Y38_N16
\Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD0|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD0|Q~feeder_combout\ = \SDX~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SDX~input_o\,
	combout => \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD0|Q~feeder_combout\);

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

-- Location: IOIBUF_X26_Y39_N15
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

-- Location: LCCOMB_X26_Y38_N20
\Score_SerialReceiver_U0|ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score_SerialReceiver_U0|ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~0_combout\ = 
-- \Score_SerialReceiver_U0|ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~q\ $ (\SDX~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score_SerialReceiver_U0|ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~q\,
	datad => \SDX~input_o\,
	combout => \Score_SerialReceiver_U0|ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~0_combout\);

-- Location: FF_X26_Y38_N21
\Score_SerialReceiver_U0|ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \Score_SerialReceiver_U0|ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~0_combout\,
	clrn => \Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_INIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score_SerialReceiver_U0|ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~q\);

-- Location: LCCOMB_X26_Y38_N6
\Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~0_combout\ = !\Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\,
	combout => \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~0_combout\);

-- Location: FF_X26_Y38_N7
\Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~0_combout\,
	clrn => \Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_INIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\);

-- Location: LCCOMB_X26_Y38_N4
\Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~0_combout\ = \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\ $ (\Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\,
	datad => \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\,
	combout => \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~0_combout\);

-- Location: FF_X26_Y38_N5
\Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~0_combout\,
	clrn => \Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_INIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\);

-- Location: LCCOMB_X26_Y38_N22
\Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~0_combout\ = \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\ $ (((\Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\ & 
-- \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\,
	datac => \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\,
	datad => \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\,
	combout => \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~0_combout\);

-- Location: FF_X26_Y38_N23
\Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~0_combout\,
	clrn => \Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_INIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\);

-- Location: LCCOMB_X26_Y38_N28
\Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~0_combout\ = \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~q\ $ (((\Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\ & 
-- (\Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\ & \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\,
	datab => \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\,
	datac => \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~q\,
	datad => \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\,
	combout => \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~0_combout\);

-- Location: FF_X26_Y38_N29
\Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~0_combout\,
	clrn => \Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_INIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~q\);

-- Location: LCCOMB_X26_Y38_N18
\Score_SerialReceiver_U0|SerialControl_U0|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score_SerialReceiver_U0|SerialControl_U0|Selector2~0_combout\ = (\Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\ & (!\Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~q\ & 
-- (\Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\ & \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\,
	datab => \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~q\,
	datac => \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\,
	datad => \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\,
	combout => \Score_SerialReceiver_U0|SerialControl_U0|Selector2~0_combout\);

-- Location: LCCOMB_X26_Y38_N16
\Score_SerialReceiver_U0|Compare8_U0|R~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score_SerialReceiver_U0|Compare8_U0|R~0_combout\ = (!\Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\ & (\Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~q\ & 
-- (!\Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\ & !\Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\,
	datab => \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~q\,
	datac => \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\,
	datad => \Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\,
	combout => \Score_SerialReceiver_U0|Compare8_U0|R~0_combout\);

-- Location: LCCOMB_X26_Y38_N30
\Score_SerialReceiver_U0|SerialControl_U0|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score_SerialReceiver_U0|SerialControl_U0|Selector2~1_combout\ = (\Score_SerialReceiver_U0|SerialControl_U0|Selector2~0_combout\ & ((\Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~q\) # 
-- ((\Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_ERRORCHECK~q\ & !\Score_SerialReceiver_U0|Compare8_U0|R~0_combout\)))) # (!\Score_SerialReceiver_U0|SerialControl_U0|Selector2~0_combout\ & 
-- (((\Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_ERRORCHECK~q\ & !\Score_SerialReceiver_U0|Compare8_U0|R~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score_SerialReceiver_U0|SerialControl_U0|Selector2~0_combout\,
	datab => \Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~q\,
	datac => \Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_ERRORCHECK~q\,
	datad => \Score_SerialReceiver_U0|Compare8_U0|R~0_combout\,
	combout => \Score_SerialReceiver_U0|SerialControl_U0|Selector2~1_combout\);

-- Location: FF_X26_Y38_N31
\Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_ERRORCHECK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Score_SerialReceiver_U0|SerialControl_U0|Selector2~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_ERRORCHECK~q\);

-- Location: LCCOMB_X26_Y38_N26
\Score_SerialReceiver_U0|SerialControl_U0|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score_SerialReceiver_U0|SerialControl_U0|Selector3~0_combout\ = (\Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WAITINGACCEPT~q\ & !\Score_Dispatcher_U0|CurrentState.STATE_DONE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WAITINGACCEPT~q\,
	datac => \Score_Dispatcher_U0|CurrentState.STATE_DONE~q\,
	combout => \Score_SerialReceiver_U0|SerialControl_U0|Selector3~0_combout\);

-- Location: LCCOMB_X26_Y38_N24
\Score_SerialReceiver_U0|SerialControl_U0|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score_SerialReceiver_U0|SerialControl_U0|Selector3~1_combout\ = (\Score_SerialReceiver_U0|SerialControl_U0|Selector3~0_combout\) # 
-- ((!\Score_SerialReceiver_U0|ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~q\ & (\Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_ERRORCHECK~q\ & 
-- \Score_SerialReceiver_U0|Compare8_U0|R~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score_SerialReceiver_U0|ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~q\,
	datab => \Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_ERRORCHECK~q\,
	datac => \Score_SerialReceiver_U0|SerialControl_U0|Selector3~0_combout\,
	datad => \Score_SerialReceiver_U0|Compare8_U0|R~0_combout\,
	combout => \Score_SerialReceiver_U0|SerialControl_U0|Selector3~1_combout\);

-- Location: FF_X26_Y38_N25
\Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WAITINGACCEPT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Score_SerialReceiver_U0|SerialControl_U0|Selector3~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WAITINGACCEPT~q\);

-- Location: LCCOMB_X25_Y38_N8
\Score_Dispatcher_U0|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score_Dispatcher_U0|Selector0~0_combout\ = (\Score_Dispatcher_U0|CurrentState.STATE_DATA~q\) # ((\Score_Dispatcher_U0|CurrentState.STATE_ENABLE~q\) # (\Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WAITINGACCEPT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score_Dispatcher_U0|CurrentState.STATE_DATA~q\,
	datab => \Score_Dispatcher_U0|CurrentState.STATE_ENABLE~q\,
	datad => \Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WAITINGACCEPT~q\,
	combout => \Score_Dispatcher_U0|Selector0~0_combout\);

-- Location: FF_X25_Y38_N9
\Score_Dispatcher_U0|CurrentState.STATE_WAITING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Score_Dispatcher_U0|Selector0~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score_Dispatcher_U0|CurrentState.STATE_WAITING~q\);

-- Location: LCCOMB_X25_Y38_N10
\Score_Dispatcher_U0|NextState.STATE_DATA~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score_Dispatcher_U0|NextState.STATE_DATA~0_combout\ = (!\Score_Dispatcher_U0|CurrentState.STATE_WAITING~q\ & \Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WAITINGACCEPT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Score_Dispatcher_U0|CurrentState.STATE_WAITING~q\,
	datad => \Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WAITINGACCEPT~q\,
	combout => \Score_Dispatcher_U0|NextState.STATE_DATA~0_combout\);

-- Location: FF_X25_Y38_N11
\Score_Dispatcher_U0|CurrentState.STATE_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Score_Dispatcher_U0|NextState.STATE_DATA~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score_Dispatcher_U0|CurrentState.STATE_DATA~q\);

-- Location: LCCOMB_X25_Y38_N14
\Score_Dispatcher_U0|CurrentState.STATE_ENABLE~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score_Dispatcher_U0|CurrentState.STATE_ENABLE~feeder_combout\ = \Score_Dispatcher_U0|CurrentState.STATE_DATA~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Score_Dispatcher_U0|CurrentState.STATE_DATA~q\,
	combout => \Score_Dispatcher_U0|CurrentState.STATE_ENABLE~feeder_combout\);

-- Location: FF_X25_Y38_N15
\Score_Dispatcher_U0|CurrentState.STATE_ENABLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Score_Dispatcher_U0|CurrentState.STATE_ENABLE~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score_Dispatcher_U0|CurrentState.STATE_ENABLE~q\);

-- Location: LCCOMB_X26_Y38_N10
\Score_Dispatcher_U0|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score_Dispatcher_U0|Selector1~0_combout\ = (\Score_Dispatcher_U0|CurrentState.STATE_ENABLE~q\) # ((\Score_Dispatcher_U0|CurrentState.STATE_DONE~q\ & \Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WAITINGACCEPT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Score_Dispatcher_U0|CurrentState.STATE_ENABLE~q\,
	datac => \Score_Dispatcher_U0|CurrentState.STATE_DONE~q\,
	datad => \Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WAITINGACCEPT~q\,
	combout => \Score_Dispatcher_U0|Selector1~0_combout\);

-- Location: FF_X26_Y38_N11
\Score_Dispatcher_U0|CurrentState.STATE_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Score_Dispatcher_U0|Selector1~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score_Dispatcher_U0|CurrentState.STATE_DONE~q\);

-- Location: LCCOMB_X26_Y38_N14
\Score_SerialReceiver_U0|SerialControl_U0|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score_SerialReceiver_U0|SerialControl_U0|Selector0~0_combout\ = (\Score_Dispatcher_U0|CurrentState.STATE_DONE~q\ & (((\Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WAITINGACCEPT~q\) # 
-- (!\Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_INIT~q\)))) # (!\Score_Dispatcher_U0|CurrentState.STATE_DONE~q\ & (!\SS~input_o\ & ((!\Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_INIT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS~input_o\,
	datab => \Score_Dispatcher_U0|CurrentState.STATE_DONE~q\,
	datac => \Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WAITINGACCEPT~q\,
	datad => \Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_INIT~q\,
	combout => \Score_SerialReceiver_U0|SerialControl_U0|Selector0~0_combout\);

-- Location: LCCOMB_X26_Y38_N8
\Score_SerialReceiver_U0|SerialControl_U0|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score_SerialReceiver_U0|SerialControl_U0|Selector0~1_combout\ = (!\Score_SerialReceiver_U0|SerialControl_U0|Selector0~0_combout\ & (((!\Score_SerialReceiver_U0|Compare8_U0|R~0_combout\) # 
-- (!\Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_ERRORCHECK~q\)) # (!\Score_SerialReceiver_U0|ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score_SerialReceiver_U0|ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~q\,
	datab => \Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_ERRORCHECK~q\,
	datac => \Score_SerialReceiver_U0|SerialControl_U0|Selector0~0_combout\,
	datad => \Score_SerialReceiver_U0|Compare8_U0|R~0_combout\,
	combout => \Score_SerialReceiver_U0|SerialControl_U0|Selector0~1_combout\);

-- Location: FF_X26_Y38_N9
\Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_INIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Score_SerialReceiver_U0|SerialControl_U0|Selector0~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_INIT~q\);

-- Location: LCCOMB_X26_Y38_N12
\Score_SerialReceiver_U0|SerialControl_U0|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score_SerialReceiver_U0|SerialControl_U0|Selector1~0_combout\ = (\SS~input_o\ & (!\Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_INIT~q\ & !\Score_Dispatcher_U0|CurrentState.STATE_DONE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS~input_o\,
	datac => \Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_INIT~q\,
	datad => \Score_Dispatcher_U0|CurrentState.STATE_DONE~q\,
	combout => \Score_SerialReceiver_U0|SerialControl_U0|Selector1~0_combout\);

-- Location: LCCOMB_X25_Y38_N20
\Score_SerialReceiver_U0|SerialControl_U0|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score_SerialReceiver_U0|SerialControl_U0|Selector1~1_combout\ = (\Score_SerialReceiver_U0|SerialControl_U0|Selector1~0_combout\) # ((\Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~q\ & 
-- !\Score_SerialReceiver_U0|SerialControl_U0|Selector2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~q\,
	datab => \Score_SerialReceiver_U0|SerialControl_U0|Selector1~0_combout\,
	datad => \Score_SerialReceiver_U0|SerialControl_U0|Selector2~0_combout\,
	combout => \Score_SerialReceiver_U0|SerialControl_U0|Selector1~1_combout\);

-- Location: LCCOMB_X25_Y38_N24
\Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~feeder_combout\ = \Score_SerialReceiver_U0|SerialControl_U0|Selector1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Score_SerialReceiver_U0|SerialControl_U0|Selector1~1_combout\,
	combout => \Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~feeder_combout\);

-- Location: FF_X25_Y38_N25
\Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~q\);

-- Location: FF_X25_Y38_N17
\Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD0|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD0|Q~q\);

-- Location: LCCOMB_X25_Y38_N18
\Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD1|Q~feeder_combout\ = \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD0|Q~q\,
	combout => \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD1|Q~feeder_combout\);

-- Location: FF_X25_Y38_N19
\Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD1|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD1|Q~q\);

-- Location: LCCOMB_X25_Y38_N12
\Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD2|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD2|Q~feeder_combout\ = \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD1|Q~q\,
	combout => \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD2|Q~feeder_combout\);

-- Location: FF_X25_Y38_N13
\Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD2|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD2|Q~q\);

-- Location: LCCOMB_X25_Y38_N6
\Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD3|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD3|Q~feeder_combout\ = \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD2|Q~q\,
	combout => \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD3|Q~feeder_combout\);

-- Location: FF_X25_Y38_N7
\Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD3|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD3|Q~q\);

-- Location: LCCOMB_X25_Y38_N28
\Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD4|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD4|Q~feeder_combout\ = \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD3|Q~q\,
	combout => \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD4|Q~feeder_combout\);

-- Location: FF_X25_Y38_N29
\Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD4|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD4|Q~q\);

-- Location: LCCOMB_X25_Y38_N22
\Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD5|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD5|Q~feeder_combout\ = \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD4|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD4|Q~q\,
	combout => \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD5|Q~feeder_combout\);

-- Location: FF_X25_Y38_N23
\Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD5|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD5|Q~q\);

-- Location: FF_X25_Y38_N21
\Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	asdata => \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD5|Q~q\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|FFD6|Q~q\);

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

ww_Dout(0) <= \Dout[0]~output_o\;

ww_Dout(1) <= \Dout[1]~output_o\;

ww_Dout(2) <= \Dout[2]~output_o\;

ww_Dout(3) <= \Dout[3]~output_o\;

ww_Dout(4) <= \Dout[4]~output_o\;

ww_Dout(5) <= \Dout[5]~output_o\;

ww_Dout(6) <= \Dout[6]~output_o\;

ww_WrD <= \WrD~output_o\;
END structure;


