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

-- DATE "07/02/2024 09:59:28"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SpaceInvadersGame IS
    PORT (
	altera_reserved_tms : IN std_logic := '0';
	altera_reserved_tck : IN std_logic := '0';
	altera_reserved_tdi : IN std_logic := '0';
	altera_reserved_tdo : OUT std_logic;
	Linhas : IN std_logic_vector(3 DOWNTO 0);
	Mclk : IN std_logic;
	Reset : IN std_logic;
	Manut : IN std_logic;
	CoinIn : IN std_logic;
	WrLOut : OUT std_logic;
	Col : OUT std_logic_vector(2 DOWNTO 0);
	DoutLCD : OUT std_logic_vector(8 DOWNTO 0);
	HexLED0 : OUT std_logic_vector(7 DOWNTO 0);
	HexLED1 : OUT std_logic_vector(7 DOWNTO 0);
	HexLED2 : OUT std_logic_vector(7 DOWNTO 0);
	HexLED3 : OUT std_logic_vector(7 DOWNTO 0);
	HexLED4 : OUT std_logic_vector(7 DOWNTO 0);
	HexLED5 : OUT std_logic_vector(7 DOWNTO 0)
	);
END SpaceInvadersGame;

-- Design Ports Information
-- WrLOut	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Col[0]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Col[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Col[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DoutLCD[0]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DoutLCD[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DoutLCD[2]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DoutLCD[3]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DoutLCD[4]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DoutLCD[5]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DoutLCD[6]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DoutLCD[7]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DoutLCD[8]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED0[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED1[7]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED2[7]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED3[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED3[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED3[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED3[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED3[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED3[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED3[7]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED4[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED4[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED4[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED4[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED4[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED4[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED4[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED4[7]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED5[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED5[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED5[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED5[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED5[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED5[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED5[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HexLED5[7]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Manut	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mclk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CoinIn	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Linhas[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Linhas[0]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Linhas[3]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Linhas[2]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tms	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- altera_reserved_tck	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- altera_reserved_tdi	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- altera_reserved_tdo	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SpaceInvadersGame IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_altera_reserved_tms : std_logic;
SIGNAL ww_altera_reserved_tck : std_logic;
SIGNAL ww_altera_reserved_tdi : std_logic;
SIGNAL ww_altera_reserved_tdo : std_logic;
SIGNAL ww_Linhas : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Mclk : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Manut : std_logic;
SIGNAL ww_CoinIn : std_logic;
SIGNAL ww_WrLOut : std_logic;
SIGNAL ww_Col : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_DoutLCD : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_HexLED0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HexLED1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HexLED2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HexLED3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HexLED4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HexLED5 : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rtl~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|KeyDecode_U0|U0|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.STATE_REGISTER~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_INIT~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~7clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~6clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~5clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mclk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_INIT~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\ : std_logic;
SIGNAL \auto_hub|~GND~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder_combout\ : std_logic;
SIGNAL \Mclk~input_o\ : std_logic;
SIGNAL \Mclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \altera_reserved_tms~input_o\ : std_logic;
SIGNAL \altera_reserved_tck~input_o\ : std_logic;
SIGNAL \altera_reserved_tdi~input_o\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDIUTAP\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\ : std_logic;
SIGNAL \~QIC_CREATED_GND~I_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~0_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|count[0]~7_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~1\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~2_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~3\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~4_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~5\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~6_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~7\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~8_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|count~0_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~9\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~10_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~11\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~12_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~13\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~14_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|count~1_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~15\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~16_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~17\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~18_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~19\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~20_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~21\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~22_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~23\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~24_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|count~2_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~25\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~26_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~27\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~28_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|count~3_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~29\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~30_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|count~4_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Equal0~3_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Equal0~1_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Equal0~2_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Equal0~0_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Equal0~4_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~31\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~32_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|count~5_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~33\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~34_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|count~6_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~35\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~36_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~37\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~38_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~39\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~40_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~41\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~42_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~43\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~44_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~45\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~46_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~47\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~48_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~49\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~50_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~51\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~52_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~53\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~54_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~55\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~56_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~57\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~58_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~59\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~60_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~61\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Add0~62_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Equal0~8_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Equal0~6_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Equal0~5_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Equal0~7_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|Equal0~9_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|tmp~0_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|tmp~q\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \Linhas[0]~input_o\ : std_logic;
SIGNAL \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~0_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\ : std_logic;
SIGNAL \Linhas[1]~input_o\ : std_logic;
SIGNAL \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Mux_U0|Y~0_combout\ : std_logic;
SIGNAL \Linhas[3]~input_o\ : std_logic;
SIGNAL \Linhas[2]~input_o\ : std_logic;
SIGNAL \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Mux_U0|Y~1_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_1~2_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_1~3_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_1~q\ : std_logic;
SIGNAL \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SEARCHING~0_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~0_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_011~0_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~0_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\ : std_logic;
SIGNAL \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~0_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\ : std_logic;
SIGNAL \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~0_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~q\ : std_logic;
SIGNAL \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~0_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\ : std_logic;
SIGNAL \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|Adder_0|FullAdder_U1|CyOut~0_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~0_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~q\ : std_logic;
SIGNAL \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Compare_U0|Q~3_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Compare_U0|Q~combout\ : std_logic;
SIGNAL \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.STATE_WAIT_LOAD~0_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~0_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~0_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~1_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~2_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~3_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~q\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~3_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~0_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Compare_U0|Q~2_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~1_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~2_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~5_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~4_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~q\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~3_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~2_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~4_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~q\ : std_logic;
SIGNAL \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_0~0_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_0~1_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_0~q\ : std_logic;
SIGNAL \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~0_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RingBufferControl_U0|selPG~0_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_010~0_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ : std_logic;
SIGNAL \rtl~7_combout\ : std_logic;
SIGNAL \rtl~7clkctrl_outclk\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~28_combout\ : std_logic;
SIGNAL \rtl~6_combout\ : std_logic;
SIGNAL \rtl~6clkctrl_outclk\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~16_combout\ : std_logic;
SIGNAL \rtl~5_combout\ : std_logic;
SIGNAL \rtl~5clkctrl_outclk\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~24_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~32_combout\ : std_logic;
SIGNAL \rtl~4_combout\ : std_logic;
SIGNAL \rtl~4clkctrl_outclk\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~20_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~33_combout\ : std_logic;
SIGNAL \rtl~3_combout\ : std_logic;
SIGNAL \rtl~3clkctrl_outclk\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~12_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \rtl~0clkctrl_outclk\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~8_combout\ : std_logic;
SIGNAL \rtl~2_combout\ : std_logic;
SIGNAL \rtl~2clkctrl_outclk\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~0_combout\ : std_logic;
SIGNAL \rtl~1_combout\ : std_logic;
SIGNAL \rtl~1clkctrl_outclk\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~4_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~34_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~35_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~36_combout\ : std_logic;
SIGNAL \U0|OutputBuffer_U0|OutputRegister_U0|FFD_U3|Q~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~0_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\ : std_logic;
SIGNAL \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Adder_U0|FullAdder_U2|CyOut~0_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~0_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~11_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~15_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~3_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~7_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~49_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~50_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~19_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~27_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~47_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~23_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~31_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~48_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~51_combout\ : std_logic;
SIGNAL \U0|OutputBuffer_U0|OutputRegister_U0|FFD_U0|Q~q\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\ : std_logic;
SIGNAL \CoinIn~input_o\ : std_logic;
SIGNAL \U5|NextState~0_combout\ : std_logic;
SIGNAL \U5|CurrentState~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\ : std_logic;
SIGNAL \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.STATE_WAIT_ACK~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~feeder_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~22_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~30_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~18_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~26_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~42_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~43_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~14_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~2_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~6_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~44_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~10_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~45_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~46_combout\ : std_logic;
SIGNAL \U0|OutputBuffer_U0|OutputRegister_U0|FFD_U1|Q~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\ : std_logic;
SIGNAL \Manut~input_o\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\ : std_logic;
SIGNAL \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_0~0_combout\ : std_logic;
SIGNAL \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_0~1_combout\ : std_logic;
SIGNAL \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_0~q\ : std_logic;
SIGNAL \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_1~0_combout\ : std_logic;
SIGNAL \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_1~q\ : std_logic;
SIGNAL \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.STATE_REGISTER~0_combout\ : std_logic;
SIGNAL \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.STATE_REGISTER~0clkctrl_outclk\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~9_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~13_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~1_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~5_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~39_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~40_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~25_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~17_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~37_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~29_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~21_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~38_combout\ : std_logic;
SIGNAL \U0|RingBuffer_U0|RAM_U0|ram~41_combout\ : std_logic;
SIGNAL \U0|OutputBuffer_U0|OutputRegister_U0|FFD_U2|Q~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~10\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~12\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~6\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~8\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~19_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~20_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~21_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~16_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~17_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~18_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~10\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~12\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~15\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~17\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAP\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~clkctrl_outclk\ : std_logic;
SIGNAL \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~0_combout\ : std_logic;
SIGNAL \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WAITINGACCEPT~0_combout\ : std_logic;
SIGNAL \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\ : std_logic;
SIGNAL \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~0_combout\ : std_logic;
SIGNAL \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~q\ : std_logic;
SIGNAL \U1|LCD_SerialReceiver_U0|ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\ : std_logic;
SIGNAL \U1|LCD_SerialReceiver_U0|ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~q\ : std_logic;
SIGNAL \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~2_combout\ : std_logic;
SIGNAL \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~3_combout\ : std_logic;
SIGNAL \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~4_combout\ : std_logic;
SIGNAL \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~q\ : std_logic;
SIGNAL \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_INIT~0_combout\ : std_logic;
SIGNAL \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_INIT~0clkctrl_outclk\ : std_logic;
SIGNAL \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\ : std_logic;
SIGNAL \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~0_combout\ : std_logic;
SIGNAL \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\ : std_logic;
SIGNAL \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~0_combout\ : std_logic;
SIGNAL \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\ : std_logic;
SIGNAL \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~0_combout\ : std_logic;
SIGNAL \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~1_combout\ : std_logic;
SIGNAL \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~0_combout\ : std_logic;
SIGNAL \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~1_combout\ : std_logic;
SIGNAL \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~q\ : std_logic;
SIGNAL \U1|LCDDispatcher_U0|CurrentState.state_bit_3~0_combout\ : std_logic;
SIGNAL \U1|LCDDispatcher_U0|CurrentState.state_bit_3~q\ : std_logic;
SIGNAL \U1|LCDDispatcher_U0|CurrentState.state_bit_2~0_combout\ : std_logic;
SIGNAL \U1|LCDDispatcher_U0|CurrentState.state_bit_2~q\ : std_logic;
SIGNAL \U1|LCDDispatcher_U0|CurrentState.state_bit_0~0_combout\ : std_logic;
SIGNAL \U1|LCDDispatcher_U0|CurrentState.state_bit_0~1_combout\ : std_logic;
SIGNAL \U1|LCDDispatcher_U0|CurrentState.state_bit_0~q\ : std_logic;
SIGNAL \U1|LCDDispatcher_U0|CurrentState.STATE_DONE~0_combout\ : std_logic;
SIGNAL \U1|LCDDispatcher_U0|CurrentState.state_bit_1~2_combout\ : std_logic;
SIGNAL \U1|LCDDispatcher_U0|CurrentState.state_bit_1~3_combout\ : std_logic;
SIGNAL \U1|LCDDispatcher_U0|CurrentState.state_bit_1~q\ : std_logic;
SIGNAL \U1|LCDDispatcher_U0|WrL~0_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|Col~0_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|Col~1_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|Col~2_combout\ : std_logic;
SIGNAL \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[8]~feeder_combout\ : std_logic;
SIGNAL \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~0_combout\ : std_logic;
SIGNAL \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[7]~feeder_combout\ : std_logic;
SIGNAL \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[6]~feeder_combout\ : std_logic;
SIGNAL \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[5]~feeder_combout\ : std_logic;
SIGNAL \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[4]~feeder_combout\ : std_logic;
SIGNAL \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[3]~feeder_combout\ : std_logic;
SIGNAL \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[2]~feeder_combout\ : std_logic;
SIGNAL \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[1]~feeder_combout\ : std_logic;
SIGNAL \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[0]~feeder_combout\ : std_logic;
SIGNAL \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~0_combout\ : std_logic;
SIGNAL \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~0_combout\ : std_logic;
SIGNAL \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\ : std_logic;
SIGNAL \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~0_combout\ : std_logic;
SIGNAL \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~q\ : std_logic;
SIGNAL \U2|Score_SerialReceiver_U0|ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~0_combout\ : std_logic;
SIGNAL \U2|Score_SerialReceiver_U0|ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~q\ : std_logic;
SIGNAL \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~1_combout\ : std_logic;
SIGNAL \U2|Score_Dispatcher_U0|CurrentState.state_bit_0~0_combout\ : std_logic;
SIGNAL \U2|Score_Dispatcher_U0|CurrentState.state_bit_0~q\ : std_logic;
SIGNAL \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~0_combout\ : std_logic;
SIGNAL \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\ : std_logic;
SIGNAL \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~3_combout\ : std_logic;
SIGNAL \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~q\ : std_logic;
SIGNAL \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_INIT~0_combout\ : std_logic;
SIGNAL \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_INIT~0clkctrl_outclk\ : std_logic;
SIGNAL \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\ : std_logic;
SIGNAL \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~0_combout\ : std_logic;
SIGNAL \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\ : std_logic;
SIGNAL \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~0_combout\ : std_logic;
SIGNAL \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~1_combout\ : std_logic;
SIGNAL \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~0_combout\ : std_logic;
SIGNAL \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~2_combout\ : std_logic;
SIGNAL \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~q\ : std_logic;
SIGNAL \U2|Score_Dispatcher_U0|CurrentState.state_bit_1~0_combout\ : std_logic;
SIGNAL \U2|Score_Dispatcher_U0|CurrentState.state_bit_1~1_combout\ : std_logic;
SIGNAL \U2|Score_Dispatcher_U0|CurrentState.state_bit_1~q\ : std_logic;
SIGNAL \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0_combout\ : std_logic;
SIGNAL \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\ : std_logic;
SIGNAL \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg[6]~feeder_combout\ : std_logic;
SIGNAL \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg[3]~feeder_combout\ : std_logic;
SIGNAL \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg[2]~feeder_combout\ : std_logic;
SIGNAL \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg[1]~feeder_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:in_reg|u1|q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:in_reg|u1|q~q\ : std_logic;
SIGNAL \U4|decoder|dout[6]~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:out_reg|u1|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:0:in_reg|u2|q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:in_reg|u2|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:0:out_reg|u2|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:0:in_reg|u3|q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:in_reg|u3|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:0:out_reg|u3|q~q\ : std_logic;
SIGNAL \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg[0]~feeder_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:in_reg|u0|q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:in_reg|u0|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:0:out_reg|u0|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \U4|clear_reg|q~0_combout\ : std_logic;
SIGNAL \U4|clear_reg|q~1_combout\ : std_logic;
SIGNAL \U4|clear_reg|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[1]~2_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[2]~4_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[2]~5_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[3]~6_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[3]~7_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[4]~8_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[4]~9_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[5]~10_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[5]~11_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[6]~12_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[6]~13_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:in_reg|u3|q~0_combout\ : std_logic;
SIGNAL \U4|decoder|dout[1]~1_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:in_reg|u3|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:1:out_reg|u3|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:1:in_reg|u0|q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:in_reg|u0|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:1:out_reg|u0|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:1:in_reg|u2|q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:in_reg|u2|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:1:out_reg|u2|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:1:in_reg|u1|q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:in_reg|u1|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:1:out_reg|u1|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[1]~2_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[2]~4_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[2]~5_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[3]~6_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[3]~7_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[4]~8_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[4]~9_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[5]~10_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[5]~11_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[6]~12_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[6]~13_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:in_reg|u3|q~0_combout\ : std_logic;
SIGNAL \U4|decoder|dout[2]~2_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:in_reg|u3|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:2:out_reg|u3|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:2:in_reg|u1|q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:in_reg|u1|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:2:out_reg|u1|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:2:in_reg|u0|q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:in_reg|u0|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:2:out_reg|u0|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:2:in_reg|u2|q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:in_reg|u2|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:2:out_reg|u2|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[1]~2_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[2]~4_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[2]~5_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[3]~6_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[3]~7_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[4]~8_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[4]~9_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[5]~10_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[5]~11_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[6]~12_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[6]~13_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:in_reg|u1|q~0_combout\ : std_logic;
SIGNAL \U4|decoder|dout[3]~3_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:in_reg|u1|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:3:out_reg|u1|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:3:in_reg|u0|q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:in_reg|u0|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:3:out_reg|u0|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:3:in_reg|u2|q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:in_reg|u2|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:3:out_reg|u2|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:3:in_reg|u3|q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:in_reg|u3|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:3:out_reg|u3|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[1]~2_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[2]~4_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[2]~5_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[3]~6_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[3]~7_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[4]~8_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[4]~9_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[5]~10_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[5]~11_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[6]~12_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[6]~13_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:in_reg|u3|q~0_combout\ : std_logic;
SIGNAL \U4|decoder|dout[4]~4_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:in_reg|u3|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:4:out_reg|u3|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:4:in_reg|u2|q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:in_reg|u2|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:4:out_reg|u2|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:4:in_reg|u0|q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:in_reg|u0|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:4:out_reg|u0|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:4:in_reg|u1|q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:in_reg|u1|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:4:out_reg|u1|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[1]~2_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[2]~4_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[2]~5_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[3]~6_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[3]~7_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[4]~8_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[4]~9_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[5]~10_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[5]~11_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[6]~12_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[6]~13_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:in_reg|u1|q~0_combout\ : std_logic;
SIGNAL \U4|decoder|dout[5]~5_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:in_reg|u1|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:5:out_reg|u1|q~feeder_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:out_reg|u1|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:5:in_reg|u0|q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:in_reg|u0|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:5:out_reg|u0|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:5:in_reg|u2|q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:in_reg|u2|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:5:out_reg|u2|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:5:in_reg|u3|q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:in_reg|u3|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:5:out_reg|u3|q~q\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[1]~2_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[2]~4_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[2]~5_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[3]~6_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[3]~7_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[4]~8_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[4]~9_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[5]~10_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[5]~11_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[6]~12_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[6]~13_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDO\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \U0|KeyDecode_U0|U0|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U4|decoder|dout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|ALT_INV_Col~2_combout\ : std_logic;
SIGNAL \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|ALT_INV_Col~1_combout\ : std_logic;
SIGNAL \U1|LCDDispatcher_U0|ALT_INV_WrL~0_combout\ : std_logic;
SIGNAL \U2|Score_SerialReceiver_U0|SerialControl_U0|ALT_INV_CurrentState.STATE_INIT~0clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \U1|LCD_SerialReceiver_U0|SerialControl_U0|ALT_INV_CurrentState.STATE_INIT~0clkctrl_outclk\ : std_logic;
SIGNAL \U0|KeyDecode_U0|U0|ALT_INV_tmp~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Reset~input_o\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TMSUTAP\ : std_logic;

BEGIN

ww_altera_reserved_tms <= altera_reserved_tms;
ww_altera_reserved_tck <= altera_reserved_tck;
ww_altera_reserved_tdi <= altera_reserved_tdi;
altera_reserved_tdo <= ww_altera_reserved_tdo;
ww_Linhas <= Linhas;
ww_Mclk <= Mclk;
ww_Reset <= Reset;
ww_Manut <= Manut;
ww_CoinIn <= CoinIn;
WrLOut <= ww_WrLOut;
Col <= ww_Col;
DoutLCD <= ww_DoutLCD;
HexLED0 <= ww_HexLED0;
HexLED1 <= ww_HexLED1;
HexLED2 <= ww_HexLED2;
HexLED3 <= ww_HexLED3;
HexLED4 <= ww_HexLED4;
HexLED5 <= ww_HexLED5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\rtl~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~0_combout\);

\U0|KeyDecode_U0|U0|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U0|KeyDecode_U0|U0|tmp~q\);

\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & 
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\);

\U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0_combout\);

\U0|OutputBuffer_U0|BufferControl_U0|CurrentState.STATE_REGISTER~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.STATE_REGISTER~0_combout\);

\U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_INIT~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_INIT~0_combout\);

\rtl~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~3_combout\);

\rtl~7clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~7_combout\);

\altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \altera_internal_jtag~TCKUTAP\);

\rtl~6clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~6_combout\);

\rtl~5clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~5_combout\);

\rtl~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~2_combout\);

\Mclk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mclk~input_o\);

\rtl~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~1_combout\);

\rtl~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~4_combout\);

\U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_INIT~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_INIT~0_combout\);
\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|ALT_INV_Col~2_combout\ <= NOT \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|Col~2_combout\;
\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|ALT_INV_Col~1_combout\ <= NOT \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|Col~1_combout\;
\U1|LCDDispatcher_U0|ALT_INV_WrL~0_combout\ <= NOT \U1|LCDDispatcher_U0|WrL~0_combout\;
\U2|Score_SerialReceiver_U0|SerialControl_U0|ALT_INV_CurrentState.STATE_INIT~0clkctrl_outclk\ <= NOT \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_INIT~0clkctrl_outclk\;
\ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ <= NOT \altera_internal_jtag~TCKUTAPclkctrl_outclk\;
\U1|LCD_SerialReceiver_U0|SerialControl_U0|ALT_INV_CurrentState.STATE_INIT~0clkctrl_outclk\ <= NOT \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_INIT~0clkctrl_outclk\;
\U0|KeyDecode_U0|U0|ALT_INV_tmp~clkctrl_outclk\ <= NOT \U0|KeyDecode_U0|U0|tmp~clkctrl_outclk\;
\ALT_INV_Reset~input_o\ <= NOT \Reset~input_o\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\;
\ALT_INV_altera_internal_jtag~TMSUTAP\ <= NOT \altera_internal_jtag~TMSUTAP\;

-- Location: FF_X46_Y41_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3));

-- Location: LCCOMB_X45_Y42_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\);

-- Location: LCCOMB_X45_Y42_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\);

-- Location: LCCOMB_X47_Y42_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\);

-- Location: LCCOMB_X46_Y42_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\);

-- Location: LCCOMB_X46_Y41_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\);

-- Location: LCCOMB_X44_Y52_N8
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

-- Location: LCCOMB_X46_Y39_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder_combout\);

-- Location: LCCOMB_X46_Y39_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder_combout\);

-- Location: IOOBUF_X14_Y0_N9
\WrLOut~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|LCDDispatcher_U0|ALT_INV_WrL~0_combout\,
	devoe => ww_devoe,
	o => ww_WrLOut);

-- Location: IOOBUF_X38_Y0_N9
\Col[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|Col~0_combout\,
	devoe => ww_devoe,
	o => ww_Col(0));

-- Location: IOOBUF_X38_Y0_N16
\Col[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|ALT_INV_Col~1_combout\,
	devoe => ww_devoe,
	o => ww_Col(1));

-- Location: IOOBUF_X34_Y0_N23
\Col[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|ALT_INV_Col~2_combout\,
	devoe => ww_devoe,
	o => ww_Col(2));

-- Location: IOOBUF_X24_Y0_N2
\DoutLCD[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg\(0),
	devoe => ww_devoe,
	o => ww_DoutLCD(0));

-- Location: IOOBUF_X54_Y0_N30
\DoutLCD[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg\(1),
	devoe => ww_devoe,
	o => ww_DoutLCD(1));

-- Location: IOOBUF_X46_Y0_N2
\DoutLCD[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg\(2),
	devoe => ww_devoe,
	o => ww_DoutLCD(2));

-- Location: IOOBUF_X40_Y0_N16
\DoutLCD[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg\(3),
	devoe => ww_devoe,
	o => ww_DoutLCD(3));

-- Location: IOOBUF_X36_Y0_N2
\DoutLCD[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg\(4),
	devoe => ww_devoe,
	o => ww_DoutLCD(4));

-- Location: IOOBUF_X36_Y0_N9
\DoutLCD[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg\(5),
	devoe => ww_devoe,
	o => ww_DoutLCD(5));

-- Location: IOOBUF_X34_Y0_N2
\DoutLCD[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg\(6),
	devoe => ww_devoe,
	o => ww_DoutLCD(6));

-- Location: IOOBUF_X20_Y0_N2
\DoutLCD[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg\(7),
	devoe => ww_devoe,
	o => ww_DoutLCD(7));

-- Location: IOOBUF_X20_Y0_N9
\DoutLCD[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg\(8),
	devoe => ww_devoe,
	o => ww_DoutLCD(8));

-- Location: IOOBUF_X58_Y54_N16
\HexLED0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:0:hex_digit|Ndout[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_HexLED0(0));

-- Location: IOOBUF_X74_Y54_N9
\HexLED0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:0:hex_digit|Ndout[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_HexLED0(1));

-- Location: IOOBUF_X60_Y54_N2
\HexLED0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:0:hex_digit|Ndout[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_HexLED0(2));

-- Location: IOOBUF_X62_Y54_N30
\HexLED0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:0:hex_digit|Ndout[3]~7_combout\,
	devoe => ww_devoe,
	o => ww_HexLED0(3));

-- Location: IOOBUF_X74_Y54_N2
\HexLED0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:0:hex_digit|Ndout[4]~9_combout\,
	devoe => ww_devoe,
	o => ww_HexLED0(4));

-- Location: IOOBUF_X74_Y54_N16
\HexLED0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:0:hex_digit|Ndout[5]~11_combout\,
	devoe => ww_devoe,
	o => ww_HexLED0(5));

-- Location: IOOBUF_X74_Y54_N23
\HexLED0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:0:hex_digit|Ndout[6]~13_combout\,
	devoe => ww_devoe,
	o => ww_HexLED0(6));

-- Location: IOOBUF_X66_Y54_N16
\HexLED0[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HexLED0(7));

-- Location: IOOBUF_X69_Y54_N23
\HexLED1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:1:hex_digit|Ndout[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_HexLED1(0));

-- Location: IOOBUF_X78_Y49_N9
\HexLED1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:1:hex_digit|Ndout[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_HexLED1(1));

-- Location: IOOBUF_X78_Y49_N2
\HexLED1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:1:hex_digit|Ndout[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_HexLED1(2));

-- Location: IOOBUF_X60_Y54_N9
\HexLED1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:1:hex_digit|Ndout[3]~7_combout\,
	devoe => ww_devoe,
	o => ww_HexLED1(3));

-- Location: IOOBUF_X64_Y54_N2
\HexLED1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:1:hex_digit|Ndout[4]~9_combout\,
	devoe => ww_devoe,
	o => ww_HexLED1(4));

-- Location: IOOBUF_X66_Y54_N30
\HexLED1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:1:hex_digit|Ndout[5]~11_combout\,
	devoe => ww_devoe,
	o => ww_HexLED1(5));

-- Location: IOOBUF_X69_Y54_N30
\HexLED1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:1:hex_digit|Ndout[6]~13_combout\,
	devoe => ww_devoe,
	o => ww_HexLED1(6));

-- Location: IOOBUF_X60_Y54_N16
\HexLED1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HexLED1(7));

-- Location: IOOBUF_X78_Y44_N9
\HexLED2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:2:hex_digit|Ndout[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_HexLED2(0));

-- Location: IOOBUF_X66_Y54_N2
\HexLED2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:2:hex_digit|Ndout[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_HexLED2(1));

-- Location: IOOBUF_X69_Y54_N16
\HexLED2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:2:hex_digit|Ndout[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_HexLED2(2));

-- Location: IOOBUF_X78_Y44_N2
\HexLED2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:2:hex_digit|Ndout[3]~7_combout\,
	devoe => ww_devoe,
	o => ww_HexLED2(3));

-- Location: IOOBUF_X78_Y43_N2
\HexLED2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:2:hex_digit|Ndout[4]~9_combout\,
	devoe => ww_devoe,
	o => ww_HexLED2(4));

-- Location: IOOBUF_X78_Y35_N2
\HexLED2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:2:hex_digit|Ndout[5]~11_combout\,
	devoe => ww_devoe,
	o => ww_HexLED2(5));

-- Location: IOOBUF_X78_Y43_N9
\HexLED2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:2:hex_digit|Ndout[6]~13_combout\,
	devoe => ww_devoe,
	o => ww_HexLED2(6));

-- Location: IOOBUF_X66_Y54_N9
\HexLED2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HexLED2(7));

-- Location: IOOBUF_X78_Y35_N23
\HexLED3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:3:hex_digit|Ndout[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_HexLED3(0));

-- Location: IOOBUF_X78_Y33_N9
\HexLED3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:3:hex_digit|Ndout[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_HexLED3(1));

-- Location: IOOBUF_X78_Y33_N2
\HexLED3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:3:hex_digit|Ndout[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_HexLED3(2));

-- Location: IOOBUF_X69_Y54_N9
\HexLED3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:3:hex_digit|Ndout[3]~7_combout\,
	devoe => ww_devoe,
	o => ww_HexLED3(3));

-- Location: IOOBUF_X78_Y41_N9
\HexLED3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:3:hex_digit|Ndout[4]~9_combout\,
	devoe => ww_devoe,
	o => ww_HexLED3(4));

-- Location: IOOBUF_X78_Y41_N2
\HexLED3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:3:hex_digit|Ndout[5]~11_combout\,
	devoe => ww_devoe,
	o => ww_HexLED3(5));

-- Location: IOOBUF_X78_Y43_N16
\HexLED3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:3:hex_digit|Ndout[6]~13_combout\,
	devoe => ww_devoe,
	o => ww_HexLED3(6));

-- Location: IOOBUF_X78_Y35_N9
\HexLED3[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HexLED3(7));

-- Location: IOOBUF_X78_Y40_N16
\HexLED4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:4:hex_digit|Ndout[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_HexLED4(0));

-- Location: IOOBUF_X78_Y40_N2
\HexLED4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:4:hex_digit|Ndout[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_HexLED4(1));

-- Location: IOOBUF_X78_Y40_N23
\HexLED4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:4:hex_digit|Ndout[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_HexLED4(2));

-- Location: IOOBUF_X78_Y42_N16
\HexLED4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:4:hex_digit|Ndout[3]~7_combout\,
	devoe => ww_devoe,
	o => ww_HexLED4(3));

-- Location: IOOBUF_X78_Y45_N23
\HexLED4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:4:hex_digit|Ndout[4]~9_combout\,
	devoe => ww_devoe,
	o => ww_HexLED4(4));

-- Location: IOOBUF_X78_Y40_N9
\HexLED4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:4:hex_digit|Ndout[5]~11_combout\,
	devoe => ww_devoe,
	o => ww_HexLED4(5));

-- Location: IOOBUF_X78_Y35_N16
\HexLED4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:4:hex_digit|Ndout[6]~13_combout\,
	devoe => ww_devoe,
	o => ww_HexLED4(6));

