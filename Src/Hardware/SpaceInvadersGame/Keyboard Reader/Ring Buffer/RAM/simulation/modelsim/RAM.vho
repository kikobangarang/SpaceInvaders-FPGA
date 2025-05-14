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

-- DATE "05/16/2024 16:03:15"

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


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	RAM IS
    PORT (
	address : IN std_logic_vector(2 DOWNTO 0);
	wr : IN std_logic;
	din : IN std_logic_vector(3 DOWNTO 0);
	dout : OUT std_logic_vector(3 DOWNTO 0)
	);
END RAM;

-- Design Ports Information
-- dout[0]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[1]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[2]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[3]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[0]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[3]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RAM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_address : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_wr : std_logic;
SIGNAL ww_din : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_dout : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rtl~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~7clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~6clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~5clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \dout[0]~output_o\ : std_logic;
SIGNAL \dout[1]~output_o\ : std_logic;
SIGNAL \dout[2]~output_o\ : std_logic;
SIGNAL \dout[3]~output_o\ : std_logic;
SIGNAL \din[0]~input_o\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \wr~input_o\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \rtl~0clkctrl_outclk\ : std_logic;
SIGNAL \ram~8_combout\ : std_logic;
SIGNAL \rtl~1_combout\ : std_logic;
SIGNAL \rtl~1clkctrl_outclk\ : std_logic;
SIGNAL \ram~4_combout\ : std_logic;
SIGNAL \rtl~2_combout\ : std_logic;
SIGNAL \rtl~2clkctrl_outclk\ : std_logic;
SIGNAL \ram~0_combout\ : std_logic;
SIGNAL \ram~34_combout\ : std_logic;
SIGNAL \rtl~3_combout\ : std_logic;
SIGNAL \rtl~3clkctrl_outclk\ : std_logic;
SIGNAL \ram~12_combout\ : std_logic;
SIGNAL \ram~35_combout\ : std_logic;
SIGNAL \rtl~4_combout\ : std_logic;
SIGNAL \rtl~4clkctrl_outclk\ : std_logic;
SIGNAL \ram~20_combout\ : std_logic;
SIGNAL \rtl~5_combout\ : std_logic;
SIGNAL \rtl~5clkctrl_outclk\ : std_logic;
SIGNAL \ram~24_combout\ : std_logic;
SIGNAL \rtl~6_combout\ : std_logic;
SIGNAL \rtl~6clkctrl_outclk\ : std_logic;
SIGNAL \ram~16_combout\ : std_logic;
SIGNAL \ram~32_combout\ : std_logic;
SIGNAL \rtl~7_combout\ : std_logic;
SIGNAL \rtl~7clkctrl_outclk\ : std_logic;
SIGNAL \ram~28_combout\ : std_logic;
SIGNAL \ram~33_combout\ : std_logic;
SIGNAL \ram~36_combout\ : std_logic;
SIGNAL \din[1]~input_o\ : std_logic;
SIGNAL \ram~21_combout\ : std_logic;
SIGNAL \ram~25_combout\ : std_logic;
SIGNAL \ram~17_combout\ : std_logic;
SIGNAL \ram~37_combout\ : std_logic;
SIGNAL \ram~29_combout\ : std_logic;
SIGNAL \ram~38_combout\ : std_logic;
SIGNAL \ram~13_combout\ : std_logic;
SIGNAL \ram~9_combout\ : std_logic;
SIGNAL \ram~5_combout\ : std_logic;
SIGNAL \ram~1_combout\ : std_logic;
SIGNAL \ram~39_combout\ : std_logic;
SIGNAL \ram~40_combout\ : std_logic;
SIGNAL \ram~41_combout\ : std_logic;
SIGNAL \din[2]~input_o\ : std_logic;
SIGNAL \ram~6_combout\ : std_logic;
SIGNAL \ram~2_combout\ : std_logic;
SIGNAL \ram~44_combout\ : std_logic;
SIGNAL \ram~14_combout\ : std_logic;
SIGNAL \ram~10_combout\ : std_logic;
SIGNAL \ram~45_combout\ : std_logic;
SIGNAL \ram~30_combout\ : std_logic;
SIGNAL \ram~18_combout\ : std_logic;
SIGNAL \ram~26_combout\ : std_logic;
SIGNAL \ram~42_combout\ : std_logic;
SIGNAL \ram~22_combout\ : std_logic;
SIGNAL \ram~43_combout\ : std_logic;
SIGNAL \ram~46_combout\ : std_logic;
SIGNAL \din[3]~input_o\ : std_logic;
SIGNAL \ram~15_combout\ : std_logic;
SIGNAL \ram~11_combout\ : std_logic;
SIGNAL \ram~7_combout\ : std_logic;
SIGNAL \ram~3_combout\ : std_logic;
SIGNAL \ram~49_combout\ : std_logic;
SIGNAL \ram~50_combout\ : std_logic;
SIGNAL \ram~31_combout\ : std_logic;
SIGNAL \ram~23_combout\ : std_logic;
SIGNAL \ram~19_combout\ : std_logic;
SIGNAL \ram~27_combout\ : std_logic;
SIGNAL \ram~47_combout\ : std_logic;
SIGNAL \ram~48_combout\ : std_logic;
SIGNAL \ram~51_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_address <= address;
ww_wr <= wr;
ww_din <= din;
dout <= ww_dout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\rtl~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~4_combout\);

