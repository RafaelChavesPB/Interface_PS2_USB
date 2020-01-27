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

-- DATE "01/23/2020 16:27:51"

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
SIGNAL \FPGA_RS232|prscl[2]~17_combout\ : std_logic;
SIGNAL \FPGA_RS232|prscl[7]~27_combout\ : std_logic;
SIGNAL \count[0]~17_combout\ : std_logic;
SIGNAL \count[2]~21_combout\ : std_logic;
SIGNAL \count[13]~43_combout\ : std_logic;
SIGNAL \count[15]~48\ : std_logic;
SIGNAL \count[16]~49_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux3~4_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux1~1_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux6~4_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux6~5_combout\ : std_logic;
SIGNAL \FPGA_RS232|Mux0~2_combout\ : std_logic;
SIGNAL \FPGA_RS232|Add2~0_combout\ : std_logic;
SIGNAL \FPGA_RS232|Equal0~1_combout\ : std_logic;
SIGNAL \current_state~5_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \PS2_FPGA|count[3]~0_combout\ : std_logic;
SIGNAL \FPGA_RS232|Equal4~0_combout\ : std_logic;
SIGNAL \FPGA_RS232|Equal4~1_combout\ : std_logic;
SIGNAL \FPGA_RS232|index[2]~4_combout\ : std_logic;
SIGNAL \FPGA_RS232|Equal3~1_combout\ : std_logic;
SIGNAL \FPGA_RS232|Add1~2_combout\ : std_logic;
SIGNAL \FPGA_RS232|index[2]~8_combout\ : std_logic;
SIGNAL \clk_ps2~combout\ : std_logic;
SIGNAL \clk_50mhz~combout\ : std_logic;
SIGNAL \clk_50mhz~clkctrl_outclk\ : std_logic;
SIGNAL \serial_in~combout\ : std_logic;
SIGNAL \PS2_FPGA|count[2]~4_combout\ : std_logic;
SIGNAL \PS2_FPGA|count~2_combout\ : std_logic;
SIGNAL \PS2_FPGA|count~1_combout\ : std_logic;
SIGNAL \PS2_FPGA|count~3_combout\ : std_logic;
SIGNAL \PS2_FPGA|Equal0~0_combout\ : std_logic;
SIGNAL \PS2_FPGA|reg~8_combout\ : std_logic;
SIGNAL \PS2_FPGA|reg[0]~1_combout\ : std_logic;
SIGNAL \PS2_FPGA|reg~7_combout\ : std_logic;
SIGNAL \count[0]~18\ : std_logic;
SIGNAL \count[1]~19_combout\ : std_logic;
SIGNAL \count[4]~26\ : std_logic;
SIGNAL \count[5]~27_combout\ : std_logic;
SIGNAL \current_state.wait_make~0_combout\ : std_logic;
SIGNAL \current_state.wait_make~regout\ : std_logic;
SIGNAL \PS2_FPGA|reg~2_combout\ : std_logic;
SIGNAL \PS2_FPGA|reg~6_combout\ : std_logic;
SIGNAL \PS2_FPGA|reg~5_combout\ : std_logic;
SIGNAL \PS2_FPGA|reg~4_combout\ : std_logic;
SIGNAL \PS2_FPGA|reg~3_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \current_state.sending~0_combout\ : std_logic;
SIGNAL \current_state.sending~regout\ : std_logic;
SIGNAL \count[5]~28\ : std_logic;
SIGNAL \count[6]~29_combout\ : std_logic;
SIGNAL \count[6]~30\ : std_logic;
SIGNAL \count[7]~31_combout\ : std_logic;
SIGNAL \count[7]~32\ : std_logic;
SIGNAL \count[8]~33_combout\ : std_logic;
SIGNAL \count[8]~34\ : std_logic;
SIGNAL \count[9]~35_combout\ : std_logic;
SIGNAL \count[9]~36\ : std_logic;
SIGNAL \count[10]~37_combout\ : std_logic;
SIGNAL \count[10]~38\ : std_logic;
SIGNAL \count[11]~40\ : std_logic;
SIGNAL \count[12]~41_combout\ : std_logic;
SIGNAL \count[11]~39_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \count[12]~42\ : std_logic;
SIGNAL \count[13]~44\ : std_logic;
SIGNAL \count[14]~46\ : std_logic;
SIGNAL \count[15]~47_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \count[1]~20\ : std_logic;
SIGNAL \count[2]~22\ : std_logic;
SIGNAL \count[3]~23_combout\ : std_logic;
SIGNAL \count[3]~24\ : std_logic;
SIGNAL \count[4]~25_combout\ : std_logic;
SIGNAL \count[14]~45_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \buffer_uart~0_combout\ : std_logic;
SIGNAL \buffer_uart[7]~1_combout\ : std_logic;
SIGNAL \buffer_uart~5_combout\ : std_logic;
SIGNAL \buffer_uart~7_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux4~1_combout\ : std_logic;
SIGNAL \PS2_FPGA|reg~0_combout\ : std_logic;
SIGNAL \buffer_uart~2_combout\ : std_logic;
SIGNAL \buffer_uart~6_combout\ : std_logic;
SIGNAL \buffer_uart~3_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux4~0_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux0~0_combout\ : std_logic;
SIGNAL \buffer_uart~4_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux1~5_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux1~6_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux1~7_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux1~0_combout\ : std_logic;
SIGNAL \buffer_uart~8_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux1~3_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux1~2_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux1~4_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux1~8_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux3~3_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux3~5_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux3~6_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux3~2_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux3~8_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux3~7_combout\ : std_logic;
SIGNAL \Decoder_A|Mux6~0_combout\ : std_logic;
SIGNAL \flag~0_combout\ : std_logic;
SIGNAL \PS2_FPGA|ready~0_combout\ : std_logic;
SIGNAL \PS2_FPGA|ready~regout\ : std_logic;
SIGNAL \alt_ready[0]~feeder_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \flag~regout\ : std_logic;
SIGNAL \current_state~6_combout\ : std_logic;
SIGNAL \current_state.wait_break~regout\ : std_logic;
SIGNAL \display_a[0]~0_combout\ : std_logic;
SIGNAL \display_a[0]~reg0_regout\ : std_logic;
SIGNAL \Decoder_A|Mux5~0_combout\ : std_logic;
SIGNAL \display_a[1]~reg0_regout\ : std_logic;
SIGNAL \Decoder_A|Mux4~0_combout\ : std_logic;
SIGNAL \display_a[2]~reg0_regout\ : std_logic;
SIGNAL \Decoder_A|Mux3~0_combout\ : std_logic;
SIGNAL \display_a[3]~reg0_regout\ : std_logic;
SIGNAL \Decoder_A|Mux2~0_combout\ : std_logic;
SIGNAL \display_a[4]~reg0_regout\ : std_logic;
SIGNAL \Decoder_A|Mux1~0_combout\ : std_logic;
SIGNAL \display_a[5]~reg0_regout\ : std_logic;
SIGNAL \Decoder_A|Mux0~0_combout\ : std_logic;
SIGNAL \display_a[6]~reg0_regout\ : std_logic;
SIGNAL \Decoder_ascii|Mux2~5_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux4~8_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux4~2_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux4~6_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux4~3_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux4~4_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux4~5_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux4~7_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux4~9_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux2~2_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux5~4_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux5~12_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux5~5_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux5~9_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux5~7_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux5~6_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux5~8_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux5~10_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux5~11_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux7~4_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux7~11_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux7~5_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux7~8_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux7~6_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux7~7_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux7~9_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux7~10_combout\ : std_logic;
SIGNAL \Decoder_B|Mux6~0_combout\ : std_logic;
SIGNAL \display_b[0]~reg0_regout\ : std_logic;
SIGNAL \Decoder_B|Mux5~0_combout\ : std_logic;
SIGNAL \display_b[1]~reg0_regout\ : std_logic;
SIGNAL \Decoder_B|Mux4~0_combout\ : std_logic;
SIGNAL \display_b[2]~reg0_regout\ : std_logic;
SIGNAL \Decoder_B|Mux3~0_combout\ : std_logic;
SIGNAL \display_b[3]~reg0_regout\ : std_logic;
SIGNAL \Decoder_B|Mux2~0_combout\ : std_logic;
SIGNAL \display_b[4]~reg0_regout\ : std_logic;
SIGNAL \Decoder_B|Mux1~0_combout\ : std_logic;
SIGNAL \display_b[5]~reg0_regout\ : std_logic;
SIGNAL \Decoder_B|Mux0~0_combout\ : std_logic;
SIGNAL \display_b[6]~reg0_regout\ : std_logic;
SIGNAL \start_sending~0_combout\ : std_logic;
SIGNAL \start_sending~1_combout\ : std_logic;
SIGNAL \start_sending~regout\ : std_logic;
SIGNAL \FPGA_RS232|prscl[0]~13_combout\ : std_logic;
SIGNAL \FPGA_RS232|prscl[9]~31_combout\ : std_logic;
SIGNAL \FPGA_RS232|prscl[4]~21_combout\ : std_logic;
SIGNAL \FPGA_RS232|prscl[5]~23_combout\ : std_logic;
SIGNAL \FPGA_RS232|LessThan0~0_combout\ : std_logic;
SIGNAL \FPGA_RS232|LessThan0~1_combout\ : std_logic;
SIGNAL \FPGA_RS232|LessThan0~2_combout\ : std_logic;
SIGNAL \FPGA_RS232|prscl[0]~14\ : std_logic;
SIGNAL \FPGA_RS232|prscl[1]~15_combout\ : std_logic;
SIGNAL \FPGA_RS232|prscl[1]~16\ : std_logic;
SIGNAL \FPGA_RS232|prscl[2]~18\ : std_logic;
SIGNAL \FPGA_RS232|prscl[3]~19_combout\ : std_logic;
SIGNAL \FPGA_RS232|prscl[3]~20\ : std_logic;
SIGNAL \FPGA_RS232|prscl[4]~22\ : std_logic;
SIGNAL \FPGA_RS232|prscl[5]~24\ : std_logic;
SIGNAL \FPGA_RS232|prscl[6]~25_combout\ : std_logic;
SIGNAL \FPGA_RS232|prscl[6]~26\ : std_logic;
SIGNAL \FPGA_RS232|prscl[7]~28\ : std_logic;
SIGNAL \FPGA_RS232|prscl[8]~29_combout\ : std_logic;
SIGNAL \FPGA_RS232|prscl[8]~30\ : std_logic;
SIGNAL \FPGA_RS232|prscl[9]~32\ : std_logic;
SIGNAL \FPGA_RS232|prscl[10]~33_combout\ : std_logic;
SIGNAL \FPGA_RS232|prscl[10]~34\ : std_logic;
SIGNAL \FPGA_RS232|prscl[11]~35_combout\ : std_logic;
SIGNAL \FPGA_RS232|Equal0~2_combout\ : std_logic;
SIGNAL \FPGA_RS232|prscl[11]~36\ : std_logic;
SIGNAL \FPGA_RS232|prscl[12]~37_combout\ : std_logic;
SIGNAL \FPGA_RS232|Equal0~0_combout\ : std_logic;
SIGNAL \FPGA_RS232|Equal0~3_combout\ : std_logic;
SIGNAL \FPGA_RS232|index[0]~9_combout\ : std_logic;
SIGNAL \FPGA_RS232|Add1~1_combout\ : std_logic;
SIGNAL \FPGA_RS232|index[3]~7_combout\ : std_logic;
SIGNAL \FPGA_RS232|index[0]~10_combout\ : std_logic;
SIGNAL \FPGA_RS232|Equal2~5_combout\ : std_logic;
SIGNAL \FPGA_RS232|Equal3~0_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux2~3_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux2~4_combout\ : std_logic;
SIGNAL \FPGA_RS232|Equal2~1_combout\ : std_logic;
SIGNAL \FPGA_RS232|Equal2~2_combout\ : std_logic;
SIGNAL \FPGA_RS232|Equal2~3_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux6~6_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux6~12_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux6~9_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux6~7_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux6~8_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux6~10_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux6~11_combout\ : std_logic;
SIGNAL \FPGA_RS232|Equal2~0_combout\ : std_logic;
SIGNAL \FPGA_RS232|Equal2~4_combout\ : std_logic;
SIGNAL \FPGA_RS232|index[0]~5_combout\ : std_logic;
SIGNAL \FPGA_RS232|index[0]~6_combout\ : std_logic;
SIGNAL \FPGA_RS232|index[1]~11_combout\ : std_logic;
SIGNAL \FPGA_RS232|LessThan1~0_combout\ : std_logic;
SIGNAL \FPGA_RS232|data[7]~0_combout\ : std_logic;
SIGNAL \FPGA_RS232|Add1~0_combout\ : std_logic;
SIGNAL \Decoder_ascii|Mux2~6_combout\ : std_logic;
SIGNAL \FPGA_RS232|Mux0~3_combout\ : std_logic;
SIGNAL \FPGA_RS232|Mux0~0_combout\ : std_logic;
SIGNAL \FPGA_RS232|Mux0~1_combout\ : std_logic;
SIGNAL \FPGA_RS232|serial_out~0_combout\ : std_logic;
SIGNAL \FPGA_RS232|Equal1~0_combout\ : std_logic;
SIGNAL \FPGA_RS232|serial_out~1_combout\ : std_logic;
SIGNAL \FPGA_RS232|serial_out~regout\ : std_logic;
SIGNAL count : std_logic_vector(16 DOWNTO 0);
SIGNAL buffer_uart : std_logic_vector(7 DOWNTO 0);
SIGNAL alt_ready : std_logic_vector(1 DOWNTO 0);
SIGNAL \PS2_FPGA|reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PS2_FPGA|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FPGA_RS232|prscl\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \FPGA_RS232|index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FPGA_RS232|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_clk_50mhz~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_clk_ps2~combout\ : std_logic;
SIGNAL \ALT_INV_current_state.wait_make~regout\ : std_logic;

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
\ALT_INV_current_state.wait_make~regout\ <= NOT \current_state.wait_make~regout\;

-- Location: LCFF_X24_Y15_N17
\FPGA_RS232|prscl[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \FPGA_RS232|prscl[7]~27_combout\,
	sclr => \FPGA_RS232|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FPGA_RS232|prscl\(7));

-- Location: LCFF_X24_Y15_N7
\FPGA_RS232|prscl[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \FPGA_RS232|prscl[2]~17_combout\,
	sclr => \FPGA_RS232|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FPGA_RS232|prscl\(2));

-- Location: LCFF_X25_Y14_N11
\count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \count[13]~43_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \current_state.sending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(13));

-- Location: LCFF_X25_Y14_N17
\count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \count[16]~49_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \current_state.sending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(16));

-- Location: LCFF_X25_Y15_N17
\count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \count[0]~17_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \current_state.sending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(0));

-- Location: LCFF_X25_Y15_N21
\count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \count[2]~21_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \current_state.sending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(2));

