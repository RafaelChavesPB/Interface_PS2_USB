-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "01/21/2020 10:08:48"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Terminal_Remoto IS
    PORT (
	serial_in : IN std_logic;
	clk_ps2 : IN std_logic;
	clk_50mhz : IN std_logic;
	display_a : BUFFER std_logic_vector(6 DOWNTO 0);
	display_b : BUFFER std_logic_vector(6 DOWNTO 0);
	serial_out : OUT std_logic;
	ledg : OUT std_logic_vector(7 DOWNTO 0)
	);
END Terminal_Remoto;

-- Design Ports Information
-- display_a[0]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_a[1]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_a[2]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_a[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_a[4]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_a[5]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_a[6]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_b[0]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_b[1]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_b[2]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_b[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_b[4]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_b[5]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display_b[6]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- serial_out	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[0]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[1]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[2]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[3]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[4]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[5]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[6]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[7]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk_50mhz	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk_ps2	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- serial_in	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Terminal_Remoto IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_serial_in : std_logic;
SIGNAL ww_clk_ps2 : std_logic;
SIGNAL ww_clk_50mhz : std_logic;
SIGNAL ww_display_a : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_b : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_serial_out : std_logic;
SIGNAL ww_ledg : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk_50mhz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \delay[0]~20_combout\ : std_logic;
SIGNAL \delay[2]~24_combout\ : std_logic;
SIGNAL \delay[4]~28_combout\ : std_logic;
SIGNAL \delay[6]~32_combout\ : std_logic;
SIGNAL \delay[13]~46_combout\ : std_logic;
SIGNAL \delay[15]~50_combout\ : std_logic;
SIGNAL \delay[16]~52_combout\ : std_logic;
SIGNAL \serial|prscl[7]~27_combout\ : std_logic;
SIGNAL \ascii|Mux1~3_combout\ : std_logic;
SIGNAL \ascii|Mux1~4_combout\ : std_logic;
SIGNAL \ascii|Mux6~8_combout\ : std_logic;
SIGNAL \ascii|Mux6~9_combout\ : std_logic;
SIGNAL \ascii|Mux5~0_combout\ : std_logic;
SIGNAL \ascii|Mux5~1_combout\ : std_logic;
SIGNAL \ascii|Mux5~2_combout\ : std_logic;
SIGNAL \ascii|Mux5~3_combout\ : std_logic;
SIGNAL \ascii|Mux4~2_combout\ : std_logic;
SIGNAL \ascii|Mux4~8_combout\ : std_logic;
SIGNAL \serial|serial_out~2_combout\ : std_logic;
SIGNAL \serial|Add2~0_combout\ : std_logic;
SIGNAL \serial|serial_out~3_combout\ : std_logic;
SIGNAL \serial|Add1~0_combout\ : std_logic;
SIGNAL \serial|Equal3~0_combout\ : std_logic;
SIGNAL \serial|Add1~1_combout\ : std_logic;
SIGNAL \ps2|count[3]~0_combout\ : std_logic;
SIGNAL \start~0_combout\ : std_logic;
SIGNAL \serial|serial_out~6_combout\ : std_logic;
SIGNAL \serial|Mux0~0_combout\ : std_logic;
SIGNAL \serial|Mux0~1_combout\ : std_logic;
SIGNAL \clk_ps2~combout\ : std_logic;
SIGNAL \clk_50mhz~combout\ : std_logic;
SIGNAL \clk_50mhz~clkctrl_outclk\ : std_logic;
SIGNAL \ps2|count~2_combout\ : std_logic;
SIGNAL \ps2|count~3_combout\ : std_logic;
SIGNAL \ps2|count[2]~4_combout\ : std_logic;
SIGNAL \ps2|count~1_combout\ : std_logic;
SIGNAL \ps2|Equal0~0_combout\ : std_logic;
SIGNAL \ps2|reg~8_combout\ : std_logic;
SIGNAL \ps2|reg[6]~1_combout\ : std_logic;
SIGNAL \serial_in~combout\ : std_logic;
SIGNAL \ps2|reg~2_combout\ : std_logic;
SIGNAL \ps2|reg~3_combout\ : std_logic;
SIGNAL \ps2|reg~7_combout\ : std_logic;
SIGNAL \ps2|reg~6_combout\ : std_logic;
SIGNAL \ps2|reg~0_combout\ : std_logic;
SIGNAL \ps2|reg~4_combout\ : std_logic;
SIGNAL \ps2|reg~5_combout\ : std_logic;
SIGNAL \ascii|Mux2~2_combout\ : std_logic;
SIGNAL \ascii|Mux2~3_combout\ : std_logic;
SIGNAL \ascii|Mux2~4_combout\ : std_logic;
SIGNAL \ascii|Mux2~5_combout\ : std_logic;
SIGNAL \ascii|Mux2~6_combout\ : std_logic;
SIGNAL \ascii|Mux2~7_combout\ : std_logic;
SIGNAL \ascii|Mux2~8_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \decA|Mux6~0_combout\ : std_logic;
SIGNAL \ps2|ready~0_combout\ : std_logic;
SIGNAL \ps2|ready~regout\ : std_logic;
SIGNAL \current_state~5_combout\ : std_logic;
SIGNAL \current_state.wait_data~0_combout\ : std_logic;
SIGNAL \current_state.wait_data~regout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \current_state.wait_f0~regout\ : std_logic;
SIGNAL \current_state~6_combout\ : std_logic;
SIGNAL \current_state.sending~0_combout\ : std_logic;
SIGNAL \current_state.sending~regout\ : std_logic;
SIGNAL \delay[0]~21\ : std_logic;
SIGNAL \delay[1]~22_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \delay[1]~23\ : std_logic;
SIGNAL \delay[2]~25\ : std_logic;
SIGNAL \delay[3]~26_combout\ : std_logic;
SIGNAL \delay[3]~27\ : std_logic;
SIGNAL \delay[4]~29\ : std_logic;
SIGNAL \delay[5]~30_combout\ : std_logic;
SIGNAL \delay[5]~31\ : std_logic;
SIGNAL \delay[6]~33\ : std_logic;
SIGNAL \delay[7]~34_combout\ : std_logic;
SIGNAL \delay[7]~35\ : std_logic;
SIGNAL \delay[8]~36_combout\ : std_logic;
SIGNAL \delay[8]~37\ : std_logic;
SIGNAL \delay[9]~38_combout\ : std_logic;
SIGNAL \delay[9]~39\ : std_logic;
SIGNAL \delay[10]~40_combout\ : std_logic;
SIGNAL \delay[10]~41\ : std_logic;
SIGNAL \delay[11]~42_combout\ : std_logic;
SIGNAL \delay[11]~43\ : std_logic;
SIGNAL \delay[12]~44_combout\ : std_logic;
SIGNAL \delay[12]~45\ : std_logic;
SIGNAL \delay[13]~47\ : std_logic;
SIGNAL \delay[14]~48_combout\ : std_logic;
SIGNAL \delay[14]~49\ : std_logic;
SIGNAL \delay[15]~51\ : std_logic;
SIGNAL \delay[16]~53\ : std_logic;
SIGNAL \delay[17]~54_combout\ : std_logic;
SIGNAL \delay[17]~55\ : std_logic;
SIGNAL \delay[18]~56_combout\ : std_logic;
SIGNAL \delay[18]~57\ : std_logic;
SIGNAL \delay[19]~58_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \display_a[0]~0_combout\ : std_logic;
SIGNAL \display_a[0]~reg0_regout\ : std_logic;
SIGNAL \decA|Mux5~0_combout\ : std_logic;
SIGNAL \display_a[1]~reg0_regout\ : std_logic;
SIGNAL \serial|Equal4~0_combout\ : std_logic;
SIGNAL \display_a[2]~reg0feeder_combout\ : std_logic;
SIGNAL \display_a[2]~reg0_regout\ : std_logic;
SIGNAL \decA|Mux3~0_combout\ : std_logic;
SIGNAL \display_a[3]~reg0_regout\ : std_logic;
SIGNAL \decA|Mux2~0_combout\ : std_logic;
SIGNAL \display_a[4]~reg0_regout\ : std_logic;
SIGNAL \decA|Mux1~0_combout\ : std_logic;
SIGNAL \display_a[5]~reg0_regout\ : std_logic;
SIGNAL \decA|Mux0~0_combout\ : std_logic;
SIGNAL \display_a[6]~reg0_regout\ : std_logic;
SIGNAL \ascii|Mux5~8_combout\ : std_logic;
SIGNAL \ascii|Mux3~1_combout\ : std_logic;
SIGNAL \ascii|Mux4~5_combout\ : std_logic;
SIGNAL \ascii|Mux4~6_combout\ : std_logic;
SIGNAL \ascii|Mux4~3_combout\ : std_logic;
SIGNAL \ascii|Mux4~4_combout\ : std_logic;
SIGNAL \ascii|Mux4~0_combout\ : std_logic;
SIGNAL \ascii|Mux4~1_combout\ : std_logic;
SIGNAL \ascii|Mux4~7_combout\ : std_logic;
SIGNAL \ascii|Mux4~9_combout\ : std_logic;
SIGNAL \ascii|Mux6~10_combout\ : std_logic;
SIGNAL \ascii|Mux6~14_combout\ : std_logic;
SIGNAL \ascii|Mux6~13_combout\ : std_logic;
SIGNAL \ascii|Mux6~6_combout\ : std_logic;
SIGNAL \ascii|Mux6~4_combout\ : std_logic;
SIGNAL \ascii|Mux6~5_combout\ : std_logic;
SIGNAL \ascii|Mux6~7_combout\ : std_logic;
SIGNAL \ascii|Mux6~11_combout\ : std_logic;
SIGNAL \ascii|Mux1~9_combout\ : std_logic;
SIGNAL \ascii|Mux3~0_combout\ : std_logic;
SIGNAL \ascii|Mux5~4_combout\ : std_logic;
SIGNAL \ascii|Mux5~5_combout\ : std_logic;
SIGNAL \ascii|Mux5~6_combout\ : std_logic;
SIGNAL \ascii|Mux5~7_combout\ : std_logic;
SIGNAL \decB|Mux6~0_combout\ : std_logic;
SIGNAL \display_b[0]~reg0_regout\ : std_logic;
SIGNAL \decB|Mux5~0_combout\ : std_logic;
SIGNAL \display_b[1]~reg0_regout\ : std_logic;
SIGNAL \decB|Mux4~0_combout\ : std_logic;
SIGNAL \display_b[2]~reg0_regout\ : std_logic;
SIGNAL \decB|Mux3~0_combout\ : std_logic;
SIGNAL \display_b[3]~reg0_regout\ : std_logic;
SIGNAL \decB|Mux2~0_combout\ : std_logic;
SIGNAL \display_b[4]~reg0_regout\ : std_logic;
SIGNAL \decB|Mux1~0_combout\ : std_logic;
SIGNAL \display_b[5]~reg0_regout\ : std_logic;
SIGNAL \ascii|Mux3~2_combout\ : std_logic;
SIGNAL \ascii|Mux6~12_combout\ : std_logic;
SIGNAL \ascii|Mux3~3_combout\ : std_logic;
SIGNAL \ascii|Mux3~6_combout\ : std_logic;
SIGNAL \ascii|Mux3~4_combout\ : std_logic;
SIGNAL \ascii|Mux3~5_combout\ : std_logic;
SIGNAL \ascii|Mux3~7_combout\ : std_logic;
SIGNAL \ascii|Mux3~8_combout\ : std_logic;
SIGNAL \decB|Mux0~0_combout\ : std_logic;
SIGNAL \display_b[6]~reg0_regout\ : std_logic;
SIGNAL \serial|index[2]~6_combout\ : std_logic;
SIGNAL \ascii|Mux1~1_combout\ : std_logic;
SIGNAL \ascii|Mux1~2_combout\ : std_logic;
SIGNAL \ascii|Mux1~0_combout\ : std_logic;
SIGNAL \ascii|Mux1~5_combout\ : std_logic;
SIGNAL \ascii|Mux1~6_combout\ : std_logic;
SIGNAL \ascii|Mux1~7_combout\ : std_logic;
SIGNAL \ascii|Mux1~8_combout\ : std_logic;
SIGNAL \serial|process_0~0_combout\ : std_logic;
SIGNAL \serial|process_0~1_combout\ : std_logic;
SIGNAL \serial|prscl[0]~14\ : std_logic;
SIGNAL \serial|prscl[1]~15_combout\ : std_logic;
SIGNAL \serial|prscl[8]~30\ : std_logic;
SIGNAL \serial|prscl[9]~32\ : std_logic;
SIGNAL \serial|prscl[10]~33_combout\ : std_logic;
SIGNAL \serial|prscl[10]~34\ : std_logic;
SIGNAL \serial|prscl[11]~35_combout\ : std_logic;
SIGNAL \serial|prscl[11]~36\ : std_logic;
SIGNAL \serial|prscl[12]~37_combout\ : std_logic;
SIGNAL \serial|prscl[4]~21_combout\ : std_logic;
SIGNAL \serial|LessThan0~0_combout\ : std_logic;
SIGNAL \serial|prscl[9]~31_combout\ : std_logic;
SIGNAL \serial|LessThan0~1_combout\ : std_logic;
SIGNAL \serial|LessThan0~2_combout\ : std_logic;
SIGNAL \serial|prscl[1]~16\ : std_logic;
SIGNAL \serial|prscl[2]~18\ : std_logic;
SIGNAL \serial|prscl[3]~19_combout\ : std_logic;
SIGNAL \serial|prscl[3]~20\ : std_logic;
SIGNAL \serial|prscl[4]~22\ : std_logic;
SIGNAL \serial|prscl[5]~23_combout\ : std_logic;
SIGNAL \serial|prscl[5]~24\ : std_logic;
SIGNAL \serial|prscl[6]~25_combout\ : std_logic;
SIGNAL \serial|prscl[6]~26\ : std_logic;
SIGNAL \serial|prscl[7]~28\ : std_logic;
SIGNAL \serial|prscl[8]~29_combout\ : std_logic;
SIGNAL \serial|prscl[0]~13_combout\ : std_logic;
SIGNAL \serial|Equal0~0_combout\ : std_logic;
SIGNAL \serial|Equal0~2_combout\ : std_logic;
SIGNAL \serial|prscl[2]~17_combout\ : std_logic;
SIGNAL \serial|Equal0~1_combout\ : std_logic;
SIGNAL \serial|Equal0~3_combout\ : std_logic;
SIGNAL \serial|data[7]~0_combout\ : std_logic;
SIGNAL \serial|data[7]~1_combout\ : std_logic;
SIGNAL \serial|Equal3~1_combout\ : std_logic;
SIGNAL \serial|Equal3~3_combout\ : std_logic;
SIGNAL \serial|Equal3~2_combout\ : std_logic;
SIGNAL \serial|Equal3~4_combout\ : std_logic;
SIGNAL \serial|Equal4~1_combout\ : std_logic;
SIGNAL \serial|Equal4~2_combout\ : std_logic;
SIGNAL \start~1_combout\ : std_logic;
SIGNAL \start~regout\ : std_logic;
SIGNAL \serial|process_0~2_combout\ : std_logic;
SIGNAL \serial|index[2]~2_combout\ : std_logic;
SIGNAL \serial|index[0]~7_combout\ : std_logic;
SIGNAL \serial|index[0]~3_combout\ : std_logic;
SIGNAL \serial|index[0]~4_combout\ : std_logic;
SIGNAL \serial|index[3]~5_combout\ : std_logic;
SIGNAL \serial|LessThan1~0_combout\ : std_logic;
SIGNAL \serial|index[1]~8_combout\ : std_logic;
SIGNAL \serial|serial_out~4_combout\ : std_logic;
SIGNAL \serial|serial_out~5_combout\ : std_logic;
SIGNAL \serial|serial_out~regout\ : std_logic;
SIGNAL delay : std_logic_vector(19 DOWNTO 0);
SIGNAL alt_ready : std_logic_vector(1 DOWNTO 0);
SIGNAL \ps2|reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ps2|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \serial|prscl\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \serial|index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \serial|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_clk_50mhz~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_clk_ps2~combout\ : std_logic;
SIGNAL \ALT_INV_current_state.wait_data~regout\ : std_logic;

BEGIN

ww_serial_in <= serial_in;
ww_clk_ps2 <= clk_ps2;
ww_clk_50mhz <= clk_50mhz;
display_a <= ww_display_a;
display_b <= ww_display_b;
serial_out <= ww_serial_out;
ledg <= ww_ledg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_50mhz~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk_50mhz~combout\);
\ALT_INV_clk_50mhz~clkctrl_outclk\ <= NOT \clk_50mhz~clkctrl_outclk\;
\ALT_INV_clk_ps2~combout\ <= NOT \clk_ps2~combout\;
\ALT_INV_current_state.wait_data~regout\ <= NOT \current_state.wait_data~regout\;

-- Location: LCFF_X40_Y9_N25
\delay[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \delay[6]~32_combout\,
	sclr => \LessThan0~4_combout\,
	ena => \current_state.sending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(6));

-- Location: LCFF_X40_Y8_N7
\delay[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \delay[13]~46_combout\,
	sclr => \LessThan0~4_combout\,
	ena => \current_state.sending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(13));

-- Location: LCFF_X40_Y8_N11
\delay[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \delay[15]~50_combout\,
	sclr => \LessThan0~4_combout\,
	ena => \current_state.sending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(15));

-- Location: LCFF_X40_Y8_N13
\delay[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \delay[16]~52_combout\,
	sclr => \LessThan0~4_combout\,
	ena => \current_state.sending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(16));

-- Location: LCFF_X37_Y8_N21
\serial|prscl[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \serial|prscl[7]~27_combout\,
	sclr => \serial|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial|prscl\(7));

-- Location: LCFF_X40_Y9_N21
\delay[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \delay[4]~28_combout\,
	sclr => \LessThan0~4_combout\,
	ena => \current_state.sending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(4));

-- Location: LCFF_X40_Y9_N17
\delay[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \delay[2]~24_combout\,
	sclr => \LessThan0~4_combout\,
	ena => \current_state.sending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(2));

-- Location: LCFF_X40_Y9_N13
\delay[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \delay[0]~20_combout\,
	sclr => \LessThan0~4_combout\,
	ena => \current_state.sending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(0));

-- Location: LCCOMB_X40_Y9_N12
\delay[0]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \delay[0]~20_combout\ = delay(0) $ (VCC)
-- \delay[0]~21\ = CARRY(delay(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay(0),
	datad => VCC,
	combout => \delay[0]~20_combout\,
	cout => \delay[0]~21\);

-- Location: LCCOMB_X40_Y9_N16
\delay[2]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \delay[2]~24_combout\ = (delay(2) & (\delay[1]~23\ $ (GND))) # (!delay(2) & (!\delay[1]~23\ & VCC))
-- \delay[2]~25\ = CARRY((delay(2) & !\delay[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay(2),
	datad => VCC,
	cin => \delay[1]~23\,
	combout => \delay[2]~24_combout\,
	cout => \delay[2]~25\);

-- Location: LCCOMB_X40_Y9_N20
\delay[4]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \delay[4]~28_combout\ = (delay(4) & (\delay[3]~27\ $ (GND))) # (!delay(4) & (!\delay[3]~27\ & VCC))
-- \delay[4]~29\ = CARRY((delay(4) & !\delay[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay(4),
	datad => VCC,
	cin => \delay[3]~27\,
	combout => \delay[4]~28_combout\,
	cout => \delay[4]~29\);

-- Location: LCCOMB_X40_Y9_N24
\delay[6]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \delay[6]~32_combout\ = (delay(6) & (\delay[5]~31\ $ (GND))) # (!delay(6) & (!\delay[5]~31\ & VCC))
-- \delay[6]~33\ = CARRY((delay(6) & !\delay[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay(6),
	datad => VCC,
	cin => \delay[5]~31\,
	combout => \delay[6]~32_combout\,
	cout => \delay[6]~33\);

-- Location: LCCOMB_X40_Y8_N6
\delay[13]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \delay[13]~46_combout\ = (delay(13) & (!\delay[12]~45\)) # (!delay(13) & ((\delay[12]~45\) # (GND)))
-- \delay[13]~47\ = CARRY((!\delay[12]~45\) # (!delay(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay(13),
	datad => VCC,
	cin => \delay[12]~45\,
	combout => \delay[13]~46_combout\,
	cout => \delay[13]~47\);

-- Location: LCCOMB_X40_Y8_N10
\delay[15]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \delay[15]~50_combout\ = (delay(15) & (!\delay[14]~49\)) # (!delay(15) & ((\delay[14]~49\) # (GND)))
-- \delay[15]~51\ = CARRY((!\delay[14]~49\) # (!delay(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay(15),
	datad => VCC,
	cin => \delay[14]~49\,
	combout => \delay[15]~50_combout\,
	cout => \delay[15]~51\);

-- Location: LCCOMB_X40_Y8_N12
\delay[16]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \delay[16]~52_combout\ = (delay(16) & (\delay[15]~51\ $ (GND))) # (!delay(16) & (!\delay[15]~51\ & VCC))
-- \delay[16]~53\ = CARRY((delay(16) & !\delay[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay(16),
	datad => VCC,
	cin => \delay[15]~51\,
	combout => \delay[16]~52_combout\,
	cout => \delay[16]~53\);

-- Location: LCCOMB_X37_Y8_N20
\serial|prscl[7]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|prscl[7]~27_combout\ = (\serial|prscl\(7) & (!\serial|prscl[6]~26\)) # (!\serial|prscl\(7) & ((\serial|prscl[6]~26\) # (GND)))
-- \serial|prscl[7]~28\ = CARRY((!\serial|prscl[6]~26\) # (!\serial|prscl\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \serial|prscl\(7),
	datad => VCC,
	cin => \serial|prscl[6]~26\,
	combout => \serial|prscl[7]~27_combout\,
	cout => \serial|prscl[7]~28\);

-- Location: LCCOMB_X35_Y10_N6
\ascii|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux1~3_combout\ = (\ascii|Mux1~2_combout\ & (\ascii|Mux1~1_combout\ $ (((\ps2|reg\(5) & !\ascii|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(5),
	datab => \ascii|Mux1~0_combout\,
	datac => \ascii|Mux1~2_combout\,
	datad => \ascii|Mux1~1_combout\,
	combout => \ascii|Mux1~3_combout\);

-- Location: LCCOMB_X35_Y10_N4
\ascii|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux1~4_combout\ = (\ps2|reg\(1) & (!\ps2|reg\(2) & (\ps2|reg\(3) & !\ps2|reg\(0)))) # (!\ps2|reg\(1) & ((\ps2|reg\(3) & (\ps2|reg\(2))) # (!\ps2|reg\(3) & ((\ps2|reg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(1),
	datab => \ps2|reg\(2),
	datac => \ps2|reg\(3),
	datad => \ps2|reg\(0),
	combout => \ascii|Mux1~4_combout\);

-- Location: LCCOMB_X35_Y9_N18
\ascii|Mux6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux6~8_combout\ = (\ps2|reg\(0) & ((\ps2|reg\(1) & (\ps2|reg\(3) & !\ps2|reg\(2))) # (!\ps2|reg\(1) & ((\ps2|reg\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(0),
	datab => \ps2|reg\(1),
	datac => \ps2|reg\(3),
	datad => \ps2|reg\(2),
	combout => \ascii|Mux6~8_combout\);

-- Location: LCCOMB_X35_Y9_N12
\ascii|Mux6~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux6~9_combout\ = (!\ps2|reg\(7) & (\ps2|reg\(6) & ((!\ascii|Mux6~8_combout\) # (!\ascii|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(7),
	datab => \ascii|Mux3~0_combout\,
	datac => \ps2|reg\(6),
	datad => \ascii|Mux6~8_combout\,
	combout => \ascii|Mux6~9_combout\);

-- Location: LCCOMB_X36_Y10_N26
\ascii|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux5~0_combout\ = (\ps2|reg\(4) & ((\ps2|reg\(1) & (!\ps2|reg\(0) & !\ps2|reg\(3))) # (!\ps2|reg\(1) & (\ps2|reg\(0) $ (\ps2|reg\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(1),
	datab => \ps2|reg\(0),
	datac => \ps2|reg\(3),
	datad => \ps2|reg\(4),
	combout => \ascii|Mux5~0_combout\);

-- Location: LCCOMB_X35_Y10_N28
\ascii|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux5~1_combout\ = (\ps2|reg\(1) & (\ps2|reg\(3) $ (((\ps2|reg\(0)) # (!\ps2|reg\(4)))))) # (!\ps2|reg\(1) & (!\ps2|reg\(4) & (\ps2|reg\(3) & \ps2|reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(4),
	datab => \ps2|reg\(1),
	datac => \ps2|reg\(3),
	datad => \ps2|reg\(0),
	combout => \ascii|Mux5~1_combout\);

-- Location: LCCOMB_X36_Y10_N20
\ascii|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux5~2_combout\ = (\ps2|reg\(2) & (((\ps2|reg\(5)) # (\ascii|Mux5~0_combout\)))) # (!\ps2|reg\(2) & (\ascii|Mux5~1_combout\ & (\ps2|reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(2),
	datab => \ascii|Mux5~1_combout\,
	datac => \ps2|reg\(5),
	datad => \ascii|Mux5~0_combout\,
	combout => \ascii|Mux5~2_combout\);

-- Location: LCCOMB_X35_Y9_N20
\ascii|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux5~3_combout\ = (\ps2|reg\(3) & (\ps2|reg\(0))) # (!\ps2|reg\(3) & ((\ps2|reg\(1)) # ((!\ps2|reg\(0) & \ps2|reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(3),
	datab => \ps2|reg\(0),
	datac => \ps2|reg\(1),
	datad => \ps2|reg\(4),
	combout => \ascii|Mux5~3_combout\);

-- Location: LCCOMB_X34_Y9_N20
\ascii|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux4~2_combout\ = (\ps2|reg\(6) & (!\ps2|reg\(7) & ((\ps2|reg\(4)) # (\ps2|reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(6),
	datab => \ps2|reg\(4),
	datac => \ps2|reg\(5),
	datad => \ps2|reg\(7),
	combout => \ascii|Mux4~2_combout\);

-- Location: LCCOMB_X34_Y10_N8
\ascii|Mux4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux4~8_combout\ = (\ps2|reg\(2) & (\ps2|reg\(0) $ (((\ps2|reg\(3)) # (\ps2|reg\(1)))))) # (!\ps2|reg\(2) & (\ps2|reg\(3) & ((\ps2|reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(3),
	datab => \ps2|reg\(0),
	datac => \ps2|reg\(1),
	datad => \ps2|reg\(2),
	combout => \ascii|Mux4~8_combout\);

-- Location: LCFF_X35_Y9_N25
\serial|data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	sdata => \ascii|Mux4~9_combout\,
	sload => VCC,
	ena => \serial|data[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial|data\(2));

-- Location: LCFF_X36_Y9_N19
\serial|data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \ascii|Mux2~8_combout\,
	ena => \serial|data[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial|data\(4));

-- Location: LCFF_X36_Y9_N9
\serial|data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	sdata => \Equal1~2_combout\,
	sload => VCC,
	ena => \serial|data[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial|data\(7));

-- Location: LCCOMB_X37_Y9_N26
\serial|serial_out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|serial_out~2_combout\ = (\serial|index\(1) & (((!\serial|index\(0))))) # (!\serial|index\(1) & ((\serial|index\(0) & ((\serial|data\(4)))) # (!\serial|index\(0) & (\serial|data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial|data\(7),
	datab => \serial|index\(1),
	datac => \serial|data\(4),
	datad => \serial|index\(0),
	combout => \serial|serial_out~2_combout\);

-- Location: LCCOMB_X38_Y9_N18
\serial|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|Add2~0_combout\ = \serial|index\(2) $ (((\serial|index\(0)) # (\serial|index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial|index\(2),
	datac => \serial|index\(0),
	datad => \serial|index\(1),
	combout => \serial|Add2~0_combout\);

-- Location: LCCOMB_X37_Y9_N20
\serial|serial_out~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|serial_out~3_combout\ = (\serial|LessThan1~0_combout\) # ((\serial|Add2~0_combout\ & ((\serial|Mux0~1_combout\))) # (!\serial|Add2~0_combout\ & (\serial|serial_out~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial|serial_out~6_combout\,
	datab => \serial|LessThan1~0_combout\,
	datac => \serial|Mux0~1_combout\,
	datad => \serial|Add2~0_combout\,
	combout => \serial|serial_out~3_combout\);

-- Location: LCCOMB_X38_Y9_N6
\serial|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|Add1~0_combout\ = \serial|index\(3) $ (((\serial|index\(1) & (\serial|index\(0) & \serial|index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial|index\(3),
	datab => \serial|index\(1),
	datac => \serial|index\(0),
	datad => \serial|index\(2),
	combout => \serial|Add1~0_combout\);

-- Location: LCCOMB_X36_Y9_N8
\serial|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|Equal3~0_combout\ = (\serial|data\(4) & (\ascii|Mux2~8_combout\ & (\Equal1~2_combout\ $ (!\serial|data\(7))))) # (!\serial|data\(4) & (!\ascii|Mux2~8_combout\ & (\Equal1~2_combout\ $ (!\serial|data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial|data\(4),
	datab => \Equal1~2_combout\,
	datac => \serial|data\(7),
	datad => \ascii|Mux2~8_combout\,
	combout => \serial|Equal3~0_combout\);

-- Location: LCCOMB_X38_Y9_N16
\serial|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|Add1~1_combout\ = \serial|index\(2) $ (((\serial|index\(0) & \serial|index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial|index\(2),
	datac => \serial|index\(0),
	datad => \serial|index\(1),
	combout => \serial|Add1~1_combout\);

-- Location: LCCOMB_X36_Y10_N10
\ps2|count[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ps2|count[3]~0_combout\ = (!\ps2|count\(2) & (\ps2|count\(1) & (\ps2|count\(3) & !\ps2|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|count\(2),
	datab => \ps2|count\(1),
	datac => \ps2|count\(3),
	datad => \ps2|count\(0),
	combout => \ps2|count[3]~0_combout\);

-- Location: LCCOMB_X39_Y8_N22
\start~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \start~0_combout\ = (\current_state.wait_f0~regout\ & (!alt_ready(0) & \ps2|ready~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.wait_f0~regout\,
	datab => alt_ready(0),
	datac => \ps2|ready~regout\,
	combout => \start~0_combout\);

-- Location: LCCOMB_X37_Y9_N12
\serial|serial_out~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|serial_out~6_combout\ = (\serial|serial_out~2_combout\) # ((\serial|data\(6) & (\serial|index\(1) & \serial|index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial|data\(6),
	datab => \serial|index\(1),
	datac => \serial|serial_out~2_combout\,
	datad => \serial|index\(0),
	combout => \serial|serial_out~6_combout\);

-- Location: LCCOMB_X37_Y9_N6
\serial|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|Mux0~0_combout\ = (\serial|index\(1) & (((\serial|index\(0))))) # (!\serial|index\(1) & ((\serial|index\(0) & ((\serial|data\(0)))) # (!\serial|index\(0) & (\serial|data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial|data\(3),
	datab => \serial|index\(1),
	datac => \serial|data\(0),
	datad => \serial|index\(0),
	combout => \serial|Mux0~0_combout\);

-- Location: LCCOMB_X37_Y9_N4
\serial|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|Mux0~1_combout\ = (\serial|Mux0~0_combout\ & (((\serial|data\(2))) # (!\serial|index\(1)))) # (!\serial|Mux0~0_combout\ & (\serial|index\(1) & (\serial|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial|Mux0~0_combout\,
	datab => \serial|index\(1),
	datac => \serial|data\(1),
	datad => \serial|data\(2),
	combout => \serial|Mux0~1_combout\);

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk_ps2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk_ps2,
	combout => \clk_ps2~combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk_50mhz~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk_50mhz,
	combout => \clk_50mhz~combout\);

-- Location: CLKCTRL_G2
\clk_50mhz~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50mhz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50mhz~clkctrl_outclk\);

-- Location: LCCOMB_X36_Y10_N8
\ps2|count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ps2|count~2_combout\ = (!\ps2|count\(0) & (((\ps2|count\(2)) # (!\ps2|count\(3))) # (!\ps2|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|count\(1),
	datab => \ps2|count\(2),
	datac => \ps2|count\(0),
	datad => \ps2|count\(3),
	combout => \ps2|count~2_combout\);

-- Location: LCFF_X36_Y10_N9
\ps2|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_ps2~combout\,
	datain => \ps2|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ps2|count\(0));

-- Location: LCCOMB_X36_Y10_N18
\ps2|count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ps2|count~3_combout\ = (\ps2|count\(0) & (((!\ps2|count\(1))))) # (!\ps2|count\(0) & (\ps2|count\(1) & ((\ps2|count\(2)) # (!\ps2|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|count\(0),
	datab => \ps2|count\(2),
	datac => \ps2|count\(1),
	datad => \ps2|count\(3),
	combout => \ps2|count~3_combout\);

-- Location: LCFF_X36_Y10_N19
\ps2|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_ps2~combout\,
	datain => \ps2|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ps2|count\(1));

-- Location: LCCOMB_X36_Y10_N0
\ps2|count[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ps2|count[2]~4_combout\ = \ps2|count\(2) $ (((\ps2|count\(0) & \ps2|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2|count\(0),
	datac => \ps2|count\(2),
	datad => \ps2|count\(1),
	combout => \ps2|count[2]~4_combout\);

-- Location: LCFF_X36_Y10_N1
\ps2|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_ps2~combout\,
	datain => \ps2|count[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ps2|count\(2));

-- Location: LCCOMB_X36_Y10_N14
\ps2|count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ps2|count~1_combout\ = (\ps2|count\(0) & (\ps2|count\(3) $ (((\ps2|count\(2) & \ps2|count\(1)))))) # (!\ps2|count\(0) & (\ps2|count\(3) & ((\ps2|count\(2)) # (!\ps2|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|count\(0),
	datab => \ps2|count\(2),
	datac => \ps2|count\(3),
	datad => \ps2|count\(1),
	combout => \ps2|count~1_combout\);

-- Location: LCFF_X36_Y10_N15
\ps2|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_ps2~combout\,
	datain => \ps2|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ps2|count\(3));

-- Location: LCCOMB_X36_Y10_N22
\ps2|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ps2|Equal0~0_combout\ = (!\ps2|count\(2) & (!\ps2|count\(3) & (!\ps2|count\(0) & !\ps2|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|count\(2),
	datab => \ps2|count\(3),
	datac => \ps2|count\(0),
	datad => \ps2|count\(1),
	combout => \ps2|Equal0~0_combout\);

-- Location: LCCOMB_X35_Y10_N22
\ps2|reg~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ps2|reg~8_combout\ = (\ps2|reg\(1) & !\ps2|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(1),
	datad => \ps2|Equal0~0_combout\,
	combout => \ps2|reg~8_combout\);

-- Location: LCCOMB_X36_Y10_N28
\ps2|reg[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ps2|reg[6]~1_combout\ = ((!\ps2|count\(0) & (!\ps2|count\(2) & !\ps2|count\(1)))) # (!\ps2|count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|count\(0),
	datab => \ps2|count\(2),
	datac => \ps2|count\(3),
	datad => \ps2|count\(1),
	combout => \ps2|reg[6]~1_combout\);

-- Location: LCFF_X35_Y10_N23
\ps2|reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_ps2~combout\,
	datain => \ps2|reg~8_combout\,
	ena => \ps2|reg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ps2|reg\(0));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\serial_in~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_serial_in,
	combout => \serial_in~combout\);

-- Location: LCCOMB_X35_Y10_N30
\ps2|reg~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ps2|reg~2_combout\ = (\serial_in~combout\ & !\ps2|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_in~combout\,
	datad => \ps2|Equal0~0_combout\,
	combout => \ps2|reg~2_combout\);

-- Location: LCFF_X35_Y10_N31
\ps2|reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_ps2~combout\,
	datain => \ps2|reg~2_combout\,
	ena => \ps2|reg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ps2|reg\(7));

-- Location: LCCOMB_X36_Y10_N16
\ps2|reg~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ps2|reg~3_combout\ = (\ps2|reg\(6) & !\ps2|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(6),
	datad => \ps2|Equal0~0_combout\,
	combout => \ps2|reg~3_combout\);

-- Location: LCFF_X36_Y10_N17
\ps2|reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_ps2~combout\,
	datain => \ps2|reg~3_combout\,
	ena => \ps2|reg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ps2|reg\(5));

-- Location: LCCOMB_X35_Y10_N10
\ps2|reg~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ps2|reg~7_combout\ = (\ps2|reg\(5) & !\ps2|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2|reg\(5),
	datad => \ps2|Equal0~0_combout\,
	combout => \ps2|reg~7_combout\);

-- Location: LCFF_X35_Y10_N11
\ps2|reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_ps2~combout\,
	datain => \ps2|reg~7_combout\,
	ena => \ps2|reg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ps2|reg\(4));

-- Location: LCCOMB_X35_Y10_N16
\ps2|reg~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ps2|reg~6_combout\ = (\ps2|reg\(4) & !\ps2|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2|reg\(4),
	datad => \ps2|Equal0~0_combout\,
	combout => \ps2|reg~6_combout\);

-- Location: LCFF_X35_Y10_N17
\ps2|reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_ps2~combout\,
	datain => \ps2|reg~6_combout\,
	ena => \ps2|reg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ps2|reg\(3));

-- Location: LCCOMB_X35_Y10_N8
\ps2|reg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ps2|reg~0_combout\ = (\ps2|reg\(3) & !\ps2|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2|reg\(3),
	datad => \ps2|Equal0~0_combout\,
	combout => \ps2|reg~0_combout\);

-- Location: LCFF_X35_Y10_N9
\ps2|reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_ps2~combout\,
	datain => \ps2|reg~0_combout\,
	ena => \ps2|reg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ps2|reg\(2));

-- Location: LCCOMB_X35_Y10_N12
\ps2|reg~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ps2|reg~4_combout\ = (\ps2|reg\(7) & !\ps2|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2|reg\(7),
	datad => \ps2|Equal0~0_combout\,
	combout => \ps2|reg~4_combout\);

-- Location: LCFF_X35_Y10_N13
\ps2|reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_ps2~combout\,
	datain => \ps2|reg~4_combout\,
	ena => \ps2|reg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ps2|reg\(6));

-- Location: LCCOMB_X35_Y10_N14
\ps2|reg~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ps2|reg~5_combout\ = (\ps2|reg\(2) & !\ps2|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2|reg\(2),
	datad => \ps2|Equal0~0_combout\,
	combout => \ps2|reg~5_combout\);

-- Location: LCFF_X35_Y10_N15
\ps2|reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_ps2~combout\,
	datain => \ps2|reg~5_combout\,
	ena => \ps2|reg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ps2|reg\(1));

-- Location: LCCOMB_X35_Y10_N20
\ascii|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux2~2_combout\ = (\ps2|reg\(1) & (((!\ps2|reg\(4))))) # (!\ps2|reg\(1) & (!\ps2|reg\(6) & (\ps2|reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(6),
	datab => \ps2|reg\(1),
	datac => \ps2|reg\(3),
	datad => \ps2|reg\(4),
	combout => \ascii|Mux2~2_combout\);

-- Location: LCCOMB_X36_Y9_N28
\ascii|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux2~3_combout\ = (\ps2|reg\(3) & ((\ps2|reg\(4)) # ((\ps2|reg\(6))))) # (!\ps2|reg\(3) & (\ps2|reg\(4) & ((\ps2|reg\(1)) # (\ps2|reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(3),
	datab => \ps2|reg\(4),
	datac => \ps2|reg\(1),
	datad => \ps2|reg\(6),
	combout => \ascii|Mux2~3_combout\);

-- Location: LCCOMB_X36_Y9_N14
\ascii|Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux2~4_combout\ = (\ps2|reg\(5) & (!\ps2|reg\(6) & (\ascii|Mux2~2_combout\ $ (\ascii|Mux2~3_combout\)))) # (!\ps2|reg\(5) & (\ps2|reg\(6) & (\ascii|Mux2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(5),
	datab => \ps2|reg\(6),
	datac => \ascii|Mux2~2_combout\,
	datad => \ascii|Mux2~3_combout\,
	combout => \ascii|Mux2~4_combout\);

-- Location: LCCOMB_X36_Y9_N0
\ascii|Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux2~5_combout\ = (\ascii|Mux2~3_combout\ & ((\ps2|reg\(5)) # ((\ascii|Mux2~2_combout\)))) # (!\ascii|Mux2~3_combout\ & (\ps2|reg\(6) & ((\ps2|reg\(5)) # (!\ascii|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(5),
	datab => \ps2|reg\(6),
	datac => \ascii|Mux2~2_combout\,
	datad => \ascii|Mux2~3_combout\,
	combout => \ascii|Mux2~5_combout\);

-- Location: LCCOMB_X36_Y9_N12
\ascii|Mux2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux2~6_combout\ = (\ps2|reg\(5) & (((!\ascii|Mux2~5_combout\)))) # (!\ps2|reg\(5) & (!\ps2|reg\(0) & (!\ps2|reg\(7) & \ascii|Mux2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(5),
	datab => \ps2|reg\(0),
	datac => \ps2|reg\(7),
	datad => \ascii|Mux2~5_combout\,
	combout => \ascii|Mux2~6_combout\);

-- Location: LCCOMB_X36_Y9_N26
\ascii|Mux2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux2~7_combout\ = (\ps2|reg\(2) & ((\ps2|reg\(0)) # ((\ascii|Mux2~4_combout\) # (!\ascii|Mux2~6_combout\)))) # (!\ps2|reg\(2) & ((\ascii|Mux2~6_combout\ & (!\ps2|reg\(0))) # (!\ascii|Mux2~6_combout\ & ((!\ascii|Mux2~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(0),
	datab => \ps2|reg\(2),
	datac => \ascii|Mux2~4_combout\,
	datad => \ascii|Mux2~6_combout\,
	combout => \ascii|Mux2~7_combout\);

-- Location: LCCOMB_X36_Y9_N18
\ascii|Mux2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux2~8_combout\ = (\ascii|Mux2~7_combout\) # ((\ps2|reg\(7) & ((!\ps2|reg\(0)) # (!\ps2|reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(2),
	datab => \ps2|reg\(0),
	datac => \ps2|reg\(7),
	datad => \ascii|Mux2~7_combout\,
	combout => \ascii|Mux2~8_combout\);

-- Location: LCCOMB_X34_Y9_N16
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\ps2|reg\(0) & (!\ps2|reg\(3) & (!\ps2|reg\(1) & !\ps2|reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(0),
	datab => \ps2|reg\(3),
	datac => \ps2|reg\(1),
	datad => \ps2|reg\(2),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X34_Y9_N6
\Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\ps2|reg\(5) & \ps2|reg\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2|reg\(5),
	datad => \ps2|reg\(4),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X34_Y9_N4
\Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\ps2|reg\(6) & (\ps2|reg\(7) & (\Equal1~0_combout\ & \Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(6),
	datab => \ps2|reg\(7),
	datac => \Equal1~0_combout\,
	datad => \Equal1~1_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X39_Y9_N0
\decA|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decA|Mux6~0_combout\ = (\ascii|Mux1~8_combout\ & (\ascii|Mux2~8_combout\ & !\Equal1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii|Mux1~8_combout\,
	datab => \ascii|Mux2~8_combout\,
	datac => \Equal1~2_combout\,
	combout => \decA|Mux6~0_combout\);

-- Location: LCCOMB_X36_Y10_N24
\ps2|ready~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ps2|ready~0_combout\ = (\ps2|count[3]~0_combout\) # ((\ps2|ready~regout\ & !\ps2|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|count[3]~0_combout\,
	datac => \ps2|ready~regout\,
	datad => \ps2|Equal0~0_combout\,
	combout => \ps2|ready~0_combout\);

-- Location: LCFF_X36_Y10_N25
\ps2|ready\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_ps2~combout\,
	datain => \ps2|ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ps2|ready~regout\);

-- Location: LCFF_X39_Y8_N19
\alt_ready[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	sdata => \ps2|ready~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => alt_ready(0));

-- Location: LCCOMB_X39_Y8_N18
\current_state~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \current_state~5_combout\ = ((alt_ready(0)) # ((\current_state.wait_data~regout\ & !\Equal1~2_combout\))) # (!\ps2|ready~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.wait_data~regout\,
	datab => \ps2|ready~regout\,
	datac => alt_ready(0),
	datad => \Equal1~2_combout\,
	combout => \current_state~5_combout\);

-- Location: LCCOMB_X39_Y8_N24
\current_state.wait_data~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \current_state.wait_data~0_combout\ = !\display_a[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \display_a[0]~0_combout\,
	combout => \current_state.wait_data~0_combout\);

-- Location: LCFF_X39_Y8_N25
\current_state.wait_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \current_state.wait_data~0_combout\,
	ena => \current_state~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.wait_data~regout\);

-- Location: LCCOMB_X39_Y8_N20
\process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (!\current_state.wait_data~regout\ & !\Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.wait_data~regout\,
	datad => \Equal1~2_combout\,
	combout => \process_0~0_combout\);

-- Location: LCFF_X39_Y8_N27
\current_state.wait_f0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	sdata => \process_0~0_combout\,
	sload => VCC,
	ena => \current_state~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.wait_f0~regout\);

-- Location: LCCOMB_X39_Y8_N26
\current_state~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \current_state~6_combout\ = (\display_a[0]~0_combout\) # ((!\current_state~5_combout\ & ((\current_state.wait_f0~regout\) # (!\Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \current_state~5_combout\,
	datac => \current_state.wait_f0~regout\,
	datad => \display_a[0]~0_combout\,
	combout => \current_state~6_combout\);

-- Location: LCCOMB_X39_Y8_N16
\current_state.sending~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \current_state.sending~0_combout\ = (\current_state~6_combout\ & (!\process_0~0_combout\ & ((!\display_a[0]~0_combout\)))) # (!\current_state~6_combout\ & (((\current_state.sending~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \current_state~6_combout\,
	datac => \current_state.sending~regout\,
	datad => \display_a[0]~0_combout\,
	combout => \current_state.sending~0_combout\);

-- Location: LCFF_X39_Y8_N17
\current_state.sending\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \current_state.sending~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.sending~regout\);

-- Location: LCCOMB_X40_Y9_N14
\delay[1]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \delay[1]~22_combout\ = (delay(1) & (!\delay[0]~21\)) # (!delay(1) & ((\delay[0]~21\) # (GND)))
-- \delay[1]~23\ = CARRY((!\delay[0]~21\) # (!delay(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay(1),
	datad => VCC,
	cin => \delay[0]~21\,
	combout => \delay[1]~22_combout\,
	cout => \delay[1]~23\);

-- Location: LCCOMB_X40_Y8_N24
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!delay(13) & (!delay(10) & (!delay(12) & !delay(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay(13),
	datab => delay(10),
	datac => delay(12),
	datad => delay(11),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X40_Y9_N8
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((!delay(6) & (!delay(8) & !delay(7)))) # (!delay(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay(6),
	datab => delay(8),
	datac => delay(9),
	datad => delay(7),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X40_Y8_N26
\LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!delay(15) & (((\LessThan0~1_combout\ & \LessThan0~0_combout\)) # (!delay(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay(15),
	datab => delay(14),
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X40_Y8_N20
\LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!\LessThan0~3_combout\ & !\LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~3_combout\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCFF_X40_Y9_N15
\delay[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \delay[1]~22_combout\,
	sclr => \LessThan0~4_combout\,
	ena => \current_state.sending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(1));

-- Location: LCCOMB_X40_Y9_N18
\delay[3]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \delay[3]~26_combout\ = (delay(3) & (!\delay[2]~25\)) # (!delay(3) & ((\delay[2]~25\) # (GND)))
-- \delay[3]~27\ = CARRY((!\delay[2]~25\) # (!delay(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay(3),
	datad => VCC,
	cin => \delay[2]~25\,
	combout => \delay[3]~26_combout\,
	cout => \delay[3]~27\);

-- Location: LCFF_X40_Y9_N19
\delay[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \delay[3]~26_combout\,
	sclr => \LessThan0~4_combout\,
	ena => \current_state.sending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(3));

-- Location: LCCOMB_X40_Y9_N22
\delay[5]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \delay[5]~30_combout\ = (delay(5) & (!\delay[4]~29\)) # (!delay(5) & ((\delay[4]~29\) # (GND)))
-- \delay[5]~31\ = CARRY((!\delay[4]~29\) # (!delay(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay(5),
	datad => VCC,
	cin => \delay[4]~29\,
	combout => \delay[5]~30_combout\,
	cout => \delay[5]~31\);

-- Location: LCFF_X40_Y9_N23
\delay[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \delay[5]~30_combout\,
	sclr => \LessThan0~4_combout\,
	ena => \current_state.sending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(5));

-- Location: LCCOMB_X40_Y9_N26
\delay[7]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \delay[7]~34_combout\ = (delay(7) & (!\delay[6]~33\)) # (!delay(7) & ((\delay[6]~33\) # (GND)))
-- \delay[7]~35\ = CARRY((!\delay[6]~33\) # (!delay(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay(7),
	datad => VCC,
	cin => \delay[6]~33\,
	combout => \delay[7]~34_combout\,
	cout => \delay[7]~35\);

-- Location: LCFF_X40_Y9_N27
\delay[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \delay[7]~34_combout\,
	sclr => \LessThan0~4_combout\,
	ena => \current_state.sending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(7));

-- Location: LCCOMB_X40_Y9_N28
\delay[8]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \delay[8]~36_combout\ = (delay(8) & (\delay[7]~35\ $ (GND))) # (!delay(8) & (!\delay[7]~35\ & VCC))
-- \delay[8]~37\ = CARRY((delay(8) & !\delay[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay(8),
	datad => VCC,
	cin => \delay[7]~35\,
	combout => \delay[8]~36_combout\,
	cout => \delay[8]~37\);

-- Location: LCFF_X40_Y9_N29
\delay[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \delay[8]~36_combout\,
	sclr => \LessThan0~4_combout\,
	ena => \current_state.sending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(8));

-- Location: LCCOMB_X40_Y9_N30
\delay[9]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \delay[9]~38_combout\ = (delay(9) & (!\delay[8]~37\)) # (!delay(9) & ((\delay[8]~37\) # (GND)))
-- \delay[9]~39\ = CARRY((!\delay[8]~37\) # (!delay(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay(9),
	datad => VCC,
	cin => \delay[8]~37\,
	combout => \delay[9]~38_combout\,
	cout => \delay[9]~39\);

-- Location: LCFF_X40_Y9_N31
\delay[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \delay[9]~38_combout\,
	sclr => \LessThan0~4_combout\,
	ena => \current_state.sending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(9));

-- Location: LCCOMB_X40_Y8_N0
\delay[10]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \delay[10]~40_combout\ = (delay(10) & (\delay[9]~39\ $ (GND))) # (!delay(10) & (!\delay[9]~39\ & VCC))
-- \delay[10]~41\ = CARRY((delay(10) & !\delay[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay(10),
	datad => VCC,
	cin => \delay[9]~39\,
	combout => \delay[10]~40_combout\,
	cout => \delay[10]~41\);

-- Location: LCFF_X40_Y8_N1
\delay[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \delay[10]~40_combout\,
	sclr => \LessThan0~4_combout\,
	ena => \current_state.sending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(10));

-- Location: LCCOMB_X40_Y8_N2
\delay[11]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \delay[11]~42_combout\ = (delay(11) & (!\delay[10]~41\)) # (!delay(11) & ((\delay[10]~41\) # (GND)))
-- \delay[11]~43\ = CARRY((!\delay[10]~41\) # (!delay(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay(11),
	datad => VCC,
	cin => \delay[10]~41\,
	combout => \delay[11]~42_combout\,
	cout => \delay[11]~43\);

-- Location: LCFF_X40_Y8_N3
\delay[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \delay[11]~42_combout\,
	sclr => \LessThan0~4_combout\,
	ena => \current_state.sending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(11));

-- Location: LCCOMB_X40_Y8_N4
\delay[12]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \delay[12]~44_combout\ = (delay(12) & (\delay[11]~43\ $ (GND))) # (!delay(12) & (!\delay[11]~43\ & VCC))
-- \delay[12]~45\ = CARRY((delay(12) & !\delay[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay(12),
	datad => VCC,
	cin => \delay[11]~43\,
	combout => \delay[12]~44_combout\,
	cout => \delay[12]~45\);

-- Location: LCFF_X40_Y8_N5
\delay[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \delay[12]~44_combout\,
	sclr => \LessThan0~4_combout\,
	ena => \current_state.sending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(12));

-- Location: LCCOMB_X40_Y8_N8
\delay[14]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \delay[14]~48_combout\ = (delay(14) & (\delay[13]~47\ $ (GND))) # (!delay(14) & (!\delay[13]~47\ & VCC))
-- \delay[14]~49\ = CARRY((delay(14) & !\delay[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay(14),
	datad => VCC,
	cin => \delay[13]~47\,
	combout => \delay[14]~48_combout\,
	cout => \delay[14]~49\);

-- Location: LCFF_X40_Y8_N9
\delay[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \delay[14]~48_combout\,
	sclr => \LessThan0~4_combout\,
	ena => \current_state.sending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(14));

-- Location: LCCOMB_X40_Y8_N14
\delay[17]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \delay[17]~54_combout\ = (delay(17) & (!\delay[16]~53\)) # (!delay(17) & ((\delay[16]~53\) # (GND)))
-- \delay[17]~55\ = CARRY((!\delay[16]~53\) # (!delay(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay(17),
	datad => VCC,
	cin => \delay[16]~53\,
	combout => \delay[17]~54_combout\,
	cout => \delay[17]~55\);

-- Location: LCFF_X40_Y8_N15
\delay[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \delay[17]~54_combout\,
	sclr => \LessThan0~4_combout\,
	ena => \current_state.sending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(17));

-- Location: LCCOMB_X40_Y8_N16
\delay[18]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \delay[18]~56_combout\ = (delay(18) & (\delay[17]~55\ $ (GND))) # (!delay(18) & (!\delay[17]~55\ & VCC))
-- \delay[18]~57\ = CARRY((delay(18) & !\delay[17]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay(18),
	datad => VCC,
	cin => \delay[17]~55\,
	combout => \delay[18]~56_combout\,
	cout => \delay[18]~57\);

-- Location: LCFF_X40_Y8_N17
\delay[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \delay[18]~56_combout\,
	sclr => \LessThan0~4_combout\,
	ena => \current_state.sending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(18));

-- Location: LCCOMB_X40_Y8_N18
\delay[19]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \delay[19]~58_combout\ = \delay[18]~57\ $ (delay(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => delay(19),
	cin => \delay[18]~57\,
	combout => \delay[19]~58_combout\);

-- Location: LCFF_X40_Y8_N19
\delay[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \delay[19]~58_combout\,
	sclr => \LessThan0~4_combout\,
	ena => \current_state.sending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay(19));

-- Location: LCCOMB_X40_Y8_N28
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (((!delay(19)) # (!delay(18))) # (!delay(17))) # (!delay(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay(16),
	datab => delay(17),
	datac => delay(18),
	datad => delay(19),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X40_Y8_N30
\display_a[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_a[0]~0_combout\ = (\current_state.sending~regout\ & (!\LessThan0~3_combout\ & !\LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.sending~regout\,
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~2_combout\,
	combout => \display_a[0]~0_combout\);

-- Location: LCFF_X39_Y9_N1
\display_a[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \decA|Mux6~0_combout\,
	ena => \display_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_a[0]~reg0_regout\);

-- Location: LCCOMB_X39_Y9_N22
\decA|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decA|Mux5~0_combout\ = (!\Equal1~2_combout\ & ((\ascii|Mux2~8_combout\) # (!\ascii|Mux1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii|Mux1~8_combout\,
	datab => \ascii|Mux2~8_combout\,
	datac => \Equal1~2_combout\,
	combout => \decA|Mux5~0_combout\);

-- Location: LCFF_X39_Y9_N23
\display_a[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \decA|Mux5~0_combout\,
	ena => \display_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_a[1]~reg0_regout\);

-- Location: LCCOMB_X36_Y9_N24
\serial|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|Equal4~0_combout\ = (!\Equal1~2_combout\ & \ascii|Mux2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datad => \ascii|Mux2~8_combout\,
	combout => \serial|Equal4~0_combout\);

-- Location: LCCOMB_X36_Y8_N0
\display_a[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_a[2]~reg0feeder_combout\ = \serial|Equal4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \serial|Equal4~0_combout\,
	combout => \display_a[2]~reg0feeder_combout\);

-- Location: LCFF_X36_Y8_N1
\display_a[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \display_a[2]~reg0feeder_combout\,
	ena => \display_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_a[2]~reg0_regout\);

-- Location: LCCOMB_X39_Y9_N8
\decA|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decA|Mux3~0_combout\ = (\ascii|Mux1~8_combout\ & (\ascii|Mux2~8_combout\)) # (!\ascii|Mux1~8_combout\ & (!\ascii|Mux2~8_combout\ & \Equal1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii|Mux1~8_combout\,
	datab => \ascii|Mux2~8_combout\,
	datac => \Equal1~2_combout\,
	combout => \decA|Mux3~0_combout\);

-- Location: LCFF_X39_Y9_N9
\display_a[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \decA|Mux3~0_combout\,
	ena => \display_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_a[3]~reg0_regout\);

-- Location: LCCOMB_X39_Y9_N18
\decA|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decA|Mux2~0_combout\ = (\ascii|Mux1~8_combout\ & ((\Equal1~2_combout\))) # (!\ascii|Mux1~8_combout\ & (!\ascii|Mux2~8_combout\ & !\Equal1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii|Mux1~8_combout\,
	datab => \ascii|Mux2~8_combout\,
	datac => \Equal1~2_combout\,
	combout => \decA|Mux2~0_combout\);

-- Location: LCFF_X39_Y9_N19
\display_a[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \decA|Mux2~0_combout\,
	ena => \display_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_a[4]~reg0_regout\);

-- Location: LCCOMB_X39_Y9_N4
\decA|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decA|Mux1~0_combout\ = (\ascii|Mux2~8_combout\ & ((\Equal1~2_combout\))) # (!\ascii|Mux2~8_combout\ & (\ascii|Mux1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii|Mux1~8_combout\,
	datab => \ascii|Mux2~8_combout\,
	datac => \Equal1~2_combout\,
	combout => \decA|Mux1~0_combout\);

-- Location: LCFF_X39_Y9_N5
\display_a[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \decA|Mux1~0_combout\,
	ena => \display_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_a[5]~reg0_regout\);

-- Location: LCCOMB_X39_Y9_N10
\decA|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decA|Mux0~0_combout\ = (!\ascii|Mux1~8_combout\ & (\ascii|Mux2~8_combout\ & \Equal1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii|Mux1~8_combout\,
	datab => \ascii|Mux2~8_combout\,
	datac => \Equal1~2_combout\,
	combout => \decA|Mux0~0_combout\);

-- Location: LCFF_X39_Y9_N11
\display_a[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \decA|Mux0~0_combout\,
	ena => \display_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_a[6]~reg0_regout\);

-- Location: LCCOMB_X36_Y10_N2
\ascii|Mux5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux5~8_combout\ = (!\ps2|reg\(5) & !\ps2|reg\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2|reg\(5),
	datad => \ps2|reg\(6),
	combout => \ascii|Mux5~8_combout\);

-- Location: LCCOMB_X34_Y9_N30
\ascii|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux3~1_combout\ = (\ps2|reg\(7) & (((!\Equal1~1_combout\) # (!\Equal1~0_combout\)) # (!\ps2|reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(6),
	datab => \ps2|reg\(7),
	datac => \Equal1~0_combout\,
	datad => \Equal1~1_combout\,
	combout => \ascii|Mux3~1_combout\);

-- Location: LCCOMB_X34_Y9_N22
\ascii|Mux4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux4~5_combout\ = (\ps2|reg\(1) & (\ps2|reg\(2) $ (((\ps2|reg\(0)) # (!\ps2|reg\(3)))))) # (!\ps2|reg\(1) & (!\ps2|reg\(3) & (\ps2|reg\(0) & \ps2|reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(3),
	datab => \ps2|reg\(1),
	datac => \ps2|reg\(0),
	datad => \ps2|reg\(2),
	combout => \ascii|Mux4~5_combout\);

-- Location: LCCOMB_X34_Y9_N28
\ascii|Mux4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux4~6_combout\ = (\ps2|reg\(5) & (\ps2|reg\(4) & (!\ps2|reg\(7) & !\ascii|Mux4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(5),
	datab => \ps2|reg\(4),
	datac => \ps2|reg\(7),
	datad => \ascii|Mux4~5_combout\,
	combout => \ascii|Mux4~6_combout\);

-- Location: LCCOMB_X34_Y9_N18
\ascii|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux4~3_combout\ = (\ps2|reg\(1) & (!\ps2|reg\(3) & ((!\ps2|reg\(2)) # (!\ps2|reg\(0))))) # (!\ps2|reg\(1) & (((\ps2|reg\(0) & \ps2|reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(3),
	datab => \ps2|reg\(1),
	datac => \ps2|reg\(0),
	datad => \ps2|reg\(2),
	combout => \ascii|Mux4~3_combout\);

-- Location: LCCOMB_X34_Y9_N24
\ascii|Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux4~4_combout\ = (!\ps2|reg\(5) & (!\ps2|reg\(4) & (!\ps2|reg\(7) & !\ascii|Mux4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(5),
	datab => \ps2|reg\(4),
	datac => \ps2|reg\(7),
	datad => \ascii|Mux4~3_combout\,
	combout => \ascii|Mux4~4_combout\);

-- Location: LCCOMB_X34_Y9_N0
\ascii|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux4~0_combout\ = (\ps2|reg\(1) & (!\ps2|reg\(3) & (!\ps2|reg\(0)))) # (!\ps2|reg\(1) & (\ps2|reg\(0) & ((\ps2|reg\(3)) # (!\ps2|reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(3),
	datab => \ps2|reg\(1),
	datac => \ps2|reg\(0),
	datad => \ps2|reg\(2),
	combout => \ascii|Mux4~0_combout\);

-- Location: LCCOMB_X34_Y9_N2
\ascii|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux4~1_combout\ = (!\ps2|reg\(4) & (!\ps2|reg\(6) & ((!\ascii|Mux4~0_combout\) # (!\ps2|reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(5),
	datab => \ps2|reg\(4),
	datac => \ps2|reg\(6),
	datad => \ascii|Mux4~0_combout\,
	combout => \ascii|Mux4~1_combout\);

-- Location: LCCOMB_X34_Y9_N10
\ascii|Mux4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux4~7_combout\ = (\ascii|Mux4~2_combout\) # ((\ascii|Mux4~6_combout\) # ((\ascii|Mux4~4_combout\) # (\ascii|Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii|Mux4~2_combout\,
	datab => \ascii|Mux4~6_combout\,
	datac => \ascii|Mux4~4_combout\,
	datad => \ascii|Mux4~1_combout\,
	combout => \ascii|Mux4~7_combout\);

-- Location: LCCOMB_X35_Y9_N8
\ascii|Mux4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux4~9_combout\ = (\ascii|Mux3~1_combout\) # ((\ascii|Mux4~7_combout\) # ((!\ascii|Mux4~8_combout\ & \ascii|Mux5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii|Mux4~8_combout\,
	datab => \ascii|Mux5~8_combout\,
	datac => \ascii|Mux3~1_combout\,
	datad => \ascii|Mux4~7_combout\,
	combout => \ascii|Mux4~9_combout\);

-- Location: LCCOMB_X35_Y9_N28
\ascii|Mux6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux6~10_combout\ = (\ps2|reg\(4) & ((\ps2|reg\(0) & ((\ps2|reg\(2)))) # (!\ps2|reg\(0) & (\ps2|reg\(3) & !\ps2|reg\(2))))) # (!\ps2|reg\(4) & (((\ps2|reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(4),
	datab => \ps2|reg\(0),
	datac => \ps2|reg\(3),
	datad => \ps2|reg\(2),
	combout => \ascii|Mux6~10_combout\);

-- Location: LCCOMB_X35_Y9_N26
\ascii|Mux6~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux6~14_combout\ = (!\ps2|reg\(7) & (\ascii|Mux6~10_combout\ & (\ps2|reg\(1) & \ps2|reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(7),
	datab => \ascii|Mux6~10_combout\,
	datac => \ps2|reg\(1),
	datad => \ps2|reg\(5),
	combout => \ascii|Mux6~14_combout\);

-- Location: LCCOMB_X35_Y9_N4
\ascii|Mux6~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux6~13_combout\ = (\ps2|reg\(7) & (((!\Equal1~0_combout\) # (!\ps2|reg\(5))) # (!\ps2|reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(4),
	datab => \ps2|reg\(5),
	datac => \ps2|reg\(7),
	datad => \Equal1~0_combout\,
	combout => \ascii|Mux6~13_combout\);

-- Location: LCCOMB_X34_Y9_N14
\ascii|Mux6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux6~6_combout\ = (((\ps2|reg\(0)) # (!\ps2|reg\(1))) # (!\ps2|reg\(4))) # (!\ps2|reg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(3),
	datab => \ps2|reg\(4),
	datac => \ps2|reg\(1),
	datad => \ps2|reg\(0),
	combout => \ascii|Mux6~6_combout\);

-- Location: LCCOMB_X34_Y9_N26
\ascii|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux6~4_combout\ = (\ps2|reg\(3) & (!\ps2|reg\(4) & ((\ps2|reg\(0)) # (\ps2|reg\(2))))) # (!\ps2|reg\(3) & (\ps2|reg\(0) & (\ps2|reg\(4) $ (\ps2|reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(3),
	datab => \ps2|reg\(4),
	datac => \ps2|reg\(0),
	datad => \ps2|reg\(2),
	combout => \ascii|Mux6~4_combout\);

-- Location: LCCOMB_X34_Y9_N12
\ascii|Mux6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux6~5_combout\ = (\ps2|reg\(7)) # ((!\ps2|reg\(1) & !\ascii|Mux6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2|reg\(7),
	datac => \ps2|reg\(1),
	datad => \ascii|Mux6~4_combout\,
	combout => \ascii|Mux6~5_combout\);

-- Location: LCCOMB_X34_Y9_N8
\ascii|Mux6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux6~7_combout\ = (!\ps2|reg\(6) & ((\ascii|Mux6~5_combout\) # ((!\ps2|reg\(5) & \ascii|Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(6),
	datab => \ps2|reg\(5),
	datac => \ascii|Mux6~6_combout\,
	datad => \ascii|Mux6~5_combout\,
	combout => \ascii|Mux6~7_combout\);

-- Location: LCCOMB_X35_Y9_N14
\ascii|Mux6~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux6~11_combout\ = (\ascii|Mux6~9_combout\) # ((\ascii|Mux6~14_combout\) # ((\ascii|Mux6~13_combout\) # (\ascii|Mux6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii|Mux6~9_combout\,
	datab => \ascii|Mux6~14_combout\,
	datac => \ascii|Mux6~13_combout\,
	datad => \ascii|Mux6~7_combout\,
	combout => \ascii|Mux6~11_combout\);

-- Location: LCCOMB_X35_Y9_N2
\ascii|Mux1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux1~9_combout\ = (!\ps2|reg\(7) & \ps2|reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(7),
	datad => \ps2|reg\(5),
	combout => \ascii|Mux1~9_combout\);

-- Location: LCCOMB_X35_Y9_N24
\ascii|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux3~0_combout\ = (!\ps2|reg\(4) & !\ps2|reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(4),
	datad => \ps2|reg\(5),
	combout => \ascii|Mux3~0_combout\);

-- Location: LCCOMB_X35_Y10_N2
\ascii|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux5~4_combout\ = (\ps2|reg\(0) & (\ps2|reg\(1) $ ((\ps2|reg\(2))))) # (!\ps2|reg\(0) & (\ps2|reg\(1) & (\ps2|reg\(2) & !\ps2|reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(1),
	datab => \ps2|reg\(2),
	datac => \ps2|reg\(3),
	datad => \ps2|reg\(0),
	combout => \ascii|Mux5~4_combout\);

-- Location: LCCOMB_X35_Y9_N10
\ascii|Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux5~5_combout\ = (!\ps2|reg\(7) & (\ps2|reg\(6) & ((!\ascii|Mux5~4_combout\) # (!\ascii|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(7),
	datab => \ascii|Mux3~0_combout\,
	datac => \ps2|reg\(6),
	datad => \ascii|Mux5~4_combout\,
	combout => \ascii|Mux5~5_combout\);

-- Location: LCCOMB_X35_Y9_N0
\ascii|Mux5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux5~6_combout\ = (\ascii|Mux5~5_combout\) # ((\ascii|Mux5~3_combout\ & (\ps2|reg\(2) & \ascii|Mux1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii|Mux5~3_combout\,
	datab => \ps2|reg\(2),
	datac => \ascii|Mux1~9_combout\,
	datad => \ascii|Mux5~5_combout\,
	combout => \ascii|Mux5~6_combout\);

-- Location: LCCOMB_X35_Y9_N30
\ascii|Mux5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux5~7_combout\ = (\ascii|Mux3~1_combout\) # ((\ascii|Mux5~6_combout\) # ((!\ascii|Mux5~2_combout\ & !\ps2|reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii|Mux5~2_combout\,
	datab => \ps2|reg\(6),
	datac => \ascii|Mux3~1_combout\,
	datad => \ascii|Mux5~6_combout\,
	combout => \ascii|Mux5~7_combout\);

-- Location: LCCOMB_X36_Y8_N26
\decB|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decB|Mux6~0_combout\ = (\ascii|Mux6~11_combout\ & (!\ascii|Mux3~8_combout\ & (\ascii|Mux4~9_combout\ $ (!\ascii|Mux5~7_combout\)))) # (!\ascii|Mux6~11_combout\ & (!\ascii|Mux5~7_combout\ & (\ascii|Mux3~8_combout\ $ (!\ascii|Mux4~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii|Mux3~8_combout\,
	datab => \ascii|Mux4~9_combout\,
	datac => \ascii|Mux6~11_combout\,
	datad => \ascii|Mux5~7_combout\,
	combout => \decB|Mux6~0_combout\);

-- Location: LCFF_X36_Y8_N27
\display_b[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \decB|Mux6~0_combout\,
	ena => \display_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_b[0]~reg0_regout\);

-- Location: LCCOMB_X36_Y8_N24
\decB|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decB|Mux5~0_combout\ = (\ascii|Mux4~9_combout\ & (\ascii|Mux6~11_combout\ & (\ascii|Mux3~8_combout\ $ (\ascii|Mux5~7_combout\)))) # (!\ascii|Mux4~9_combout\ & (!\ascii|Mux3~8_combout\ & ((\ascii|Mux6~11_combout\) # (\ascii|Mux5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii|Mux3~8_combout\,
	datab => \ascii|Mux4~9_combout\,
	datac => \ascii|Mux6~11_combout\,
	datad => \ascii|Mux5~7_combout\,
	combout => \decB|Mux5~0_combout\);

-- Location: LCFF_X36_Y8_N25
\display_b[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \decB|Mux5~0_combout\,
	ena => \display_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_b[1]~reg0_regout\);

-- Location: LCCOMB_X36_Y8_N10
\decB|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decB|Mux4~0_combout\ = (\ascii|Mux5~7_combout\ & (!\ascii|Mux3~8_combout\ & ((\ascii|Mux6~11_combout\)))) # (!\ascii|Mux5~7_combout\ & ((\ascii|Mux4~9_combout\ & (!\ascii|Mux3~8_combout\)) # (!\ascii|Mux4~9_combout\ & ((\ascii|Mux6~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii|Mux3~8_combout\,
	datab => \ascii|Mux4~9_combout\,
	datac => \ascii|Mux6~11_combout\,
	datad => \ascii|Mux5~7_combout\,
	combout => \decB|Mux4~0_combout\);

-- Location: LCFF_X36_Y8_N11
\display_b[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \decB|Mux4~0_combout\,
	ena => \display_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_b[2]~reg0_regout\);

-- Location: LCCOMB_X36_Y8_N20
\decB|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decB|Mux3~0_combout\ = (\ascii|Mux6~11_combout\ & ((\ascii|Mux4~9_combout\ $ (!\ascii|Mux5~7_combout\)))) # (!\ascii|Mux6~11_combout\ & ((\ascii|Mux3~8_combout\ & (!\ascii|Mux4~9_combout\ & \ascii|Mux5~7_combout\)) # (!\ascii|Mux3~8_combout\ & 
-- (\ascii|Mux4~9_combout\ & !\ascii|Mux5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii|Mux3~8_combout\,
	datab => \ascii|Mux4~9_combout\,
	datac => \ascii|Mux6~11_combout\,
	datad => \ascii|Mux5~7_combout\,
	combout => \decB|Mux3~0_combout\);

-- Location: LCFF_X36_Y8_N21
\display_b[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \decB|Mux3~0_combout\,
	ena => \display_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_b[3]~reg0_regout\);

-- Location: LCCOMB_X36_Y8_N22
\decB|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decB|Mux2~0_combout\ = (\ascii|Mux3~8_combout\ & (\ascii|Mux4~9_combout\ & ((\ascii|Mux5~7_combout\) # (!\ascii|Mux6~11_combout\)))) # (!\ascii|Mux3~8_combout\ & (!\ascii|Mux4~9_combout\ & (!\ascii|Mux6~11_combout\ & \ascii|Mux5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii|Mux3~8_combout\,
	datab => \ascii|Mux4~9_combout\,
	datac => \ascii|Mux6~11_combout\,
	datad => \ascii|Mux5~7_combout\,
	combout => \decB|Mux2~0_combout\);

-- Location: LCFF_X36_Y8_N23
\display_b[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \decB|Mux2~0_combout\,
	ena => \display_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_b[4]~reg0_regout\);

-- Location: LCCOMB_X36_Y8_N28
\decB|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decB|Mux1~0_combout\ = (\ascii|Mux3~8_combout\ & ((\ascii|Mux6~11_combout\ & ((\ascii|Mux5~7_combout\))) # (!\ascii|Mux6~11_combout\ & (\ascii|Mux4~9_combout\)))) # (!\ascii|Mux3~8_combout\ & (\ascii|Mux4~9_combout\ & (\ascii|Mux6~11_combout\ $ 
-- (\ascii|Mux5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii|Mux3~8_combout\,
	datab => \ascii|Mux4~9_combout\,
	datac => \ascii|Mux6~11_combout\,
	datad => \ascii|Mux5~7_combout\,
	combout => \decB|Mux1~0_combout\);

-- Location: LCFF_X36_Y8_N29
\display_b[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \decB|Mux1~0_combout\,
	ena => \display_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_b[5]~reg0_regout\);

-- Location: LCCOMB_X36_Y10_N4
\ascii|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux3~2_combout\ = (\ps2|reg\(2) & (!\ps2|reg\(1) & (!\ps2|reg\(5) & !\ps2|reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(2),
	datab => \ps2|reg\(1),
	datac => \ps2|reg\(5),
	datad => \ps2|reg\(4),
	combout => \ascii|Mux3~2_combout\);

-- Location: LCCOMB_X36_Y10_N30
\ascii|Mux6~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux6~12_combout\ = (!\ps2|reg\(7) & (\ps2|reg\(6) & ((!\ascii|Mux3~2_combout\) # (!\ps2|reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(7),
	datab => \ps2|reg\(0),
	datac => \ascii|Mux3~2_combout\,
	datad => \ps2|reg\(6),
	combout => \ascii|Mux6~12_combout\);

-- Location: LCCOMB_X34_Y10_N14
\ascii|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux3~3_combout\ = (\ps2|reg\(0) & (((!\ps2|reg\(4))))) # (!\ps2|reg\(0) & (\ps2|reg\(1) & (\ps2|reg\(3) $ (\ps2|reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(3),
	datab => \ps2|reg\(0),
	datac => \ps2|reg\(1),
	datad => \ps2|reg\(4),
	combout => \ascii|Mux3~3_combout\);

-- Location: LCCOMB_X34_Y10_N20
\ascii|Mux3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux3~6_combout\ = (\ps2|reg\(4) & ((\ps2|reg\(3) & ((\ps2|reg\(1)))) # (!\ps2|reg\(3) & (\ps2|reg\(0))))) # (!\ps2|reg\(4) & (((\ps2|reg\(0) & \ps2|reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(3),
	datab => \ps2|reg\(0),
	datac => \ps2|reg\(1),
	datad => \ps2|reg\(4),
	combout => \ascii|Mux3~6_combout\);

-- Location: LCCOMB_X34_Y10_N0
\ascii|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux3~4_combout\ = (\ps2|reg\(3) & (\ps2|reg\(2) $ (((!\ps2|reg\(0)) # (!\ps2|reg\(1)))))) # (!\ps2|reg\(3) & ((\ps2|reg\(1) $ (!\ps2|reg\(0))) # (!\ps2|reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(3),
	datab => \ps2|reg\(1),
	datac => \ps2|reg\(2),
	datad => \ps2|reg\(0),
	combout => \ascii|Mux3~4_combout\);

-- Location: LCCOMB_X34_Y10_N18
\ascii|Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux3~5_combout\ = (\ps2|reg\(5) & (\ps2|reg\(2))) # (!\ps2|reg\(5) & (((\ascii|Mux3~4_combout\) # (!\ps2|reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(5),
	datab => \ps2|reg\(2),
	datac => \ps2|reg\(4),
	datad => \ascii|Mux3~4_combout\,
	combout => \ascii|Mux3~5_combout\);

-- Location: LCCOMB_X34_Y10_N26
\ascii|Mux3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux3~7_combout\ = (\ps2|reg\(5) & ((\ascii|Mux3~5_combout\ & ((\ascii|Mux3~6_combout\))) # (!\ascii|Mux3~5_combout\ & (!\ascii|Mux3~3_combout\)))) # (!\ps2|reg\(5) & (((\ascii|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(5),
	datab => \ascii|Mux3~3_combout\,
	datac => \ascii|Mux3~6_combout\,
	datad => \ascii|Mux3~5_combout\,
	combout => \ascii|Mux3~7_combout\);

-- Location: LCCOMB_X35_Y9_N22
\ascii|Mux3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux3~8_combout\ = (\ascii|Mux6~12_combout\) # ((\ascii|Mux3~1_combout\) # ((!\ps2|reg\(6) & \ascii|Mux3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(6),
	datab => \ascii|Mux6~12_combout\,
	datac => \ascii|Mux3~1_combout\,
	datad => \ascii|Mux3~7_combout\,
	combout => \ascii|Mux3~8_combout\);

-- Location: LCCOMB_X35_Y8_N28
\decB|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decB|Mux0~0_combout\ = (\ascii|Mux3~8_combout\ & (\ascii|Mux6~11_combout\ & (\ascii|Mux5~7_combout\ $ (\ascii|Mux4~9_combout\)))) # (!\ascii|Mux3~8_combout\ & (!\ascii|Mux5~7_combout\ & (\ascii|Mux6~11_combout\ $ (\ascii|Mux4~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii|Mux6~11_combout\,
	datab => \ascii|Mux3~8_combout\,
	datac => \ascii|Mux5~7_combout\,
	datad => \ascii|Mux4~9_combout\,
	combout => \decB|Mux0~0_combout\);

-- Location: LCFF_X35_Y8_N29
\display_b[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \decB|Mux0~0_combout\,
	ena => \display_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_b[6]~reg0_regout\);

-- Location: LCCOMB_X38_Y9_N22
\serial|index[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|index[2]~6_combout\ = (\serial|index[0]~4_combout\ & (\serial|Add1~1_combout\ & (!\serial|LessThan1~0_combout\))) # (!\serial|index[0]~4_combout\ & (((\serial|index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial|Add1~1_combout\,
	datab => \serial|LessThan1~0_combout\,
	datac => \serial|index\(2),
	datad => \serial|index[0]~4_combout\,
	combout => \serial|index[2]~6_combout\);

-- Location: LCFF_X38_Y9_N23
\serial|index[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \serial|index[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial|index\(2));

-- Location: LCCOMB_X35_Y10_N18
\ascii|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux1~1_combout\ = (!\ps2|reg\(7) & (\ps2|reg\(6) $ (\ps2|reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(6),
	datab => \ps2|reg\(7),
	datad => \ps2|reg\(4),
	combout => \ascii|Mux1~1_combout\);

-- Location: LCCOMB_X35_Y10_N24
\ascii|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux1~2_combout\ = (\ps2|reg\(3) & (\ps2|reg\(0) & (\ps2|reg\(1) $ (\ps2|reg\(2))))) # (!\ps2|reg\(3) & ((\ps2|reg\(1) $ (\ps2|reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(3),
	datab => \ps2|reg\(0),
	datac => \ps2|reg\(1),
	datad => \ps2|reg\(2),
	combout => \ascii|Mux1~2_combout\);

-- Location: LCCOMB_X35_Y10_N0
\ascii|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux1~0_combout\ = (\ps2|reg\(7)) # (\ps2|reg\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2|reg\(7),
	datad => \ps2|reg\(4),
	combout => \ascii|Mux1~0_combout\);

-- Location: LCCOMB_X35_Y10_N26
\ascii|Mux1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux1~5_combout\ = (\ps2|reg\(5) & ((\ascii|Mux1~1_combout\ & ((\ascii|Mux1~2_combout\) # (!\ascii|Mux1~0_combout\))) # (!\ascii|Mux1~1_combout\ & ((\ascii|Mux1~0_combout\))))) # (!\ps2|reg\(5) & (\ascii|Mux1~1_combout\ & 
-- ((\ascii|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2|reg\(5),
	datab => \ascii|Mux1~1_combout\,
	datac => \ascii|Mux1~2_combout\,
	datad => \ascii|Mux1~0_combout\,
	combout => \ascii|Mux1~5_combout\);

-- Location: LCCOMB_X36_Y9_N22
\ascii|Mux1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux1~6_combout\ = (\ascii|Mux1~4_combout\ & (\ps2|reg\(3) $ (((!\ps2|reg\(5) & !\ascii|Mux1~5_combout\))))) # (!\ascii|Mux1~4_combout\ & (!\ps2|reg\(3) & (!\ps2|reg\(5) & \ascii|Mux1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii|Mux1~4_combout\,
	datab => \ps2|reg\(3),
	datac => \ps2|reg\(5),
	datad => \ascii|Mux1~5_combout\,
	combout => \ascii|Mux1~6_combout\);

-- Location: LCCOMB_X36_Y9_N16
\ascii|Mux1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux1~7_combout\ = (\ascii|Mux1~4_combout\ & ((\ps2|reg\(5) & ((!\ascii|Mux1~5_combout\))) # (!\ps2|reg\(5) & (\ps2|reg\(3) & \ascii|Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii|Mux1~4_combout\,
	datab => \ps2|reg\(3),
	datac => \ps2|reg\(5),
	datad => \ascii|Mux1~5_combout\,
	combout => \ascii|Mux1~7_combout\);

-- Location: LCCOMB_X36_Y9_N6
\ascii|Mux1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ascii|Mux1~8_combout\ = (\Equal1~2_combout\) # (\ascii|Mux1~7_combout\ $ (((\ascii|Mux1~3_combout\ & !\ascii|Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii|Mux1~3_combout\,
	datab => \ascii|Mux1~6_combout\,
	datac => \ascii|Mux1~7_combout\,
	datad => \Equal1~2_combout\,
	combout => \ascii|Mux1~8_combout\);

-- Location: LCCOMB_X37_Y9_N18
\serial|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|process_0~0_combout\ = ((!\ascii|Mux2~8_combout\) # (!\ascii|Mux1~8_combout\)) # (!\Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~2_combout\,
	datac => \ascii|Mux1~8_combout\,
	datad => \ascii|Mux2~8_combout\,
	combout => \serial|process_0~0_combout\);

-- Location: LCCOMB_X37_Y9_N28
\serial|process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|process_0~1_combout\ = (\ascii|Mux3~8_combout\) # ((\ascii|Mux5~7_combout\) # ((\ascii|Mux6~11_combout\) # (\serial|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii|Mux3~8_combout\,
	datab => \ascii|Mux5~7_combout\,
	datac => \ascii|Mux6~11_combout\,
	datad => \serial|process_0~0_combout\,
	combout => \serial|process_0~1_combout\);

-- Location: LCCOMB_X37_Y8_N6
\serial|prscl[0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|prscl[0]~13_combout\ = \serial|prscl\(0) $ (VCC)
-- \serial|prscl[0]~14\ = CARRY(\serial|prscl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial|prscl\(0),
	datad => VCC,
	combout => \serial|prscl[0]~13_combout\,
	cout => \serial|prscl[0]~14\);

-- Location: LCCOMB_X37_Y8_N8
\serial|prscl[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|prscl[1]~15_combout\ = (\serial|prscl\(1) & (!\serial|prscl[0]~14\)) # (!\serial|prscl\(1) & ((\serial|prscl[0]~14\) # (GND)))
-- \serial|prscl[1]~16\ = CARRY((!\serial|prscl[0]~14\) # (!\serial|prscl\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \serial|prscl\(1),
	datad => VCC,
	cin => \serial|prscl[0]~14\,
	combout => \serial|prscl[1]~15_combout\,
	cout => \serial|prscl[1]~16\);

-- Location: LCCOMB_X37_Y8_N22
\serial|prscl[8]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|prscl[8]~29_combout\ = (\serial|prscl\(8) & (\serial|prscl[7]~28\ $ (GND))) # (!\serial|prscl\(8) & (!\serial|prscl[7]~28\ & VCC))
-- \serial|prscl[8]~30\ = CARRY((\serial|prscl\(8) & !\serial|prscl[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \serial|prscl\(8),
	datad => VCC,
	cin => \serial|prscl[7]~28\,
	combout => \serial|prscl[8]~29_combout\,
	cout => \serial|prscl[8]~30\);

-- Location: LCCOMB_X37_Y8_N24
\serial|prscl[9]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|prscl[9]~31_combout\ = (\serial|prscl\(9) & (!\serial|prscl[8]~30\)) # (!\serial|prscl\(9) & ((\serial|prscl[8]~30\) # (GND)))
-- \serial|prscl[9]~32\ = CARRY((!\serial|prscl[8]~30\) # (!\serial|prscl\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \serial|prscl\(9),
	datad => VCC,
	cin => \serial|prscl[8]~30\,
	combout => \serial|prscl[9]~31_combout\,
	cout => \serial|prscl[9]~32\);

-- Location: LCCOMB_X37_Y8_N26
\serial|prscl[10]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|prscl[10]~33_combout\ = (\serial|prscl\(10) & (\serial|prscl[9]~32\ $ (GND))) # (!\serial|prscl\(10) & (!\serial|prscl[9]~32\ & VCC))
-- \serial|prscl[10]~34\ = CARRY((\serial|prscl\(10) & !\serial|prscl[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \serial|prscl\(10),
	datad => VCC,
	cin => \serial|prscl[9]~32\,
	combout => \serial|prscl[10]~33_combout\,
	cout => \serial|prscl[10]~34\);

-- Location: LCFF_X37_Y8_N27
\serial|prscl[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \serial|prscl[10]~33_combout\,
	sclr => \serial|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial|prscl\(10));

-- Location: LCCOMB_X37_Y8_N28
\serial|prscl[11]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|prscl[11]~35_combout\ = (\serial|prscl\(11) & (!\serial|prscl[10]~34\)) # (!\serial|prscl\(11) & ((\serial|prscl[10]~34\) # (GND)))
-- \serial|prscl[11]~36\ = CARRY((!\serial|prscl[10]~34\) # (!\serial|prscl\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \serial|prscl\(11),
	datad => VCC,
	cin => \serial|prscl[10]~34\,
	combout => \serial|prscl[11]~35_combout\,
	cout => \serial|prscl[11]~36\);

-- Location: LCFF_X37_Y8_N29
\serial|prscl[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \serial|prscl[11]~35_combout\,
	sclr => \serial|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial|prscl\(11));

-- Location: LCCOMB_X37_Y8_N30
\serial|prscl[12]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|prscl[12]~37_combout\ = \serial|prscl[11]~36\ $ (!\serial|prscl\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \serial|prscl\(12),
	cin => \serial|prscl[11]~36\,
	combout => \serial|prscl[12]~37_combout\);

-- Location: LCFF_X37_Y8_N31
\serial|prscl[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \serial|prscl[12]~37_combout\,
	sclr => \serial|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial|prscl\(12));

-- Location: LCCOMB_X37_Y8_N14
\serial|prscl[4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|prscl[4]~21_combout\ = (\serial|prscl\(4) & (\serial|prscl[3]~20\ $ (GND))) # (!\serial|prscl\(4) & (!\serial|prscl[3]~20\ & VCC))
-- \serial|prscl[4]~22\ = CARRY((\serial|prscl\(4) & !\serial|prscl[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \serial|prscl\(4),
	datad => VCC,
	cin => \serial|prscl[3]~20\,
	combout => \serial|prscl[4]~21_combout\,
	cout => \serial|prscl[4]~22\);

-- Location: LCFF_X37_Y8_N15
\serial|prscl[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \serial|prscl[4]~21_combout\,
	sclr => \serial|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial|prscl\(4));

-- Location: LCCOMB_X36_Y8_N14
\serial|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|LessThan0~0_combout\ = ((!\serial|prscl\(5) & ((!\serial|prscl\(3)) # (!\serial|prscl\(4))))) # (!\serial|prscl\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial|prscl\(5),
	datab => \serial|prscl\(4),
	datac => \serial|prscl\(3),
	datad => \serial|prscl\(6),
	combout => \serial|LessThan0~0_combout\);

-- Location: LCFF_X37_Y8_N25
\serial|prscl[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \serial|prscl[9]~31_combout\,
	sclr => \serial|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial|prscl\(9));

-- Location: LCCOMB_X36_Y8_N12
\serial|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|LessThan0~1_combout\ = (!\serial|prscl\(7) & (!\serial|prscl\(8) & (\serial|LessThan0~0_combout\ & !\serial|prscl\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial|prscl\(7),
	datab => \serial|prscl\(8),
	datac => \serial|LessThan0~0_combout\,
	datad => \serial|prscl\(9),
	combout => \serial|LessThan0~1_combout\);

-- Location: LCCOMB_X36_Y8_N2
\serial|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|LessThan0~2_combout\ = (\serial|prscl\(12) & ((\serial|prscl\(11)) # ((\serial|prscl\(10) & !\serial|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial|prscl\(10),
	datab => \serial|prscl\(11),
	datac => \serial|prscl\(12),
	datad => \serial|LessThan0~1_combout\,
	combout => \serial|LessThan0~2_combout\);

-- Location: LCFF_X37_Y8_N9
\serial|prscl[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \serial|prscl[1]~15_combout\,
	sclr => \serial|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial|prscl\(1));

-- Location: LCCOMB_X37_Y8_N10
\serial|prscl[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|prscl[2]~17_combout\ = (\serial|prscl\(2) & (\serial|prscl[1]~16\ $ (GND))) # (!\serial|prscl\(2) & (!\serial|prscl[1]~16\ & VCC))
-- \serial|prscl[2]~18\ = CARRY((\serial|prscl\(2) & !\serial|prscl[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \serial|prscl\(2),
	datad => VCC,
	cin => \serial|prscl[1]~16\,
	combout => \serial|prscl[2]~17_combout\,
	cout => \serial|prscl[2]~18\);

-- Location: LCCOMB_X37_Y8_N12
\serial|prscl[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|prscl[3]~19_combout\ = (\serial|prscl\(3) & (!\serial|prscl[2]~18\)) # (!\serial|prscl\(3) & ((\serial|prscl[2]~18\) # (GND)))
-- \serial|prscl[3]~20\ = CARRY((!\serial|prscl[2]~18\) # (!\serial|prscl\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \serial|prscl\(3),
	datad => VCC,
	cin => \serial|prscl[2]~18\,
	combout => \serial|prscl[3]~19_combout\,
	cout => \serial|prscl[3]~20\);

-- Location: LCFF_X37_Y8_N13
\serial|prscl[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \serial|prscl[3]~19_combout\,
	sclr => \serial|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial|prscl\(3));

-- Location: LCCOMB_X37_Y8_N16
\serial|prscl[5]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|prscl[5]~23_combout\ = (\serial|prscl\(5) & (!\serial|prscl[4]~22\)) # (!\serial|prscl\(5) & ((\serial|prscl[4]~22\) # (GND)))
-- \serial|prscl[5]~24\ = CARRY((!\serial|prscl[4]~22\) # (!\serial|prscl\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \serial|prscl\(5),
	datad => VCC,
	cin => \serial|prscl[4]~22\,
	combout => \serial|prscl[5]~23_combout\,
	cout => \serial|prscl[5]~24\);

-- Location: LCFF_X37_Y8_N17
\serial|prscl[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \serial|prscl[5]~23_combout\,
	sclr => \serial|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial|prscl\(5));

-- Location: LCCOMB_X37_Y8_N18
\serial|prscl[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|prscl[6]~25_combout\ = (\serial|prscl\(6) & (\serial|prscl[5]~24\ $ (GND))) # (!\serial|prscl\(6) & (!\serial|prscl[5]~24\ & VCC))
-- \serial|prscl[6]~26\ = CARRY((\serial|prscl\(6) & !\serial|prscl[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \serial|prscl\(6),
	datad => VCC,
	cin => \serial|prscl[5]~24\,
	combout => \serial|prscl[6]~25_combout\,
	cout => \serial|prscl[6]~26\);

-- Location: LCFF_X37_Y8_N19
\serial|prscl[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \serial|prscl[6]~25_combout\,
	sclr => \serial|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial|prscl\(6));

-- Location: LCFF_X37_Y8_N23
\serial|prscl[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \serial|prscl[8]~29_combout\,
	sclr => \serial|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial|prscl\(8));

-- Location: LCFF_X37_Y8_N7
\serial|prscl[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \serial|prscl[0]~13_combout\,
	sclr => \serial|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial|prscl\(0));

-- Location: LCCOMB_X37_Y8_N0
\serial|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|Equal0~0_combout\ = (!\serial|prscl\(7) & (!\serial|prscl\(8) & (!\serial|prscl\(1) & !\serial|prscl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial|prscl\(7),
	datab => \serial|prscl\(8),
	datac => \serial|prscl\(1),
	datad => \serial|prscl\(0),
	combout => \serial|Equal0~0_combout\);

-- Location: LCCOMB_X37_Y8_N4
\serial|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|Equal0~2_combout\ = (\serial|prscl\(9) & (!\serial|prscl\(10) & (!\serial|prscl\(6) & \serial|prscl\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial|prscl\(9),
	datab => \serial|prscl\(10),
	datac => \serial|prscl\(6),
	datad => \serial|prscl\(11),
	combout => \serial|Equal0~2_combout\);

-- Location: LCFF_X37_Y8_N11
\serial|prscl[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \serial|prscl[2]~17_combout\,
	sclr => \serial|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial|prscl\(2));

-- Location: LCCOMB_X37_Y8_N2
\serial|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|Equal0~1_combout\ = (\serial|prscl\(3) & (\serial|prscl\(2) & (\serial|prscl\(5) & !\serial|prscl\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial|prscl\(3),
	datab => \serial|prscl\(2),
	datac => \serial|prscl\(5),
	datad => \serial|prscl\(4),
	combout => \serial|Equal0~1_combout\);

-- Location: LCCOMB_X37_Y9_N10
\serial|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|Equal0~3_combout\ = (!\serial|prscl\(12) & (\serial|Equal0~0_combout\ & (\serial|Equal0~2_combout\ & \serial|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial|prscl\(12),
	datab => \serial|Equal0~0_combout\,
	datac => \serial|Equal0~2_combout\,
	datad => \serial|Equal0~1_combout\,
	combout => \serial|Equal0~3_combout\);

-- Location: LCCOMB_X37_Y9_N30
\serial|data[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|data[7]~0_combout\ = (\serial|LessThan1~0_combout\ & \serial|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serial|LessThan1~0_combout\,
	datad => \serial|Equal0~3_combout\,
	combout => \serial|data[7]~0_combout\);

-- Location: LCCOMB_X36_Y9_N30
\serial|data[7]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|data[7]~1_combout\ = (\start~regout\ & (\serial|data[7]~0_combout\ & ((\serial|process_0~1_combout\) # (\ascii|Mux4~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~regout\,
	datab => \serial|process_0~1_combout\,
	datac => \ascii|Mux4~9_combout\,
	datad => \serial|data[7]~0_combout\,
	combout => \serial|data[7]~1_combout\);

-- Location: LCFF_X36_Y9_N25
\serial|data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	sdata => \ascii|Mux3~8_combout\,
	sload => VCC,
	ena => \serial|data[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial|data\(3));

-- Location: LCFF_X36_Y9_N7
\serial|data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \ascii|Mux1~8_combout\,
	ena => \serial|data[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial|data\(6));

-- Location: LCCOMB_X36_Y9_N2
\serial|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|Equal3~1_combout\ = (\ascii|Mux1~8_combout\ & (\serial|data\(6) & (\serial|data\(3) $ (!\ascii|Mux3~8_combout\)))) # (!\ascii|Mux1~8_combout\ & (!\serial|data\(6) & (\serial|data\(3) $ (!\ascii|Mux3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii|Mux1~8_combout\,
	datab => \serial|data\(3),
	datac => \serial|data\(6),
	datad => \ascii|Mux3~8_combout\,
	combout => \serial|Equal3~1_combout\);

-- Location: LCFF_X35_Y9_N15
\serial|data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \ascii|Mux6~11_combout\,
	ena => \serial|data[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial|data\(0));

-- Location: LCCOMB_X35_Y9_N6
\serial|Equal3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|Equal3~3_combout\ = \ascii|Mux6~11_combout\ $ (!\serial|data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ascii|Mux6~11_combout\,
	datad => \serial|data\(0),
	combout => \serial|Equal3~3_combout\);

-- Location: LCFF_X35_Y9_N3
\serial|data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	sdata => \ascii|Mux5~7_combout\,
	sload => VCC,
	ena => \serial|data[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial|data\(1));

-- Location: LCCOMB_X35_Y9_N16
\serial|Equal3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|Equal3~2_combout\ = (\serial|data\(2) & (\ascii|Mux4~9_combout\ & (\serial|data\(1) $ (!\ascii|Mux5~7_combout\)))) # (!\serial|data\(2) & (!\ascii|Mux4~9_combout\ & (\serial|data\(1) $ (!\ascii|Mux5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial|data\(2),
	datab => \serial|data\(1),
	datac => \ascii|Mux4~9_combout\,
	datad => \ascii|Mux5~7_combout\,
	combout => \serial|Equal3~2_combout\);

-- Location: LCCOMB_X36_Y9_N4
\serial|Equal3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|Equal3~4_combout\ = (\serial|Equal3~0_combout\ & (\serial|Equal3~1_combout\ & (\serial|Equal3~3_combout\ & \serial|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial|Equal3~0_combout\,
	datab => \serial|Equal3~1_combout\,
	datac => \serial|Equal3~3_combout\,
	datad => \serial|Equal3~2_combout\,
	combout => \serial|Equal3~4_combout\);

-- Location: LCCOMB_X36_Y9_N10
\serial|Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|Equal4~1_combout\ = (\ascii|Mux6~11_combout\ & (\ascii|Mux5~7_combout\ & \ascii|Mux3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii|Mux6~11_combout\,
	datac => \ascii|Mux5~7_combout\,
	datad => \ascii|Mux3~8_combout\,
	combout => \serial|Equal4~1_combout\);

-- Location: LCCOMB_X36_Y9_N20
\serial|Equal4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|Equal4~2_combout\ = (!\ascii|Mux1~8_combout\ & (\ascii|Mux4~9_combout\ & (\serial|Equal4~0_combout\ & \serial|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii|Mux1~8_combout\,
	datab => \ascii|Mux4~9_combout\,
	datac => \serial|Equal4~0_combout\,
	datad => \serial|Equal4~1_combout\,
	combout => \serial|Equal4~2_combout\);

-- Location: LCCOMB_X37_Y9_N8
\start~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \start~1_combout\ = (!\display_a[0]~0_combout\ & ((\start~regout\) # ((\start~0_combout\ & \Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~0_combout\,
	datab => \Equal1~2_combout\,
	datac => \start~regout\,
	datad => \display_a[0]~0_combout\,
	combout => \start~1_combout\);

-- Location: LCFF_X37_Y9_N9
start : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \start~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \start~regout\);

-- Location: LCCOMB_X37_Y9_N2
\serial|process_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|process_0~2_combout\ = (\start~regout\ & ((\ascii|Mux4~9_combout\) # (\serial|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ascii|Mux4~9_combout\,
	datac => \start~regout\,
	datad => \serial|process_0~1_combout\,
	combout => \serial|process_0~2_combout\);

-- Location: LCCOMB_X37_Y9_N24
\serial|index[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|index[2]~2_combout\ = (\serial|index\(3) & ((\serial|Equal3~4_combout\) # ((\serial|Equal4~2_combout\) # (!\serial|process_0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial|index\(3),
	datab => \serial|Equal3~4_combout\,
	datac => \serial|Equal4~2_combout\,
	datad => \serial|process_0~2_combout\,
	combout => \serial|index[2]~2_combout\);

-- Location: LCCOMB_X38_Y9_N24
\serial|index[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|index[0]~7_combout\ = (\serial|index\(0) & ((!\serial|index[0]~4_combout\))) # (!\serial|index\(0) & (!\serial|LessThan1~0_combout\ & \serial|index[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial|LessThan1~0_combout\,
	datac => \serial|index\(0),
	datad => \serial|index[0]~4_combout\,
	combout => \serial|index[0]~7_combout\);

-- Location: LCFF_X38_Y9_N25
\serial|index[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \serial|index[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial|index\(0));

-- Location: LCCOMB_X38_Y9_N28
\serial|index[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|index[0]~3_combout\ = ((!\serial|index\(1) & !\serial|index\(0))) # (!\serial|index[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial|index\(1),
	datac => \serial|index\(0),
	datad => \serial|index[2]~2_combout\,
	combout => \serial|index[0]~3_combout\);

-- Location: LCCOMB_X38_Y9_N26
\serial|index[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|index[0]~4_combout\ = (\serial|Equal0~3_combout\ & (\serial|index[0]~3_combout\ & ((!\serial|index[2]~2_combout\) # (!\serial|index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial|Equal0~3_combout\,
	datab => \serial|index\(2),
	datac => \serial|index[2]~2_combout\,
	datad => \serial|index[0]~3_combout\,
	combout => \serial|index[0]~4_combout\);

-- Location: LCCOMB_X38_Y9_N20
\serial|index[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|index[3]~5_combout\ = (\serial|index[0]~4_combout\ & (\serial|Add1~0_combout\ & (!\serial|LessThan1~0_combout\))) # (!\serial|index[0]~4_combout\ & (((\serial|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial|Add1~0_combout\,
	datab => \serial|LessThan1~0_combout\,
	datac => \serial|index\(3),
	datad => \serial|index[0]~4_combout\,
	combout => \serial|index[3]~5_combout\);

-- Location: LCFF_X38_Y9_N21
\serial|index[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \serial|index[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial|index\(3));

-- Location: LCCOMB_X38_Y9_N12
\serial|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|LessThan1~0_combout\ = (\serial|index\(3) & ((\serial|index\(0)) # ((\serial|index\(1)) # (\serial|index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial|index\(0),
	datab => \serial|index\(1),
	datac => \serial|index\(3),
	datad => \serial|index\(2),
	combout => \serial|LessThan1~0_combout\);

-- Location: LCCOMB_X38_Y9_N30
\serial|index[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|index[1]~8_combout\ = (\serial|index[0]~4_combout\ & (!\serial|LessThan1~0_combout\ & (\serial|index\(0) $ (\serial|index\(1))))) # (!\serial|index[0]~4_combout\ & (((\serial|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial|index\(0),
	datab => \serial|LessThan1~0_combout\,
	datac => \serial|index\(1),
	datad => \serial|index[0]~4_combout\,
	combout => \serial|index[1]~8_combout\);

-- Location: LCFF_X38_Y9_N31
\serial|index[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \serial|index[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial|index\(1));

-- Location: LCCOMB_X38_Y9_N0
\serial|serial_out~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|serial_out~4_combout\ = (\serial|index\(3)) # ((\serial|index\(1)) # ((\serial|index\(0)) # (\serial|index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial|index\(3),
	datab => \serial|index\(1),
	datac => \serial|index\(0),
	datad => \serial|index\(2),
	combout => \serial|serial_out~4_combout\);

-- Location: LCCOMB_X37_Y9_N16
\serial|serial_out~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \serial|serial_out~5_combout\ = (\serial|Equal0~3_combout\ & (\serial|serial_out~3_combout\ & (\serial|serial_out~4_combout\))) # (!\serial|Equal0~3_combout\ & (((\serial|serial_out~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial|serial_out~3_combout\,
	datab => \serial|serial_out~4_combout\,
	datac => \serial|serial_out~regout\,
	datad => \serial|Equal0~3_combout\,
	combout => \serial|serial_out~5_combout\);

-- Location: LCFF_X37_Y9_N17
\serial|serial_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \serial|serial_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \serial|serial_out~regout\);

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_a[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_a[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_a(0));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_a[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_a[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_a(1));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_a[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_a[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_a(2));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_a[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_a[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_a(3));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_a[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_a[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_a(4));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_a[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_a[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_a(5));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_a[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_a[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_a(6));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_b[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_b[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_b(0));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_b[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_b[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_b(1));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_b[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_b[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_b(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_b[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_b[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_b(3));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_b[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_b[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_b(4));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_b[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_b[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_b(5));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display_b[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_b[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display_b(6));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\serial_out~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \serial|serial_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_serial_out);

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_current_state.wait_data~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(0));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \current_state.wait_f0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(1));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \current_state.sending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(2));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(3));

-- Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(4));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(5));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(6));

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(7));
END structure;


