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

-- DATE "05/19/2024 02:40:53"

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

ENTITY 	MemoryAddressControl IS
    PORT (
	putget : IN std_logic;
	incPut : IN std_logic;
	incGet : IN std_logic;
	Reset : IN std_logic;
	clk : IN std_logic;
	full : BUFFER std_logic;
	empty : BUFFER std_logic;
	Address : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END MemoryAddressControl;

-- Design Ports Information
-- full	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- empty	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[0]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[1]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[2]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- putget	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- incPut	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- incGet	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MemoryAddressControl IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_putget : std_logic;
SIGNAL ww_incPut : std_logic;
SIGNAL ww_incGet : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_full : std_logic;
SIGNAL ww_empty : std_logic;
SIGNAL ww_Address : std_logic_vector(2 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \full~output_o\ : std_logic;
SIGNAL \empty~output_o\ : std_logic;
SIGNAL \Address[0]~output_o\ : std_logic;
SIGNAL \Address[1]~output_o\ : std_logic;
SIGNAL \Address[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \incPut~input_o\ : std_logic;
SIGNAL \MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~0_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\ : std_logic;
SIGNAL \MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~0_combout\ : std_logic;
SIGNAL \MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\ : std_logic;
SIGNAL \incGet~input_o\ : std_logic;
SIGNAL \MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~0_combout\ : std_logic;
SIGNAL \MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\ : std_logic;
SIGNAL \MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~0_combout\ : std_logic;
SIGNAL \MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\ : std_logic;
SIGNAL \MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~0_combout\ : std_logic;
SIGNAL \MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~q\ : std_logic;
SIGNAL \MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~0_combout\ : std_logic;
SIGNAL \MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~q\ : std_logic;
SIGNAL \full~0_combout\ : std_logic;
SIGNAL \putget~input_o\ : std_logic;
SIGNAL \MAC_FFD_U0|Q~q\ : std_logic;
SIGNAL \full~1_combout\ : std_logic;
SIGNAL \empty~0_combout\ : std_logic;
SIGNAL \MAC_Mux_U0|Address[0]~0_combout\ : std_logic;
SIGNAL \MAC_Mux_U0|Address[1]~1_combout\ : std_logic;
SIGNAL \MAC_Mux_U0|Address[2]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_empty~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_putget <= putget;
ww_incPut <= incPut;
ww_incGet <= incGet;
ww_Reset <= Reset;
ww_clk <= clk;
full <= ww_full;
empty <= ww_empty;
Address <= ww_Address;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_Reset~inputclkctrl_outclk\ <= NOT \Reset~inputclkctrl_outclk\;
\ALT_INV_empty~0_combout\ <= NOT \empty~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y50_N12
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

-- Location: IOOBUF_X20_Y39_N9
\full~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \full~1_combout\,
	devoe => ww_devoe,
	o => \full~output_o\);

-- Location: IOOBUF_X20_Y39_N16
\empty~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_empty~0_combout\,
	devoe => ww_devoe,
	o => \empty~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\Address[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAC_Mux_U0|Address[0]~0_combout\,
	devoe => ww_devoe,
	o => \Address[0]~output_o\);

-- Location: IOOBUF_X24_Y39_N30
\Address[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAC_Mux_U0|Address[1]~1_combout\,
	devoe => ww_devoe,
	o => \Address[1]~output_o\);

-- Location: IOOBUF_X20_Y39_N2
\Address[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAC_Mux_U0|Address[2]~2_combout\,
	devoe => ww_devoe,
	o => \Address[2]~output_o\);

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

-- Location: IOIBUF_X22_Y39_N22
\incPut~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_incPut,
	o => \incPut~input_o\);

-- Location: LCCOMB_X22_Y38_N12
\MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~0_combout\ = \MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\ $ (\incPut~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	datad => \incPut~input_o\,
	combout => \MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~0_combout\);

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

-- Location: FF_X22_Y38_N13
\MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\);

-- Location: LCCOMB_X22_Y38_N16
\MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~0_combout\ = \MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\ $ (((\incPut~input_o\ & \MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \incPut~input_o\,
	datac => \MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\,
	datad => \MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	combout => \MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~0_combout\);

-- Location: FF_X22_Y38_N17
\MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\);

-- Location: IOIBUF_X22_Y39_N29
\incGet~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_incGet,
	o => \incGet~input_o\);