-- Location: IOOBUF_X78_Y43_N23
\HexLED4[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HexLED4(7));

-- Location: IOOBUF_X78_Y45_N9
\HexLED5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:5:hex_digit|Ndout[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_HexLED5(0));

-- Location: IOOBUF_X78_Y42_N2
\HexLED5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:5:hex_digit|Ndout[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_HexLED5(1));

-- Location: IOOBUF_X78_Y37_N16
\HexLED5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:5:hex_digit|Ndout[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_HexLED5(2));

-- Location: IOOBUF_X78_Y34_N24
\HexLED5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:5:hex_digit|Ndout[3]~7_combout\,
	devoe => ww_devoe,
	o => ww_HexLED5(3));

-- Location: IOOBUF_X78_Y34_N9
\HexLED5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:5:hex_digit|Ndout[4]~9_combout\,
	devoe => ww_devoe,
	o => ww_HexLED5(4));

-- Location: IOOBUF_X78_Y34_N16
\HexLED5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:5:hex_digit|Ndout[5]~11_combout\,
	devoe => ww_devoe,
	o => ww_HexLED5(5));

-- Location: IOOBUF_X78_Y34_N2
\HexLED5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:5:hex_digit|Ndout[6]~13_combout\,
	devoe => ww_devoe,
	o => ww_HexLED5(6));

-- Location: IOOBUF_X78_Y37_N9
\HexLED5[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HexLED5(7));

-- Location: IOOBUF_X0_Y28_N23
\altera_reserved_tdo~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altera_internal_jtag~TDO\,
	devoe => ww_devoe,
	o => ww_altera_reserved_tdo);

-- Location: IOIBUF_X34_Y0_N29
\Mclk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mclk,
	o => \Mclk~input_o\);

-- Location: CLKCTRL_G19
\Mclk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mclk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mclk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y29_N15
\altera_reserved_tms~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tms,
	o => \altera_reserved_tms~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\altera_reserved_tck~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tck,
	o => \altera_reserved_tck~input_o\);

-- Location: IOIBUF_X0_Y28_N15
\altera_reserved_tdi~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tdi,
	o => \altera_reserved_tdi~input_o\);

-- Location: CLKCTRL_G10
\altera_internal_jtag~TCKUTAPclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\);

-- Location: JTAG_X43_Y40_N0
altera_internal_jtag : fiftyfivenm_jtag
PORT MAP (
	tms => \altera_reserved_tms~input_o\,
	tck => \altera_reserved_tck~input_o\,
	tdi => \altera_reserved_tdi~input_o\,
	tdouser => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\,
	tdo => \altera_internal_jtag~TDO\,
	tmsutap => \altera_internal_jtag~TMSUTAP\,
	tckutap => \altera_internal_jtag~TCKUTAP\,
	tdiutap => \altera_internal_jtag~TDIUTAP\);

-- Location: LCCOMB_X45_Y42_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\);

-- Location: FF_X45_Y42_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9));

-- Location: LCCOMB_X44_Y42_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\);

-- Location: FF_X44_Y42_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0));

-- Location: LCCOMB_X44_Y42_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\);

-- Location: FF_X44_Y42_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1));

-- Location: LCCOMB_X44_Y42_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\);

-- Location: FF_X44_Y42_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2));

-- Location: LCCOMB_X44_Y42_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\);

-- Location: FF_X44_Y42_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0));

-- Location: LCCOMB_X44_Y42_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\);

-- Location: FF_X44_Y42_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10));

-- Location: LCCOMB_X45_Y42_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\);

-- Location: FF_X45_Y42_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13));

-- Location: LCCOMB_X45_Y42_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\);

-- Location: FF_X45_Y42_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14));

-- Location: LCCOMB_X45_Y42_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\);

-- Location: FF_X45_Y42_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11));

-- Location: LCCOMB_X45_Y42_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10),
	datab => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\);

-- Location: FF_X45_Y42_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12));

-- Location: LCCOMB_X45_Y42_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\);

-- Location: FF_X45_Y42_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15));

-- Location: LCCOMB_X45_Y41_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\);

-- Location: FF_X46_Y42_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8));

-- Location: LCCOMB_X45_Y42_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\);

-- Location: FF_X45_Y42_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1));

-- Location: LCCOMB_X45_Y42_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\);

-- Location: FF_X45_Y42_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2));

-- Location: LCCOMB_X45_Y41_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\);

-- Location: FF_X45_Y41_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3));

-- Location: LCCOMB_X45_Y41_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\);

-- Location: FF_X45_Y41_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5));

-- Location: LCCOMB_X45_Y41_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\);

-- Location: FF_X45_Y41_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6));

-- Location: LCCOMB_X45_Y41_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\);

-- Location: FF_X45_Y41_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7));

-- Location: LCCOMB_X45_Y41_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\);

-- Location: FF_X45_Y41_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4));

-- Location: LCCOMB_X46_Y42_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\);

-- Location: LCCOMB_X46_Y41_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\);

-- Location: LCCOMB_X46_Y41_N26
\~QIC_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QIC_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QIC_CREATED_GND~I_combout\);

-- Location: LCCOMB_X47_Y41_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\);

-- Location: FF_X47_Y41_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9));

-- Location: FF_X47_Y41_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8));

-- Location: LCCOMB_X47_Y41_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder_combout\);

-- Location: FF_X47_Y41_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7));

-- Location: LCCOMB_X47_Y41_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder_combout\);

-- Location: FF_X47_Y41_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6));

-- Location: FF_X47_Y41_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5));

-- Location: LCCOMB_X47_Y41_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\);

-- Location: FF_X47_Y41_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4));

-- Location: LCCOMB_X47_Y41_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\);

-- Location: FF_X47_Y41_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3));

-- Location: LCCOMB_X47_Y41_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\);

-- Location: FF_X47_Y41_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2));

-- Location: LCCOMB_X47_Y41_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\);

-- Location: LCCOMB_X47_Y41_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\);

-- Location: FF_X47_Y41_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1));

-- Location: LCCOMB_X47_Y41_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\);

-- Location: FF_X47_Y41_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0));

-- Location: LCCOMB_X47_Y41_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\);

-- Location: LCCOMB_X47_Y41_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\);

-- Location: FF_X47_Y41_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\);

-- Location: LCCOMB_X45_Y41_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\);

-- Location: LCCOMB_X45_Y41_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~feeder_combout\);

-- Location: FF_X45_Y41_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\);

-- Location: LCCOMB_X20_Y33_N0
\U0|KeyDecode_U0|U0|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Add0~0_combout\ = \U0|KeyDecode_U0|U0|count\(0) $ (GND)
-- \U0|KeyDecode_U0|U0|Add0~1\ = CARRY(!\U0|KeyDecode_U0|U0|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|U0|count\(0),
	datad => VCC,
	combout => \U0|KeyDecode_U0|U0|Add0~0_combout\,
	cout => \U0|KeyDecode_U0|U0|Add0~1\);

-- Location: LCCOMB_X19_Y33_N16
\U0|KeyDecode_U0|U0|count[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|count[0]~7_combout\ = !\U0|KeyDecode_U0|U0|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|KeyDecode_U0|U0|Add0~0_combout\,
	combout => \U0|KeyDecode_U0|U0|count[0]~7_combout\);

-- Location: FF_X19_Y33_N17
\U0|KeyDecode_U0|U0|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|KeyDecode_U0|U0|count[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|U0|count\(0));

-- Location: LCCOMB_X20_Y33_N2
\U0|KeyDecode_U0|U0|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Add0~2_combout\ = (\U0|KeyDecode_U0|U0|count\(1) & (!\U0|KeyDecode_U0|U0|Add0~1\)) # (!\U0|KeyDecode_U0|U0|count\(1) & ((\U0|KeyDecode_U0|U0|Add0~1\) # (GND)))
-- \U0|KeyDecode_U0|U0|Add0~3\ = CARRY((!\U0|KeyDecode_U0|U0|Add0~1\) # (!\U0|KeyDecode_U0|U0|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|KeyDecode_U0|U0|count\(1),
	datad => VCC,
	cin => \U0|KeyDecode_U0|U0|Add0~1\,
	combout => \U0|KeyDecode_U0|U0|Add0~2_combout\,
	cout => \U0|KeyDecode_U0|U0|Add0~3\);

-- Location: FF_X20_Y33_N3
\U0|KeyDecode_U0|U0|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|KeyDecode_U0|U0|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|U0|count\(1));

-- Location: LCCOMB_X20_Y33_N4
\U0|KeyDecode_U0|U0|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Add0~4_combout\ = (\U0|KeyDecode_U0|U0|count\(2) & (\U0|KeyDecode_U0|U0|Add0~3\ $ (GND))) # (!\U0|KeyDecode_U0|U0|count\(2) & (!\U0|KeyDecode_U0|U0|Add0~3\ & VCC))
-- \U0|KeyDecode_U0|U0|Add0~5\ = CARRY((\U0|KeyDecode_U0|U0|count\(2) & !\U0|KeyDecode_U0|U0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|KeyDecode_U0|U0|count\(2),
	datad => VCC,
	cin => \U0|KeyDecode_U0|U0|Add0~3\,
	combout => \U0|KeyDecode_U0|U0|Add0~4_combout\,
	cout => \U0|KeyDecode_U0|U0|Add0~5\);

-- Location: FF_X20_Y33_N5
\U0|KeyDecode_U0|U0|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|KeyDecode_U0|U0|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|U0|count\(2));

-- Location: LCCOMB_X20_Y33_N6
\U0|KeyDecode_U0|U0|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Add0~6_combout\ = (\U0|KeyDecode_U0|U0|count\(3) & (!\U0|KeyDecode_U0|U0|Add0~5\)) # (!\U0|KeyDecode_U0|U0|count\(3) & ((\U0|KeyDecode_U0|U0|Add0~5\) # (GND)))
-- \U0|KeyDecode_U0|U0|Add0~7\ = CARRY((!\U0|KeyDecode_U0|U0|Add0~5\) # (!\U0|KeyDecode_U0|U0|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|U0|count\(3),
	datad => VCC,
	cin => \U0|KeyDecode_U0|U0|Add0~5\,
	combout => \U0|KeyDecode_U0|U0|Add0~6_combout\,
	cout => \U0|KeyDecode_U0|U0|Add0~7\);

-- Location: FF_X20_Y33_N7
\U0|KeyDecode_U0|U0|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|KeyDecode_U0|U0|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|U0|count\(3));

-- Location: LCCOMB_X20_Y33_N8
\U0|KeyDecode_U0|U0|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Add0~8_combout\ = (\U0|KeyDecode_U0|U0|count\(4) & (\U0|KeyDecode_U0|U0|Add0~7\ $ (GND))) # (!\U0|KeyDecode_U0|U0|count\(4) & (!\U0|KeyDecode_U0|U0|Add0~7\ & VCC))
-- \U0|KeyDecode_U0|U0|Add0~9\ = CARRY((\U0|KeyDecode_U0|U0|count\(4) & !\U0|KeyDecode_U0|U0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|U0|count\(4),
	datad => VCC,
	cin => \U0|KeyDecode_U0|U0|Add0~7\,
	combout => \U0|KeyDecode_U0|U0|Add0~8_combout\,
	cout => \U0|KeyDecode_U0|U0|Add0~9\);

-- Location: LCCOMB_X21_Y33_N20
\U0|KeyDecode_U0|U0|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|count~0_combout\ = (\U0|KeyDecode_U0|U0|Add0~8_combout\ & ((!\U0|KeyDecode_U0|U0|Equal0~9_combout\) # (!\U0|KeyDecode_U0|U0|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|U0|Add0~8_combout\,
	datab => \U0|KeyDecode_U0|U0|Equal0~4_combout\,
	datac => \U0|KeyDecode_U0|U0|Equal0~9_combout\,
	combout => \U0|KeyDecode_U0|U0|count~0_combout\);

-- Location: FF_X21_Y33_N21
\U0|KeyDecode_U0|U0|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|KeyDecode_U0|U0|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|U0|count\(4));

-- Location: LCCOMB_X20_Y33_N10
\U0|KeyDecode_U0|U0|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Add0~10_combout\ = (\U0|KeyDecode_U0|U0|count\(5) & (!\U0|KeyDecode_U0|U0|Add0~9\)) # (!\U0|KeyDecode_U0|U0|count\(5) & ((\U0|KeyDecode_U0|U0|Add0~9\) # (GND)))
-- \U0|KeyDecode_U0|U0|Add0~11\ = CARRY((!\U0|KeyDecode_U0|U0|Add0~9\) # (!\U0|KeyDecode_U0|U0|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|U0|count\(5),
	datad => VCC,
	cin => \U0|KeyDecode_U0|U0|Add0~9\,
	combout => \U0|KeyDecode_U0|U0|Add0~10_combout\,
	cout => \U0|KeyDecode_U0|U0|Add0~11\);

-- Location: FF_X20_Y33_N11
\U0|KeyDecode_U0|U0|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|KeyDecode_U0|U0|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|U0|count\(5));

-- Location: LCCOMB_X20_Y33_N12
\U0|KeyDecode_U0|U0|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Add0~12_combout\ = (\U0|KeyDecode_U0|U0|count\(6) & (\U0|KeyDecode_U0|U0|Add0~11\ $ (GND))) # (!\U0|KeyDecode_U0|U0|count\(6) & (!\U0|KeyDecode_U0|U0|Add0~11\ & VCC))
-- \U0|KeyDecode_U0|U0|Add0~13\ = CARRY((\U0|KeyDecode_U0|U0|count\(6) & !\U0|KeyDecode_U0|U0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|U0|count\(6),
	datad => VCC,
	cin => \U0|KeyDecode_U0|U0|Add0~11\,
	combout => \U0|KeyDecode_U0|U0|Add0~12_combout\,
	cout => \U0|KeyDecode_U0|U0|Add0~13\);

-- Location: FF_X20_Y33_N13
\U0|KeyDecode_U0|U0|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|KeyDecode_U0|U0|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|U0|count\(6));

-- Location: LCCOMB_X20_Y33_N14
\U0|KeyDecode_U0|U0|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Add0~14_combout\ = (\U0|KeyDecode_U0|U0|count\(7) & (!\U0|KeyDecode_U0|U0|Add0~13\)) # (!\U0|KeyDecode_U0|U0|count\(7) & ((\U0|KeyDecode_U0|U0|Add0~13\) # (GND)))
-- \U0|KeyDecode_U0|U0|Add0~15\ = CARRY((!\U0|KeyDecode_U0|U0|Add0~13\) # (!\U0|KeyDecode_U0|U0|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|U0|count\(7),
	datad => VCC,
	cin => \U0|KeyDecode_U0|U0|Add0~13\,
	combout => \U0|KeyDecode_U0|U0|Add0~14_combout\,
	cout => \U0|KeyDecode_U0|U0|Add0~15\);

-- Location: LCCOMB_X21_Y33_N6
\U0|KeyDecode_U0|U0|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|count~1_combout\ = (\U0|KeyDecode_U0|U0|Add0~14_combout\ & ((!\U0|KeyDecode_U0|U0|Equal0~9_combout\) # (!\U0|KeyDecode_U0|U0|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|U0|Add0~14_combout\,
	datab => \U0|KeyDecode_U0|U0|Equal0~4_combout\,
	datac => \U0|KeyDecode_U0|U0|Equal0~9_combout\,
	combout => \U0|KeyDecode_U0|U0|count~1_combout\);

-- Location: FF_X21_Y33_N7
\U0|KeyDecode_U0|U0|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|KeyDecode_U0|U0|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|U0|count\(7));

-- Location: LCCOMB_X20_Y33_N16
\U0|KeyDecode_U0|U0|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Add0~16_combout\ = (\U0|KeyDecode_U0|U0|count\(8) & (\U0|KeyDecode_U0|U0|Add0~15\ $ (GND))) # (!\U0|KeyDecode_U0|U0|count\(8) & (!\U0|KeyDecode_U0|U0|Add0~15\ & VCC))
-- \U0|KeyDecode_U0|U0|Add0~17\ = CARRY((\U0|KeyDecode_U0|U0|count\(8) & !\U0|KeyDecode_U0|U0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|KeyDecode_U0|U0|count\(8),
	datad => VCC,
	cin => \U0|KeyDecode_U0|U0|Add0~15\,
	combout => \U0|KeyDecode_U0|U0|Add0~16_combout\,
	cout => \U0|KeyDecode_U0|U0|Add0~17\);

-- Location: FF_X20_Y33_N17
\U0|KeyDecode_U0|U0|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|KeyDecode_U0|U0|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|U0|count\(8));

-- Location: LCCOMB_X20_Y33_N18
\U0|KeyDecode_U0|U0|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Add0~18_combout\ = (\U0|KeyDecode_U0|U0|count\(9) & (!\U0|KeyDecode_U0|U0|Add0~17\)) # (!\U0|KeyDecode_U0|U0|count\(9) & ((\U0|KeyDecode_U0|U0|Add0~17\) # (GND)))
-- \U0|KeyDecode_U0|U0|Add0~19\ = CARRY((!\U0|KeyDecode_U0|U0|Add0~17\) # (!\U0|KeyDecode_U0|U0|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|KeyDecode_U0|U0|count\(9),
	datad => VCC,
	cin => \U0|KeyDecode_U0|U0|Add0~17\,
	combout => \U0|KeyDecode_U0|U0|Add0~18_combout\,
	cout => \U0|KeyDecode_U0|U0|Add0~19\);

-- Location: FF_X20_Y33_N19
\U0|KeyDecode_U0|U0|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|KeyDecode_U0|U0|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|U0|count\(9));

-- Location: LCCOMB_X20_Y33_N20
\U0|KeyDecode_U0|U0|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Add0~20_combout\ = (\U0|KeyDecode_U0|U0|count\(10) & (\U0|KeyDecode_U0|U0|Add0~19\ $ (GND))) # (!\U0|KeyDecode_U0|U0|count\(10) & (!\U0|KeyDecode_U0|U0|Add0~19\ & VCC))
-- \U0|KeyDecode_U0|U0|Add0~21\ = CARRY((\U0|KeyDecode_U0|U0|count\(10) & !\U0|KeyDecode_U0|U0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|KeyDecode_U0|U0|count\(10),
	datad => VCC,
	cin => \U0|KeyDecode_U0|U0|Add0~19\,
	combout => \U0|KeyDecode_U0|U0|Add0~20_combout\,
	cout => \U0|KeyDecode_U0|U0|Add0~21\);

-- Location: FF_X20_Y33_N21
\U0|KeyDecode_U0|U0|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|KeyDecode_U0|U0|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|U0|count\(10));

-- Location: LCCOMB_X20_Y33_N22
\U0|KeyDecode_U0|U0|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Add0~22_combout\ = (\U0|KeyDecode_U0|U0|count\(11) & (!\U0|KeyDecode_U0|U0|Add0~21\)) # (!\U0|KeyDecode_U0|U0|count\(11) & ((\U0|KeyDecode_U0|U0|Add0~21\) # (GND)))
-- \U0|KeyDecode_U0|U0|Add0~23\ = CARRY((!\U0|KeyDecode_U0|U0|Add0~21\) # (!\U0|KeyDecode_U0|U0|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|U0|count\(11),
	datad => VCC,
	cin => \U0|KeyDecode_U0|U0|Add0~21\,
	combout => \U0|KeyDecode_U0|U0|Add0~22_combout\,
	cout => \U0|KeyDecode_U0|U0|Add0~23\);

-- Location: FF_X20_Y33_N23
\U0|KeyDecode_U0|U0|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|KeyDecode_U0|U0|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|U0|count\(11));

-- Location: LCCOMB_X20_Y33_N24
\U0|KeyDecode_U0|U0|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Add0~24_combout\ = (\U0|KeyDecode_U0|U0|count\(12) & (\U0|KeyDecode_U0|U0|Add0~23\ $ (GND))) # (!\U0|KeyDecode_U0|U0|count\(12) & (!\U0|KeyDecode_U0|U0|Add0~23\ & VCC))
-- \U0|KeyDecode_U0|U0|Add0~25\ = CARRY((\U0|KeyDecode_U0|U0|count\(12) & !\U0|KeyDecode_U0|U0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|U0|count\(12),
	datad => VCC,
	cin => \U0|KeyDecode_U0|U0|Add0~23\,
	combout => \U0|KeyDecode_U0|U0|Add0~24_combout\,
	cout => \U0|KeyDecode_U0|U0|Add0~25\);

-- Location: LCCOMB_X21_Y33_N4
\U0|KeyDecode_U0|U0|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|count~2_combout\ = (\U0|KeyDecode_U0|U0|Add0~24_combout\ & ((!\U0|KeyDecode_U0|U0|Equal0~4_combout\) # (!\U0|KeyDecode_U0|U0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|U0|Add0~24_combout\,
	datac => \U0|KeyDecode_U0|U0|Equal0~9_combout\,
	datad => \U0|KeyDecode_U0|U0|Equal0~4_combout\,
	combout => \U0|KeyDecode_U0|U0|count~2_combout\);

-- Location: FF_X21_Y33_N5
\U0|KeyDecode_U0|U0|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|KeyDecode_U0|U0|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|U0|count\(12));

-- Location: LCCOMB_X20_Y33_N26
\U0|KeyDecode_U0|U0|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Add0~26_combout\ = (\U0|KeyDecode_U0|U0|count\(13) & (!\U0|KeyDecode_U0|U0|Add0~25\)) # (!\U0|KeyDecode_U0|U0|count\(13) & ((\U0|KeyDecode_U0|U0|Add0~25\) # (GND)))
-- \U0|KeyDecode_U0|U0|Add0~27\ = CARRY((!\U0|KeyDecode_U0|U0|Add0~25\) # (!\U0|KeyDecode_U0|U0|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|U0|count\(13),
	datad => VCC,
	cin => \U0|KeyDecode_U0|U0|Add0~25\,
	combout => \U0|KeyDecode_U0|U0|Add0~26_combout\,
	cout => \U0|KeyDecode_U0|U0|Add0~27\);

-- Location: FF_X20_Y33_N27
\U0|KeyDecode_U0|U0|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|KeyDecode_U0|U0|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|U0|count\(13));