\rtl~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~2_combout\);

\rtl~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~1_combout\);

\rtl~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~0_combout\);

\rtl~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~3_combout\);

\rtl~7clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~7_combout\);

\rtl~6clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~6_combout\);

\rtl~5clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~5_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y47_N24
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

-- Location: IOOBUF_X54_Y54_N2
\dout[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram~36_combout\,
	devoe => ww_devoe,
	o => \dout[0]~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\dout[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram~41_combout\,
	devoe => ww_devoe,
	o => \dout[1]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\dout[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram~46_combout\,
	devoe => ww_devoe,
	o => \dout[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N2
\dout[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram~51_combout\,
	devoe => ww_devoe,
	o => \dout[3]~output_o\);

-- Location: IOIBUF_X58_Y54_N29
\din[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(0),
	o => \din[0]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\address[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

-- Location: IOIBUF_X49_Y54_N15
\wr~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr,
	o => \wr~input_o\);

-- Location: IOIBUF_X56_Y54_N22
\address[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

-- Location: IOIBUF_X49_Y54_N22
\address[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

-- Location: LCCOMB_X56_Y43_N24
\rtl~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = (\address[1]~input_o\ & (\wr~input_o\ & (!\address[2]~input_o\ & !\address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \wr~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[0]~input_o\,
	combout => \rtl~0_combout\);

-- Location: CLKCTRL_G8
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

-- Location: LCCOMB_X56_Y45_N12
\ram~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~8_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & ((\din[0]~input_o\))) # (!GLOBAL(\rtl~0clkctrl_outclk\) & (\ram~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~8_combout\,
	datac => \din[0]~input_o\,
	datad => \rtl~0clkctrl_outclk\,
	combout => \ram~8_combout\);

-- Location: LCCOMB_X45_Y53_N18
\rtl~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~1_combout\ = (!\address[1]~input_o\ & (\wr~input_o\ & (!\address[2]~input_o\ & \address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \wr~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[0]~input_o\,
	combout => \rtl~1_combout\);

-- Location: CLKCTRL_G14
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

-- Location: LCCOMB_X59_Y49_N10
\ram~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~4_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & ((\din[0]~input_o\))) # (!GLOBAL(\rtl~1clkctrl_outclk\) & (\ram~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~4_combout\,
	datac => \din[0]~input_o\,
	datad => \rtl~1clkctrl_outclk\,
	combout => \ram~4_combout\);

-- Location: LCCOMB_X45_Y53_N28
\rtl~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~2_combout\ = (!\address[1]~input_o\ & (\wr~input_o\ & (!\address[2]~input_o\ & !\address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \wr~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[0]~input_o\,
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

-- Location: LCCOMB_X59_Y49_N12
\ram~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~0_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\din[0]~input_o\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\ram~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din[0]~input_o\,
	datac => \rtl~2clkctrl_outclk\,
	datad => \ram~0_combout\,
	combout => \ram~0_combout\);

-- Location: LCCOMB_X59_Y49_N24
\ram~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~34_combout\ = (\address[0]~input_o\ & ((\ram~4_combout\) # ((\address[1]~input_o\)))) # (!\address[0]~input_o\ & (((!\address[1]~input_o\ & \ram~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~4_combout\,
	datab => \address[0]~input_o\,
	datac => \address[1]~input_o\,
	datad => \ram~0_combout\,
	combout => \ram~34_combout\);

-- Location: LCCOMB_X51_Y53_N4
\rtl~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~3_combout\ = (!\address[2]~input_o\ & (\wr~input_o\ & (\address[1]~input_o\ & \address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \wr~input_o\,
	datac => \address[1]~input_o\,
	datad => \address[0]~input_o\,
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

-- Location: LCCOMB_X56_Y45_N6
\ram~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~12_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\din[0]~input_o\)) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\ram~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \din[0]~input_o\,
	datac => \rtl~3clkctrl_outclk\,
	datad => \ram~12_combout\,
	combout => \ram~12_combout\);

-- Location: LCCOMB_X56_Y45_N8
\ram~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~35_combout\ = (\ram~34_combout\ & (((\ram~12_combout\) # (!\address[1]~input_o\)))) # (!\ram~34_combout\ & (\ram~8_combout\ & (\address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~8_combout\,
	datab => \ram~34_combout\,
	datac => \address[1]~input_o\,
	datad => \ram~12_combout\,
	combout => \ram~35_combout\);

-- Location: LCCOMB_X56_Y43_N6
\rtl~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~4_combout\ = (!\address[1]~input_o\ & (\wr~input_o\ & (\address[2]~input_o\ & \address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \wr~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[0]~input_o\,
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

-- Location: LCCOMB_X56_Y43_N22
\ram~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~20_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\din[0]~input_o\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\ram~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din[0]~input_o\,
	datac => \ram~20_combout\,
	datad => \rtl~4clkctrl_outclk\,
	combout => \ram~20_combout\);

-- Location: LCCOMB_X45_Y52_N30
\rtl~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~5_combout\ = (\address[1]~input_o\ & (\address[2]~input_o\ & (\wr~input_o\ & !\address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[2]~input_o\,
	datac => \wr~input_o\,
	datad => \address[0]~input_o\,
	combout => \rtl~5_combout\);

-- Location: CLKCTRL_G11
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

-- Location: LCCOMB_X56_Y43_N20
\ram~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~24_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\din[0]~input_o\)) # (!GLOBAL(\rtl~5clkctrl_outclk\) & ((\ram~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din[0]~input_o\,
	datab => \ram~24_combout\,
	datad => \rtl~5clkctrl_outclk\,
	combout => \ram~24_combout\);

-- Location: LCCOMB_X56_Y43_N12
\rtl~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~6_combout\ = (!\address[1]~input_o\ & (\wr~input_o\ & (\address[2]~input_o\ & !\address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \wr~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[0]~input_o\,
	combout => \rtl~6_combout\);

-- Location: CLKCTRL_G6
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

-- Location: LCCOMB_X56_Y45_N18
\ram~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~16_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & ((\din[0]~input_o\))) # (!GLOBAL(\rtl~6clkctrl_outclk\) & (\ram~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram~16_combout\,
	datac => \din[0]~input_o\,
	datad => \rtl~6clkctrl_outclk\,
	combout => \ram~16_combout\);

-- Location: LCCOMB_X56_Y43_N8
\ram~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~32_combout\ = (\address[1]~input_o\ & ((\ram~24_combout\) # ((\address[0]~input_o\)))) # (!\address[1]~input_o\ & (((\ram~16_combout\ & !\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \ram~24_combout\,
	datac => \ram~16_combout\,
	datad => \address[0]~input_o\,
	combout => \ram~32_combout\);

-- Location: LCCOMB_X56_Y43_N4
\rtl~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~7_combout\ = (\address[1]~input_o\ & (\wr~input_o\ & (\address[2]~input_o\ & \address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \wr~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[0]~input_o\,
	combout => \rtl~7_combout\);

-- Location: CLKCTRL_G9
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

-- Location: LCCOMB_X56_Y43_N0
\ram~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~28_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\din[0]~input_o\)) # (!GLOBAL(\rtl~7clkctrl_outclk\) & ((\ram~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din[0]~input_o\,
	datac => \rtl~7clkctrl_outclk\,
	datad => \ram~28_combout\,
	combout => \ram~28_combout\);

-- Location: LCCOMB_X56_Y43_N18
\ram~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~33_combout\ = (\address[0]~input_o\ & ((\ram~32_combout\ & ((\ram~28_combout\))) # (!\ram~32_combout\ & (\ram~20_combout\)))) # (!\address[0]~input_o\ & (((\ram~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~20_combout\,
	datab => \address[0]~input_o\,
	datac => \ram~32_combout\,
	datad => \ram~28_combout\,
	combout => \ram~33_combout\);

-- Location: LCCOMB_X56_Y43_N16
\ram~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~36_combout\ = (\address[2]~input_o\ & ((\ram~33_combout\))) # (!\address[2]~input_o\ & (\ram~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~35_combout\,
	datab => \ram~33_combout\,
	datac => \address[2]~input_o\,
	combout => \ram~36_combout\);

-- Location: IOIBUF_X46_Y54_N22
\din[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(1),
	o => \din[1]~input_o\);

-- Location: LCCOMB_X50_Y52_N16
\ram~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~21_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\din[1]~input_o\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\ram~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din[1]~input_o\,
	datab => \ram~21_combout\,
	datad => \rtl~4clkctrl_outclk\,
	combout => \ram~21_combout\);

-- Location: LCCOMB_X49_Y53_N24
\ram~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~25_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\din[1]~input_o\)) # (!GLOBAL(\rtl~5clkctrl_outclk\) & ((\ram~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din[1]~input_o\,
	datac => \rtl~5clkctrl_outclk\,
	datad => \ram~25_combout\,
	combout => \ram~25_combout\);

-- Location: LCCOMB_X50_Y52_N2
\ram~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~17_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\din[1]~input_o\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\ram~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din[1]~input_o\,
	datab => \ram~17_combout\,
	datad => \rtl~6clkctrl_outclk\,
	combout => \ram~17_combout\);

-- Location: LCCOMB_X50_Y52_N8
\ram~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~37_combout\ = (\address[1]~input_o\ & ((\ram~25_combout\) # ((\address[0]~input_o\)))) # (!\address[1]~input_o\ & (((!\address[0]~input_o\ & \ram~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~25_combout\,
	datab => \address[1]~input_o\,
	datac => \address[0]~input_o\,
	datad => \ram~17_combout\,
	combout => \ram~37_combout\);

-- Location: LCCOMB_X50_Y52_N28
\ram~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~29_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\din[1]~input_o\)) # (!GLOBAL(\rtl~7clkctrl_outclk\) & ((\ram~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din[1]~input_o\,
	datac => \rtl~7clkctrl_outclk\,
	datad => \ram~29_combout\,
	combout => \ram~29_combout\);

-- Location: LCCOMB_X50_Y52_N10
\ram~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~38_combout\ = (\address[0]~input_o\ & ((\ram~37_combout\ & ((\ram~29_combout\))) # (!\ram~37_combout\ & (\ram~21_combout\)))) # (!\address[0]~input_o\ & (((\ram~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \ram~21_combout\,
	datac => \ram~37_combout\,
	datad => \ram~29_combout\,
	combout => \ram~38_combout\);

-- Location: LCCOMB_X51_Y53_N0
\ram~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~13_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & ((\din[1]~input_o\))) # (!GLOBAL(\rtl~3clkctrl_outclk\) & (\ram~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram~13_combout\,
	datac => \din[1]~input_o\,
	datad => \rtl~3clkctrl_outclk\,
	combout => \ram~13_combout\);

-- Location: LCCOMB_X49_Y53_N26
\ram~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~9_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\din[1]~input_o\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\ram~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din[1]~input_o\,
	datac => \ram~9_combout\,
	datad => \rtl~0clkctrl_outclk\,
	combout => \ram~9_combout\);

-- Location: LCCOMB_X51_Y53_N10
\ram~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~5_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & ((\din[1]~input_o\))) # (!GLOBAL(\rtl~1clkctrl_outclk\) & (\ram~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~5_combout\,
	datac => \din[1]~input_o\,
	datad => \rtl~1clkctrl_outclk\,
	combout => \ram~5_combout\);

-- Location: LCCOMB_X51_Y53_N12
\ram~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~1_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\din[1]~input_o\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\ram~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \din[1]~input_o\,
	datac => \rtl~2clkctrl_outclk\,
	datad => \ram~1_combout\,
	combout => \ram~1_combout\);

-- Location: LCCOMB_X51_Y53_N18
\ram~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~39_combout\ = (\address[0]~input_o\ & ((\ram~5_combout\) # ((\address[1]~input_o\)))) # (!\address[0]~input_o\ & (((!\address[1]~input_o\ & \ram~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~5_combout\,
	datab => \address[0]~input_o\,
	datac => \address[1]~input_o\,
	datad => \ram~1_combout\,
	combout => \ram~39_combout\);

-- Location: LCCOMB_X51_Y53_N30
\ram~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~40_combout\ = (\address[1]~input_o\ & ((\ram~39_combout\ & (\ram~13_combout\)) # (!\ram~39_combout\ & ((\ram~9_combout\))))) # (!\address[1]~input_o\ & (((\ram~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \ram~13_combout\,
	datac => \ram~9_combout\,
	datad => \ram~39_combout\,
	combout => \ram~40_combout\);

-- Location: LCCOMB_X50_Y52_N4
\ram~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~41_combout\ = (\address[2]~input_o\ & (\ram~38_combout\)) # (!\address[2]~input_o\ & ((\ram~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~38_combout\,
	datac => \ram~40_combout\,
	datad => \address[2]~input_o\,
	combout => \ram~41_combout\);

-- Location: IOIBUF_X51_Y54_N15
\din[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(2),
	o => \din[2]~input_o\);

-- Location: LCCOMB_X50_Y53_N18
\ram~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~6_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\din[2]~input_o\)) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\ram~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \din[2]~input_o\,
	datac => \rtl~1clkctrl_outclk\,
	datad => \ram~6_combout\,
	combout => \ram~6_combout\);