-- Location: LCCOMB_X22_Y38_N18
\MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~0_combout\ = \MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\ $ (\incGet~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	datad => \incGet~input_o\,
	combout => \MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~0_combout\);

-- Location: FF_X22_Y38_N19
\MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\);

-- Location: LCCOMB_X22_Y38_N10
\MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~0_combout\ = \MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\ $ (((\incGet~input_o\ & \MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incGet~input_o\,
	datac => \MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\,
	datad => \MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	combout => \MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~0_combout\);

-- Location: FF_X22_Y38_N11
\MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\);

-- Location: LCCOMB_X22_Y38_N22
\MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~0_combout\ = \MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~q\ $ (((\MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\ & (\incPut~input_o\ & \MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	datab => \incPut~input_o\,
	datac => \MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~q\,
	datad => \MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\,
	combout => \MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~0_combout\);

-- Location: FF_X22_Y38_N23
\MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~q\);

-- Location: LCCOMB_X22_Y38_N24
\MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~0_combout\ = \MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~q\ $ (((\incGet~input_o\ & (\MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\ & \MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incGet~input_o\,
	datab => \MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	datac => \MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~q\,
	datad => \MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\,
	combout => \MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~0_combout\);

-- Location: FF_X22_Y38_N25
\MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~q\);

-- Location: LCCOMB_X22_Y38_N14
\full~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \full~0_combout\ = (\MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\ & (\MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\ & (\MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~q\ $ (!\MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~q\)))) # (!\MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\ & 
-- (!\MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\ & (\MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~q\ $ (!\MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\,
	datab => \MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\,
	datac => \MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~q\,
	datad => \MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~q\,
	combout => \full~0_combout\);

-- Location: IOIBUF_X22_Y39_N15
\putget~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_putget,
	o => \putget~input_o\);

-- Location: FF_X22_Y38_N9
\MAC_FFD_U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \putget~input_o\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAC_FFD_U0|Q~q\);

-- Location: LCCOMB_X22_Y38_N20
\full~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \full~1_combout\ = (\full~0_combout\ & (\MAC_FFD_U0|Q~q\ & (\MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\ $ (!\MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \full~0_combout\,
	datab => \MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	datac => \MAC_FFD_U0|Q~q\,
	datad => \MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	combout => \full~1_combout\);

-- Location: LCCOMB_X22_Y38_N8
\empty~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \empty~0_combout\ = ((\MAC_FFD_U0|Q~q\) # (\MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\ $ (\MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\))) # (!\full~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \full~0_combout\,
	datab => \MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	datac => \MAC_FFD_U0|Q~q\,
	datad => \MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	combout => \empty~0_combout\);

-- Location: LCCOMB_X22_Y38_N26
\MAC_Mux_U0|Address[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MAC_Mux_U0|Address[0]~0_combout\ = (\putget~input_o\ & (\MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\)) # (!\putget~input_o\ & ((\MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	datac => \putget~input_o\,
	datad => \MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	combout => \MAC_Mux_U0|Address[0]~0_combout\);

-- Location: LCCOMB_X22_Y38_N28
\MAC_Mux_U0|Address[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MAC_Mux_U0|Address[1]~1_combout\ = (\putget~input_o\ & (\MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\)) # (!\putget~input_o\ & ((\MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\,
	datab => \MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\,
	datac => \putget~input_o\,
	combout => \MAC_Mux_U0|Address[1]~1_combout\);

-- Location: LCCOMB_X22_Y38_N30
\MAC_Mux_U0|Address[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MAC_Mux_U0|Address[2]~2_combout\ = (\putget~input_o\ & ((\MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~q\))) # (!\putget~input_o\ & (\MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~q\,
	datac => \MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~q\,
	datad => \putget~input_o\,
	combout => \MAC_Mux_U0|Address[2]~2_combout\);

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

ww_full <= \full~output_o\;

ww_empty <= \empty~output_o\;

ww_Address(0) <= \Address[0]~output_o\;

ww_Address(1) <= \Address[1]~output_o\;

ww_Address(2) <= \Address[2]~output_o\;
END structure;