-- Location: LCCOMB_X20_Y33_N28
\U0|KeyDecode_U0|U0|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Add0~28_combout\ = (\U0|KeyDecode_U0|U0|count\(14) & (\U0|KeyDecode_U0|U0|Add0~27\ $ (GND))) # (!\U0|KeyDecode_U0|U0|count\(14) & (!\U0|KeyDecode_U0|U0|Add0~27\ & VCC))
-- \U0|KeyDecode_U0|U0|Add0~29\ = CARRY((\U0|KeyDecode_U0|U0|count\(14) & !\U0|KeyDecode_U0|U0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|KeyDecode_U0|U0|count\(14),
	datad => VCC,
	cin => \U0|KeyDecode_U0|U0|Add0~27\,
	combout => \U0|KeyDecode_U0|U0|Add0~28_combout\,
	cout => \U0|KeyDecode_U0|U0|Add0~29\);

-- Location: LCCOMB_X21_Y33_N14
\U0|KeyDecode_U0|U0|count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|count~3_combout\ = (\U0|KeyDecode_U0|U0|Add0~28_combout\ & ((!\U0|KeyDecode_U0|U0|Equal0~4_combout\) # (!\U0|KeyDecode_U0|U0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|KeyDecode_U0|U0|Add0~28_combout\,
	datac => \U0|KeyDecode_U0|U0|Equal0~9_combout\,
	datad => \U0|KeyDecode_U0|U0|Equal0~4_combout\,
	combout => \U0|KeyDecode_U0|U0|count~3_combout\);

-- Location: FF_X21_Y33_N15
\U0|KeyDecode_U0|U0|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|KeyDecode_U0|U0|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|U0|count\(14));

-- Location: LCCOMB_X20_Y33_N30
\U0|KeyDecode_U0|U0|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Add0~30_combout\ = (\U0|KeyDecode_U0|U0|count\(15) & (!\U0|KeyDecode_U0|U0|Add0~29\)) # (!\U0|KeyDecode_U0|U0|count\(15) & ((\U0|KeyDecode_U0|U0|Add0~29\) # (GND)))
-- \U0|KeyDecode_U0|U0|Add0~31\ = CARRY((!\U0|KeyDecode_U0|U0|Add0~29\) # (!\U0|KeyDecode_U0|U0|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|KeyDecode_U0|U0|count\(15),
	datad => VCC,
	cin => \U0|KeyDecode_U0|U0|Add0~29\,
	combout => \U0|KeyDecode_U0|U0|Add0~30_combout\,
	cout => \U0|KeyDecode_U0|U0|Add0~31\);

-- Location: LCCOMB_X21_Y33_N0
\U0|KeyDecode_U0|U0|count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|count~4_combout\ = (\U0|KeyDecode_U0|U0|Add0~30_combout\ & ((!\U0|KeyDecode_U0|U0|Equal0~4_combout\) # (!\U0|KeyDecode_U0|U0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|KeyDecode_U0|U0|Add0~30_combout\,
	datac => \U0|KeyDecode_U0|U0|Equal0~9_combout\,
	datad => \U0|KeyDecode_U0|U0|Equal0~4_combout\,
	combout => \U0|KeyDecode_U0|U0|count~4_combout\);

-- Location: FF_X21_Y33_N1
\U0|KeyDecode_U0|U0|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|KeyDecode_U0|U0|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|U0|count\(15));

-- Location: LCCOMB_X21_Y33_N10
\U0|KeyDecode_U0|U0|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Equal0~3_combout\ = (!\U0|KeyDecode_U0|U0|count\(13) & (\U0|KeyDecode_U0|U0|count\(14) & (\U0|KeyDecode_U0|U0|count\(12) & \U0|KeyDecode_U0|U0|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|U0|count\(13),
	datab => \U0|KeyDecode_U0|U0|count\(14),
	datac => \U0|KeyDecode_U0|U0|count\(12),
	datad => \U0|KeyDecode_U0|U0|count\(15),
	combout => \U0|KeyDecode_U0|U0|Equal0~3_combout\);

-- Location: LCCOMB_X21_Y33_N24
\U0|KeyDecode_U0|U0|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Equal0~1_combout\ = (!\U0|KeyDecode_U0|U0|count\(5) & (\U0|KeyDecode_U0|U0|count\(4) & (!\U0|KeyDecode_U0|U0|count\(6) & \U0|KeyDecode_U0|U0|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|U0|count\(5),
	datab => \U0|KeyDecode_U0|U0|count\(4),
	datac => \U0|KeyDecode_U0|U0|count\(6),
	datad => \U0|KeyDecode_U0|U0|count\(7),
	combout => \U0|KeyDecode_U0|U0|Equal0~1_combout\);

-- Location: LCCOMB_X21_Y33_N18
\U0|KeyDecode_U0|U0|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Equal0~2_combout\ = (!\U0|KeyDecode_U0|U0|count\(10) & (!\U0|KeyDecode_U0|U0|count\(9) & (!\U0|KeyDecode_U0|U0|count\(8) & !\U0|KeyDecode_U0|U0|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|U0|count\(10),
	datab => \U0|KeyDecode_U0|U0|count\(9),
	datac => \U0|KeyDecode_U0|U0|count\(8),
	datad => \U0|KeyDecode_U0|U0|count\(11),
	combout => \U0|KeyDecode_U0|U0|Equal0~2_combout\);

-- Location: LCCOMB_X21_Y33_N2
\U0|KeyDecode_U0|U0|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Equal0~0_combout\ = (!\U0|KeyDecode_U0|U0|count\(1) & (\U0|KeyDecode_U0|U0|count\(0) & (!\U0|KeyDecode_U0|U0|count\(2) & !\U0|KeyDecode_U0|U0|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|U0|count\(1),
	datab => \U0|KeyDecode_U0|U0|count\(0),
	datac => \U0|KeyDecode_U0|U0|count\(2),
	datad => \U0|KeyDecode_U0|U0|count\(3),
	combout => \U0|KeyDecode_U0|U0|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y33_N28
\U0|KeyDecode_U0|U0|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Equal0~4_combout\ = (\U0|KeyDecode_U0|U0|Equal0~3_combout\ & (\U0|KeyDecode_U0|U0|Equal0~1_combout\ & (\U0|KeyDecode_U0|U0|Equal0~2_combout\ & \U0|KeyDecode_U0|U0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|U0|Equal0~3_combout\,
	datab => \U0|KeyDecode_U0|U0|Equal0~1_combout\,
	datac => \U0|KeyDecode_U0|U0|Equal0~2_combout\,
	datad => \U0|KeyDecode_U0|U0|Equal0~0_combout\,
	combout => \U0|KeyDecode_U0|U0|Equal0~4_combout\);

-- Location: LCCOMB_X20_Y32_N0
\U0|KeyDecode_U0|U0|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Add0~32_combout\ = (\U0|KeyDecode_U0|U0|count\(16) & (\U0|KeyDecode_U0|U0|Add0~31\ $ (GND))) # (!\U0|KeyDecode_U0|U0|count\(16) & (!\U0|KeyDecode_U0|U0|Add0~31\ & VCC))
-- \U0|KeyDecode_U0|U0|Add0~33\ = CARRY((\U0|KeyDecode_U0|U0|count\(16) & !\U0|KeyDecode_U0|U0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|U0|count\(16),
	datad => VCC,
	cin => \U0|KeyDecode_U0|U0|Add0~31\,
	combout => \U0|KeyDecode_U0|U0|Add0~32_combout\,
	cout => \U0|KeyDecode_U0|U0|Add0~33\);

-- Location: LCCOMB_X21_Y33_N30
\U0|KeyDecode_U0|U0|count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|count~5_combout\ = (\U0|KeyDecode_U0|U0|Add0~32_combout\ & ((!\U0|KeyDecode_U0|U0|Equal0~4_combout\) # (!\U0|KeyDecode_U0|U0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|KeyDecode_U0|U0|Add0~32_combout\,
	datac => \U0|KeyDecode_U0|U0|Equal0~9_combout\,
	datad => \U0|KeyDecode_U0|U0|Equal0~4_combout\,
	combout => \U0|KeyDecode_U0|U0|count~5_combout\);

-- Location: FF_X21_Y33_N31
\U0|KeyDecode_U0|U0|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|KeyDecode_U0|U0|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|U0|count\(16));

-- Location: LCCOMB_X20_Y32_N2
\U0|KeyDecode_U0|U0|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Add0~34_combout\ = (\U0|KeyDecode_U0|U0|count\(17) & (!\U0|KeyDecode_U0|U0|Add0~33\)) # (!\U0|KeyDecode_U0|U0|count\(17) & ((\U0|KeyDecode_U0|U0|Add0~33\) # (GND)))
-- \U0|KeyDecode_U0|U0|Add0~35\ = CARRY((!\U0|KeyDecode_U0|U0|Add0~33\) # (!\U0|KeyDecode_U0|U0|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|KeyDecode_U0|U0|count\(17),
	datad => VCC,
	cin => \U0|KeyDecode_U0|U0|Add0~33\,
	combout => \U0|KeyDecode_U0|U0|Add0~34_combout\,
	cout => \U0|KeyDecode_U0|U0|Add0~35\);

-- Location: LCCOMB_X21_Y33_N8
\U0|KeyDecode_U0|U0|count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|count~6_combout\ = (\U0|KeyDecode_U0|U0|Add0~34_combout\ & ((!\U0|KeyDecode_U0|U0|Equal0~4_combout\) # (!\U0|KeyDecode_U0|U0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|U0|Equal0~9_combout\,
	datab => \U0|KeyDecode_U0|U0|Equal0~4_combout\,
	datac => \U0|KeyDecode_U0|U0|Add0~34_combout\,
	combout => \U0|KeyDecode_U0|U0|count~6_combout\);

-- Location: FF_X21_Y33_N9
\U0|KeyDecode_U0|U0|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|KeyDecode_U0|U0|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|U0|count\(17));

-- Location: LCCOMB_X20_Y32_N4
\U0|KeyDecode_U0|U0|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Add0~36_combout\ = (\U0|KeyDecode_U0|U0|count\(18) & (\U0|KeyDecode_U0|U0|Add0~35\ $ (GND))) # (!\U0|KeyDecode_U0|U0|count\(18) & (!\U0|KeyDecode_U0|U0|Add0~35\ & VCC))
-- \U0|KeyDecode_U0|U0|Add0~37\ = CARRY((\U0|KeyDecode_U0|U0|count\(18) & !\U0|KeyDecode_U0|U0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|KeyDecode_U0|U0|count\(18),
	datad => VCC,
	cin => \U0|KeyDecode_U0|U0|Add0~35\,
	combout => \U0|KeyDecode_U0|U0|Add0~36_combout\,
	cout => \U0|KeyDecode_U0|U0|Add0~37\);

-- Location: FF_X20_Y32_N5
\U0|KeyDecode_U0|U0|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|KeyDecode_U0|U0|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|U0|count\(18));

-- Location: LCCOMB_X20_Y32_N6
\U0|KeyDecode_U0|U0|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Add0~38_combout\ = (\U0|KeyDecode_U0|U0|count\(19) & (!\U0|KeyDecode_U0|U0|Add0~37\)) # (!\U0|KeyDecode_U0|U0|count\(19) & ((\U0|KeyDecode_U0|U0|Add0~37\) # (GND)))
-- \U0|KeyDecode_U0|U0|Add0~39\ = CARRY((!\U0|KeyDecode_U0|U0|Add0~37\) # (!\U0|KeyDecode_U0|U0|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|U0|count\(19),
	datad => VCC,
	cin => \U0|KeyDecode_U0|U0|Add0~37\,
	combout => \U0|KeyDecode_U0|U0|Add0~38_combout\,
	cout => \U0|KeyDecode_U0|U0|Add0~39\);

-- Location: FF_X20_Y32_N7
\U0|KeyDecode_U0|U0|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|KeyDecode_U0|U0|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|U0|count\(19));

-- Location: LCCOMB_X20_Y32_N8
\U0|KeyDecode_U0|U0|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Add0~40_combout\ = (\U0|KeyDecode_U0|U0|count\(20) & (\U0|KeyDecode_U0|U0|Add0~39\ $ (GND))) # (!\U0|KeyDecode_U0|U0|count\(20) & (!\U0|KeyDecode_U0|U0|Add0~39\ & VCC))
-- \U0|KeyDecode_U0|U0|Add0~41\ = CARRY((\U0|KeyDecode_U0|U0|count\(20) & !\U0|KeyDecode_U0|U0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|KeyDecode_U0|U0|count\(20),
	datad => VCC,
	cin => \U0|KeyDecode_U0|U0|Add0~39\,
	combout => \U0|KeyDecode_U0|U0|Add0~40_combout\,
	cout => \U0|KeyDecode_U0|U0|Add0~41\);

-- Location: FF_X20_Y32_N9
\U0|KeyDecode_U0|U0|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|KeyDecode_U0|U0|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|U0|count\(20));

-- Location: LCCOMB_X20_Y32_N10
\U0|KeyDecode_U0|U0|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Add0~42_combout\ = (\U0|KeyDecode_U0|U0|count\(21) & (!\U0|KeyDecode_U0|U0|Add0~41\)) # (!\U0|KeyDecode_U0|U0|count\(21) & ((\U0|KeyDecode_U0|U0|Add0~41\) # (GND)))
-- \U0|KeyDecode_U0|U0|Add0~43\ = CARRY((!\U0|KeyDecode_U0|U0|Add0~41\) # (!\U0|KeyDecode_U0|U0|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|U0|count\(21),
	datad => VCC,
	cin => \U0|KeyDecode_U0|U0|Add0~41\,
	combout => \U0|KeyDecode_U0|U0|Add0~42_combout\,
	cout => \U0|KeyDecode_U0|U0|Add0~43\);

-- Location: FF_X20_Y32_N11
\U0|KeyDecode_U0|U0|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|KeyDecode_U0|U0|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|U0|count\(21));

-- Location: LCCOMB_X20_Y32_N12
\U0|KeyDecode_U0|U0|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Add0~44_combout\ = (\U0|KeyDecode_U0|U0|count\(22) & (\U0|KeyDecode_U0|U0|Add0~43\ $ (GND))) # (!\U0|KeyDecode_U0|U0|count\(22) & (!\U0|KeyDecode_U0|U0|Add0~43\ & VCC))
-- \U0|KeyDecode_U0|U0|Add0~45\ = CARRY((\U0|KeyDecode_U0|U0|count\(22) & !\U0|KeyDecode_U0|U0|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|U0|count\(22),
	datad => VCC,
	cin => \U0|KeyDecode_U0|U0|Add0~43\,
	combout => \U0|KeyDecode_U0|U0|Add0~44_combout\,
	cout => \U0|KeyDecode_U0|U0|Add0~45\);

-- Location: FF_X20_Y32_N13
\U0|KeyDecode_U0|U0|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|KeyDecode_U0|U0|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|U0|count\(22));

-- Location: LCCOMB_X20_Y32_N14
\U0|KeyDecode_U0|U0|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Add0~46_combout\ = (\U0|KeyDecode_U0|U0|count\(23) & (!\U0|KeyDecode_U0|U0|Add0~45\)) # (!\U0|KeyDecode_U0|U0|count\(23) & ((\U0|KeyDecode_U0|U0|Add0~45\) # (GND)))
-- \U0|KeyDecode_U0|U0|Add0~47\ = CARRY((!\U0|KeyDecode_U0|U0|Add0~45\) # (!\U0|KeyDecode_U0|U0|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|KeyDecode_U0|U0|count\(23),
	datad => VCC,
	cin => \U0|KeyDecode_U0|U0|Add0~45\,
	combout => \U0|KeyDecode_U0|U0|Add0~46_combout\,
	cout => \U0|KeyDecode_U0|U0|Add0~47\);

-- Location: FF_X20_Y32_N15
\U0|KeyDecode_U0|U0|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|KeyDecode_U0|U0|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|U0|count\(23));

-- Location: LCCOMB_X20_Y32_N16
\U0|KeyDecode_U0|U0|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Add0~48_combout\ = (\U0|KeyDecode_U0|U0|count\(24) & (\U0|KeyDecode_U0|U0|Add0~47\ $ (GND))) # (!\U0|KeyDecode_U0|U0|count\(24) & (!\U0|KeyDecode_U0|U0|Add0~47\ & VCC))
-- \U0|KeyDecode_U0|U0|Add0~49\ = CARRY((\U0|KeyDecode_U0|U0|count\(24) & !\U0|KeyDecode_U0|U0|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|KeyDecode_U0|U0|count\(24),
	datad => VCC,
	cin => \U0|KeyDecode_U0|U0|Add0~47\,
	combout => \U0|KeyDecode_U0|U0|Add0~48_combout\,
	cout => \U0|KeyDecode_U0|U0|Add0~49\);

-- Location: FF_X20_Y32_N17
\U0|KeyDecode_U0|U0|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|KeyDecode_U0|U0|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|U0|count\(24));

-- Location: LCCOMB_X20_Y32_N18
\U0|KeyDecode_U0|U0|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Add0~50_combout\ = (\U0|KeyDecode_U0|U0|count\(25) & (!\U0|KeyDecode_U0|U0|Add0~49\)) # (!\U0|KeyDecode_U0|U0|count\(25) & ((\U0|KeyDecode_U0|U0|Add0~49\) # (GND)))
-- \U0|KeyDecode_U0|U0|Add0~51\ = CARRY((!\U0|KeyDecode_U0|U0|Add0~49\) # (!\U0|KeyDecode_U0|U0|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|KeyDecode_U0|U0|count\(25),
	datad => VCC,
	cin => \U0|KeyDecode_U0|U0|Add0~49\,
	combout => \U0|KeyDecode_U0|U0|Add0~50_combout\,
	cout => \U0|KeyDecode_U0|U0|Add0~51\);

-- Location: FF_X20_Y32_N19
\U0|KeyDecode_U0|U0|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|KeyDecode_U0|U0|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|U0|count\(25));

-- Location: LCCOMB_X20_Y32_N20
\U0|KeyDecode_U0|U0|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Add0~52_combout\ = (\U0|KeyDecode_U0|U0|count\(26) & (\U0|KeyDecode_U0|U0|Add0~51\ $ (GND))) # (!\U0|KeyDecode_U0|U0|count\(26) & (!\U0|KeyDecode_U0|U0|Add0~51\ & VCC))
-- \U0|KeyDecode_U0|U0|Add0~53\ = CARRY((\U0|KeyDecode_U0|U0|count\(26) & !\U0|KeyDecode_U0|U0|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|KeyDecode_U0|U0|count\(26),
	datad => VCC,
	cin => \U0|KeyDecode_U0|U0|Add0~51\,
	combout => \U0|KeyDecode_U0|U0|Add0~52_combout\,
	cout => \U0|KeyDecode_U0|U0|Add0~53\);

-- Location: FF_X20_Y32_N21
\U0|KeyDecode_U0|U0|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|KeyDecode_U0|U0|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|U0|count\(26));

-- Location: LCCOMB_X20_Y32_N22
\U0|KeyDecode_U0|U0|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Add0~54_combout\ = (\U0|KeyDecode_U0|U0|count\(27) & (!\U0|KeyDecode_U0|U0|Add0~53\)) # (!\U0|KeyDecode_U0|U0|count\(27) & ((\U0|KeyDecode_U0|U0|Add0~53\) # (GND)))
-- \U0|KeyDecode_U0|U0|Add0~55\ = CARRY((!\U0|KeyDecode_U0|U0|Add0~53\) # (!\U0|KeyDecode_U0|U0|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|U0|count\(27),
	datad => VCC,
	cin => \U0|KeyDecode_U0|U0|Add0~53\,
	combout => \U0|KeyDecode_U0|U0|Add0~54_combout\,
	cout => \U0|KeyDecode_U0|U0|Add0~55\);

-- Location: FF_X20_Y32_N23
\U0|KeyDecode_U0|U0|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|KeyDecode_U0|U0|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|U0|count\(27));

-- Location: LCCOMB_X20_Y32_N24
\U0|KeyDecode_U0|U0|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Add0~56_combout\ = (\U0|KeyDecode_U0|U0|count\(28) & (\U0|KeyDecode_U0|U0|Add0~55\ $ (GND))) # (!\U0|KeyDecode_U0|U0|count\(28) & (!\U0|KeyDecode_U0|U0|Add0~55\ & VCC))
-- \U0|KeyDecode_U0|U0|Add0~57\ = CARRY((\U0|KeyDecode_U0|U0|count\(28) & !\U0|KeyDecode_U0|U0|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|KeyDecode_U0|U0|count\(28),
	datad => VCC,
	cin => \U0|KeyDecode_U0|U0|Add0~55\,
	combout => \U0|KeyDecode_U0|U0|Add0~56_combout\,
	cout => \U0|KeyDecode_U0|U0|Add0~57\);

-- Location: FF_X20_Y32_N25
\U0|KeyDecode_U0|U0|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|KeyDecode_U0|U0|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|U0|count\(28));

-- Location: LCCOMB_X20_Y32_N26
\U0|KeyDecode_U0|U0|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Add0~58_combout\ = (\U0|KeyDecode_U0|U0|count\(29) & (!\U0|KeyDecode_U0|U0|Add0~57\)) # (!\U0|KeyDecode_U0|U0|count\(29) & ((\U0|KeyDecode_U0|U0|Add0~57\) # (GND)))
-- \U0|KeyDecode_U0|U0|Add0~59\ = CARRY((!\U0|KeyDecode_U0|U0|Add0~57\) # (!\U0|KeyDecode_U0|U0|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|U0|count\(29),
	datad => VCC,
	cin => \U0|KeyDecode_U0|U0|Add0~57\,
	combout => \U0|KeyDecode_U0|U0|Add0~58_combout\,
	cout => \U0|KeyDecode_U0|U0|Add0~59\);

-- Location: FF_X20_Y32_N27
\U0|KeyDecode_U0|U0|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|KeyDecode_U0|U0|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|U0|count\(29));

-- Location: LCCOMB_X20_Y32_N28
\U0|KeyDecode_U0|U0|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Add0~60_combout\ = (\U0|KeyDecode_U0|U0|count\(30) & (\U0|KeyDecode_U0|U0|Add0~59\ $ (GND))) # (!\U0|KeyDecode_U0|U0|count\(30) & (!\U0|KeyDecode_U0|U0|Add0~59\ & VCC))
-- \U0|KeyDecode_U0|U0|Add0~61\ = CARRY((\U0|KeyDecode_U0|U0|count\(30) & !\U0|KeyDecode_U0|U0|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|KeyDecode_U0|U0|count\(30),
	datad => VCC,
	cin => \U0|KeyDecode_U0|U0|Add0~59\,
	combout => \U0|KeyDecode_U0|U0|Add0~60_combout\,
	cout => \U0|KeyDecode_U0|U0|Add0~61\);

-- Location: FF_X20_Y32_N29
\U0|KeyDecode_U0|U0|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|KeyDecode_U0|U0|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|U0|count\(30));

-- Location: LCCOMB_X20_Y32_N30
\U0|KeyDecode_U0|U0|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Add0~62_combout\ = \U0|KeyDecode_U0|U0|count\(31) $ (\U0|KeyDecode_U0|U0|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|U0|count\(31),
	cin => \U0|KeyDecode_U0|U0|Add0~61\,
	combout => \U0|KeyDecode_U0|U0|Add0~62_combout\);

-- Location: FF_X20_Y32_N31
\U0|KeyDecode_U0|U0|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|KeyDecode_U0|U0|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|U0|count\(31));

-- Location: LCCOMB_X21_Y33_N12
\U0|KeyDecode_U0|U0|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Equal0~8_combout\ = (!\U0|KeyDecode_U0|U0|count\(30) & (!\U0|KeyDecode_U0|U0|count\(28) & (!\U0|KeyDecode_U0|U0|count\(29) & !\U0|KeyDecode_U0|U0|count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|U0|count\(30),
	datab => \U0|KeyDecode_U0|U0|count\(28),
	datac => \U0|KeyDecode_U0|U0|count\(29),
	datad => \U0|KeyDecode_U0|U0|count\(31),
	combout => \U0|KeyDecode_U0|U0|Equal0~8_combout\);

-- Location: LCCOMB_X21_Y32_N0
\U0|KeyDecode_U0|U0|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Equal0~6_combout\ = (!\U0|KeyDecode_U0|U0|count\(22) & (!\U0|KeyDecode_U0|U0|count\(20) & (!\U0|KeyDecode_U0|U0|count\(21) & !\U0|KeyDecode_U0|U0|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|U0|count\(22),
	datab => \U0|KeyDecode_U0|U0|count\(20),
	datac => \U0|KeyDecode_U0|U0|count\(21),
	datad => \U0|KeyDecode_U0|U0|count\(23),
	combout => \U0|KeyDecode_U0|U0|Equal0~6_combout\);

-- Location: LCCOMB_X21_Y33_N26
\U0|KeyDecode_U0|U0|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Equal0~5_combout\ = (!\U0|KeyDecode_U0|U0|count\(19) & (\U0|KeyDecode_U0|U0|count\(17) & (\U0|KeyDecode_U0|U0|count\(16) & !\U0|KeyDecode_U0|U0|count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|U0|count\(19),
	datab => \U0|KeyDecode_U0|U0|count\(17),
	datac => \U0|KeyDecode_U0|U0|count\(16),
	datad => \U0|KeyDecode_U0|U0|count\(18),
	combout => \U0|KeyDecode_U0|U0|Equal0~5_combout\);

-- Location: LCCOMB_X22_Y32_N0
\U0|KeyDecode_U0|U0|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Equal0~7_combout\ = (!\U0|KeyDecode_U0|U0|count\(24) & (!\U0|KeyDecode_U0|U0|count\(27) & (!\U0|KeyDecode_U0|U0|count\(26) & !\U0|KeyDecode_U0|U0|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|U0|count\(24),
	datab => \U0|KeyDecode_U0|U0|count\(27),
	datac => \U0|KeyDecode_U0|U0|count\(26),
	datad => \U0|KeyDecode_U0|U0|count\(25),
	combout => \U0|KeyDecode_U0|U0|Equal0~7_combout\);

-- Location: LCCOMB_X21_Y33_N22
\U0|KeyDecode_U0|U0|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|Equal0~9_combout\ = (\U0|KeyDecode_U0|U0|Equal0~8_combout\ & (\U0|KeyDecode_U0|U0|Equal0~6_combout\ & (\U0|KeyDecode_U0|U0|Equal0~5_combout\ & \U0|KeyDecode_U0|U0|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|U0|Equal0~8_combout\,
	datab => \U0|KeyDecode_U0|U0|Equal0~6_combout\,
	datac => \U0|KeyDecode_U0|U0|Equal0~5_combout\,
	datad => \U0|KeyDecode_U0|U0|Equal0~7_combout\,
	combout => \U0|KeyDecode_U0|U0|Equal0~9_combout\);

-- Location: LCCOMB_X21_Y33_N16
\U0|KeyDecode_U0|U0|tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|U0|tmp~0_combout\ = \U0|KeyDecode_U0|U0|tmp~q\ $ (((\U0|KeyDecode_U0|U0|Equal0~9_combout\ & \U0|KeyDecode_U0|U0|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|U0|Equal0~9_combout\,
	datab => \U0|KeyDecode_U0|U0|Equal0~4_combout\,
	datac => \U0|KeyDecode_U0|U0|tmp~q\,
	combout => \U0|KeyDecode_U0|U0|tmp~0_combout\);

-- Location: FF_X21_Y33_N17
\U0|KeyDecode_U0|U0|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|KeyDecode_U0|U0|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|U0|tmp~q\);

-- Location: CLKCTRL_G1
\U0|KeyDecode_U0|U0|tmp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U0|KeyDecode_U0|U0|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U0|KeyDecode_U0|U0|tmp~clkctrl_outclk\);

-- Location: IOIBUF_X14_Y0_N1
\Linhas[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Linhas(0),
	o => \Linhas[0]~input_o\);

-- Location: LCCOMB_X46_Y32_N26
\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~0_combout\ = \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\ $ (((\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\ & 
-- !\U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\,
	datac => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\,
	datad => \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_0~q\,
	combout => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~0_combout\);

-- Location: IOIBUF_X69_Y54_N1
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

-- Location: FF_X46_Y32_N27
\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|KeyDecode_U0|U0|tmp~clkctrl_outclk\,
	d => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\);

-- Location: IOIBUF_X51_Y0_N22
\Linhas[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Linhas(1),
	o => \Linhas[1]~input_o\);

-- Location: LCCOMB_X46_Y32_N24
\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Mux_U0|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Mux_U0|Y~0_combout\ = (!\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\ & ((\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\ & ((\Linhas[1]~input_o\))) # 
-- (!\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\ & (\Linhas[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\,
	datab => \Linhas[0]~input_o\,
	datac => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\,
	datad => \Linhas[1]~input_o\,
	combout => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Mux_U0|Y~0_combout\);

-- Location: IOIBUF_X40_Y0_N22
\Linhas[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Linhas(3),
	o => \Linhas[3]~input_o\);

-- Location: IOIBUF_X46_Y0_N8
\Linhas[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Linhas(2),
	o => \Linhas[2]~input_o\);

-- Location: LCCOMB_X46_Y32_N10
\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Mux_U0|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Mux_U0|Y~1_combout\ = (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\ & ((\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\ & (\Linhas[3]~input_o\)) # 
-- (!\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\ & ((\Linhas[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\,
	datab => \Linhas[3]~input_o\,
	datac => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\,
	datad => \Linhas[2]~input_o\,
	combout => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Mux_U0|Y~1_combout\);

-- Location: LCCOMB_X46_Y32_N18
\U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_1~2_combout\ = (!\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Mux_U0|Y~0_combout\ & (\U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_1~q\ & 
-- !\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Mux_U0|Y~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Mux_U0|Y~0_combout\,
	datac => \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_1~q\,
	datad => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Mux_U0|Y~1_combout\,
	combout => \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_1~2_combout\);

-- Location: LCCOMB_X46_Y32_N22
\U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_1~3_combout\ = (\U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_0~q\ & ((\U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_1~2_combout\) # 
-- ((\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~q\ & !\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_0~q\,
	datab => \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_1~2_combout\,
	datac => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~q\,
	datad => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~q\,
	combout => \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_1~3_combout\);

-- Location: FF_X46_Y32_N23
\U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|KeyDecode_U0|U0|ALT_INV_tmp~clkctrl_outclk\,
	d => \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_1~3_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_1~q\);

-- Location: LCCOMB_X46_Y32_N14
\U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SEARCHING~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SEARCHING~0_combout\ = (!\U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_1~q\ & \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_1~q\,
	datad => \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_0~q\,
	combout => \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SEARCHING~0_combout\);

-- Location: LCCOMB_X47_Y35_N18
\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~0_combout\ = \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\ $ (((!\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~q\ & 
-- \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~q\,
	datab => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~q\,
	datac => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	combout => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~0_combout\);

-- Location: FF_X47_Y35_N19
\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\);

-- Location: LCCOMB_X47_Y35_N30
\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_011~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_011~0_combout\ = (\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~q\ & (!\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~q\ & 
-- !\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~q\,
	datab => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~q\,
	datac => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~q\,
	combout => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_011~0_combout\);

-- Location: LCCOMB_X47_Y35_N24
\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~0_combout\ = \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\ $ (((\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~q\ & 
-- (!\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~q\ & !\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~q\,
	datab => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~q\,
	datac => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	datad => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~q\,
	combout => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~0_combout\);

-- Location: FF_X47_Y35_N25
\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\);

-- Location: LCCOMB_X47_Y35_N14
\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~0_combout\ = \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\ $ (((\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_011~0_combout\ & 
-- \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_011~0_combout\,
	datac => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\,
	datad => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	combout => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~0_combout\);

-- Location: FF_X47_Y35_N15
\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\);

-- Location: LCCOMB_X47_Y35_N2
\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~0_combout\ = \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~q\ $ (((\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_011~0_combout\ & 
-- (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\ & \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_011~0_combout\,
	datab => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	datac => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~q\,
	datad => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\,
	combout => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~0_combout\);

-- Location: FF_X47_Y35_N3
\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~q\);

-- Location: LCCOMB_X47_Y35_N0
\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~0_combout\ = \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\ $ (((!\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~q\ & 
-- (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\ & \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~q\,
	datab => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	datac => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\,
	datad => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~q\,
	combout => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~0_combout\);

-- Location: FF_X47_Y35_N1
\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\);

-- Location: LCCOMB_X47_Y35_N8
\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|Adder_0|FullAdder_U1|CyOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|Adder_0|FullAdder_U1|CyOut~0_combout\ = (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\ & 
-- (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\ & (!\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~q\ & \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	datab => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\,
	datac => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~q\,
	datad => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~q\,
	combout => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|Adder_0|FullAdder_U1|CyOut~0_combout\);

-- Location: LCCOMB_X47_Y35_N4
\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~0_combout\ = \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|Adder_0|FullAdder_U1|CyOut~0_combout\ $ 
-- (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|Adder_0|FullAdder_U1|CyOut~0_combout\,
	datac => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~q\,
	combout => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~0_combout\);

-- Location: FF_X47_Y35_N5
\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~q\);

-- Location: LCCOMB_X47_Y35_N26
\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Compare_U0|Q~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Compare_U0|Q~3_combout\ = (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\ & ((\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~q\ $ 
-- (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~q\)) # (!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\))) # 
-- (!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\ & ((\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\) # (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~q\ 
-- $ (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\,
	datab => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~q\,
	datac => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~q\,
	datad => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\,
	combout => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Compare_U0|Q~3_combout\);

-- Location: LCCOMB_X47_Y35_N12
\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Compare_U0|Q\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Compare_U0|Q~combout\ = (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Compare_U0|Q~3_combout\) # (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\ $ 
-- (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	datac => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Compare_U0|Q~3_combout\,
	datad => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	combout => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Compare_U0|Q~combout\);

-- Location: LCCOMB_X47_Y36_N4
\U0|OutputBuffer_U0|BufferControl_U0|CurrentState.STATE_WAIT_LOAD~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.STATE_WAIT_LOAD~0_combout\ = (\U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_1~q\) # (\U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_1~q\,
	datad => \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_0~q\,
	combout => \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.STATE_WAIT_LOAD~0_combout\);

-- Location: LCCOMB_X47_Y35_N6
\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~0_combout\ = (\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~q\ & ((\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\) # 
-- ((!\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~q\ & !\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~q\)))) # (!\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~q\ & 
-- (!\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~q\ & (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~q\,
	datab => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~q\,
	datac => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\,
	datad => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~q\,
	combout => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~0_combout\);

-- Location: FF_X47_Y35_N7
\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\);

-- Location: LCCOMB_X47_Y36_N30
\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~0_combout\ = (\U0|OutputBuffer_U0|BufferControl_U0|CurrentState.STATE_WAIT_LOAD~0_combout\) # ((\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Compare_U0|Q~combout\ & 
-- (\U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SEARCHING~0_combout\)) # (!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Compare_U0|Q~combout\ & ((!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SEARCHING~0_combout\,
	datab => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Compare_U0|Q~combout\,
	datac => \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.STATE_WAIT_LOAD~0_combout\,
	datad => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\,
	combout => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~0_combout\);

-- Location: LCCOMB_X47_Y36_N0
\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~1_combout\ = (\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~q\ & (((!\U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_0~q\ & 
-- !\U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_1~q\)) # (!\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~q\,
	datab => \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_0~q\,
	datac => \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_1~q\,
	datad => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~q\,
	combout => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~1_combout\);

-- Location: LCCOMB_X46_Y32_N8
\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~2_combout\ = (\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~q\) # ((\U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_0~q\ & 
-- (!\U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_1~q\ & \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_0~q\,
	datab => \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_1~q\,
	datac => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~q\,
	datad => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~q\,
	combout => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~2_combout\);

-- Location: LCCOMB_X47_Y36_N16
\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~3_combout\ = (\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~1_combout\ & (((\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~2_combout\) # 
-- (!\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~q\)))) # (!\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~1_combout\ & (!\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~q\ & 
-- ((\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~2_combout\) # (!\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~0_combout\,
	datab => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~1_combout\,
	datac => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~2_combout\,
	datad => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~q\,
	combout => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~3_combout\);

-- Location: FF_X47_Y36_N17
\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~3_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~q\);

-- Location: LCCOMB_X47_Y36_N20
\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~3_combout\ = (!\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~q\ & (!\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~q\ & 
-- ((\U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_0~q\) # (\U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~q\,
	datab => \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_0~q\,
	datac => \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_1~q\,
	datad => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~q\,
	combout => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~3_combout\);

-- Location: LCCOMB_X46_Y32_N4
\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~0_combout\ = (!\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~q\ & ((\U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_1~q\) # 
-- (!\U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_0~q\,
	datac => \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_1~q\,
	datad => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~q\,
	combout => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~0_combout\);

-- Location: LCCOMB_X47_Y35_N16
\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Compare_U0|Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Compare_U0|Q~2_combout\ = \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\ $ (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	datad => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	combout => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Compare_U0|Q~2_combout\);

-- Location: LCCOMB_X47_Y35_N20
\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~1_combout\ = (\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~0_combout\ & (!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Compare_U0|Q~2_combout\ & 
-- (!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Compare_U0|Q~3_combout\ & !\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~0_combout\,
	datab => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Compare_U0|Q~2_combout\,
	datac => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Compare_U0|Q~3_combout\,
	datad => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\,
	combout => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~1_combout\);

-- Location: LCCOMB_X47_Y36_N26
\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~2_combout\ = (\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~q\ & (\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~q\ $ 
-- (((\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~q\))))) # (!\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~q\ & ((\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~q\) # 
-- ((\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~1_combout\) # (\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~q\,
	datab => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~q\,
	datac => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~1_combout\,
	datad => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~q\,
	combout => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~2_combout\);

-- Location: LCCOMB_X47_Y35_N10
\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~5_combout\ = (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\ & (!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Compare_U0|Q~3_combout\ & 
-- (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\ $ (!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\,
	datab => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	datac => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Compare_U0|Q~3_combout\,
	datad => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	combout => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~5_combout\);

-- Location: LCCOMB_X47_Y36_N6
\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~4_combout\ = (!\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~2_combout\ & (((\U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SEARCHING~0_combout\ & 
-- !\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~5_combout\)) # (!\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SEARCHING~0_combout\,
	datab => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~3_combout\,
	datac => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~2_combout\,
	datad => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~5_combout\,
	combout => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~4_combout\);

-- Location: FF_X47_Y36_N7
\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~4_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~q\);

-- Location: LCCOMB_X47_Y36_N28
\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~3_combout\ = (\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~q\ & (\U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SEARCHING~0_combout\)) # 
-- (!\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~q\ & ((\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Compare_U0|Q~combout\ & (!\U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SEARCHING~0_combout\)) # 
-- (!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Compare_U0|Q~combout\ & ((\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.STATE_SEARCHING~0_combout\,
	datab => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_FFD_U0|Q~q\,
	datac => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Compare_U0|Q~combout\,
	datad => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~q\,
	combout => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~3_combout\);

-- Location: LCCOMB_X47_Y36_N10
\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~2_combout\ = (\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~q\) # ((!\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~q\ & 
-- ((\U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_1~q\) # (\U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_1~q\,
	datab => \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_0~q\,
	datac => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~q\,
	datad => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~q\,
	combout => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~2_combout\);

-- Location: LCCOMB_X47_Y36_N18
\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~4_combout\ = (\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~3_combout\ & ((\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~2_combout\ & 
-- ((\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~q\))) # (!\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~2_combout\ & (!\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~q\)))) # 
-- (!\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~3_combout\ & (\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~q\ & (\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~q\ $ 
-- (!\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~q\,
	datab => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~3_combout\,
	datac => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~2_combout\,
	datad => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~q\,
	combout => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~4_combout\);

-- Location: FF_X47_Y36_N19
\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~4_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~q\);

-- Location: LCCOMB_X46_Y32_N28
\U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_0~0_combout\ = (\U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_1~q\ & ((\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Mux_U0|Y~1_combout\) # 
-- ((\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Mux_U0|Y~0_combout\) # (!\U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_0~q\)))) # (!\U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_1~q\ & 
-- (!\U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_0~q\ & ((\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Mux_U0|Y~1_combout\) # (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Mux_U0|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Mux_U0|Y~1_combout\,
	datab => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Mux_U0|Y~0_combout\,
	datac => \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_1~q\,
	datad => \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_0~q\,
	combout => \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_0~0_combout\);

-- Location: LCCOMB_X46_Y32_N12
\U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_0~1_combout\ = ((\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~q\ & (\U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_0~q\ & 
-- !\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~q\))) # (!\U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~q\,
	datab => \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_0~0_combout\,
	datac => \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_0~q\,
	datad => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~q\,
	combout => \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_0~1_combout\);

-- Location: FF_X46_Y32_N13
\U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|KeyDecode_U0|U0|ALT_INV_tmp~clkctrl_outclk\,
	d => \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_0~1_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_0~q\);

-- Location: LCCOMB_X45_Y32_N2
\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~0_combout\ = \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_0~q\ $ (!\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_0~q\,
	datac => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\,
	combout => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~0_combout\);

-- Location: FF_X45_Y32_N3
\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|KeyDecode_U0|U0|tmp~clkctrl_outclk\,
	d => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\);

-- Location: LCCOMB_X47_Y35_N28
\U0|RingBuffer_U0|RingBufferControl_U0|selPG~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RingBufferControl_U0|selPG~0_combout\ = (!\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~q\ & ((\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~q\) # 
-- (\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~q\,
	datab => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~q\,
	datac => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~q\,
	combout => \U0|RingBuffer_U0|RingBufferControl_U0|selPG~0_combout\);

-- Location: LCCOMB_X46_Y35_N18
\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ = (\U0|RingBuffer_U0|RingBufferControl_U0|selPG~0_combout\ & ((\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\))) # 
-- (!\U0|RingBuffer_U0|RingBufferControl_U0|selPG~0_combout\ & (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U1|Q~q\,
	datac => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U1|Q~q\,
	datad => \U0|RingBuffer_U0|RingBufferControl_U0|selPG~0_combout\,
	combout => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\);

-- Location: LCCOMB_X47_Y36_N8
\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_010~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_010~0_combout\ = (\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~q\ & (!\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~q\ & 
-- \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~q\,
	datab => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~q\,
	datad => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~q\,
	combout => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_010~0_combout\);

-- Location: LCCOMB_X46_Y35_N8
\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ = (\U0|RingBuffer_U0|RingBufferControl_U0|selPG~0_combout\ & ((\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\))) # 
-- (!\U0|RingBuffer_U0|RingBufferControl_U0|selPG~0_combout\ & (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	datac => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U2|Q~q\,
	datad => \U0|RingBuffer_U0|RingBufferControl_U0|selPG~0_combout\,
	combout => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\);

-- Location: LCCOMB_X46_Y35_N4
\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ = (\U0|RingBuffer_U0|RingBufferControl_U0|selPG~0_combout\ & ((\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~q\))) # 
-- (!\U0|RingBuffer_U0|RingBufferControl_U0|selPG~0_combout\ & (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U1|MAC_Cont_Reg_U0|FFD_U0|Q~q\,
	datab => \U0|RingBuffer_U0|RingBufferControl_U0|selPG~0_combout\,
	datad => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Cont_U0|MAC_Cont_Reg_U0|FFD_U0|Q~q\,
	combout => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\);

-- Location: LCCOMB_X45_Y35_N0
\rtl~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~7_combout\ = (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_010~0_combout\ & (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & 
-- \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datab => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_010~0_combout\,
	datac => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datad => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\,
	combout => \rtl~7_combout\);

-- Location: CLKCTRL_G11
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

-- Location: LCCOMB_X46_Y34_N10
\U0|RingBuffer_U0|RAM_U0|ram~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~28_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\)) # (!GLOBAL(\rtl~7clkctrl_outclk\) & ((\U0|RingBuffer_U0|RAM_U0|ram~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\,
	datab => \rtl~7clkctrl_outclk\,
	datad => \U0|RingBuffer_U0|RAM_U0|ram~28_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~28_combout\);

-- Location: LCCOMB_X45_Y35_N30
\rtl~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~6_combout\ = (!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_010~0_combout\ & (!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & 
-- \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datab => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_010~0_combout\,
	datac => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datad => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\,
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

-- Location: LCCOMB_X46_Y35_N6
\U0|RingBuffer_U0|RAM_U0|ram~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~16_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\U0|RingBuffer_U0|RAM_U0|ram~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\,
	datac => \rtl~6clkctrl_outclk\,
	datad => \U0|RingBuffer_U0|RAM_U0|ram~16_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~16_combout\);

-- Location: LCCOMB_X45_Y35_N4
\rtl~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~5_combout\ = (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_010~0_combout\ & (!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & 
-- \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datab => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_010~0_combout\,
	datac => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datad => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\,
	combout => \rtl~5_combout\);

-- Location: CLKCTRL_G18
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

-- Location: LCCOMB_X45_Y35_N18
\U0|RingBuffer_U0|RAM_U0|ram~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~24_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\)) # (!GLOBAL(\rtl~5clkctrl_outclk\) & ((\U0|RingBuffer_U0|RAM_U0|ram~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\,
	datac => \rtl~5clkctrl_outclk\,
	datad => \U0|RingBuffer_U0|RAM_U0|ram~24_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~24_combout\);

-- Location: LCCOMB_X45_Y35_N2
\U0|RingBuffer_U0|RAM_U0|ram~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~32_combout\ = (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (((\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\)))) # 
-- (!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & ((\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & ((\U0|RingBuffer_U0|RAM_U0|ram~24_combout\))) # 
-- (!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (\U0|RingBuffer_U0|RAM_U0|ram~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|RAM_U0|ram~16_combout\,
	datab => \U0|RingBuffer_U0|RAM_U0|ram~24_combout\,
	datac => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datad => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~32_combout\);

-- Location: LCCOMB_X45_Y35_N26
\rtl~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~4_combout\ = (!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_010~0_combout\ & (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & 
-- \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datab => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_010~0_combout\,
	datac => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datad => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\,
	combout => \rtl~4_combout\);

-- Location: CLKCTRL_G0
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

-- Location: LCCOMB_X46_Y34_N0
\U0|RingBuffer_U0|RAM_U0|ram~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~20_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\U0|RingBuffer_U0|RAM_U0|ram~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\,
	datac => \rtl~4clkctrl_outclk\,
	datad => \U0|RingBuffer_U0|RAM_U0|ram~20_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~20_combout\);

-- Location: LCCOMB_X45_Y35_N12
\U0|RingBuffer_U0|RAM_U0|ram~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~33_combout\ = (\U0|RingBuffer_U0|RAM_U0|ram~32_combout\ & ((\U0|RingBuffer_U0|RAM_U0|ram~28_combout\) # ((!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\)))) # 
-- (!\U0|RingBuffer_U0|RAM_U0|ram~32_combout\ & (((\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & \U0|RingBuffer_U0|RAM_U0|ram~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|RAM_U0|ram~28_combout\,
	datab => \U0|RingBuffer_U0|RAM_U0|ram~32_combout\,
	datac => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datad => \U0|RingBuffer_U0|RAM_U0|ram~20_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~33_combout\);

-- Location: LCCOMB_X45_Y35_N16
\rtl~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~3_combout\ = (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_010~0_combout\ & (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & 
-- !\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datab => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_010~0_combout\,
	datac => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datad => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\,
	combout => \rtl~3_combout\);

-- Location: CLKCTRL_G13
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

-- Location: LCCOMB_X44_Y34_N0
\U0|RingBuffer_U0|RAM_U0|ram~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~12_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\)) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\U0|RingBuffer_U0|RAM_U0|ram~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\,
	datac => \rtl~3clkctrl_outclk\,
	datad => \U0|RingBuffer_U0|RAM_U0|ram~12_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~12_combout\);

-- Location: LCCOMB_X45_Y35_N10
\rtl~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_010~0_combout\ & (!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & 
-- !\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datab => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_010~0_combout\,
	datac => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datad => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\,
	combout => \rtl~0_combout\);

-- Location: CLKCTRL_G14
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

-- Location: LCCOMB_X46_Y34_N12
\U0|RingBuffer_U0|RAM_U0|ram~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~8_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\U0|RingBuffer_U0|RAM_U0|ram~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\,
	datac => \rtl~0clkctrl_outclk\,
	datad => \U0|RingBuffer_U0|RAM_U0|ram~8_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~8_combout\);

-- Location: LCCOMB_X45_Y35_N22
\rtl~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~2_combout\ = (!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_010~0_combout\ & (!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & 
-- !\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datab => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_010~0_combout\,
	datac => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datad => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\,
	combout => \rtl~2_combout\);

-- Location: CLKCTRL_G5
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

-- Location: LCCOMB_X45_Y35_N6
\U0|RingBuffer_U0|RAM_U0|ram~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~0_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\U0|RingBuffer_U0|RAM_U0|ram~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\,
	datac => \rtl~2clkctrl_outclk\,
	datad => \U0|RingBuffer_U0|RAM_U0|ram~0_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~0_combout\);

-- Location: LCCOMB_X45_Y35_N28
\rtl~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~1_combout\ = (!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_010~0_combout\ & (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & 
-- !\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datab => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.STATE_010~0_combout\,
	datac => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datad => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\,
	combout => \rtl~1_combout\);

-- Location: CLKCTRL_G17
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

-- Location: LCCOMB_X45_Y35_N20
\U0|RingBuffer_U0|RAM_U0|ram~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~4_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\)) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\U0|RingBuffer_U0|RAM_U0|ram~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\,
	datab => \rtl~1clkctrl_outclk\,
	datad => \U0|RingBuffer_U0|RAM_U0|ram~4_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~4_combout\);

-- Location: LCCOMB_X45_Y35_N14
\U0|RingBuffer_U0|RAM_U0|ram~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~34_combout\ = (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (((\U0|RingBuffer_U0|RAM_U0|ram~4_combout\) # (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\)))) # 
-- (!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (\U0|RingBuffer_U0|RAM_U0|ram~0_combout\ & ((!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|RAM_U0|ram~0_combout\,
	datab => \U0|RingBuffer_U0|RAM_U0|ram~4_combout\,
	datac => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datad => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~34_combout\);

-- Location: LCCOMB_X45_Y35_N24
\U0|RingBuffer_U0|RAM_U0|ram~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~35_combout\ = (\U0|RingBuffer_U0|RAM_U0|ram~34_combout\ & ((\U0|RingBuffer_U0|RAM_U0|ram~12_combout\) # ((!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\)))) # 
-- (!\U0|RingBuffer_U0|RAM_U0|ram~34_combout\ & (((\U0|RingBuffer_U0|RAM_U0|ram~8_combout\ & \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|RAM_U0|ram~12_combout\,
	datab => \U0|RingBuffer_U0|RAM_U0|ram~8_combout\,
	datac => \U0|RingBuffer_U0|RAM_U0|ram~34_combout\,
	datad => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~35_combout\);

-- Location: LCCOMB_X45_Y35_N8
\U0|RingBuffer_U0|RAM_U0|ram~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~36_combout\ = (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & (\U0|RingBuffer_U0|RAM_U0|ram~33_combout\)) # (!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & 
-- ((\U0|RingBuffer_U0|RAM_U0|ram~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|RAM_U0|ram~33_combout\,
	datab => \U0|RingBuffer_U0|RAM_U0|ram~35_combout\,
	datad => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~36_combout\);

-- Location: FF_X45_Y35_N9
\U0|OutputBuffer_U0|OutputRegister_U0|FFD_U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.STATE_REGISTER~0clkctrl_outclk\,
	d => \U0|RingBuffer_U0|RAM_U0|ram~36_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|OutputBuffer_U0|OutputRegister_U0|FFD_U3|Q~q\);

-- Location: LCCOMB_X46_Y39_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \U0|OutputBuffer_U0|OutputRegister_U0|FFD_U3|Q~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\);

-- Location: LCCOMB_X45_Y41_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\);

-- Location: LCCOMB_X46_Y41_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\);

-- Location: FF_X46_Y39_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0));

-- Location: LCCOMB_X46_Y42_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6_combout\);

-- Location: LCCOMB_X45_Y41_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\);

-- Location: FF_X45_Y41_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0));

-- Location: LCCOMB_X45_Y41_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\);

-- Location: LCCOMB_X45_Y41_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\);

-- Location: LCCOMB_X46_Y32_N0
\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~0_combout\ = \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\ $ (((\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\ & 
-- (!\U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_0~q\ & \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\,
	datab => \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_0~q\,
	datac => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\,
	datad => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\,
	combout => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~0_combout\);

-- Location: FF_X46_Y32_N1
\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|KeyDecode_U0|U0|tmp~clkctrl_outclk\,
	d => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\);

-- Location: LCCOMB_X45_Y32_N12
\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Adder_U0|FullAdder_U2|CyOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Adder_U0|FullAdder_U2|CyOut~0_combout\ = (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\ & (!\U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_0~q\ & 
-- (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\ & \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\,
	datab => \U0|KeyDecode_U0|KeyControl_Unit0|CurrentState.state_bit_0~q\,
	datac => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\,
	datad => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD3|Q~q\,
	combout => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Adder_U0|FullAdder_U2|CyOut~0_combout\);

-- Location: LCCOMB_X45_Y32_N0
\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~0_combout\ = \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\ $ (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Adder_U0|FullAdder_U2|CyOut~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\,
	datad => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Adder_U0|FullAdder_U2|CyOut~0_combout\,
	combout => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~0_combout\);

-- Location: FF_X45_Y32_N1
\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|KeyDecode_U0|U0|tmp~clkctrl_outclk\,
	d => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\);

-- Location: LCCOMB_X44_Y33_N12
\U0|RingBuffer_U0|RAM_U0|ram~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~11_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\U0|RingBuffer_U0|RAM_U0|ram~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\,
	datac => \rtl~0clkctrl_outclk\,
	datad => \U0|RingBuffer_U0|RAM_U0|ram~11_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~11_combout\);

-- Location: LCCOMB_X43_Y33_N20
\U0|RingBuffer_U0|RAM_U0|ram~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~15_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\)) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\U0|RingBuffer_U0|RAM_U0|ram~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\,
	datac => \rtl~3clkctrl_outclk\,
	datad => \U0|RingBuffer_U0|RAM_U0|ram~15_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~15_combout\);

-- Location: LCCOMB_X43_Y33_N10
\U0|RingBuffer_U0|RAM_U0|ram~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~3_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\U0|RingBuffer_U0|RAM_U0|ram~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\,
	datac => \rtl~2clkctrl_outclk\,
	datad => \U0|RingBuffer_U0|RAM_U0|ram~3_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~3_combout\);

-- Location: LCCOMB_X43_Y33_N24
\U0|RingBuffer_U0|RAM_U0|ram~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~7_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\)) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\U0|RingBuffer_U0|RAM_U0|ram~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~1clkctrl_outclk\,
	datab => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\,
	datad => \U0|RingBuffer_U0|RAM_U0|ram~7_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~7_combout\);

-- Location: LCCOMB_X43_Y33_N26
\U0|RingBuffer_U0|RAM_U0|ram~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~49_combout\ = (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (((\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\)))) # 
-- (!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & ((\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & ((\U0|RingBuffer_U0|RAM_U0|ram~7_combout\))) # 
-- (!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (\U0|RingBuffer_U0|RAM_U0|ram~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|RAM_U0|ram~3_combout\,
	datab => \U0|RingBuffer_U0|RAM_U0|ram~7_combout\,
	datac => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datad => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~49_combout\);

-- Location: LCCOMB_X44_Y33_N0
\U0|RingBuffer_U0|RAM_U0|ram~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~50_combout\ = (\U0|RingBuffer_U0|RAM_U0|ram~49_combout\ & (((\U0|RingBuffer_U0|RAM_U0|ram~15_combout\) # (!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\)))) # 
-- (!\U0|RingBuffer_U0|RAM_U0|ram~49_combout\ & (\U0|RingBuffer_U0|RAM_U0|ram~11_combout\ & ((\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|RAM_U0|ram~11_combout\,
	datab => \U0|RingBuffer_U0|RAM_U0|ram~15_combout\,
	datac => \U0|RingBuffer_U0|RAM_U0|ram~49_combout\,
	datad => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~50_combout\);

-- Location: LCCOMB_X45_Y32_N24
\U0|RingBuffer_U0|RAM_U0|ram~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~19_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\U0|RingBuffer_U0|RAM_U0|ram~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\,
	datac => \rtl~6clkctrl_outclk\,
	datad => \U0|RingBuffer_U0|RAM_U0|ram~19_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~19_combout\);

-- Location: LCCOMB_X45_Y32_N6
\U0|RingBuffer_U0|RAM_U0|ram~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~27_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\)) # (!GLOBAL(\rtl~5clkctrl_outclk\) & ((\U0|RingBuffer_U0|RAM_U0|ram~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\,
	datac => \rtl~5clkctrl_outclk\,
	datad => \U0|RingBuffer_U0|RAM_U0|ram~27_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~27_combout\);

-- Location: LCCOMB_X45_Y32_N10
\U0|RingBuffer_U0|RAM_U0|ram~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~47_combout\ = (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (((\U0|RingBuffer_U0|RAM_U0|ram~27_combout\) # (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\)))) # 
-- (!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (\U0|RingBuffer_U0|RAM_U0|ram~19_combout\ & ((!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datab => \U0|RingBuffer_U0|RAM_U0|ram~19_combout\,
	datac => \U0|RingBuffer_U0|RAM_U0|ram~27_combout\,
	datad => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~47_combout\);

-- Location: LCCOMB_X45_Y32_N28
\U0|RingBuffer_U0|RAM_U0|ram~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~23_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\U0|RingBuffer_U0|RAM_U0|ram~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\,
	datab => \rtl~4clkctrl_outclk\,
	datad => \U0|RingBuffer_U0|RAM_U0|ram~23_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~23_combout\);

-- Location: LCCOMB_X44_Y33_N10
\U0|RingBuffer_U0|RAM_U0|ram~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~31_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\)) # (!GLOBAL(\rtl~7clkctrl_outclk\) & ((\U0|RingBuffer_U0|RAM_U0|ram~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\,
	datac => \rtl~7clkctrl_outclk\,
	datad => \U0|RingBuffer_U0|RAM_U0|ram~31_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~31_combout\);

-- Location: LCCOMB_X45_Y32_N20
\U0|RingBuffer_U0|RAM_U0|ram~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~48_combout\ = (\U0|RingBuffer_U0|RAM_U0|ram~47_combout\ & (((\U0|RingBuffer_U0|RAM_U0|ram~31_combout\) # (!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\)))) # 
-- (!\U0|RingBuffer_U0|RAM_U0|ram~47_combout\ & (\U0|RingBuffer_U0|RAM_U0|ram~23_combout\ & ((\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|RAM_U0|ram~47_combout\,
	datab => \U0|RingBuffer_U0|RAM_U0|ram~23_combout\,
	datac => \U0|RingBuffer_U0|RAM_U0|ram~31_combout\,
	datad => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~48_combout\);

-- Location: LCCOMB_X45_Y34_N4
\U0|RingBuffer_U0|RAM_U0|ram~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~51_combout\ = (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & ((\U0|RingBuffer_U0|RAM_U0|ram~48_combout\))) # (!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & 
-- (\U0|RingBuffer_U0|RAM_U0|ram~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|RAM_U0|ram~50_combout\,
	datac => \U0|RingBuffer_U0|RAM_U0|ram~48_combout\,
	datad => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~51_combout\);

-- Location: FF_X45_Y34_N5
\U0|OutputBuffer_U0|OutputRegister_U0|FFD_U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.STATE_REGISTER~0clkctrl_outclk\,
	d => \U0|RingBuffer_U0|RAM_U0|ram~51_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|OutputBuffer_U0|OutputRegister_U0|FFD_U0|Q~q\);

-- Location: LCCOMB_X46_Y41_N0
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X46_Y39_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder_combout\);

-- Location: LCCOMB_X46_Y41_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\);

-- Location: FF_X46_Y39_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\);

-- Location: IOIBUF_X51_Y54_N22
\CoinIn~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CoinIn,
	o => \CoinIn~input_o\);

-- Location: LCCOMB_X47_Y39_N24
\U5|NextState~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|NextState~0_combout\ = (\U5|CurrentState~q\ & (!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\)) 
-- # (!\U5|CurrentState~q\ & ((\CoinIn~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\,
	datac => \U5|CurrentState~q\,
	datad => \CoinIn~input_o\,
	combout => \U5|NextState~0_combout\);

-- Location: FF_X47_Y39_N25
\U5|CurrentState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U5|NextState~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CurrentState~q\);

-- Location: LCCOMB_X46_Y39_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \U5|CurrentState~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\);

-- Location: FF_X46_Y39_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6));

-- Location: LCCOMB_X46_Y39_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \~GND~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\);

-- Location: FF_X46_Y39_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5));

-- Location: LCCOMB_X47_Y36_N12
\U0|OutputBuffer_U0|BufferControl_U0|CurrentState.STATE_WAIT_ACK~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.STATE_WAIT_ACK~0_combout\ = (\U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_1~q\ & \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_1~q\,
	datad => \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_0~q\,
	combout => \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.STATE_WAIT_ACK~0_combout\);

-- Location: LCCOMB_X46_Y39_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.STATE_WAIT_ACK~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\);

-- Location: FF_X46_Y39_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4));

-- Location: LCCOMB_X45_Y41_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|OutputBuffer_U0|OutputRegister_U0|FFD_U0|Q~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\);

-- Location: LCCOMB_X45_Y41_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9_combout\);

-- Location: LCCOMB_X45_Y41_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~feeder_combout\);

-- Location: FF_X45_Y41_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3));

-- Location: LCCOMB_X45_Y32_N30
\U0|RingBuffer_U0|RAM_U0|ram~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~22_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\U0|RingBuffer_U0|RAM_U0|ram~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\,
	datac => \U0|RingBuffer_U0|RAM_U0|ram~22_combout\,
	datad => \rtl~4clkctrl_outclk\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~22_combout\);

-- Location: LCCOMB_X45_Y34_N6
\U0|RingBuffer_U0|RAM_U0|ram~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~30_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\)) # (!GLOBAL(\rtl~7clkctrl_outclk\) & ((\U0|RingBuffer_U0|RAM_U0|ram~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~7clkctrl_outclk\,
	datab => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\,
	datad => \U0|RingBuffer_U0|RAM_U0|ram~30_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~30_combout\);

-- Location: LCCOMB_X45_Y32_N18
\U0|RingBuffer_U0|RAM_U0|ram~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~18_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\U0|RingBuffer_U0|RAM_U0|ram~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\,
	datac => \rtl~6clkctrl_outclk\,
	datad => \U0|RingBuffer_U0|RAM_U0|ram~18_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~18_combout\);

-- Location: LCCOMB_X45_Y32_N16
\U0|RingBuffer_U0|RAM_U0|ram~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~26_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\)) # (!GLOBAL(\rtl~5clkctrl_outclk\) & ((\U0|RingBuffer_U0|RAM_U0|ram~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\,
	datac => \rtl~5clkctrl_outclk\,
	datad => \U0|RingBuffer_U0|RAM_U0|ram~26_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~26_combout\);

-- Location: LCCOMB_X45_Y32_N22
\U0|RingBuffer_U0|RAM_U0|ram~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~42_combout\ = (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (((\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\)))) # 
-- (!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & ((\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & ((\U0|RingBuffer_U0|RAM_U0|ram~26_combout\))) # 
-- (!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (\U0|RingBuffer_U0|RAM_U0|ram~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datab => \U0|RingBuffer_U0|RAM_U0|ram~18_combout\,
	datac => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datad => \U0|RingBuffer_U0|RAM_U0|ram~26_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~42_combout\);

-- Location: LCCOMB_X45_Y32_N8
\U0|RingBuffer_U0|RAM_U0|ram~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~43_combout\ = (\U0|RingBuffer_U0|RAM_U0|ram~42_combout\ & (((\U0|RingBuffer_U0|RAM_U0|ram~30_combout\) # (!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\)))) # 
-- (!\U0|RingBuffer_U0|RAM_U0|ram~42_combout\ & (\U0|RingBuffer_U0|RAM_U0|ram~22_combout\ & ((\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|RAM_U0|ram~22_combout\,
	datab => \U0|RingBuffer_U0|RAM_U0|ram~30_combout\,
	datac => \U0|RingBuffer_U0|RAM_U0|ram~42_combout\,
	datad => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~43_combout\);

-- Location: LCCOMB_X45_Y34_N2
\U0|RingBuffer_U0|RAM_U0|ram~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~14_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\)) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\U0|RingBuffer_U0|RAM_U0|ram~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\,
	datac => \rtl~3clkctrl_outclk\,
	datad => \U0|RingBuffer_U0|RAM_U0|ram~14_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~14_combout\);

-- Location: LCCOMB_X43_Y33_N6
\U0|RingBuffer_U0|RAM_U0|ram~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~2_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\U0|RingBuffer_U0|RAM_U0|ram~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\,
	datac => \rtl~2clkctrl_outclk\,
	datad => \U0|RingBuffer_U0|RAM_U0|ram~2_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~2_combout\);

-- Location: LCCOMB_X43_Y33_N12
\U0|RingBuffer_U0|RAM_U0|ram~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~6_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\)) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\U0|RingBuffer_U0|RAM_U0|ram~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~1clkctrl_outclk\,
	datab => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\,
	datad => \U0|RingBuffer_U0|RAM_U0|ram~6_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~6_combout\);

-- Location: LCCOMB_X43_Y33_N0
\U0|RingBuffer_U0|RAM_U0|ram~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~44_combout\ = (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (((\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\) # (\U0|RingBuffer_U0|RAM_U0|ram~6_combout\)))) # 
-- (!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (\U0|RingBuffer_U0|RAM_U0|ram~2_combout\ & (!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|RAM_U0|ram~2_combout\,
	datab => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datac => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datad => \U0|RingBuffer_U0|RAM_U0|ram~6_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~44_combout\);

-- Location: LCCOMB_X45_Y34_N16
\U0|RingBuffer_U0|RAM_U0|ram~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~10_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\U0|RingBuffer_U0|RAM_U0|ram~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\,
	datac => \rtl~0clkctrl_outclk\,
	datad => \U0|RingBuffer_U0|RAM_U0|ram~10_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~10_combout\);

-- Location: LCCOMB_X45_Y34_N24
\U0|RingBuffer_U0|RAM_U0|ram~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~45_combout\ = (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & ((\U0|RingBuffer_U0|RAM_U0|ram~44_combout\ & (\U0|RingBuffer_U0|RAM_U0|ram~14_combout\)) # (!\U0|RingBuffer_U0|RAM_U0|ram~44_combout\ 
-- & ((\U0|RingBuffer_U0|RAM_U0|ram~10_combout\))))) # (!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (((\U0|RingBuffer_U0|RAM_U0|ram~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datab => \U0|RingBuffer_U0|RAM_U0|ram~14_combout\,
	datac => \U0|RingBuffer_U0|RAM_U0|ram~44_combout\,
	datad => \U0|RingBuffer_U0|RAM_U0|ram~10_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~45_combout\);

-- Location: LCCOMB_X45_Y34_N26
\U0|RingBuffer_U0|RAM_U0|ram~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~46_combout\ = (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & (\U0|RingBuffer_U0|RAM_U0|ram~43_combout\)) # (!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & 
-- ((\U0|RingBuffer_U0|RAM_U0|ram~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|RAM_U0|ram~43_combout\,
	datab => \U0|RingBuffer_U0|RAM_U0|ram~45_combout\,
	datad => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~46_combout\);

-- Location: FF_X45_Y34_N27
\U0|OutputBuffer_U0|OutputRegister_U0|FFD_U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.STATE_REGISTER~0clkctrl_outclk\,
	d => \U0|RingBuffer_U0|RAM_U0|ram~46_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|OutputBuffer_U0|OutputRegister_U0|FFD_U1|Q~q\);

-- Location: LCCOMB_X45_Y41_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datac => \U0|OutputBuffer_U0|OutputRegister_U0|FFD_U1|Q~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\);

-- Location: FF_X45_Y41_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2));

-- Location: LCCOMB_X46_Y42_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\);

-- Location: LCCOMB_X46_Y42_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\);

-- Location: LCCOMB_X46_Y42_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\);

-- Location: LCCOMB_X46_Y42_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\);

-- Location: FF_X46_Y42_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1));

-- Location: LCCOMB_X46_Y42_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4_combout\);

-- Location: LCCOMB_X45_Y42_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\);

-- Location: FF_X45_Y42_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2));

-- Location: LCCOMB_X44_Y42_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\);

-- Location: FF_X44_Y42_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\);

-- Location: FF_X46_Y41_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\,
	asdata => \~QIC_CREATED_GND~I_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8));

-- Location: IOIBUF_X51_Y54_N29
\Manut~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Manut,
	o => \Manut~input_o\);

-- Location: LCCOMB_X46_Y39_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \Manut~input_o\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13_combout\);

-- Location: FF_X46_Y39_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7));

-- Location: LCCOMB_X46_Y39_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\);

-- Location: FF_X46_Y39_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\);

-- Location: LCCOMB_X47_Y36_N14
\U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_0~0_combout\ = (\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~q\ & (\U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~q\ & 
-- (!\U0|OutputBuffer_U0|BufferControl_U0|CurrentState.STATE_WAIT_LOAD~0_combout\ & \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_0~q\,
	datab => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_2~q\,
	datac => \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.STATE_WAIT_LOAD~0_combout\,
	datad => \U0|RingBuffer_U0|RingBufferControl_U0|CurrentState.state_bit_1~q\,
	combout => \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_0~0_combout\);

-- Location: LCCOMB_X47_Y36_N24
\U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_0~1_combout\ = (\U0|OutputBuffer_U0|BufferControl_U0|CurrentState.STATE_REGISTER~0_combout\) # ((\U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_0~0_combout\) # 
-- ((!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\ & 
-- \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.STATE_WAIT_ACK~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.STATE_REGISTER~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\,
	datac => \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_0~0_combout\,
	datad => \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.STATE_WAIT_ACK~0_combout\,
	combout => \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_0~1_combout\);

-- Location: FF_X47_Y36_N25
\U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_0~1_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_0~q\);

-- Location: LCCOMB_X47_Y36_N2
\U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_1~0_combout\ = (\U0|OutputBuffer_U0|BufferControl_U0|CurrentState.STATE_REGISTER~0_combout\) # ((\U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_1~q\ & 
-- ((\U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_0~q\) # (\auto_hub
-- |instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.STATE_REGISTER~0_combout\,
	datab => \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_0~q\,
	datac => \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_1~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\,
	combout => \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_1~0_combout\);

-- Location: FF_X47_Y36_N3
\U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_1~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_1~q\);

-- Location: LCCOMB_X47_Y36_N22
\U0|OutputBuffer_U0|BufferControl_U0|CurrentState.STATE_REGISTER~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.STATE_REGISTER~0_combout\ = LCELL((!\U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_1~q\ & \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_1~q\,
	datad => \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.state_bit_0~q\,
	combout => \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.STATE_REGISTER~0_combout\);

-- Location: CLKCTRL_G7
\U0|OutputBuffer_U0|BufferControl_U0|CurrentState.STATE_REGISTER~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.STATE_REGISTER~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.STATE_REGISTER~0clkctrl_outclk\);

-- Location: LCCOMB_X45_Y34_N10
\U0|RingBuffer_U0|RAM_U0|ram~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~9_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\U0|RingBuffer_U0|RAM_U0|ram~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\,
	datac => \rtl~0clkctrl_outclk\,
	datad => \U0|RingBuffer_U0|RAM_U0|ram~9_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~9_combout\);

-- Location: LCCOMB_X45_Y34_N12
\U0|RingBuffer_U0|RAM_U0|ram~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~13_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\)) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\U0|RingBuffer_U0|RAM_U0|ram~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\,
	datac => \rtl~3clkctrl_outclk\,
	datad => \U0|RingBuffer_U0|RAM_U0|ram~13_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~13_combout\);

-- Location: LCCOMB_X46_Y32_N6
\U0|RingBuffer_U0|RAM_U0|ram~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~1_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\U0|RingBuffer_U0|RAM_U0|ram~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\,
	datac => \rtl~2clkctrl_outclk\,
	datad => \U0|RingBuffer_U0|RAM_U0|ram~1_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~1_combout\);

-- Location: LCCOMB_X45_Y33_N10
\U0|RingBuffer_U0|RAM_U0|ram~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~5_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\)) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\U0|RingBuffer_U0|RAM_U0|ram~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\,
	datac => \rtl~1clkctrl_outclk\,
	datad => \U0|RingBuffer_U0|RAM_U0|ram~5_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~5_combout\);

-- Location: LCCOMB_X45_Y33_N12
\U0|RingBuffer_U0|RAM_U0|ram~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~39_combout\ = (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (((\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\) # (\U0|RingBuffer_U0|RAM_U0|ram~5_combout\)))) # 
-- (!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\ & (\U0|RingBuffer_U0|RAM_U0|ram~1_combout\ & (!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|RAM_U0|ram~1_combout\,
	datab => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	datac => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datad => \U0|RingBuffer_U0|RAM_U0|ram~5_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~39_combout\);

-- Location: LCCOMB_X45_Y34_N22
\U0|RingBuffer_U0|RAM_U0|ram~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~40_combout\ = (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & ((\U0|RingBuffer_U0|RAM_U0|ram~39_combout\ & ((\U0|RingBuffer_U0|RAM_U0|ram~13_combout\))) # 
-- (!\U0|RingBuffer_U0|RAM_U0|ram~39_combout\ & (\U0|RingBuffer_U0|RAM_U0|ram~9_combout\)))) # (!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (((\U0|RingBuffer_U0|RAM_U0|ram~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|RAM_U0|ram~9_combout\,
	datab => \U0|RingBuffer_U0|RAM_U0|ram~13_combout\,
	datac => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datad => \U0|RingBuffer_U0|RAM_U0|ram~39_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~40_combout\);

-- Location: LCCOMB_X45_Y33_N6
\U0|RingBuffer_U0|RAM_U0|ram~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~25_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\)) # (!GLOBAL(\rtl~5clkctrl_outclk\) & ((\U0|RingBuffer_U0|RAM_U0|ram~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\,
	datac => \rtl~5clkctrl_outclk\,
	datad => \U0|RingBuffer_U0|RAM_U0|ram~25_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~25_combout\);

-- Location: LCCOMB_X45_Y33_N16
\U0|RingBuffer_U0|RAM_U0|ram~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~17_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\U0|RingBuffer_U0|RAM_U0|ram~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\,
	datab => \rtl~6clkctrl_outclk\,
	datad => \U0|RingBuffer_U0|RAM_U0|ram~17_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~17_combout\);

-- Location: LCCOMB_X45_Y33_N24
\U0|RingBuffer_U0|RAM_U0|ram~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~37_combout\ = (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & ((\U0|RingBuffer_U0|RAM_U0|ram~25_combout\) # ((\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\)))) # 
-- (!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\ & (((\U0|RingBuffer_U0|RAM_U0|ram~17_combout\ & !\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|RAM_U0|ram~25_combout\,
	datab => \U0|RingBuffer_U0|RAM_U0|ram~17_combout\,
	datac => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[1]~1_combout\,
	datad => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~37_combout\);

-- Location: LCCOMB_X46_Y33_N18
\U0|RingBuffer_U0|RAM_U0|ram~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~29_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\)) # (!GLOBAL(\rtl~7clkctrl_outclk\) & ((\U0|RingBuffer_U0|RAM_U0|ram~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\,
	datac => \rtl~7clkctrl_outclk\,
	datad => \U0|RingBuffer_U0|RAM_U0|ram~29_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~29_combout\);

-- Location: LCCOMB_X46_Y33_N24
\U0|RingBuffer_U0|RAM_U0|ram~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~21_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\U0|RingBuffer_U0|RAM_U0|ram~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD2|Q~q\,
	datac => \rtl~4clkctrl_outclk\,
	datad => \U0|RingBuffer_U0|RAM_U0|ram~21_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~21_combout\);

-- Location: LCCOMB_X45_Y33_N26
\U0|RingBuffer_U0|RAM_U0|ram~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~38_combout\ = (\U0|RingBuffer_U0|RAM_U0|ram~37_combout\ & ((\U0|RingBuffer_U0|RAM_U0|ram~29_combout\) # ((!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\)))) # 
-- (!\U0|RingBuffer_U0|RAM_U0|ram~37_combout\ & (((\U0|RingBuffer_U0|RAM_U0|ram~21_combout\ & \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|RAM_U0|ram~37_combout\,
	datab => \U0|RingBuffer_U0|RAM_U0|ram~29_combout\,
	datac => \U0|RingBuffer_U0|RAM_U0|ram~21_combout\,
	datad => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[0]~0_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~38_combout\);

-- Location: LCCOMB_X45_Y34_N0
\U0|RingBuffer_U0|RAM_U0|ram~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|RingBuffer_U0|RAM_U0|ram~41_combout\ = (\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & ((\U0|RingBuffer_U0|RAM_U0|ram~38_combout\))) # (!\U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\ & 
-- (\U0|RingBuffer_U0|RAM_U0|ram~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|RingBuffer_U0|RAM_U0|ram~40_combout\,
	datac => \U0|RingBuffer_U0|RAM_U0|ram~38_combout\,
	datad => \U0|RingBuffer_U0|MemoryAddressControl_U0|MAC_Mux_U0|Address[2]~2_combout\,
	combout => \U0|RingBuffer_U0|RAM_U0|ram~41_combout\);

-- Location: FF_X45_Y34_N1
\U0|OutputBuffer_U0|OutputRegister_U0|FFD_U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|OutputBuffer_U0|BufferControl_U0|CurrentState.STATE_REGISTER~0clkctrl_outclk\,
	d => \U0|RingBuffer_U0|RAM_U0|ram~41_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|OutputBuffer_U0|OutputRegister_U0|FFD_U2|Q~q\);

-- Location: LCCOMB_X46_Y39_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|OutputBuffer_U0|OutputRegister_U0|FFD_U2|Q~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\);

-- Location: FF_X46_Y39_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1));

-- Location: LCCOMB_X45_Y43_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datad => VCC,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~5_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~6\);

-- Location: LCCOMB_X45_Y43_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~8\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~9_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~10\);

-- Location: LCCOMB_X45_Y43_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~10\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~11_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~12\);

-- Location: LCCOMB_X47_Y41_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\);

-- Location: FF_X47_Y41_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\);

-- Location: LCCOMB_X46_Y42_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~14_combout\);

-- Location: FF_X45_Y43_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~11_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3));

-- Location: LCCOMB_X45_Y43_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\);

-- Location: LCCOMB_X45_Y43_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~12\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~15_combout\);

-- Location: FF_X45_Y43_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~15_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4));

-- Location: LCCOMB_X47_Y42_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\);

-- Location: LCCOMB_X45_Y43_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~13_combout\);

-- Location: FF_X45_Y43_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~5_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0));

-- Location: LCCOMB_X45_Y43_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~6\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~7_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~8\);

-- Location: FF_X45_Y43_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~7_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1));