-- Location: LCCOMB_X52_Y53_N10
\ram~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~2_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & ((\din[2]~input_o\))) # (!GLOBAL(\rtl~2clkctrl_outclk\) & (\ram~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~2_combout\,
	datac => \din[2]~input_o\,
	datad => \rtl~2clkctrl_outclk\,
	combout => \ram~2_combout\);

-- Location: LCCOMB_X50_Y52_N26
\ram~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~44_combout\ = (\address[0]~input_o\ & ((\ram~6_combout\) # ((\address[1]~input_o\)))) # (!\address[0]~input_o\ & (((!\address[1]~input_o\ & \ram~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \ram~6_combout\,
	datac => \address[1]~input_o\,
	datad => \ram~2_combout\,
	combout => \ram~44_combout\);

-- Location: LCCOMB_X52_Y53_N12
\ram~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~14_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & ((\din[2]~input_o\))) # (!GLOBAL(\rtl~3clkctrl_outclk\) & (\ram~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~14_combout\,
	datac => \din[2]~input_o\,
	datad => \rtl~3clkctrl_outclk\,
	combout => \ram~14_combout\);

-- Location: LCCOMB_X50_Y53_N8
\ram~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~10_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\din[2]~input_o\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\ram~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \din[2]~input_o\,
	datac => \ram~10_combout\,
	datad => \rtl~0clkctrl_outclk\,
	combout => \ram~10_combout\);