-- Location: LCCOMB_X24_Y15_N6
\FPGA_RS232|prscl[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|prscl[2]~17_combout\ = (\FPGA_RS232|prscl\(2) & (\FPGA_RS232|prscl[1]~16\ $ (GND))) # (!\FPGA_RS232|prscl\(2) & (!\FPGA_RS232|prscl[1]~16\ & VCC))
-- \FPGA_RS232|prscl[2]~18\ = CARRY((\FPGA_RS232|prscl\(2) & !\FPGA_RS232|prscl[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_RS232|prscl\(2),
	datad => VCC,
	cin => \FPGA_RS232|prscl[1]~16\,
	combout => \FPGA_RS232|prscl[2]~17_combout\,
	cout => \FPGA_RS232|prscl[2]~18\);

-- Location: LCCOMB_X24_Y15_N16
\FPGA_RS232|prscl[7]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|prscl[7]~27_combout\ = (\FPGA_RS232|prscl\(7) & (!\FPGA_RS232|prscl[6]~26\)) # (!\FPGA_RS232|prscl\(7) & ((\FPGA_RS232|prscl[6]~26\) # (GND)))
-- \FPGA_RS232|prscl[7]~28\ = CARRY((!\FPGA_RS232|prscl[6]~26\) # (!\FPGA_RS232|prscl\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_RS232|prscl\(7),
	datad => VCC,
	cin => \FPGA_RS232|prscl[6]~26\,
	combout => \FPGA_RS232|prscl[7]~27_combout\,
	cout => \FPGA_RS232|prscl[7]~28\);

-- Location: LCCOMB_X25_Y15_N16
\count[0]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[0]~17_combout\ = count(0) $ (VCC)
-- \count[0]~18\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datad => VCC,
	combout => \count[0]~17_combout\,
	cout => \count[0]~18\);

-- Location: LCCOMB_X25_Y15_N20
\count[2]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[2]~21_combout\ = (count(2) & (\count[1]~20\ $ (GND))) # (!count(2) & (!\count[1]~20\ & VCC))
-- \count[2]~22\ = CARRY((count(2) & !\count[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datad => VCC,
	cin => \count[1]~20\,
	combout => \count[2]~21_combout\,
	cout => \count[2]~22\);

-- Location: LCCOMB_X25_Y14_N10
\count[13]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[13]~43_combout\ = (count(13) & (!\count[12]~42\)) # (!count(13) & ((\count[12]~42\) # (GND)))
-- \count[13]~44\ = CARRY((!\count[12]~42\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datad => VCC,
	cin => \count[12]~42\,
	combout => \count[13]~43_combout\,
	cout => \count[13]~44\);

-- Location: LCCOMB_X25_Y14_N14
\count[15]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[15]~47_combout\ = (count(15) & (!\count[14]~46\)) # (!count(15) & ((\count[14]~46\) # (GND)))
-- \count[15]~48\ = CARRY((!\count[14]~46\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(15),
	datad => VCC,
	cin => \count[14]~46\,
	combout => \count[15]~47_combout\,
	cout => \count[15]~48\);

-- Location: LCCOMB_X25_Y14_N16
\count[16]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[16]~49_combout\ = count(16) $ (!\count[15]~48\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	cin => \count[15]~48\,
	combout => \count[16]~49_combout\);

-- Location: LCCOMB_X27_Y16_N20
\Decoder_ascii|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux3~4_combout\ = (!buffer_uart(6) & (buffer_uart(2) & ((buffer_uart(0)) # (buffer_uart(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(0),
	datab => buffer_uart(6),
	datac => buffer_uart(2),
	datad => buffer_uart(1),
	combout => \Decoder_ascii|Mux3~4_combout\);

-- Location: LCCOMB_X26_Y16_N20
\Decoder_ascii|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux1~1_combout\ = buffer_uart(2) $ (((buffer_uart(1)) # ((!buffer_uart(3) & buffer_uart(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(2),
	datab => buffer_uart(3),
	datac => buffer_uart(1),
	datad => buffer_uart(0),
	combout => \Decoder_ascii|Mux1~1_combout\);

-- Location: LCCOMB_X26_Y16_N22
\Decoder_ascii|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux6~4_combout\ = (buffer_uart(1) & (buffer_uart(3) $ (((buffer_uart(0)) # (!buffer_uart(4)))))) # (!buffer_uart(1) & (!buffer_uart(4) & (buffer_uart(3) & buffer_uart(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(4),
	datab => buffer_uart(3),
	datac => buffer_uart(1),
	datad => buffer_uart(0),
	combout => \Decoder_ascii|Mux6~4_combout\);

-- Location: LCCOMB_X26_Y16_N24
\Decoder_ascii|Mux6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux6~5_combout\ = (!buffer_uart(2) & (!buffer_uart(6) & ((!\Decoder_ascii|Mux6~4_combout\) # (!buffer_uart(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(2),
	datab => buffer_uart(6),
	datac => buffer_uart(5),
	datad => \Decoder_ascii|Mux6~4_combout\,
	combout => \Decoder_ascii|Mux6~5_combout\);

-- Location: LCFF_X23_Y16_N27
\FPGA_RS232|index[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \FPGA_RS232|index[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FPGA_RS232|index\(2));

-- Location: LCCOMB_X22_Y16_N6
\FPGA_RS232|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|Mux0~2_combout\ = (\FPGA_RS232|index\(1) & (\FPGA_RS232|data\(6) & ((\FPGA_RS232|index\(0))))) # (!\FPGA_RS232|index\(1) & (((\FPGA_RS232|data\(7)) # (\FPGA_RS232|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_RS232|data\(6),
	datab => \FPGA_RS232|index\(1),
	datac => \FPGA_RS232|data\(7),
	datad => \FPGA_RS232|index\(0),
	combout => \FPGA_RS232|Mux0~2_combout\);

-- Location: LCCOMB_X22_Y16_N26
\FPGA_RS232|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|Add2~0_combout\ = \FPGA_RS232|index\(2) $ (((\FPGA_RS232|index\(0)) # (\FPGA_RS232|index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FPGA_RS232|index\(0),
	datac => \FPGA_RS232|index\(2),
	datad => \FPGA_RS232|index\(1),
	combout => \FPGA_RS232|Add2~0_combout\);

-- Location: LCCOMB_X23_Y15_N12
\FPGA_RS232|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|Equal0~1_combout\ = (\FPGA_RS232|prscl\(2) & (\FPGA_RS232|prscl\(3) & (!\FPGA_RS232|prscl\(4) & \FPGA_RS232|prscl\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_RS232|prscl\(2),
	datab => \FPGA_RS232|prscl\(3),
	datac => \FPGA_RS232|prscl\(4),
	datad => \FPGA_RS232|prscl\(5),
	combout => \FPGA_RS232|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y15_N10
\current_state~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \current_state~5_combout\ = ((\process_0~0_combout\ & ((!\current_state.wait_break~regout\) # (!\flag~regout\)))) # (!\Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flag~regout\,
	datab => \current_state.wait_break~regout\,
	datac => \Equal0~0_combout\,
	datad => \process_0~0_combout\,
	combout => \current_state~5_combout\);

-- Location: LCCOMB_X25_Y15_N12
\Equal2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (count(2)) # ((count(3)) # ((count(0)) # (count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(3),
	datac => count(0),
	datad => count(1),
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X27_Y15_N12
\PS2_FPGA|count[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PS2_FPGA|count[3]~0_combout\ = (\PS2_FPGA|count\(3) & (\PS2_FPGA|count\(1) & (!\PS2_FPGA|count\(0) & !\PS2_FPGA|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS2_FPGA|count\(3),
	datab => \PS2_FPGA|count\(1),
	datac => \PS2_FPGA|count\(0),
	datad => \PS2_FPGA|count\(2),
	combout => \PS2_FPGA|count[3]~0_combout\);

-- Location: LCCOMB_X22_Y16_N18
\FPGA_RS232|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|Equal4~0_combout\ = (!\FPGA_RS232|data\(1) & (!\FPGA_RS232|data\(2) & (!\FPGA_RS232|data\(3) & !\FPGA_RS232|data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_RS232|data\(1),
	datab => \FPGA_RS232|data\(2),
	datac => \FPGA_RS232|data\(3),
	datad => \FPGA_RS232|data\(0),
	combout => \FPGA_RS232|Equal4~0_combout\);

-- Location: LCCOMB_X22_Y16_N24
\FPGA_RS232|Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|Equal4~1_combout\ = (\FPGA_RS232|data\(6) & (\FPGA_RS232|data\(4) & (\FPGA_RS232|data\(7) & \FPGA_RS232|data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_RS232|data\(6),
	datab => \FPGA_RS232|data\(4),
	datac => \FPGA_RS232|data\(7),
	datad => \FPGA_RS232|data\(5),
	combout => \FPGA_RS232|Equal4~1_combout\);

-- Location: LCCOMB_X22_Y16_N10
\FPGA_RS232|index[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|index[2]~4_combout\ = ((\FPGA_RS232|Equal4~0_combout\ & \FPGA_RS232|Equal4~1_combout\)) # (!\start_sending~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FPGA_RS232|Equal4~0_combout\,
	datac => \FPGA_RS232|Equal4~1_combout\,
	datad => \start_sending~regout\,
	combout => \FPGA_RS232|index[2]~4_combout\);

-- Location: LCCOMB_X23_Y16_N20
\FPGA_RS232|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|Equal3~1_combout\ = (\Decoder_ascii|Mux2~6_combout\ & (!\Decoder_ascii|Mux0~0_combout\ & (\Decoder_ascii|Mux3~7_combout\ & !\Decoder_ascii|Mux1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder_ascii|Mux2~6_combout\,
	datab => \Decoder_ascii|Mux0~0_combout\,
	datac => \Decoder_ascii|Mux3~7_combout\,
	datad => \Decoder_ascii|Mux1~8_combout\,
	combout => \FPGA_RS232|Equal3~1_combout\);

-- Location: LCCOMB_X22_Y16_N0
\FPGA_RS232|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|Add1~2_combout\ = \FPGA_RS232|index\(2) $ (((\FPGA_RS232|index\(0) & \FPGA_RS232|index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FPGA_RS232|index\(0),
	datac => \FPGA_RS232|index\(2),
	datad => \FPGA_RS232|index\(1),
	combout => \FPGA_RS232|Add1~2_combout\);

-- Location: LCCOMB_X23_Y16_N26
\FPGA_RS232|index[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|index[2]~8_combout\ = (\FPGA_RS232|index[0]~6_combout\ & (\FPGA_RS232|Add1~2_combout\ & (!\FPGA_RS232|LessThan1~0_combout\))) # (!\FPGA_RS232|index[0]~6_combout\ & (((\FPGA_RS232|index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_RS232|Add1~2_combout\,
	datab => \FPGA_RS232|LessThan1~0_combout\,
	datac => \FPGA_RS232|index\(2),
	datad => \FPGA_RS232|index[0]~6_combout\,
	combout => \FPGA_RS232|index[2]~8_combout\);

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

-- Location: LCCOMB_X27_Y15_N22
\PS2_FPGA|count[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \PS2_FPGA|count[2]~4_combout\ = \PS2_FPGA|count\(2) $ (((\PS2_FPGA|count\(1) & \PS2_FPGA|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS2_FPGA|count\(1),
	datac => \PS2_FPGA|count\(2),
	datad => \PS2_FPGA|count\(0),
	combout => \PS2_FPGA|count[2]~4_combout\);

-- Location: LCFF_X27_Y15_N23
\PS2_FPGA|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_ps2~combout\,
	datain => \PS2_FPGA|count[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PS2_FPGA|count\(2));

-- Location: LCCOMB_X27_Y15_N14
\PS2_FPGA|count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PS2_FPGA|count~2_combout\ = (\PS2_FPGA|count\(1) & ((\PS2_FPGA|count\(0) & (\PS2_FPGA|count\(3) $ (\PS2_FPGA|count\(2)))) # (!\PS2_FPGA|count\(0) & (\PS2_FPGA|count\(3) & \PS2_FPGA|count\(2))))) # (!\PS2_FPGA|count\(1) & (((\PS2_FPGA|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS2_FPGA|count\(1),
	datab => \PS2_FPGA|count\(0),
	datac => \PS2_FPGA|count\(3),
	datad => \PS2_FPGA|count\(2),
	combout => \PS2_FPGA|count~2_combout\);

-- Location: LCFF_X27_Y15_N15
\PS2_FPGA|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_ps2~combout\,
	datain => \PS2_FPGA|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PS2_FPGA|count\(3));

-- Location: LCCOMB_X27_Y15_N28
\PS2_FPGA|count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PS2_FPGA|count~1_combout\ = (\PS2_FPGA|count\(0) & (((!\PS2_FPGA|count\(1))))) # (!\PS2_FPGA|count\(0) & (\PS2_FPGA|count\(1) & ((\PS2_FPGA|count\(2)) # (!\PS2_FPGA|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS2_FPGA|count\(2),
	datab => \PS2_FPGA|count\(0),
	datac => \PS2_FPGA|count\(1),
	datad => \PS2_FPGA|count\(3),
	combout => \PS2_FPGA|count~1_combout\);

-- Location: LCFF_X27_Y15_N29
\PS2_FPGA|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_ps2~combout\,
	datain => \PS2_FPGA|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PS2_FPGA|count\(1));

-- Location: LCCOMB_X27_Y15_N4
\PS2_FPGA|count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \PS2_FPGA|count~3_combout\ = (!\PS2_FPGA|count\(0) & ((\PS2_FPGA|count\(2)) # ((!\PS2_FPGA|count\(3)) # (!\PS2_FPGA|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS2_FPGA|count\(2),
	datab => \PS2_FPGA|count\(1),
	datac => \PS2_FPGA|count\(0),
	datad => \PS2_FPGA|count\(3),
	combout => \PS2_FPGA|count~3_combout\);

-- Location: LCFF_X27_Y15_N5
\PS2_FPGA|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_ps2~combout\,
	datain => \PS2_FPGA|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PS2_FPGA|count\(0));

-- Location: LCCOMB_X27_Y15_N26
\PS2_FPGA|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PS2_FPGA|Equal0~0_combout\ = (!\PS2_FPGA|count\(3) & (!\PS2_FPGA|count\(0) & (!\PS2_FPGA|count\(1) & !\PS2_FPGA|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS2_FPGA|count\(3),
	datab => \PS2_FPGA|count\(0),
	datac => \PS2_FPGA|count\(1),
	datad => \PS2_FPGA|count\(2),
	combout => \PS2_FPGA|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y15_N20
\PS2_FPGA|reg~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \PS2_FPGA|reg~8_combout\ = (\serial_in~combout\ & !\PS2_FPGA|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serial_in~combout\,
	datad => \PS2_FPGA|Equal0~0_combout\,
	combout => \PS2_FPGA|reg~8_combout\);

-- Location: LCCOMB_X27_Y15_N16
\PS2_FPGA|reg[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PS2_FPGA|reg[0]~1_combout\ = ((!\PS2_FPGA|count\(2) & (!\PS2_FPGA|count\(0) & !\PS2_FPGA|count\(1)))) # (!\PS2_FPGA|count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS2_FPGA|count\(3),
	datab => \PS2_FPGA|count\(2),
	datac => \PS2_FPGA|count\(0),
	datad => \PS2_FPGA|count\(1),
	combout => \PS2_FPGA|reg[0]~1_combout\);

-- Location: LCFF_X27_Y15_N21
\PS2_FPGA|reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_ps2~combout\,
	datain => \PS2_FPGA|reg~8_combout\,
	ena => \PS2_FPGA|reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PS2_FPGA|reg\(7));

-- Location: LCCOMB_X27_Y15_N10
\PS2_FPGA|reg~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \PS2_FPGA|reg~7_combout\ = (\PS2_FPGA|reg\(7) & !\PS2_FPGA|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PS2_FPGA|reg\(7),
	datad => \PS2_FPGA|Equal0~0_combout\,
	combout => \PS2_FPGA|reg~7_combout\);

-- Location: LCFF_X27_Y15_N11
\PS2_FPGA|reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_ps2~combout\,
	datain => \PS2_FPGA|reg~7_combout\,
	ena => \PS2_FPGA|reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PS2_FPGA|reg\(6));

-- Location: LCCOMB_X25_Y15_N18
\count[1]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[1]~19_combout\ = (count(1) & (!\count[0]~18\)) # (!count(1) & ((\count[0]~18\) # (GND)))
-- \count[1]~20\ = CARRY((!\count[0]~18\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \count[0]~18\,
	combout => \count[1]~19_combout\,
	cout => \count[1]~20\);

-- Location: LCCOMB_X25_Y15_N24
\count[4]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[4]~25_combout\ = (count(4) & (\count[3]~24\ $ (GND))) # (!count(4) & (!\count[3]~24\ & VCC))
-- \count[4]~26\ = CARRY((count(4) & !\count[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datad => VCC,
	cin => \count[3]~24\,
	combout => \count[4]~25_combout\,
	cout => \count[4]~26\);

-- Location: LCCOMB_X25_Y15_N26
\count[5]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[5]~27_combout\ = (count(5) & (!\count[4]~26\)) # (!count(5) & ((\count[4]~26\) # (GND)))
-- \count[5]~28\ = CARRY((!\count[4]~26\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	datad => VCC,
	cin => \count[4]~26\,
	combout => \count[5]~27_combout\,
	cout => \count[5]~28\);

-- Location: LCCOMB_X26_Y15_N28
\current_state.wait_make~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \current_state.wait_make~0_combout\ = (\current_state~5_combout\ & (\current_state.wait_make~regout\ & ((!\LessThan0~3_combout\) # (!\current_state.sending~regout\)))) # (!\current_state~5_combout\ & (((!\LessThan0~3_combout\)) # 
-- (!\current_state.sending~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state~5_combout\,
	datab => \current_state.sending~regout\,
	datac => \current_state.wait_make~regout\,
	datad => \LessThan0~3_combout\,
	combout => \current_state.wait_make~0_combout\);

-- Location: LCFF_X26_Y15_N29
\current_state.wait_make\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \current_state.wait_make~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.wait_make~regout\);

-- Location: LCCOMB_X26_Y15_N30
\PS2_FPGA|reg~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PS2_FPGA|reg~2_combout\ = (\PS2_FPGA|reg\(2) & !\PS2_FPGA|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS2_FPGA|reg\(2),
	datac => \PS2_FPGA|Equal0~0_combout\,
	combout => \PS2_FPGA|reg~2_combout\);

-- Location: LCFF_X26_Y15_N31
\PS2_FPGA|reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_ps2~combout\,
	datain => \PS2_FPGA|reg~2_combout\,
	ena => \PS2_FPGA|reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PS2_FPGA|reg\(1));

-- Location: LCCOMB_X27_Y15_N8
\PS2_FPGA|reg~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \PS2_FPGA|reg~6_combout\ = (\PS2_FPGA|reg\(6) & !\PS2_FPGA|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PS2_FPGA|reg\(6),
	datad => \PS2_FPGA|Equal0~0_combout\,
	combout => \PS2_FPGA|reg~6_combout\);

-- Location: LCFF_X27_Y15_N9
\PS2_FPGA|reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_ps2~combout\,
	datain => \PS2_FPGA|reg~6_combout\,
	ena => \PS2_FPGA|reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PS2_FPGA|reg\(5));

-- Location: LCCOMB_X27_Y15_N18
\PS2_FPGA|reg~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \PS2_FPGA|reg~5_combout\ = (\PS2_FPGA|reg\(5) & !\PS2_FPGA|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PS2_FPGA|reg\(5),
	datad => \PS2_FPGA|Equal0~0_combout\,
	combout => \PS2_FPGA|reg~5_combout\);

-- Location: LCFF_X27_Y15_N19
\PS2_FPGA|reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_ps2~combout\,
	datain => \PS2_FPGA|reg~5_combout\,
	ena => \PS2_FPGA|reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PS2_FPGA|reg\(4));

-- Location: LCCOMB_X26_Y15_N22
\PS2_FPGA|reg~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \PS2_FPGA|reg~4_combout\ = (!\PS2_FPGA|Equal0~0_combout\ & \PS2_FPGA|reg\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PS2_FPGA|Equal0~0_combout\,
	datad => \PS2_FPGA|reg\(4),
	combout => \PS2_FPGA|reg~4_combout\);

-- Location: LCFF_X26_Y15_N23
\PS2_FPGA|reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_ps2~combout\,
	datain => \PS2_FPGA|reg~4_combout\,
	ena => \PS2_FPGA|reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PS2_FPGA|reg\(3));

-- Location: LCCOMB_X26_Y15_N24
\PS2_FPGA|reg~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \PS2_FPGA|reg~3_combout\ = (!\PS2_FPGA|Equal0~0_combout\ & \PS2_FPGA|reg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PS2_FPGA|Equal0~0_combout\,
	datad => \PS2_FPGA|reg\(3),
	combout => \PS2_FPGA|reg~3_combout\);

-- Location: LCFF_X26_Y15_N25
\PS2_FPGA|reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_ps2~combout\,
	datain => \PS2_FPGA|reg~3_combout\,
	ena => \PS2_FPGA|reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PS2_FPGA|reg\(2));

-- Location: LCCOMB_X26_Y15_N20
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\PS2_FPGA|reg\(0) & (!\PS2_FPGA|reg\(1) & (!\PS2_FPGA|reg\(2) & !\PS2_FPGA|reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS2_FPGA|reg\(0),
	datab => \PS2_FPGA|reg\(1),
	datac => \PS2_FPGA|reg\(2),
	datad => \PS2_FPGA|reg\(3),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X27_Y15_N30
\Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\PS2_FPGA|reg\(7) & (\PS2_FPGA|reg\(4) & (\PS2_FPGA|reg\(5) & \PS2_FPGA|reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS2_FPGA|reg\(7),
	datab => \PS2_FPGA|reg\(4),
	datac => \PS2_FPGA|reg\(5),
	datad => \PS2_FPGA|reg\(6),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X26_Y15_N26
\process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\current_state.wait_make~regout\) # ((\Equal1~0_combout\ & \Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.wait_make~regout\,
	datac => \Equal1~0_combout\,
	datad => \Equal1~1_combout\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X26_Y15_N18
\current_state.sending~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \current_state.sending~0_combout\ = (\current_state~5_combout\ & (((\current_state.sending~regout\ & !\LessThan0~3_combout\)))) # (!\current_state~5_combout\ & (\process_0~0_combout\ & ((!\LessThan0~3_combout\) # (!\current_state.sending~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state~5_combout\,
	datab => \process_0~0_combout\,
	datac => \current_state.sending~regout\,
	datad => \LessThan0~3_combout\,
	combout => \current_state.sending~0_combout\);

-- Location: LCFF_X26_Y15_N19
\current_state.sending\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \current_state.sending~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.sending~regout\);

-- Location: LCFF_X25_Y15_N27
\count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \count[5]~27_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \current_state.sending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(5));

-- Location: LCCOMB_X25_Y15_N28
\count[6]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[6]~29_combout\ = (count(6) & (\count[5]~28\ $ (GND))) # (!count(6) & (!\count[5]~28\ & VCC))
-- \count[6]~30\ = CARRY((count(6) & !\count[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datad => VCC,
	cin => \count[5]~28\,
	combout => \count[6]~29_combout\,
	cout => \count[6]~30\);

-- Location: LCFF_X25_Y15_N29
\count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \count[6]~29_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \current_state.sending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(6));

-- Location: LCCOMB_X25_Y15_N30
\count[7]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[7]~31_combout\ = (count(7) & (!\count[6]~30\)) # (!count(7) & ((\count[6]~30\) # (GND)))
-- \count[7]~32\ = CARRY((!\count[6]~30\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \count[6]~30\,
	combout => \count[7]~31_combout\,
	cout => \count[7]~32\);

-- Location: LCFF_X25_Y15_N31
\count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \count[7]~31_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \current_state.sending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(7));

-- Location: LCCOMB_X25_Y14_N0
\count[8]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[8]~33_combout\ = (count(8) & (\count[7]~32\ $ (GND))) # (!count(8) & (!\count[7]~32\ & VCC))
-- \count[8]~34\ = CARRY((count(8) & !\count[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \count[7]~32\,
	combout => \count[8]~33_combout\,
	cout => \count[8]~34\);

-- Location: LCFF_X25_Y14_N1
\count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \count[8]~33_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \current_state.sending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(8));

-- Location: LCCOMB_X25_Y14_N2
\count[9]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[9]~35_combout\ = (count(9) & (!\count[8]~34\)) # (!count(9) & ((\count[8]~34\) # (GND)))
-- \count[9]~36\ = CARRY((!\count[8]~34\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datad => VCC,
	cin => \count[8]~34\,
	combout => \count[9]~35_combout\,
	cout => \count[9]~36\);

-- Location: LCFF_X25_Y14_N3
\count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \count[9]~35_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \current_state.sending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(9));

-- Location: LCCOMB_X25_Y14_N4
\count[10]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[10]~37_combout\ = (count(10) & (\count[9]~36\ $ (GND))) # (!count(10) & (!\count[9]~36\ & VCC))
-- \count[10]~38\ = CARRY((count(10) & !\count[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \count[9]~36\,
	combout => \count[10]~37_combout\,
	cout => \count[10]~38\);

-- Location: LCFF_X25_Y14_N5
\count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \count[10]~37_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \current_state.sending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(10));

-- Location: LCCOMB_X25_Y14_N6
\count[11]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[11]~39_combout\ = (count(11) & (!\count[10]~38\)) # (!count(11) & ((\count[10]~38\) # (GND)))
-- \count[11]~40\ = CARRY((!\count[10]~38\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datad => VCC,
	cin => \count[10]~38\,
	combout => \count[11]~39_combout\,
	cout => \count[11]~40\);

-- Location: LCCOMB_X25_Y14_N8
\count[12]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[12]~41_combout\ = (count(12) & (\count[11]~40\ $ (GND))) # (!count(12) & (!\count[11]~40\ & VCC))
-- \count[12]~42\ = CARRY((count(12) & !\count[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datad => VCC,
	cin => \count[11]~40\,
	combout => \count[12]~41_combout\,
	cout => \count[12]~42\);

-- Location: LCFF_X25_Y14_N9
\count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \count[12]~41_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \current_state.sending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(12));

-- Location: LCFF_X25_Y14_N7
\count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \count[11]~39_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \current_state.sending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(11));

-- Location: LCCOMB_X25_Y14_N30
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!count(13) & (!count(12) & !count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datac => count(12),
	datad => count(11),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X25_Y14_N12
\count[14]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[14]~45_combout\ = (count(14) & (\count[13]~44\ $ (GND))) # (!count(14) & (!\count[13]~44\ & VCC))
-- \count[14]~46\ = CARRY((count(14) & !\count[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	datad => VCC,
	cin => \count[13]~44\,
	combout => \count[14]~45_combout\,
	cout => \count[14]~46\);

-- Location: LCFF_X25_Y14_N15
\count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \count[15]~47_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \current_state.sending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(15));

-- Location: LCCOMB_X25_Y14_N28
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!count(8) & (((!count(5) & !count(6))) # (!count(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datab => count(8),
	datac => count(5),
	datad => count(6),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X25_Y14_N18
\LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (count(14)) # ((count(9) & (count(10) & !\LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	datab => count(9),
	datac => count(10),
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X25_Y14_N24
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (count(16) & (count(15) & ((\LessThan0~2_combout\) # (!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datab => \LessThan0~0_combout\,
	datac => count(15),
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCFF_X25_Y15_N19
\count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \count[1]~19_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \current_state.sending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(1));

-- Location: LCCOMB_X25_Y15_N22
\count[3]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[3]~23_combout\ = (count(3) & (!\count[2]~22\)) # (!count(3) & ((\count[2]~22\) # (GND)))
-- \count[3]~24\ = CARRY((!\count[2]~22\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(3),
	datad => VCC,
	cin => \count[2]~22\,
	combout => \count[3]~23_combout\,
	cout => \count[3]~24\);

-- Location: LCFF_X25_Y15_N23
\count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \count[3]~23_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \current_state.sending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(3));

-- Location: LCFF_X25_Y15_N25
\count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \count[4]~25_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \current_state.sending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(4));

-- Location: LCFF_X25_Y14_N13
\count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \count[14]~45_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \current_state.sending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(14));

-- Location: LCCOMB_X25_Y14_N26
\Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (count(16)) # (((count(10)) # (!count(14))) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datab => count(15),
	datac => count(10),
	datad => count(14),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X25_Y14_N22
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (((count(7)) # (!count(6))) # (!count(8))) # (!count(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datab => count(8),
	datac => count(7),
	datad => count(6),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X25_Y14_N20
\Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = ((count(5)) # (\Equal2~0_combout\)) # (!\LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~0_combout\,
	datac => count(5),
	datad => \Equal2~0_combout\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X26_Y15_N4
\Equal2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~3_combout\) # (((\Equal2~2_combout\) # (\Equal2~1_combout\)) # (!count(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~3_combout\,
	datab => count(4),
	datac => \Equal2~2_combout\,
	datad => \Equal2~1_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X27_Y16_N0
\buffer_uart~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \buffer_uart~0_combout\ = (\PS2_FPGA|reg\(6) & ((\Equal2~4_combout\) # (!\current_state.sending~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.sending~regout\,
	datac => \PS2_FPGA|reg\(6),
	datad => \Equal2~4_combout\,
	combout => \buffer_uart~0_combout\);

-- Location: LCCOMB_X26_Y15_N6
\buffer_uart[7]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \buffer_uart[7]~1_combout\ = (\current_state.sending~regout\ & (((!\Equal2~4_combout\)))) # (!\current_state.sending~regout\ & (\Equal0~0_combout\ & ((!\process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \current_state.sending~regout\,
	datac => \Equal2~4_combout\,
	datad => \process_0~0_combout\,
	combout => \buffer_uart[7]~1_combout\);

-- Location: LCFF_X27_Y16_N1
\buffer_uart[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \buffer_uart~0_combout\,
	ena => \buffer_uart[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => buffer_uart(6));

-- Location: LCCOMB_X27_Y16_N14
\buffer_uart~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \buffer_uart~5_combout\ = (\PS2_FPGA|reg\(3)) # ((\current_state.sending~regout\ & !\Equal2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.sending~regout\,
	datac => \PS2_FPGA|reg\(3),
	datad => \Equal2~4_combout\,
	combout => \buffer_uart~5_combout\);

-- Location: LCFF_X27_Y16_N15
\buffer_uart[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \buffer_uart~5_combout\,
	ena => \buffer_uart[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => buffer_uart(3));

-- Location: LCCOMB_X25_Y16_N14
\buffer_uart~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \buffer_uart~7_combout\ = (\PS2_FPGA|reg\(5)) # ((\current_state.sending~regout\ & !\Equal2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.sending~regout\,
	datac => \Equal2~4_combout\,
	datad => \PS2_FPGA|reg\(5),
	combout => \buffer_uart~7_combout\);

-- Location: LCFF_X25_Y16_N15
\buffer_uart[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \buffer_uart~7_combout\,
	ena => \buffer_uart[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => buffer_uart(5));

-- Location: LCCOMB_X27_Y16_N24
\Decoder_ascii|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux4~1_combout\ = (buffer_uart(6) & (!buffer_uart(3) & buffer_uart(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => buffer_uart(6),
	datac => buffer_uart(3),
	datad => buffer_uart(5),
	combout => \Decoder_ascii|Mux4~1_combout\);

-- Location: LCCOMB_X26_Y15_N12
\PS2_FPGA|reg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PS2_FPGA|reg~0_combout\ = (!\PS2_FPGA|Equal0~0_combout\ & \PS2_FPGA|reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PS2_FPGA|Equal0~0_combout\,
	datad => \PS2_FPGA|reg\(1),
	combout => \PS2_FPGA|reg~0_combout\);

-- Location: LCFF_X26_Y15_N13
\PS2_FPGA|reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_ps2~combout\,
	datain => \PS2_FPGA|reg~0_combout\,
	ena => \PS2_FPGA|reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PS2_FPGA|reg\(0));

-- Location: LCCOMB_X25_Y16_N28
\buffer_uart~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \buffer_uart~2_combout\ = (\PS2_FPGA|reg\(0)) # ((\current_state.sending~regout\ & !\Equal2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.sending~regout\,
	datac => \Equal2~4_combout\,
	datad => \PS2_FPGA|reg\(0),
	combout => \buffer_uart~2_combout\);

-- Location: LCFF_X25_Y16_N29
\buffer_uart[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \buffer_uart~2_combout\,
	ena => \buffer_uart[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => buffer_uart(0));

-- Location: LCCOMB_X25_Y16_N12
\buffer_uart~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \buffer_uart~6_combout\ = (\PS2_FPGA|reg\(4)) # ((\current_state.sending~regout\ & !\Equal2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS2_FPGA|reg\(4),
	datab => \current_state.sending~regout\,
	datac => \Equal2~4_combout\,
	combout => \buffer_uart~6_combout\);

-- Location: LCFF_X25_Y16_N13
\buffer_uart[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \buffer_uart~6_combout\,
	ena => \buffer_uart[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => buffer_uart(4));

-- Location: LCCOMB_X25_Y16_N6
\buffer_uart~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \buffer_uart~3_combout\ = (\PS2_FPGA|reg\(1)) # ((\current_state.sending~regout\ & !\Equal2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS2_FPGA|reg\(1),
	datab => \current_state.sending~regout\,
	datac => \Equal2~4_combout\,
	combout => \buffer_uart~3_combout\);

-- Location: LCFF_X25_Y16_N7
\buffer_uart[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \buffer_uart~3_combout\,
	ena => \buffer_uart[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => buffer_uart(1));

-- Location: LCCOMB_X27_Y16_N26
\Decoder_ascii|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux4~0_combout\ = (!buffer_uart(2) & (!buffer_uart(0) & (buffer_uart(4) & !buffer_uart(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(2),
	datab => buffer_uart(0),
	datac => buffer_uart(4),
	datad => buffer_uart(1),
	combout => \Decoder_ascii|Mux4~0_combout\);

-- Location: LCCOMB_X27_Y16_N30
\Decoder_ascii|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux0~0_combout\ = (buffer_uart(7) & (\Decoder_ascii|Mux4~1_combout\ & \Decoder_ascii|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(7),
	datac => \Decoder_ascii|Mux4~1_combout\,
	datad => \Decoder_ascii|Mux4~0_combout\,
	combout => \Decoder_ascii|Mux0~0_combout\);

-- Location: LCCOMB_X25_Y16_N20
\buffer_uart~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \buffer_uart~4_combout\ = (\PS2_FPGA|reg\(2)) # ((\current_state.sending~regout\ & !\Equal2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.sending~regout\,
	datac => \Equal2~4_combout\,
	datad => \PS2_FPGA|reg\(2),
	combout => \buffer_uart~4_combout\);

-- Location: LCFF_X25_Y16_N21
\buffer_uart[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \buffer_uart~4_combout\,
	ena => \buffer_uart[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => buffer_uart(2));

-- Location: LCCOMB_X27_Y16_N16
\Decoder_ascii|Mux1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux1~5_combout\ = (buffer_uart(1) & (((!buffer_uart(2))))) # (!buffer_uart(1) & ((buffer_uart(0) & (!buffer_uart(3))) # (!buffer_uart(0) & ((buffer_uart(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(0),
	datab => buffer_uart(3),
	datac => buffer_uart(2),
	datad => buffer_uart(1),
	combout => \Decoder_ascii|Mux1~5_combout\);

-- Location: LCCOMB_X27_Y16_N6
\Decoder_ascii|Mux1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux1~6_combout\ = (buffer_uart(3) & ((buffer_uart(1) $ (buffer_uart(2))))) # (!buffer_uart(3) & (buffer_uart(0) & (!buffer_uart(1) & buffer_uart(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(3),
	datab => buffer_uart(0),
	datac => buffer_uart(1),
	datad => buffer_uart(2),
	combout => \Decoder_ascii|Mux1~6_combout\);

-- Location: LCCOMB_X27_Y16_N8
\Decoder_ascii|Mux1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux1~7_combout\ = (buffer_uart(4) & ((buffer_uart(5) & (\Decoder_ascii|Mux1~5_combout\)) # (!buffer_uart(5) & ((\Decoder_ascii|Mux1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(4),
	datab => buffer_uart(5),
	datac => \Decoder_ascii|Mux1~5_combout\,
	datad => \Decoder_ascii|Mux1~6_combout\,
	combout => \Decoder_ascii|Mux1~7_combout\);

-- Location: LCCOMB_X26_Y16_N30
\Decoder_ascii|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux1~0_combout\ = (buffer_uart(2) & (!buffer_uart(1) & (buffer_uart(3) $ (!buffer_uart(0))))) # (!buffer_uart(2) & (buffer_uart(1) & ((buffer_uart(0)) # (!buffer_uart(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(2),
	datab => buffer_uart(3),
	datac => buffer_uart(1),
	datad => buffer_uart(0),
	combout => \Decoder_ascii|Mux1~0_combout\);

-- Location: LCCOMB_X25_Y16_N16
\buffer_uart~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \buffer_uart~8_combout\ = (\PS2_FPGA|reg\(7) & ((\Equal2~4_combout\) # (!\current_state.sending~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.sending~regout\,
	datac => \Equal2~4_combout\,
	datad => \PS2_FPGA|reg\(7),
	combout => \buffer_uart~8_combout\);

-- Location: LCFF_X25_Y16_N17
\buffer_uart[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \buffer_uart~8_combout\,
	ena => \buffer_uart[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => buffer_uart(7));

-- Location: LCCOMB_X26_Y16_N16
\Decoder_ascii|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux1~3_combout\ = (!buffer_uart(4) & (!buffer_uart(7) & (buffer_uart(6) & !buffer_uart(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(4),
	datab => buffer_uart(7),
	datac => buffer_uart(6),
	datad => buffer_uart(5),
	combout => \Decoder_ascii|Mux1~3_combout\);

-- Location: LCCOMB_X26_Y16_N26
\Decoder_ascii|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux1~2_combout\ = (!buffer_uart(4) & (!buffer_uart(7) & (!buffer_uart(6) & buffer_uart(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(4),
	datab => buffer_uart(7),
	datac => buffer_uart(6),
	datad => buffer_uart(5),
	combout => \Decoder_ascii|Mux1~2_combout\);

-- Location: LCCOMB_X26_Y16_N10
\Decoder_ascii|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux1~4_combout\ = (\Decoder_ascii|Mux1~1_combout\ & ((\Decoder_ascii|Mux1~2_combout\) # ((\Decoder_ascii|Mux1~0_combout\ & \Decoder_ascii|Mux1~3_combout\)))) # (!\Decoder_ascii|Mux1~1_combout\ & (\Decoder_ascii|Mux1~0_combout\ & 
-- (\Decoder_ascii|Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder_ascii|Mux1~1_combout\,
	datab => \Decoder_ascii|Mux1~0_combout\,
	datac => \Decoder_ascii|Mux1~3_combout\,
	datad => \Decoder_ascii|Mux1~2_combout\,
	combout => \Decoder_ascii|Mux1~4_combout\);

-- Location: LCCOMB_X27_Y16_N2
\Decoder_ascii|Mux1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux1~8_combout\ = (\Decoder_ascii|Mux0~0_combout\) # ((\Decoder_ascii|Mux1~4_combout\) # ((\Decoder_ascii|Mux2~4_combout\ & \Decoder_ascii|Mux1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder_ascii|Mux2~4_combout\,
	datab => \Decoder_ascii|Mux0~0_combout\,
	datac => \Decoder_ascii|Mux1~7_combout\,
	datad => \Decoder_ascii|Mux1~4_combout\,
	combout => \Decoder_ascii|Mux1~8_combout\);

-- Location: LCCOMB_X25_Y16_N22
\Decoder_ascii|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux3~3_combout\ = (buffer_uart(5) & (((buffer_uart(2) & buffer_uart(3))))) # (!buffer_uart(5) & (!buffer_uart(6) & ((!buffer_uart(3)) # (!buffer_uart(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(6),
	datab => buffer_uart(5),
	datac => buffer_uart(2),
	datad => buffer_uart(3),
	combout => \Decoder_ascii|Mux3~3_combout\);

-- Location: LCCOMB_X25_Y16_N30
\Decoder_ascii|Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux3~5_combout\ = (buffer_uart(4) & ((buffer_uart(1)) # ((!buffer_uart(3) & buffer_uart(0))))) # (!buffer_uart(4) & (((buffer_uart(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(4),
	datab => buffer_uart(1),
	datac => buffer_uart(3),
	datad => buffer_uart(0),
	combout => \Decoder_ascii|Mux3~5_combout\);

-- Location: LCCOMB_X24_Y16_N16
\Decoder_ascii|Mux3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux3~6_combout\ = (buffer_uart(7)) # ((!buffer_uart(2) & (!buffer_uart(6) & !\Decoder_ascii|Mux3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(7),
	datab => buffer_uart(2),
	datac => buffer_uart(6),
	datad => \Decoder_ascii|Mux3~5_combout\,
	combout => \Decoder_ascii|Mux3~6_combout\);

-- Location: LCCOMB_X25_Y16_N2
\Decoder_ascii|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux3~2_combout\ = (buffer_uart(0) & (buffer_uart(1) & (!buffer_uart(2)))) # (!buffer_uart(0) & (!buffer_uart(3) & (buffer_uart(1) $ (buffer_uart(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(1),
	datab => buffer_uart(0),
	datac => buffer_uart(2),
	datad => buffer_uart(3),
	combout => \Decoder_ascii|Mux3~2_combout\);

-- Location: LCCOMB_X24_Y16_N20
\Decoder_ascii|Mux3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux3~8_combout\ = (buffer_uart(6) & ((buffer_uart(4)) # ((buffer_uart(5)) # (!\Decoder_ascii|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(4),
	datab => buffer_uart(5),
	datac => buffer_uart(6),
	datad => \Decoder_ascii|Mux3~2_combout\,
	combout => \Decoder_ascii|Mux3~8_combout\);

-- Location: LCCOMB_X23_Y16_N16
\Decoder_ascii|Mux3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux3~7_combout\ = (\Decoder_ascii|Mux3~4_combout\) # ((\Decoder_ascii|Mux3~3_combout\) # ((\Decoder_ascii|Mux3~6_combout\) # (\Decoder_ascii|Mux3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder_ascii|Mux3~4_combout\,
	datab => \Decoder_ascii|Mux3~3_combout\,
	datac => \Decoder_ascii|Mux3~6_combout\,
	datad => \Decoder_ascii|Mux3~8_combout\,
	combout => \Decoder_ascii|Mux3~7_combout\);

-- Location: LCCOMB_X23_Y19_N8
\Decoder_A|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_A|Mux6~0_combout\ = (!\Decoder_ascii|Mux0~0_combout\ & ((\Decoder_ascii|Mux2~6_combout\ & (\Decoder_ascii|Mux1~8_combout\ & \Decoder_ascii|Mux3~7_combout\)) # (!\Decoder_ascii|Mux2~6_combout\ & (!\Decoder_ascii|Mux1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder_ascii|Mux2~6_combout\,
	datab => \Decoder_ascii|Mux1~8_combout\,
	datac => \Decoder_ascii|Mux0~0_combout\,
	datad => \Decoder_ascii|Mux3~7_combout\,
	combout => \Decoder_A|Mux6~0_combout\);

-- Location: LCCOMB_X29_Y15_N18
\flag~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \flag~0_combout\ = (\process_0~0_combout\ & ((\current_state.wait_break~regout\) # (\flag~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.wait_break~regout\,
	datac => \flag~regout\,
	datad => \process_0~0_combout\,
	combout => \flag~0_combout\);

-- Location: LCCOMB_X27_Y15_N24
\PS2_FPGA|ready~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PS2_FPGA|ready~0_combout\ = (\PS2_FPGA|count[3]~0_combout\) # ((\PS2_FPGA|ready~regout\ & !\PS2_FPGA|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS2_FPGA|count[3]~0_combout\,
	datac => \PS2_FPGA|ready~regout\,
	datad => \PS2_FPGA|Equal0~0_combout\,
	combout => \PS2_FPGA|ready~0_combout\);

-- Location: LCFF_X27_Y15_N25
\PS2_FPGA|ready\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_ps2~combout\,
	datain => \PS2_FPGA|ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PS2_FPGA|ready~regout\);

-- Location: LCCOMB_X26_Y15_N8
\alt_ready[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \alt_ready[0]~feeder_combout\ = \PS2_FPGA|ready~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS2_FPGA|ready~regout\,
	combout => \alt_ready[0]~feeder_combout\);

-- Location: LCFF_X26_Y15_N9
\alt_ready[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \alt_ready[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => alt_ready(0));

-- Location: LCCOMB_X26_Y15_N16
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!alt_ready(0) & \PS2_FPGA|ready~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => alt_ready(0),
	datad => \PS2_FPGA|ready~regout\,
	combout => \Equal0~0_combout\);

-- Location: LCFF_X29_Y15_N19
flag : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \flag~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \flag~regout\);

-- Location: LCCOMB_X29_Y15_N16
\current_state~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \current_state~6_combout\ = ((!\flag~regout\ & \current_state.wait_break~regout\)) # (!\process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \flag~regout\,
	datac => \current_state.wait_break~regout\,
	datad => \process_0~0_combout\,
	combout => \current_state~6_combout\);

-- Location: LCFF_X29_Y15_N17
\current_state.wait_break\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \current_state~6_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.wait_break~regout\);

-- Location: LCCOMB_X26_Y15_N2
\display_a[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_a[0]~0_combout\ = (!\flag~regout\ & (\current_state.wait_break~regout\ & (!alt_ready(0) & \PS2_FPGA|ready~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flag~regout\,
	datab => \current_state.wait_break~regout\,
	datac => alt_ready(0),
	datad => \PS2_FPGA|ready~regout\,
	combout => \display_a[0]~0_combout\);

-- Location: LCFF_X23_Y19_N9
\display_a[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \Decoder_A|Mux6~0_combout\,
	ena => \display_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_a[0]~reg0_regout\);

-- Location: LCCOMB_X23_Y19_N14
\Decoder_A|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_A|Mux5~0_combout\ = (!\Decoder_ascii|Mux0~0_combout\ & ((\Decoder_ascii|Mux2~6_combout\ & ((\Decoder_ascii|Mux3~7_combout\) # (!\Decoder_ascii|Mux1~8_combout\))) # (!\Decoder_ascii|Mux2~6_combout\ & (!\Decoder_ascii|Mux1~8_combout\ & 
-- \Decoder_ascii|Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder_ascii|Mux2~6_combout\,
	datab => \Decoder_ascii|Mux1~8_combout\,
	datac => \Decoder_ascii|Mux0~0_combout\,
	datad => \Decoder_ascii|Mux3~7_combout\,
	combout => \Decoder_A|Mux5~0_combout\);

-- Location: LCFF_X23_Y19_N15
\display_a[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \Decoder_A|Mux5~0_combout\,
	ena => \display_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_a[1]~reg0_regout\);

-- Location: LCCOMB_X23_Y19_N20
\Decoder_A|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_A|Mux4~0_combout\ = (!\Decoder_ascii|Mux0~0_combout\ & ((\Decoder_ascii|Mux3~7_combout\) # ((!\Decoder_ascii|Mux2~6_combout\ & \Decoder_ascii|Mux1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder_ascii|Mux2~6_combout\,
	datab => \Decoder_ascii|Mux1~8_combout\,
	datac => \Decoder_ascii|Mux0~0_combout\,
	datad => \Decoder_ascii|Mux3~7_combout\,
	combout => \Decoder_A|Mux4~0_combout\);

-- Location: LCFF_X23_Y19_N21
\display_a[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \Decoder_A|Mux4~0_combout\,
	ena => \display_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_a[2]~reg0_regout\);

-- Location: LCCOMB_X23_Y19_N30
\Decoder_A|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_A|Mux3~0_combout\ = (\Decoder_ascii|Mux2~6_combout\ & ((\Decoder_ascii|Mux1~8_combout\ & ((\Decoder_ascii|Mux3~7_combout\))) # (!\Decoder_ascii|Mux1~8_combout\ & (\Decoder_ascii|Mux0~0_combout\ & !\Decoder_ascii|Mux3~7_combout\)))) # 
-- (!\Decoder_ascii|Mux2~6_combout\ & (!\Decoder_ascii|Mux0~0_combout\ & (\Decoder_ascii|Mux1~8_combout\ $ (\Decoder_ascii|Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder_ascii|Mux2~6_combout\,
	datab => \Decoder_ascii|Mux1~8_combout\,
	datac => \Decoder_ascii|Mux0~0_combout\,
	datad => \Decoder_ascii|Mux3~7_combout\,
	combout => \Decoder_A|Mux3~0_combout\);

-- Location: LCFF_X23_Y19_N31
\display_a[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \Decoder_A|Mux3~0_combout\,
	ena => \display_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_a[3]~reg0_regout\);

-- Location: LCCOMB_X23_Y19_N28
\Decoder_A|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_A|Mux2~0_combout\ = (\Decoder_ascii|Mux2~6_combout\ & ((\Decoder_ascii|Mux1~8_combout\ & (\Decoder_ascii|Mux0~0_combout\)) # (!\Decoder_ascii|Mux1~8_combout\ & (!\Decoder_ascii|Mux0~0_combout\ & !\Decoder_ascii|Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder_ascii|Mux2~6_combout\,
	datab => \Decoder_ascii|Mux1~8_combout\,
	datac => \Decoder_ascii|Mux0~0_combout\,
	datad => \Decoder_ascii|Mux3~7_combout\,
	combout => \Decoder_A|Mux2~0_combout\);

-- Location: LCFF_X23_Y19_N29
\display_a[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \Decoder_A|Mux2~0_combout\,
	ena => \display_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_a[4]~reg0_regout\);

-- Location: LCCOMB_X23_Y19_N6
\Decoder_A|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_A|Mux1~0_combout\ = (\Decoder_ascii|Mux2~6_combout\ & ((\Decoder_ascii|Mux3~7_combout\ & ((\Decoder_ascii|Mux0~0_combout\))) # (!\Decoder_ascii|Mux3~7_combout\ & (\Decoder_ascii|Mux1~8_combout\)))) # (!\Decoder_ascii|Mux2~6_combout\ & 
-- (\Decoder_ascii|Mux1~8_combout\ & (!\Decoder_ascii|Mux0~0_combout\ & \Decoder_ascii|Mux3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder_ascii|Mux2~6_combout\,
	datab => \Decoder_ascii|Mux1~8_combout\,
	datac => \Decoder_ascii|Mux0~0_combout\,
	datad => \Decoder_ascii|Mux3~7_combout\,
	combout => \Decoder_A|Mux1~0_combout\);

-- Location: LCFF_X23_Y19_N7
\display_a[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \Decoder_A|Mux1~0_combout\,
	ena => \display_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_a[5]~reg0_regout\);

-- Location: LCCOMB_X23_Y19_N0
\Decoder_A|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_A|Mux0~0_combout\ = (\Decoder_ascii|Mux2~6_combout\ & (!\Decoder_ascii|Mux1~8_combout\ & (\Decoder_ascii|Mux0~0_combout\ & \Decoder_ascii|Mux3~7_combout\))) # (!\Decoder_ascii|Mux2~6_combout\ & (!\Decoder_ascii|Mux0~0_combout\ & 
-- (\Decoder_ascii|Mux1~8_combout\ $ (\Decoder_ascii|Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder_ascii|Mux2~6_combout\,
	datab => \Decoder_ascii|Mux1~8_combout\,
	datac => \Decoder_ascii|Mux0~0_combout\,
	datad => \Decoder_ascii|Mux3~7_combout\,
	combout => \Decoder_A|Mux0~0_combout\);

-- Location: LCFF_X23_Y19_N1
\display_a[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \Decoder_A|Mux0~0_combout\,
	ena => \display_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_a[6]~reg0_regout\);

-- Location: LCCOMB_X26_Y16_N0
\Decoder_ascii|Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux2~5_combout\ = (!buffer_uart(4) & (!buffer_uart(1) & !buffer_uart(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(4),
	datac => buffer_uart(1),
	datad => buffer_uart(5),
	combout => \Decoder_ascii|Mux2~5_combout\);

-- Location: LCCOMB_X25_Y16_N18
\Decoder_ascii|Mux4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux4~8_combout\ = (!buffer_uart(7) & (((!buffer_uart(0)) # (!\Decoder_ascii|Mux2~5_combout\)) # (!buffer_uart(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(7),
	datab => buffer_uart(2),
	datac => \Decoder_ascii|Mux2~5_combout\,
	datad => buffer_uart(0),
	combout => \Decoder_ascii|Mux4~8_combout\);

-- Location: LCCOMB_X27_Y16_N28
\Decoder_ascii|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux4~2_combout\ = (buffer_uart(7) & ((!\Decoder_ascii|Mux4~0_combout\) # (!\Decoder_ascii|Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => buffer_uart(7),
	datac => \Decoder_ascii|Mux4~1_combout\,
	datad => \Decoder_ascii|Mux4~0_combout\,
	combout => \Decoder_ascii|Mux4~2_combout\);

-- Location: LCCOMB_X25_Y16_N26
\Decoder_ascii|Mux4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux4~6_combout\ = (buffer_uart(4) & ((buffer_uart(3) & (buffer_uart(1))) # (!buffer_uart(3) & ((buffer_uart(0)))))) # (!buffer_uart(4) & (buffer_uart(1) & ((buffer_uart(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(4),
	datab => buffer_uart(1),
	datac => buffer_uart(3),
	datad => buffer_uart(0),
	combout => \Decoder_ascii|Mux4~6_combout\);

-- Location: LCCOMB_X25_Y16_N8
\Decoder_ascii|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux4~3_combout\ = (buffer_uart(0) & (!buffer_uart(4))) # (!buffer_uart(0) & (buffer_uart(1) & (buffer_uart(4) $ (buffer_uart(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(4),
	datab => buffer_uart(1),
	datac => buffer_uart(3),
	datad => buffer_uart(0),
	combout => \Decoder_ascii|Mux4~3_combout\);

-- Location: LCCOMB_X25_Y16_N10
\Decoder_ascii|Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux4~4_combout\ = (buffer_uart(3) & (buffer_uart(2) $ (((!buffer_uart(0)) # (!buffer_uart(1)))))) # (!buffer_uart(3) & ((buffer_uart(1) $ (!buffer_uart(0))) # (!buffer_uart(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(1),
	datab => buffer_uart(0),
	datac => buffer_uart(2),
	datad => buffer_uart(3),
	combout => \Decoder_ascii|Mux4~4_combout\);

-- Location: LCCOMB_X25_Y16_N0
\Decoder_ascii|Mux4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux4~5_combout\ = (buffer_uart(5) & (((buffer_uart(2))))) # (!buffer_uart(5) & (((\Decoder_ascii|Mux4~4_combout\)) # (!buffer_uart(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(4),
	datab => buffer_uart(5),
	datac => buffer_uart(2),
	datad => \Decoder_ascii|Mux4~4_combout\,
	combout => \Decoder_ascii|Mux4~5_combout\);

-- Location: LCCOMB_X25_Y16_N4
\Decoder_ascii|Mux4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux4~7_combout\ = (buffer_uart(5) & ((\Decoder_ascii|Mux4~5_combout\ & (\Decoder_ascii|Mux4~6_combout\)) # (!\Decoder_ascii|Mux4~5_combout\ & ((!\Decoder_ascii|Mux4~3_combout\))))) # (!buffer_uart(5) & (((\Decoder_ascii|Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(5),
	datab => \Decoder_ascii|Mux4~6_combout\,
	datac => \Decoder_ascii|Mux4~3_combout\,
	datad => \Decoder_ascii|Mux4~5_combout\,
	combout => \Decoder_ascii|Mux4~7_combout\);

-- Location: LCCOMB_X24_Y16_N10
\Decoder_ascii|Mux4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux4~9_combout\ = (\Decoder_ascii|Mux4~2_combout\) # ((buffer_uart(6) & (\Decoder_ascii|Mux4~8_combout\)) # (!buffer_uart(6) & ((\Decoder_ascii|Mux4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(6),
	datab => \Decoder_ascii|Mux4~8_combout\,
	datac => \Decoder_ascii|Mux4~2_combout\,
	datad => \Decoder_ascii|Mux4~7_combout\,
	combout => \Decoder_ascii|Mux4~9_combout\);

-- Location: LCCOMB_X25_Y16_N24
\Decoder_ascii|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux2~2_combout\ = (!buffer_uart(5) & !buffer_uart(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => buffer_uart(5),
	datad => buffer_uart(4),
	combout => \Decoder_ascii|Mux2~2_combout\);

-- Location: LCCOMB_X24_Y16_N2
\Decoder_ascii|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux5~4_combout\ = (buffer_uart(1) & (!buffer_uart(3) & ((!buffer_uart(0)) # (!buffer_uart(2))))) # (!buffer_uart(1) & (buffer_uart(2) & ((buffer_uart(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(1),
	datab => buffer_uart(2),
	datac => buffer_uart(3),
	datad => buffer_uart(0),
	combout => \Decoder_ascii|Mux5~4_combout\);

-- Location: LCCOMB_X24_Y16_N8
\Decoder_ascii|Mux5~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux5~12_combout\ = (!buffer_uart(7) & (buffer_uart(6) & ((!\Decoder_ascii|Mux5~4_combout\) # (!\Decoder_ascii|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(7),
	datab => \Decoder_ascii|Mux2~2_combout\,
	datac => buffer_uart(6),
	datad => \Decoder_ascii|Mux5~4_combout\,
	combout => \Decoder_ascii|Mux5~12_combout\);

-- Location: LCCOMB_X26_Y16_N18
\Decoder_ascii|Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux5~5_combout\ = (buffer_uart(1) & (((!buffer_uart(3) & !buffer_uart(0))))) # (!buffer_uart(1) & (buffer_uart(0) & ((buffer_uart(3)) # (!buffer_uart(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(2),
	datab => buffer_uart(1),
	datac => buffer_uart(3),
	datad => buffer_uart(0),
	combout => \Decoder_ascii|Mux5~5_combout\);

-- Location: LCCOMB_X26_Y16_N2
\Decoder_ascii|Mux5~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux5~9_combout\ = (buffer_uart(1) & (buffer_uart(2) $ (((buffer_uart(0)) # (!buffer_uart(3)))))) # (!buffer_uart(1) & (buffer_uart(2) & (!buffer_uart(3) & buffer_uart(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(2),
	datab => buffer_uart(3),
	datac => buffer_uart(1),
	datad => buffer_uart(0),
	combout => \Decoder_ascii|Mux5~9_combout\);

-- Location: LCCOMB_X26_Y16_N14
\Decoder_ascii|Mux5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux5~7_combout\ = (buffer_uart(2) & (!buffer_uart(1) & (buffer_uart(3) & !buffer_uart(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(2),
	datab => buffer_uart(1),
	datac => buffer_uart(3),
	datad => buffer_uart(0),
	combout => \Decoder_ascii|Mux5~7_combout\);

-- Location: LCCOMB_X26_Y16_N12
\Decoder_ascii|Mux5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux5~6_combout\ = (buffer_uart(2) & (buffer_uart(0) $ (((buffer_uart(3)) # (buffer_uart(1)))))) # (!buffer_uart(2) & (buffer_uart(3) & (buffer_uart(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(2),
	datab => buffer_uart(3),
	datac => buffer_uart(1),
	datad => buffer_uart(0),
	combout => \Decoder_ascii|Mux5~6_combout\);

-- Location: LCCOMB_X26_Y16_N28
\Decoder_ascii|Mux5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux5~8_combout\ = (buffer_uart(5) & (buffer_uart(4))) # (!buffer_uart(5) & ((buffer_uart(4) & ((!\Decoder_ascii|Mux5~6_combout\))) # (!buffer_uart(4) & (!\Decoder_ascii|Mux5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(5),
	datab => buffer_uart(4),
	datac => \Decoder_ascii|Mux5~7_combout\,
	datad => \Decoder_ascii|Mux5~6_combout\,
	combout => \Decoder_ascii|Mux5~8_combout\);

-- Location: LCCOMB_X26_Y16_N8
\Decoder_ascii|Mux5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux5~10_combout\ = (buffer_uart(5) & ((\Decoder_ascii|Mux5~8_combout\ & ((!\Decoder_ascii|Mux5~9_combout\))) # (!\Decoder_ascii|Mux5~8_combout\ & (!\Decoder_ascii|Mux5~5_combout\)))) # (!buffer_uart(5) & 
-- (((\Decoder_ascii|Mux5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(5),
	datab => \Decoder_ascii|Mux5~5_combout\,
	datac => \Decoder_ascii|Mux5~9_combout\,
	datad => \Decoder_ascii|Mux5~8_combout\,
	combout => \Decoder_ascii|Mux5~10_combout\);

-- Location: LCCOMB_X23_Y16_N10
\Decoder_ascii|Mux5~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux5~11_combout\ = (\Decoder_ascii|Mux5~12_combout\) # ((\Decoder_ascii|Mux4~2_combout\) # ((!buffer_uart(6) & \Decoder_ascii|Mux5~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(6),
	datab => \Decoder_ascii|Mux5~12_combout\,
	datac => \Decoder_ascii|Mux5~10_combout\,
	datad => \Decoder_ascii|Mux4~2_combout\,
	combout => \Decoder_ascii|Mux5~11_combout\);

-- Location: LCCOMB_X26_Y16_N4
\Decoder_ascii|Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux7~4_combout\ = (buffer_uart(0) & ((buffer_uart(2) & (!buffer_uart(1))) # (!buffer_uart(2) & (buffer_uart(1) & buffer_uart(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(2),
	datab => buffer_uart(1),
	datac => buffer_uart(3),
	datad => buffer_uart(0),
	combout => \Decoder_ascii|Mux7~4_combout\);

-- Location: LCCOMB_X26_Y16_N6
\Decoder_ascii|Mux7~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux7~11_combout\ = (!buffer_uart(7) & (buffer_uart(6) & ((!\Decoder_ascii|Mux2~2_combout\) # (!\Decoder_ascii|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(7),
	datab => buffer_uart(6),
	datac => \Decoder_ascii|Mux7~4_combout\,
	datad => \Decoder_ascii|Mux2~2_combout\,
	combout => \Decoder_ascii|Mux7~11_combout\);

-- Location: LCCOMB_X24_Y16_N22
\Decoder_ascii|Mux7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux7~5_combout\ = (buffer_uart(3) & (!buffer_uart(4) & ((buffer_uart(2)) # (buffer_uart(0))))) # (!buffer_uart(3) & (buffer_uart(0) & (buffer_uart(2) $ (buffer_uart(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(3),
	datab => buffer_uart(2),
	datac => buffer_uart(4),
	datad => buffer_uart(0),
	combout => \Decoder_ascii|Mux7~5_combout\);

-- Location: LCCOMB_X24_Y16_N4
\Decoder_ascii|Mux7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux7~8_combout\ = (buffer_uart(2) & (((buffer_uart(0)) # (!buffer_uart(4))))) # (!buffer_uart(2) & (buffer_uart(3) & (buffer_uart(4) & !buffer_uart(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(3),
	datab => buffer_uart(2),
	datac => buffer_uart(4),
	datad => buffer_uart(0),
	combout => \Decoder_ascii|Mux7~8_combout\);

-- Location: LCCOMB_X24_Y16_N28
\Decoder_ascii|Mux7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux7~6_combout\ = (buffer_uart(0)) # ((buffer_uart(1) & ((!buffer_uart(4)))) # (!buffer_uart(1) & ((buffer_uart(4)) # (!buffer_uart(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(1),
	datab => buffer_uart(2),
	datac => buffer_uart(4),
	datad => buffer_uart(0),
	combout => \Decoder_ascii|Mux7~6_combout\);

-- Location: LCCOMB_X24_Y16_N18
\Decoder_ascii|Mux7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux7~7_combout\ = (buffer_uart(5) & (buffer_uart(1))) # (!buffer_uart(5) & (((\Decoder_ascii|Mux7~6_combout\) # (!buffer_uart(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(1),
	datab => buffer_uart(5),
	datac => buffer_uart(3),
	datad => \Decoder_ascii|Mux7~6_combout\,
	combout => \Decoder_ascii|Mux7~7_combout\);

-- Location: LCCOMB_X24_Y16_N26
\Decoder_ascii|Mux7~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux7~9_combout\ = (buffer_uart(5) & ((\Decoder_ascii|Mux7~7_combout\ & ((\Decoder_ascii|Mux7~8_combout\))) # (!\Decoder_ascii|Mux7~7_combout\ & (!\Decoder_ascii|Mux7~5_combout\)))) # (!buffer_uart(5) & (((\Decoder_ascii|Mux7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(5),
	datab => \Decoder_ascii|Mux7~5_combout\,
	datac => \Decoder_ascii|Mux7~8_combout\,
	datad => \Decoder_ascii|Mux7~7_combout\,
	combout => \Decoder_ascii|Mux7~9_combout\);

-- Location: LCCOMB_X23_Y16_N22
\Decoder_ascii|Mux7~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux7~10_combout\ = (\Decoder_ascii|Mux7~11_combout\) # ((\Decoder_ascii|Mux4~2_combout\) # ((!buffer_uart(6) & \Decoder_ascii|Mux7~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(6),
	datab => \Decoder_ascii|Mux7~11_combout\,
	datac => \Decoder_ascii|Mux7~9_combout\,
	datad => \Decoder_ascii|Mux4~2_combout\,
	combout => \Decoder_ascii|Mux7~10_combout\);

-- Location: LCCOMB_X23_Y19_N22
\Decoder_B|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_B|Mux6~0_combout\ = (\Decoder_ascii|Mux7~10_combout\ & (!\Decoder_ascii|Mux4~9_combout\ & (\Decoder_ascii|Mux6~11_combout\ $ (!\Decoder_ascii|Mux5~11_combout\)))) # (!\Decoder_ascii|Mux7~10_combout\ & (!\Decoder_ascii|Mux6~11_combout\ & 
-- (\Decoder_ascii|Mux4~9_combout\ $ (!\Decoder_ascii|Mux5~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder_ascii|Mux6~11_combout\,
	datab => \Decoder_ascii|Mux4~9_combout\,
	datac => \Decoder_ascii|Mux5~11_combout\,
	datad => \Decoder_ascii|Mux7~10_combout\,
	combout => \Decoder_B|Mux6~0_combout\);

-- Location: LCFF_X23_Y19_N23
\display_b[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \Decoder_B|Mux6~0_combout\,
	ena => \display_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_b[0]~reg0_regout\);

-- Location: LCCOMB_X23_Y19_N24
\Decoder_B|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_B|Mux5~0_combout\ = (\Decoder_ascii|Mux6~11_combout\ & (!\Decoder_ascii|Mux4~9_combout\ & ((\Decoder_ascii|Mux7~10_combout\) # (!\Decoder_ascii|Mux5~11_combout\)))) # (!\Decoder_ascii|Mux6~11_combout\ & (\Decoder_ascii|Mux7~10_combout\ & 
-- (\Decoder_ascii|Mux4~9_combout\ $ (!\Decoder_ascii|Mux5~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder_ascii|Mux6~11_combout\,
	datab => \Decoder_ascii|Mux4~9_combout\,
	datac => \Decoder_ascii|Mux5~11_combout\,
	datad => \Decoder_ascii|Mux7~10_combout\,
	combout => \Decoder_B|Mux5~0_combout\);

-- Location: LCFF_X23_Y19_N25
\display_b[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \Decoder_B|Mux5~0_combout\,
	ena => \display_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_b[1]~reg0_regout\);

-- Location: LCCOMB_X23_Y19_N26
\Decoder_B|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_B|Mux4~0_combout\ = (\Decoder_ascii|Mux6~11_combout\ & (!\Decoder_ascii|Mux4~9_combout\ & ((\Decoder_ascii|Mux7~10_combout\)))) # (!\Decoder_ascii|Mux6~11_combout\ & ((\Decoder_ascii|Mux5~11_combout\ & (!\Decoder_ascii|Mux4~9_combout\)) # 
-- (!\Decoder_ascii|Mux5~11_combout\ & ((\Decoder_ascii|Mux7~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder_ascii|Mux6~11_combout\,
	datab => \Decoder_ascii|Mux4~9_combout\,
	datac => \Decoder_ascii|Mux5~11_combout\,
	datad => \Decoder_ascii|Mux7~10_combout\,
	combout => \Decoder_B|Mux4~0_combout\);

-- Location: LCFF_X23_Y19_N27
\display_b[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \Decoder_B|Mux4~0_combout\,
	ena => \display_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_b[2]~reg0_regout\);

-- Location: LCCOMB_X23_Y19_N4
\Decoder_B|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_B|Mux3~0_combout\ = (\Decoder_ascii|Mux7~10_combout\ & (\Decoder_ascii|Mux6~11_combout\ $ (((!\Decoder_ascii|Mux5~11_combout\))))) # (!\Decoder_ascii|Mux7~10_combout\ & ((\Decoder_ascii|Mux6~11_combout\ & (\Decoder_ascii|Mux4~9_combout\ & 
-- !\Decoder_ascii|Mux5~11_combout\)) # (!\Decoder_ascii|Mux6~11_combout\ & (!\Decoder_ascii|Mux4~9_combout\ & \Decoder_ascii|Mux5~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder_ascii|Mux6~11_combout\,
	datab => \Decoder_ascii|Mux4~9_combout\,
	datac => \Decoder_ascii|Mux5~11_combout\,
	datad => \Decoder_ascii|Mux7~10_combout\,
	combout => \Decoder_B|Mux3~0_combout\);

-- Location: LCFF_X23_Y19_N5
\display_b[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \Decoder_B|Mux3~0_combout\,
	ena => \display_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_b[3]~reg0_regout\);

-- Location: LCCOMB_X23_Y19_N18
\Decoder_B|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_B|Mux2~0_combout\ = (\Decoder_ascii|Mux4~9_combout\ & (\Decoder_ascii|Mux5~11_combout\ & ((\Decoder_ascii|Mux6~11_combout\) # (!\Decoder_ascii|Mux7~10_combout\)))) # (!\Decoder_ascii|Mux4~9_combout\ & (\Decoder_ascii|Mux6~11_combout\ & 
-- (!\Decoder_ascii|Mux5~11_combout\ & !\Decoder_ascii|Mux7~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder_ascii|Mux6~11_combout\,
	datab => \Decoder_ascii|Mux4~9_combout\,
	datac => \Decoder_ascii|Mux5~11_combout\,
	datad => \Decoder_ascii|Mux7~10_combout\,
	combout => \Decoder_B|Mux2~0_combout\);

-- Location: LCFF_X23_Y19_N19
\display_b[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \Decoder_B|Mux2~0_combout\,
	ena => \display_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_b[4]~reg0_regout\);

-- Location: LCCOMB_X23_Y19_N16
\Decoder_B|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_B|Mux1~0_combout\ = (\Decoder_ascii|Mux6~11_combout\ & ((\Decoder_ascii|Mux7~10_combout\ & (\Decoder_ascii|Mux4~9_combout\)) # (!\Decoder_ascii|Mux7~10_combout\ & ((\Decoder_ascii|Mux5~11_combout\))))) # (!\Decoder_ascii|Mux6~11_combout\ & 
-- (\Decoder_ascii|Mux5~11_combout\ & (\Decoder_ascii|Mux4~9_combout\ $ (\Decoder_ascii|Mux7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder_ascii|Mux6~11_combout\,
	datab => \Decoder_ascii|Mux4~9_combout\,
	datac => \Decoder_ascii|Mux5~11_combout\,
	datad => \Decoder_ascii|Mux7~10_combout\,
	combout => \Decoder_B|Mux1~0_combout\);

-- Location: LCFF_X23_Y19_N17
\display_b[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \Decoder_B|Mux1~0_combout\,
	ena => \display_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_b[5]~reg0_regout\);

-- Location: LCCOMB_X23_Y19_N10
\Decoder_B|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_B|Mux0~0_combout\ = (\Decoder_ascii|Mux4~9_combout\ & (\Decoder_ascii|Mux7~10_combout\ & (\Decoder_ascii|Mux6~11_combout\ $ (\Decoder_ascii|Mux5~11_combout\)))) # (!\Decoder_ascii|Mux4~9_combout\ & (!\Decoder_ascii|Mux6~11_combout\ & 
-- (\Decoder_ascii|Mux5~11_combout\ $ (\Decoder_ascii|Mux7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder_ascii|Mux6~11_combout\,
	datab => \Decoder_ascii|Mux4~9_combout\,
	datac => \Decoder_ascii|Mux5~11_combout\,
	datad => \Decoder_ascii|Mux7~10_combout\,
	combout => \Decoder_B|Mux0~0_combout\);

-- Location: LCFF_X23_Y19_N11
\display_b[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \Decoder_B|Mux0~0_combout\,
	ena => \display_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_b[6]~reg0_regout\);

-- Location: LCCOMB_X26_Y15_N0
\start_sending~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \start_sending~0_combout\ = (\flag~regout\ & (\current_state.wait_break~regout\ & (!alt_ready(0) & \PS2_FPGA|ready~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flag~regout\,
	datab => \current_state.wait_break~regout\,
	datac => alt_ready(0),
	datad => \PS2_FPGA|ready~regout\,
	combout => \start_sending~0_combout\);

-- Location: LCCOMB_X25_Y15_N10
\start_sending~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \start_sending~1_combout\ = (\LessThan0~3_combout\ & (!\current_state.sending~regout\ & ((\start_sending~regout\) # (\start_sending~0_combout\)))) # (!\LessThan0~3_combout\ & (((\start_sending~regout\) # (\start_sending~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \current_state.sending~regout\,
	datac => \start_sending~regout\,
	datad => \start_sending~0_combout\,
	combout => \start_sending~1_combout\);

-- Location: LCFF_X25_Y15_N11
start_sending : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \start_sending~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \start_sending~regout\);

-- Location: LCCOMB_X24_Y15_N2
\FPGA_RS232|prscl[0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|prscl[0]~13_combout\ = \FPGA_RS232|prscl\(0) $ (VCC)
-- \FPGA_RS232|prscl[0]~14\ = CARRY(\FPGA_RS232|prscl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FPGA_RS232|prscl\(0),
	datad => VCC,
	combout => \FPGA_RS232|prscl[0]~13_combout\,
	cout => \FPGA_RS232|prscl[0]~14\);

-- Location: LCCOMB_X24_Y15_N20
\FPGA_RS232|prscl[9]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|prscl[9]~31_combout\ = (\FPGA_RS232|prscl\(9) & (!\FPGA_RS232|prscl[8]~30\)) # (!\FPGA_RS232|prscl\(9) & ((\FPGA_RS232|prscl[8]~30\) # (GND)))
-- \FPGA_RS232|prscl[9]~32\ = CARRY((!\FPGA_RS232|prscl[8]~30\) # (!\FPGA_RS232|prscl\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_RS232|prscl\(9),
	datad => VCC,
	cin => \FPGA_RS232|prscl[8]~30\,
	combout => \FPGA_RS232|prscl[9]~31_combout\,
	cout => \FPGA_RS232|prscl[9]~32\);

-- Location: LCFF_X24_Y15_N21
\FPGA_RS232|prscl[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \FPGA_RS232|prscl[9]~31_combout\,
	sclr => \FPGA_RS232|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FPGA_RS232|prscl\(9));

-- Location: LCCOMB_X24_Y15_N10
\FPGA_RS232|prscl[4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|prscl[4]~21_combout\ = (\FPGA_RS232|prscl\(4) & (\FPGA_RS232|prscl[3]~20\ $ (GND))) # (!\FPGA_RS232|prscl\(4) & (!\FPGA_RS232|prscl[3]~20\ & VCC))
-- \FPGA_RS232|prscl[4]~22\ = CARRY((\FPGA_RS232|prscl\(4) & !\FPGA_RS232|prscl[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_RS232|prscl\(4),
	datad => VCC,
	cin => \FPGA_RS232|prscl[3]~20\,
	combout => \FPGA_RS232|prscl[4]~21_combout\,
	cout => \FPGA_RS232|prscl[4]~22\);

-- Location: LCFF_X24_Y15_N11
\FPGA_RS232|prscl[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \FPGA_RS232|prscl[4]~21_combout\,
	sclr => \FPGA_RS232|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FPGA_RS232|prscl\(4));

-- Location: LCCOMB_X24_Y15_N12
\FPGA_RS232|prscl[5]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|prscl[5]~23_combout\ = (\FPGA_RS232|prscl\(5) & (!\FPGA_RS232|prscl[4]~22\)) # (!\FPGA_RS232|prscl\(5) & ((\FPGA_RS232|prscl[4]~22\) # (GND)))
-- \FPGA_RS232|prscl[5]~24\ = CARRY((!\FPGA_RS232|prscl[4]~22\) # (!\FPGA_RS232|prscl\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_RS232|prscl\(5),
	datad => VCC,
	cin => \FPGA_RS232|prscl[4]~22\,
	combout => \FPGA_RS232|prscl[5]~23_combout\,
	cout => \FPGA_RS232|prscl[5]~24\);

-- Location: LCFF_X24_Y15_N13
\FPGA_RS232|prscl[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \FPGA_RS232|prscl[5]~23_combout\,
	sclr => \FPGA_RS232|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FPGA_RS232|prscl\(5));

-- Location: LCCOMB_X23_Y15_N16
\FPGA_RS232|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|LessThan0~0_combout\ = ((!\FPGA_RS232|prscl\(5) & ((!\FPGA_RS232|prscl\(4)) # (!\FPGA_RS232|prscl\(3))))) # (!\FPGA_RS232|prscl\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_RS232|prscl\(3),
	datab => \FPGA_RS232|prscl\(6),
	datac => \FPGA_RS232|prscl\(4),
	datad => \FPGA_RS232|prscl\(5),
	combout => \FPGA_RS232|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y15_N0
\FPGA_RS232|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|LessThan0~1_combout\ = (!\FPGA_RS232|prscl\(7) & (!\FPGA_RS232|prscl\(8) & (!\FPGA_RS232|prscl\(9) & \FPGA_RS232|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_RS232|prscl\(7),
	datab => \FPGA_RS232|prscl\(8),
	datac => \FPGA_RS232|prscl\(9),
	datad => \FPGA_RS232|LessThan0~0_combout\,
	combout => \FPGA_RS232|LessThan0~1_combout\);

-- Location: LCCOMB_X24_Y15_N30
\FPGA_RS232|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|LessThan0~2_combout\ = (\FPGA_RS232|prscl\(12) & ((\FPGA_RS232|prscl\(11)) # ((\FPGA_RS232|prscl\(10) & !\FPGA_RS232|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_RS232|prscl\(12),
	datab => \FPGA_RS232|prscl\(10),
	datac => \FPGA_RS232|prscl\(11),
	datad => \FPGA_RS232|LessThan0~1_combout\,
	combout => \FPGA_RS232|LessThan0~2_combout\);

-- Location: LCFF_X24_Y15_N3
\FPGA_RS232|prscl[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \FPGA_RS232|prscl[0]~13_combout\,
	sclr => \FPGA_RS232|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FPGA_RS232|prscl\(0));

-- Location: LCCOMB_X24_Y15_N4
\FPGA_RS232|prscl[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|prscl[1]~15_combout\ = (\FPGA_RS232|prscl\(1) & (!\FPGA_RS232|prscl[0]~14\)) # (!\FPGA_RS232|prscl\(1) & ((\FPGA_RS232|prscl[0]~14\) # (GND)))
-- \FPGA_RS232|prscl[1]~16\ = CARRY((!\FPGA_RS232|prscl[0]~14\) # (!\FPGA_RS232|prscl\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FPGA_RS232|prscl\(1),
	datad => VCC,
	cin => \FPGA_RS232|prscl[0]~14\,
	combout => \FPGA_RS232|prscl[1]~15_combout\,
	cout => \FPGA_RS232|prscl[1]~16\);

-- Location: LCFF_X24_Y15_N5
\FPGA_RS232|prscl[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \FPGA_RS232|prscl[1]~15_combout\,
	sclr => \FPGA_RS232|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FPGA_RS232|prscl\(1));

-- Location: LCCOMB_X24_Y15_N8
\FPGA_RS232|prscl[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|prscl[3]~19_combout\ = (\FPGA_RS232|prscl\(3) & (!\FPGA_RS232|prscl[2]~18\)) # (!\FPGA_RS232|prscl\(3) & ((\FPGA_RS232|prscl[2]~18\) # (GND)))
-- \FPGA_RS232|prscl[3]~20\ = CARRY((!\FPGA_RS232|prscl[2]~18\) # (!\FPGA_RS232|prscl\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FPGA_RS232|prscl\(3),
	datad => VCC,
	cin => \FPGA_RS232|prscl[2]~18\,
	combout => \FPGA_RS232|prscl[3]~19_combout\,
	cout => \FPGA_RS232|prscl[3]~20\);

-- Location: LCFF_X24_Y15_N9
\FPGA_RS232|prscl[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \FPGA_RS232|prscl[3]~19_combout\,
	sclr => \FPGA_RS232|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FPGA_RS232|prscl\(3));

-- Location: LCCOMB_X24_Y15_N14
\FPGA_RS232|prscl[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|prscl[6]~25_combout\ = (\FPGA_RS232|prscl\(6) & (\FPGA_RS232|prscl[5]~24\ $ (GND))) # (!\FPGA_RS232|prscl\(6) & (!\FPGA_RS232|prscl[5]~24\ & VCC))
-- \FPGA_RS232|prscl[6]~26\ = CARRY((\FPGA_RS232|prscl\(6) & !\FPGA_RS232|prscl[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FPGA_RS232|prscl\(6),
	datad => VCC,
	cin => \FPGA_RS232|prscl[5]~24\,
	combout => \FPGA_RS232|prscl[6]~25_combout\,
	cout => \FPGA_RS232|prscl[6]~26\);

-- Location: LCFF_X24_Y15_N15
\FPGA_RS232|prscl[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \FPGA_RS232|prscl[6]~25_combout\,
	sclr => \FPGA_RS232|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FPGA_RS232|prscl\(6));

-- Location: LCCOMB_X24_Y15_N18
\FPGA_RS232|prscl[8]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|prscl[8]~29_combout\ = (\FPGA_RS232|prscl\(8) & (\FPGA_RS232|prscl[7]~28\ $ (GND))) # (!\FPGA_RS232|prscl\(8) & (!\FPGA_RS232|prscl[7]~28\ & VCC))
-- \FPGA_RS232|prscl[8]~30\ = CARRY((\FPGA_RS232|prscl\(8) & !\FPGA_RS232|prscl[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FPGA_RS232|prscl\(8),
	datad => VCC,
	cin => \FPGA_RS232|prscl[7]~28\,
	combout => \FPGA_RS232|prscl[8]~29_combout\,
	cout => \FPGA_RS232|prscl[8]~30\);

-- Location: LCFF_X24_Y15_N19
\FPGA_RS232|prscl[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \FPGA_RS232|prscl[8]~29_combout\,
	sclr => \FPGA_RS232|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FPGA_RS232|prscl\(8));

-- Location: LCCOMB_X24_Y15_N22
\FPGA_RS232|prscl[10]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|prscl[10]~33_combout\ = (\FPGA_RS232|prscl\(10) & (\FPGA_RS232|prscl[9]~32\ $ (GND))) # (!\FPGA_RS232|prscl\(10) & (!\FPGA_RS232|prscl[9]~32\ & VCC))
-- \FPGA_RS232|prscl[10]~34\ = CARRY((\FPGA_RS232|prscl\(10) & !\FPGA_RS232|prscl[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FPGA_RS232|prscl\(10),
	datad => VCC,
	cin => \FPGA_RS232|prscl[9]~32\,
	combout => \FPGA_RS232|prscl[10]~33_combout\,
	cout => \FPGA_RS232|prscl[10]~34\);

-- Location: LCFF_X24_Y15_N23
\FPGA_RS232|prscl[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \FPGA_RS232|prscl[10]~33_combout\,
	sclr => \FPGA_RS232|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FPGA_RS232|prscl\(10));

-- Location: LCCOMB_X24_Y15_N24
\FPGA_RS232|prscl[11]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|prscl[11]~35_combout\ = (\FPGA_RS232|prscl\(11) & (!\FPGA_RS232|prscl[10]~34\)) # (!\FPGA_RS232|prscl\(11) & ((\FPGA_RS232|prscl[10]~34\) # (GND)))
-- \FPGA_RS232|prscl[11]~36\ = CARRY((!\FPGA_RS232|prscl[10]~34\) # (!\FPGA_RS232|prscl\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_RS232|prscl\(11),
	datad => VCC,
	cin => \FPGA_RS232|prscl[10]~34\,
	combout => \FPGA_RS232|prscl[11]~35_combout\,
	cout => \FPGA_RS232|prscl[11]~36\);

-- Location: LCFF_X24_Y15_N25
\FPGA_RS232|prscl[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \FPGA_RS232|prscl[11]~35_combout\,
	sclr => \FPGA_RS232|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FPGA_RS232|prscl\(11));

-- Location: LCCOMB_X23_Y15_N14
\FPGA_RS232|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|Equal0~2_combout\ = (!\FPGA_RS232|prscl\(10) & (\FPGA_RS232|prscl\(11) & (!\FPGA_RS232|prscl\(6) & \FPGA_RS232|prscl\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_RS232|prscl\(10),
	datab => \FPGA_RS232|prscl\(11),
	datac => \FPGA_RS232|prscl\(6),
	datad => \FPGA_RS232|prscl\(9),
	combout => \FPGA_RS232|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y15_N26
\FPGA_RS232|prscl[12]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|prscl[12]~37_combout\ = \FPGA_RS232|prscl[11]~36\ $ (!\FPGA_RS232|prscl\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \FPGA_RS232|prscl\(12),
	cin => \FPGA_RS232|prscl[11]~36\,
	combout => \FPGA_RS232|prscl[12]~37_combout\);

-- Location: LCFF_X24_Y15_N27
\FPGA_RS232|prscl[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \FPGA_RS232|prscl[12]~37_combout\,
	sclr => \FPGA_RS232|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FPGA_RS232|prscl\(12));

-- Location: LCCOMB_X24_Y15_N28
\FPGA_RS232|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|Equal0~0_combout\ = (!\FPGA_RS232|prscl\(7) & (!\FPGA_RS232|prscl\(0) & (!\FPGA_RS232|prscl\(1) & !\FPGA_RS232|prscl\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_RS232|prscl\(7),
	datab => \FPGA_RS232|prscl\(0),
	datac => \FPGA_RS232|prscl\(1),
	datad => \FPGA_RS232|prscl\(8),
	combout => \FPGA_RS232|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y15_N0
\FPGA_RS232|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|Equal0~3_combout\ = (\FPGA_RS232|Equal0~1_combout\ & (\FPGA_RS232|Equal0~2_combout\ & (!\FPGA_RS232|prscl\(12) & \FPGA_RS232|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_RS232|Equal0~1_combout\,
	datab => \FPGA_RS232|Equal0~2_combout\,
	datac => \FPGA_RS232|prscl\(12),
	datad => \FPGA_RS232|Equal0~0_combout\,
	combout => \FPGA_RS232|Equal0~3_combout\);

-- Location: LCCOMB_X23_Y16_N28
\FPGA_RS232|index[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|index[0]~9_combout\ = (\FPGA_RS232|index\(0) & ((!\FPGA_RS232|index[0]~6_combout\))) # (!\FPGA_RS232|index\(0) & (!\FPGA_RS232|LessThan1~0_combout\ & \FPGA_RS232|index[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_RS232|LessThan1~0_combout\,
	datac => \FPGA_RS232|index\(0),
	datad => \FPGA_RS232|index[0]~6_combout\,
	combout => \FPGA_RS232|index[0]~9_combout\);

-- Location: LCFF_X23_Y16_N29
\FPGA_RS232|index[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \FPGA_RS232|index[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FPGA_RS232|index\(0));

-- Location: LCCOMB_X22_Y16_N16
\FPGA_RS232|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|Add1~1_combout\ = \FPGA_RS232|index\(3) $ (((\FPGA_RS232|index\(2) & (\FPGA_RS232|index\(1) & \FPGA_RS232|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_RS232|index\(2),
	datab => \FPGA_RS232|index\(1),
	datac => \FPGA_RS232|index\(0),
	datad => \FPGA_RS232|index\(3),
	combout => \FPGA_RS232|Add1~1_combout\);

-- Location: LCCOMB_X23_Y16_N4
\FPGA_RS232|index[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|index[3]~7_combout\ = (\FPGA_RS232|index[0]~6_combout\ & (!\FPGA_RS232|LessThan1~0_combout\ & (\FPGA_RS232|Add1~1_combout\))) # (!\FPGA_RS232|index[0]~6_combout\ & (((\FPGA_RS232|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_RS232|LessThan1~0_combout\,
	datab => \FPGA_RS232|Add1~1_combout\,
	datac => \FPGA_RS232|index\(3),
	datad => \FPGA_RS232|index[0]~6_combout\,
	combout => \FPGA_RS232|index[3]~7_combout\);

-- Location: LCFF_X23_Y16_N5
\FPGA_RS232|index[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \FPGA_RS232|index[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FPGA_RS232|index\(3));

-- Location: LCCOMB_X22_Y16_N30
\FPGA_RS232|index[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|index[0]~10_combout\ = ((!\FPGA_RS232|index\(2) & (!\FPGA_RS232|index\(1) & !\FPGA_RS232|index\(0)))) # (!\FPGA_RS232|index\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_RS232|index\(2),
	datab => \FPGA_RS232|index\(1),
	datac => \FPGA_RS232|index\(0),
	datad => \FPGA_RS232|index\(3),
	combout => \FPGA_RS232|index[0]~10_combout\);

-- Location: LCFF_X23_Y16_N25
\FPGA_RS232|data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	sdata => \Decoder_ascii|Mux4~9_combout\,
	sload => VCC,
	ena => \FPGA_RS232|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FPGA_RS232|data\(3));

-- Location: LCCOMB_X23_Y16_N14
\FPGA_RS232|Equal2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|Equal2~5_combout\ = (\Decoder_ascii|Mux3~7_combout\ & (\FPGA_RS232|data\(4) & (\FPGA_RS232|data\(3) $ (!\Decoder_ascii|Mux4~9_combout\)))) # (!\Decoder_ascii|Mux3~7_combout\ & (!\FPGA_RS232|data\(4) & (\FPGA_RS232|data\(3) $ 
-- (!\Decoder_ascii|Mux4~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder_ascii|Mux3~7_combout\,
	datab => \FPGA_RS232|data\(3),
	datac => \FPGA_RS232|data\(4),
	datad => \Decoder_ascii|Mux4~9_combout\,
	combout => \FPGA_RS232|Equal2~5_combout\);

-- Location: LCCOMB_X23_Y16_N24
\FPGA_RS232|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|Equal3~0_combout\ = (\Decoder_ascii|Mux6~11_combout\ & (\Decoder_ascii|Mux7~10_combout\ & (\Decoder_ascii|Mux4~9_combout\ & \Decoder_ascii|Mux5~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder_ascii|Mux6~11_combout\,
	datab => \Decoder_ascii|Mux7~10_combout\,
	datac => \Decoder_ascii|Mux4~9_combout\,
	datad => \Decoder_ascii|Mux5~11_combout\,
	combout => \FPGA_RS232|Equal3~0_combout\);

-- Location: LCFF_X23_Y16_N11
\FPGA_RS232|data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \Decoder_ascii|Mux5~11_combout\,
	ena => \FPGA_RS232|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FPGA_RS232|data\(2));

-- Location: LCFF_X23_Y16_N23
\FPGA_RS232|data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \Decoder_ascii|Mux7~10_combout\,
	ena => \FPGA_RS232|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FPGA_RS232|data\(0));

-- Location: LCFF_X27_Y16_N31
\FPGA_RS232|data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \Decoder_ascii|Mux0~0_combout\,
	ena => \FPGA_RS232|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FPGA_RS232|data\(7));

-- Location: LCCOMB_X27_Y16_N18
\Decoder_ascii|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux2~3_combout\ = (buffer_uart(3) & (!buffer_uart(0) & buffer_uart(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => buffer_uart(3),
	datac => buffer_uart(0),
	datad => buffer_uart(2),
	combout => \Decoder_ascii|Mux2~3_combout\);

-- Location: LCCOMB_X27_Y16_N12
\Decoder_ascii|Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux2~4_combout\ = (!buffer_uart(6) & !buffer_uart(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => buffer_uart(6),
	datad => buffer_uart(7),
	combout => \Decoder_ascii|Mux2~4_combout\);

-- Location: LCCOMB_X27_Y16_N4
\FPGA_RS232|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|Equal2~1_combout\ = \FPGA_RS232|data\(5) $ (((\Decoder_ascii|Mux2~3_combout\ & (\Decoder_ascii|Mux2~5_combout\ & \Decoder_ascii|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_RS232|data\(5),
	datab => \Decoder_ascii|Mux2~3_combout\,
	datac => \Decoder_ascii|Mux2~5_combout\,
	datad => \Decoder_ascii|Mux2~4_combout\,
	combout => \FPGA_RS232|Equal2~1_combout\);

-- Location: LCCOMB_X27_Y16_N10
\FPGA_RS232|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|Equal2~2_combout\ = (\FPGA_RS232|Equal2~1_combout\ & (\FPGA_RS232|data\(7) $ (!\Decoder_ascii|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FPGA_RS232|data\(7),
	datac => \FPGA_RS232|Equal2~1_combout\,
	datad => \Decoder_ascii|Mux0~0_combout\,
	combout => \FPGA_RS232|Equal2~2_combout\);

-- Location: LCCOMB_X23_Y16_N8
\FPGA_RS232|Equal2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|Equal2~3_combout\ = (\FPGA_RS232|Equal2~2_combout\ & (\FPGA_RS232|data\(0) $ (!\Decoder_ascii|Mux7~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FPGA_RS232|data\(0),
	datac => \FPGA_RS232|Equal2~2_combout\,
	datad => \Decoder_ascii|Mux7~10_combout\,
	combout => \FPGA_RS232|Equal2~3_combout\);

-- Location: LCFF_X27_Y16_N3
\FPGA_RS232|data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \Decoder_ascii|Mux1~8_combout\,
	ena => \FPGA_RS232|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FPGA_RS232|data\(6));

-- Location: LCCOMB_X24_Y16_N0
\Decoder_ascii|Mux6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux6~6_combout\ = (buffer_uart(0) & (buffer_uart(1) $ ((buffer_uart(2))))) # (!buffer_uart(0) & (buffer_uart(1) & (buffer_uart(2) & !buffer_uart(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(1),
	datab => buffer_uart(2),
	datac => buffer_uart(3),
	datad => buffer_uart(0),
	combout => \Decoder_ascii|Mux6~6_combout\);

-- Location: LCCOMB_X24_Y16_N30
\Decoder_ascii|Mux6~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux6~12_combout\ = (!buffer_uart(7) & (buffer_uart(6) & ((!\Decoder_ascii|Mux6~6_combout\) # (!\Decoder_ascii|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(7),
	datab => \Decoder_ascii|Mux2~2_combout\,
	datac => buffer_uart(6),
	datad => \Decoder_ascii|Mux6~6_combout\,
	combout => \Decoder_ascii|Mux6~12_combout\);

-- Location: LCCOMB_X24_Y16_N14
\Decoder_ascii|Mux6~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux6~9_combout\ = (buffer_uart(4) & ((buffer_uart(1) & (!buffer_uart(0) & !buffer_uart(3))) # (!buffer_uart(1) & (buffer_uart(0) $ (buffer_uart(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(1),
	datab => buffer_uart(0),
	datac => buffer_uart(4),
	datad => buffer_uart(3),
	combout => \Decoder_ascii|Mux6~9_combout\);

-- Location: LCCOMB_X24_Y16_N6
\Decoder_ascii|Mux6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux6~7_combout\ = (buffer_uart(3) & (((buffer_uart(0))))) # (!buffer_uart(3) & ((buffer_uart(1)) # ((!buffer_uart(0) & buffer_uart(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(1),
	datab => buffer_uart(0),
	datac => buffer_uart(4),
	datad => buffer_uart(3),
	combout => \Decoder_ascii|Mux6~7_combout\);

-- Location: LCCOMB_X24_Y16_N12
\Decoder_ascii|Mux6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux6~8_combout\ = (!buffer_uart(7) & (buffer_uart(2) & (buffer_uart(5) & \Decoder_ascii|Mux6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(7),
	datab => buffer_uart(2),
	datac => buffer_uart(5),
	datad => \Decoder_ascii|Mux6~7_combout\,
	combout => \Decoder_ascii|Mux6~8_combout\);

-- Location: LCCOMB_X24_Y16_N24
\Decoder_ascii|Mux6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux6~10_combout\ = (\Decoder_ascii|Mux6~8_combout\) # ((!buffer_uart(6) & (!buffer_uart(5) & !\Decoder_ascii|Mux6~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(6),
	datab => buffer_uart(5),
	datac => \Decoder_ascii|Mux6~9_combout\,
	datad => \Decoder_ascii|Mux6~8_combout\,
	combout => \Decoder_ascii|Mux6~10_combout\);

-- Location: LCCOMB_X23_Y16_N12
\Decoder_ascii|Mux6~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux6~11_combout\ = (\Decoder_ascii|Mux6~5_combout\) # ((\Decoder_ascii|Mux6~12_combout\) # ((\Decoder_ascii|Mux4~2_combout\) # (\Decoder_ascii|Mux6~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder_ascii|Mux6~5_combout\,
	datab => \Decoder_ascii|Mux6~12_combout\,
	datac => \Decoder_ascii|Mux4~2_combout\,
	datad => \Decoder_ascii|Mux6~10_combout\,
	combout => \Decoder_ascii|Mux6~11_combout\);

-- Location: LCFF_X23_Y16_N13
\FPGA_RS232|data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \Decoder_ascii|Mux6~11_combout\,
	ena => \FPGA_RS232|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FPGA_RS232|data\(1));

-- Location: LCCOMB_X23_Y16_N2
\FPGA_RS232|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|Equal2~0_combout\ = (\Decoder_ascii|Mux6~11_combout\ & (\FPGA_RS232|data\(1) & (\FPGA_RS232|data\(6) $ (!\Decoder_ascii|Mux1~8_combout\)))) # (!\Decoder_ascii|Mux6~11_combout\ & (!\FPGA_RS232|data\(1) & (\FPGA_RS232|data\(6) $ 
-- (!\Decoder_ascii|Mux1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder_ascii|Mux6~11_combout\,
	datab => \FPGA_RS232|data\(6),
	datac => \FPGA_RS232|data\(1),
	datad => \Decoder_ascii|Mux1~8_combout\,
	combout => \FPGA_RS232|Equal2~0_combout\);

-- Location: LCCOMB_X23_Y16_N6
\FPGA_RS232|Equal2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|Equal2~4_combout\ = (\FPGA_RS232|Equal2~3_combout\ & (\FPGA_RS232|Equal2~0_combout\ & (\Decoder_ascii|Mux5~11_combout\ $ (!\FPGA_RS232|data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder_ascii|Mux5~11_combout\,
	datab => \FPGA_RS232|data\(2),
	datac => \FPGA_RS232|Equal2~3_combout\,
	datad => \FPGA_RS232|Equal2~0_combout\,
	combout => \FPGA_RS232|Equal2~4_combout\);

-- Location: LCCOMB_X23_Y16_N0
\FPGA_RS232|index[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|index[0]~5_combout\ = (\FPGA_RS232|Equal3~1_combout\ & ((\FPGA_RS232|Equal3~0_combout\) # ((\FPGA_RS232|Equal2~5_combout\ & \FPGA_RS232|Equal2~4_combout\)))) # (!\FPGA_RS232|Equal3~1_combout\ & (\FPGA_RS232|Equal2~5_combout\ & 
-- ((\FPGA_RS232|Equal2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_RS232|Equal3~1_combout\,
	datab => \FPGA_RS232|Equal2~5_combout\,
	datac => \FPGA_RS232|Equal3~0_combout\,
	datad => \FPGA_RS232|Equal2~4_combout\,
	combout => \FPGA_RS232|index[0]~5_combout\);

-- Location: LCCOMB_X23_Y16_N18
\FPGA_RS232|index[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|index[0]~6_combout\ = (\FPGA_RS232|Equal0~3_combout\ & ((\FPGA_RS232|index[0]~10_combout\) # ((!\FPGA_RS232|index[2]~4_combout\ & !\FPGA_RS232|index[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_RS232|index[2]~4_combout\,
	datab => \FPGA_RS232|Equal0~3_combout\,
	datac => \FPGA_RS232|index[0]~10_combout\,
	datad => \FPGA_RS232|index[0]~5_combout\,
	combout => \FPGA_RS232|index[0]~6_combout\);

-- Location: LCCOMB_X23_Y16_N30
\FPGA_RS232|index[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|index[1]~11_combout\ = (\FPGA_RS232|index[0]~6_combout\ & (!\FPGA_RS232|LessThan1~0_combout\ & (\FPGA_RS232|index\(0) $ (\FPGA_RS232|index\(1))))) # (!\FPGA_RS232|index[0]~6_combout\ & (((\FPGA_RS232|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_RS232|index\(0),
	datab => \FPGA_RS232|LessThan1~0_combout\,
	datac => \FPGA_RS232|index\(1),
	datad => \FPGA_RS232|index[0]~6_combout\,
	combout => \FPGA_RS232|index[1]~11_combout\);

-- Location: LCFF_X23_Y16_N31
\FPGA_RS232|index[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \FPGA_RS232|index[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FPGA_RS232|index\(1));

-- Location: LCCOMB_X22_Y16_N14
\FPGA_RS232|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|LessThan1~0_combout\ = (\FPGA_RS232|index\(3) & ((\FPGA_RS232|index\(2)) # ((\FPGA_RS232|index\(1)) # (\FPGA_RS232|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_RS232|index\(2),
	datab => \FPGA_RS232|index\(1),
	datac => \FPGA_RS232|index\(0),
	datad => \FPGA_RS232|index\(3),
	combout => \FPGA_RS232|LessThan1~0_combout\);

-- Location: LCCOMB_X23_Y15_N2
\FPGA_RS232|data[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|data[7]~0_combout\ = (\start_sending~regout\ & (\FPGA_RS232|LessThan1~0_combout\ & \FPGA_RS232|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start_sending~regout\,
	datac => \FPGA_RS232|LessThan1~0_combout\,
	datad => \FPGA_RS232|Equal0~3_combout\,
	combout => \FPGA_RS232|data[7]~0_combout\);

-- Location: LCFF_X23_Y16_N15
\FPGA_RS232|data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	sdata => \Decoder_ascii|Mux3~7_combout\,
	sload => VCC,
	ena => \FPGA_RS232|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FPGA_RS232|data\(4));

-- Location: LCCOMB_X22_Y16_N20
\FPGA_RS232|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|Add1~0_combout\ = \FPGA_RS232|index\(0) $ (\FPGA_RS232|index\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FPGA_RS232|index\(0),
	datad => \FPGA_RS232|index\(1),
	combout => \FPGA_RS232|Add1~0_combout\);

-- Location: LCCOMB_X27_Y16_N22
\Decoder_ascii|Mux2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder_ascii|Mux2~6_combout\ = (buffer_uart(7)) # ((buffer_uart(6)) # ((!\Decoder_ascii|Mux2~3_combout\) # (!\Decoder_ascii|Mux2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffer_uart(7),
	datab => buffer_uart(6),
	datac => \Decoder_ascii|Mux2~5_combout\,
	datad => \Decoder_ascii|Mux2~3_combout\,
	combout => \Decoder_ascii|Mux2~6_combout\);

-- Location: LCFF_X27_Y16_N23
\FPGA_RS232|data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \Decoder_ascii|Mux2~6_combout\,
	ena => \FPGA_RS232|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FPGA_RS232|data\(5));

-- Location: LCCOMB_X22_Y16_N28
\FPGA_RS232|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|Mux0~3_combout\ = (\FPGA_RS232|Mux0~2_combout\ & ((\FPGA_RS232|data\(4)) # ((!\FPGA_RS232|Add1~0_combout\)))) # (!\FPGA_RS232|Mux0~2_combout\ & (((\FPGA_RS232|Add1~0_combout\ & \FPGA_RS232|data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_RS232|Mux0~2_combout\,
	datab => \FPGA_RS232|data\(4),
	datac => \FPGA_RS232|Add1~0_combout\,
	datad => \FPGA_RS232|data\(5),
	combout => \FPGA_RS232|Mux0~3_combout\);

-- Location: LCCOMB_X22_Y16_N22
\FPGA_RS232|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|Mux0~0_combout\ = (\FPGA_RS232|index\(0) & ((\FPGA_RS232|data\(2)) # ((!\FPGA_RS232|index\(1))))) # (!\FPGA_RS232|index\(0) & (((\FPGA_RS232|data\(3) & !\FPGA_RS232|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_RS232|data\(2),
	datab => \FPGA_RS232|index\(0),
	datac => \FPGA_RS232|data\(3),
	datad => \FPGA_RS232|index\(1),
	combout => \FPGA_RS232|Mux0~0_combout\);

-- Location: LCCOMB_X22_Y16_N12
\FPGA_RS232|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|Mux0~1_combout\ = (\FPGA_RS232|Mux0~0_combout\ & (((\FPGA_RS232|data\(0)) # (!\FPGA_RS232|Add1~0_combout\)))) # (!\FPGA_RS232|Mux0~0_combout\ & (\FPGA_RS232|data\(1) & (\FPGA_RS232|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_RS232|data\(1),
	datab => \FPGA_RS232|Mux0~0_combout\,
	datac => \FPGA_RS232|Add1~0_combout\,
	datad => \FPGA_RS232|data\(0),
	combout => \FPGA_RS232|Mux0~1_combout\);

-- Location: LCCOMB_X22_Y16_N4
\FPGA_RS232|serial_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|serial_out~0_combout\ = (\FPGA_RS232|LessThan1~0_combout\) # ((\FPGA_RS232|Add2~0_combout\ & ((\FPGA_RS232|Mux0~1_combout\))) # (!\FPGA_RS232|Add2~0_combout\ & (\FPGA_RS232|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_RS232|Add2~0_combout\,
	datab => \FPGA_RS232|Mux0~3_combout\,
	datac => \FPGA_RS232|LessThan1~0_combout\,
	datad => \FPGA_RS232|Mux0~1_combout\,
	combout => \FPGA_RS232|serial_out~0_combout\);

-- Location: LCCOMB_X22_Y16_N2
\FPGA_RS232|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|Equal1~0_combout\ = (!\FPGA_RS232|index\(2) & (!\FPGA_RS232|index\(1) & (!\FPGA_RS232|index\(0) & !\FPGA_RS232|index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_RS232|index\(2),
	datab => \FPGA_RS232|index\(1),
	datac => \FPGA_RS232|index\(0),
	datad => \FPGA_RS232|index\(3),
	combout => \FPGA_RS232|Equal1~0_combout\);

-- Location: LCCOMB_X22_Y16_N8
\FPGA_RS232|serial_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \FPGA_RS232|serial_out~1_combout\ = (\FPGA_RS232|Equal0~3_combout\ & (\FPGA_RS232|serial_out~0_combout\ & ((!\FPGA_RS232|Equal1~0_combout\)))) # (!\FPGA_RS232|Equal0~3_combout\ & (((\FPGA_RS232|serial_out~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_RS232|Equal0~3_combout\,
	datab => \FPGA_RS232|serial_out~0_combout\,
	datac => \FPGA_RS232|serial_out~regout\,
	datad => \FPGA_RS232|Equal1~0_combout\,
	combout => \FPGA_RS232|serial_out~1_combout\);

-- Location: LCFF_X22_Y16_N9
\FPGA_RS232|serial_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk_50mhz~clkctrl_outclk\,
	datain => \FPGA_RS232|serial_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FPGA_RS232|serial_out~regout\);

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
	datain => \FPGA_RS232|serial_out~regout\,
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
	datain => \ALT_INV_current_state.wait_make~regout\,
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
	datain => \current_state.wait_break~regout\,
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