-- Location: FF_X45_Y43_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~9_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2));

-- Location: LCCOMB_X45_Y43_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\);

-- Location: LCCOMB_X45_Y43_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\);

-- Location: LCCOMB_X45_Y43_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~19\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~19_combout\);

-- Location: LCCOMB_X45_Y42_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\);

-- Location: LCCOMB_X46_Y42_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\);

-- Location: LCCOMB_X45_Y42_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\);

-- Location: FF_X45_Y42_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3));

-- Location: LCCOMB_X45_Y42_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\);

-- Location: FF_X45_Y42_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2));

-- Location: LCCOMB_X45_Y42_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\);

-- Location: FF_X45_Y42_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1));

-- Location: LCCOMB_X45_Y42_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\);

-- Location: FF_X45_Y42_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(0));

-- Location: LCCOMB_X46_Y43_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder_combout\);

-- Location: LCCOMB_X46_Y42_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\);

-- Location: FF_X46_Y43_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(0));

-- Location: LCCOMB_X46_Y43_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~11_combout\);

-- Location: LCCOMB_X46_Y43_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~11_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~12_combout\);

-- Location: LCCOMB_X46_Y43_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~19_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~12_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\);

-- Location: LCCOMB_X46_Y43_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder_combout\);

-- Location: FF_X46_Y43_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(1));