-- Location: LCCOMB_X50_Y52_N20
\ram~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~45_combout\ = (\ram~44_combout\ & ((\ram~14_combout\) # ((!\address[1]~input_o\)))) # (!\ram~44_combout\ & (((\address[1]~input_o\ & \ram~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~44_combout\,
	datab => \ram~14_combout\,
	datac => \address[1]~input_o\,
	datad => \ram~10_combout\,
	combout => \ram~45_combout\);

-- Location: LCCOMB_X50_Y52_N18
\ram~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~30_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\din[2]~input_o\)) # (!GLOBAL(\rtl~7clkctrl_outclk\) & ((\ram~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \din[2]~input_o\,
	datac => \rtl~7clkctrl_outclk\,
	datad => \ram~30_combout\,
	combout => \ram~30_combout\);

-- Location: LCCOMB_X50_Y52_N0
\ram~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~18_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\din[2]~input_o\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\ram~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \din[2]~input_o\,
	datac => \rtl~6clkctrl_outclk\,
	datad => \ram~18_combout\,
	combout => \ram~18_combout\);

-- Location: LCCOMB_X52_Y53_N0
\ram~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~26_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\din[2]~input_o\)) # (!GLOBAL(\rtl~5clkctrl_outclk\) & ((\ram~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din[2]~input_o\,
	datac => \rtl~5clkctrl_outclk\,
	datad => \ram~26_combout\,
	combout => \ram~26_combout\);

