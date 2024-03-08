-- Copyright (C) 2022  Intel Corporation. All rights reserved.
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
-- VERSION "Version 22.1std.0 Build 915 10/25/2022 SC Lite Edition"

-- DATE "04/05/2023 22:42:29"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Digital_Clock IS
    PORT (
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(7 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Digital_Clock;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Digital_Clock IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \CNT1SEC|cnt[0]~0_combout\ : std_logic;
SIGNAL \CNT1SEC|Add0~1_sumout\ : std_logic;
SIGNAL \CNT1SEC|Add0~2\ : std_logic;
SIGNAL \CNT1SEC|Add0~5_sumout\ : std_logic;
SIGNAL \CNT1SEC|Add0~6\ : std_logic;
SIGNAL \CNT1SEC|Add0~9_sumout\ : std_logic;
SIGNAL \CNT1SEC|Add0~10\ : std_logic;
SIGNAL \CNT1SEC|Add0~13_sumout\ : std_logic;
SIGNAL \CNT1SEC|Add0~14\ : std_logic;
SIGNAL \CNT1SEC|Add0~17_sumout\ : std_logic;
SIGNAL \CNT1SEC|Add0~18\ : std_logic;
SIGNAL \CNT1SEC|Add0~25_sumout\ : std_logic;
SIGNAL \CNT1SEC|Add0~26\ : std_logic;
SIGNAL \CNT1SEC|Add0~21_sumout\ : std_logic;
SIGNAL \CNT1SEC|Add0~22\ : std_logic;
SIGNAL \CNT1SEC|Add0~29_sumout\ : std_logic;
SIGNAL \CNT1SEC|Add0~30\ : std_logic;
SIGNAL \CNT1SEC|Add0~33_sumout\ : std_logic;
SIGNAL \CNT1SEC|Add0~34\ : std_logic;
SIGNAL \CNT1SEC|Add0~37_sumout\ : std_logic;
SIGNAL \CNT1SEC|Add0~38\ : std_logic;
SIGNAL \CNT1SEC|Add0~41_sumout\ : std_logic;
SIGNAL \CNT1SEC|Add0~42\ : std_logic;
SIGNAL \CNT1SEC|Add0~49_sumout\ : std_logic;
SIGNAL \CNT1SEC|Add0~50\ : std_logic;
SIGNAL \CNT1SEC|Add0~45_sumout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \CNT1SEC|Add0~46\ : std_logic;
SIGNAL \CNT1SEC|Add0~77_sumout\ : std_logic;
SIGNAL \CNT1SEC|Add0~78\ : std_logic;
SIGNAL \CNT1SEC|Add0~81_sumout\ : std_logic;
SIGNAL \CNT1SEC|Add0~82\ : std_logic;
SIGNAL \CNT1SEC|Add0~85_sumout\ : std_logic;
SIGNAL \CNT1SEC|Add0~86\ : std_logic;
SIGNAL \CNT1SEC|Add0~89_sumout\ : std_logic;
SIGNAL \CNT1SEC|Add0~90\ : std_logic;
SIGNAL \CNT1SEC|Add0~97_sumout\ : std_logic;
SIGNAL \CNT1SEC|Add0~98\ : std_logic;
SIGNAL \CNT1SEC|Add0~93_sumout\ : std_logic;
SIGNAL \CNT1SEC|Add0~94\ : std_logic;
SIGNAL \CNT1SEC|Add0~53_sumout\ : std_logic;
SIGNAL \CNT1SEC|Add0~54\ : std_logic;
SIGNAL \CNT1SEC|Add0~57_sumout\ : std_logic;
SIGNAL \CNT1SEC|Add0~58\ : std_logic;
SIGNAL \CNT1SEC|Add0~61_sumout\ : std_logic;
SIGNAL \CNT1SEC|Add0~62\ : std_logic;
SIGNAL \CNT1SEC|Add0~65_sumout\ : std_logic;
SIGNAL \CNT1SEC|Add0~66\ : std_logic;
SIGNAL \CNT1SEC|Add0~73_sumout\ : std_logic;
SIGNAL \CNT1SEC|Add0~74\ : std_logic;
SIGNAL \CNT1SEC|Add0~69_sumout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \CNT0|cnt[0]~4_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \CNT0|cnt[2]~2_combout\ : std_logic;
SIGNAL \CNT0|cnt[3]~1_combout\ : std_logic;
SIGNAL \LDSec0~combout\ : std_logic;
SIGNAL \CNT0|cnt[1]~0_combout\ : std_logic;
SIGNAL \CNT0|cnt[1]~3_combout\ : std_logic;
SIGNAL \SEG1|HEX0[0]~0_combout\ : std_logic;
SIGNAL \SEG1|HEX0[1]~1_combout\ : std_logic;
SIGNAL \SEG1|HEX0[2]~2_combout\ : std_logic;
SIGNAL \SEG1|HEX0[3]~3_combout\ : std_logic;
SIGNAL \SEG1|HEX0[4]~4_combout\ : std_logic;
SIGNAL \SEG1|HEX0[5]~5_combout\ : std_logic;
SIGNAL \SEG1|HEX0[6]~6_combout\ : std_logic;
SIGNAL \CNT1|cnt[0]~4_combout\ : std_logic;
SIGNAL \CNT1|cnt[2]~3_combout\ : std_logic;
SIGNAL \LDSec1~combout\ : std_logic;
SIGNAL \CNT1|cnt[0]~1_combout\ : std_logic;
SIGNAL \CNT1|cnt[1]~2_combout\ : std_logic;
SIGNAL \CNT1|cnt[3]~0_combout\ : std_logic;
SIGNAL \SEG2|HEX0[0]~0_combout\ : std_logic;
SIGNAL \SEG2|HEX0[1]~1_combout\ : std_logic;
SIGNAL \SEG2|HEX0[2]~2_combout\ : std_logic;
SIGNAL \SEG2|HEX0[3]~3_combout\ : std_logic;
SIGNAL \SEG2|HEX0[4]~4_combout\ : std_logic;
SIGNAL \SEG2|HEX0[5]~5_combout\ : std_logic;
SIGNAL \SEG2|HEX0[6]~6_combout\ : std_logic;
SIGNAL \CNT2|cnt[0]~1_combout\ : std_logic;
SIGNAL \CNT2|cnt[0]~3_combout\ : std_logic;
SIGNAL \CNT2|cnt[0]~0_combout\ : std_logic;
SIGNAL \CNT2|cnt[0]~_emulated_q\ : std_logic;
SIGNAL \CNT2|cnt[0]~2_combout\ : std_logic;
SIGNAL \CLRMin0~combout\ : std_logic;
SIGNAL \CNT2|cnt[3]~23_combout\ : std_logic;
SIGNAL \CNT2|cnt[3]~5_combout\ : std_logic;
SIGNAL \CNT2|cnt[1]~13_combout\ : std_logic;
SIGNAL \CNT2|cnt[1]~22_combout\ : std_logic;
SIGNAL \CNT2|cnt[1]~15_combout\ : std_logic;
SIGNAL \CNT2|cnt[1]~_emulated_q\ : std_logic;
SIGNAL \CNT2|cnt[1]~14_combout\ : std_logic;
SIGNAL \CNT2|Add0~0_combout\ : std_logic;
SIGNAL \CNT2|cnt[2]~9_combout\ : std_logic;
SIGNAL \CNT2|cnt[2]~11_combout\ : std_logic;
SIGNAL \CNT2|cnt[2]~_emulated_q\ : std_logic;
SIGNAL \CNT2|cnt[2]~10_combout\ : std_logic;
SIGNAL \CNT2|cnt[3]~7_combout\ : std_logic;
SIGNAL \CNT2|cnt[3]~_emulatedfeeder_combout\ : std_logic;
SIGNAL \CNT2|cnt[3]~_emulated_q\ : std_logic;
SIGNAL \CNT2|cnt[3]~6_combout\ : std_logic;
SIGNAL \SEG3|HEX0[0]~0_combout\ : std_logic;
SIGNAL \SEG3|HEX0[1]~1_combout\ : std_logic;
SIGNAL \SEG3|HEX0[2]~2_combout\ : std_logic;
SIGNAL \SEG3|HEX0[3]~3_combout\ : std_logic;
SIGNAL \SEG3|HEX0[4]~4_combout\ : std_logic;
SIGNAL \SEG3|HEX0[5]~5_combout\ : std_logic;
SIGNAL \SEG3|HEX0[6]~6_combout\ : std_logic;
SIGNAL \CNT3|cnt[0]~1_combout\ : std_logic;
SIGNAL \LDMin1~combout\ : std_logic;
SIGNAL \CNT3|cnt[0]~3_combout\ : std_logic;
SIGNAL \CNT3|cnt[0]~0_combout\ : std_logic;
SIGNAL \CNT3|cnt[0]~_emulated_q\ : std_logic;
SIGNAL \CNT3|cnt[0]~2_combout\ : std_logic;
SIGNAL \CNT3|cnt[2]~9_combout\ : std_logic;
SIGNAL \CNT3|cnt[1]~13_combout\ : std_logic;
SIGNAL \CNT3|cnt[1]~22_combout\ : std_logic;
SIGNAL \CNT3|cnt[1]~15_combout\ : std_logic;
SIGNAL \CNT3|cnt[1]~_emulated_q\ : std_logic;
SIGNAL \CNT3|cnt[1]~14_combout\ : std_logic;
SIGNAL \CNT3|cnt[2]~11_combout\ : std_logic;
SIGNAL \CNT3|cnt[2]~_emulated_q\ : std_logic;
SIGNAL \CNT3|cnt[2]~10_combout\ : std_logic;
SIGNAL \CLRMin1~combout\ : std_logic;
SIGNAL \CNT3|cnt[3]~23_combout\ : std_logic;
SIGNAL \CNT3|cnt[3]~5_combout\ : std_logic;
SIGNAL \CNT3|Add0~0_combout\ : std_logic;
SIGNAL \CNT3|cnt[3]~7_combout\ : std_logic;
SIGNAL \CNT3|cnt[3]~_emulated_q\ : std_logic;
SIGNAL \CNT3|cnt[3]~6_combout\ : std_logic;
SIGNAL \SEG4|HEX0[0]~0_combout\ : std_logic;
SIGNAL \SEG4|HEX0[1]~1_combout\ : std_logic;
SIGNAL \SEG4|HEX0[2]~2_combout\ : std_logic;
SIGNAL \SEG4|HEX0[3]~3_combout\ : std_logic;
SIGNAL \SEG4|HEX0[4]~4_combout\ : std_logic;
SIGNAL \SEG4|HEX0[5]~5_combout\ : std_logic;
SIGNAL \SEG4|HEX0[6]~6_combout\ : std_logic;
SIGNAL \CNT4|cnt[3]~23_combout\ : std_logic;
SIGNAL \LDHr0~combout\ : std_logic;
SIGNAL \CNT4|cnt[1]~13_combout\ : std_logic;
SIGNAL \CNT4|cnt[0]~1_combout\ : std_logic;
SIGNAL \CNT4|cnt[0]~3_combout\ : std_logic;
SIGNAL \CNT4|cnt[0]~0_combout\ : std_logic;
SIGNAL \CNT4|cnt[0]~_emulated_q\ : std_logic;
SIGNAL \CNT4|cnt[0]~2_combout\ : std_logic;
SIGNAL \CNT4|cnt[1]~22_combout\ : std_logic;
SIGNAL \CNT4|cnt[1]~15_combout\ : std_logic;
SIGNAL \CNT4|cnt[1]~_emulated_q\ : std_logic;
SIGNAL \CNT4|cnt[1]~14_combout\ : std_logic;
SIGNAL \CLRHr0~0_combout\ : std_logic;
SIGNAL \CNT5|cnt[3]~22_combout\ : std_logic;
SIGNAL \CNT5|cnt[1]~13_combout\ : std_logic;
SIGNAL \LDHr1~combout\ : std_logic;
SIGNAL \CNT5|cnt[0]~1_combout\ : std_logic;
SIGNAL \CNT5|cnt[0]~3_combout\ : std_logic;
SIGNAL \CNT5|cnt[0]~0_combout\ : std_logic;
SIGNAL \CNT5|cnt[0]~_emulated_q\ : std_logic;
SIGNAL \CNT5|cnt[0]~2_combout\ : std_logic;
SIGNAL \CNT5|cnt[1]~23_combout\ : std_logic;
SIGNAL \CNT5|cnt[1]~15_combout\ : std_logic;
SIGNAL \CNT5|cnt[1]~_emulated_q\ : std_logic;
SIGNAL \CNT5|cnt[1]~14_combout\ : std_logic;
SIGNAL \CLRHr0~combout\ : std_logic;
SIGNAL \CNT4|cnt[2]~9_combout\ : std_logic;
SIGNAL \CNT4|cnt[2]~11_combout\ : std_logic;
SIGNAL \CNT4|cnt[2]~_emulated_q\ : std_logic;
SIGNAL \CNT4|cnt[2]~10_combout\ : std_logic;
SIGNAL \CNT4|cnt[3]~5_combout\ : std_logic;
SIGNAL \CNT4|cnt[3]~7_combout\ : std_logic;
SIGNAL \CNT4|cnt[3]~_emulated_q\ : std_logic;
SIGNAL \CNT4|cnt[3]~6_combout\ : std_logic;
SIGNAL \SEG5|HEX0[0]~0_combout\ : std_logic;
SIGNAL \SEG5|HEX0[1]~1_combout\ : std_logic;
SIGNAL \SEG5|HEX0[2]~2_combout\ : std_logic;
SIGNAL \SEG5|HEX0[3]~3_combout\ : std_logic;
SIGNAL \SEG5|HEX0[4]~4_combout\ : std_logic;
SIGNAL \SEG5|HEX0[5]~5_combout\ : std_logic;
SIGNAL \SEG5|HEX0[6]~6_combout\ : std_logic;
SIGNAL \CNT5|cnt[2]~9_combout\ : std_logic;
SIGNAL \CNT5|cnt[2]~11_combout\ : std_logic;
SIGNAL \CNT5|cnt[2]~_emulated_q\ : std_logic;
SIGNAL \CNT5|cnt[2]~10_combout\ : std_logic;
SIGNAL \CNT5|cnt[3]~5_combout\ : std_logic;
SIGNAL \CNT5|Add0~0_combout\ : std_logic;
SIGNAL \CNT5|cnt[3]~7_combout\ : std_logic;
SIGNAL \CNT5|cnt[3]~_emulated_q\ : std_logic;
SIGNAL \CNT5|cnt[3]~6_combout\ : std_logic;
SIGNAL \SEG6|HEX0[0]~0_combout\ : std_logic;
SIGNAL \SEG6|HEX0[1]~1_combout\ : std_logic;
SIGNAL \SEG6|HEX0[2]~2_combout\ : std_logic;
SIGNAL \SEG6|HEX0[4]~3_combout\ : std_logic;
SIGNAL \SEG6|HEX0[5]~4_combout\ : std_logic;
SIGNAL \CNT0|cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CNT1|cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SEG6|HEX0\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \CNT1SEC|cnt\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \CNT5|ALT_INV_cnt[1]~13_combout\ : std_logic;
SIGNAL \CNT5|ALT_INV_cnt[3]~5_combout\ : std_logic;
SIGNAL \CNT5|ALT_INV_cnt[2]~9_combout\ : std_logic;
SIGNAL \CNT5|ALT_INV_cnt[0]~1_combout\ : std_logic;
SIGNAL \CNT4|ALT_INV_cnt[1]~13_combout\ : std_logic;
SIGNAL \CNT4|ALT_INV_cnt[3]~5_combout\ : std_logic;
SIGNAL \CNT4|ALT_INV_cnt[0]~1_combout\ : std_logic;
SIGNAL \CNT4|ALT_INV_cnt[2]~9_combout\ : std_logic;
SIGNAL \CNT3|ALT_INV_cnt[1]~13_combout\ : std_logic;
SIGNAL \CNT3|ALT_INV_cnt[3]~5_combout\ : std_logic;
SIGNAL \CNT3|ALT_INV_cnt[0]~1_combout\ : std_logic;
SIGNAL \CNT3|ALT_INV_cnt[2]~9_combout\ : std_logic;
SIGNAL \CNT2|ALT_INV_cnt[1]~13_combout\ : std_logic;
SIGNAL \CNT2|ALT_INV_cnt[3]~5_combout\ : std_logic;
SIGNAL \CNT2|ALT_INV_cnt[0]~1_combout\ : std_logic;
SIGNAL \CNT2|ALT_INV_cnt[2]~9_combout\ : std_logic;
SIGNAL \ALT_INV_CLRHr0~combout\ : std_logic;
SIGNAL \ALT_INV_CLRHr0~0_combout\ : std_logic;
SIGNAL \CNT4|ALT_INV_cnt[3]~23_combout\ : std_logic;
SIGNAL \ALT_INV_LDHr0~combout\ : std_logic;
SIGNAL \ALT_INV_CLRMin1~combout\ : std_logic;
SIGNAL \CNT3|ALT_INV_cnt[3]~23_combout\ : std_logic;
SIGNAL \ALT_INV_LDMin1~combout\ : std_logic;
SIGNAL \ALT_INV_CLRMin0~combout\ : std_logic;
SIGNAL \CNT2|ALT_INV_cnt[3]~23_combout\ : std_logic;
SIGNAL \CNT5|ALT_INV_cnt[1]~23_combout\ : std_logic;
SIGNAL \CNT5|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \CNT5|ALT_INV_cnt[3]~22_combout\ : std_logic;
SIGNAL \CNT5|ALT_INV_cnt[0]~0_combout\ : std_logic;
SIGNAL \CNT4|ALT_INV_cnt[1]~22_combout\ : std_logic;
SIGNAL \CNT4|ALT_INV_cnt[0]~0_combout\ : std_logic;
SIGNAL \CNT3|ALT_INV_cnt[1]~22_combout\ : std_logic;
SIGNAL \CNT3|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \CNT3|ALT_INV_cnt[0]~0_combout\ : std_logic;
SIGNAL \CNT2|ALT_INV_cnt[1]~22_combout\ : std_logic;
SIGNAL \CNT2|ALT_INV_cnt[3]~7_combout\ : std_logic;
SIGNAL \CNT2|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \CNT2|ALT_INV_cnt[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_LDSec1~combout\ : std_logic;
SIGNAL \ALT_INV_LDSec0~combout\ : std_logic;
SIGNAL \ALT_INV_rtl~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \CNT1SEC|ALT_INV_cnt\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \CNT5|ALT_INV_cnt[1]~14_combout\ : std_logic;
SIGNAL \CNT5|ALT_INV_cnt[1]~_emulated_q\ : std_logic;
SIGNAL \CNT5|ALT_INV_cnt[3]~6_combout\ : std_logic;
SIGNAL \CNT5|ALT_INV_cnt[3]~_emulated_q\ : std_logic;
SIGNAL \CNT5|ALT_INV_cnt[2]~10_combout\ : std_logic;
SIGNAL \CNT5|ALT_INV_cnt[2]~_emulated_q\ : std_logic;
SIGNAL \CNT5|ALT_INV_cnt[0]~2_combout\ : std_logic;
SIGNAL \CNT5|ALT_INV_cnt[0]~_emulated_q\ : std_logic;
SIGNAL \CNT4|ALT_INV_cnt[1]~14_combout\ : std_logic;
SIGNAL \CNT4|ALT_INV_cnt[1]~_emulated_q\ : std_logic;
SIGNAL \CNT4|ALT_INV_cnt[3]~6_combout\ : std_logic;
SIGNAL \CNT4|ALT_INV_cnt[3]~_emulated_q\ : std_logic;
SIGNAL \CNT4|ALT_INV_cnt[0]~2_combout\ : std_logic;
SIGNAL \CNT4|ALT_INV_cnt[0]~_emulated_q\ : std_logic;
SIGNAL \CNT4|ALT_INV_cnt[2]~10_combout\ : std_logic;
SIGNAL \CNT4|ALT_INV_cnt[2]~_emulated_q\ : std_logic;
SIGNAL \CNT3|ALT_INV_cnt[1]~14_combout\ : std_logic;
SIGNAL \CNT3|ALT_INV_cnt[1]~_emulated_q\ : std_logic;
SIGNAL \CNT3|ALT_INV_cnt[3]~6_combout\ : std_logic;
SIGNAL \CNT3|ALT_INV_cnt[3]~_emulated_q\ : std_logic;
SIGNAL \CNT3|ALT_INV_cnt[0]~2_combout\ : std_logic;
SIGNAL \CNT3|ALT_INV_cnt[0]~_emulated_q\ : std_logic;
SIGNAL \CNT3|ALT_INV_cnt[2]~10_combout\ : std_logic;
SIGNAL \CNT3|ALT_INV_cnt[2]~_emulated_q\ : std_logic;
SIGNAL \CNT2|ALT_INV_cnt[1]~14_combout\ : std_logic;
SIGNAL \CNT2|ALT_INV_cnt[1]~_emulated_q\ : std_logic;
SIGNAL \CNT2|ALT_INV_cnt[3]~6_combout\ : std_logic;
SIGNAL \CNT2|ALT_INV_cnt[3]~_emulated_q\ : std_logic;
SIGNAL \CNT2|ALT_INV_cnt[0]~2_combout\ : std_logic;
SIGNAL \CNT2|ALT_INV_cnt[0]~_emulated_q\ : std_logic;
SIGNAL \CNT2|ALT_INV_cnt[2]~10_combout\ : std_logic;
SIGNAL \CNT2|ALT_INV_cnt[2]~_emulated_q\ : std_logic;
SIGNAL \CNT1|ALT_INV_cnt[0]~1_combout\ : std_logic;
SIGNAL \CNT0|ALT_INV_cnt[1]~0_combout\ : std_logic;
SIGNAL \CNT1|ALT_INV_cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CNT0|ALT_INV_cnt\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_KEY <= KEY;
ww_SW <= SW;
ww_CLOCK_50 <= CLOCK_50;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\CNT5|ALT_INV_cnt[1]~13_combout\ <= NOT \CNT5|cnt[1]~13_combout\;
\CNT5|ALT_INV_cnt[3]~5_combout\ <= NOT \CNT5|cnt[3]~5_combout\;
\CNT5|ALT_INV_cnt[2]~9_combout\ <= NOT \CNT5|cnt[2]~9_combout\;
\CNT5|ALT_INV_cnt[0]~1_combout\ <= NOT \CNT5|cnt[0]~1_combout\;
\CNT4|ALT_INV_cnt[1]~13_combout\ <= NOT \CNT4|cnt[1]~13_combout\;
\CNT4|ALT_INV_cnt[3]~5_combout\ <= NOT \CNT4|cnt[3]~5_combout\;
\CNT4|ALT_INV_cnt[0]~1_combout\ <= NOT \CNT4|cnt[0]~1_combout\;
\CNT4|ALT_INV_cnt[2]~9_combout\ <= NOT \CNT4|cnt[2]~9_combout\;
\CNT3|ALT_INV_cnt[1]~13_combout\ <= NOT \CNT3|cnt[1]~13_combout\;
\CNT3|ALT_INV_cnt[3]~5_combout\ <= NOT \CNT3|cnt[3]~5_combout\;
\CNT3|ALT_INV_cnt[0]~1_combout\ <= NOT \CNT3|cnt[0]~1_combout\;
\CNT3|ALT_INV_cnt[2]~9_combout\ <= NOT \CNT3|cnt[2]~9_combout\;
\CNT2|ALT_INV_cnt[1]~13_combout\ <= NOT \CNT2|cnt[1]~13_combout\;
\CNT2|ALT_INV_cnt[3]~5_combout\ <= NOT \CNT2|cnt[3]~5_combout\;
\CNT2|ALT_INV_cnt[0]~1_combout\ <= NOT \CNT2|cnt[0]~1_combout\;
\CNT2|ALT_INV_cnt[2]~9_combout\ <= NOT \CNT2|cnt[2]~9_combout\;
\ALT_INV_CLRHr0~combout\ <= NOT \CLRHr0~combout\;
\ALT_INV_CLRHr0~0_combout\ <= NOT \CLRHr0~0_combout\;
\CNT4|ALT_INV_cnt[3]~23_combout\ <= NOT \CNT4|cnt[3]~23_combout\;
\ALT_INV_LDHr0~combout\ <= NOT \LDHr0~combout\;
\ALT_INV_CLRMin1~combout\ <= NOT \CLRMin1~combout\;
\CNT3|ALT_INV_cnt[3]~23_combout\ <= NOT \CNT3|cnt[3]~23_combout\;
\ALT_INV_LDMin1~combout\ <= NOT \LDMin1~combout\;
\ALT_INV_CLRMin0~combout\ <= NOT \CLRMin0~combout\;
\CNT2|ALT_INV_cnt[3]~23_combout\ <= NOT \CNT2|cnt[3]~23_combout\;
\CNT5|ALT_INV_cnt[1]~23_combout\ <= NOT \CNT5|cnt[1]~23_combout\;
\CNT5|ALT_INV_Add0~0_combout\ <= NOT \CNT5|Add0~0_combout\;
\CNT5|ALT_INV_cnt[3]~22_combout\ <= NOT \CNT5|cnt[3]~22_combout\;
\CNT5|ALT_INV_cnt[0]~0_combout\ <= NOT \CNT5|cnt[0]~0_combout\;
\CNT4|ALT_INV_cnt[1]~22_combout\ <= NOT \CNT4|cnt[1]~22_combout\;
\CNT4|ALT_INV_cnt[0]~0_combout\ <= NOT \CNT4|cnt[0]~0_combout\;
\CNT3|ALT_INV_cnt[1]~22_combout\ <= NOT \CNT3|cnt[1]~22_combout\;
\CNT3|ALT_INV_Add0~0_combout\ <= NOT \CNT3|Add0~0_combout\;
\CNT3|ALT_INV_cnt[0]~0_combout\ <= NOT \CNT3|cnt[0]~0_combout\;
\CNT2|ALT_INV_cnt[1]~22_combout\ <= NOT \CNT2|cnt[1]~22_combout\;
\CNT2|ALT_INV_cnt[3]~7_combout\ <= NOT \CNT2|cnt[3]~7_combout\;
\CNT2|ALT_INV_Add0~0_combout\ <= NOT \CNT2|Add0~0_combout\;
\CNT2|ALT_INV_cnt[0]~0_combout\ <= NOT \CNT2|cnt[0]~0_combout\;
\ALT_INV_LDSec1~combout\ <= NOT \LDSec1~combout\;
\ALT_INV_LDSec0~combout\ <= NOT \LDSec0~combout\;
\ALT_INV_rtl~0_combout\ <= NOT \rtl~0_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\CNT1SEC|ALT_INV_cnt\(18) <= NOT \CNT1SEC|cnt\(18);
\CNT1SEC|ALT_INV_cnt\(19) <= NOT \CNT1SEC|cnt\(19);
\CNT1SEC|ALT_INV_cnt\(17) <= NOT \CNT1SEC|cnt\(17);
\CNT1SEC|ALT_INV_cnt\(16) <= NOT \CNT1SEC|cnt\(16);
\CNT1SEC|ALT_INV_cnt\(15) <= NOT \CNT1SEC|cnt\(15);
\CNT1SEC|ALT_INV_cnt\(14) <= NOT \CNT1SEC|cnt\(14);
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\CNT1SEC|ALT_INV_cnt\(24) <= NOT \CNT1SEC|cnt\(24);
\CNT1SEC|ALT_INV_cnt\(25) <= NOT \CNT1SEC|cnt\(25);
\CNT1SEC|ALT_INV_cnt\(23) <= NOT \CNT1SEC|cnt\(23);
\CNT1SEC|ALT_INV_cnt\(22) <= NOT \CNT1SEC|cnt\(22);
\CNT1SEC|ALT_INV_cnt\(21) <= NOT \CNT1SEC|cnt\(21);
\CNT1SEC|ALT_INV_cnt\(20) <= NOT \CNT1SEC|cnt\(20);
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\CNT1SEC|ALT_INV_cnt\(12) <= NOT \CNT1SEC|cnt\(12);
\CNT1SEC|ALT_INV_cnt\(13) <= NOT \CNT1SEC|cnt\(13);
\CNT1SEC|ALT_INV_cnt\(11) <= NOT \CNT1SEC|cnt\(11);
\CNT1SEC|ALT_INV_cnt\(10) <= NOT \CNT1SEC|cnt\(10);
\CNT1SEC|ALT_INV_cnt\(9) <= NOT \CNT1SEC|cnt\(9);
\CNT1SEC|ALT_INV_cnt\(8) <= NOT \CNT1SEC|cnt\(8);
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\CNT1SEC|ALT_INV_cnt\(6) <= NOT \CNT1SEC|cnt\(6);
\CNT1SEC|ALT_INV_cnt\(7) <= NOT \CNT1SEC|cnt\(7);
\CNT1SEC|ALT_INV_cnt\(5) <= NOT \CNT1SEC|cnt\(5);
\CNT1SEC|ALT_INV_cnt\(4) <= NOT \CNT1SEC|cnt\(4);
\CNT1SEC|ALT_INV_cnt\(3) <= NOT \CNT1SEC|cnt\(3);
\CNT1SEC|ALT_INV_cnt\(2) <= NOT \CNT1SEC|cnt\(2);
\CNT1SEC|ALT_INV_cnt\(0) <= NOT \CNT1SEC|cnt\(0);
\CNT1SEC|ALT_INV_cnt\(1) <= NOT \CNT1SEC|cnt\(1);
\CNT5|ALT_INV_cnt[1]~14_combout\ <= NOT \CNT5|cnt[1]~14_combout\;
\CNT5|ALT_INV_cnt[1]~_emulated_q\ <= NOT \CNT5|cnt[1]~_emulated_q\;
\CNT5|ALT_INV_cnt[3]~6_combout\ <= NOT \CNT5|cnt[3]~6_combout\;
\CNT5|ALT_INV_cnt[3]~_emulated_q\ <= NOT \CNT5|cnt[3]~_emulated_q\;
\CNT5|ALT_INV_cnt[2]~10_combout\ <= NOT \CNT5|cnt[2]~10_combout\;
\CNT5|ALT_INV_cnt[2]~_emulated_q\ <= NOT \CNT5|cnt[2]~_emulated_q\;
\CNT5|ALT_INV_cnt[0]~2_combout\ <= NOT \CNT5|cnt[0]~2_combout\;
\CNT5|ALT_INV_cnt[0]~_emulated_q\ <= NOT \CNT5|cnt[0]~_emulated_q\;
\CNT4|ALT_INV_cnt[1]~14_combout\ <= NOT \CNT4|cnt[1]~14_combout\;
\CNT4|ALT_INV_cnt[1]~_emulated_q\ <= NOT \CNT4|cnt[1]~_emulated_q\;
\CNT4|ALT_INV_cnt[3]~6_combout\ <= NOT \CNT4|cnt[3]~6_combout\;
\CNT4|ALT_INV_cnt[3]~_emulated_q\ <= NOT \CNT4|cnt[3]~_emulated_q\;
\CNT4|ALT_INV_cnt[0]~2_combout\ <= NOT \CNT4|cnt[0]~2_combout\;
\CNT4|ALT_INV_cnt[0]~_emulated_q\ <= NOT \CNT4|cnt[0]~_emulated_q\;
\CNT4|ALT_INV_cnt[2]~10_combout\ <= NOT \CNT4|cnt[2]~10_combout\;
\CNT4|ALT_INV_cnt[2]~_emulated_q\ <= NOT \CNT4|cnt[2]~_emulated_q\;
\CNT3|ALT_INV_cnt[1]~14_combout\ <= NOT \CNT3|cnt[1]~14_combout\;
\CNT3|ALT_INV_cnt[1]~_emulated_q\ <= NOT \CNT3|cnt[1]~_emulated_q\;
\CNT3|ALT_INV_cnt[3]~6_combout\ <= NOT \CNT3|cnt[3]~6_combout\;
\CNT3|ALT_INV_cnt[3]~_emulated_q\ <= NOT \CNT3|cnt[3]~_emulated_q\;
\CNT3|ALT_INV_cnt[0]~2_combout\ <= NOT \CNT3|cnt[0]~2_combout\;
\CNT3|ALT_INV_cnt[0]~_emulated_q\ <= NOT \CNT3|cnt[0]~_emulated_q\;
\CNT3|ALT_INV_cnt[2]~10_combout\ <= NOT \CNT3|cnt[2]~10_combout\;
\CNT3|ALT_INV_cnt[2]~_emulated_q\ <= NOT \CNT3|cnt[2]~_emulated_q\;
\CNT2|ALT_INV_cnt[1]~14_combout\ <= NOT \CNT2|cnt[1]~14_combout\;
\CNT2|ALT_INV_cnt[1]~_emulated_q\ <= NOT \CNT2|cnt[1]~_emulated_q\;
\CNT2|ALT_INV_cnt[3]~6_combout\ <= NOT \CNT2|cnt[3]~6_combout\;
\CNT2|ALT_INV_cnt[3]~_emulated_q\ <= NOT \CNT2|cnt[3]~_emulated_q\;
\CNT2|ALT_INV_cnt[0]~2_combout\ <= NOT \CNT2|cnt[0]~2_combout\;
\CNT2|ALT_INV_cnt[0]~_emulated_q\ <= NOT \CNT2|cnt[0]~_emulated_q\;
\CNT2|ALT_INV_cnt[2]~10_combout\ <= NOT \CNT2|cnt[2]~10_combout\;
\CNT2|ALT_INV_cnt[2]~_emulated_q\ <= NOT \CNT2|cnt[2]~_emulated_q\;
\CNT1|ALT_INV_cnt[0]~1_combout\ <= NOT \CNT1|cnt[0]~1_combout\;
\CNT0|ALT_INV_cnt[1]~0_combout\ <= NOT \CNT0|cnt[1]~0_combout\;
\CNT1|ALT_INV_cnt\(0) <= NOT \CNT1|cnt\(0);
\CNT1|ALT_INV_cnt\(2) <= NOT \CNT1|cnt\(2);
\CNT1|ALT_INV_cnt\(1) <= NOT \CNT1|cnt\(1);
\CNT1|ALT_INV_cnt\(3) <= NOT \CNT1|cnt\(3);
\CNT0|ALT_INV_cnt\(1) <= NOT \CNT0|cnt\(1);
\CNT0|ALT_INV_cnt\(2) <= NOT \CNT0|cnt\(2);
\CNT0|ALT_INV_cnt\(3) <= NOT \CNT0|cnt\(3);
\CNT0|ALT_INV_cnt\(0) <= NOT \CNT0|cnt\(0);

-- Location: IOOBUF_X60_Y0_N53
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[0]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X58_Y0_N42
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[1]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X54_Y0_N36
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[2]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X66_Y0_N59
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[3]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X89_Y8_N5
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[4]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X68_Y81_N19
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[5]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X52_Y0_N53
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[6]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X68_Y81_N36
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[7]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X66_Y0_N42
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG1|HEX0[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X60_Y0_N19
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG1|HEX0[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X64_Y0_N2
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG1|HEX0[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X66_Y0_N93
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG1|HEX0[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X64_Y0_N53
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG1|HEX0[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X60_Y0_N36
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG1|HEX0[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X62_Y0_N2
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG1|HEX0[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X62_Y0_N53
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG2|HEX0[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X54_Y0_N19
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG2|HEX0[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X62_Y0_N36
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG2|HEX0[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X56_Y0_N36
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG2|HEX0[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X54_Y0_N2
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG2|HEX0[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X62_Y0_N19
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG2|HEX0[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X56_Y0_N2
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG2|HEX0[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X56_Y0_N19
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG3|HEX0[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X64_Y81_N36
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG3|HEX0[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X58_Y0_N59
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG3|HEX0[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X64_Y0_N19
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG3|HEX0[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X56_Y0_N53
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG3|HEX0[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X58_Y0_N76
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG3|HEX0[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X89_Y4_N62
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG3|HEX0[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X89_Y9_N39
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG4|HEX0[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X72_Y0_N19
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG4|HEX0[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X70_Y0_N19
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG4|HEX0[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X89_Y6_N22
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG4|HEX0[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X72_Y0_N36
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG4|HEX0[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X89_Y6_N56
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG4|HEX0[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X89_Y9_N56
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG4|HEX0[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X68_Y0_N2
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG5|HEX0[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X68_Y0_N36
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG5|HEX0[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X72_Y0_N2
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG5|HEX0[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X64_Y0_N36
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG5|HEX0[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X70_Y0_N36
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG5|HEX0[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X70_Y0_N53
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG5|HEX0[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X68_Y0_N19
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG5|HEX0[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X89_Y4_N45
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG6|HEX0[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X89_Y8_N22
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG6|HEX0[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X70_Y0_N2
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG6|HEX0[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X72_Y0_N53
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG6|HEX0\(3),
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X89_Y6_N5
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG6|HEX0[4]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X89_Y6_N39
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG6|HEX0[5]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X89_Y8_N39
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG6|HEX0\(6),
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOIBUF_X60_Y0_N1
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X58_Y0_N92
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X54_Y0_N52
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X66_Y0_N75
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X89_Y8_N55
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X68_Y81_N1
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X68_Y81_N52
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X89_Y35_N61
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G10
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: LABCELL_X66_Y5_N48
\CNT1SEC|cnt[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT1SEC|cnt[0]~0_combout\ = ( !\CNT1SEC|cnt\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CNT1SEC|ALT_INV_cnt\(0),
	combout => \CNT1SEC|cnt[0]~0_combout\);

-- Location: FF_X67_Y5_N59
\CNT1SEC|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CNT1SEC|cnt[0]~0_combout\,
	clrn => \ALT_INV_rtl~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT1SEC|cnt\(0));

-- Location: LABCELL_X67_Y6_N30
\CNT1SEC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT1SEC|Add0~1_sumout\ = SUM(( \CNT1SEC|cnt\(0) ) + ( \CNT1SEC|cnt\(1) ) + ( !VCC ))
-- \CNT1SEC|Add0~2\ = CARRY(( \CNT1SEC|cnt\(0) ) + ( \CNT1SEC|cnt\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CNT1SEC|ALT_INV_cnt\(1),
	datad => \CNT1SEC|ALT_INV_cnt\(0),
	cin => GND,
	sumout => \CNT1SEC|Add0~1_sumout\,
	cout => \CNT1SEC|Add0~2\);

-- Location: FF_X67_Y6_N32
\CNT1SEC|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CNT1SEC|Add0~1_sumout\,
	clrn => \ALT_INV_rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT1SEC|cnt\(1));

-- Location: LABCELL_X67_Y6_N33
\CNT1SEC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT1SEC|Add0~5_sumout\ = SUM(( \CNT1SEC|cnt\(2) ) + ( GND ) + ( \CNT1SEC|Add0~2\ ))
-- \CNT1SEC|Add0~6\ = CARRY(( \CNT1SEC|cnt\(2) ) + ( GND ) + ( \CNT1SEC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT1SEC|ALT_INV_cnt\(2),
	cin => \CNT1SEC|Add0~2\,
	sumout => \CNT1SEC|Add0~5_sumout\,
	cout => \CNT1SEC|Add0~6\);

-- Location: FF_X67_Y6_N35
\CNT1SEC|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CNT1SEC|Add0~5_sumout\,
	clrn => \ALT_INV_rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT1SEC|cnt\(2));

-- Location: LABCELL_X67_Y6_N36
\CNT1SEC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT1SEC|Add0~9_sumout\ = SUM(( \CNT1SEC|cnt\(3) ) + ( GND ) + ( \CNT1SEC|Add0~6\ ))
-- \CNT1SEC|Add0~10\ = CARRY(( \CNT1SEC|cnt\(3) ) + ( GND ) + ( \CNT1SEC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CNT1SEC|ALT_INV_cnt\(3),
	cin => \CNT1SEC|Add0~6\,
	sumout => \CNT1SEC|Add0~9_sumout\,
	cout => \CNT1SEC|Add0~10\);

-- Location: FF_X67_Y6_N38
\CNT1SEC|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CNT1SEC|Add0~9_sumout\,
	clrn => \ALT_INV_rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT1SEC|cnt\(3));

-- Location: LABCELL_X67_Y6_N39
\CNT1SEC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT1SEC|Add0~13_sumout\ = SUM(( \CNT1SEC|cnt\(4) ) + ( GND ) + ( \CNT1SEC|Add0~10\ ))
-- \CNT1SEC|Add0~14\ = CARRY(( \CNT1SEC|cnt\(4) ) + ( GND ) + ( \CNT1SEC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CNT1SEC|ALT_INV_cnt\(4),
	cin => \CNT1SEC|Add0~10\,
	sumout => \CNT1SEC|Add0~13_sumout\,
	cout => \CNT1SEC|Add0~14\);

-- Location: FF_X67_Y6_N41
\CNT1SEC|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CNT1SEC|Add0~13_sumout\,
	clrn => \ALT_INV_rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT1SEC|cnt\(4));

-- Location: LABCELL_X67_Y6_N42
\CNT1SEC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT1SEC|Add0~17_sumout\ = SUM(( \CNT1SEC|cnt\(5) ) + ( GND ) + ( \CNT1SEC|Add0~14\ ))
-- \CNT1SEC|Add0~18\ = CARRY(( \CNT1SEC|cnt\(5) ) + ( GND ) + ( \CNT1SEC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CNT1SEC|ALT_INV_cnt\(5),
	cin => \CNT1SEC|Add0~14\,
	sumout => \CNT1SEC|Add0~17_sumout\,
	cout => \CNT1SEC|Add0~18\);

-- Location: FF_X67_Y6_N44
\CNT1SEC|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CNT1SEC|Add0~17_sumout\,
	clrn => \ALT_INV_rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT1SEC|cnt\(5));

-- Location: LABCELL_X67_Y6_N45
\CNT1SEC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT1SEC|Add0~25_sumout\ = SUM(( \CNT1SEC|cnt\(6) ) + ( GND ) + ( \CNT1SEC|Add0~18\ ))
-- \CNT1SEC|Add0~26\ = CARRY(( \CNT1SEC|cnt\(6) ) + ( GND ) + ( \CNT1SEC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CNT1SEC|ALT_INV_cnt\(6),
	cin => \CNT1SEC|Add0~18\,
	sumout => \CNT1SEC|Add0~25_sumout\,
	cout => \CNT1SEC|Add0~26\);

-- Location: FF_X67_Y6_N47
\CNT1SEC|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CNT1SEC|Add0~25_sumout\,
	clrn => \ALT_INV_rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT1SEC|cnt\(6));

-- Location: LABCELL_X67_Y6_N48
\CNT1SEC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT1SEC|Add0~21_sumout\ = SUM(( \CNT1SEC|cnt\(7) ) + ( GND ) + ( \CNT1SEC|Add0~26\ ))
-- \CNT1SEC|Add0~22\ = CARRY(( \CNT1SEC|cnt\(7) ) + ( GND ) + ( \CNT1SEC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CNT1SEC|ALT_INV_cnt\(7),
	cin => \CNT1SEC|Add0~26\,
	sumout => \CNT1SEC|Add0~21_sumout\,
	cout => \CNT1SEC|Add0~22\);

-- Location: FF_X67_Y6_N50
\CNT1SEC|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CNT1SEC|Add0~21_sumout\,
	clrn => \ALT_INV_rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT1SEC|cnt\(7));

-- Location: LABCELL_X67_Y6_N51
\CNT1SEC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT1SEC|Add0~29_sumout\ = SUM(( \CNT1SEC|cnt\(8) ) + ( GND ) + ( \CNT1SEC|Add0~22\ ))
-- \CNT1SEC|Add0~30\ = CARRY(( \CNT1SEC|cnt\(8) ) + ( GND ) + ( \CNT1SEC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CNT1SEC|ALT_INV_cnt\(8),
	cin => \CNT1SEC|Add0~22\,
	sumout => \CNT1SEC|Add0~29_sumout\,
	cout => \CNT1SEC|Add0~30\);

-- Location: FF_X67_Y5_N52
\CNT1SEC|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CNT1SEC|Add0~29_sumout\,
	clrn => \ALT_INV_rtl~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT1SEC|cnt\(8));

-- Location: LABCELL_X67_Y6_N54
\CNT1SEC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT1SEC|Add0~33_sumout\ = SUM(( \CNT1SEC|cnt\(9) ) + ( GND ) + ( \CNT1SEC|Add0~30\ ))
-- \CNT1SEC|Add0~34\ = CARRY(( \CNT1SEC|cnt\(9) ) + ( GND ) + ( \CNT1SEC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CNT1SEC|ALT_INV_cnt\(9),
	cin => \CNT1SEC|Add0~30\,
	sumout => \CNT1SEC|Add0~33_sumout\,
	cout => \CNT1SEC|Add0~34\);

-- Location: FF_X67_Y6_N56
\CNT1SEC|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CNT1SEC|Add0~33_sumout\,
	clrn => \ALT_INV_rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT1SEC|cnt\(9));

-- Location: LABCELL_X67_Y6_N57
\CNT1SEC|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT1SEC|Add0~37_sumout\ = SUM(( \CNT1SEC|cnt\(10) ) + ( GND ) + ( \CNT1SEC|Add0~34\ ))
-- \CNT1SEC|Add0~38\ = CARRY(( \CNT1SEC|cnt\(10) ) + ( GND ) + ( \CNT1SEC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CNT1SEC|ALT_INV_cnt\(10),
	cin => \CNT1SEC|Add0~34\,
	sumout => \CNT1SEC|Add0~37_sumout\,
	cout => \CNT1SEC|Add0~38\);

-- Location: FF_X67_Y5_N50
\CNT1SEC|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CNT1SEC|Add0~37_sumout\,
	clrn => \ALT_INV_rtl~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT1SEC|cnt\(10));

-- Location: LABCELL_X67_Y5_N0
\CNT1SEC|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT1SEC|Add0~41_sumout\ = SUM(( \CNT1SEC|cnt\(11) ) + ( GND ) + ( \CNT1SEC|Add0~38\ ))
-- \CNT1SEC|Add0~42\ = CARRY(( \CNT1SEC|cnt\(11) ) + ( GND ) + ( \CNT1SEC|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CNT1SEC|ALT_INV_cnt\(11),
	cin => \CNT1SEC|Add0~38\,
	sumout => \CNT1SEC|Add0~41_sumout\,
	cout => \CNT1SEC|Add0~42\);

-- Location: FF_X67_Y5_N2
\CNT1SEC|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CNT1SEC|Add0~41_sumout\,
	clrn => \ALT_INV_rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT1SEC|cnt\(11));

-- Location: LABCELL_X67_Y5_N3
\CNT1SEC|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT1SEC|Add0~49_sumout\ = SUM(( \CNT1SEC|cnt\(12) ) + ( GND ) + ( \CNT1SEC|Add0~42\ ))
-- \CNT1SEC|Add0~50\ = CARRY(( \CNT1SEC|cnt\(12) ) + ( GND ) + ( \CNT1SEC|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CNT1SEC|ALT_INV_cnt\(12),
	cin => \CNT1SEC|Add0~42\,
	sumout => \CNT1SEC|Add0~49_sumout\,
	cout => \CNT1SEC|Add0~50\);

-- Location: FF_X67_Y5_N5
\CNT1SEC|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CNT1SEC|Add0~49_sumout\,
	clrn => \ALT_INV_rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT1SEC|cnt\(12));

-- Location: LABCELL_X67_Y5_N6
\CNT1SEC|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT1SEC|Add0~45_sumout\ = SUM(( \CNT1SEC|cnt\(13) ) + ( GND ) + ( \CNT1SEC|Add0~50\ ))
-- \CNT1SEC|Add0~46\ = CARRY(( \CNT1SEC|cnt\(13) ) + ( GND ) + ( \CNT1SEC|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CNT1SEC|ALT_INV_cnt\(13),
	cin => \CNT1SEC|Add0~50\,
	sumout => \CNT1SEC|Add0~45_sumout\,
	cout => \CNT1SEC|Add0~46\);

-- Location: FF_X67_Y5_N8
\CNT1SEC|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CNT1SEC|Add0~45_sumout\,
	clrn => \ALT_INV_rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT1SEC|cnt\(13));

-- Location: LABCELL_X67_Y5_N51
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !\CNT1SEC|cnt\(8) & ( !\CNT1SEC|cnt\(9) & ( (!\CNT1SEC|cnt\(12) & (!\CNT1SEC|cnt\(13) & (!\CNT1SEC|cnt\(10) & !\CNT1SEC|cnt\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT1SEC|ALT_INV_cnt\(12),
	datab => \CNT1SEC|ALT_INV_cnt\(13),
	datac => \CNT1SEC|ALT_INV_cnt\(10),
	datad => \CNT1SEC|ALT_INV_cnt\(11),
	datae => \CNT1SEC|ALT_INV_cnt\(8),
	dataf => \CNT1SEC|ALT_INV_cnt\(9),
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X67_Y5_N9
\CNT1SEC|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT1SEC|Add0~77_sumout\ = SUM(( \CNT1SEC|cnt\(14) ) + ( GND ) + ( \CNT1SEC|Add0~46\ ))
-- \CNT1SEC|Add0~78\ = CARRY(( \CNT1SEC|cnt\(14) ) + ( GND ) + ( \CNT1SEC|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CNT1SEC|ALT_INV_cnt\(14),
	cin => \CNT1SEC|Add0~46\,
	sumout => \CNT1SEC|Add0~77_sumout\,
	cout => \CNT1SEC|Add0~78\);

-- Location: FF_X67_Y5_N11
\CNT1SEC|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CNT1SEC|Add0~77_sumout\,
	clrn => \ALT_INV_rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT1SEC|cnt\(14));

-- Location: LABCELL_X67_Y5_N12
\CNT1SEC|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT1SEC|Add0~81_sumout\ = SUM(( \CNT1SEC|cnt\(15) ) + ( GND ) + ( \CNT1SEC|Add0~78\ ))
-- \CNT1SEC|Add0~82\ = CARRY(( \CNT1SEC|cnt\(15) ) + ( GND ) + ( \CNT1SEC|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CNT1SEC|ALT_INV_cnt\(15),
	cin => \CNT1SEC|Add0~78\,
	sumout => \CNT1SEC|Add0~81_sumout\,
	cout => \CNT1SEC|Add0~82\);

-- Location: FF_X67_Y5_N14
\CNT1SEC|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CNT1SEC|Add0~81_sumout\,
	clrn => \ALT_INV_rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT1SEC|cnt\(15));

-- Location: LABCELL_X67_Y5_N15
\CNT1SEC|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT1SEC|Add0~85_sumout\ = SUM(( \CNT1SEC|cnt\(16) ) + ( GND ) + ( \CNT1SEC|Add0~82\ ))
-- \CNT1SEC|Add0~86\ = CARRY(( \CNT1SEC|cnt\(16) ) + ( GND ) + ( \CNT1SEC|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CNT1SEC|ALT_INV_cnt\(16),
	cin => \CNT1SEC|Add0~82\,
	sumout => \CNT1SEC|Add0~85_sumout\,
	cout => \CNT1SEC|Add0~86\);

-- Location: FF_X67_Y5_N17
\CNT1SEC|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CNT1SEC|Add0~85_sumout\,
	clrn => \ALT_INV_rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT1SEC|cnt\(16));

-- Location: LABCELL_X67_Y5_N18
\CNT1SEC|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT1SEC|Add0~89_sumout\ = SUM(( \CNT1SEC|cnt\(17) ) + ( GND ) + ( \CNT1SEC|Add0~86\ ))
-- \CNT1SEC|Add0~90\ = CARRY(( \CNT1SEC|cnt\(17) ) + ( GND ) + ( \CNT1SEC|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CNT1SEC|ALT_INV_cnt\(17),
	cin => \CNT1SEC|Add0~86\,
	sumout => \CNT1SEC|Add0~89_sumout\,
	cout => \CNT1SEC|Add0~90\);

-- Location: FF_X67_Y5_N20
\CNT1SEC|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CNT1SEC|Add0~89_sumout\,
	clrn => \ALT_INV_rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT1SEC|cnt\(17));

-- Location: LABCELL_X67_Y5_N21
\CNT1SEC|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT1SEC|Add0~97_sumout\ = SUM(( \CNT1SEC|cnt\(18) ) + ( GND ) + ( \CNT1SEC|Add0~90\ ))
-- \CNT1SEC|Add0~98\ = CARRY(( \CNT1SEC|cnt\(18) ) + ( GND ) + ( \CNT1SEC|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CNT1SEC|ALT_INV_cnt\(18),
	cin => \CNT1SEC|Add0~90\,
	sumout => \CNT1SEC|Add0~97_sumout\,
	cout => \CNT1SEC|Add0~98\);

-- Location: FF_X67_Y5_N23
\CNT1SEC|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CNT1SEC|Add0~97_sumout\,
	clrn => \ALT_INV_rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT1SEC|cnt\(18));

-- Location: LABCELL_X67_Y5_N24
\CNT1SEC|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT1SEC|Add0~93_sumout\ = SUM(( \CNT1SEC|cnt\(19) ) + ( GND ) + ( \CNT1SEC|Add0~98\ ))
-- \CNT1SEC|Add0~94\ = CARRY(( \CNT1SEC|cnt\(19) ) + ( GND ) + ( \CNT1SEC|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CNT1SEC|ALT_INV_cnt\(19),
	cin => \CNT1SEC|Add0~98\,
	sumout => \CNT1SEC|Add0~93_sumout\,
	cout => \CNT1SEC|Add0~94\);

-- Location: FF_X67_Y5_N26
\CNT1SEC|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CNT1SEC|Add0~93_sumout\,
	clrn => \ALT_INV_rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT1SEC|cnt\(19));

-- Location: LABCELL_X67_Y5_N27
\CNT1SEC|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT1SEC|Add0~53_sumout\ = SUM(( \CNT1SEC|cnt\(20) ) + ( GND ) + ( \CNT1SEC|Add0~94\ ))
-- \CNT1SEC|Add0~54\ = CARRY(( \CNT1SEC|cnt\(20) ) + ( GND ) + ( \CNT1SEC|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CNT1SEC|ALT_INV_cnt\(20),
	cin => \CNT1SEC|Add0~94\,
	sumout => \CNT1SEC|Add0~53_sumout\,
	cout => \CNT1SEC|Add0~54\);

-- Location: FF_X67_Y5_N29
\CNT1SEC|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CNT1SEC|Add0~53_sumout\,
	clrn => \ALT_INV_rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT1SEC|cnt\(20));

-- Location: LABCELL_X67_Y5_N30
\CNT1SEC|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT1SEC|Add0~57_sumout\ = SUM(( \CNT1SEC|cnt\(21) ) + ( GND ) + ( \CNT1SEC|Add0~54\ ))
-- \CNT1SEC|Add0~58\ = CARRY(( \CNT1SEC|cnt\(21) ) + ( GND ) + ( \CNT1SEC|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CNT1SEC|ALT_INV_cnt\(21),
	cin => \CNT1SEC|Add0~54\,
	sumout => \CNT1SEC|Add0~57_sumout\,
	cout => \CNT1SEC|Add0~58\);

-- Location: FF_X67_Y5_N32
\CNT1SEC|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CNT1SEC|Add0~57_sumout\,
	clrn => \ALT_INV_rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT1SEC|cnt\(21));

-- Location: LABCELL_X67_Y5_N33
\CNT1SEC|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT1SEC|Add0~61_sumout\ = SUM(( \CNT1SEC|cnt\(22) ) + ( GND ) + ( \CNT1SEC|Add0~58\ ))
-- \CNT1SEC|Add0~62\ = CARRY(( \CNT1SEC|cnt\(22) ) + ( GND ) + ( \CNT1SEC|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT1SEC|ALT_INV_cnt\(22),
	cin => \CNT1SEC|Add0~58\,
	sumout => \CNT1SEC|Add0~61_sumout\,
	cout => \CNT1SEC|Add0~62\);

-- Location: FF_X67_Y5_N35
\CNT1SEC|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CNT1SEC|Add0~61_sumout\,
	clrn => \ALT_INV_rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT1SEC|cnt\(22));

-- Location: LABCELL_X67_Y5_N36
\CNT1SEC|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT1SEC|Add0~65_sumout\ = SUM(( \CNT1SEC|cnt\(23) ) + ( GND ) + ( \CNT1SEC|Add0~62\ ))
-- \CNT1SEC|Add0~66\ = CARRY(( \CNT1SEC|cnt\(23) ) + ( GND ) + ( \CNT1SEC|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CNT1SEC|ALT_INV_cnt\(23),
	cin => \CNT1SEC|Add0~62\,
	sumout => \CNT1SEC|Add0~65_sumout\,
	cout => \CNT1SEC|Add0~66\);

-- Location: FF_X67_Y5_N38
\CNT1SEC|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CNT1SEC|Add0~65_sumout\,
	clrn => \ALT_INV_rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT1SEC|cnt\(23));

-- Location: LABCELL_X67_Y5_N39
\CNT1SEC|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT1SEC|Add0~73_sumout\ = SUM(( \CNT1SEC|cnt\(24) ) + ( GND ) + ( \CNT1SEC|Add0~66\ ))
-- \CNT1SEC|Add0~74\ = CARRY(( \CNT1SEC|cnt\(24) ) + ( GND ) + ( \CNT1SEC|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CNT1SEC|ALT_INV_cnt\(24),
	cin => \CNT1SEC|Add0~66\,
	sumout => \CNT1SEC|Add0~73_sumout\,
	cout => \CNT1SEC|Add0~74\);

-- Location: FF_X67_Y5_N41
\CNT1SEC|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CNT1SEC|Add0~73_sumout\,
	clrn => \ALT_INV_rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT1SEC|cnt\(24));

-- Location: LABCELL_X67_Y5_N42
\CNT1SEC|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT1SEC|Add0~69_sumout\ = SUM(( \CNT1SEC|cnt\(25) ) + ( GND ) + ( \CNT1SEC|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CNT1SEC|ALT_INV_cnt\(25),
	cin => \CNT1SEC|Add0~74\,
	sumout => \CNT1SEC|Add0~69_sumout\);

-- Location: FF_X67_Y5_N44
\CNT1SEC|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CNT1SEC|Add0~69_sumout\,
	clrn => \ALT_INV_rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT1SEC|cnt\(25));

-- Location: LABCELL_X68_Y5_N54
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !\CNT1SEC|cnt\(23) & ( !\CNT1SEC|cnt\(25) & ( (!\CNT1SEC|cnt\(22) & (!\CNT1SEC|cnt\(24) & (!\CNT1SEC|cnt\(21) & !\CNT1SEC|cnt\(20)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT1SEC|ALT_INV_cnt\(22),
	datab => \CNT1SEC|ALT_INV_cnt\(24),
	datac => \CNT1SEC|ALT_INV_cnt\(21),
	datad => \CNT1SEC|ALT_INV_cnt\(20),
	datae => \CNT1SEC|ALT_INV_cnt\(23),
	dataf => \CNT1SEC|ALT_INV_cnt\(25),
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X66_Y5_N57
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !\CNT1SEC|cnt\(18) & ( !\CNT1SEC|cnt\(19) & ( (!\CNT1SEC|cnt\(14) & (!\CNT1SEC|cnt\(17) & (!\CNT1SEC|cnt\(15) & !\CNT1SEC|cnt\(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT1SEC|ALT_INV_cnt\(14),
	datab => \CNT1SEC|ALT_INV_cnt\(17),
	datac => \CNT1SEC|ALT_INV_cnt\(15),
	datad => \CNT1SEC|ALT_INV_cnt\(16),
	datae => \CNT1SEC|ALT_INV_cnt\(18),
	dataf => \CNT1SEC|ALT_INV_cnt\(19),
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X67_Y6_N6
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\CNT1SEC|cnt\(6) & ( !\CNT1SEC|cnt\(3) & ( (!\CNT1SEC|cnt\(2) & (!\CNT1SEC|cnt\(4) & (!\CNT1SEC|cnt\(7) & !\CNT1SEC|cnt\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT1SEC|ALT_INV_cnt\(2),
	datab => \CNT1SEC|ALT_INV_cnt\(4),
	datac => \CNT1SEC|ALT_INV_cnt\(7),
	datad => \CNT1SEC|ALT_INV_cnt\(5),
	datae => \CNT1SEC|ALT_INV_cnt\(6),
	dataf => \CNT1SEC|ALT_INV_cnt\(3),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X67_Y5_N54
\rtl~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = LCELL(( \Equal0~3_combout\ & ( \Equal0~0_combout\ & ( (!\CNT1SEC|cnt\(1) & (\CNT1SEC|cnt\(0) & (\Equal0~1_combout\ & \Equal0~2_combout\))) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT1SEC|ALT_INV_cnt\(1),
	datab => \CNT1SEC|ALT_INV_cnt\(0),
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_Equal0~2_combout\,
	datae => \ALT_INV_Equal0~3_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \rtl~0_combout\);

-- Location: LABCELL_X66_Y4_N9
\CNT0|cnt[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT0|cnt[0]~4_combout\ = ( !\CNT0|cnt\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CNT0|ALT_INV_cnt\(0),
	combout => \CNT0|cnt[0]~4_combout\);

-- Location: IOIBUF_X89_Y4_N95
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X89_Y4_N78
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X68_Y0_N52
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LABCELL_X66_Y4_N39
\CNT0|cnt[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT0|cnt[2]~2_combout\ = ( \CNT0|cnt\(2) & ( (!\CNT0|cnt\(1)) # (!\CNT0|cnt\(0)) ) ) # ( !\CNT0|cnt\(2) & ( (\CNT0|cnt\(1) & \CNT0|cnt\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT0|ALT_INV_cnt\(1),
	datab => \CNT0|ALT_INV_cnt\(0),
	dataf => \CNT0|ALT_INV_cnt\(2),
	combout => \CNT0|cnt[2]~2_combout\);

-- Location: FF_X66_Y4_N20
\CNT0|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	asdata => \CNT0|cnt[2]~2_combout\,
	clrn => \CNT0|ALT_INV_cnt[1]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT0|cnt\(2));

-- Location: LABCELL_X66_Y4_N30
\CNT0|cnt[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT0|cnt[3]~1_combout\ = ( \CNT0|cnt\(1) & ( !\CNT0|cnt\(3) $ (((!\CNT0|cnt\(0)) # (!\CNT0|cnt\(2)))) ) ) # ( !\CNT0|cnt\(1) & ( \CNT0|cnt\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110110001101100011011000110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT0|ALT_INV_cnt\(0),
	datab => \CNT0|ALT_INV_cnt\(3),
	datac => \CNT0|ALT_INV_cnt\(2),
	dataf => \CNT0|ALT_INV_cnt\(1),
	combout => \CNT0|cnt[3]~1_combout\);

-- Location: FF_X66_Y4_N11
\CNT0|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	asdata => \CNT0|cnt[3]~1_combout\,
	clrn => \CNT0|ALT_INV_cnt[1]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT0|cnt\(3));

-- Location: LABCELL_X66_Y4_N0
LDSec0 : cyclonev_lcell_comb
-- Equation(s):
-- \LDSec0~combout\ = LCELL(( \CNT0|cnt\(3) & ( (\CNT0|cnt\(1) & (!\CNT0|cnt\(2) & !\CNT0|cnt\(0))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT0|ALT_INV_cnt\(1),
	datac => \CNT0|ALT_INV_cnt\(2),
	datad => \CNT0|ALT_INV_cnt\(0),
	dataf => \CNT0|ALT_INV_cnt\(3),
	combout => \LDSec0~combout\);

-- Location: LABCELL_X66_Y4_N15
\CNT0|cnt[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT0|cnt[1]~0_combout\ = ( \LDSec0~combout\ ) # ( !\LDSec0~combout\ & ( (!\KEY[0]~input_o\) # ((!\KEY[3]~input_o\) # (!\KEY[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111010111111111111101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datac => \ALT_INV_KEY[3]~input_o\,
	datad => \ALT_INV_KEY[2]~input_o\,
	dataf => \ALT_INV_LDSec0~combout\,
	combout => \CNT0|cnt[1]~0_combout\);

-- Location: FF_X66_Y4_N59
\CNT0|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	asdata => \CNT0|cnt[0]~4_combout\,
	clrn => \CNT0|ALT_INV_cnt[1]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT0|cnt\(0));

-- Location: LABCELL_X66_Y4_N42
\CNT0|cnt[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT0|cnt[1]~3_combout\ = ( \CNT0|cnt\(1) & ( !\CNT0|cnt\(0) ) ) # ( !\CNT0|cnt\(1) & ( \CNT0|cnt\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CNT0|ALT_INV_cnt\(0),
	dataf => \CNT0|ALT_INV_cnt\(1),
	combout => \CNT0|cnt[1]~3_combout\);

-- Location: FF_X66_Y4_N26
\CNT0|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	asdata => \CNT0|cnt[1]~3_combout\,
	clrn => \CNT0|ALT_INV_cnt[1]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT0|cnt\(1));

-- Location: LABCELL_X66_Y4_N18
\SEG1|HEX0[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG1|HEX0[0]~0_combout\ = ( \CNT0|cnt\(0) & ( (!\CNT0|cnt\(1) & (!\CNT0|cnt\(3) $ (\CNT0|cnt\(2)))) # (\CNT0|cnt\(1) & (\CNT0|cnt\(3) & !\CNT0|cnt\(2))) ) ) # ( !\CNT0|cnt\(0) & ( (!\CNT0|cnt\(1) & (!\CNT0|cnt\(3) & \CNT0|cnt\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100010011001001000101001100100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT0|ALT_INV_cnt\(1),
	datab => \CNT0|ALT_INV_cnt\(3),
	datad => \CNT0|ALT_INV_cnt\(2),
	dataf => \CNT0|ALT_INV_cnt\(0),
	combout => \SEG1|HEX0[0]~0_combout\);

-- Location: LABCELL_X66_Y4_N33
\SEG1|HEX0[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG1|HEX0[1]~1_combout\ = ( \CNT0|cnt\(2) & ( (!\CNT0|cnt\(0) & ((\CNT0|cnt\(1)) # (\CNT0|cnt\(3)))) # (\CNT0|cnt\(0) & (!\CNT0|cnt\(3) $ (\CNT0|cnt\(1)))) ) ) # ( !\CNT0|cnt\(2) & ( (\CNT0|cnt\(0) & (\CNT0|cnt\(3) & \CNT0|cnt\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101101011011010110110101101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT0|ALT_INV_cnt\(0),
	datab => \CNT0|ALT_INV_cnt\(3),
	datac => \CNT0|ALT_INV_cnt\(1),
	dataf => \CNT0|ALT_INV_cnt\(2),
	combout => \SEG1|HEX0[1]~1_combout\);

-- Location: LABCELL_X66_Y4_N36
\SEG1|HEX0[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG1|HEX0[2]~2_combout\ = ( \CNT0|cnt\(3) & ( (\CNT0|cnt\(2) & ((!\CNT0|cnt\(0)) # (\CNT0|cnt\(1)))) ) ) # ( !\CNT0|cnt\(3) & ( (\CNT0|cnt\(1) & (!\CNT0|cnt\(0) & !\CNT0|cnt\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT0|ALT_INV_cnt\(1),
	datab => \CNT0|ALT_INV_cnt\(0),
	datac => \CNT0|ALT_INV_cnt\(2),
	dataf => \CNT0|ALT_INV_cnt\(3),
	combout => \SEG1|HEX0[2]~2_combout\);

-- Location: LABCELL_X66_Y4_N3
\SEG1|HEX0[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG1|HEX0[3]~3_combout\ = ( \CNT0|cnt\(2) & ( (!\CNT0|cnt\(1) & (!\CNT0|cnt\(0) & !\CNT0|cnt\(3))) # (\CNT0|cnt\(1) & (\CNT0|cnt\(0))) ) ) # ( !\CNT0|cnt\(2) & ( (!\CNT0|cnt\(1) & (\CNT0|cnt\(0))) # (\CNT0|cnt\(1) & (!\CNT0|cnt\(0) & \CNT0|cnt\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011000100110001001100010011010010001100100011001000110010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT0|ALT_INV_cnt\(1),
	datab => \CNT0|ALT_INV_cnt\(0),
	datac => \CNT0|ALT_INV_cnt\(3),
	dataf => \CNT0|ALT_INV_cnt\(2),
	combout => \SEG1|HEX0[3]~3_combout\);

-- Location: LABCELL_X66_Y4_N21
\SEG1|HEX0[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG1|HEX0[4]~4_combout\ = ( \CNT0|cnt\(2) & ( (!\CNT0|cnt\(3) & ((!\CNT0|cnt\(1)) # (\CNT0|cnt\(0)))) ) ) # ( !\CNT0|cnt\(2) & ( (\CNT0|cnt\(0) & ((!\CNT0|cnt\(1)) # (!\CNT0|cnt\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111010001100100011001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT0|ALT_INV_cnt\(1),
	datab => \CNT0|ALT_INV_cnt\(3),
	datac => \CNT0|ALT_INV_cnt\(0),
	dataf => \CNT0|ALT_INV_cnt\(2),
	combout => \SEG1|HEX0[4]~4_combout\);

-- Location: LABCELL_X66_Y4_N24
\SEG1|HEX0[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG1|HEX0[5]~5_combout\ = ( \CNT0|cnt\(3) & ( (\CNT0|cnt\(0) & (\CNT0|cnt\(2) & !\CNT0|cnt\(1))) ) ) # ( !\CNT0|cnt\(3) & ( (!\CNT0|cnt\(0) & (!\CNT0|cnt\(2) & \CNT0|cnt\(1))) # (\CNT0|cnt\(0) & ((!\CNT0|cnt\(2)) # (\CNT0|cnt\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110011001100001111001100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CNT0|ALT_INV_cnt\(0),
	datac => \CNT0|ALT_INV_cnt\(2),
	datad => \CNT0|ALT_INV_cnt\(1),
	dataf => \CNT0|ALT_INV_cnt\(3),
	combout => \SEG1|HEX0[5]~5_combout\);

-- Location: LABCELL_X66_Y4_N51
\SEG1|HEX0[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG1|HEX0[6]~6_combout\ = ( \CNT0|cnt\(3) & ( (!\CNT0|cnt\(1) & (\CNT0|cnt\(2) & !\CNT0|cnt\(0))) ) ) # ( !\CNT0|cnt\(3) & ( (!\CNT0|cnt\(1) & (!\CNT0|cnt\(2))) # (\CNT0|cnt\(1) & (\CNT0|cnt\(2) & \CNT0|cnt\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100110001001100010011000100100100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT0|ALT_INV_cnt\(1),
	datab => \CNT0|ALT_INV_cnt\(2),
	datac => \CNT0|ALT_INV_cnt\(0),
	dataf => \CNT0|ALT_INV_cnt\(3),
	combout => \SEG1|HEX0[6]~6_combout\);

-- Location: LABCELL_X66_Y4_N12
\CNT1|cnt[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT1|cnt[0]~4_combout\ = !\CNT1|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CNT1|ALT_INV_cnt\(0),
	combout => \CNT1|cnt[0]~4_combout\);

-- Location: LABCELL_X66_Y4_N6
\CNT1|cnt[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT1|cnt[2]~3_combout\ = !\CNT1|cnt\(2) $ (((!\CNT1|cnt\(1)) # (!\CNT1|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101100110010101010110011001010101011001100101010101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT1|ALT_INV_cnt\(2),
	datab => \CNT1|ALT_INV_cnt\(1),
	datad => \CNT1|ALT_INV_cnt\(0),
	combout => \CNT1|cnt[2]~3_combout\);

-- Location: FF_X66_Y4_N53
\CNT1|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LDSec0~combout\,
	asdata => \CNT1|cnt[2]~3_combout\,
	clrn => \CNT1|ALT_INV_cnt[0]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT1|cnt\(2));

-- Location: LABCELL_X66_Y4_N48
LDSec1 : cyclonev_lcell_comb
-- Equation(s):
-- \LDSec1~combout\ = LCELL(( \LDSec0~combout\ & ( (\CNT1|cnt\(2) & \CNT1|cnt\(1)) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CNT1|ALT_INV_cnt\(2),
	datad => \CNT1|ALT_INV_cnt\(1),
	dataf => \ALT_INV_LDSec0~combout\,
	combout => \LDSec1~combout\);

-- Location: LABCELL_X66_Y4_N27
\CNT1|cnt[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT1|cnt[0]~1_combout\ = ( \LDSec1~combout\ ) # ( !\LDSec1~combout\ & ( (!\KEY[0]~input_o\) # ((!\KEY[2]~input_o\) # (!\KEY[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111010111111111111101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datac => \ALT_INV_KEY[2]~input_o\,
	datad => \ALT_INV_KEY[3]~input_o\,
	dataf => \ALT_INV_LDSec1~combout\,
	combout => \CNT1|cnt[0]~1_combout\);

-- Location: FF_X66_Y4_N44
\CNT1|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LDSec0~combout\,
	asdata => \CNT1|cnt[0]~4_combout\,
	clrn => \CNT1|ALT_INV_cnt[0]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT1|cnt\(0));

-- Location: LABCELL_X66_Y4_N54
\CNT1|cnt[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT1|cnt[1]~2_combout\ = ( \CNT1|cnt\(1) & ( !\CNT1|cnt\(0) ) ) # ( !\CNT1|cnt\(1) & ( \CNT1|cnt\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000000000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CNT1|ALT_INV_cnt\(0),
	datae => \CNT1|ALT_INV_cnt\(1),
	combout => \CNT1|cnt[1]~2_combout\);

-- Location: FF_X66_Y4_N47
\CNT1|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LDSec0~combout\,
	asdata => \CNT1|cnt[1]~2_combout\,
	clrn => \CNT1|ALT_INV_cnt[0]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT1|cnt\(1));

-- Location: MLABCELL_X65_Y4_N42
\CNT1|cnt[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT1|cnt[3]~0_combout\ = ( \CNT1|cnt\(2) & ( \CNT1|cnt\(0) & ( !\CNT1|cnt\(1) $ (!\CNT1|cnt\(3)) ) ) ) # ( !\CNT1|cnt\(2) & ( \CNT1|cnt\(0) & ( \CNT1|cnt\(3) ) ) ) # ( \CNT1|cnt\(2) & ( !\CNT1|cnt\(0) & ( \CNT1|cnt\(3) ) ) ) # ( !\CNT1|cnt\(2) & ( 
-- !\CNT1|cnt\(0) & ( \CNT1|cnt\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT1|ALT_INV_cnt\(1),
	datac => \CNT1|ALT_INV_cnt\(3),
	datae => \CNT1|ALT_INV_cnt\(2),
	dataf => \CNT1|ALT_INV_cnt\(0),
	combout => \CNT1|cnt[3]~0_combout\);

-- Location: FF_X66_Y4_N17
\CNT1|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LDSec0~combout\,
	asdata => \CNT1|cnt[3]~0_combout\,
	clrn => \CNT1|ALT_INV_cnt[0]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT1|cnt\(3));

-- Location: MLABCELL_X65_Y4_N39
\SEG2|HEX0[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG2|HEX0[0]~0_combout\ = ( \CNT1|cnt\(3) & ( \CNT1|cnt\(2) & ( (!\CNT1|cnt\(1) & \CNT1|cnt\(0)) ) ) ) # ( !\CNT1|cnt\(3) & ( \CNT1|cnt\(2) & ( (!\CNT1|cnt\(1) & !\CNT1|cnt\(0)) ) ) ) # ( \CNT1|cnt\(3) & ( !\CNT1|cnt\(2) & ( (\CNT1|cnt\(1) & 
-- \CNT1|cnt\(0)) ) ) ) # ( !\CNT1|cnt\(3) & ( !\CNT1|cnt\(2) & ( (!\CNT1|cnt\(1) & \CNT1|cnt\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000001010000010110100000101000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT1|ALT_INV_cnt\(1),
	datac => \CNT1|ALT_INV_cnt\(0),
	datae => \CNT1|ALT_INV_cnt\(3),
	dataf => \CNT1|ALT_INV_cnt\(2),
	combout => \SEG2|HEX0[0]~0_combout\);

-- Location: MLABCELL_X65_Y4_N27
\SEG2|HEX0[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG2|HEX0[1]~1_combout\ = ( \CNT1|cnt\(3) & ( \CNT1|cnt\(2) & ( (!\CNT1|cnt\(0)) # (\CNT1|cnt\(1)) ) ) ) # ( !\CNT1|cnt\(3) & ( \CNT1|cnt\(2) & ( !\CNT1|cnt\(1) $ (!\CNT1|cnt\(0)) ) ) ) # ( \CNT1|cnt\(3) & ( !\CNT1|cnt\(2) & ( (\CNT1|cnt\(1) & 
-- \CNT1|cnt\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010101011010010110101111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT1|ALT_INV_cnt\(1),
	datac => \CNT1|ALT_INV_cnt\(0),
	datae => \CNT1|ALT_INV_cnt\(3),
	dataf => \CNT1|ALT_INV_cnt\(2),
	combout => \SEG2|HEX0[1]~1_combout\);

-- Location: MLABCELL_X65_Y4_N21
\SEG2|HEX0[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG2|HEX0[2]~2_combout\ = ( \CNT1|cnt\(3) & ( \CNT1|cnt\(2) & ( (!\CNT1|cnt\(0)) # (\CNT1|cnt\(1)) ) ) ) # ( !\CNT1|cnt\(3) & ( !\CNT1|cnt\(2) & ( (!\CNT1|cnt\(0) & \CNT1|cnt\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000000000000000000000000000001010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT1|ALT_INV_cnt\(0),
	datad => \CNT1|ALT_INV_cnt\(1),
	datae => \CNT1|ALT_INV_cnt\(3),
	dataf => \CNT1|ALT_INV_cnt\(2),
	combout => \SEG2|HEX0[2]~2_combout\);

-- Location: MLABCELL_X65_Y4_N54
\SEG2|HEX0[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG2|HEX0[3]~3_combout\ = ( \CNT1|cnt\(0) & ( !\CNT1|cnt\(1) $ (\CNT1|cnt\(2)) ) ) # ( !\CNT1|cnt\(0) & ( (!\CNT1|cnt\(1) & (\CNT1|cnt\(2) & !\CNT1|cnt\(3))) # (\CNT1|cnt\(1) & (!\CNT1|cnt\(2) & \CNT1|cnt\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000100100001001000010010010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT1|ALT_INV_cnt\(1),
	datab => \CNT1|ALT_INV_cnt\(2),
	datac => \CNT1|ALT_INV_cnt\(3),
	dataf => \CNT1|ALT_INV_cnt\(0),
	combout => \SEG2|HEX0[3]~3_combout\);

-- Location: MLABCELL_X65_Y4_N57
\SEG2|HEX0[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG2|HEX0[4]~4_combout\ = ( \CNT1|cnt\(0) & ( (!\CNT1|cnt\(3)) # ((!\CNT1|cnt\(1) & !\CNT1|cnt\(2))) ) ) # ( !\CNT1|cnt\(0) & ( (!\CNT1|cnt\(1) & (\CNT1|cnt\(2) & !\CNT1|cnt\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000011111111100010001111111110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT1|ALT_INV_cnt\(1),
	datab => \CNT1|ALT_INV_cnt\(2),
	datad => \CNT1|ALT_INV_cnt\(3),
	dataf => \CNT1|ALT_INV_cnt\(0),
	combout => \SEG2|HEX0[4]~4_combout\);

-- Location: MLABCELL_X65_Y4_N48
\SEG2|HEX0[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG2|HEX0[5]~5_combout\ = ( \CNT1|cnt\(1) & ( (!\CNT1|cnt\(3) & ((!\CNT1|cnt\(2)) # (\CNT1|cnt\(0)))) ) ) # ( !\CNT1|cnt\(1) & ( (\CNT1|cnt\(0) & (!\CNT1|cnt\(2) $ (\CNT1|cnt\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000011000000001100001111000000111100001100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CNT1|ALT_INV_cnt\(2),
	datac => \CNT1|ALT_INV_cnt\(3),
	datad => \CNT1|ALT_INV_cnt\(0),
	dataf => \CNT1|ALT_INV_cnt\(1),
	combout => \SEG2|HEX0[5]~5_combout\);

-- Location: MLABCELL_X65_Y4_N51
\SEG2|HEX0[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG2|HEX0[6]~6_combout\ = ( \CNT1|cnt\(1) & ( (!\CNT1|cnt\(3) & (\CNT1|cnt\(2) & \CNT1|cnt\(0))) ) ) # ( !\CNT1|cnt\(1) & ( (!\CNT1|cnt\(3) & (!\CNT1|cnt\(2))) # (\CNT1|cnt\(3) & (\CNT1|cnt\(2) & !\CNT1|cnt\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100010011000100110001001100000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT1|ALT_INV_cnt\(3),
	datab => \CNT1|ALT_INV_cnt\(2),
	datac => \CNT1|ALT_INV_cnt\(0),
	dataf => \CNT1|ALT_INV_cnt\(1),
	combout => \SEG2|HEX0[6]~6_combout\);

-- Location: LABCELL_X64_Y4_N21
\CNT2|cnt[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT2|cnt[0]~1_combout\ = ( \CNT2|cnt[3]~23_combout\ & ( (!\CLRMin0~combout\ & \CNT2|cnt[0]~1_combout\) ) ) # ( !\CNT2|cnt[3]~23_combout\ & ( (!\CLRMin0~combout\ & \SW[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CLRMin0~combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \CNT2|ALT_INV_cnt[0]~1_combout\,
	dataf => \CNT2|ALT_INV_cnt[3]~23_combout\,
	combout => \CNT2|cnt[0]~1_combout\);

-- Location: MLABCELL_X65_Y4_N15
\CNT2|cnt[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT2|cnt[0]~3_combout\ = ( \CNT2|cnt[0]~2_combout\ & ( \CNT2|cnt[0]~1_combout\ ) ) # ( !\CNT2|cnt[0]~2_combout\ & ( !\CNT2|cnt[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT2|ALT_INV_cnt[0]~1_combout\,
	dataf => \CNT2|ALT_INV_cnt[0]~2_combout\,
	combout => \CNT2|cnt[0]~3_combout\);

-- Location: LABCELL_X64_Y4_N39
\CNT2|cnt[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT2|cnt[0]~0_combout\ = ( \CLRMin0~combout\ ) # ( !\CLRMin0~combout\ & ( !\CNT2|cnt[3]~23_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CNT2|ALT_INV_cnt[3]~23_combout\,
	dataf => \ALT_INV_CLRMin0~combout\,
	combout => \CNT2|cnt[0]~0_combout\);

-- Location: FF_X65_Y4_N17
\CNT2|cnt[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LDSec1~combout\,
	d => \CNT2|cnt[0]~3_combout\,
	clrn => \CNT2|ALT_INV_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT2|cnt[0]~_emulated_q\);

-- Location: LABCELL_X68_Y4_N33
\CNT2|cnt[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT2|cnt[0]~2_combout\ = ( \CNT2|cnt[0]~_emulated_q\ & ( (!\CLRMin0~combout\ & ((!\CNT2|cnt[3]~23_combout\ & (\SW[0]~input_o\)) # (\CNT2|cnt[3]~23_combout\ & ((!\CNT2|cnt[0]~1_combout\))))) ) ) # ( !\CNT2|cnt[0]~_emulated_q\ & ( (!\CLRMin0~combout\ & 
-- ((!\CNT2|cnt[3]~23_combout\ & (\SW[0]~input_o\)) # (\CNT2|cnt[3]~23_combout\ & ((\CNT2|cnt[0]~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110001001100000010000100110000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT2|ALT_INV_cnt[3]~23_combout\,
	datab => \ALT_INV_CLRMin0~combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \CNT2|ALT_INV_cnt[0]~1_combout\,
	dataf => \CNT2|ALT_INV_cnt[0]~_emulated_q\,
	combout => \CNT2|cnt[0]~2_combout\);

-- Location: LABCELL_X66_Y4_N45
CLRMin0 : cyclonev_lcell_comb
-- Equation(s):
-- \CLRMin0~combout\ = ( \LDSec1~combout\ & ( (!\KEY[0]~input_o\) # ((\CNT2|cnt[3]~6_combout\ & \CNT2|cnt[0]~2_combout\)) ) ) # ( !\LDSec1~combout\ & ( !\KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101011101010111010101110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \CNT2|ALT_INV_cnt[3]~6_combout\,
	datac => \CNT2|ALT_INV_cnt[0]~2_combout\,
	dataf => \ALT_INV_LDSec1~combout\,
	combout => \CLRMin0~combout\);

-- Location: LABCELL_X64_Y4_N6
\CNT2|cnt[3]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT2|cnt[3]~23_combout\ = ( \CLRMin0~combout\ ) # ( !\CLRMin0~combout\ & ( \KEY[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[3]~input_o\,
	dataf => \ALT_INV_CLRMin0~combout\,
	combout => \CNT2|cnt[3]~23_combout\);

-- Location: LABCELL_X64_Y4_N48
\CNT2|cnt[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT2|cnt[3]~5_combout\ = ( \CNT2|cnt[3]~23_combout\ & ( (!\CLRMin0~combout\ & \CNT2|cnt[3]~5_combout\) ) ) # ( !\CNT2|cnt[3]~23_combout\ & ( (!\CLRMin0~combout\ & \SW[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CLRMin0~combout\,
	datac => \CNT2|ALT_INV_cnt[3]~5_combout\,
	datad => \ALT_INV_SW[3]~input_o\,
	dataf => \CNT2|ALT_INV_cnt[3]~23_combout\,
	combout => \CNT2|cnt[3]~5_combout\);

-- Location: LABCELL_X64_Y4_N3
\CNT2|cnt[1]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT2|cnt[1]~13_combout\ = ( \CNT2|cnt[3]~23_combout\ & ( (!\CLRMin0~combout\ & \CNT2|cnt[1]~13_combout\) ) ) # ( !\CNT2|cnt[3]~23_combout\ & ( (!\CLRMin0~combout\ & \SW[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CLRMin0~combout\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \CNT2|ALT_INV_cnt[1]~13_combout\,
	dataf => \CNT2|ALT_INV_cnt[3]~23_combout\,
	combout => \CNT2|cnt[1]~13_combout\);

-- Location: MLABCELL_X65_Y4_N3
\CNT2|cnt[1]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT2|cnt[1]~22_combout\ = ( \CNT2|cnt[0]~2_combout\ & ( !\CNT2|cnt[1]~14_combout\ ) ) # ( !\CNT2|cnt[0]~2_combout\ & ( \CNT2|cnt[1]~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CNT2|ALT_INV_cnt[1]~14_combout\,
	dataf => \CNT2|ALT_INV_cnt[0]~2_combout\,
	combout => \CNT2|cnt[1]~22_combout\);

-- Location: MLABCELL_X65_Y4_N0
\CNT2|cnt[1]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT2|cnt[1]~15_combout\ = ( \CNT2|cnt[1]~22_combout\ & ( !\CNT2|cnt[1]~13_combout\ ) ) # ( !\CNT2|cnt[1]~22_combout\ & ( \CNT2|cnt[1]~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CNT2|ALT_INV_cnt[1]~13_combout\,
	dataf => \CNT2|ALT_INV_cnt[1]~22_combout\,
	combout => \CNT2|cnt[1]~15_combout\);

-- Location: FF_X65_Y4_N1
\CNT2|cnt[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LDSec1~combout\,
	d => \CNT2|cnt[1]~15_combout\,
	clrn => \CNT2|ALT_INV_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT2|cnt[1]~_emulated_q\);

-- Location: LABCELL_X64_Y4_N15
\CNT2|cnt[1]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT2|cnt[1]~14_combout\ = ( \CNT2|cnt[1]~13_combout\ & ( (!\CLRMin0~combout\ & ((!\CNT2|cnt[3]~23_combout\ & ((\SW[1]~input_o\))) # (\CNT2|cnt[3]~23_combout\ & (!\CNT2|cnt[1]~_emulated_q\)))) ) ) # ( !\CNT2|cnt[1]~13_combout\ & ( (!\CLRMin0~combout\ & 
-- ((!\CNT2|cnt[3]~23_combout\ & ((\SW[1]~input_o\))) # (\CNT2|cnt[3]~23_combout\ & (\CNT2|cnt[1]~_emulated_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000100000101010000010000010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CLRMin0~combout\,
	datab => \CNT2|ALT_INV_cnt[3]~23_combout\,
	datac => \CNT2|ALT_INV_cnt[1]~_emulated_q\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \CNT2|ALT_INV_cnt[1]~13_combout\,
	combout => \CNT2|cnt[1]~14_combout\);

-- Location: LABCELL_X64_Y4_N42
\CNT2|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT2|Add0~0_combout\ = ( \CNT2|cnt[1]~14_combout\ & ( \CNT2|cnt[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CNT2|ALT_INV_cnt[0]~2_combout\,
	dataf => \CNT2|ALT_INV_cnt[1]~14_combout\,
	combout => \CNT2|Add0~0_combout\);

-- Location: LABCELL_X64_Y4_N57
\CNT2|cnt[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT2|cnt[2]~9_combout\ = ( \CNT2|cnt[2]~9_combout\ & ( \CNT2|cnt[3]~23_combout\ & ( !\CLRMin0~combout\ ) ) ) # ( \CNT2|cnt[2]~9_combout\ & ( !\CNT2|cnt[3]~23_combout\ & ( (!\CLRMin0~combout\ & \SW[2]~input_o\) ) ) ) # ( !\CNT2|cnt[2]~9_combout\ & ( 
-- !\CNT2|cnt[3]~23_combout\ & ( (!\CLRMin0~combout\ & \SW[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CLRMin0~combout\,
	datad => \ALT_INV_SW[2]~input_o\,
	datae => \CNT2|ALT_INV_cnt[2]~9_combout\,
	dataf => \CNT2|ALT_INV_cnt[3]~23_combout\,
	combout => \CNT2|cnt[2]~9_combout\);

-- Location: MLABCELL_X65_Y4_N6
\CNT2|cnt[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT2|cnt[2]~11_combout\ = ( \CNT2|cnt[1]~14_combout\ & ( !\CNT2|cnt[2]~9_combout\ $ (!\CNT2|cnt[2]~10_combout\ $ (\CNT2|cnt[0]~2_combout\)) ) ) # ( !\CNT2|cnt[1]~14_combout\ & ( !\CNT2|cnt[2]~9_combout\ $ (!\CNT2|cnt[2]~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT2|ALT_INV_cnt[2]~9_combout\,
	datab => \CNT2|ALT_INV_cnt[2]~10_combout\,
	datad => \CNT2|ALT_INV_cnt[0]~2_combout\,
	dataf => \CNT2|ALT_INV_cnt[1]~14_combout\,
	combout => \CNT2|cnt[2]~11_combout\);

-- Location: FF_X65_Y4_N8
\CNT2|cnt[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LDSec1~combout\,
	d => \CNT2|cnt[2]~11_combout\,
	clrn => \CNT2|ALT_INV_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT2|cnt[2]~_emulated_q\);

-- Location: LABCELL_X64_Y4_N12
\CNT2|cnt[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT2|cnt[2]~10_combout\ = ( \CNT2|cnt[2]~9_combout\ & ( (!\CLRMin0~combout\ & ((!\CNT2|cnt[3]~23_combout\ & (\SW[2]~input_o\)) # (\CNT2|cnt[3]~23_combout\ & ((!\CNT2|cnt[2]~_emulated_q\))))) ) ) # ( !\CNT2|cnt[2]~9_combout\ & ( (!\CLRMin0~combout\ & 
-- ((!\CNT2|cnt[3]~23_combout\ & (\SW[2]~input_o\)) # (\CNT2|cnt[3]~23_combout\ & ((\CNT2|cnt[2]~_emulated_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101000101010000010000010101000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CLRMin0~combout\,
	datab => \CNT2|ALT_INV_cnt[3]~23_combout\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \CNT2|ALT_INV_cnt[2]~_emulated_q\,
	dataf => \CNT2|ALT_INV_cnt[2]~9_combout\,
	combout => \CNT2|cnt[2]~10_combout\);

-- Location: LABCELL_X64_Y4_N45
\CNT2|cnt[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT2|cnt[3]~7_combout\ = ( \CNT2|cnt[2]~10_combout\ & ( !\CNT2|cnt[3]~5_combout\ $ (!\CNT2|Add0~0_combout\ $ (\CNT2|cnt[3]~6_combout\)) ) ) # ( !\CNT2|cnt[2]~10_combout\ & ( !\CNT2|cnt[3]~5_combout\ $ (!\CNT2|cnt[3]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT2|ALT_INV_cnt[3]~5_combout\,
	datab => \CNT2|ALT_INV_Add0~0_combout\,
	datac => \CNT2|ALT_INV_cnt[3]~6_combout\,
	dataf => \CNT2|ALT_INV_cnt[2]~10_combout\,
	combout => \CNT2|cnt[3]~7_combout\);

-- Location: MLABCELL_X65_Y4_N30
\CNT2|cnt[3]~_emulatedfeeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT2|cnt[3]~_emulatedfeeder_combout\ = \CNT2|cnt[3]~7_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CNT2|ALT_INV_cnt[3]~7_combout\,
	combout => \CNT2|cnt[3]~_emulatedfeeder_combout\);

-- Location: FF_X65_Y4_N31
\CNT2|cnt[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LDSec1~combout\,
	d => \CNT2|cnt[3]~_emulatedfeeder_combout\,
	clrn => \CNT2|ALT_INV_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT2|cnt[3]~_emulated_q\);

-- Location: LABCELL_X68_Y4_N30
\CNT2|cnt[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT2|cnt[3]~6_combout\ = ( \CNT2|cnt[3]~_emulated_q\ & ( (!\CLRMin0~combout\ & ((!\CNT2|cnt[3]~23_combout\ & (\SW[3]~input_o\)) # (\CNT2|cnt[3]~23_combout\ & ((!\CNT2|cnt[3]~5_combout\))))) ) ) # ( !\CNT2|cnt[3]~_emulated_q\ & ( (!\CLRMin0~combout\ & 
-- ((!\CNT2|cnt[3]~23_combout\ & (\SW[3]~input_o\)) # (\CNT2|cnt[3]~23_combout\ & ((\CNT2|cnt[3]~5_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110001001100000010000100110000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT2|ALT_INV_cnt[3]~23_combout\,
	datab => \ALT_INV_CLRMin0~combout\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \CNT2|ALT_INV_cnt[3]~5_combout\,
	dataf => \CNT2|ALT_INV_cnt[3]~_emulated_q\,
	combout => \CNT2|cnt[3]~6_combout\);

-- Location: LABCELL_X64_Y4_N0
\SEG3|HEX0[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG3|HEX0[0]~0_combout\ = ( \CNT2|cnt[0]~2_combout\ & ( (!\CNT2|cnt[3]~6_combout\ & (!\CNT2|cnt[2]~10_combout\ & !\CNT2|cnt[1]~14_combout\)) # (\CNT2|cnt[3]~6_combout\ & (!\CNT2|cnt[2]~10_combout\ $ (!\CNT2|cnt[1]~14_combout\))) ) ) # ( 
-- !\CNT2|cnt[0]~2_combout\ & ( (!\CNT2|cnt[3]~6_combout\ & (\CNT2|cnt[2]~10_combout\ & !\CNT2|cnt[1]~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000011000011001100001100001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CNT2|ALT_INV_cnt[3]~6_combout\,
	datac => \CNT2|ALT_INV_cnt[2]~10_combout\,
	datad => \CNT2|ALT_INV_cnt[1]~14_combout\,
	dataf => \CNT2|ALT_INV_cnt[0]~2_combout\,
	combout => \SEG3|HEX0[0]~0_combout\);

-- Location: LABCELL_X64_Y4_N9
\SEG3|HEX0[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG3|HEX0[1]~1_combout\ = ( \CNT2|cnt[0]~2_combout\ & ( (!\CNT2|cnt[1]~14_combout\ & (\CNT2|cnt[2]~10_combout\ & !\CNT2|cnt[3]~6_combout\)) # (\CNT2|cnt[1]~14_combout\ & ((\CNT2|cnt[3]~6_combout\))) ) ) # ( !\CNT2|cnt[0]~2_combout\ & ( 
-- (\CNT2|cnt[2]~10_combout\ & ((\CNT2|cnt[3]~6_combout\) # (\CNT2|cnt[1]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100001100001100110000110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CNT2|ALT_INV_cnt[1]~14_combout\,
	datac => \CNT2|ALT_INV_cnt[2]~10_combout\,
	datad => \CNT2|ALT_INV_cnt[3]~6_combout\,
	dataf => \CNT2|ALT_INV_cnt[0]~2_combout\,
	combout => \SEG3|HEX0[1]~1_combout\);

-- Location: LABCELL_X64_Y4_N18
\SEG3|HEX0[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG3|HEX0[2]~2_combout\ = ( \CNT2|cnt[1]~14_combout\ & ( (!\CNT2|cnt[3]~6_combout\ & (!\CNT2|cnt[0]~2_combout\ & !\CNT2|cnt[2]~10_combout\)) # (\CNT2|cnt[3]~6_combout\ & ((\CNT2|cnt[2]~10_combout\))) ) ) # ( !\CNT2|cnt[1]~14_combout\ & ( 
-- (\CNT2|cnt[3]~6_combout\ & (!\CNT2|cnt[0]~2_combout\ & \CNT2|cnt[2]~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011000000001100111100000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CNT2|ALT_INV_cnt[3]~6_combout\,
	datac => \CNT2|ALT_INV_cnt[0]~2_combout\,
	datad => \CNT2|ALT_INV_cnt[2]~10_combout\,
	dataf => \CNT2|ALT_INV_cnt[1]~14_combout\,
	combout => \SEG3|HEX0[2]~2_combout\);

-- Location: LABCELL_X64_Y4_N51
\SEG3|HEX0[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG3|HEX0[3]~3_combout\ = ( \CNT2|cnt[0]~2_combout\ & ( !\CNT2|cnt[1]~14_combout\ $ (\CNT2|cnt[2]~10_combout\) ) ) # ( !\CNT2|cnt[0]~2_combout\ & ( (!\CNT2|cnt[3]~6_combout\ & (!\CNT2|cnt[1]~14_combout\ & \CNT2|cnt[2]~10_combout\)) # 
-- (\CNT2|cnt[3]~6_combout\ & (\CNT2|cnt[1]~14_combout\ & !\CNT2|cnt[2]~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000000000000111100000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CNT2|ALT_INV_cnt[3]~6_combout\,
	datac => \CNT2|ALT_INV_cnt[1]~14_combout\,
	datad => \CNT2|ALT_INV_cnt[2]~10_combout\,
	dataf => \CNT2|ALT_INV_cnt[0]~2_combout\,
	combout => \SEG3|HEX0[3]~3_combout\);

-- Location: LABCELL_X64_Y4_N24
\SEG3|HEX0[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG3|HEX0[4]~4_combout\ = ( \CNT2|cnt[1]~14_combout\ & ( (!\CNT2|cnt[3]~6_combout\ & \CNT2|cnt[0]~2_combout\) ) ) # ( !\CNT2|cnt[1]~14_combout\ & ( (!\CNT2|cnt[2]~10_combout\ & ((\CNT2|cnt[0]~2_combout\))) # (\CNT2|cnt[2]~10_combout\ & 
-- (!\CNT2|cnt[3]~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011111100000011001111110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CNT2|ALT_INV_cnt[3]~6_combout\,
	datac => \CNT2|ALT_INV_cnt[2]~10_combout\,
	datad => \CNT2|ALT_INV_cnt[0]~2_combout\,
	dataf => \CNT2|ALT_INV_cnt[1]~14_combout\,
	combout => \SEG3|HEX0[4]~4_combout\);

-- Location: LABCELL_X64_Y4_N27
\SEG3|HEX0[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG3|HEX0[5]~5_combout\ = ( \CNT2|cnt[0]~2_combout\ & ( !\CNT2|cnt[3]~6_combout\ $ (((\CNT2|cnt[2]~10_combout\ & !\CNT2|cnt[1]~14_combout\))) ) ) # ( !\CNT2|cnt[0]~2_combout\ & ( (!\CNT2|cnt[2]~10_combout\ & (!\CNT2|cnt[3]~6_combout\ & 
-- \CNT2|cnt[1]~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010011100100111001001110010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT2|ALT_INV_cnt[2]~10_combout\,
	datab => \CNT2|ALT_INV_cnt[3]~6_combout\,
	datac => \CNT2|ALT_INV_cnt[1]~14_combout\,
	dataf => \CNT2|ALT_INV_cnt[0]~2_combout\,
	combout => \SEG3|HEX0[5]~5_combout\);

-- Location: LABCELL_X64_Y4_N33
\SEG3|HEX0[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG3|HEX0[6]~6_combout\ = ( \CNT2|cnt[2]~10_combout\ & ( \CNT2|cnt[0]~2_combout\ & ( (!\CNT2|cnt[3]~6_combout\ & \CNT2|cnt[1]~14_combout\) ) ) ) # ( !\CNT2|cnt[2]~10_combout\ & ( \CNT2|cnt[0]~2_combout\ & ( (!\CNT2|cnt[3]~6_combout\ & 
-- !\CNT2|cnt[1]~14_combout\) ) ) ) # ( \CNT2|cnt[2]~10_combout\ & ( !\CNT2|cnt[0]~2_combout\ & ( (\CNT2|cnt[3]~6_combout\ & !\CNT2|cnt[1]~14_combout\) ) ) ) # ( !\CNT2|cnt[2]~10_combout\ & ( !\CNT2|cnt[0]~2_combout\ & ( (!\CNT2|cnt[3]~6_combout\ & 
-- !\CNT2|cnt[1]~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000001100000011000011000000110000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CNT2|ALT_INV_cnt[3]~6_combout\,
	datac => \CNT2|ALT_INV_cnt[1]~14_combout\,
	datae => \CNT2|ALT_INV_cnt[2]~10_combout\,
	dataf => \CNT2|ALT_INV_cnt[0]~2_combout\,
	combout => \SEG3|HEX0[6]~6_combout\);

-- Location: LABCELL_X67_Y4_N48
\CNT3|cnt[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT3|cnt[0]~1_combout\ = ( \CNT3|cnt[0]~1_combout\ & ( (!\CLRMin1~combout\ & ((\SW[4]~input_o\) # (\CNT3|cnt[3]~23_combout\))) ) ) # ( !\CNT3|cnt[0]~1_combout\ & ( (!\CLRMin1~combout\ & (!\CNT3|cnt[3]~23_combout\ & \SW[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CLRMin1~combout\,
	datab => \CNT3|ALT_INV_cnt[3]~23_combout\,
	datac => \ALT_INV_SW[4]~input_o\,
	dataf => \CNT3|ALT_INV_cnt[0]~1_combout\,
	combout => \CNT3|cnt[0]~1_combout\);

-- Location: LABCELL_X68_Y4_N6
LDMin1 : cyclonev_lcell_comb
-- Equation(s):
-- \LDMin1~combout\ = LCELL(( \CNT2|cnt[3]~6_combout\ & ( (\CNT2|cnt[0]~2_combout\ & \LDSec1~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CNT2|ALT_INV_cnt[0]~2_combout\,
	datad => \ALT_INV_LDSec1~combout\,
	dataf => \CNT2|ALT_INV_cnt[3]~6_combout\,
	combout => \LDMin1~combout\);

-- Location: LABCELL_X67_Y4_N0
\CNT3|cnt[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT3|cnt[0]~3_combout\ = ( \CNT3|cnt[0]~2_combout\ & ( \CNT3|cnt[0]~1_combout\ ) ) # ( !\CNT3|cnt[0]~2_combout\ & ( !\CNT3|cnt[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CNT3|ALT_INV_cnt[0]~1_combout\,
	dataf => \CNT3|ALT_INV_cnt[0]~2_combout\,
	combout => \CNT3|cnt[0]~3_combout\);

-- Location: LABCELL_X67_Y4_N18
\CNT3|cnt[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT3|cnt[0]~0_combout\ = ( \CNT3|cnt[3]~23_combout\ & ( \CLRMin1~combout\ ) ) # ( !\CNT3|cnt[3]~23_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_CLRMin1~combout\,
	dataf => \CNT3|ALT_INV_cnt[3]~23_combout\,
	combout => \CNT3|cnt[0]~0_combout\);

-- Location: FF_X67_Y4_N1
\CNT3|cnt[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LDMin1~combout\,
	d => \CNT3|cnt[0]~3_combout\,
	clrn => \CNT3|ALT_INV_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT3|cnt[0]~_emulated_q\);

-- Location: LABCELL_X68_Y4_N3
\CNT3|cnt[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT3|cnt[0]~2_combout\ = ( \CNT3|cnt[0]~_emulated_q\ & ( (!\CLRMin1~combout\ & ((!\CNT3|cnt[3]~23_combout\ & (\SW[4]~input_o\)) # (\CNT3|cnt[3]~23_combout\ & ((!\CNT3|cnt[0]~1_combout\))))) ) ) # ( !\CNT3|cnt[0]~_emulated_q\ & ( (!\CLRMin1~combout\ & 
-- ((!\CNT3|cnt[3]~23_combout\ & (\SW[4]~input_o\)) # (\CNT3|cnt[3]~23_combout\ & ((\CNT3|cnt[0]~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100110000000001011100000000000101110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datab => \CNT3|ALT_INV_cnt[0]~1_combout\,
	datac => \CNT3|ALT_INV_cnt[3]~23_combout\,
	datad => \ALT_INV_CLRMin1~combout\,
	dataf => \CNT3|ALT_INV_cnt[0]~_emulated_q\,
	combout => \CNT3|cnt[0]~2_combout\);

-- Location: LABCELL_X67_Y4_N6
\CNT3|cnt[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT3|cnt[2]~9_combout\ = ( \CNT3|cnt[2]~9_combout\ & ( (!\CLRMin1~combout\ & ((\SW[6]~input_o\) # (\CNT3|cnt[3]~23_combout\))) ) ) # ( !\CNT3|cnt[2]~9_combout\ & ( (!\CLRMin1~combout\ & (!\CNT3|cnt[3]~23_combout\ & \SW[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CLRMin1~combout\,
	datab => \CNT3|ALT_INV_cnt[3]~23_combout\,
	datac => \ALT_INV_SW[6]~input_o\,
	dataf => \CNT3|ALT_INV_cnt[2]~9_combout\,
	combout => \CNT3|cnt[2]~9_combout\);

-- Location: LABCELL_X67_Y4_N51
\CNT3|cnt[1]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT3|cnt[1]~13_combout\ = ( \CNT3|cnt[1]~13_combout\ & ( (!\CLRMin1~combout\ & ((\SW[5]~input_o\) # (\CNT3|cnt[3]~23_combout\))) ) ) # ( !\CNT3|cnt[1]~13_combout\ & ( (!\CLRMin1~combout\ & (!\CNT3|cnt[3]~23_combout\ & \SW[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CLRMin1~combout\,
	datac => \CNT3|ALT_INV_cnt[3]~23_combout\,
	datad => \ALT_INV_SW[5]~input_o\,
	dataf => \CNT3|ALT_INV_cnt[1]~13_combout\,
	combout => \CNT3|cnt[1]~13_combout\);

-- Location: LABCELL_X67_Y4_N12
\CNT3|cnt[1]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT3|cnt[1]~22_combout\ = ( \CNT3|cnt[0]~2_combout\ & ( !\CNT3|cnt[1]~14_combout\ ) ) # ( !\CNT3|cnt[0]~2_combout\ & ( \CNT3|cnt[1]~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CNT3|ALT_INV_cnt[1]~14_combout\,
	dataf => \CNT3|ALT_INV_cnt[0]~2_combout\,
	combout => \CNT3|cnt[1]~22_combout\);

-- Location: LABCELL_X67_Y4_N57
\CNT3|cnt[1]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT3|cnt[1]~15_combout\ = ( \CNT3|cnt[1]~22_combout\ & ( !\CNT3|cnt[1]~13_combout\ ) ) # ( !\CNT3|cnt[1]~22_combout\ & ( \CNT3|cnt[1]~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CNT3|ALT_INV_cnt[1]~13_combout\,
	dataf => \CNT3|ALT_INV_cnt[1]~22_combout\,
	combout => \CNT3|cnt[1]~15_combout\);

-- Location: FF_X67_Y4_N59
\CNT3|cnt[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LDMin1~combout\,
	d => \CNT3|cnt[1]~15_combout\,
	clrn => \CNT3|ALT_INV_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT3|cnt[1]~_emulated_q\);

-- Location: LABCELL_X67_Y4_N33
\CNT3|cnt[1]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT3|cnt[1]~14_combout\ = ( \CNT3|cnt[3]~23_combout\ & ( (!\CLRMin1~combout\ & (!\CNT3|cnt[1]~13_combout\ $ (!\CNT3|cnt[1]~_emulated_q\))) ) ) # ( !\CNT3|cnt[3]~23_combout\ & ( (!\CLRMin1~combout\ & \SW[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT3|ALT_INV_cnt[1]~13_combout\,
	datab => \ALT_INV_CLRMin1~combout\,
	datac => \CNT3|ALT_INV_cnt[1]~_emulated_q\,
	datad => \ALT_INV_SW[5]~input_o\,
	dataf => \CNT3|ALT_INV_cnt[3]~23_combout\,
	combout => \CNT3|cnt[1]~14_combout\);

-- Location: LABCELL_X67_Y4_N45
\CNT3|cnt[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT3|cnt[2]~11_combout\ = ( \CNT3|cnt[2]~10_combout\ & ( !\CNT3|cnt[2]~9_combout\ $ (((\CNT3|cnt[0]~2_combout\ & \CNT3|cnt[1]~14_combout\))) ) ) # ( !\CNT3|cnt[2]~10_combout\ & ( !\CNT3|cnt[2]~9_combout\ $ (((!\CNT3|cnt[0]~2_combout\) # 
-- (!\CNT3|cnt[1]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010000001011111101011111010000001011111101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT3|ALT_INV_cnt[0]~2_combout\,
	datac => \CNT3|ALT_INV_cnt[1]~14_combout\,
	datad => \CNT3|ALT_INV_cnt[2]~9_combout\,
	dataf => \CNT3|ALT_INV_cnt[2]~10_combout\,
	combout => \CNT3|cnt[2]~11_combout\);

-- Location: FF_X68_Y4_N11
\CNT3|cnt[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LDMin1~combout\,
	asdata => \CNT3|cnt[2]~11_combout\,
	clrn => \CNT3|ALT_INV_cnt[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT3|cnt[2]~_emulated_q\);

-- Location: LABCELL_X68_Y4_N45
\CNT3|cnt[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT3|cnt[2]~10_combout\ = ( \CNT3|cnt[2]~_emulated_q\ & ( (!\CLRMin1~combout\ & ((!\CNT3|cnt[3]~23_combout\ & (\SW[6]~input_o\)) # (\CNT3|cnt[3]~23_combout\ & ((!\CNT3|cnt[2]~9_combout\))))) ) ) # ( !\CNT3|cnt[2]~_emulated_q\ & ( (!\CLRMin1~combout\ & 
-- ((!\CNT3|cnt[3]~23_combout\ & (\SW[6]~input_o\)) # (\CNT3|cnt[3]~23_combout\ & ((\CNT3|cnt[2]~9_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100110000000001011100000000000101110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \CNT3|ALT_INV_cnt[2]~9_combout\,
	datac => \CNT3|ALT_INV_cnt[3]~23_combout\,
	datad => \ALT_INV_CLRMin1~combout\,
	dataf => \CNT3|ALT_INV_cnt[2]~_emulated_q\,
	combout => \CNT3|cnt[2]~10_combout\);

-- Location: LABCELL_X68_Y4_N9
CLRMin1 : cyclonev_lcell_comb
-- Equation(s):
-- \CLRMin1~combout\ = ( \LDMin1~combout\ & ( (!\KEY[0]~input_o\) # ((\CNT3|cnt[0]~2_combout\ & \CNT3|cnt[2]~10_combout\)) ) ) # ( !\LDMin1~combout\ & ( !\KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110001111100011111000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT3|ALT_INV_cnt[0]~2_combout\,
	datab => \CNT3|ALT_INV_cnt[2]~10_combout\,
	datac => \ALT_INV_KEY[0]~input_o\,
	dataf => \ALT_INV_LDMin1~combout\,
	combout => \CLRMin1~combout\);

-- Location: LABCELL_X67_Y4_N9
\CNT3|cnt[3]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT3|cnt[3]~23_combout\ = ( \CLRMin1~combout\ ) # ( !\CLRMin1~combout\ & ( \KEY[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[3]~input_o\,
	dataf => \ALT_INV_CLRMin1~combout\,
	combout => \CNT3|cnt[3]~23_combout\);

-- Location: LABCELL_X67_Y4_N42
\CNT3|cnt[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT3|cnt[3]~5_combout\ = ( \CNT3|cnt[3]~5_combout\ & ( (!\CLRMin1~combout\ & ((\SW[7]~input_o\) # (\CNT3|cnt[3]~23_combout\))) ) ) # ( !\CNT3|cnt[3]~5_combout\ & ( (!\CNT3|cnt[3]~23_combout\ & (!\CLRMin1~combout\ & \SW[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000110000111100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CNT3|ALT_INV_cnt[3]~23_combout\,
	datac => \ALT_INV_CLRMin1~combout\,
	datad => \ALT_INV_SW[7]~input_o\,
	dataf => \CNT3|ALT_INV_cnt[3]~5_combout\,
	combout => \CNT3|cnt[3]~5_combout\);

-- Location: LABCELL_X70_Y4_N21
\CNT3|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT3|Add0~0_combout\ = ( \CNT3|cnt[0]~2_combout\ & ( \CNT3|cnt[1]~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CNT3|ALT_INV_cnt[1]~14_combout\,
	dataf => \CNT3|ALT_INV_cnt[0]~2_combout\,
	combout => \CNT3|Add0~0_combout\);

-- Location: LABCELL_X67_Y4_N36
\CNT3|cnt[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT3|cnt[3]~7_combout\ = ( \CNT3|cnt[3]~6_combout\ & ( !\CNT3|cnt[3]~5_combout\ $ (((\CNT3|cnt[2]~10_combout\ & \CNT3|Add0~0_combout\))) ) ) # ( !\CNT3|cnt[3]~6_combout\ & ( !\CNT3|cnt[3]~5_combout\ $ (((!\CNT3|cnt[2]~10_combout\) # 
-- (!\CNT3|Add0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100001100110011110011001100110000111100110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CNT3|ALT_INV_cnt[3]~5_combout\,
	datac => \CNT3|ALT_INV_cnt[2]~10_combout\,
	datad => \CNT3|ALT_INV_Add0~0_combout\,
	dataf => \CNT3|ALT_INV_cnt[3]~6_combout\,
	combout => \CNT3|cnt[3]~7_combout\);

-- Location: FF_X67_Y4_N38
\CNT3|cnt[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LDMin1~combout\,
	d => \CNT3|cnt[3]~7_combout\,
	clrn => \CNT3|ALT_INV_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT3|cnt[3]~_emulated_q\);

-- Location: LABCELL_X67_Y4_N24
\CNT3|cnt[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT3|cnt[3]~6_combout\ = ( \CNT3|cnt[3]~23_combout\ & ( (!\CLRMin1~combout\ & (!\CNT3|cnt[3]~5_combout\ $ (!\CNT3|cnt[3]~_emulated_q\))) ) ) # ( !\CNT3|cnt[3]~23_combout\ & ( (\SW[7]~input_o\ & !\CLRMin1~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000001011010000000000101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT3|ALT_INV_cnt[3]~5_combout\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \CNT3|ALT_INV_cnt[3]~_emulated_q\,
	datad => \ALT_INV_CLRMin1~combout\,
	dataf => \CNT3|ALT_INV_cnt[3]~23_combout\,
	combout => \CNT3|cnt[3]~6_combout\);

-- Location: LABCELL_X70_Y4_N0
\SEG4|HEX0[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG4|HEX0[0]~0_combout\ = ( \CNT3|cnt[0]~2_combout\ & ( (!\CNT3|cnt[3]~6_combout\ & (!\CNT3|cnt[2]~10_combout\ & !\CNT3|cnt[1]~14_combout\)) # (\CNT3|cnt[3]~6_combout\ & (!\CNT3|cnt[2]~10_combout\ $ (!\CNT3|cnt[1]~14_combout\))) ) ) # ( 
-- !\CNT3|cnt[0]~2_combout\ & ( (!\CNT3|cnt[3]~6_combout\ & (\CNT3|cnt[2]~10_combout\ & !\CNT3|cnt[1]~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000010010100100101001001010010010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT3|ALT_INV_cnt[3]~6_combout\,
	datab => \CNT3|ALT_INV_cnt[2]~10_combout\,
	datac => \CNT3|ALT_INV_cnt[1]~14_combout\,
	dataf => \CNT3|ALT_INV_cnt[0]~2_combout\,
	combout => \SEG4|HEX0[0]~0_combout\);

-- Location: LABCELL_X70_Y4_N3
\SEG4|HEX0[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG4|HEX0[1]~1_combout\ = ( \CNT3|cnt[0]~2_combout\ & ( (!\CNT3|cnt[3]~6_combout\ & (\CNT3|cnt[2]~10_combout\ & !\CNT3|cnt[1]~14_combout\)) # (\CNT3|cnt[3]~6_combout\ & ((\CNT3|cnt[1]~14_combout\))) ) ) # ( !\CNT3|cnt[0]~2_combout\ & ( 
-- (\CNT3|cnt[2]~10_combout\ & ((\CNT3|cnt[1]~14_combout\) # (\CNT3|cnt[3]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001100100101001001010010010100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT3|ALT_INV_cnt[3]~6_combout\,
	datab => \CNT3|ALT_INV_cnt[2]~10_combout\,
	datac => \CNT3|ALT_INV_cnt[1]~14_combout\,
	dataf => \CNT3|ALT_INV_cnt[0]~2_combout\,
	combout => \SEG4|HEX0[1]~1_combout\);

-- Location: LABCELL_X70_Y4_N57
\SEG4|HEX0[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG4|HEX0[2]~2_combout\ = ( \CNT3|cnt[0]~2_combout\ & ( (\CNT3|cnt[3]~6_combout\ & (\CNT3|cnt[2]~10_combout\ & \CNT3|cnt[1]~14_combout\)) ) ) # ( !\CNT3|cnt[0]~2_combout\ & ( (!\CNT3|cnt[3]~6_combout\ & (!\CNT3|cnt[2]~10_combout\ & 
-- \CNT3|cnt[1]~14_combout\)) # (\CNT3|cnt[3]~6_combout\ & (\CNT3|cnt[2]~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100011001000110010001100100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT3|ALT_INV_cnt[3]~6_combout\,
	datab => \CNT3|ALT_INV_cnt[2]~10_combout\,
	datac => \CNT3|ALT_INV_cnt[1]~14_combout\,
	dataf => \CNT3|ALT_INV_cnt[0]~2_combout\,
	combout => \SEG4|HEX0[2]~2_combout\);

-- Location: LABCELL_X70_Y4_N51
\SEG4|HEX0[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG4|HEX0[3]~3_combout\ = ( \CNT3|cnt[0]~2_combout\ & ( !\CNT3|cnt[2]~10_combout\ $ (\CNT3|cnt[1]~14_combout\) ) ) # ( !\CNT3|cnt[0]~2_combout\ & ( (!\CNT3|cnt[3]~6_combout\ & (\CNT3|cnt[2]~10_combout\ & !\CNT3|cnt[1]~14_combout\)) # 
-- (\CNT3|cnt[3]~6_combout\ & (!\CNT3|cnt[2]~10_combout\ & \CNT3|cnt[1]~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000100100001001000010010011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT3|ALT_INV_cnt[3]~6_combout\,
	datab => \CNT3|ALT_INV_cnt[2]~10_combout\,
	datac => \CNT3|ALT_INV_cnt[1]~14_combout\,
	dataf => \CNT3|ALT_INV_cnt[0]~2_combout\,
	combout => \SEG4|HEX0[3]~3_combout\);

-- Location: LABCELL_X70_Y4_N48
\SEG4|HEX0[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG4|HEX0[4]~4_combout\ = ( \CNT3|cnt[0]~2_combout\ & ( (!\CNT3|cnt[3]~6_combout\) # ((!\CNT3|cnt[2]~10_combout\ & !\CNT3|cnt[1]~14_combout\)) ) ) # ( !\CNT3|cnt[0]~2_combout\ & ( (!\CNT3|cnt[3]~6_combout\ & (\CNT3|cnt[2]~10_combout\ & 
-- !\CNT3|cnt[1]~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000011101010111010101110101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT3|ALT_INV_cnt[3]~6_combout\,
	datab => \CNT3|ALT_INV_cnt[2]~10_combout\,
	datac => \CNT3|ALT_INV_cnt[1]~14_combout\,
	dataf => \CNT3|ALT_INV_cnt[0]~2_combout\,
	combout => \SEG4|HEX0[4]~4_combout\);

-- Location: LABCELL_X70_Y4_N42
\SEG4|HEX0[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG4|HEX0[5]~5_combout\ = ( \CNT3|cnt[1]~14_combout\ & ( (!\CNT3|cnt[3]~6_combout\ & ((!\CNT3|cnt[2]~10_combout\) # (\CNT3|cnt[0]~2_combout\))) ) ) # ( !\CNT3|cnt[1]~14_combout\ & ( (\CNT3|cnt[0]~2_combout\ & (!\CNT3|cnt[2]~10_combout\ $ 
-- (\CNT3|cnt[3]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000011000011000000001111001111000000001100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CNT3|ALT_INV_cnt[2]~10_combout\,
	datac => \CNT3|ALT_INV_cnt[0]~2_combout\,
	datad => \CNT3|ALT_INV_cnt[3]~6_combout\,
	dataf => \CNT3|ALT_INV_cnt[1]~14_combout\,
	combout => \SEG4|HEX0[5]~5_combout\);

-- Location: LABCELL_X70_Y4_N54
\SEG4|HEX0[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG4|HEX0[6]~6_combout\ = ( \CNT3|cnt[0]~2_combout\ & ( (!\CNT3|cnt[3]~6_combout\ & (!\CNT3|cnt[2]~10_combout\ $ (\CNT3|cnt[1]~14_combout\))) ) ) # ( !\CNT3|cnt[0]~2_combout\ & ( (!\CNT3|cnt[1]~14_combout\ & (!\CNT3|cnt[2]~10_combout\ $ 
-- (\CNT3|cnt[3]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000011000000001100001100000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CNT3|ALT_INV_cnt[2]~10_combout\,
	datac => \CNT3|ALT_INV_cnt[3]~6_combout\,
	datad => \CNT3|ALT_INV_cnt[1]~14_combout\,
	dataf => \CNT3|ALT_INV_cnt[0]~2_combout\,
	combout => \SEG4|HEX0[6]~6_combout\);

-- Location: LABCELL_X67_Y3_N51
\CNT4|cnt[3]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT4|cnt[3]~23_combout\ = ( \CLRHr0~combout\ ) # ( !\CLRHr0~combout\ & ( \KEY[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[2]~input_o\,
	dataf => \ALT_INV_CLRHr0~combout\,
	combout => \CNT4|cnt[3]~23_combout\);

-- Location: LABCELL_X68_Y4_N21
LDHr0 : cyclonev_lcell_comb
-- Equation(s):
-- \LDHr0~combout\ = LCELL(( \CNT3|cnt[2]~10_combout\ & ( (\LDMin1~combout\ & \CNT3|cnt[0]~2_combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LDMin1~combout\,
	datad => \CNT3|ALT_INV_cnt[0]~2_combout\,
	dataf => \CNT3|ALT_INV_cnt[2]~10_combout\,
	combout => \LDHr0~combout\);

-- Location: LABCELL_X67_Y3_N12
\CNT4|cnt[1]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT4|cnt[1]~13_combout\ = ( !\CLRHr0~combout\ & ( (!\CNT4|cnt[3]~23_combout\ & ((\SW[1]~input_o\))) # (\CNT4|cnt[3]~23_combout\ & (\CNT4|cnt[1]~13_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CNT4|ALT_INV_cnt[1]~13_combout\,
	datac => \CNT4|ALT_INV_cnt[3]~23_combout\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_CLRHr0~combout\,
	combout => \CNT4|cnt[1]~13_combout\);

-- Location: LABCELL_X67_Y3_N33
\CNT4|cnt[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT4|cnt[0]~1_combout\ = ( !\CLRHr0~combout\ & ( (!\CNT4|cnt[3]~23_combout\ & ((\SW[0]~input_o\))) # (\CNT4|cnt[3]~23_combout\ & (\CNT4|cnt[0]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT4|ALT_INV_cnt[0]~1_combout\,
	datac => \CNT4|ALT_INV_cnt[3]~23_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_CLRHr0~combout\,
	combout => \CNT4|cnt[0]~1_combout\);

-- Location: LABCELL_X67_Y3_N18
\CNT4|cnt[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT4|cnt[0]~3_combout\ = ( \CNT4|cnt[0]~2_combout\ & ( \CNT4|cnt[0]~1_combout\ ) ) # ( !\CNT4|cnt[0]~2_combout\ & ( !\CNT4|cnt[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CNT4|ALT_INV_cnt[0]~1_combout\,
	dataf => \CNT4|ALT_INV_cnt[0]~2_combout\,
	combout => \CNT4|cnt[0]~3_combout\);

-- Location: LABCELL_X67_Y3_N3
\CNT4|cnt[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT4|cnt[0]~0_combout\ = ( \CNT4|cnt[3]~23_combout\ & ( \CLRHr0~combout\ ) ) # ( !\CNT4|cnt[3]~23_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_CLRHr0~combout\,
	dataf => \CNT4|ALT_INV_cnt[3]~23_combout\,
	combout => \CNT4|cnt[0]~0_combout\);

-- Location: FF_X67_Y3_N20
\CNT4|cnt[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LDHr0~combout\,
	d => \CNT4|cnt[0]~3_combout\,
	clrn => \CNT4|ALT_INV_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT4|cnt[0]~_emulated_q\);

-- Location: LABCELL_X67_Y3_N21
\CNT4|cnt[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT4|cnt[0]~2_combout\ = ( \CNT4|cnt[0]~_emulated_q\ & ( (!\CLRHr0~combout\ & ((!\CNT4|cnt[3]~23_combout\ & ((\SW[0]~input_o\))) # (\CNT4|cnt[3]~23_combout\ & (!\CNT4|cnt[0]~1_combout\)))) ) ) # ( !\CNT4|cnt[0]~_emulated_q\ & ( (!\CLRHr0~combout\ & 
-- ((!\CNT4|cnt[3]~23_combout\ & ((\SW[0]~input_o\))) # (\CNT4|cnt[3]~23_combout\ & (\CNT4|cnt[0]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100001101000000100000111000000010000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT4|ALT_INV_cnt[0]~1_combout\,
	datab => \CNT4|ALT_INV_cnt[3]~23_combout\,
	datac => \ALT_INV_CLRHr0~combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \CNT4|ALT_INV_cnt[0]~_emulated_q\,
	combout => \CNT4|cnt[0]~2_combout\);

-- Location: LABCELL_X67_Y3_N45
\CNT4|cnt[1]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT4|cnt[1]~22_combout\ = ( \CNT4|cnt[0]~2_combout\ & ( !\CNT4|cnt[1]~14_combout\ ) ) # ( !\CNT4|cnt[0]~2_combout\ & ( \CNT4|cnt[1]~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CNT4|ALT_INV_cnt[1]~14_combout\,
	dataf => \CNT4|ALT_INV_cnt[0]~2_combout\,
	combout => \CNT4|cnt[1]~22_combout\);

-- Location: LABCELL_X67_Y3_N27
\CNT4|cnt[1]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT4|cnt[1]~15_combout\ = ( \CNT4|cnt[1]~22_combout\ & ( !\CNT4|cnt[1]~13_combout\ ) ) # ( !\CNT4|cnt[1]~22_combout\ & ( \CNT4|cnt[1]~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CNT4|ALT_INV_cnt[1]~13_combout\,
	dataf => \CNT4|ALT_INV_cnt[1]~22_combout\,
	combout => \CNT4|cnt[1]~15_combout\);

-- Location: FF_X67_Y3_N29
\CNT4|cnt[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LDHr0~combout\,
	d => \CNT4|cnt[1]~15_combout\,
	clrn => \CNT4|ALT_INV_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT4|cnt[1]~_emulated_q\);

-- Location: LABCELL_X67_Y3_N24
\CNT4|cnt[1]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT4|cnt[1]~14_combout\ = ( \CNT4|cnt[1]~13_combout\ & ( (!\CLRHr0~combout\ & ((!\CNT4|cnt[3]~23_combout\ & (\SW[1]~input_o\)) # (\CNT4|cnt[3]~23_combout\ & ((!\CNT4|cnt[1]~_emulated_q\))))) ) ) # ( !\CNT4|cnt[1]~13_combout\ & ( (!\CLRHr0~combout\ & 
-- ((!\CNT4|cnt[3]~23_combout\ & (\SW[1]~input_o\)) # (\CNT4|cnt[3]~23_combout\ & ((\CNT4|cnt[1]~_emulated_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001000000111000001110000001000000111000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT4|ALT_INV_cnt[3]~23_combout\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_CLRHr0~combout\,
	datad => \CNT4|ALT_INV_cnt[1]~_emulated_q\,
	dataf => \CNT4|ALT_INV_cnt[1]~13_combout\,
	combout => \CNT4|cnt[1]~14_combout\);

-- Location: LABCELL_X68_Y4_N15
\CLRHr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CLRHr0~0_combout\ = ( \LDHr0~combout\ & ( (!\KEY[0]~input_o\) # ((\CNT5|cnt[1]~14_combout\ & (\CNT4|cnt[1]~14_combout\ & \CNT4|cnt[0]~2_combout\))) ) ) # ( !\LDHr0~combout\ & ( !\KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100011111000011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT5|ALT_INV_cnt[1]~14_combout\,
	datab => \CNT4|ALT_INV_cnt[1]~14_combout\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \CNT4|ALT_INV_cnt[0]~2_combout\,
	dataf => \ALT_INV_LDHr0~combout\,
	combout => \CLRHr0~0_combout\);

-- Location: LABCELL_X68_Y4_N57
\CNT5|cnt[3]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT5|cnt[3]~22_combout\ = ( \CLRHr0~0_combout\ ) # ( !\CLRHr0~0_combout\ & ( \KEY[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[2]~input_o\,
	dataf => \ALT_INV_CLRHr0~0_combout\,
	combout => \CNT5|cnt[3]~22_combout\);

-- Location: LABCELL_X67_Y4_N39
\CNT5|cnt[1]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT5|cnt[1]~13_combout\ = ( !\CLRHr0~0_combout\ & ( (!\CNT5|cnt[3]~22_combout\ & (\SW[5]~input_o\)) # (\CNT5|cnt[3]~22_combout\ & ((\CNT5|cnt[1]~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datac => \CNT5|ALT_INV_cnt[1]~13_combout\,
	datad => \CNT5|ALT_INV_cnt[3]~22_combout\,
	dataf => \ALT_INV_CLRHr0~0_combout\,
	combout => \CNT5|cnt[1]~13_combout\);

-- Location: LABCELL_X67_Y4_N3
LDHr1 : cyclonev_lcell_comb
-- Equation(s):
-- \LDHr1~combout\ = LCELL(( \CNT4|cnt[0]~2_combout\ & ( (\CNT4|cnt[3]~6_combout\ & \LDHr0~combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CNT4|ALT_INV_cnt[3]~6_combout\,
	datad => \ALT_INV_LDHr0~combout\,
	dataf => \CNT4|ALT_INV_cnt[0]~2_combout\,
	combout => \LDHr1~combout\);

-- Location: LABCELL_X68_Y4_N54
\CNT5|cnt[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT5|cnt[0]~1_combout\ = ( !\CLRHr0~0_combout\ & ( (!\CNT5|cnt[3]~22_combout\ & (\SW[4]~input_o\)) # (\CNT5|cnt[3]~22_combout\ & ((\CNT5|cnt[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CNT5|ALT_INV_cnt[3]~22_combout\,
	datac => \ALT_INV_SW[4]~input_o\,
	datad => \CNT5|ALT_INV_cnt[0]~1_combout\,
	dataf => \ALT_INV_CLRHr0~0_combout\,
	combout => \CNT5|cnt[0]~1_combout\);

-- Location: LABCELL_X68_Y4_N0
\CNT5|cnt[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT5|cnt[0]~3_combout\ = ( \CNT5|cnt[0]~1_combout\ & ( \CNT5|cnt[0]~2_combout\ ) ) # ( !\CNT5|cnt[0]~1_combout\ & ( !\CNT5|cnt[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CNT5|ALT_INV_cnt[0]~2_combout\,
	dataf => \CNT5|ALT_INV_cnt[0]~1_combout\,
	combout => \CNT5|cnt[0]~3_combout\);

-- Location: LABCELL_X68_Y4_N39
\CNT5|cnt[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT5|cnt[0]~0_combout\ = ( \CNT5|cnt[3]~22_combout\ & ( \CLRHr0~0_combout\ ) ) # ( !\CNT5|cnt[3]~22_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_CLRHr0~0_combout\,
	dataf => \CNT5|ALT_INV_cnt[3]~22_combout\,
	combout => \CNT5|cnt[0]~0_combout\);

-- Location: FF_X68_Y4_N2
\CNT5|cnt[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LDHr1~combout\,
	d => \CNT5|cnt[0]~3_combout\,
	clrn => \CNT5|ALT_INV_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT5|cnt[0]~_emulated_q\);

-- Location: LABCELL_X68_Y4_N18
\CNT5|cnt[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT5|cnt[0]~2_combout\ = ( \CNT5|cnt[3]~22_combout\ & ( (!\CLRHr0~0_combout\ & (!\CNT5|cnt[0]~_emulated_q\ $ (!\CNT5|cnt[0]~1_combout\))) ) ) # ( !\CNT5|cnt[3]~22_combout\ & ( (\SW[4]~input_o\ & !\CLRHr0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010000001100110000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datab => \ALT_INV_CLRHr0~0_combout\,
	datac => \CNT5|ALT_INV_cnt[0]~_emulated_q\,
	datad => \CNT5|ALT_INV_cnt[0]~1_combout\,
	dataf => \CNT5|ALT_INV_cnt[3]~22_combout\,
	combout => \CNT5|cnt[0]~2_combout\);

-- Location: LABCELL_X67_Y4_N21
\CNT5|cnt[1]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT5|cnt[1]~23_combout\ = ( \CNT5|cnt[1]~14_combout\ & ( !\CNT5|cnt[0]~2_combout\ ) ) # ( !\CNT5|cnt[1]~14_combout\ & ( \CNT5|cnt[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CNT5|ALT_INV_cnt[0]~2_combout\,
	dataf => \CNT5|ALT_INV_cnt[1]~14_combout\,
	combout => \CNT5|cnt[1]~23_combout\);

-- Location: LABCELL_X67_Y4_N30
\CNT5|cnt[1]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT5|cnt[1]~15_combout\ = ( \CNT5|cnt[1]~23_combout\ & ( !\CNT5|cnt[1]~13_combout\ ) ) # ( !\CNT5|cnt[1]~23_combout\ & ( \CNT5|cnt[1]~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CNT5|ALT_INV_cnt[1]~13_combout\,
	dataf => \CNT5|ALT_INV_cnt[1]~23_combout\,
	combout => \CNT5|cnt[1]~15_combout\);

-- Location: FF_X67_Y4_N32
\CNT5|cnt[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LDHr1~combout\,
	d => \CNT5|cnt[1]~15_combout\,
	clrn => \CNT5|ALT_INV_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT5|cnt[1]~_emulated_q\);

-- Location: LABCELL_X67_Y4_N54
\CNT5|cnt[1]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT5|cnt[1]~14_combout\ = ( \CNT5|cnt[1]~_emulated_q\ & ( (!\CLRHr0~0_combout\ & ((!\CNT5|cnt[3]~22_combout\ & ((\SW[5]~input_o\))) # (\CNT5|cnt[3]~22_combout\ & (!\CNT5|cnt[1]~13_combout\)))) ) ) # ( !\CNT5|cnt[1]~_emulated_q\ & ( (!\CLRHr0~0_combout\ & 
-- ((!\CNT5|cnt[3]~22_combout\ & ((\SW[5]~input_o\))) # (\CNT5|cnt[3]~22_combout\ & (\CNT5|cnt[1]~13_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010000010100010001000001010100010000000101010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CLRHr0~0_combout\,
	datab => \CNT5|ALT_INV_cnt[1]~13_combout\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \CNT5|ALT_INV_cnt[3]~22_combout\,
	dataf => \CNT5|ALT_INV_cnt[1]~_emulated_q\,
	combout => \CNT5|cnt[1]~14_combout\);

-- Location: LABCELL_X68_Y4_N48
CLRHr0 : cyclonev_lcell_comb
-- Equation(s):
-- \CLRHr0~combout\ = ( \CNT4|cnt[0]~2_combout\ & ( \LDHr0~combout\ & ( ((!\KEY[0]~input_o\) # ((\CNT5|cnt[1]~14_combout\ & \CNT4|cnt[1]~14_combout\))) # (\CNT4|cnt[3]~6_combout\) ) ) ) # ( !\CNT4|cnt[0]~2_combout\ & ( \LDHr0~combout\ & ( !\KEY[0]~input_o\ ) 
-- ) ) # ( \CNT4|cnt[0]~2_combout\ & ( !\LDHr0~combout\ & ( !\KEY[0]~input_o\ ) ) ) # ( !\CNT4|cnt[0]~2_combout\ & ( !\LDHr0~combout\ & ( !\KEY[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001101110111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT4|ALT_INV_cnt[3]~6_combout\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \CNT5|ALT_INV_cnt[1]~14_combout\,
	datad => \CNT4|ALT_INV_cnt[1]~14_combout\,
	datae => \CNT4|ALT_INV_cnt[0]~2_combout\,
	dataf => \ALT_INV_LDHr0~combout\,
	combout => \CLRHr0~combout\);

-- Location: LABCELL_X67_Y3_N48
\CNT4|cnt[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT4|cnt[2]~9_combout\ = ( \CNT4|cnt[3]~23_combout\ & ( (!\CLRHr0~combout\ & \CNT4|cnt[2]~9_combout\) ) ) # ( !\CNT4|cnt[3]~23_combout\ & ( (!\CLRHr0~combout\ & \SW[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CLRHr0~combout\,
	datac => \CNT4|ALT_INV_cnt[2]~9_combout\,
	datad => \ALT_INV_SW[2]~input_o\,
	dataf => \CNT4|ALT_INV_cnt[3]~23_combout\,
	combout => \CNT4|cnt[2]~9_combout\);

-- Location: LABCELL_X67_Y3_N54
\CNT4|cnt[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT4|cnt[2]~11_combout\ = ( \CNT4|cnt[1]~14_combout\ & ( !\CNT4|cnt[2]~9_combout\ $ (!\CNT4|cnt[2]~10_combout\ $ (\CNT4|cnt[0]~2_combout\)) ) ) # ( !\CNT4|cnt[1]~14_combout\ & ( !\CNT4|cnt[2]~9_combout\ $ (!\CNT4|cnt[2]~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT4|ALT_INV_cnt[2]~9_combout\,
	datac => \CNT4|ALT_INV_cnt[2]~10_combout\,
	datad => \CNT4|ALT_INV_cnt[0]~2_combout\,
	dataf => \CNT4|ALT_INV_cnt[1]~14_combout\,
	combout => \CNT4|cnt[2]~11_combout\);

-- Location: FF_X67_Y3_N56
\CNT4|cnt[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LDHr0~combout\,
	d => \CNT4|cnt[2]~11_combout\,
	clrn => \CNT4|ALT_INV_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT4|cnt[2]~_emulated_q\);

-- Location: LABCELL_X67_Y3_N57
\CNT4|cnt[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT4|cnt[2]~10_combout\ = ( \CNT4|cnt[3]~23_combout\ & ( (!\CLRHr0~combout\ & (!\CNT4|cnt[2]~9_combout\ $ (!\CNT4|cnt[2]~_emulated_q\))) ) ) # ( !\CNT4|cnt[3]~23_combout\ & ( (!\CLRHr0~combout\ & \SW[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT4|ALT_INV_cnt[2]~9_combout\,
	datab => \ALT_INV_CLRHr0~combout\,
	datac => \CNT4|ALT_INV_cnt[2]~_emulated_q\,
	datad => \ALT_INV_SW[2]~input_o\,
	dataf => \CNT4|ALT_INV_cnt[3]~23_combout\,
	combout => \CNT4|cnt[2]~10_combout\);

-- Location: LABCELL_X67_Y3_N9
\CNT4|cnt[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT4|cnt[3]~5_combout\ = ( !\CLRHr0~combout\ & ( (!\CNT4|cnt[3]~23_combout\ & (\SW[3]~input_o\)) # (\CNT4|cnt[3]~23_combout\ & ((\CNT4|cnt[3]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT4|ALT_INV_cnt[3]~23_combout\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \CNT4|ALT_INV_cnt[3]~5_combout\,
	dataf => \ALT_INV_CLRHr0~combout\,
	combout => \CNT4|cnt[3]~5_combout\);

-- Location: LABCELL_X67_Y3_N0
\CNT4|cnt[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT4|cnt[3]~7_combout\ = ( \CNT4|cnt[0]~2_combout\ & ( !\CNT4|cnt[3]~6_combout\ $ (!\CNT4|cnt[3]~5_combout\ $ (((\CNT4|cnt[1]~14_combout\ & \CNT4|cnt[2]~10_combout\)))) ) ) # ( !\CNT4|cnt[0]~2_combout\ & ( !\CNT4|cnt[3]~6_combout\ $ 
-- (!\CNT4|cnt[3]~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110000110110110010010011011011001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT4|ALT_INV_cnt[1]~14_combout\,
	datab => \CNT4|ALT_INV_cnt[3]~6_combout\,
	datac => \CNT4|ALT_INV_cnt[2]~10_combout\,
	datad => \CNT4|ALT_INV_cnt[3]~5_combout\,
	dataf => \CNT4|ALT_INV_cnt[0]~2_combout\,
	combout => \CNT4|cnt[3]~7_combout\);

-- Location: FF_X67_Y3_N2
\CNT4|cnt[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LDHr0~combout\,
	d => \CNT4|cnt[3]~7_combout\,
	clrn => \CNT4|ALT_INV_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT4|cnt[3]~_emulated_q\);

-- Location: LABCELL_X67_Y3_N39
\CNT4|cnt[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT4|cnt[3]~6_combout\ = ( \CNT4|cnt[3]~_emulated_q\ & ( \CNT4|cnt[3]~5_combout\ & ( (!\CLRHr0~combout\ & (\SW[3]~input_o\ & !\CNT4|cnt[3]~23_combout\)) ) ) ) # ( !\CNT4|cnt[3]~_emulated_q\ & ( \CNT4|cnt[3]~5_combout\ & ( (!\CLRHr0~combout\ & 
-- ((\CNT4|cnt[3]~23_combout\) # (\SW[3]~input_o\))) ) ) ) # ( \CNT4|cnt[3]~_emulated_q\ & ( !\CNT4|cnt[3]~5_combout\ & ( (!\CLRHr0~combout\ & ((\CNT4|cnt[3]~23_combout\) # (\SW[3]~input_o\))) ) ) ) # ( !\CNT4|cnt[3]~_emulated_q\ & ( !\CNT4|cnt[3]~5_combout\ 
-- & ( (!\CLRHr0~combout\ & (\SW[3]~input_o\ & !\CNT4|cnt[3]~23_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000101010101000100010101010100010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CLRHr0~combout\,
	datab => \ALT_INV_SW[3]~input_o\,
	datad => \CNT4|ALT_INV_cnt[3]~23_combout\,
	datae => \CNT4|ALT_INV_cnt[3]~_emulated_q\,
	dataf => \CNT4|ALT_INV_cnt[3]~5_combout\,
	combout => \CNT4|cnt[3]~6_combout\);

-- Location: LABCELL_X67_Y3_N30
\SEG5|HEX0[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG5|HEX0[0]~0_combout\ = ( \CNT4|cnt[1]~14_combout\ & ( (\CNT4|cnt[3]~6_combout\ & (\CNT4|cnt[0]~2_combout\ & !\CNT4|cnt[2]~10_combout\)) ) ) # ( !\CNT4|cnt[1]~14_combout\ & ( (!\CNT4|cnt[3]~6_combout\ & (!\CNT4|cnt[0]~2_combout\ $ 
-- (!\CNT4|cnt[2]~10_combout\))) # (\CNT4|cnt[3]~6_combout\ & (\CNT4|cnt[0]~2_combout\ & \CNT4|cnt[2]~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000011000011001100001100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CNT4|ALT_INV_cnt[3]~6_combout\,
	datac => \CNT4|ALT_INV_cnt[0]~2_combout\,
	datad => \CNT4|ALT_INV_cnt[2]~10_combout\,
	dataf => \CNT4|ALT_INV_cnt[1]~14_combout\,
	combout => \SEG5|HEX0[0]~0_combout\);

-- Location: LABCELL_X67_Y3_N42
\SEG5|HEX0[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG5|HEX0[1]~1_combout\ = ( \CNT4|cnt[3]~6_combout\ & ( (!\CNT4|cnt[0]~2_combout\ & ((\CNT4|cnt[2]~10_combout\))) # (\CNT4|cnt[0]~2_combout\ & (\CNT4|cnt[1]~14_combout\)) ) ) # ( !\CNT4|cnt[3]~6_combout\ & ( (\CNT4|cnt[2]~10_combout\ & 
-- (!\CNT4|cnt[1]~14_combout\ $ (!\CNT4|cnt[0]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101000000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT4|ALT_INV_cnt[1]~14_combout\,
	datac => \CNT4|ALT_INV_cnt[0]~2_combout\,
	datad => \CNT4|ALT_INV_cnt[2]~10_combout\,
	dataf => \CNT4|ALT_INV_cnt[3]~6_combout\,
	combout => \SEG5|HEX0[1]~1_combout\);

-- Location: LABCELL_X70_Y4_N27
\SEG5|HEX0[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG5|HEX0[2]~2_combout\ = ( \CNT4|cnt[1]~14_combout\ & ( (!\CNT4|cnt[3]~6_combout\ & (!\CNT4|cnt[0]~2_combout\ & !\CNT4|cnt[2]~10_combout\)) # (\CNT4|cnt[3]~6_combout\ & ((\CNT4|cnt[2]~10_combout\))) ) ) # ( !\CNT4|cnt[1]~14_combout\ & ( 
-- (!\CNT4|cnt[0]~2_combout\ & (\CNT4|cnt[3]~6_combout\ & \CNT4|cnt[2]~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010100000000011111010000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT4|ALT_INV_cnt[0]~2_combout\,
	datac => \CNT4|ALT_INV_cnt[3]~6_combout\,
	datad => \CNT4|ALT_INV_cnt[2]~10_combout\,
	dataf => \CNT4|ALT_INV_cnt[1]~14_combout\,
	combout => \SEG5|HEX0[2]~2_combout\);

-- Location: LABCELL_X67_Y3_N6
\SEG5|HEX0[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG5|HEX0[3]~3_combout\ = ( \CNT4|cnt[1]~14_combout\ & ( (!\CNT4|cnt[0]~2_combout\ & (\CNT4|cnt[3]~6_combout\ & !\CNT4|cnt[2]~10_combout\)) # (\CNT4|cnt[0]~2_combout\ & ((\CNT4|cnt[2]~10_combout\))) ) ) # ( !\CNT4|cnt[1]~14_combout\ & ( 
-- (!\CNT4|cnt[0]~2_combout\ & (!\CNT4|cnt[3]~6_combout\ & \CNT4|cnt[2]~10_combout\)) # (\CNT4|cnt[0]~2_combout\ & ((!\CNT4|cnt[2]~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111000000000011111100000000110000000011110011000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CNT4|ALT_INV_cnt[3]~6_combout\,
	datac => \CNT4|ALT_INV_cnt[0]~2_combout\,
	datad => \CNT4|ALT_INV_cnt[2]~10_combout\,
	dataf => \CNT4|ALT_INV_cnt[1]~14_combout\,
	combout => \SEG5|HEX0[3]~3_combout\);

-- Location: LABCELL_X70_Y4_N24
\SEG5|HEX0[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG5|HEX0[4]~4_combout\ = ( \CNT4|cnt[1]~14_combout\ & ( (\CNT4|cnt[0]~2_combout\ & !\CNT4|cnt[3]~6_combout\) ) ) # ( !\CNT4|cnt[1]~14_combout\ & ( (!\CNT4|cnt[2]~10_combout\ & (\CNT4|cnt[0]~2_combout\)) # (\CNT4|cnt[2]~10_combout\ & 
-- ((!\CNT4|cnt[3]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110001011100010111000101110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT4|ALT_INV_cnt[0]~2_combout\,
	datab => \CNT4|ALT_INV_cnt[3]~6_combout\,
	datac => \CNT4|ALT_INV_cnt[2]~10_combout\,
	dataf => \CNT4|ALT_INV_cnt[1]~14_combout\,
	combout => \SEG5|HEX0[4]~4_combout\);

-- Location: LABCELL_X70_Y4_N45
\SEG5|HEX0[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG5|HEX0[5]~5_combout\ = ( \CNT4|cnt[0]~2_combout\ & ( !\CNT4|cnt[3]~6_combout\ $ (((!\CNT4|cnt[1]~14_combout\ & \CNT4|cnt[2]~10_combout\))) ) ) # ( !\CNT4|cnt[0]~2_combout\ & ( (\CNT4|cnt[1]~14_combout\ & (!\CNT4|cnt[3]~6_combout\ & 
-- !\CNT4|cnt[2]~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000011110000010110101111000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT4|ALT_INV_cnt[1]~14_combout\,
	datac => \CNT4|ALT_INV_cnt[3]~6_combout\,
	datad => \CNT4|ALT_INV_cnt[2]~10_combout\,
	dataf => \CNT4|ALT_INV_cnt[0]~2_combout\,
	combout => \SEG5|HEX0[5]~5_combout\);

-- Location: LABCELL_X67_Y3_N15
\SEG5|HEX0[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG5|HEX0[6]~6_combout\ = ( \CNT4|cnt[0]~2_combout\ & ( (!\CNT4|cnt[3]~6_combout\ & (!\CNT4|cnt[1]~14_combout\ $ (\CNT4|cnt[2]~10_combout\))) ) ) # ( !\CNT4|cnt[0]~2_combout\ & ( (!\CNT4|cnt[1]~14_combout\ & (!\CNT4|cnt[3]~6_combout\ $ 
-- (\CNT4|cnt[2]~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101010100000010100001010000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT4|ALT_INV_cnt[1]~14_combout\,
	datac => \CNT4|ALT_INV_cnt[3]~6_combout\,
	datad => \CNT4|ALT_INV_cnt[2]~10_combout\,
	dataf => \CNT4|ALT_INV_cnt[0]~2_combout\,
	combout => \SEG5|HEX0[6]~6_combout\);

-- Location: LABCELL_X68_Y4_N42
\CNT5|cnt[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT5|cnt[2]~9_combout\ = ( !\CLRHr0~0_combout\ & ( (!\CNT5|cnt[3]~22_combout\ & (\SW[6]~input_o\)) # (\CNT5|cnt[3]~22_combout\ & ((\CNT5|cnt[2]~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datac => \CNT5|ALT_INV_cnt[2]~9_combout\,
	datad => \CNT5|ALT_INV_cnt[3]~22_combout\,
	dataf => \ALT_INV_CLRHr0~0_combout\,
	combout => \CNT5|cnt[2]~9_combout\);

-- Location: LABCELL_X68_Y4_N12
\CNT5|cnt[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT5|cnt[2]~11_combout\ = ( \CNT5|cnt[2]~10_combout\ & ( !\CNT5|cnt[2]~9_combout\ $ (((\CNT5|cnt[1]~14_combout\ & \CNT5|cnt[0]~2_combout\))) ) ) # ( !\CNT5|cnt[2]~10_combout\ & ( !\CNT5|cnt[2]~9_combout\ $ (((!\CNT5|cnt[1]~14_combout\) # 
-- (!\CNT5|cnt[0]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011010000011110101101011110000101001011111000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT5|ALT_INV_cnt[1]~14_combout\,
	datac => \CNT5|ALT_INV_cnt[2]~9_combout\,
	datad => \CNT5|ALT_INV_cnt[0]~2_combout\,
	dataf => \CNT5|ALT_INV_cnt[2]~10_combout\,
	combout => \CNT5|cnt[2]~11_combout\);

-- Location: FF_X68_Y4_N13
\CNT5|cnt[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LDHr1~combout\,
	d => \CNT5|cnt[2]~11_combout\,
	clrn => \CNT5|ALT_INV_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT5|cnt[2]~_emulated_q\);

-- Location: LABCELL_X68_Y4_N36
\CNT5|cnt[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT5|cnt[2]~10_combout\ = ( \CNT5|cnt[3]~22_combout\ & ( (!\CLRHr0~0_combout\ & (!\CNT5|cnt[2]~9_combout\ $ (!\CNT5|cnt[2]~_emulated_q\))) ) ) # ( !\CNT5|cnt[3]~22_combout\ & ( (\SW[6]~input_o\ & !\CLRHr0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010000001100110000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ALT_INV_CLRHr0~0_combout\,
	datac => \CNT5|ALT_INV_cnt[2]~9_combout\,
	datad => \CNT5|ALT_INV_cnt[2]~_emulated_q\,
	dataf => \CNT5|ALT_INV_cnt[3]~22_combout\,
	combout => \CNT5|cnt[2]~10_combout\);

-- Location: LABCELL_X67_Y4_N27
\CNT5|cnt[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT5|cnt[3]~5_combout\ = ( !\CLRHr0~0_combout\ & ( (!\CNT5|cnt[3]~22_combout\ & (\SW[7]~input_o\)) # (\CNT5|cnt[3]~22_combout\ & ((\CNT5|cnt[3]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \CNT5|ALT_INV_cnt[3]~5_combout\,
	datad => \CNT5|ALT_INV_cnt[3]~22_combout\,
	dataf => \ALT_INV_CLRHr0~0_combout\,
	combout => \CNT5|cnt[3]~5_combout\);

-- Location: LABCELL_X68_Y4_N27
\CNT5|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT5|Add0~0_combout\ = ( \CNT5|cnt[1]~14_combout\ & ( \CNT5|cnt[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CNT5|ALT_INV_cnt[0]~2_combout\,
	dataf => \CNT5|ALT_INV_cnt[1]~14_combout\,
	combout => \CNT5|Add0~0_combout\);

-- Location: LABCELL_X68_Y4_N24
\CNT5|cnt[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT5|cnt[3]~7_combout\ = ( \CNT5|Add0~0_combout\ & ( !\CNT5|cnt[3]~6_combout\ $ (!\CNT5|cnt[2]~10_combout\ $ (\CNT5|cnt[3]~5_combout\)) ) ) # ( !\CNT5|Add0~0_combout\ & ( !\CNT5|cnt[3]~6_combout\ $ (!\CNT5|cnt[3]~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT5|ALT_INV_cnt[3]~6_combout\,
	datac => \CNT5|ALT_INV_cnt[2]~10_combout\,
	datad => \CNT5|ALT_INV_cnt[3]~5_combout\,
	dataf => \CNT5|ALT_INV_Add0~0_combout\,
	combout => \CNT5|cnt[3]~7_combout\);

-- Location: FF_X68_Y4_N25
\CNT5|cnt[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LDHr1~combout\,
	d => \CNT5|cnt[3]~7_combout\,
	clrn => \CNT5|ALT_INV_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT5|cnt[3]~_emulated_q\);

-- Location: LABCELL_X67_Y4_N15
\CNT5|cnt[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CNT5|cnt[3]~6_combout\ = ( \CNT5|cnt[3]~22_combout\ & ( (!\CLRHr0~0_combout\ & (!\CNT5|cnt[3]~_emulated_q\ $ (!\CNT5|cnt[3]~5_combout\))) ) ) # ( !\CNT5|cnt[3]~22_combout\ & ( (!\CLRHr0~0_combout\ & \SW[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT5|ALT_INV_cnt[3]~_emulated_q\,
	datab => \CNT5|ALT_INV_cnt[3]~5_combout\,
	datac => \ALT_INV_CLRHr0~0_combout\,
	datad => \ALT_INV_SW[7]~input_o\,
	dataf => \CNT5|ALT_INV_cnt[3]~22_combout\,
	combout => \CNT5|cnt[3]~6_combout\);

-- Location: LABCELL_X70_Y4_N33
\SEG6|HEX0[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG6|HEX0[0]~0_combout\ = ( \CNT5|cnt[3]~6_combout\ & ( (\CNT5|cnt[0]~2_combout\ & (!\CNT5|cnt[2]~10_combout\ $ (!\CNT5|cnt[1]~14_combout\))) ) ) # ( !\CNT5|cnt[3]~6_combout\ & ( (!\CNT5|cnt[1]~14_combout\ & (!\CNT5|cnt[2]~10_combout\ $ 
-- (!\CNT5|cnt[0]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000000010110100000000000000101000010100000010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT5|ALT_INV_cnt[2]~10_combout\,
	datac => \CNT5|ALT_INV_cnt[0]~2_combout\,
	datad => \CNT5|ALT_INV_cnt[1]~14_combout\,
	dataf => \CNT5|ALT_INV_cnt[3]~6_combout\,
	combout => \SEG6|HEX0[0]~0_combout\);

-- Location: LABCELL_X70_Y4_N12
\SEG6|HEX0[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG6|HEX0[1]~1_combout\ = ( \CNT5|cnt[0]~2_combout\ & ( \CNT5|cnt[2]~10_combout\ & ( !\CNT5|cnt[3]~6_combout\ $ (\CNT5|cnt[1]~14_combout\) ) ) ) # ( !\CNT5|cnt[0]~2_combout\ & ( \CNT5|cnt[2]~10_combout\ & ( (\CNT5|cnt[1]~14_combout\) # 
-- (\CNT5|cnt[3]~6_combout\) ) ) ) # ( \CNT5|cnt[0]~2_combout\ & ( !\CNT5|cnt[2]~10_combout\ & ( (\CNT5|cnt[3]~6_combout\ & \CNT5|cnt[1]~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100111111001111111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CNT5|ALT_INV_cnt[3]~6_combout\,
	datac => \CNT5|ALT_INV_cnt[1]~14_combout\,
	datae => \CNT5|ALT_INV_cnt[0]~2_combout\,
	dataf => \CNT5|ALT_INV_cnt[2]~10_combout\,
	combout => \SEG6|HEX0[1]~1_combout\);

-- Location: LABCELL_X70_Y4_N30
\SEG6|HEX0[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG6|HEX0[2]~2_combout\ = ( \CNT5|cnt[3]~6_combout\ & ( (\CNT5|cnt[2]~10_combout\ & ((!\CNT5|cnt[0]~2_combout\) # (\CNT5|cnt[1]~14_combout\))) ) ) # ( !\CNT5|cnt[3]~6_combout\ & ( (!\CNT5|cnt[2]~10_combout\ & (!\CNT5|cnt[0]~2_combout\ & 
-- \CNT5|cnt[1]~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001000101010001010100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT5|ALT_INV_cnt[2]~10_combout\,
	datab => \CNT5|ALT_INV_cnt[0]~2_combout\,
	datac => \CNT5|ALT_INV_cnt[1]~14_combout\,
	dataf => \CNT5|ALT_INV_cnt[3]~6_combout\,
	combout => \SEG6|HEX0[2]~2_combout\);

-- Location: LABCELL_X70_Y4_N18
\SEG6|HEX0[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG6|HEX0\(3) = ( \CNT5|cnt[3]~6_combout\ & ( (!\CNT5|cnt[1]~14_combout\ & (!\CNT5|cnt[2]~10_combout\ & \CNT5|cnt[0]~2_combout\)) # (\CNT5|cnt[1]~14_combout\ & (!\CNT5|cnt[2]~10_combout\ $ (\CNT5|cnt[0]~2_combout\))) ) ) # ( !\CNT5|cnt[3]~6_combout\ & ( 
-- (!\CNT5|cnt[1]~14_combout\ & (!\CNT5|cnt[2]~10_combout\ $ (!\CNT5|cnt[0]~2_combout\))) # (\CNT5|cnt[1]~14_combout\ & (\CNT5|cnt[2]~10_combout\ & \CNT5|cnt[0]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100101000010101010010101010000101001010101000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT5|ALT_INV_cnt[1]~14_combout\,
	datac => \CNT5|ALT_INV_cnt[2]~10_combout\,
	datad => \CNT5|ALT_INV_cnt[0]~2_combout\,
	dataf => \CNT5|ALT_INV_cnt[3]~6_combout\,
	combout => \SEG6|HEX0\(3));

-- Location: LABCELL_X70_Y4_N36
\SEG6|HEX0[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG6|HEX0[4]~3_combout\ = ( \CNT5|cnt[2]~10_combout\ & ( (!\CNT5|cnt[3]~6_combout\ & ((!\CNT5|cnt[1]~14_combout\) # (\CNT5|cnt[0]~2_combout\))) ) ) # ( !\CNT5|cnt[2]~10_combout\ & ( (\CNT5|cnt[0]~2_combout\ & ((!\CNT5|cnt[1]~14_combout\) # 
-- (!\CNT5|cnt[3]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001110111010001000110011001000100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT5|ALT_INV_cnt[1]~14_combout\,
	datab => \CNT5|ALT_INV_cnt[3]~6_combout\,
	datad => \CNT5|ALT_INV_cnt[0]~2_combout\,
	dataf => \CNT5|ALT_INV_cnt[2]~10_combout\,
	combout => \SEG6|HEX0[4]~3_combout\);

-- Location: LABCELL_X70_Y4_N39
\SEG6|HEX0[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG6|HEX0[5]~4_combout\ = ( \CNT5|cnt[2]~10_combout\ & ( (\CNT5|cnt[0]~2_combout\ & (!\CNT5|cnt[1]~14_combout\ $ (!\CNT5|cnt[3]~6_combout\))) ) ) # ( !\CNT5|cnt[2]~10_combout\ & ( (!\CNT5|cnt[3]~6_combout\ & ((\CNT5|cnt[0]~2_combout\) # 
-- (\CNT5|cnt[1]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001001100010011000100110000000110000001100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CNT5|ALT_INV_cnt[1]~14_combout\,
	datab => \CNT5|ALT_INV_cnt[3]~6_combout\,
	datac => \CNT5|ALT_INV_cnt[0]~2_combout\,
	dataf => \CNT5|ALT_INV_cnt[2]~10_combout\,
	combout => \SEG6|HEX0[5]~4_combout\);

-- Location: LABCELL_X70_Y4_N6
\SEG6|HEX0[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEG6|HEX0\(6) = ( \CNT5|cnt[0]~2_combout\ & ( \CNT5|cnt[2]~10_combout\ & ( (!\CNT5|cnt[3]~6_combout\ & \CNT5|cnt[1]~14_combout\) ) ) ) # ( !\CNT5|cnt[0]~2_combout\ & ( \CNT5|cnt[2]~10_combout\ & ( (\CNT5|cnt[3]~6_combout\ & !\CNT5|cnt[1]~14_combout\) ) ) 
-- ) # ( \CNT5|cnt[0]~2_combout\ & ( !\CNT5|cnt[2]~10_combout\ & ( (!\CNT5|cnt[3]~6_combout\ & !\CNT5|cnt[1]~14_combout\) ) ) ) # ( !\CNT5|cnt[0]~2_combout\ & ( !\CNT5|cnt[2]~10_combout\ & ( (!\CNT5|cnt[3]~6_combout\ & !\CNT5|cnt[1]~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000110000001100000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CNT5|ALT_INV_cnt[3]~6_combout\,
	datac => \CNT5|ALT_INV_cnt[1]~14_combout\,
	datae => \CNT5|ALT_INV_cnt[0]~2_combout\,
	dataf => \CNT5|ALT_INV_cnt[2]~10_combout\,
	combout => \SEG6|HEX0\(6));

-- Location: IOIBUF_X38_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LABCELL_X51_Y64_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