-- Location: LCCOMB_X46_Y43_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~20\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~20_combout\);

-- Location: LCCOMB_X46_Y43_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~21\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~20_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~21_combout\);

-- Location: LCCOMB_X46_Y43_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~12_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~21_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\);

-- Location: LCCOMB_X46_Y43_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]~feeder_combout\);

-- Location: FF_X46_Y43_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(2));

-- Location: LCCOMB_X45_Y43_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15_combout\);

-- Location: LCCOMB_X45_Y43_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14_combout\);

-- Location: LCCOMB_X45_Y43_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~16\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~16_combout\);

-- Location: LCCOMB_X46_Y43_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~16_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~12_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\);

-- Location: LCCOMB_X45_Y43_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\);

-- Location: LCCOMB_X45_Y43_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~17\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~17_combout\);

-- Location: LCCOMB_X45_Y43_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~18\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~17_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~18_combout\);

-- Location: LCCOMB_X46_Y43_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder_combout\);

-- Location: FF_X46_Y43_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(3));

-- Location: LCCOMB_X46_Y43_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~18_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~12_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\);

-- Location: LCCOMB_X46_Y43_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\);

-- Location: LCCOMB_X46_Y43_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\);

-- Location: FF_X46_Y43_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(3));

-- Location: FF_X46_Y43_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(3),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(2));

-- Location: FF_X46_Y43_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(2),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(1));

-- Location: FF_X46_Y43_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(1),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(0));

-- Location: LCCOMB_X47_Y42_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\);

-- Location: FF_X47_Y42_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(3));

-- Location: LCCOMB_X47_Y42_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\);

-- Location: FF_X47_Y42_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(2));

-- Location: LCCOMB_X47_Y42_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\);

-- Location: FF_X47_Y42_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(1));

-- Location: LCCOMB_X47_Y42_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\);

-- Location: FF_X47_Y42_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(0));

-- Location: LCCOMB_X47_Y42_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\);

-- Location: LCCOMB_X49_Y42_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datad => VCC,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~10\);

-- Location: LCCOMB_X49_Y42_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~10\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~12\);

-- Location: LCCOMB_X47_Y42_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\);

-- Location: FF_X49_Y42_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1));

-- Location: LCCOMB_X49_Y42_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~12\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~15\);

-- Location: FF_X49_Y42_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2));

-- Location: LCCOMB_X49_Y42_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\);

-- Location: FF_X49_Y42_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0));

-- Location: LCCOMB_X49_Y42_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~15\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~17\);

-- Location: FF_X49_Y42_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3));

-- Location: LCCOMB_X49_Y42_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~17\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18_combout\);

-- Location: FF_X49_Y42_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4));

-- Location: LCCOMB_X49_Y42_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\);

-- Location: LCCOMB_X49_Y42_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\);

-- Location: LCCOMB_X49_Y42_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\);

-- Location: LCCOMB_X49_Y42_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13_combout\);

-- Location: LCCOMB_X49_Y42_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14_combout\);

-- Location: LCCOMB_X47_Y42_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\);

-- Location: FF_X49_Y42_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(3));

-- Location: LCCOMB_X49_Y42_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\);

-- Location: LCCOMB_X49_Y42_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\);

-- Location: LCCOMB_X47_Y42_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\);

-- Location: LCCOMB_X49_Y42_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\);

-- Location: FF_X49_Y42_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(2));

-- Location: LCCOMB_X49_Y42_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\);

-- Location: FF_X49_Y42_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(1));

-- Location: LCCOMB_X47_Y42_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\);

-- Location: FF_X47_Y42_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(0));

-- Location: LCCOMB_X47_Y42_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\);

-- Location: LCCOMB_X46_Y42_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datab => \~GND~combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\);

-- Location: LCCOMB_X46_Y42_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\);

-- Location: LCCOMB_X46_Y42_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\);

-- Location: FF_X46_Y42_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\);

-- Location: LCCOMB_X46_Y42_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\);

-- Location: LCCOMB_X47_Y42_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\);

-- Location: LCCOMB_X47_Y42_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\);

-- Location: LCCOMB_X46_Y42_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\);

-- Location: FF_X46_Y42_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\);

-- Location: LCCOMB_X44_Y41_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder_combout\);

-- Location: FF_X44_Y41_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\);

-- Location: CLKCTRL_G12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~clkctrl_outclk\);

-- Location: LCCOMB_X42_Y19_N18
\U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~0_combout\ = !\U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\,
	combout => \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~0_combout\);

-- Location: LCCOMB_X42_Y20_N28
\U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WAITINGACCEPT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WAITINGACCEPT~0_combout\ = (!\U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~q\ & \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~q\,
	datad => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~q\,
	combout => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WAITINGACCEPT~0_combout\);

-- Location: LCCOMB_X42_Y19_N6
\U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~2_combout\ = (\U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~q\ & \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~q\,
	datad => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~q\,
	combout => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~2_combout\);

-- Location: LCCOMB_X46_Y39_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder_combout\);

-- Location: FF_X46_Y39_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\);

-- Location: LCCOMB_X42_Y19_N24
\U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~0_combout\ = \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~q\ $ (((\U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\ & 
-- (\U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\ & \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\,
	datab => \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\,
	datac => \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~q\,
	datad => \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\,
	combout => \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~0_combout\);

-- Location: FF_X42_Y19_N25
\U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~clkctrl_outclk\,
	d => \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~0_combout\,
	clrn => \U1|LCD_SerialReceiver_U0|SerialControl_U0|ALT_INV_CurrentState.STATE_INIT~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~q\);

-- Location: LCCOMB_X43_Y19_N24
\U1|LCD_SerialReceiver_U0|ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LCD_SerialReceiver_U0|ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~0_combout\ = 
-- !\U1|LCD_SerialReceiver_U0|ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|LCD_SerialReceiver_U0|ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~q\,
	combout => \U1|LCD_SerialReceiver_U0|ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~0_combout\);

-- Location: LCCOMB_X46_Y39_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder_combout\);

-- Location: FF_X46_Y39_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\);

-- Location: FF_X43_Y19_N25
\U1|LCD_SerialReceiver_U0|ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~clkctrl_outclk\,
	d => \U1|LCD_SerialReceiver_U0|ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~0_combout\,
	clrn => \U1|LCD_SerialReceiver_U0|SerialControl_U0|ALT_INV_CurrentState.STATE_INIT~0clkctrl_outclk\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|LCD_SerialReceiver_U0|ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~q\);

-- Location: LCCOMB_X42_Y19_N16
\U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~2_combout\ = (!\U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\ & (\U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~q\ & 
-- (\U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\ & !\U1|LCD_SerialReceiver_U0|ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\,
	datab => \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~q\,
	datac => \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\,
	datad => \U1|LCD_SerialReceiver_U0|ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~q\,
	combout => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~2_combout\);

-- Location: LCCOMB_X42_Y19_N2
\U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~3_combout\ = (\U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~2_combout\ & (((!\U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\ & 
-- \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~2_combout\)) # 
-- (!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~2_combout\,
	datab => \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\,
	datad => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~2_combout\,
	combout => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~3_combout\);

-- Location: LCCOMB_X42_Y20_N12
\U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~4_combout\ = (\U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~1_combout\) # ((\U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~3_combout\) # 
-- ((\U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WAITINGACCEPT~0_combout\ & !\U1|LCDDispatcher_U0|CurrentState.STATE_DONE~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~1_combout\,
	datab => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WAITINGACCEPT~0_combout\,
	datac => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~3_combout\,
	datad => \U1|LCDDispatcher_U0|CurrentState.STATE_DONE~0_combout\,
	combout => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~4_combout\);

-- Location: FF_X42_Y20_N13
\U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~4_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~q\);

-- Location: LCCOMB_X42_Y19_N20
\U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_INIT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_INIT~0_combout\ = (!\U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~q\ & !\U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~q\,
	datad => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~q\,
	combout => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_INIT~0_combout\);

-- Location: CLKCTRL_G16
\U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_INIT~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_INIT~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_INIT~0clkctrl_outclk\);

-- Location: FF_X42_Y19_N19
\U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~clkctrl_outclk\,
	d => \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~0_combout\,
	clrn => \U1|LCD_SerialReceiver_U0|SerialControl_U0|ALT_INV_CurrentState.STATE_INIT~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\);

-- Location: LCCOMB_X42_Y19_N22
\U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~0_combout\ = \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\ $ (\U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\,
	datad => \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\,
	combout => \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~0_combout\);

-- Location: FF_X42_Y19_N23
\U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~clkctrl_outclk\,
	d => \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~0_combout\,
	clrn => \U1|LCD_SerialReceiver_U0|SerialControl_U0|ALT_INV_CurrentState.STATE_INIT~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\);

-- Location: LCCOMB_X42_Y19_N12
\U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~0_combout\ = \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\ $ (((\U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\ & 
-- \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\,
	datab => \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\,
	datac => \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\,
	combout => \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~0_combout\);

-- Location: FF_X42_Y19_N13
\U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~clkctrl_outclk\,
	d => \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~0_combout\,
	clrn => \U1|LCD_SerialReceiver_U0|SerialControl_U0|ALT_INV_CurrentState.STATE_INIT~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\);

-- Location: LCCOMB_X42_Y19_N10
\U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~0_combout\ = (\U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~q\ & (!\U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\ & 
-- !\U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~q\,
	datac => \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\,
	datad => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~q\,
	combout => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~0_combout\);

-- Location: LCCOMB_X42_Y19_N4
\U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~1_combout\ = (!\U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\ & (\U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\ & 
-- (\U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~q\ & \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\,
	datab => \U1|LCD_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\,
	datac => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~q\,
	datad => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~0_combout\,
	combout => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~1_combout\);

-- Location: LCCOMB_X42_Y20_N6
\U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~0_combout\ = 
-- (!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\ & 
-- ((\U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~q\) # ((!\U1|LCDDispatcher_U0|CurrentState.STATE_DONE~0_combout\ & !\U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LCDDispatcher_U0|CurrentState.STATE_DONE~0_combout\,
	datab => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~q\,
	datac => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\,
	combout => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~0_combout\);

-- Location: LCCOMB_X42_Y20_N26
\U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~1_combout\ = (\U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~1_combout\) # (\U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~1_combout\,
	datad => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~0_combout\,
	combout => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~1_combout\);

-- Location: FF_X42_Y20_N27
\U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~1_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~q\);

-- Location: LCCOMB_X42_Y20_N20
\U1|LCDDispatcher_U0|CurrentState.state_bit_3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LCDDispatcher_U0|CurrentState.state_bit_3~0_combout\ = (\U1|LCDDispatcher_U0|CurrentState.state_bit_1~q\ & (((\U1|LCDDispatcher_U0|CurrentState.state_bit_3~q\)))) # (!\U1|LCDDispatcher_U0|CurrentState.state_bit_1~q\ & 
-- (\U1|LCDDispatcher_U0|CurrentState.state_bit_2~q\ & ((\U1|LCDDispatcher_U0|CurrentState.state_bit_3~q\) # (!\U1|LCDDispatcher_U0|CurrentState.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LCDDispatcher_U0|CurrentState.state_bit_2~q\,
	datab => \U1|LCDDispatcher_U0|CurrentState.state_bit_1~q\,
	datac => \U1|LCDDispatcher_U0|CurrentState.state_bit_3~q\,
	datad => \U1|LCDDispatcher_U0|CurrentState.state_bit_0~q\,
	combout => \U1|LCDDispatcher_U0|CurrentState.state_bit_3~0_combout\);

-- Location: FF_X42_Y20_N21
\U1|LCDDispatcher_U0|CurrentState.state_bit_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U1|LCDDispatcher_U0|CurrentState.state_bit_3~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|LCDDispatcher_U0|CurrentState.state_bit_3~q\);

-- Location: LCCOMB_X42_Y20_N22
\U1|LCDDispatcher_U0|CurrentState.state_bit_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LCDDispatcher_U0|CurrentState.state_bit_2~0_combout\ = (\U1|LCDDispatcher_U0|CurrentState.state_bit_1~q\ & ((\U1|LCDDispatcher_U0|CurrentState.state_bit_0~q\ & ((\U1|LCDDispatcher_U0|CurrentState.state_bit_2~q\) # 
-- (!\U1|LCDDispatcher_U0|CurrentState.state_bit_3~q\))) # (!\U1|LCDDispatcher_U0|CurrentState.state_bit_0~q\ & (\U1|LCDDispatcher_U0|CurrentState.state_bit_2~q\ & !\U1|LCDDispatcher_U0|CurrentState.state_bit_3~q\)))) # 
-- (!\U1|LCDDispatcher_U0|CurrentState.state_bit_1~q\ & (((\U1|LCDDispatcher_U0|CurrentState.state_bit_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LCDDispatcher_U0|CurrentState.state_bit_1~q\,
	datab => \U1|LCDDispatcher_U0|CurrentState.state_bit_0~q\,
	datac => \U1|LCDDispatcher_U0|CurrentState.state_bit_2~q\,
	datad => \U1|LCDDispatcher_U0|CurrentState.state_bit_3~q\,
	combout => \U1|LCDDispatcher_U0|CurrentState.state_bit_2~0_combout\);

-- Location: FF_X42_Y20_N23
\U1|LCDDispatcher_U0|CurrentState.state_bit_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U1|LCDDispatcher_U0|CurrentState.state_bit_2~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|LCDDispatcher_U0|CurrentState.state_bit_2~q\);

-- Location: LCCOMB_X42_Y20_N30
\U1|LCDDispatcher_U0|CurrentState.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LCDDispatcher_U0|CurrentState.state_bit_0~0_combout\ = (\U1|LCDDispatcher_U0|CurrentState.state_bit_2~q\) # ((!\U1|LCDDispatcher_U0|CurrentState.state_bit_0~q\ & ((\U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~q\) # 
-- (!\U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~q\,
	datab => \U1|LCDDispatcher_U0|CurrentState.state_bit_0~q\,
	datac => \U1|LCDDispatcher_U0|CurrentState.state_bit_2~q\,
	datad => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~q\,
	combout => \U1|LCDDispatcher_U0|CurrentState.state_bit_0~0_combout\);

-- Location: LCCOMB_X42_Y20_N0
\U1|LCDDispatcher_U0|CurrentState.state_bit_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LCDDispatcher_U0|CurrentState.state_bit_0~1_combout\ = (\U1|LCDDispatcher_U0|CurrentState.state_bit_1~q\ & ((\U1|LCDDispatcher_U0|CurrentState.state_bit_2~q\ $ (\U1|LCDDispatcher_U0|CurrentState.state_bit_3~q\)))) # 
-- (!\U1|LCDDispatcher_U0|CurrentState.state_bit_1~q\ & ((\U1|LCDDispatcher_U0|CurrentState.state_bit_3~q\ & ((\U1|LCDDispatcher_U0|CurrentState.state_bit_2~q\))) # (!\U1|LCDDispatcher_U0|CurrentState.state_bit_3~q\ & 
-- (!\U1|LCDDispatcher_U0|CurrentState.state_bit_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LCDDispatcher_U0|CurrentState.state_bit_0~0_combout\,
	datab => \U1|LCDDispatcher_U0|CurrentState.state_bit_1~q\,
	datac => \U1|LCDDispatcher_U0|CurrentState.state_bit_2~q\,
	datad => \U1|LCDDispatcher_U0|CurrentState.state_bit_3~q\,
	combout => \U1|LCDDispatcher_U0|CurrentState.state_bit_0~1_combout\);

-- Location: FF_X42_Y20_N1
\U1|LCDDispatcher_U0|CurrentState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U1|LCDDispatcher_U0|CurrentState.state_bit_0~1_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|LCDDispatcher_U0|CurrentState.state_bit_0~q\);

-- Location: LCCOMB_X42_Y20_N10
\U1|LCDDispatcher_U0|CurrentState.STATE_DONE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LCDDispatcher_U0|CurrentState.STATE_DONE~0_combout\ = (\U1|LCDDispatcher_U0|CurrentState.state_bit_1~q\ & (!\U1|LCDDispatcher_U0|CurrentState.state_bit_0~q\ & (!\U1|LCDDispatcher_U0|CurrentState.state_bit_2~q\ & 
-- !\U1|LCDDispatcher_U0|CurrentState.state_bit_3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LCDDispatcher_U0|CurrentState.state_bit_1~q\,
	datab => \U1|LCDDispatcher_U0|CurrentState.state_bit_0~q\,
	datac => \U1|LCDDispatcher_U0|CurrentState.state_bit_2~q\,
	datad => \U1|LCDDispatcher_U0|CurrentState.state_bit_3~q\,
	combout => \U1|LCDDispatcher_U0|CurrentState.STATE_DONE~0_combout\);

-- Location: LCCOMB_X42_Y20_N16
\U1|LCDDispatcher_U0|CurrentState.state_bit_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LCDDispatcher_U0|CurrentState.state_bit_1~2_combout\ = (\U1|LCDDispatcher_U0|CurrentState.state_bit_0~q\ & ((\U1|LCDDispatcher_U0|CurrentState.state_bit_2~q\ & ((!\U1|LCDDispatcher_U0|CurrentState.state_bit_3~q\))) # 
-- (!\U1|LCDDispatcher_U0|CurrentState.state_bit_2~q\ & (\U1|LCDDispatcher_U0|CurrentState.state_bit_1~q\ & \U1|LCDDispatcher_U0|CurrentState.state_bit_3~q\)))) # (!\U1|LCDDispatcher_U0|CurrentState.state_bit_0~q\ & 
-- (!\U1|LCDDispatcher_U0|CurrentState.state_bit_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LCDDispatcher_U0|CurrentState.state_bit_1~q\,
	datab => \U1|LCDDispatcher_U0|CurrentState.state_bit_0~q\,
	datac => \U1|LCDDispatcher_U0|CurrentState.state_bit_2~q\,
	datad => \U1|LCDDispatcher_U0|CurrentState.state_bit_3~q\,
	combout => \U1|LCDDispatcher_U0|CurrentState.state_bit_1~2_combout\);

-- Location: LCCOMB_X42_Y20_N18
\U1|LCDDispatcher_U0|CurrentState.state_bit_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LCDDispatcher_U0|CurrentState.state_bit_1~3_combout\ = (!\U1|LCDDispatcher_U0|CurrentState.state_bit_1~2_combout\ & (((!\U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~q\ & 
-- \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~q\)) # (!\U1|LCDDispatcher_U0|CurrentState.STATE_DONE~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LCDDispatcher_U0|CurrentState.STATE_DONE~0_combout\,
	datab => \U1|LCDDispatcher_U0|CurrentState.state_bit_1~2_combout\,
	datac => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~q\,
	datad => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~q\,
	combout => \U1|LCDDispatcher_U0|CurrentState.state_bit_1~3_combout\);

-- Location: FF_X42_Y20_N19
\U1|LCDDispatcher_U0|CurrentState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U1|LCDDispatcher_U0|CurrentState.state_bit_1~3_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|LCDDispatcher_U0|CurrentState.state_bit_1~q\);

-- Location: LCCOMB_X42_Y20_N24
\U1|LCDDispatcher_U0|WrL~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LCDDispatcher_U0|WrL~0_combout\ = (!\U1|LCDDispatcher_U0|CurrentState.state_bit_2~q\ & ((\U1|LCDDispatcher_U0|CurrentState.state_bit_1~q\ & (!\U1|LCDDispatcher_U0|CurrentState.state_bit_0~q\ & !\U1|LCDDispatcher_U0|CurrentState.state_bit_3~q\)) # 
-- (!\U1|LCDDispatcher_U0|CurrentState.state_bit_1~q\ & ((!\U1|LCDDispatcher_U0|CurrentState.state_bit_3~q\) # (!\U1|LCDDispatcher_U0|CurrentState.state_bit_0~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LCDDispatcher_U0|CurrentState.state_bit_1~q\,
	datab => \U1|LCDDispatcher_U0|CurrentState.state_bit_0~q\,
	datac => \U1|LCDDispatcher_U0|CurrentState.state_bit_2~q\,
	datad => \U1|LCDDispatcher_U0|CurrentState.state_bit_3~q\,
	combout => \U1|LCDDispatcher_U0|WrL~0_combout\);

-- Location: LCCOMB_X43_Y32_N24
\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|Col~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|Col~0_combout\ = (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\) # (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\,
	datac => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\,
	combout => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|Col~0_combout\);

-- Location: LCCOMB_X43_Y32_N10
\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|Col~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|Col~1_combout\ = (!\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\ & \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\,
	datac => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\,
	combout => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|Col~1_combout\);

-- Location: LCCOMB_X44_Y32_N8
\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|Col~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|Col~2_combout\ = (\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\ & !\U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD0|Q~q\,
	datad => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Cont_U0|Reg_U0|FFD1|Q~q\,
	combout => \U0|KeyDecode_U0|KeyScan_Unit0|KeyScan_Decoder_U0|Col~2_combout\);

-- Location: LCCOMB_X36_Y1_N0
\U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[8]~feeder_combout\ = 
-- \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	combout => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[8]~feeder_combout\);

-- Location: LCCOMB_X42_Y19_N8
\U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~0_combout\ = (\U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~q\ & !\U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~q\,
	datad => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~q\,
	combout => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~0_combout\);

-- Location: FF_X36_Y1_N1
\U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~clkctrl_outclk\,
	d => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[8]~feeder_combout\,
	ena => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg\(8));

-- Location: LCCOMB_X36_Y1_N6
\U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[7]~feeder_combout\ = \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg\(8),
	combout => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[7]~feeder_combout\);

-- Location: FF_X36_Y1_N7
\U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~clkctrl_outclk\,
	d => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[7]~feeder_combout\,
	ena => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg\(7));

-- Location: LCCOMB_X36_Y1_N12
\U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[6]~feeder_combout\ = \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg\(7),
	combout => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[6]~feeder_combout\);

-- Location: FF_X36_Y1_N13
\U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~clkctrl_outclk\,
	d => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[6]~feeder_combout\,
	ena => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg\(6));

-- Location: LCCOMB_X36_Y1_N2
\U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[5]~feeder_combout\ = \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg\(6),
	combout => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[5]~feeder_combout\);

-- Location: FF_X36_Y1_N3
\U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~clkctrl_outclk\,
	d => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[5]~feeder_combout\,
	ena => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg\(5));

-- Location: LCCOMB_X36_Y1_N8
\U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[4]~feeder_combout\ = \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg\(5),
	combout => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[4]~feeder_combout\);

-- Location: FF_X36_Y1_N9
\U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~clkctrl_outclk\,
	d => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[4]~feeder_combout\,
	ena => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg\(4));

-- Location: LCCOMB_X36_Y1_N14
\U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[3]~feeder_combout\ = \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg\(4),
	combout => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[3]~feeder_combout\);

-- Location: FF_X36_Y1_N15
\U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~clkctrl_outclk\,
	d => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[3]~feeder_combout\,
	ena => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg\(3));

-- Location: LCCOMB_X36_Y1_N20
\U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[2]~feeder_combout\ = \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg\(3),
	combout => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[2]~feeder_combout\);