-- Location: LCCOMB_X50_Y52_N22
\ram~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~42_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\ram~26_combout\))) # (!\address[1]~input_o\ & (\ram~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \ram~18_combout\,
	datac => \address[1]~input_o\,
	datad => \ram~26_combout\,
	combout => \ram~42_combout\);

-- Location: LCCOMB_X50_Y52_N6
\ram~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~22_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & ((\din[2]~input_o\))) # (!GLOBAL(\rtl~4clkctrl_outclk\) & (\ram~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~22_combout\,
	datab => \din[2]~input_o\,
	datad => \rtl~4clkctrl_outclk\,
	combout => \ram~22_combout\);

-- Location: LCCOMB_X50_Y52_N24
\ram~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~43_combout\ = (\address[0]~input_o\ & ((\ram~42_combout\ & (\ram~30_combout\)) # (!\ram~42_combout\ & ((\ram~22_combout\))))) # (!\address[0]~input_o\ & (((\ram~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \ram~30_combout\,
	datac => \ram~42_combout\,
	datad => \ram~22_combout\,
	combout => \ram~43_combout\);

-- Location: LCCOMB_X50_Y52_N30
\ram~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~46_combout\ = (\address[2]~input_o\ & ((\ram~43_combout\))) # (!\address[2]~input_o\ & (\ram~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \ram~45_combout\,
	datad => \ram~43_combout\,
	combout => \ram~46_combout\);