-- Location: FF_X36_Y1_N21
\U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~clkctrl_outclk\,
	d => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[2]~feeder_combout\,
	ena => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg\(2));

-- Location: LCCOMB_X36_Y1_N10
\U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[1]~feeder_combout\ = \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg\(2),
	combout => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[1]~feeder_combout\);

-- Location: FF_X36_Y1_N11
\U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~clkctrl_outclk\,
	d => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[1]~feeder_combout\,
	ena => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg\(1));

-- Location: LCCOMB_X36_Y1_N24
\U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[0]~feeder_combout\ = \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg\(1),
	combout => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[0]~feeder_combout\);

-- Location: FF_X36_Y1_N25
\U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~clkctrl_outclk\,
	d => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg[0]~feeder_combout\,
	ena => \U1|LCD_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|LCD_SerialReceiver_U0|LCD_SerialReceiver_ShiftRegister_U0|reg\(0));

-- Location: LCCOMB_X69_Y43_N12
\U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~0_combout\ = !\U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\,
	combout => \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~0_combout\);

-- Location: LCCOMB_X69_Y43_N24
\U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~0_combout\ = \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\ $ (((\U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\ & 
-- \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\,
	datac => \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\,
	datad => \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\,
	combout => \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~0_combout\);

-- Location: FF_X69_Y43_N25
\U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~clkctrl_outclk\,
	d => \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~0_combout\,
	clrn => \U2|Score_SerialReceiver_U0|SerialControl_U0|ALT_INV_CurrentState.STATE_INIT~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\);

-- Location: LCCOMB_X69_Y43_N22
\U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~0_combout\ = \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~q\ $ (((\U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\ & 
-- (\U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\ & \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\,
	datab => \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\,
	datac => \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~q\,
	datad => \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\,
	combout => \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~0_combout\);

-- Location: FF_X69_Y43_N23
\U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~clkctrl_outclk\,
	d => \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~0_combout\,
	clrn => \U2|Score_SerialReceiver_U0|SerialControl_U0|ALT_INV_CurrentState.STATE_INIT~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~q\);

-- Location: LCCOMB_X69_Y43_N26
\U2|Score_SerialReceiver_U0|ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Score_SerialReceiver_U0|ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~0_combout\ = 
-- !\U2|Score_SerialReceiver_U0|ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Score_SerialReceiver_U0|ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~q\,
	combout => \U2|Score_SerialReceiver_U0|ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~0_combout\);

-- Location: FF_X69_Y43_N27
\U2|Score_SerialReceiver_U0|ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~clkctrl_outclk\,
	d => \U2|Score_SerialReceiver_U0|ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~0_combout\,
	clrn => \U2|Score_SerialReceiver_U0|SerialControl_U0|ALT_INV_CurrentState.STATE_INIT~0clkctrl_outclk\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Score_SerialReceiver_U0|ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~q\);

-- Location: LCCOMB_X69_Y43_N28
\U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~1_combout\ = (\U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~q\ & (!\U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\ & 
-- (!\U2|Score_SerialReceiver_U0|ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~q\ & \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~q\))) # 
-- (!\U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~q\ & (\U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\ & ((!\U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~q\,
	datab => \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\,
	datac => \U2|Score_SerialReceiver_U0|ParityCheck_U0|ParityCheckCounter_U0|ParityCheck_Counter_Reg_U0|ParityCheck_Counter_Reg_FFD_U3|Q~q\,
	datad => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~q\,
	combout => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~1_combout\);

-- Location: LCCOMB_X70_Y43_N16
\U2|Score_Dispatcher_U0|CurrentState.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Score_Dispatcher_U0|CurrentState.state_bit_0~0_combout\ = (!\U2|Score_Dispatcher_U0|CurrentState.state_bit_1~q\ & ((\U2|Score_Dispatcher_U0|CurrentState.state_bit_0~q\) # ((\U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~q\ & 
-- !\U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Score_Dispatcher_U0|CurrentState.state_bit_1~q\,
	datab => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~q\,
	datac => \U2|Score_Dispatcher_U0|CurrentState.state_bit_0~q\,
	datad => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~q\,
	combout => \U2|Score_Dispatcher_U0|CurrentState.state_bit_0~0_combout\);

-- Location: FF_X70_Y43_N17
\U2|Score_Dispatcher_U0|CurrentState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U2|Score_Dispatcher_U0|CurrentState.state_bit_0~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Score_Dispatcher_U0|CurrentState.state_bit_0~q\);

-- Location: LCCOMB_X70_Y43_N8
\U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~0_combout\ = (\U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~q\ & ((\U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~q\) # 
-- ((\U2|Score_Dispatcher_U0|CurrentState.state_bit_0~q\) # (!\U2|Score_Dispatcher_U0|CurrentState.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~q\,
	datab => \U2|Score_Dispatcher_U0|CurrentState.state_bit_0~q\,
	datac => \U2|Score_Dispatcher_U0|CurrentState.state_bit_1~q\,
	datad => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~q\,
	combout => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~0_combout\);

-- Location: LCCOMB_X69_Y43_N14
\U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~2_combout\ = (\U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~1_combout\ & ((\U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\ & 
-- (!\U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~0_combout\ & \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\)) # (!\U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\ & 
-- (\U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~0_combout\ & !\U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\,
	datab => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~1_combout\,
	datac => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~0_combout\,
	datad => \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\,
	combout => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~2_combout\);

-- Location: LCCOMB_X46_Y39_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder_combout\);

-- Location: FF_X46_Y39_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\);

-- Location: LCCOMB_X70_Y43_N24
\U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~3_combout\ = (\U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~q\ & ((\U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~2_combout\) # 
-- ((!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\ & 
-- \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~0_combout\)))) # (!\U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~q\ & (((\U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~2_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\,
	datac => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~0_combout\,
	datad => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~q\,
	combout => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~3_combout\);

-- Location: FF_X70_Y43_N25
\U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~3_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~q\);

-- Location: LCCOMB_X70_Y43_N26
\U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_INIT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_INIT~0_combout\ = (!\U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~q\ & !\U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~q\,
	datad => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~q\,
	combout => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_INIT~0_combout\);

-- Location: CLKCTRL_G8
\U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_INIT~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_INIT~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_INIT~0clkctrl_outclk\);

-- Location: FF_X69_Y43_N13
\U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~clkctrl_outclk\,
	d => \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~0_combout\,
	clrn => \U2|Score_SerialReceiver_U0|SerialControl_U0|ALT_INV_CurrentState.STATE_INIT~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\);

-- Location: LCCOMB_X69_Y43_N10
\U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~0_combout\ = \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\ $ (\U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\,
	datad => \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\,
	combout => \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~0_combout\);

-- Location: FF_X69_Y43_N11
\U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~clkctrl_outclk\,
	d => \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~0_combout\,
	clrn => \U2|Score_SerialReceiver_U0|SerialControl_U0|ALT_INV_CurrentState.STATE_INIT~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\);

-- Location: LCCOMB_X69_Y43_N8
\U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~0_combout\ = (\U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\ & (\U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\ & 
-- (!\U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~q\ & \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U2|Q~q\,
	datab => \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U1|Q~q\,
	datac => \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U0|Q~q\,
	datad => \U2|Score_SerialReceiver_U0|Counter_U0|Counter_Reg_U0|Counter_Reg_FFD_U3|Q~q\,
	combout => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~0_combout\);

-- Location: LCCOMB_X70_Y43_N22
\U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~1_combout\ = (\U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~q\) # ((!\U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~q\ & 
-- ((\U2|Score_Dispatcher_U0|CurrentState.state_bit_0~q\) # (!\U2|Score_Dispatcher_U0|CurrentState.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~q\,
	datab => \U2|Score_Dispatcher_U0|CurrentState.state_bit_0~q\,
	datac => \U2|Score_Dispatcher_U0|CurrentState.state_bit_1~q\,
	datad => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~q\,
	combout => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~1_combout\);

-- Location: LCCOMB_X70_Y43_N2
\U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~0_combout\ = (\U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~q\ & !\U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~q\,
	datad => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~q\,
	combout => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~0_combout\);

-- Location: LCCOMB_X70_Y43_N6
\U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~2_combout\ = (\U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~0_combout\ & ((\U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~0_combout\) # 
-- ((!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\ & 
-- \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~1_combout\)))) # (!\U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~0_combout\ & 
-- (!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\ & 
-- (\U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\,
	datac => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~1_combout\,
	datad => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~0_combout\,
	combout => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~2_combout\);

-- Location: FF_X70_Y43_N7
\U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~2_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~q\);

-- Location: LCCOMB_X70_Y43_N28
\U2|Score_Dispatcher_U0|CurrentState.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Score_Dispatcher_U0|CurrentState.state_bit_1~0_combout\ = (\U2|Score_Dispatcher_U0|CurrentState.state_bit_0~q\ & (((!\U2|Score_Dispatcher_U0|CurrentState.state_bit_1~q\)))) # (!\U2|Score_Dispatcher_U0|CurrentState.state_bit_0~q\ & 
-- (!\U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~q\ & (\U2|Score_Dispatcher_U0|CurrentState.state_bit_1~q\ & \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_0~q\,
	datab => \U2|Score_Dispatcher_U0|CurrentState.state_bit_0~q\,
	datac => \U2|Score_Dispatcher_U0|CurrentState.state_bit_1~q\,
	datad => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.state_bit_1~q\,
	combout => \U2|Score_Dispatcher_U0|CurrentState.state_bit_1~0_combout\);

-- Location: LCCOMB_X70_Y43_N10
\U2|Score_Dispatcher_U0|CurrentState.state_bit_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Score_Dispatcher_U0|CurrentState.state_bit_1~1_combout\ = (\U2|Score_Dispatcher_U0|CurrentState.state_bit_1~0_combout\) # (\U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|Score_Dispatcher_U0|CurrentState.state_bit_1~0_combout\,
	datad => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0_combout\,
	combout => \U2|Score_Dispatcher_U0|CurrentState.state_bit_1~1_combout\);

-- Location: FF_X70_Y43_N11
\U2|Score_Dispatcher_U0|CurrentState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U2|Score_Dispatcher_U0|CurrentState.state_bit_1~1_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Score_Dispatcher_U0|CurrentState.state_bit_1~q\);

-- Location: LCCOMB_X70_Y43_N12
\U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0_combout\ = LCELL((\U2|Score_Dispatcher_U0|CurrentState.state_bit_1~q\ & \U2|Score_Dispatcher_U0|CurrentState.state_bit_0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Score_Dispatcher_U0|CurrentState.state_bit_1~q\,
	datad => \U2|Score_Dispatcher_U0|CurrentState.state_bit_0~q\,
	combout => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0_combout\);

-- Location: CLKCTRL_G6
\U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\);

-- Location: LCCOMB_X74_Y43_N2
\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg[6]~feeder_combout\ = 
-- \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	combout => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg[6]~feeder_combout\);

-- Location: FF_X74_Y43_N3
\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~clkctrl_outclk\,
	d => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg[6]~feeder_combout\,
	ena => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(6));

-- Location: FF_X74_Y43_N7
\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~clkctrl_outclk\,
	asdata => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(6),
	sload => VCC,
	ena => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(5));

-- Location: FF_X74_Y43_N13
\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~clkctrl_outclk\,
	asdata => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(5),
	sload => VCC,
	ena => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(4));

-- Location: LCCOMB_X74_Y43_N18
\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg[3]~feeder_combout\ = \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(4),
	combout => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg[3]~feeder_combout\);

-- Location: FF_X74_Y43_N19
\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~clkctrl_outclk\,
	d => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg[3]~feeder_combout\,
	ena => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(3));

-- Location: LCCOMB_X74_Y43_N8
\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg[2]~feeder_combout\ = \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(3),
	combout => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg[2]~feeder_combout\);

-- Location: FF_X74_Y43_N9
\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~clkctrl_outclk\,
	d => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg[2]~feeder_combout\,
	ena => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(2));

-- Location: LCCOMB_X74_Y43_N24
\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg[1]~feeder_combout\ = \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(2),
	combout => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg[1]~feeder_combout\);

-- Location: FF_X74_Y43_N25
\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~clkctrl_outclk\,
	d => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg[1]~feeder_combout\,
	ena => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(1));

-- Location: LCCOMB_X72_Y46_N14
\U4|circuit_gen:0:in_reg|u1|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:in_reg|u1|q~0_combout\ = !\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(1),
	combout => \U4|circuit_gen:0:in_reg|u1|q~0_combout\);

-- Location: LCCOMB_X74_Y43_N0
\U4|decoder|dout[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|decoder|dout\(0) = (!\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(5) & (!\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(6) & !\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(5),
	datab => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(6),
	datad => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(4),
	combout => \U4|decoder|dout\(0));

-- Location: FF_X72_Y46_N15
\U4|circuit_gen:0:in_reg|u1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	d => \U4|circuit_gen:0:in_reg|u1|q~0_combout\,
	ena => \U4|decoder|dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:0:in_reg|u1|q~q\);

-- Location: LCCOMB_X74_Y43_N16
\U4|decoder|dout[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|decoder|dout[6]~0_combout\ = (\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(5) & (\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(6) & 
-- !\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(5),
	datab => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(6),
	datad => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(4),
	combout => \U4|decoder|dout[6]~0_combout\);

-- Location: FF_X72_Y46_N27
\U4|circuit_gen:0:out_reg|u1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:0:in_reg|u1|q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:0:out_reg|u1|q~q\);

-- Location: LCCOMB_X72_Y46_N30
\U4|circuit_gen:0:in_reg|u2|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:in_reg|u2|q~0_combout\ = !\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(2),
	combout => \U4|circuit_gen:0:in_reg|u2|q~0_combout\);

-- Location: FF_X72_Y46_N31
\U4|circuit_gen:0:in_reg|u2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	d => \U4|circuit_gen:0:in_reg|u2|q~0_combout\,
	ena => \U4|decoder|dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:0:in_reg|u2|q~q\);

-- Location: FF_X72_Y46_N21
\U4|circuit_gen:0:out_reg|u2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:0:in_reg|u2|q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:0:out_reg|u2|q~q\);

-- Location: LCCOMB_X74_Y46_N8
\U4|circuit_gen:0:in_reg|u3|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:in_reg|u3|q~0_combout\ = !\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(3),
	combout => \U4|circuit_gen:0:in_reg|u3|q~0_combout\);

-- Location: FF_X74_Y46_N9
\U4|circuit_gen:0:in_reg|u3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	d => \U4|circuit_gen:0:in_reg|u3|q~0_combout\,
	ena => \U4|decoder|dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:0:in_reg|u3|q~q\);

-- Location: FF_X72_Y46_N23
\U4|circuit_gen:0:out_reg|u3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:0:in_reg|u3|q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:0:out_reg|u3|q~q\);

-- Location: LCCOMB_X74_Y43_N20
\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg[0]~feeder_combout\ = \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(1),
	combout => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg[0]~feeder_combout\);

-- Location: FF_X74_Y43_N21
\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~clkctrl_outclk\,
	d => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg[0]~feeder_combout\,
	ena => \U2|Score_SerialReceiver_U0|SerialControl_U0|CurrentState.STATE_WRITING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(0));

-- Location: LCCOMB_X74_Y46_N2
\U4|circuit_gen:0:in_reg|u0|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:in_reg|u0|q~0_combout\ = !\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(0),
	combout => \U4|circuit_gen:0:in_reg|u0|q~0_combout\);

-- Location: FF_X74_Y46_N3
\U4|circuit_gen:0:in_reg|u0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	d => \U4|circuit_gen:0:in_reg|u0|q~0_combout\,
	ena => \U4|decoder|dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:0:in_reg|u0|q~q\);

-- Location: FF_X72_Y46_N25
\U4|circuit_gen:0:out_reg|u0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:0:in_reg|u0|q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:0:out_reg|u0|q~q\);