-- Location: IOIBUF_X58_Y54_N1
\din[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(3),
	o => \din[3]~input_o\);

-- Location: LCCOMB_X57_Y53_N22
\ram~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~15_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\din[3]~input_o\)) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\ram~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \din[3]~input_o\,
	datac => \ram~15_combout\,
	datad => \rtl~3clkctrl_outclk\,
	combout => \ram~15_combout\);

-- Location: LCCOMB_X58_Y53_N26
\ram~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~11_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\din[3]~input_o\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\ram~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \din[3]~input_o\,
	datac => \ram~11_combout\,
	datad => \rtl~0clkctrl_outclk\,
	combout => \ram~11_combout\);

-- Location: LCCOMB_X58_Y53_N4
\ram~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~7_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\din[3]~input_o\)) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\ram~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \din[3]~input_o\,
	datac => \ram~7_combout\,
	datad => \rtl~1clkctrl_outclk\,
	combout => \ram~7_combout\);

-- Location: LCCOMB_X57_Y53_N20
\ram~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~3_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\din[3]~input_o\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\ram~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \din[3]~input_o\,
	datac => \rtl~2clkctrl_outclk\,
	datad => \ram~3_combout\,
	combout => \ram~3_combout\);

-- Location: LCCOMB_X57_Y53_N12
\ram~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~49_combout\ = (\address[0]~input_o\ & ((\ram~7_combout\) # ((\address[1]~input_o\)))) # (!\address[0]~input_o\ & (((!\address[1]~input_o\ & \ram~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~7_combout\,
	datab => \address[0]~input_o\,
	datac => \address[1]~input_o\,
	datad => \ram~3_combout\,
	combout => \ram~49_combout\);

-- Location: LCCOMB_X57_Y53_N30
\ram~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~50_combout\ = (\address[1]~input_o\ & ((\ram~49_combout\ & (\ram~15_combout\)) # (!\ram~49_combout\ & ((\ram~11_combout\))))) # (!\address[1]~input_o\ & (((\ram~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~15_combout\,
	datab => \ram~11_combout\,
	datac => \address[1]~input_o\,
	datad => \ram~49_combout\,
	combout => \ram~50_combout\);

-- Location: LCCOMB_X57_Y52_N2
\ram~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~31_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & ((\din[3]~input_o\))) # (!GLOBAL(\rtl~7clkctrl_outclk\) & (\ram~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram~31_combout\,
	datac => \din[3]~input_o\,
	datad => \rtl~7clkctrl_outclk\,
	combout => \ram~31_combout\);