-- Location: LCCOMB_X72_Y46_N0
\U4|circuit_gen:0:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[0]~0_combout\ = (\U4|circuit_gen:0:out_reg|u3|q~q\ & (\U4|circuit_gen:0:out_reg|u1|q~q\ & (\U4|circuit_gen:0:out_reg|u2|q~q\ $ (\U4|circuit_gen:0:out_reg|u0|q~q\)))) # (!\U4|circuit_gen:0:out_reg|u3|q~q\ & 
-- (((!\U4|circuit_gen:0:out_reg|u2|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:0:out_reg|u1|q~q\,
	datab => \U4|circuit_gen:0:out_reg|u2|q~q\,
	datac => \U4|circuit_gen:0:out_reg|u3|q~q\,
	datad => \U4|circuit_gen:0:out_reg|u0|q~q\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X74_Y43_N30
\U4|clear_reg|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|clear_reg|q~0_combout\ = (\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(5) & (\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(6) & 
-- \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(5),
	datab => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(6),
	datad => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(4),
	combout => \U4|clear_reg|q~0_combout\);

-- Location: LCCOMB_X74_Y43_N14
\U4|clear_reg|q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|clear_reg|q~1_combout\ = (\U4|clear_reg|q~0_combout\ & ((!\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(0)))) # (!\U4|clear_reg|q~0_combout\ & (\U4|clear_reg|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|clear_reg|q~0_combout\,
	datac => \U4|clear_reg|q~q\,
	datad => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(0),
	combout => \U4|clear_reg|q~1_combout\);

-- Location: FF_X74_Y43_N15
\U4|clear_reg|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	d => \U4|clear_reg|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|clear_reg|q~q\);

-- Location: LCCOMB_X72_Y46_N4
\U4|circuit_gen:0:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[0]~1_combout\ = (\U4|circuit_gen:0:hex_digit|Ndout[0]~0_combout\) # (!\U4|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|circuit_gen:0:hex_digit|Ndout[0]~0_combout\,
	datad => \U4|clear_reg|q~q\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X72_Y46_N8
\U4|circuit_gen:0:hex_digit|Ndout[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[1]~2_combout\ = (\U4|circuit_gen:0:out_reg|u1|q~q\ & (!\U4|circuit_gen:0:out_reg|u2|q~q\ & ((!\U4|circuit_gen:0:out_reg|u0|q~q\) # (!\U4|circuit_gen:0:out_reg|u3|q~q\)))) # (!\U4|circuit_gen:0:out_reg|u1|q~q\ & 
-- ((\U4|circuit_gen:0:out_reg|u0|q~q\ & (!\U4|circuit_gen:0:out_reg|u2|q~q\)) # (!\U4|circuit_gen:0:out_reg|u0|q~q\ & ((!\U4|circuit_gen:0:out_reg|u3|q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:0:out_reg|u1|q~q\,
	datab => \U4|circuit_gen:0:out_reg|u2|q~q\,
	datac => \U4|circuit_gen:0:out_reg|u3|q~q\,
	datad => \U4|circuit_gen:0:out_reg|u0|q~q\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[1]~2_combout\);

-- Location: LCCOMB_X72_Y46_N28
\U4|circuit_gen:0:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[1]~3_combout\ = (\U4|circuit_gen:0:hex_digit|Ndout[1]~2_combout\) # (!\U4|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:0:hex_digit|Ndout[1]~2_combout\,
	datad => \U4|clear_reg|q~q\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X72_Y46_N12
\U4|circuit_gen:0:hex_digit|Ndout[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[2]~4_combout\ = (\U4|circuit_gen:0:out_reg|u1|q~q\ & ((\U4|circuit_gen:0:out_reg|u2|q~q\) # ((\U4|circuit_gen:0:out_reg|u3|q~q\)))) # (!\U4|circuit_gen:0:out_reg|u1|q~q\ & ((\U4|circuit_gen:0:out_reg|u0|q~q\ & 
-- (!\U4|circuit_gen:0:out_reg|u2|q~q\)) # (!\U4|circuit_gen:0:out_reg|u0|q~q\ & ((\U4|circuit_gen:0:out_reg|u3|q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:0:out_reg|u1|q~q\,
	datab => \U4|circuit_gen:0:out_reg|u2|q~q\,
	datac => \U4|circuit_gen:0:out_reg|u3|q~q\,
	datad => \U4|circuit_gen:0:out_reg|u0|q~q\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[2]~4_combout\);

-- Location: LCCOMB_X72_Y46_N18
\U4|circuit_gen:0:hex_digit|Ndout[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[2]~5_combout\ = (!\U4|clear_reg|q~q\) # (!\U4|circuit_gen:0:hex_digit|Ndout[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:0:hex_digit|Ndout[2]~4_combout\,
	datad => \U4|clear_reg|q~q\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[2]~5_combout\);

-- Location: LCCOMB_X72_Y46_N22
\U4|circuit_gen:0:hex_digit|Ndout[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[3]~6_combout\ = (\U4|circuit_gen:0:out_reg|u1|q~q\ & (\U4|circuit_gen:0:out_reg|u0|q~q\ $ (((\U4|circuit_gen:0:out_reg|u2|q~q\))))) # (!\U4|circuit_gen:0:out_reg|u1|q~q\ & ((\U4|circuit_gen:0:out_reg|u2|q~q\ & 
-- ((!\U4|circuit_gen:0:out_reg|u3|q~q\))) # (!\U4|circuit_gen:0:out_reg|u2|q~q\ & (!\U4|circuit_gen:0:out_reg|u0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:0:out_reg|u1|q~q\,
	datab => \U4|circuit_gen:0:out_reg|u0|q~q\,
	datac => \U4|circuit_gen:0:out_reg|u3|q~q\,
	datad => \U4|circuit_gen:0:out_reg|u2|q~q\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[3]~6_combout\);

-- Location: LCCOMB_X72_Y46_N16
\U4|circuit_gen:0:hex_digit|Ndout[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[3]~7_combout\ = (\U4|circuit_gen:0:hex_digit|Ndout[3]~6_combout\) # (!\U4|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|circuit_gen:0:hex_digit|Ndout[3]~6_combout\,
	datad => \U4|clear_reg|q~q\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[3]~7_combout\);

-- Location: LCCOMB_X72_Y46_N20
\U4|circuit_gen:0:hex_digit|Ndout[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[4]~8_combout\ = (\U4|circuit_gen:0:out_reg|u1|q~q\ & ((\U4|circuit_gen:0:out_reg|u2|q~q\ & (!\U4|circuit_gen:0:out_reg|u0|q~q\)) # (!\U4|circuit_gen:0:out_reg|u2|q~q\ & ((\U4|circuit_gen:0:out_reg|u3|q~q\))))) # 
-- (!\U4|circuit_gen:0:out_reg|u1|q~q\ & (((!\U4|circuit_gen:0:out_reg|u3|q~q\)) # (!\U4|circuit_gen:0:out_reg|u0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:0:out_reg|u1|q~q\,
	datab => \U4|circuit_gen:0:out_reg|u0|q~q\,
	datac => \U4|circuit_gen:0:out_reg|u2|q~q\,
	datad => \U4|circuit_gen:0:out_reg|u3|q~q\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[4]~8_combout\);

-- Location: LCCOMB_X72_Y46_N10
\U4|circuit_gen:0:hex_digit|Ndout[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[4]~9_combout\ = (\U4|circuit_gen:0:hex_digit|Ndout[4]~8_combout\) # (!\U4|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|circuit_gen:0:hex_digit|Ndout[4]~8_combout\,
	datad => \U4|clear_reg|q~q\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[4]~9_combout\);

-- Location: LCCOMB_X72_Y46_N26
\U4|circuit_gen:0:hex_digit|Ndout[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[5]~10_combout\ = (\U4|circuit_gen:0:out_reg|u0|q~q\ & (!\U4|circuit_gen:0:out_reg|u1|q~q\ & ((\U4|circuit_gen:0:out_reg|u2|q~q\) # (!\U4|circuit_gen:0:out_reg|u3|q~q\)))) # (!\U4|circuit_gen:0:out_reg|u0|q~q\ & 
-- ((\U4|circuit_gen:0:out_reg|u3|q~q\ & ((\U4|circuit_gen:0:out_reg|u2|q~q\) # (!\U4|circuit_gen:0:out_reg|u1|q~q\))) # (!\U4|circuit_gen:0:out_reg|u3|q~q\ & ((!\U4|circuit_gen:0:out_reg|u2|q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:0:out_reg|u3|q~q\,
	datab => \U4|circuit_gen:0:out_reg|u0|q~q\,
	datac => \U4|circuit_gen:0:out_reg|u1|q~q\,
	datad => \U4|circuit_gen:0:out_reg|u2|q~q\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[5]~10_combout\);

-- Location: LCCOMB_X72_Y46_N2
\U4|circuit_gen:0:hex_digit|Ndout[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[5]~11_combout\ = (\U4|circuit_gen:0:hex_digit|Ndout[5]~10_combout\) # (!\U4|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|circuit_gen:0:hex_digit|Ndout[5]~10_combout\,
	datad => \U4|clear_reg|q~q\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[5]~11_combout\);

-- Location: LCCOMB_X72_Y46_N24
\U4|circuit_gen:0:hex_digit|Ndout[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[6]~12_combout\ = (\U4|circuit_gen:0:out_reg|u1|q~q\ & (\U4|circuit_gen:0:out_reg|u3|q~q\ $ (((\U4|circuit_gen:0:out_reg|u2|q~q\))))) # (!\U4|circuit_gen:0:out_reg|u1|q~q\ & (\U4|circuit_gen:0:out_reg|u3|q~q\ & 
-- ((\U4|circuit_gen:0:out_reg|u0|q~q\) # (\U4|circuit_gen:0:out_reg|u2|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:0:out_reg|u1|q~q\,
	datab => \U4|circuit_gen:0:out_reg|u3|q~q\,
	datac => \U4|circuit_gen:0:out_reg|u0|q~q\,
	datad => \U4|circuit_gen:0:out_reg|u2|q~q\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[6]~12_combout\);

-- Location: LCCOMB_X72_Y46_N6
\U4|circuit_gen:0:hex_digit|Ndout[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[6]~13_combout\ = (!\U4|clear_reg|q~q\) # (!\U4|circuit_gen:0:hex_digit|Ndout[6]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|circuit_gen:0:hex_digit|Ndout[6]~12_combout\,
	datad => \U4|clear_reg|q~q\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[6]~13_combout\);

-- Location: LCCOMB_X75_Y42_N0
\U4|circuit_gen:1:in_reg|u3|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:in_reg|u3|q~0_combout\ = !\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(3),
	combout => \U4|circuit_gen:1:in_reg|u3|q~0_combout\);

-- Location: LCCOMB_X74_Y43_N4
\U4|decoder|dout[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|decoder|dout[1]~1_combout\ = (!\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(5) & (!\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(6) & 
-- \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(5),
	datab => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(6),
	datad => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(4),
	combout => \U4|decoder|dout[1]~1_combout\);

-- Location: FF_X75_Y42_N1
\U4|circuit_gen:1:in_reg|u3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	d => \U4|circuit_gen:1:in_reg|u3|q~0_combout\,
	ena => \U4|decoder|dout[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:1:in_reg|u3|q~q\);

-- Location: FF_X75_Y46_N15
\U4|circuit_gen:1:out_reg|u3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:1:in_reg|u3|q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:1:out_reg|u3|q~q\);

-- Location: LCCOMB_X75_Y42_N12
\U4|circuit_gen:1:in_reg|u0|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:in_reg|u0|q~0_combout\ = !\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(0),
	combout => \U4|circuit_gen:1:in_reg|u0|q~0_combout\);

-- Location: FF_X75_Y42_N13
\U4|circuit_gen:1:in_reg|u0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	d => \U4|circuit_gen:1:in_reg|u0|q~0_combout\,
	ena => \U4|decoder|dout[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:1:in_reg|u0|q~q\);

-- Location: FF_X75_Y46_N13
\U4|circuit_gen:1:out_reg|u0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:1:in_reg|u0|q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:1:out_reg|u0|q~q\);

-- Location: LCCOMB_X75_Y46_N26
\U4|circuit_gen:1:in_reg|u2|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:in_reg|u2|q~0_combout\ = !\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(2),
	combout => \U4|circuit_gen:1:in_reg|u2|q~0_combout\);

-- Location: FF_X75_Y46_N27
\U4|circuit_gen:1:in_reg|u2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	d => \U4|circuit_gen:1:in_reg|u2|q~0_combout\,
	ena => \U4|decoder|dout[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:1:in_reg|u2|q~q\);

-- Location: FF_X75_Y46_N5
\U4|circuit_gen:1:out_reg|u2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:1:in_reg|u2|q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:1:out_reg|u2|q~q\);

-- Location: LCCOMB_X75_Y42_N10
\U4|circuit_gen:1:in_reg|u1|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:in_reg|u1|q~0_combout\ = !\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(1),
	combout => \U4|circuit_gen:1:in_reg|u1|q~0_combout\);

-- Location: FF_X75_Y42_N11
\U4|circuit_gen:1:in_reg|u1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	d => \U4|circuit_gen:1:in_reg|u1|q~0_combout\,
	ena => \U4|decoder|dout[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:1:in_reg|u1|q~q\);

-- Location: FF_X75_Y46_N19
\U4|circuit_gen:1:out_reg|u1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:1:in_reg|u1|q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:1:out_reg|u1|q~q\);

-- Location: LCCOMB_X75_Y46_N24
\U4|circuit_gen:1:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[0]~0_combout\ = (\U4|circuit_gen:1:out_reg|u3|q~q\ & (\U4|circuit_gen:1:out_reg|u1|q~q\ & (\U4|circuit_gen:1:out_reg|u0|q~q\ $ (\U4|circuit_gen:1:out_reg|u2|q~q\)))) # (!\U4|circuit_gen:1:out_reg|u3|q~q\ & 
-- (((!\U4|circuit_gen:1:out_reg|u2|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:1:out_reg|u3|q~q\,
	datab => \U4|circuit_gen:1:out_reg|u0|q~q\,
	datac => \U4|circuit_gen:1:out_reg|u2|q~q\,
	datad => \U4|circuit_gen:1:out_reg|u1|q~q\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X75_Y46_N6
\U4|circuit_gen:1:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[0]~1_combout\ = (\U4|circuit_gen:1:hex_digit|Ndout[0]~0_combout\) # (!\U4|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|clear_reg|q~q\,
	datad => \U4|circuit_gen:1:hex_digit|Ndout[0]~0_combout\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X75_Y46_N10
\U4|circuit_gen:1:hex_digit|Ndout[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[1]~2_combout\ = (\U4|circuit_gen:1:out_reg|u3|q~q\ & (!\U4|circuit_gen:1:out_reg|u2|q~q\ & (\U4|circuit_gen:1:out_reg|u0|q~q\ $ (\U4|circuit_gen:1:out_reg|u1|q~q\)))) # (!\U4|circuit_gen:1:out_reg|u3|q~q\ & 
-- (((!\U4|circuit_gen:1:out_reg|u0|q~q\ & !\U4|circuit_gen:1:out_reg|u1|q~q\)) # (!\U4|circuit_gen:1:out_reg|u2|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:1:out_reg|u3|q~q\,
	datab => \U4|circuit_gen:1:out_reg|u0|q~q\,
	datac => \U4|circuit_gen:1:out_reg|u2|q~q\,
	datad => \U4|circuit_gen:1:out_reg|u1|q~q\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[1]~2_combout\);

-- Location: LCCOMB_X75_Y46_N22
\U4|circuit_gen:1:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[1]~3_combout\ = (\U4|circuit_gen:1:hex_digit|Ndout[1]~2_combout\) # (!\U4|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|clear_reg|q~q\,
	datad => \U4|circuit_gen:1:hex_digit|Ndout[1]~2_combout\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X75_Y46_N20
\U4|circuit_gen:1:hex_digit|Ndout[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[2]~4_combout\ = (\U4|circuit_gen:1:out_reg|u1|q~q\ & ((\U4|circuit_gen:1:out_reg|u3|q~q\) # ((\U4|circuit_gen:1:out_reg|u2|q~q\)))) # (!\U4|circuit_gen:1:out_reg|u1|q~q\ & ((\U4|circuit_gen:1:out_reg|u0|q~q\ & 
-- ((!\U4|circuit_gen:1:out_reg|u2|q~q\))) # (!\U4|circuit_gen:1:out_reg|u0|q~q\ & (\U4|circuit_gen:1:out_reg|u3|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:1:out_reg|u3|q~q\,
	datab => \U4|circuit_gen:1:out_reg|u0|q~q\,
	datac => \U4|circuit_gen:1:out_reg|u2|q~q\,
	datad => \U4|circuit_gen:1:out_reg|u1|q~q\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[2]~4_combout\);

-- Location: LCCOMB_X75_Y46_N16
\U4|circuit_gen:1:hex_digit|Ndout[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[2]~5_combout\ = (!\U4|circuit_gen:1:hex_digit|Ndout[2]~4_combout\) # (!\U4|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|clear_reg|q~q\,
	datad => \U4|circuit_gen:1:hex_digit|Ndout[2]~4_combout\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[2]~5_combout\);

-- Location: LCCOMB_X75_Y46_N14
\U4|circuit_gen:1:hex_digit|Ndout[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[3]~6_combout\ = (\U4|circuit_gen:1:out_reg|u2|q~q\ & ((\U4|circuit_gen:1:out_reg|u1|q~q\ & (!\U4|circuit_gen:1:out_reg|u0|q~q\)) # (!\U4|circuit_gen:1:out_reg|u1|q~q\ & ((!\U4|circuit_gen:1:out_reg|u3|q~q\))))) # 
-- (!\U4|circuit_gen:1:out_reg|u2|q~q\ & (\U4|circuit_gen:1:out_reg|u0|q~q\ $ (((!\U4|circuit_gen:1:out_reg|u1|q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:1:out_reg|u0|q~q\,
	datab => \U4|circuit_gen:1:out_reg|u2|q~q\,
	datac => \U4|circuit_gen:1:out_reg|u3|q~q\,
	datad => \U4|circuit_gen:1:out_reg|u1|q~q\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[3]~6_combout\);

-- Location: LCCOMB_X75_Y46_N8
\U4|circuit_gen:1:hex_digit|Ndout[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[3]~7_combout\ = (\U4|circuit_gen:1:hex_digit|Ndout[3]~6_combout\) # (!\U4|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|clear_reg|q~q\,
	datac => \U4|circuit_gen:1:hex_digit|Ndout[3]~6_combout\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[3]~7_combout\);

-- Location: LCCOMB_X75_Y46_N4
\U4|circuit_gen:1:hex_digit|Ndout[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[4]~8_combout\ = (\U4|circuit_gen:1:out_reg|u1|q~q\ & ((\U4|circuit_gen:1:out_reg|u2|q~q\ & ((!\U4|circuit_gen:1:out_reg|u0|q~q\))) # (!\U4|circuit_gen:1:out_reg|u2|q~q\ & (\U4|circuit_gen:1:out_reg|u3|q~q\)))) # 
-- (!\U4|circuit_gen:1:out_reg|u1|q~q\ & (((!\U4|circuit_gen:1:out_reg|u0|q~q\)) # (!\U4|circuit_gen:1:out_reg|u3|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:1:out_reg|u3|q~q\,
	datab => \U4|circuit_gen:1:out_reg|u0|q~q\,
	datac => \U4|circuit_gen:1:out_reg|u2|q~q\,
	datad => \U4|circuit_gen:1:out_reg|u1|q~q\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[4]~8_combout\);

-- Location: LCCOMB_X75_Y46_N2
\U4|circuit_gen:1:hex_digit|Ndout[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[4]~9_combout\ = (\U4|circuit_gen:1:hex_digit|Ndout[4]~8_combout\) # (!\U4|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|clear_reg|q~q\,
	datad => \U4|circuit_gen:1:hex_digit|Ndout[4]~8_combout\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[4]~9_combout\);

-- Location: LCCOMB_X75_Y46_N18
\U4|circuit_gen:1:hex_digit|Ndout[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[5]~10_combout\ = (\U4|circuit_gen:1:out_reg|u0|q~q\ & (!\U4|circuit_gen:1:out_reg|u1|q~q\ & ((\U4|circuit_gen:1:out_reg|u2|q~q\) # (!\U4|circuit_gen:1:out_reg|u3|q~q\)))) # (!\U4|circuit_gen:1:out_reg|u0|q~q\ & 
-- ((\U4|circuit_gen:1:out_reg|u3|q~q\ & ((\U4|circuit_gen:1:out_reg|u2|q~q\) # (!\U4|circuit_gen:1:out_reg|u1|q~q\))) # (!\U4|circuit_gen:1:out_reg|u3|q~q\ & (!\U4|circuit_gen:1:out_reg|u2|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:1:out_reg|u3|q~q\,
	datab => \U4|circuit_gen:1:out_reg|u2|q~q\,
	datac => \U4|circuit_gen:1:out_reg|u1|q~q\,
	datad => \U4|circuit_gen:1:out_reg|u0|q~q\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[5]~10_combout\);

-- Location: LCCOMB_X75_Y46_N30
\U4|circuit_gen:1:hex_digit|Ndout[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[5]~11_combout\ = (\U4|circuit_gen:1:hex_digit|Ndout[5]~10_combout\) # (!\U4|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|clear_reg|q~q\,
	datac => \U4|circuit_gen:1:hex_digit|Ndout[5]~10_combout\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[5]~11_combout\);

-- Location: LCCOMB_X75_Y46_N12
\U4|circuit_gen:1:hex_digit|Ndout[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[6]~12_combout\ = (\U4|circuit_gen:1:out_reg|u2|q~q\ & (\U4|circuit_gen:1:out_reg|u3|q~q\ $ (((\U4|circuit_gen:1:out_reg|u1|q~q\))))) # (!\U4|circuit_gen:1:out_reg|u2|q~q\ & (\U4|circuit_gen:1:out_reg|u3|q~q\ & 
-- ((\U4|circuit_gen:1:out_reg|u0|q~q\) # (\U4|circuit_gen:1:out_reg|u1|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:1:out_reg|u3|q~q\,
	datab => \U4|circuit_gen:1:out_reg|u2|q~q\,
	datac => \U4|circuit_gen:1:out_reg|u0|q~q\,
	datad => \U4|circuit_gen:1:out_reg|u1|q~q\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[6]~12_combout\);

-- Location: LCCOMB_X75_Y46_N0
\U4|circuit_gen:1:hex_digit|Ndout[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[6]~13_combout\ = (!\U4|circuit_gen:1:hex_digit|Ndout[6]~12_combout\) # (!\U4|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|clear_reg|q~q\,
	datad => \U4|circuit_gen:1:hex_digit|Ndout[6]~12_combout\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[6]~13_combout\);

-- Location: LCCOMB_X74_Y44_N14
\U4|circuit_gen:2:in_reg|u3|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:in_reg|u3|q~0_combout\ = !\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(3),
	combout => \U4|circuit_gen:2:in_reg|u3|q~0_combout\);

-- Location: LCCOMB_X74_Y43_N22
\U4|decoder|dout[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|decoder|dout[2]~2_combout\ = (\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(5) & (!\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(6) & 
-- !\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(5),
	datab => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(6),
	datad => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(4),
	combout => \U4|decoder|dout[2]~2_combout\);

-- Location: FF_X74_Y44_N15
\U4|circuit_gen:2:in_reg|u3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	d => \U4|circuit_gen:2:in_reg|u3|q~0_combout\,
	ena => \U4|decoder|dout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:2:in_reg|u3|q~q\);

-- Location: FF_X74_Y44_N13
\U4|circuit_gen:2:out_reg|u3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:2:in_reg|u3|q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:2:out_reg|u3|q~q\);

-- Location: LCCOMB_X74_Y44_N22
\U4|circuit_gen:2:in_reg|u1|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:in_reg|u1|q~0_combout\ = !\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(1),
	combout => \U4|circuit_gen:2:in_reg|u1|q~0_combout\);

-- Location: FF_X74_Y44_N23
\U4|circuit_gen:2:in_reg|u1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	d => \U4|circuit_gen:2:in_reg|u1|q~0_combout\,
	ena => \U4|decoder|dout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:2:in_reg|u1|q~q\);

-- Location: FF_X74_Y44_N19
\U4|circuit_gen:2:out_reg|u1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:2:in_reg|u1|q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:2:out_reg|u1|q~q\);

-- Location: LCCOMB_X74_Y44_N26
\U4|circuit_gen:2:in_reg|u0|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:in_reg|u0|q~0_combout\ = !\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(0),
	combout => \U4|circuit_gen:2:in_reg|u0|q~0_combout\);

-- Location: FF_X74_Y44_N27
\U4|circuit_gen:2:in_reg|u0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	d => \U4|circuit_gen:2:in_reg|u0|q~0_combout\,
	ena => \U4|decoder|dout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:2:in_reg|u0|q~q\);

-- Location: FF_X74_Y44_N7
\U4|circuit_gen:2:out_reg|u0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:2:in_reg|u0|q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:2:out_reg|u0|q~q\);

-- Location: LCCOMB_X74_Y44_N8
\U4|circuit_gen:2:in_reg|u2|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:in_reg|u2|q~0_combout\ = !\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(2),
	combout => \U4|circuit_gen:2:in_reg|u2|q~0_combout\);

-- Location: FF_X74_Y44_N9
\U4|circuit_gen:2:in_reg|u2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	d => \U4|circuit_gen:2:in_reg|u2|q~0_combout\,
	ena => \U4|decoder|dout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:2:in_reg|u2|q~q\);

-- Location: FF_X74_Y44_N21
\U4|circuit_gen:2:out_reg|u2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:2:in_reg|u2|q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:2:out_reg|u2|q~q\);

-- Location: LCCOMB_X74_Y44_N28
\U4|circuit_gen:2:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[0]~0_combout\ = (\U4|circuit_gen:2:out_reg|u3|q~q\ & (\U4|circuit_gen:2:out_reg|u1|q~q\ & (\U4|circuit_gen:2:out_reg|u0|q~q\ $ (\U4|circuit_gen:2:out_reg|u2|q~q\)))) # (!\U4|circuit_gen:2:out_reg|u3|q~q\ & 
-- (((!\U4|circuit_gen:2:out_reg|u2|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:2:out_reg|u3|q~q\,
	datab => \U4|circuit_gen:2:out_reg|u1|q~q\,
	datac => \U4|circuit_gen:2:out_reg|u0|q~q\,
	datad => \U4|circuit_gen:2:out_reg|u2|q~q\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X74_Y44_N10
\U4|circuit_gen:2:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[0]~1_combout\ = (\U4|circuit_gen:2:hex_digit|Ndout[0]~0_combout\) # (!\U4|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|clear_reg|q~q\,
	datad => \U4|circuit_gen:2:hex_digit|Ndout[0]~0_combout\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X74_Y44_N16
\U4|circuit_gen:2:hex_digit|Ndout[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[1]~2_combout\ = (\U4|circuit_gen:2:out_reg|u3|q~q\ & (!\U4|circuit_gen:2:out_reg|u2|q~q\ & (\U4|circuit_gen:2:out_reg|u1|q~q\ $ (\U4|circuit_gen:2:out_reg|u0|q~q\)))) # (!\U4|circuit_gen:2:out_reg|u3|q~q\ & 
-- (((!\U4|circuit_gen:2:out_reg|u1|q~q\ & !\U4|circuit_gen:2:out_reg|u0|q~q\)) # (!\U4|circuit_gen:2:out_reg|u2|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:2:out_reg|u3|q~q\,
	datab => \U4|circuit_gen:2:out_reg|u1|q~q\,
	datac => \U4|circuit_gen:2:out_reg|u0|q~q\,
	datad => \U4|circuit_gen:2:out_reg|u2|q~q\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[1]~2_combout\);

-- Location: LCCOMB_X74_Y44_N2
\U4|circuit_gen:2:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[1]~3_combout\ = (\U4|circuit_gen:2:hex_digit|Ndout[1]~2_combout\) # (!\U4|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|clear_reg|q~q\,
	datad => \U4|circuit_gen:2:hex_digit|Ndout[1]~2_combout\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X74_Y44_N0
\U4|circuit_gen:2:hex_digit|Ndout[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[2]~4_combout\ = (\U4|circuit_gen:2:out_reg|u1|q~q\ & ((\U4|circuit_gen:2:out_reg|u3|q~q\) # ((\U4|circuit_gen:2:out_reg|u2|q~q\)))) # (!\U4|circuit_gen:2:out_reg|u1|q~q\ & ((\U4|circuit_gen:2:out_reg|u0|q~q\ & 
-- ((!\U4|circuit_gen:2:out_reg|u2|q~q\))) # (!\U4|circuit_gen:2:out_reg|u0|q~q\ & (\U4|circuit_gen:2:out_reg|u3|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:2:out_reg|u3|q~q\,
	datab => \U4|circuit_gen:2:out_reg|u1|q~q\,
	datac => \U4|circuit_gen:2:out_reg|u0|q~q\,
	datad => \U4|circuit_gen:2:out_reg|u2|q~q\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[2]~4_combout\);

-- Location: LCCOMB_X74_Y44_N4
\U4|circuit_gen:2:hex_digit|Ndout[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[2]~5_combout\ = (!\U4|circuit_gen:2:hex_digit|Ndout[2]~4_combout\) # (!\U4|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|clear_reg|q~q\,
	datad => \U4|circuit_gen:2:hex_digit|Ndout[2]~4_combout\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[2]~5_combout\);

-- Location: LCCOMB_X74_Y44_N12
\U4|circuit_gen:2:hex_digit|Ndout[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[3]~6_combout\ = (\U4|circuit_gen:2:out_reg|u2|q~q\ & ((\U4|circuit_gen:2:out_reg|u1|q~q\ & (!\U4|circuit_gen:2:out_reg|u0|q~q\)) # (!\U4|circuit_gen:2:out_reg|u1|q~q\ & ((!\U4|circuit_gen:2:out_reg|u3|q~q\))))) # 
-- (!\U4|circuit_gen:2:out_reg|u2|q~q\ & (\U4|circuit_gen:2:out_reg|u0|q~q\ $ (((!\U4|circuit_gen:2:out_reg|u1|q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:2:out_reg|u0|q~q\,
	datab => \U4|circuit_gen:2:out_reg|u2|q~q\,
	datac => \U4|circuit_gen:2:out_reg|u3|q~q\,
	datad => \U4|circuit_gen:2:out_reg|u1|q~q\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[3]~6_combout\);

-- Location: LCCOMB_X74_Y44_N24
\U4|circuit_gen:2:hex_digit|Ndout[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[3]~7_combout\ = (\U4|circuit_gen:2:hex_digit|Ndout[3]~6_combout\) # (!\U4|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|circuit_gen:2:hex_digit|Ndout[3]~6_combout\,
	datac => \U4|clear_reg|q~q\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[3]~7_combout\);

-- Location: LCCOMB_X74_Y44_N20
\U4|circuit_gen:2:hex_digit|Ndout[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[4]~8_combout\ = (\U4|circuit_gen:2:out_reg|u1|q~q\ & ((\U4|circuit_gen:2:out_reg|u2|q~q\ & (!\U4|circuit_gen:2:out_reg|u0|q~q\)) # (!\U4|circuit_gen:2:out_reg|u2|q~q\ & ((\U4|circuit_gen:2:out_reg|u3|q~q\))))) # 
-- (!\U4|circuit_gen:2:out_reg|u1|q~q\ & (((!\U4|circuit_gen:2:out_reg|u3|q~q\)) # (!\U4|circuit_gen:2:out_reg|u0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:2:out_reg|u0|q~q\,
	datab => \U4|circuit_gen:2:out_reg|u1|q~q\,
	datac => \U4|circuit_gen:2:out_reg|u2|q~q\,
	datad => \U4|circuit_gen:2:out_reg|u3|q~q\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[4]~8_combout\);

-- Location: LCCOMB_X74_Y44_N30
\U4|circuit_gen:2:hex_digit|Ndout[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[4]~9_combout\ = (\U4|circuit_gen:2:hex_digit|Ndout[4]~8_combout\) # (!\U4|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:2:hex_digit|Ndout[4]~8_combout\,
	datac => \U4|clear_reg|q~q\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[4]~9_combout\);

-- Location: LCCOMB_X74_Y44_N18
\U4|circuit_gen:2:hex_digit|Ndout[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[5]~10_combout\ = (\U4|circuit_gen:2:out_reg|u0|q~q\ & (!\U4|circuit_gen:2:out_reg|u1|q~q\ & ((\U4|circuit_gen:2:out_reg|u2|q~q\) # (!\U4|circuit_gen:2:out_reg|u3|q~q\)))) # (!\U4|circuit_gen:2:out_reg|u0|q~q\ & 
-- ((\U4|circuit_gen:2:out_reg|u2|q~q\ & ((\U4|circuit_gen:2:out_reg|u3|q~q\))) # (!\U4|circuit_gen:2:out_reg|u2|q~q\ & ((!\U4|circuit_gen:2:out_reg|u3|q~q\) # (!\U4|circuit_gen:2:out_reg|u1|q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:2:out_reg|u0|q~q\,
	datab => \U4|circuit_gen:2:out_reg|u2|q~q\,
	datac => \U4|circuit_gen:2:out_reg|u1|q~q\,
	datad => \U4|circuit_gen:2:out_reg|u3|q~q\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[5]~10_combout\);

-- Location: LCCOMB_X74_Y41_N8
\U4|circuit_gen:2:hex_digit|Ndout[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[5]~11_combout\ = (\U4|circuit_gen:2:hex_digit|Ndout[5]~10_combout\) # (!\U4|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|clear_reg|q~q\,
	datad => \U4|circuit_gen:2:hex_digit|Ndout[5]~10_combout\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[5]~11_combout\);

-- Location: LCCOMB_X74_Y44_N6
\U4|circuit_gen:2:hex_digit|Ndout[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[6]~12_combout\ = (\U4|circuit_gen:2:out_reg|u2|q~q\ & (\U4|circuit_gen:2:out_reg|u3|q~q\ $ (((\U4|circuit_gen:2:out_reg|u1|q~q\))))) # (!\U4|circuit_gen:2:out_reg|u2|q~q\ & (\U4|circuit_gen:2:out_reg|u3|q~q\ & 
-- ((\U4|circuit_gen:2:out_reg|u0|q~q\) # (\U4|circuit_gen:2:out_reg|u1|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:2:out_reg|u3|q~q\,
	datab => \U4|circuit_gen:2:out_reg|u2|q~q\,
	datac => \U4|circuit_gen:2:out_reg|u0|q~q\,
	datad => \U4|circuit_gen:2:out_reg|u1|q~q\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[6]~12_combout\);

-- Location: LCCOMB_X75_Y46_N28
\U4|circuit_gen:2:hex_digit|Ndout[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[6]~13_combout\ = (!\U4|circuit_gen:2:hex_digit|Ndout[6]~12_combout\) # (!\U4|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|clear_reg|q~q\,
	datad => \U4|circuit_gen:2:hex_digit|Ndout[6]~12_combout\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[6]~13_combout\);

-- Location: LCCOMB_X74_Y42_N8
\U4|circuit_gen:3:in_reg|u1|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:in_reg|u1|q~0_combout\ = !\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(1),
	combout => \U4|circuit_gen:3:in_reg|u1|q~0_combout\);

-- Location: LCCOMB_X74_Y43_N26
\U4|decoder|dout[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|decoder|dout[3]~3_combout\ = (\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(5) & (!\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(6) & 
-- \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(5),
	datab => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(6),
	datad => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(4),
	combout => \U4|decoder|dout[3]~3_combout\);

-- Location: FF_X74_Y42_N9
\U4|circuit_gen:3:in_reg|u1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	d => \U4|circuit_gen:3:in_reg|u1|q~0_combout\,
	ena => \U4|decoder|dout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:3:in_reg|u1|q~q\);

-- Location: FF_X74_Y42_N13
\U4|circuit_gen:3:out_reg|u1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:3:in_reg|u1|q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:3:out_reg|u1|q~q\);

-- Location: LCCOMB_X74_Y46_N14
\U4|circuit_gen:3:in_reg|u0|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:in_reg|u0|q~0_combout\ = !\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(0),
	combout => \U4|circuit_gen:3:in_reg|u0|q~0_combout\);

-- Location: FF_X74_Y46_N15
\U4|circuit_gen:3:in_reg|u0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	d => \U4|circuit_gen:3:in_reg|u0|q~0_combout\,
	ena => \U4|decoder|dout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:3:in_reg|u0|q~q\);

-- Location: FF_X74_Y42_N3
\U4|circuit_gen:3:out_reg|u0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:3:in_reg|u0|q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:3:out_reg|u0|q~q\);

-- Location: LCCOMB_X74_Y42_N14
\U4|circuit_gen:3:in_reg|u2|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:in_reg|u2|q~0_combout\ = !\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(2),
	combout => \U4|circuit_gen:3:in_reg|u2|q~0_combout\);

-- Location: FF_X74_Y42_N15
\U4|circuit_gen:3:in_reg|u2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	d => \U4|circuit_gen:3:in_reg|u2|q~0_combout\,
	ena => \U4|decoder|dout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:3:in_reg|u2|q~q\);

-- Location: FF_X74_Y42_N23
\U4|circuit_gen:3:out_reg|u2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:3:in_reg|u2|q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:3:out_reg|u2|q~q\);

-- Location: LCCOMB_X74_Y46_N20
\U4|circuit_gen:3:in_reg|u3|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:in_reg|u3|q~0_combout\ = !\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(3),
	combout => \U4|circuit_gen:3:in_reg|u3|q~0_combout\);

-- Location: FF_X74_Y46_N21
\U4|circuit_gen:3:in_reg|u3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	d => \U4|circuit_gen:3:in_reg|u3|q~0_combout\,
	ena => \U4|decoder|dout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:3:in_reg|u3|q~q\);

-- Location: FF_X74_Y42_N17
\U4|circuit_gen:3:out_reg|u3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:3:in_reg|u3|q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:3:out_reg|u3|q~q\);

-- Location: LCCOMB_X74_Y42_N26
\U4|circuit_gen:3:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[0]~0_combout\ = (\U4|circuit_gen:3:out_reg|u3|q~q\ & (\U4|circuit_gen:3:out_reg|u1|q~q\ & (\U4|circuit_gen:3:out_reg|u0|q~q\ $ (\U4|circuit_gen:3:out_reg|u2|q~q\)))) # (!\U4|circuit_gen:3:out_reg|u3|q~q\ & 
-- (((!\U4|circuit_gen:3:out_reg|u2|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:3:out_reg|u1|q~q\,
	datab => \U4|circuit_gen:3:out_reg|u0|q~q\,
	datac => \U4|circuit_gen:3:out_reg|u2|q~q\,
	datad => \U4|circuit_gen:3:out_reg|u3|q~q\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X74_Y42_N6
\U4|circuit_gen:3:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[0]~1_combout\ = (\U4|circuit_gen:3:hex_digit|Ndout[0]~0_combout\) # (!\U4|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:3:hex_digit|Ndout[0]~0_combout\,
	datac => \U4|clear_reg|q~q\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X74_Y42_N4
\U4|circuit_gen:3:hex_digit|Ndout[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[1]~2_combout\ = (\U4|circuit_gen:3:out_reg|u1|q~q\ & (!\U4|circuit_gen:3:out_reg|u2|q~q\ & ((!\U4|circuit_gen:3:out_reg|u3|q~q\) # (!\U4|circuit_gen:3:out_reg|u0|q~q\)))) # (!\U4|circuit_gen:3:out_reg|u1|q~q\ & 
-- ((\U4|circuit_gen:3:out_reg|u0|q~q\ & (!\U4|circuit_gen:3:out_reg|u2|q~q\)) # (!\U4|circuit_gen:3:out_reg|u0|q~q\ & ((!\U4|circuit_gen:3:out_reg|u3|q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:3:out_reg|u1|q~q\,
	datab => \U4|circuit_gen:3:out_reg|u0|q~q\,
	datac => \U4|circuit_gen:3:out_reg|u2|q~q\,
	datad => \U4|circuit_gen:3:out_reg|u3|q~q\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[1]~2_combout\);

-- Location: LCCOMB_X74_Y42_N18
\U4|circuit_gen:3:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[1]~3_combout\ = (\U4|circuit_gen:3:hex_digit|Ndout[1]~2_combout\) # (!\U4|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|circuit_gen:3:hex_digit|Ndout[1]~2_combout\,
	datac => \U4|clear_reg|q~q\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X74_Y42_N28
\U4|circuit_gen:3:hex_digit|Ndout[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[2]~4_combout\ = (\U4|circuit_gen:3:out_reg|u1|q~q\ & (((\U4|circuit_gen:3:out_reg|u2|q~q\) # (\U4|circuit_gen:3:out_reg|u3|q~q\)))) # (!\U4|circuit_gen:3:out_reg|u1|q~q\ & ((\U4|circuit_gen:3:out_reg|u0|q~q\ & 
-- (!\U4|circuit_gen:3:out_reg|u2|q~q\)) # (!\U4|circuit_gen:3:out_reg|u0|q~q\ & ((\U4|circuit_gen:3:out_reg|u3|q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:3:out_reg|u1|q~q\,
	datab => \U4|circuit_gen:3:out_reg|u0|q~q\,
	datac => \U4|circuit_gen:3:out_reg|u2|q~q\,
	datad => \U4|circuit_gen:3:out_reg|u3|q~q\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[2]~4_combout\);

-- Location: LCCOMB_X74_Y42_N20
\U4|circuit_gen:3:hex_digit|Ndout[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[2]~5_combout\ = (!\U4|circuit_gen:3:hex_digit|Ndout[2]~4_combout\) # (!\U4|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|clear_reg|q~q\,
	datad => \U4|circuit_gen:3:hex_digit|Ndout[2]~4_combout\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[2]~5_combout\);

-- Location: LCCOMB_X74_Y42_N16
\U4|circuit_gen:3:hex_digit|Ndout[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[3]~6_combout\ = (\U4|circuit_gen:3:out_reg|u2|q~q\ & ((\U4|circuit_gen:3:out_reg|u1|q~q\ & (!\U4|circuit_gen:3:out_reg|u0|q~q\)) # (!\U4|circuit_gen:3:out_reg|u1|q~q\ & ((!\U4|circuit_gen:3:out_reg|u3|q~q\))))) # 
-- (!\U4|circuit_gen:3:out_reg|u2|q~q\ & (\U4|circuit_gen:3:out_reg|u0|q~q\ $ (((!\U4|circuit_gen:3:out_reg|u1|q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:3:out_reg|u2|q~q\,
	datab => \U4|circuit_gen:3:out_reg|u0|q~q\,
	datac => \U4|circuit_gen:3:out_reg|u3|q~q\,
	datad => \U4|circuit_gen:3:out_reg|u1|q~q\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[3]~6_combout\);

-- Location: LCCOMB_X74_Y42_N10
\U4|circuit_gen:3:hex_digit|Ndout[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[3]~7_combout\ = (\U4|circuit_gen:3:hex_digit|Ndout[3]~6_combout\) # (!\U4|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:3:hex_digit|Ndout[3]~6_combout\,
	datac => \U4|clear_reg|q~q\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[3]~7_combout\);

-- Location: LCCOMB_X74_Y42_N22
\U4|circuit_gen:3:hex_digit|Ndout[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[4]~8_combout\ = (\U4|circuit_gen:3:out_reg|u1|q~q\ & ((\U4|circuit_gen:3:out_reg|u2|q~q\ & (!\U4|circuit_gen:3:out_reg|u0|q~q\)) # (!\U4|circuit_gen:3:out_reg|u2|q~q\ & ((\U4|circuit_gen:3:out_reg|u3|q~q\))))) # 
-- (!\U4|circuit_gen:3:out_reg|u1|q~q\ & (((!\U4|circuit_gen:3:out_reg|u3|q~q\)) # (!\U4|circuit_gen:3:out_reg|u0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:3:out_reg|u1|q~q\,
	datab => \U4|circuit_gen:3:out_reg|u0|q~q\,
	datac => \U4|circuit_gen:3:out_reg|u2|q~q\,
	datad => \U4|circuit_gen:3:out_reg|u3|q~q\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[4]~8_combout\);

-- Location: LCCOMB_X74_Y42_N30
\U4|circuit_gen:3:hex_digit|Ndout[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[4]~9_combout\ = (\U4|circuit_gen:3:hex_digit|Ndout[4]~8_combout\) # (!\U4|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|clear_reg|q~q\,
	datad => \U4|circuit_gen:3:hex_digit|Ndout[4]~8_combout\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[4]~9_combout\);

-- Location: LCCOMB_X74_Y42_N12
\U4|circuit_gen:3:hex_digit|Ndout[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[5]~10_combout\ = (\U4|circuit_gen:3:out_reg|u0|q~q\ & (!\U4|circuit_gen:3:out_reg|u1|q~q\ & ((\U4|circuit_gen:3:out_reg|u2|q~q\) # (!\U4|circuit_gen:3:out_reg|u3|q~q\)))) # (!\U4|circuit_gen:3:out_reg|u0|q~q\ & 
-- ((\U4|circuit_gen:3:out_reg|u2|q~q\ & ((\U4|circuit_gen:3:out_reg|u3|q~q\))) # (!\U4|circuit_gen:3:out_reg|u2|q~q\ & ((!\U4|circuit_gen:3:out_reg|u3|q~q\) # (!\U4|circuit_gen:3:out_reg|u1|q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:3:out_reg|u2|q~q\,
	datab => \U4|circuit_gen:3:out_reg|u0|q~q\,
	datac => \U4|circuit_gen:3:out_reg|u1|q~q\,
	datad => \U4|circuit_gen:3:out_reg|u3|q~q\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[5]~10_combout\);

-- Location: LCCOMB_X74_Y42_N24
\U4|circuit_gen:3:hex_digit|Ndout[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[5]~11_combout\ = (\U4|circuit_gen:3:hex_digit|Ndout[5]~10_combout\) # (!\U4|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|circuit_gen:3:hex_digit|Ndout[5]~10_combout\,
	datac => \U4|clear_reg|q~q\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[5]~11_combout\);

-- Location: LCCOMB_X74_Y42_N2
\U4|circuit_gen:3:hex_digit|Ndout[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[6]~12_combout\ = (\U4|circuit_gen:3:out_reg|u2|q~q\ & (\U4|circuit_gen:3:out_reg|u3|q~q\ $ (((\U4|circuit_gen:3:out_reg|u1|q~q\))))) # (!\U4|circuit_gen:3:out_reg|u2|q~q\ & (\U4|circuit_gen:3:out_reg|u3|q~q\ & 
-- ((\U4|circuit_gen:3:out_reg|u0|q~q\) # (\U4|circuit_gen:3:out_reg|u1|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:3:out_reg|u2|q~q\,
	datab => \U4|circuit_gen:3:out_reg|u3|q~q\,
	datac => \U4|circuit_gen:3:out_reg|u0|q~q\,
	datad => \U4|circuit_gen:3:out_reg|u1|q~q\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[6]~12_combout\);

-- Location: LCCOMB_X74_Y42_N0
\U4|circuit_gen:3:hex_digit|Ndout[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[6]~13_combout\ = (!\U4|clear_reg|q~q\) # (!\U4|circuit_gen:3:hex_digit|Ndout[6]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|circuit_gen:3:hex_digit|Ndout[6]~12_combout\,
	datac => \U4|clear_reg|q~q\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[6]~13_combout\);

-- Location: LCCOMB_X72_Y43_N8
\U4|circuit_gen:4:in_reg|u3|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:in_reg|u3|q~0_combout\ = !\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(3),
	combout => \U4|circuit_gen:4:in_reg|u3|q~0_combout\);

-- Location: LCCOMB_X74_Y43_N6
\U4|decoder|dout[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|decoder|dout[4]~4_combout\ = (\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(6) & (!\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(5) & 
-- !\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(6),
	datac => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(5),
	datad => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(4),
	combout => \U4|decoder|dout[4]~4_combout\);

-- Location: FF_X72_Y43_N9
\U4|circuit_gen:4:in_reg|u3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	d => \U4|circuit_gen:4:in_reg|u3|q~0_combout\,
	ena => \U4|decoder|dout[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:4:in_reg|u3|q~q\);

-- Location: FF_X72_Y43_N3
\U4|circuit_gen:4:out_reg|u3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:4:in_reg|u3|q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:4:out_reg|u3|q~q\);

-- Location: LCCOMB_X72_Y43_N4
\U4|circuit_gen:4:in_reg|u2|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:in_reg|u2|q~0_combout\ = !\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(2),
	combout => \U4|circuit_gen:4:in_reg|u2|q~0_combout\);

-- Location: FF_X72_Y43_N5
\U4|circuit_gen:4:in_reg|u2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	d => \U4|circuit_gen:4:in_reg|u2|q~0_combout\,
	ena => \U4|decoder|dout[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:4:in_reg|u2|q~q\);

-- Location: FF_X72_Y43_N25
\U4|circuit_gen:4:out_reg|u2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:4:in_reg|u2|q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:4:out_reg|u2|q~q\);

-- Location: LCCOMB_X72_Y43_N26
\U4|circuit_gen:4:in_reg|u0|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:in_reg|u0|q~0_combout\ = !\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(0),
	combout => \U4|circuit_gen:4:in_reg|u0|q~0_combout\);

-- Location: FF_X72_Y43_N27
\U4|circuit_gen:4:in_reg|u0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	d => \U4|circuit_gen:4:in_reg|u0|q~0_combout\,
	ena => \U4|decoder|dout[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:4:in_reg|u0|q~q\);

-- Location: FF_X72_Y43_N13
\U4|circuit_gen:4:out_reg|u0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:4:in_reg|u0|q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:4:out_reg|u0|q~q\);

-- Location: LCCOMB_X72_Y43_N22
\U4|circuit_gen:4:in_reg|u1|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:in_reg|u1|q~0_combout\ = !\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(1),
	combout => \U4|circuit_gen:4:in_reg|u1|q~0_combout\);

-- Location: FF_X72_Y43_N23
\U4|circuit_gen:4:in_reg|u1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	d => \U4|circuit_gen:4:in_reg|u1|q~0_combout\,
	ena => \U4|decoder|dout[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:4:in_reg|u1|q~q\);

-- Location: FF_X72_Y43_N7
\U4|circuit_gen:4:out_reg|u1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:4:in_reg|u1|q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:4:out_reg|u1|q~q\);

-- Location: LCCOMB_X72_Y43_N0
\U4|circuit_gen:4:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[0]~0_combout\ = (\U4|circuit_gen:4:out_reg|u3|q~q\ & (\U4|circuit_gen:4:out_reg|u1|q~q\ & (\U4|circuit_gen:4:out_reg|u2|q~q\ $ (\U4|circuit_gen:4:out_reg|u0|q~q\)))) # (!\U4|circuit_gen:4:out_reg|u3|q~q\ & 
-- (!\U4|circuit_gen:4:out_reg|u2|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:4:out_reg|u3|q~q\,
	datab => \U4|circuit_gen:4:out_reg|u2|q~q\,
	datac => \U4|circuit_gen:4:out_reg|u0|q~q\,
	datad => \U4|circuit_gen:4:out_reg|u1|q~q\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X72_Y43_N16
\U4|circuit_gen:4:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[0]~1_combout\ = (\U4|circuit_gen:4:hex_digit|Ndout[0]~0_combout\) # (!\U4|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|circuit_gen:4:hex_digit|Ndout[0]~0_combout\,
	datad => \U4|clear_reg|q~q\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X72_Y43_N10
\U4|circuit_gen:4:hex_digit|Ndout[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[1]~2_combout\ = (\U4|circuit_gen:4:out_reg|u3|q~q\ & (!\U4|circuit_gen:4:out_reg|u2|q~q\ & (\U4|circuit_gen:4:out_reg|u0|q~q\ $ (\U4|circuit_gen:4:out_reg|u1|q~q\)))) # (!\U4|circuit_gen:4:out_reg|u3|q~q\ & 
-- (((!\U4|circuit_gen:4:out_reg|u0|q~q\ & !\U4|circuit_gen:4:out_reg|u1|q~q\)) # (!\U4|circuit_gen:4:out_reg|u2|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:4:out_reg|u3|q~q\,
	datab => \U4|circuit_gen:4:out_reg|u2|q~q\,
	datac => \U4|circuit_gen:4:out_reg|u0|q~q\,
	datad => \U4|circuit_gen:4:out_reg|u1|q~q\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[1]~2_combout\);

-- Location: LCCOMB_X74_Y43_N10
\U4|circuit_gen:4:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[1]~3_combout\ = (\U4|circuit_gen:4:hex_digit|Ndout[1]~2_combout\) # (!\U4|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|circuit_gen:4:hex_digit|Ndout[1]~2_combout\,
	datac => \U4|clear_reg|q~q\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X72_Y43_N20
\U4|circuit_gen:4:hex_digit|Ndout[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[2]~4_combout\ = (\U4|circuit_gen:4:out_reg|u1|q~q\ & ((\U4|circuit_gen:4:out_reg|u3|q~q\) # ((\U4|circuit_gen:4:out_reg|u2|q~q\)))) # (!\U4|circuit_gen:4:out_reg|u1|q~q\ & ((\U4|circuit_gen:4:out_reg|u0|q~q\ & 
-- ((!\U4|circuit_gen:4:out_reg|u2|q~q\))) # (!\U4|circuit_gen:4:out_reg|u0|q~q\ & (\U4|circuit_gen:4:out_reg|u3|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:4:out_reg|u3|q~q\,
	datab => \U4|circuit_gen:4:out_reg|u2|q~q\,
	datac => \U4|circuit_gen:4:out_reg|u0|q~q\,
	datad => \U4|circuit_gen:4:out_reg|u1|q~q\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[2]~4_combout\);

-- Location: LCCOMB_X74_Y43_N28
\U4|circuit_gen:4:hex_digit|Ndout[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[2]~5_combout\ = (!\U4|circuit_gen:4:hex_digit|Ndout[2]~4_combout\) # (!\U4|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|clear_reg|q~q\,
	datac => \U4|circuit_gen:4:hex_digit|Ndout[2]~4_combout\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[2]~5_combout\);

-- Location: LCCOMB_X72_Y43_N2
\U4|circuit_gen:4:hex_digit|Ndout[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[3]~6_combout\ = (\U4|circuit_gen:4:out_reg|u2|q~q\ & ((\U4|circuit_gen:4:out_reg|u1|q~q\ & (!\U4|circuit_gen:4:out_reg|u0|q~q\)) # (!\U4|circuit_gen:4:out_reg|u1|q~q\ & ((!\U4|circuit_gen:4:out_reg|u3|q~q\))))) # 
-- (!\U4|circuit_gen:4:out_reg|u2|q~q\ & (\U4|circuit_gen:4:out_reg|u0|q~q\ $ (((!\U4|circuit_gen:4:out_reg|u1|q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:4:out_reg|u0|q~q\,
	datab => \U4|circuit_gen:4:out_reg|u2|q~q\,
	datac => \U4|circuit_gen:4:out_reg|u3|q~q\,
	datad => \U4|circuit_gen:4:out_reg|u1|q~q\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[3]~6_combout\);

-- Location: LCCOMB_X72_Y43_N30
\U4|circuit_gen:4:hex_digit|Ndout[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[3]~7_combout\ = (\U4|circuit_gen:4:hex_digit|Ndout[3]~6_combout\) # (!\U4|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|circuit_gen:4:hex_digit|Ndout[3]~6_combout\,
	datad => \U4|clear_reg|q~q\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[3]~7_combout\);

-- Location: LCCOMB_X72_Y43_N24
\U4|circuit_gen:4:hex_digit|Ndout[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[4]~8_combout\ = (\U4|circuit_gen:4:out_reg|u1|q~q\ & ((\U4|circuit_gen:4:out_reg|u2|q~q\ & ((!\U4|circuit_gen:4:out_reg|u0|q~q\))) # (!\U4|circuit_gen:4:out_reg|u2|q~q\ & (\U4|circuit_gen:4:out_reg|u3|q~q\)))) # 
-- (!\U4|circuit_gen:4:out_reg|u1|q~q\ & (((!\U4|circuit_gen:4:out_reg|u0|q~q\)) # (!\U4|circuit_gen:4:out_reg|u3|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:4:out_reg|u3|q~q\,
	datab => \U4|circuit_gen:4:out_reg|u0|q~q\,
	datac => \U4|circuit_gen:4:out_reg|u2|q~q\,
	datad => \U4|circuit_gen:4:out_reg|u1|q~q\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[4]~8_combout\);

-- Location: LCCOMB_X72_Y43_N14
\U4|circuit_gen:4:hex_digit|Ndout[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[4]~9_combout\ = (\U4|circuit_gen:4:hex_digit|Ndout[4]~8_combout\) # (!\U4|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|circuit_gen:4:hex_digit|Ndout[4]~8_combout\,
	datad => \U4|clear_reg|q~q\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[4]~9_combout\);

-- Location: LCCOMB_X72_Y43_N6
\U4|circuit_gen:4:hex_digit|Ndout[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[5]~10_combout\ = (\U4|circuit_gen:4:out_reg|u0|q~q\ & (!\U4|circuit_gen:4:out_reg|u1|q~q\ & ((\U4|circuit_gen:4:out_reg|u2|q~q\) # (!\U4|circuit_gen:4:out_reg|u3|q~q\)))) # (!\U4|circuit_gen:4:out_reg|u0|q~q\ & 
-- ((\U4|circuit_gen:4:out_reg|u3|q~q\ & ((\U4|circuit_gen:4:out_reg|u2|q~q\) # (!\U4|circuit_gen:4:out_reg|u1|q~q\))) # (!\U4|circuit_gen:4:out_reg|u3|q~q\ & ((!\U4|circuit_gen:4:out_reg|u2|q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:4:out_reg|u3|q~q\,
	datab => \U4|circuit_gen:4:out_reg|u0|q~q\,
	datac => \U4|circuit_gen:4:out_reg|u1|q~q\,
	datad => \U4|circuit_gen:4:out_reg|u2|q~q\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[5]~10_combout\);

-- Location: LCCOMB_X72_Y43_N28
\U4|circuit_gen:4:hex_digit|Ndout[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[5]~11_combout\ = (\U4|circuit_gen:4:hex_digit|Ndout[5]~10_combout\) # (!\U4|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:4:hex_digit|Ndout[5]~10_combout\,
	datad => \U4|clear_reg|q~q\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[5]~11_combout\);

-- Location: LCCOMB_X72_Y43_N12
\U4|circuit_gen:4:hex_digit|Ndout[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[6]~12_combout\ = (\U4|circuit_gen:4:out_reg|u2|q~q\ & (\U4|circuit_gen:4:out_reg|u3|q~q\ $ (((\U4|circuit_gen:4:out_reg|u1|q~q\))))) # (!\U4|circuit_gen:4:out_reg|u2|q~q\ & (\U4|circuit_gen:4:out_reg|u3|q~q\ & 
-- ((\U4|circuit_gen:4:out_reg|u0|q~q\) # (\U4|circuit_gen:4:out_reg|u1|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:4:out_reg|u3|q~q\,
	datab => \U4|circuit_gen:4:out_reg|u2|q~q\,
	datac => \U4|circuit_gen:4:out_reg|u0|q~q\,
	datad => \U4|circuit_gen:4:out_reg|u1|q~q\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[6]~12_combout\);

-- Location: LCCOMB_X72_Y43_N18
\U4|circuit_gen:4:hex_digit|Ndout[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[6]~13_combout\ = (!\U4|clear_reg|q~q\) # (!\U4|circuit_gen:4:hex_digit|Ndout[6]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:4:hex_digit|Ndout[6]~12_combout\,
	datad => \U4|clear_reg|q~q\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[6]~13_combout\);

-- Location: LCCOMB_X75_Y42_N8
\U4|circuit_gen:5:in_reg|u1|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:in_reg|u1|q~0_combout\ = !\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(1),
	combout => \U4|circuit_gen:5:in_reg|u1|q~0_combout\);

-- Location: LCCOMB_X74_Y43_N12
\U4|decoder|dout[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|decoder|dout[5]~5_combout\ = (!\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(5) & (\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(4) & 
-- \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(5),
	datac => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(4),
	datad => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(6),
	combout => \U4|decoder|dout[5]~5_combout\);

-- Location: FF_X75_Y42_N9
\U4|circuit_gen:5:in_reg|u1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	d => \U4|circuit_gen:5:in_reg|u1|q~0_combout\,
	ena => \U4|decoder|dout[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:5:in_reg|u1|q~q\);

-- Location: LCCOMB_X76_Y42_N8
\U4|circuit_gen:5:out_reg|u1|q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:out_reg|u1|q~feeder_combout\ = \U4|circuit_gen:5:in_reg|u1|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|circuit_gen:5:in_reg|u1|q~q\,
	combout => \U4|circuit_gen:5:out_reg|u1|q~feeder_combout\);

-- Location: FF_X76_Y42_N9
\U4|circuit_gen:5:out_reg|u1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	d => \U4|circuit_gen:5:out_reg|u1|q~feeder_combout\,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:5:out_reg|u1|q~q\);

-- Location: LCCOMB_X77_Y42_N4
\U4|circuit_gen:5:in_reg|u0|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:in_reg|u0|q~0_combout\ = !\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(0),
	combout => \U4|circuit_gen:5:in_reg|u0|q~0_combout\);

-- Location: FF_X77_Y42_N5
\U4|circuit_gen:5:in_reg|u0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	d => \U4|circuit_gen:5:in_reg|u0|q~0_combout\,
	ena => \U4|decoder|dout[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:5:in_reg|u0|q~q\);

-- Location: FF_X77_Y42_N3
\U4|circuit_gen:5:out_reg|u0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:5:in_reg|u0|q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:5:out_reg|u0|q~q\);

-- Location: LCCOMB_X77_Y42_N22
\U4|circuit_gen:5:in_reg|u2|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:in_reg|u2|q~0_combout\ = !\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(2),
	combout => \U4|circuit_gen:5:in_reg|u2|q~0_combout\);

-- Location: FF_X77_Y42_N23
\U4|circuit_gen:5:in_reg|u2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	d => \U4|circuit_gen:5:in_reg|u2|q~0_combout\,
	ena => \U4|decoder|dout[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:5:in_reg|u2|q~q\);

-- Location: FF_X77_Y42_N11
\U4|circuit_gen:5:out_reg|u2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:5:in_reg|u2|q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:5:out_reg|u2|q~q\);

-- Location: LCCOMB_X75_Y42_N14
\U4|circuit_gen:5:in_reg|u3|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:in_reg|u3|q~0_combout\ = !\U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Score_SerialReceiver_U0|Score_SerialReceiver_ShiftRegister_U0|reg\(3),
	combout => \U4|circuit_gen:5:in_reg|u3|q~0_combout\);

-- Location: FF_X75_Y42_N15
\U4|circuit_gen:5:in_reg|u3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	d => \U4|circuit_gen:5:in_reg|u3|q~0_combout\,
	ena => \U4|decoder|dout[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:5:in_reg|u3|q~q\);

-- Location: FF_X77_Y42_N27
\U4|circuit_gen:5:out_reg|u3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|Score_Dispatcher_U0|CurrentState.STATE_ENABLE~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:5:in_reg|u3|q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:5:out_reg|u3|q~q\);

-- Location: LCCOMB_X77_Y42_N24
\U4|circuit_gen:5:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[0]~0_combout\ = (\U4|circuit_gen:5:out_reg|u3|q~q\ & (\U4|circuit_gen:5:out_reg|u1|q~q\ & (\U4|circuit_gen:5:out_reg|u0|q~q\ $ (\U4|circuit_gen:5:out_reg|u2|q~q\)))) # (!\U4|circuit_gen:5:out_reg|u3|q~q\ & 
-- (((!\U4|circuit_gen:5:out_reg|u2|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:5:out_reg|u1|q~q\,
	datab => \U4|circuit_gen:5:out_reg|u0|q~q\,
	datac => \U4|circuit_gen:5:out_reg|u2|q~q\,
	datad => \U4|circuit_gen:5:out_reg|u3|q~q\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X77_Y42_N16
\U4|circuit_gen:5:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[0]~1_combout\ = (\U4|circuit_gen:5:hex_digit|Ndout[0]~0_combout\) # (!\U4|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|clear_reg|q~q\,
	datad => \U4|circuit_gen:5:hex_digit|Ndout[0]~0_combout\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X77_Y42_N20
\U4|circuit_gen:5:hex_digit|Ndout[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[1]~2_combout\ = (\U4|circuit_gen:5:out_reg|u1|q~q\ & (!\U4|circuit_gen:5:out_reg|u2|q~q\ & ((!\U4|circuit_gen:5:out_reg|u3|q~q\) # (!\U4|circuit_gen:5:out_reg|u0|q~q\)))) # (!\U4|circuit_gen:5:out_reg|u1|q~q\ & 
-- ((\U4|circuit_gen:5:out_reg|u0|q~q\ & (!\U4|circuit_gen:5:out_reg|u2|q~q\)) # (!\U4|circuit_gen:5:out_reg|u0|q~q\ & ((!\U4|circuit_gen:5:out_reg|u3|q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:5:out_reg|u1|q~q\,
	datab => \U4|circuit_gen:5:out_reg|u0|q~q\,
	datac => \U4|circuit_gen:5:out_reg|u2|q~q\,
	datad => \U4|circuit_gen:5:out_reg|u3|q~q\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[1]~2_combout\);

-- Location: LCCOMB_X77_Y42_N14
\U4|circuit_gen:5:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[1]~3_combout\ = (\U4|circuit_gen:5:hex_digit|Ndout[1]~2_combout\) # (!\U4|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|clear_reg|q~q\,
	datad => \U4|circuit_gen:5:hex_digit|Ndout[1]~2_combout\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X77_Y42_N0
\U4|circuit_gen:5:hex_digit|Ndout[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[2]~4_combout\ = (\U4|circuit_gen:5:out_reg|u1|q~q\ & (((\U4|circuit_gen:5:out_reg|u2|q~q\) # (\U4|circuit_gen:5:out_reg|u3|q~q\)))) # (!\U4|circuit_gen:5:out_reg|u1|q~q\ & ((\U4|circuit_gen:5:out_reg|u0|q~q\ & 
-- (!\U4|circuit_gen:5:out_reg|u2|q~q\)) # (!\U4|circuit_gen:5:out_reg|u0|q~q\ & ((\U4|circuit_gen:5:out_reg|u3|q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:5:out_reg|u1|q~q\,
	datab => \U4|circuit_gen:5:out_reg|u0|q~q\,
	datac => \U4|circuit_gen:5:out_reg|u2|q~q\,
	datad => \U4|circuit_gen:5:out_reg|u3|q~q\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[2]~4_combout\);

-- Location: LCCOMB_X77_Y42_N30
\U4|circuit_gen:5:hex_digit|Ndout[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[2]~5_combout\ = (!\U4|circuit_gen:5:hex_digit|Ndout[2]~4_combout\) # (!\U4|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|clear_reg|q~q\,
	datad => \U4|circuit_gen:5:hex_digit|Ndout[2]~4_combout\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[2]~5_combout\);

-- Location: LCCOMB_X77_Y42_N26
\U4|circuit_gen:5:hex_digit|Ndout[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[3]~6_combout\ = (\U4|circuit_gen:5:out_reg|u1|q~q\ & (\U4|circuit_gen:5:out_reg|u2|q~q\ $ (((\U4|circuit_gen:5:out_reg|u0|q~q\))))) # (!\U4|circuit_gen:5:out_reg|u1|q~q\ & ((\U4|circuit_gen:5:out_reg|u2|q~q\ & 
-- (!\U4|circuit_gen:5:out_reg|u3|q~q\)) # (!\U4|circuit_gen:5:out_reg|u2|q~q\ & ((!\U4|circuit_gen:5:out_reg|u0|q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:5:out_reg|u1|q~q\,
	datab => \U4|circuit_gen:5:out_reg|u2|q~q\,
	datac => \U4|circuit_gen:5:out_reg|u3|q~q\,
	datad => \U4|circuit_gen:5:out_reg|u0|q~q\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[3]~6_combout\);

-- Location: LCCOMB_X77_Y42_N8
\U4|circuit_gen:5:hex_digit|Ndout[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[3]~7_combout\ = (\U4|circuit_gen:5:hex_digit|Ndout[3]~6_combout\) # (!\U4|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|clear_reg|q~q\,
	datac => \U4|circuit_gen:5:hex_digit|Ndout[3]~6_combout\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[3]~7_combout\);

-- Location: LCCOMB_X77_Y42_N10
\U4|circuit_gen:5:hex_digit|Ndout[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[4]~8_combout\ = (\U4|circuit_gen:5:out_reg|u1|q~q\ & ((\U4|circuit_gen:5:out_reg|u2|q~q\ & (!\U4|circuit_gen:5:out_reg|u0|q~q\)) # (!\U4|circuit_gen:5:out_reg|u2|q~q\ & ((\U4|circuit_gen:5:out_reg|u3|q~q\))))) # 
-- (!\U4|circuit_gen:5:out_reg|u1|q~q\ & (((!\U4|circuit_gen:5:out_reg|u3|q~q\)) # (!\U4|circuit_gen:5:out_reg|u0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:5:out_reg|u1|q~q\,
	datab => \U4|circuit_gen:5:out_reg|u0|q~q\,
	datac => \U4|circuit_gen:5:out_reg|u2|q~q\,
	datad => \U4|circuit_gen:5:out_reg|u3|q~q\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[4]~8_combout\);

-- Location: LCCOMB_X77_Y42_N12
\U4|circuit_gen:5:hex_digit|Ndout[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[4]~9_combout\ = (\U4|circuit_gen:5:hex_digit|Ndout[4]~8_combout\) # (!\U4|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|clear_reg|q~q\,
	datad => \U4|circuit_gen:5:hex_digit|Ndout[4]~8_combout\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[4]~9_combout\);

-- Location: LCCOMB_X77_Y42_N6
\U4|circuit_gen:5:hex_digit|Ndout[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[5]~10_combout\ = (\U4|circuit_gen:5:out_reg|u0|q~q\ & (!\U4|circuit_gen:5:out_reg|u1|q~q\ & ((\U4|circuit_gen:5:out_reg|u2|q~q\) # (!\U4|circuit_gen:5:out_reg|u3|q~q\)))) # (!\U4|circuit_gen:5:out_reg|u0|q~q\ & 
-- ((\U4|circuit_gen:5:out_reg|u2|q~q\ & ((\U4|circuit_gen:5:out_reg|u3|q~q\))) # (!\U4|circuit_gen:5:out_reg|u2|q~q\ & ((!\U4|circuit_gen:5:out_reg|u3|q~q\) # (!\U4|circuit_gen:5:out_reg|u1|q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:5:out_reg|u1|q~q\,
	datab => \U4|circuit_gen:5:out_reg|u0|q~q\,
	datac => \U4|circuit_gen:5:out_reg|u2|q~q\,
	datad => \U4|circuit_gen:5:out_reg|u3|q~q\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[5]~10_combout\);

-- Location: LCCOMB_X77_Y42_N28
\U4|circuit_gen:5:hex_digit|Ndout[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[5]~11_combout\ = (\U4|circuit_gen:5:hex_digit|Ndout[5]~10_combout\) # (!\U4|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|clear_reg|q~q\,
	datad => \U4|circuit_gen:5:hex_digit|Ndout[5]~10_combout\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[5]~11_combout\);

-- Location: LCCOMB_X77_Y42_N2
\U4|circuit_gen:5:hex_digit|Ndout[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[6]~12_combout\ = (\U4|circuit_gen:5:out_reg|u2|q~q\ & (\U4|circuit_gen:5:out_reg|u3|q~q\ $ (((\U4|circuit_gen:5:out_reg|u1|q~q\))))) # (!\U4|circuit_gen:5:out_reg|u2|q~q\ & (\U4|circuit_gen:5:out_reg|u3|q~q\ & 
-- ((\U4|circuit_gen:5:out_reg|u0|q~q\) # (\U4|circuit_gen:5:out_reg|u1|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:5:out_reg|u3|q~q\,
	datab => \U4|circuit_gen:5:out_reg|u2|q~q\,
	datac => \U4|circuit_gen:5:out_reg|u0|q~q\,
	datad => \U4|circuit_gen:5:out_reg|u1|q~q\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[6]~12_combout\);

-- Location: LCCOMB_X77_Y42_N18
\U4|circuit_gen:5:hex_digit|Ndout[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[6]~13_combout\ = (!\U4|circuit_gen:5:hex_digit|Ndout[6]~12_combout\) # (!\U4|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|clear_reg|q~q\,
	datac => \U4|circuit_gen:5:hex_digit|Ndout[6]~12_combout\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[6]~13_combout\);

-- Location: FF_X46_Y39_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\);

-- Location: FF_X46_Y39_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\);

-- Location: LCCOMB_X59_Y4_N0
\auto_hub|~GND\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;

-- Location: LCCOMB_X46_Y39_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell_combout\);

-- Location: LCCOMB_X44_Y42_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell_combout\);

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
END structure;