-- Location: LCCOMB_X57_Y53_N18
\ram~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~23_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\din[3]~input_o\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\ram~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \din[3]~input_o\,
	datac => \ram~23_combout\,
	datad => \rtl~4clkctrl_outclk\,
	combout => \ram~23_combout\);

-- Location: LCCOMB_X57_Y52_N0
\ram~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~19_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\din[3]~input_o\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\ram~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din[3]~input_o\,
	datab => \ram~19_combout\,
	datad => \rtl~6clkctrl_outclk\,
	combout => \ram~19_combout\);

-- Location: LCCOMB_X58_Y53_N24
\ram~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~27_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\din[3]~input_o\)) # (!GLOBAL(\rtl~5clkctrl_outclk\) & ((\ram~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \din[3]~input_o\,
	datac => \rtl~5clkctrl_outclk\,
	datad => \ram~27_combout\,
	combout => \ram~27_combout\);

-- Location: LCCOMB_X57_Y53_N24
\ram~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~47_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\) # (\ram~27_combout\)))) # (!\address[1]~input_o\ & (\ram~19_combout\ & (!\address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \ram~19_combout\,
	datac => \address[0]~input_o\,
	datad => \ram~27_combout\,
	combout => \ram~47_combout\);

-- Location: LCCOMB_X57_Y53_N26
\ram~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~48_combout\ = (\address[0]~input_o\ & ((\ram~47_combout\ & (\ram~31_combout\)) # (!\ram~47_combout\ & ((\ram~23_combout\))))) # (!\address[0]~input_o\ & (((\ram~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~31_combout\,
	datab => \ram~23_combout\,
	datac => \address[0]~input_o\,
	datad => \ram~47_combout\,
	combout => \ram~48_combout\);

-- Location: LCCOMB_X57_Y53_N16
\ram~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram~51_combout\ = (\address[2]~input_o\ & ((\ram~48_combout\))) # (!\address[2]~input_o\ & (\ram~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~50_combout\,
	datac => \address[2]~input_o\,
	datad => \ram~48_combout\,
	combout => \ram~51_combout\);

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

ww_dout(0) <= \dout[0]~output_o\;

ww_dout(1) <= \dout[1]~output_o\;

ww_dout(2) <= \dout[2]~output_o\;

ww_dout(3) <= \dout[3]~output_o\;
END structure;


