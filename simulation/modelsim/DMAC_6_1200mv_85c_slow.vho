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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/01/2026 01:20:04"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DMAC IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	cpu_addr : IN std_logic_vector(1 DOWNTO 0);
	cpu_write_en : IN std_logic;
	system_data : BUFFER std_logic_vector(31 DOWNTO 0);
	master_addr : BUFFER std_logic_vector(31 DOWNTO 0);
	master_rd : BUFFER std_logic;
	master_wr : BUFFER std_logic;
	master_ready : IN std_logic;
	dma_irq : BUFFER std_logic
	);
END DMAC;

-- Design Ports Information
-- master_addr[0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_addr[1]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_addr[2]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_addr[3]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_addr[4]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_addr[5]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_addr[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_addr[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_addr[8]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_addr[9]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_addr[10]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_addr[11]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_addr[12]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_addr[13]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_addr[14]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_addr[15]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_addr[16]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_addr[17]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_addr[18]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_addr[19]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_addr[20]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_addr[21]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_addr[22]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_addr[23]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_addr[24]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_addr[25]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_addr[26]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_addr[27]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_addr[28]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_addr[29]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_addr[30]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_addr[31]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_rd	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_wr	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dma_irq	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- system_data[0]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- system_data[1]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- system_data[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- system_data[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- system_data[4]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- system_data[5]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- system_data[6]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- system_data[7]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- system_data[8]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- system_data[9]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- system_data[10]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- system_data[11]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- system_data[12]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- system_data[13]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- system_data[14]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- system_data[15]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- system_data[16]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- system_data[17]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- system_data[18]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- system_data[19]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- system_data[20]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- system_data[21]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- system_data[22]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- system_data[23]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- system_data[24]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- system_data[25]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- system_data[26]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- system_data[27]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- system_data[28]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- system_data[29]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- system_data[30]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- system_data[31]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_write_en	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_addr[1]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_addr[0]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_ready	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DMAC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_cpu_addr : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_cpu_write_en : std_logic;
SIGNAL ww_system_data : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_master_addr : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_master_rd : std_logic;
SIGNAL ww_master_wr : std_logic;
SIGNAL ww_master_ready : std_logic;
SIGNAL ww_dma_irq : std_logic;
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \system_data[0]~output_o\ : std_logic;
SIGNAL \system_data[1]~output_o\ : std_logic;
SIGNAL \system_data[2]~output_o\ : std_logic;
SIGNAL \system_data[3]~output_o\ : std_logic;
SIGNAL \system_data[4]~output_o\ : std_logic;
SIGNAL \system_data[5]~output_o\ : std_logic;
SIGNAL \system_data[6]~output_o\ : std_logic;
SIGNAL \system_data[7]~output_o\ : std_logic;
SIGNAL \system_data[8]~output_o\ : std_logic;
SIGNAL \system_data[9]~output_o\ : std_logic;
SIGNAL \system_data[10]~output_o\ : std_logic;
SIGNAL \system_data[11]~output_o\ : std_logic;
SIGNAL \system_data[12]~output_o\ : std_logic;
SIGNAL \system_data[13]~output_o\ : std_logic;
SIGNAL \system_data[14]~output_o\ : std_logic;
SIGNAL \system_data[15]~output_o\ : std_logic;
SIGNAL \system_data[16]~output_o\ : std_logic;
SIGNAL \system_data[17]~output_o\ : std_logic;
SIGNAL \system_data[18]~output_o\ : std_logic;
SIGNAL \system_data[19]~output_o\ : std_logic;
SIGNAL \system_data[20]~output_o\ : std_logic;
SIGNAL \system_data[21]~output_o\ : std_logic;
SIGNAL \system_data[22]~output_o\ : std_logic;
SIGNAL \system_data[23]~output_o\ : std_logic;
SIGNAL \system_data[24]~output_o\ : std_logic;
SIGNAL \system_data[25]~output_o\ : std_logic;
SIGNAL \system_data[26]~output_o\ : std_logic;
SIGNAL \system_data[27]~output_o\ : std_logic;
SIGNAL \system_data[28]~output_o\ : std_logic;
SIGNAL \system_data[29]~output_o\ : std_logic;
SIGNAL \system_data[30]~output_o\ : std_logic;
SIGNAL \system_data[31]~output_o\ : std_logic;
SIGNAL \master_addr[0]~output_o\ : std_logic;
SIGNAL \master_addr[1]~output_o\ : std_logic;
SIGNAL \master_addr[2]~output_o\ : std_logic;
SIGNAL \master_addr[3]~output_o\ : std_logic;
SIGNAL \master_addr[4]~output_o\ : std_logic;
SIGNAL \master_addr[5]~output_o\ : std_logic;
SIGNAL \master_addr[6]~output_o\ : std_logic;
SIGNAL \master_addr[7]~output_o\ : std_logic;
SIGNAL \master_addr[8]~output_o\ : std_logic;
SIGNAL \master_addr[9]~output_o\ : std_logic;
SIGNAL \master_addr[10]~output_o\ : std_logic;
SIGNAL \master_addr[11]~output_o\ : std_logic;
SIGNAL \master_addr[12]~output_o\ : std_logic;
SIGNAL \master_addr[13]~output_o\ : std_logic;
SIGNAL \master_addr[14]~output_o\ : std_logic;
SIGNAL \master_addr[15]~output_o\ : std_logic;
SIGNAL \master_addr[16]~output_o\ : std_logic;
SIGNAL \master_addr[17]~output_o\ : std_logic;
SIGNAL \master_addr[18]~output_o\ : std_logic;
SIGNAL \master_addr[19]~output_o\ : std_logic;
SIGNAL \master_addr[20]~output_o\ : std_logic;
SIGNAL \master_addr[21]~output_o\ : std_logic;
SIGNAL \master_addr[22]~output_o\ : std_logic;
SIGNAL \master_addr[23]~output_o\ : std_logic;
SIGNAL \master_addr[24]~output_o\ : std_logic;
SIGNAL \master_addr[25]~output_o\ : std_logic;
SIGNAL \master_addr[26]~output_o\ : std_logic;
SIGNAL \master_addr[27]~output_o\ : std_logic;
SIGNAL \master_addr[28]~output_o\ : std_logic;
SIGNAL \master_addr[29]~output_o\ : std_logic;
SIGNAL \master_addr[30]~output_o\ : std_logic;
SIGNAL \master_addr[31]~output_o\ : std_logic;
SIGNAL \master_rd~output_o\ : std_logic;
SIGNAL \master_wr~output_o\ : std_logic;
SIGNAL \dma_irq~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \master_ready~input_o\ : std_logic;
SIGNAL \U_FSM|Selector17~0_combout\ : std_logic;
SIGNAL \system_data[0]~input_o\ : std_logic;
SIGNAL \U_FSM|rem_len[2]~16_combout\ : std_logic;
SIGNAL \system_data[2]~input_o\ : std_logic;
SIGNAL \reg_len[2]~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \cpu_addr[0]~input_o\ : std_logic;
SIGNAL \cpu_write_en~input_o\ : std_logic;
SIGNAL \cpu_addr[1]~input_o\ : std_logic;
SIGNAL \Mux64~1_combout\ : std_logic;
SIGNAL \U_FSM|Selector24~0_combout\ : std_logic;
SIGNAL \U_FSM|mem_write~0_combout\ : std_logic;
SIGNAL \U_FSM|mem_write~q\ : std_logic;
SIGNAL \U_FIFO|count[0]~5_combout\ : std_logic;
SIGNAL \U_FIFO|count[1]~7_cout\ : std_logic;
SIGNAL \U_FIFO|count[1]~8_combout\ : std_logic;
SIGNAL \U_FIFO|count[0]~14_combout\ : std_logic;
SIGNAL \U_FIFO|count[1]~9\ : std_logic;
SIGNAL \U_FIFO|count[2]~10_combout\ : std_logic;
SIGNAL \U_FSM|Selector19~0_combout\ : std_logic;
SIGNAL \U_FSM|Selector19~1_combout\ : std_logic;
SIGNAL \U_FSM|Selector16~0_combout\ : std_logic;
SIGNAL \U_FSM|current_state.IDLE~q\ : std_logic;
SIGNAL \U_FSM|Selector20~4_combout\ : std_logic;
SIGNAL \U_FSM|Selector20~3_combout\ : std_logic;
SIGNAL \U_FIFO|Equal0~0_combout\ : std_logic;
SIGNAL \U_FSM|Selector20~5_combout\ : std_logic;
SIGNAL \U_FSM|Selector20~6_combout\ : std_logic;
SIGNAL \U_FSM|Selector19~2_combout\ : std_logic;
SIGNAL \U_FSM|current_state.WRITE_BURST~q\ : std_logic;
SIGNAL \U_FSM|burst_cnt[0]~0_combout\ : std_logic;
SIGNAL \U_FSM|burst_cnt[0]~1_combout\ : std_logic;
SIGNAL \U_FSM|Selector23~0_combout\ : std_logic;
SIGNAL \U_FSM|Selector22~0_combout\ : std_logic;
SIGNAL \U_FSM|Selector22~1_combout\ : std_logic;
SIGNAL \U_FSM|Selector20~2_combout\ : std_logic;
SIGNAL \U_FSM|Selector20~8_combout\ : std_logic;
SIGNAL \U_FSM|Selector20~7_combout\ : std_logic;
SIGNAL \U_FSM|current_state.CHECK_COUNT~q\ : std_logic;
SIGNAL \U_FSM|rem_len[13]~44_combout\ : std_logic;
SIGNAL \U_FSM|rem_len[2]~17\ : std_logic;
SIGNAL \U_FSM|rem_len[3]~18_combout\ : std_logic;
SIGNAL \system_data[3]~input_o\ : std_logic;
SIGNAL \reg_len[3]~feeder_combout\ : std_logic;
SIGNAL \U_FSM|rem_len[3]~19\ : std_logic;
SIGNAL \U_FSM|rem_len[4]~20_combout\ : std_logic;
SIGNAL \system_data[4]~input_o\ : std_logic;
SIGNAL \reg_len[4]~feeder_combout\ : std_logic;
SIGNAL \U_FSM|rem_len[4]~21\ : std_logic;
SIGNAL \U_FSM|rem_len[5]~22_combout\ : std_logic;
SIGNAL \system_data[5]~input_o\ : std_logic;
SIGNAL \U_FSM|rem_len[5]~23\ : std_logic;
SIGNAL \U_FSM|rem_len[6]~24_combout\ : std_logic;
SIGNAL \system_data[6]~input_o\ : std_logic;
SIGNAL \reg_len[6]~feeder_combout\ : std_logic;
SIGNAL \U_FSM|rem_len[6]~25\ : std_logic;
SIGNAL \U_FSM|rem_len[7]~26_combout\ : std_logic;
SIGNAL \system_data[7]~input_o\ : std_logic;
SIGNAL \U_FSM|rem_len[7]~27\ : std_logic;
SIGNAL \U_FSM|rem_len[8]~28_combout\ : std_logic;
SIGNAL \system_data[8]~input_o\ : std_logic;
SIGNAL \U_FSM|rem_len[8]~29\ : std_logic;
SIGNAL \U_FSM|rem_len[9]~30_combout\ : std_logic;
SIGNAL \system_data[9]~input_o\ : std_logic;
SIGNAL \reg_len[9]~feeder_combout\ : std_logic;
SIGNAL \U_FSM|rem_len[9]~31\ : std_logic;
SIGNAL \U_FSM|rem_len[10]~32_combout\ : std_logic;
SIGNAL \system_data[10]~input_o\ : std_logic;
SIGNAL \reg_len[10]~feeder_combout\ : std_logic;
SIGNAL \U_FSM|rem_len[10]~33\ : std_logic;
SIGNAL \U_FSM|rem_len[11]~34_combout\ : std_logic;
SIGNAL \system_data[11]~input_o\ : std_logic;
SIGNAL \U_FSM|rem_len[11]~35\ : std_logic;
SIGNAL \U_FSM|rem_len[12]~36_combout\ : std_logic;
SIGNAL \system_data[12]~input_o\ : std_logic;
SIGNAL \reg_len[12]~feeder_combout\ : std_logic;
SIGNAL \U_FSM|rem_len[12]~37\ : std_logic;
SIGNAL \U_FSM|rem_len[13]~38_combout\ : std_logic;
SIGNAL \system_data[13]~input_o\ : std_logic;
SIGNAL \reg_len[13]~feeder_combout\ : std_logic;
SIGNAL \U_FSM|rem_len[13]~39\ : std_logic;
SIGNAL \U_FSM|rem_len[14]~40_combout\ : std_logic;
SIGNAL \system_data[14]~input_o\ : std_logic;
SIGNAL \reg_len[14]~feeder_combout\ : std_logic;
SIGNAL \U_FSM|rem_len[14]~41\ : std_logic;
SIGNAL \U_FSM|rem_len[15]~42_combout\ : std_logic;
SIGNAL \system_data[15]~input_o\ : std_logic;
SIGNAL \reg_len[15]~feeder_combout\ : std_logic;
SIGNAL \U_FSM|LessThan0~3_combout\ : std_logic;
SIGNAL \U_FSM|LessThan0~2_combout\ : std_logic;
SIGNAL \U_FSM|LessThan0~1_combout\ : std_logic;
SIGNAL \system_data[1]~input_o\ : std_logic;
SIGNAL \U_FSM|rem_len[1]~feeder_combout\ : std_logic;
SIGNAL \reg_len[0]~feeder_combout\ : std_logic;
SIGNAL \U_FSM|LessThan0~0_combout\ : std_logic;
SIGNAL \U_FSM|LessThan0~4_combout\ : std_logic;
SIGNAL \U_FSM|Selector21~2_combout\ : std_logic;
SIGNAL \U_FSM|current_state.DONE~q\ : std_logic;
SIGNAL \U_FSM|Selector0~0_combout\ : std_logic;
SIGNAL \U_FSM|dma_busy~q\ : std_logic;
SIGNAL \reg_ctrl~0_combout\ : std_logic;
SIGNAL \reg_ctrl~1_combout\ : std_logic;
SIGNAL \U_FSM|Selector21~3_combout\ : std_logic;
SIGNAL \U_FSM|Selector17~1_combout\ : std_logic;
SIGNAL \U_FSM|current_state.REQ_BUS~q\ : std_logic;
SIGNAL \U_FSM|Selector18~0_combout\ : std_logic;
SIGNAL \U_FSM|Selector18~1_combout\ : std_logic;
SIGNAL \U_FSM|current_state.READ_BURST~q\ : std_logic;
SIGNAL \U_FSM|mem_read~0_combout\ : std_logic;
SIGNAL \U_FSM|mem_read~q\ : std_logic;
SIGNAL \U_FIFO|process_0~0_combout\ : std_logic;
SIGNAL \U_FIFO|count[2]~11\ : std_logic;
SIGNAL \U_FIFO|count[3]~12_combout\ : std_logic;
SIGNAL \U_FIFO|Equal1~0_combout\ : std_logic;
SIGNAL \U_FIFO|read_ptr[0]~0_combout\ : std_logic;
SIGNAL \U_FIFO|read_ptr[1]~1_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~68feeder_combout\ : std_logic;
SIGNAL \U_FIFO|write_ptr[0]~0_combout\ : std_logic;
SIGNAL \U_FIFO|write_ptr[1]~2_combout\ : std_logic;
SIGNAL \U_FIFO|write_ptr[2]~1_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~457_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~459_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~68_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~460_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~36_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~294_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~461_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~132_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~458_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~100_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~295_combout\ : std_logic;
SIGNAL \U_FIFO|read_ptr[2]~2_combout\ : std_logic;
SIGNAL \U_FIFO|read_ptr[2]~3_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~452_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~453_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~196_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~456_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~260_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~455_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~164_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~454_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~228_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~292_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~293_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~296_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~69_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~37_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~299_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~133_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~101_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~300_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~197_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~261_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~229_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~165_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~297_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~298_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~301_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~70feeder_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~70_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~38_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~304_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~134_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~102_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~305_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~230_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~166_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~302_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~262_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~198_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~303_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~306_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~39_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~71_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~309_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~135_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~103_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~310_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~199feeder_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~199_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~263_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~167_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~231_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~307_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~308_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~311_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~200_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~264_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~168_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~232_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~312_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~313_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~104_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~136_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~72feeder_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~72_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~40_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~314_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~315_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~316_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~201_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~265_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~169_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~233_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~317_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~318_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~73_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~41_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~319_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~137_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~105_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~320_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~321_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~74_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~42_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~324_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~138_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~106_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~325_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~170_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~234_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~322_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~266_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~202_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~323_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~326_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~75feeder_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~75_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~43_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~329_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~107_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~139_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~330_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~203_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~267_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~171_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~235feeder_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~235_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~327_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~328_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~331_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~76_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~44_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~334_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~140_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~108feeder_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~108_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~335_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~172_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~236_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~332_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~268_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~204_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~333_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~336_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~109_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~141_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~77_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~45_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~339_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~340_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~205_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~237_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~173_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~337_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~269_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~338_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~341_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~78_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~46_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~344_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~142_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~110_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~345_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~238feeder_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~238_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~174_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~342_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~270_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~206_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~343_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~346_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~79_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~47_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~349_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~143_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~111_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~350_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~207_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~271_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~175_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~239_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~347_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~348_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~351_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~208feeder_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~208_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~272_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~176_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~240_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~352_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~353_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~80_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~48_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~354_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~144_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~112_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~355_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~356_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~209_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~273_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~177_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~241feeder_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~241_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~357_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~358_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~81_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~49_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~359_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~145_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~113_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~360_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~361_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~242_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~178_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~362_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~274_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~210_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~363_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~50_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~82_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~364_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~114_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~146_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~365_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~366_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~115_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~147_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~83_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~51_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~369_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~370_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~211_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~275_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~243_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~179_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~367_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~368_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~371_combout\ : std_logic;
SIGNAL \system_data[16]~input_o\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~244_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~180_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~372_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~276_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~212_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~373_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~52_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~84feeder_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~84_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~374_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~116feeder_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~116_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~148_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~375_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~376_combout\ : std_logic;
SIGNAL \system_data[17]~input_o\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~53_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~85_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~379_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~117feeder_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~117_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~149_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~380_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~245_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~181_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~377_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~277_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~213_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~378_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~381_combout\ : std_logic;
SIGNAL \system_data[18]~input_o\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~118_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~150_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~86_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~54_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~384_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~385_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~214_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~278_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~246_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~182_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~382_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~383_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~386_combout\ : std_logic;
SIGNAL \system_data[19]~input_o\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~215_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~279_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~247feeder_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~247_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~183_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~387_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~388_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~55_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~87_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~389_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~151_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~119_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~390_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~391_combout\ : std_logic;
SIGNAL \system_data[20]~input_o\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~120_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~152_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~88feeder_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~88_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~56_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~394_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~395_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~216_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~280_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~248_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~184_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~392_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~393_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~396_combout\ : std_logic;
SIGNAL \system_data[21]~input_o\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~185_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~249_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~397_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~281_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~217_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~398_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~89_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~57_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~399_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~153_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~121_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~400_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~401_combout\ : std_logic;
SIGNAL \system_data[22]~input_o\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~122_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~154_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~90feeder_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~90_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~58_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~404_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~405_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~186_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~250feeder_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~250_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~402_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~282_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~218_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~403_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~406_combout\ : std_logic;
SIGNAL \system_data[23]~input_o\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~251feeder_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~251_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~187_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~407_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~283_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~219_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~408_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~59_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~91feeder_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~91_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~409_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~155_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~123_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~410_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~411_combout\ : std_logic;
SIGNAL \system_data[24]~input_o\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~60_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~92feeder_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~92_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~414_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~156_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~124_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~415_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~188_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~252_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~412_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~284_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~220_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~413_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~416_combout\ : std_logic;
SIGNAL \system_data[25]~input_o\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~61_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~93_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~419_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~157_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~125_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~420_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~221_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~285_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~253_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~189_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~417_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~418_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~421_combout\ : std_logic;
SIGNAL \system_data[26]~input_o\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~62_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~94_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~424_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~158_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~126_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~425_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~254_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~190_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~422_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~286_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~222feeder_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~222_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~423_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~426_combout\ : std_logic;
SIGNAL \system_data[27]~input_o\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~191_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~255_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~427_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~287_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~223_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~428_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~63_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~95_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~429_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~159_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~127_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~430_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~431_combout\ : std_logic;
SIGNAL \system_data[28]~input_o\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~128_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~160_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~96_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~64_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~434_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~435_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~224feeder_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~224_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~288_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~192_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~256_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~432_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~433_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~436_combout\ : std_logic;
SIGNAL \system_data[29]~input_o\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~65_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~97feeder_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~97_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~439_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~161_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~129_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~440_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~193_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~257_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~437_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~289_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~225feeder_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~225_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~438_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~441_combout\ : std_logic;
SIGNAL \system_data[30]~input_o\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~226feeder_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~226_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~258_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~194_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~442_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~290feeder_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~290_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~443_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~98feeder_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~98_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~66_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~444_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~162_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~130_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~445_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~446_combout\ : std_logic;
SIGNAL \system_data[31]~input_o\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~195_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~259feeder_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~259_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~447_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~291_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~227_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~448_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~67_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~99_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~449_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~163_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~131_q\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~450_combout\ : std_logic;
SIGNAL \U_FIFO|fifo_mem~451_combout\ : std_logic;
SIGNAL \Mux64~0_combout\ : std_logic;
SIGNAL \reg_src_addr[0]~0_combout\ : std_logic;
SIGNAL \master_addr~0_combout\ : std_logic;
SIGNAL \reg_src_addr[1]~feeder_combout\ : std_logic;
SIGNAL \master_addr~1_combout\ : std_logic;
SIGNAL \reg_src_addr[2]~feeder_combout\ : std_logic;
SIGNAL \master_addr~2_combout\ : std_logic;
SIGNAL \reg_src_addr[3]~feeder_combout\ : std_logic;
SIGNAL \master_addr~3_combout\ : std_logic;
SIGNAL \master_addr~4_combout\ : std_logic;
SIGNAL \reg_dst_addr[5]~feeder_combout\ : std_logic;
SIGNAL \master_addr~5_combout\ : std_logic;
SIGNAL \master_addr~6_combout\ : std_logic;
SIGNAL \reg_dst_addr[7]~feeder_combout\ : std_logic;
SIGNAL \master_addr~7_combout\ : std_logic;
SIGNAL \master_addr~8_combout\ : std_logic;
SIGNAL \master_addr~9_combout\ : std_logic;
SIGNAL \master_addr~10_combout\ : std_logic;
SIGNAL \reg_src_addr[11]~feeder_combout\ : std_logic;
SIGNAL \master_addr~11_combout\ : std_logic;
SIGNAL \reg_src_addr[12]~feeder_combout\ : std_logic;
SIGNAL \master_addr~12_combout\ : std_logic;
SIGNAL \master_addr~13_combout\ : std_logic;
SIGNAL \master_addr~14_combout\ : std_logic;
SIGNAL \reg_src_addr[15]~feeder_combout\ : std_logic;
SIGNAL \master_addr~15_combout\ : std_logic;
SIGNAL \master_addr~16_combout\ : std_logic;
SIGNAL \master_addr~17_combout\ : std_logic;
SIGNAL \reg_src_addr[18]~feeder_combout\ : std_logic;
SIGNAL \master_addr~18_combout\ : std_logic;
SIGNAL \master_addr~19_combout\ : std_logic;
SIGNAL \master_addr~20_combout\ : std_logic;
SIGNAL \master_addr~21_combout\ : std_logic;
SIGNAL \master_addr~22_combout\ : std_logic;
SIGNAL \reg_src_addr[23]~feeder_combout\ : std_logic;
SIGNAL \master_addr~23_combout\ : std_logic;
SIGNAL \master_addr~24_combout\ : std_logic;
SIGNAL \master_addr~25_combout\ : std_logic;
SIGNAL \reg_src_addr[26]~feeder_combout\ : std_logic;
SIGNAL \master_addr~26_combout\ : std_logic;
SIGNAL \master_addr~27_combout\ : std_logic;
SIGNAL \reg_src_addr[28]~feeder_combout\ : std_logic;
SIGNAL \master_addr~28_combout\ : std_logic;
SIGNAL \master_addr~29_combout\ : std_logic;
SIGNAL \master_addr~30_combout\ : std_logic;
SIGNAL \master_addr~31_combout\ : std_logic;
SIGNAL \U_FSM|dma_done_irq~q\ : std_logic;
SIGNAL reg_src_addr : std_logic_vector(31 DOWNTO 0);
SIGNAL reg_len : std_logic_vector(15 DOWNTO 0);
SIGNAL reg_dst_addr : std_logic_vector(31 DOWNTO 0);
SIGNAL reg_ctrl : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_FSM|rem_len\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U_FSM|burst_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_FIFO|write_ptr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_FIFO|read_ptr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_FIFO|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \U_FSM|ALT_INV_current_state.CHECK_COUNT~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_cpu_addr <= cpu_addr;
ww_cpu_write_en <= cpu_write_en;
system_data <= ww_system_data;
master_addr <= ww_master_addr;
master_rd <= ww_master_rd;
master_wr <= ww_master_wr;
ww_master_ready <= master_ready;
dma_irq <= ww_dma_irq;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\U_FSM|ALT_INV_current_state.CHECK_COUNT~q\ <= NOT \U_FSM|current_state.CHECK_COUNT~q\;

-- Location: IOOBUF_X38_Y41_N9
\system_data[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FIFO|fifo_mem~296_combout\,
	oe => \U_FSM|mem_write~q\,
	devoe => ww_devoe,
	o => \system_data[0]~output_o\);

-- Location: IOOBUF_X41_Y41_N2
\system_data[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FIFO|fifo_mem~301_combout\,
	oe => \U_FSM|mem_write~q\,
	devoe => ww_devoe,
	o => \system_data[1]~output_o\);

-- Location: IOOBUF_X43_Y0_N2
\system_data[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FIFO|fifo_mem~306_combout\,
	oe => \U_FSM|mem_write~q\,
	devoe => ww_devoe,
	o => \system_data[2]~output_o\);

-- Location: IOOBUF_X41_Y41_N9
\system_data[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FIFO|fifo_mem~311_combout\,
	oe => \U_FSM|mem_write~q\,
	devoe => ww_devoe,
	o => \system_data[3]~output_o\);

-- Location: IOOBUF_X46_Y0_N16
\system_data[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FIFO|fifo_mem~316_combout\,
	oe => \U_FSM|mem_write~q\,
	devoe => ww_devoe,
	o => \system_data[4]~output_o\);

-- Location: IOOBUF_X52_Y25_N9
\system_data[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FIFO|fifo_mem~321_combout\,
	oe => \U_FSM|mem_write~q\,
	devoe => ww_devoe,
	o => \system_data[5]~output_o\);

-- Location: IOOBUF_X46_Y41_N23
\system_data[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FIFO|fifo_mem~326_combout\,
	oe => \U_FSM|mem_write~q\,
	devoe => ww_devoe,
	o => \system_data[6]~output_o\);

-- Location: IOOBUF_X46_Y41_N9
\system_data[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FIFO|fifo_mem~331_combout\,
	oe => \U_FSM|mem_write~q\,
	devoe => ww_devoe,
	o => \system_data[7]~output_o\);

-- Location: IOOBUF_X52_Y28_N2
\system_data[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FIFO|fifo_mem~336_combout\,
	oe => \U_FSM|mem_write~q\,
	devoe => ww_devoe,
	o => \system_data[8]~output_o\);

-- Location: IOOBUF_X41_Y41_N23
\system_data[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FIFO|fifo_mem~341_combout\,
	oe => \U_FSM|mem_write~q\,
	devoe => ww_devoe,
	o => \system_data[9]~output_o\);

-- Location: IOOBUF_X52_Y31_N9
\system_data[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FIFO|fifo_mem~346_combout\,
	oe => \U_FSM|mem_write~q\,
	devoe => ww_devoe,
	o => \system_data[10]~output_o\);

-- Location: IOOBUF_X52_Y25_N2
\system_data[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FIFO|fifo_mem~351_combout\,
	oe => \U_FSM|mem_write~q\,
	devoe => ww_devoe,
	o => \system_data[11]~output_o\);

-- Location: IOOBUF_X52_Y27_N9
\system_data[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FIFO|fifo_mem~356_combout\,
	oe => \U_FSM|mem_write~q\,
	devoe => ww_devoe,
	o => \system_data[12]~output_o\);

-- Location: IOOBUF_X52_Y19_N2
\system_data[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FIFO|fifo_mem~361_combout\,
	oe => \U_FSM|mem_write~q\,
	devoe => ww_devoe,
	o => \system_data[13]~output_o\);

-- Location: IOOBUF_X52_Y30_N9
\system_data[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FIFO|fifo_mem~366_combout\,
	oe => \U_FSM|mem_write~q\,
	devoe => ww_devoe,
	o => \system_data[14]~output_o\);

-- Location: IOOBUF_X52_Y30_N2
\system_data[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FIFO|fifo_mem~371_combout\,
	oe => \U_FSM|mem_write~q\,
	devoe => ww_devoe,
	o => \system_data[15]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\system_data[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FIFO|fifo_mem~376_combout\,
	oe => \U_FSM|mem_write~q\,
	devoe => ww_devoe,
	o => \system_data[16]~output_o\);

-- Location: IOOBUF_X52_Y18_N9
\system_data[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FIFO|fifo_mem~381_combout\,
	oe => \U_FSM|mem_write~q\,
	devoe => ww_devoe,
	o => \system_data[17]~output_o\);

-- Location: IOOBUF_X52_Y27_N2
\system_data[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FIFO|fifo_mem~386_combout\,
	oe => \U_FSM|mem_write~q\,
	devoe => ww_devoe,
	o => \system_data[18]~output_o\);

-- Location: IOOBUF_X52_Y32_N9
\system_data[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FIFO|fifo_mem~391_combout\,
	oe => \U_FSM|mem_write~q\,
	devoe => ww_devoe,
	o => \system_data[19]~output_o\);

-- Location: IOOBUF_X52_Y23_N2
\system_data[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FIFO|fifo_mem~396_combout\,
	oe => \U_FSM|mem_write~q\,
	devoe => ww_devoe,
	o => \system_data[20]~output_o\);

-- Location: IOOBUF_X52_Y32_N23
\system_data[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FIFO|fifo_mem~401_combout\,
	oe => \U_FSM|mem_write~q\,
	devoe => ww_devoe,
	o => \system_data[21]~output_o\);

-- Location: IOOBUF_X43_Y41_N9
\system_data[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FIFO|fifo_mem~406_combout\,
	oe => \U_FSM|mem_write~q\,
	devoe => ww_devoe,
	o => \system_data[22]~output_o\);

-- Location: IOOBUF_X46_Y41_N2
\system_data[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FIFO|fifo_mem~411_combout\,
	oe => \U_FSM|mem_write~q\,
	devoe => ww_devoe,
	o => \system_data[23]~output_o\);

-- Location: IOOBUF_X52_Y32_N16
\system_data[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FIFO|fifo_mem~416_combout\,
	oe => \U_FSM|mem_write~q\,
	devoe => ww_devoe,
	o => \system_data[24]~output_o\);

-- Location: IOOBUF_X52_Y23_N9
\system_data[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FIFO|fifo_mem~421_combout\,
	oe => \U_FSM|mem_write~q\,
	devoe => ww_devoe,
	o => \system_data[25]~output_o\);

-- Location: IOOBUF_X43_Y41_N2
\system_data[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FIFO|fifo_mem~426_combout\,
	oe => \U_FSM|mem_write~q\,
	devoe => ww_devoe,
	o => \system_data[26]~output_o\);

-- Location: IOOBUF_X52_Y31_N2
\system_data[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FIFO|fifo_mem~431_combout\,
	oe => \U_FSM|mem_write~q\,
	devoe => ww_devoe,
	o => \system_data[27]~output_o\);

-- Location: IOOBUF_X43_Y0_N9
\system_data[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FIFO|fifo_mem~436_combout\,
	oe => \U_FSM|mem_write~q\,
	devoe => ww_devoe,
	o => \system_data[28]~output_o\);

-- Location: IOOBUF_X41_Y41_N16
\system_data[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FIFO|fifo_mem~441_combout\,
	oe => \U_FSM|mem_write~q\,
	devoe => ww_devoe,
	o => \system_data[29]~output_o\);

-- Location: IOOBUF_X52_Y18_N2
\system_data[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FIFO|fifo_mem~446_combout\,
	oe => \U_FSM|mem_write~q\,
	devoe => ww_devoe,
	o => \system_data[30]~output_o\);

-- Location: IOOBUF_X52_Y28_N9
\system_data[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FIFO|fifo_mem~451_combout\,
	oe => \U_FSM|mem_write~q\,
	devoe => ww_devoe,
	o => \system_data[31]~output_o\);

-- Location: IOOBUF_X52_Y32_N2
\master_addr[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_addr~0_combout\,
	devoe => ww_devoe,
	o => \master_addr[0]~output_o\);

-- Location: IOOBUF_X52_Y12_N9
\master_addr[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_addr~1_combout\,
	devoe => ww_devoe,
	o => \master_addr[1]~output_o\);

-- Location: IOOBUF_X31_Y41_N2
\master_addr[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_addr~2_combout\,
	devoe => ww_devoe,
	o => \master_addr[2]~output_o\);

-- Location: IOOBUF_X52_Y15_N2
\master_addr[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_addr~3_combout\,
	devoe => ww_devoe,
	o => \master_addr[3]~output_o\);

-- Location: IOOBUF_X50_Y41_N2
\master_addr[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_addr~4_combout\,
	devoe => ww_devoe,
	o => \master_addr[4]~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\master_addr[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_addr~5_combout\,
	devoe => ww_devoe,
	o => \master_addr[5]~output_o\);

-- Location: IOOBUF_X48_Y41_N9
\master_addr[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_addr~6_combout\,
	devoe => ww_devoe,
	o => \master_addr[6]~output_o\);

-- Location: IOOBUF_X31_Y41_N9
\master_addr[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_addr~7_combout\,
	devoe => ww_devoe,
	o => \master_addr[7]~output_o\);

-- Location: IOOBUF_X48_Y41_N2
\master_addr[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_addr~8_combout\,
	devoe => ww_devoe,
	o => \master_addr[8]~output_o\);

-- Location: IOOBUF_X52_Y10_N9
\master_addr[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_addr~9_combout\,
	devoe => ww_devoe,
	o => \master_addr[9]~output_o\);

-- Location: IOOBUF_X52_Y11_N2
\master_addr[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_addr~10_combout\,
	devoe => ww_devoe,
	o => \master_addr[10]~output_o\);

-- Location: IOOBUF_X52_Y12_N2
\master_addr[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_addr~11_combout\,
	devoe => ww_devoe,
	o => \master_addr[11]~output_o\);

-- Location: IOOBUF_X50_Y0_N2
\master_addr[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_addr~12_combout\,
	devoe => ww_devoe,
	o => \master_addr[12]~output_o\);

-- Location: IOOBUF_X52_Y9_N9
\master_addr[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_addr~13_combout\,
	devoe => ww_devoe,
	o => \master_addr[13]~output_o\);

-- Location: IOOBUF_X52_Y13_N2
\master_addr[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_addr~14_combout\,
	devoe => ww_devoe,
	o => \master_addr[14]~output_o\);

-- Location: IOOBUF_X52_Y9_N2
\master_addr[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_addr~15_combout\,
	devoe => ww_devoe,
	o => \master_addr[15]~output_o\);

-- Location: IOOBUF_X46_Y41_N16
\master_addr[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_addr~16_combout\,
	devoe => ww_devoe,
	o => \master_addr[16]~output_o\);

-- Location: IOOBUF_X31_Y41_N23
\master_addr[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_addr~17_combout\,
	devoe => ww_devoe,
	o => \master_addr[17]~output_o\);

-- Location: IOOBUF_X52_Y10_N2
\master_addr[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_addr~18_combout\,
	devoe => ww_devoe,
	o => \master_addr[18]~output_o\);

-- Location: IOOBUF_X50_Y41_N9
\master_addr[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_addr~19_combout\,
	devoe => ww_devoe,
	o => \master_addr[19]~output_o\);

-- Location: IOOBUF_X52_Y11_N9
\master_addr[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_addr~20_combout\,
	devoe => ww_devoe,
	o => \master_addr[20]~output_o\);

-- Location: IOOBUF_X52_Y16_N9
\master_addr[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_addr~21_combout\,
	devoe => ww_devoe,
	o => \master_addr[21]~output_o\);

-- Location: IOOBUF_X41_Y0_N23
\master_addr[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_addr~22_combout\,
	devoe => ww_devoe,
	o => \master_addr[22]~output_o\);

-- Location: IOOBUF_X41_Y0_N2
\master_addr[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_addr~23_combout\,
	devoe => ww_devoe,
	o => \master_addr[23]~output_o\);

-- Location: IOOBUF_X38_Y41_N2
\master_addr[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_addr~24_combout\,
	devoe => ww_devoe,
	o => \master_addr[24]~output_o\);

-- Location: IOOBUF_X41_Y0_N9
\master_addr[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_addr~25_combout\,
	devoe => ww_devoe,
	o => \master_addr[25]~output_o\);

-- Location: IOOBUF_X34_Y41_N2
\master_addr[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_addr~26_combout\,
	devoe => ww_devoe,
	o => \master_addr[26]~output_o\);

-- Location: IOOBUF_X36_Y41_N2
\master_addr[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_addr~27_combout\,
	devoe => ww_devoe,
	o => \master_addr[27]~output_o\);

-- Location: IOOBUF_X36_Y41_N9
\master_addr[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_addr~28_combout\,
	devoe => ww_devoe,
	o => \master_addr[28]~output_o\);

-- Location: IOOBUF_X34_Y41_N9
\master_addr[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_addr~29_combout\,
	devoe => ww_devoe,
	o => \master_addr[29]~output_o\);

-- Location: IOOBUF_X48_Y0_N2
\master_addr[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_addr~30_combout\,
	devoe => ww_devoe,
	o => \master_addr[30]~output_o\);

-- Location: IOOBUF_X52_Y16_N2
\master_addr[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_addr~31_combout\,
	devoe => ww_devoe,
	o => \master_addr[31]~output_o\);

-- Location: IOOBUF_X52_Y19_N9
\master_rd~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FSM|mem_read~q\,
	devoe => ww_devoe,
	o => \master_rd~output_o\);

-- Location: IOOBUF_X46_Y0_N23
\master_wr~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FSM|mem_write~q\,
	devoe => ww_devoe,
	o => \master_wr~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\dma_irq~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FSM|dma_done_irq~q\,
	devoe => ww_devoe,
	o => \dma_irq~output_o\);

-- Location: IOIBUF_X27_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: IOIBUF_X38_Y0_N8
\master_ready~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_master_ready,
	o => \master_ready~input_o\);

-- Location: LCCOMB_X38_Y27_N10
\U_FSM|Selector17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|Selector17~0_combout\ = (!\master_ready~input_o\ & \U_FSM|current_state.REQ_BUS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \master_ready~input_o\,
	datad => \U_FSM|current_state.REQ_BUS~q\,
	combout => \U_FSM|Selector17~0_combout\);

-- Location: IOIBUF_X38_Y41_N8
\system_data[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => system_data(0),
	o => \system_data[0]~input_o\);

-- Location: LCCOMB_X37_Y28_N4
\U_FSM|rem_len[2]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|rem_len[2]~16_combout\ = \U_FSM|rem_len\(2) $ (VCC)
-- \U_FSM|rem_len[2]~17\ = CARRY(\U_FSM|rem_len\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FSM|rem_len\(2),
	datad => VCC,
	combout => \U_FSM|rem_len[2]~16_combout\,
	cout => \U_FSM|rem_len[2]~17\);

-- Location: IOIBUF_X43_Y0_N1
\system_data[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => system_data(2),
	o => \system_data[2]~input_o\);

-- Location: LCCOMB_X41_Y28_N22
\reg_len[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_len[2]~feeder_combout\ = \system_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[2]~input_o\,
	combout => \reg_len[2]~feeder_combout\);

-- Location: IOIBUF_X27_Y0_N22
\reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G19
\reset~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: IOIBUF_X52_Y13_N8
\cpu_addr[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cpu_addr(0),
	o => \cpu_addr[0]~input_o\);

-- Location: IOIBUF_X48_Y0_N8
\cpu_write_en~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cpu_write_en,
	o => \cpu_write_en~input_o\);

-- Location: IOIBUF_X52_Y15_N8
\cpu_addr[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cpu_addr(1),
	o => \cpu_addr[1]~input_o\);

-- Location: LCCOMB_X48_Y25_N2
\Mux64~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux64~1_combout\ = (!\cpu_addr[0]~input_o\ & (\cpu_write_en~input_o\ & \cpu_addr[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_addr[0]~input_o\,
	datac => \cpu_write_en~input_o\,
	datad => \cpu_addr[1]~input_o\,
	combout => \Mux64~1_combout\);

-- Location: FF_X41_Y28_N23
\reg_len[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_len[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Mux64~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_len(2));

-- Location: LCCOMB_X41_Y27_N16
\U_FSM|Selector24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|Selector24~0_combout\ = (!\U_FSM|burst_cnt\(0) & !\U_FSM|current_state.REQ_BUS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_FSM|burst_cnt\(0),
	datad => \U_FSM|current_state.REQ_BUS~q\,
	combout => \U_FSM|Selector24~0_combout\);

-- Location: LCCOMB_X42_Y27_N12
\U_FSM|mem_write~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|mem_write~0_combout\ = (\U_FSM|current_state.WRITE_BURST~q\ & (\U_FIFO|Equal1~0_combout\ & (!\U_FSM|Selector20~2_combout\))) # (!\U_FSM|current_state.WRITE_BURST~q\ & (((\U_FSM|mem_write~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|Equal1~0_combout\,
	datab => \U_FSM|Selector20~2_combout\,
	datac => \U_FSM|mem_write~q\,
	datad => \U_FSM|current_state.WRITE_BURST~q\,
	combout => \U_FSM|mem_write~0_combout\);

-- Location: FF_X42_Y27_N13
\U_FSM|mem_write\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FSM|mem_write~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FSM|mem_write~q\);

-- Location: LCCOMB_X42_Y27_N14
\U_FIFO|count[0]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|count[0]~5_combout\ = \U_FIFO|process_0~0_combout\ $ (\U_FIFO|count\(0) $ (((\U_FIFO|Equal1~0_combout\ & \U_FSM|mem_write~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|Equal1~0_combout\,
	datab => \U_FIFO|process_0~0_combout\,
	datac => \U_FIFO|count\(0),
	datad => \U_FSM|mem_write~q\,
	combout => \U_FIFO|count[0]~5_combout\);

-- Location: FF_X42_Y27_N15
\U_FIFO|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FIFO|count[0]~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|count\(0));

-- Location: LCCOMB_X43_Y27_N24
\U_FIFO|count[1]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|count[1]~7_cout\ = CARRY(\U_FIFO|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|count\(0),
	datad => VCC,
	cout => \U_FIFO|count[1]~7_cout\);

-- Location: LCCOMB_X43_Y27_N26
\U_FIFO|count[1]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|count[1]~8_combout\ = (\U_FIFO|process_0~0_combout\ & ((\U_FIFO|count\(1) & (!\U_FIFO|count[1]~7_cout\)) # (!\U_FIFO|count\(1) & ((\U_FIFO|count[1]~7_cout\) # (GND))))) # (!\U_FIFO|process_0~0_combout\ & ((\U_FIFO|count\(1) & 
-- (\U_FIFO|count[1]~7_cout\ & VCC)) # (!\U_FIFO|count\(1) & (!\U_FIFO|count[1]~7_cout\))))
-- \U_FIFO|count[1]~9\ = CARRY((\U_FIFO|process_0~0_combout\ & ((!\U_FIFO|count[1]~7_cout\) # (!\U_FIFO|count\(1)))) # (!\U_FIFO|process_0~0_combout\ & (!\U_FIFO|count\(1) & !\U_FIFO|count[1]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|process_0~0_combout\,
	datab => \U_FIFO|count\(1),
	datad => VCC,
	cin => \U_FIFO|count[1]~7_cout\,
	combout => \U_FIFO|count[1]~8_combout\,
	cout => \U_FIFO|count[1]~9\);

-- Location: LCCOMB_X42_Y27_N2
\U_FIFO|count[0]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|count[0]~14_combout\ = (\U_FIFO|count\(3) & (((\U_FIFO|Equal1~0_combout\ & \U_FSM|mem_write~q\)))) # (!\U_FIFO|count\(3) & (\U_FSM|mem_read~q\ $ (((\U_FIFO|Equal1~0_combout\ & \U_FSM|mem_write~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|count\(3),
	datab => \U_FSM|mem_read~q\,
	datac => \U_FIFO|Equal1~0_combout\,
	datad => \U_FSM|mem_write~q\,
	combout => \U_FIFO|count[0]~14_combout\);

-- Location: FF_X43_Y27_N27
\U_FIFO|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FIFO|count[1]~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \U_FIFO|count[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|count\(1));

-- Location: LCCOMB_X43_Y27_N28
\U_FIFO|count[2]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|count[2]~10_combout\ = ((\U_FIFO|process_0~0_combout\ $ (\U_FIFO|count\(2) $ (\U_FIFO|count[1]~9\)))) # (GND)
-- \U_FIFO|count[2]~11\ = CARRY((\U_FIFO|process_0~0_combout\ & (\U_FIFO|count\(2) & !\U_FIFO|count[1]~9\)) # (!\U_FIFO|process_0~0_combout\ & ((\U_FIFO|count\(2)) # (!\U_FIFO|count[1]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|process_0~0_combout\,
	datab => \U_FIFO|count\(2),
	datad => VCC,
	cin => \U_FIFO|count[1]~9\,
	combout => \U_FIFO|count[2]~10_combout\,
	cout => \U_FIFO|count[2]~11\);

-- Location: FF_X43_Y27_N29
\U_FIFO|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FIFO|count[2]~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \U_FIFO|count[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|count\(2));

-- Location: LCCOMB_X42_Y27_N4
\U_FSM|Selector19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|Selector19~0_combout\ = (\U_FIFO|count\(1)) # (!\U_FIFO|count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_FIFO|count\(3),
	datad => \U_FIFO|count\(1),
	combout => \U_FSM|Selector19~0_combout\);

-- Location: LCCOMB_X42_Y27_N10
\U_FSM|Selector19~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|Selector19~1_combout\ = (\U_FSM|current_state.READ_BURST~q\ & ((\U_FIFO|count\(0)) # ((\U_FIFO|count\(2)) # (\U_FSM|Selector19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|count\(0),
	datab => \U_FIFO|count\(2),
	datac => \U_FSM|Selector19~0_combout\,
	datad => \U_FSM|current_state.READ_BURST~q\,
	combout => \U_FSM|Selector19~1_combout\);

-- Location: LCCOMB_X38_Y27_N0
\U_FSM|Selector16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|Selector16~0_combout\ = (!\U_FSM|current_state.DONE~q\ & ((reg_ctrl(0)) # (\U_FSM|current_state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|current_state.DONE~q\,
	datab => reg_ctrl(0),
	datac => \U_FSM|current_state.IDLE~q\,
	combout => \U_FSM|Selector16~0_combout\);

-- Location: FF_X38_Y27_N1
\U_FSM|current_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FSM|Selector16~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FSM|current_state.IDLE~q\);

-- Location: LCCOMB_X38_Y27_N26
\U_FSM|Selector20~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|Selector20~4_combout\ = (\U_FSM|current_state.REQ_BUS~q\ & (((\master_ready~input_o\)))) # (!\U_FSM|current_state.REQ_BUS~q\ & (!\U_FSM|current_state.IDLE~q\ & ((reg_ctrl(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|current_state.IDLE~q\,
	datab => \U_FSM|current_state.REQ_BUS~q\,
	datac => \master_ready~input_o\,
	datad => reg_ctrl(0),
	combout => \U_FSM|Selector20~4_combout\);

-- Location: LCCOMB_X38_Y27_N12
\U_FSM|Selector20~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|Selector20~3_combout\ = (!\U_FSM|current_state.DONE~q\ & !\U_FSM|current_state.CHECK_COUNT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_FSM|current_state.DONE~q\,
	datad => \U_FSM|current_state.CHECK_COUNT~q\,
	combout => \U_FSM|Selector20~3_combout\);

-- Location: LCCOMB_X42_Y27_N24
\U_FIFO|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|Equal0~0_combout\ = (\U_FIFO|count\(0)) # ((\U_FIFO|count\(1)) # ((\U_FIFO|count\(2)) # (!\U_FIFO|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|count\(0),
	datab => \U_FIFO|count\(1),
	datac => \U_FIFO|count\(3),
	datad => \U_FIFO|count\(2),
	combout => \U_FIFO|Equal0~0_combout\);

-- Location: LCCOMB_X41_Y27_N2
\U_FSM|Selector20~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|Selector20~5_combout\ = (\U_FSM|current_state.WRITE_BURST~q\ & ((\U_FIFO|Equal1~0_combout\) # ((\U_FSM|current_state.READ_BURST~q\ & \U_FIFO|Equal0~0_combout\)))) # (!\U_FSM|current_state.WRITE_BURST~q\ & (\U_FSM|current_state.READ_BURST~q\ & 
-- ((\U_FIFO|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|current_state.WRITE_BURST~q\,
	datab => \U_FSM|current_state.READ_BURST~q\,
	datac => \U_FIFO|Equal1~0_combout\,
	datad => \U_FIFO|Equal0~0_combout\,
	combout => \U_FSM|Selector20~5_combout\);

-- Location: LCCOMB_X41_Y27_N24
\U_FSM|Selector20~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|Selector20~6_combout\ = (\U_FSM|Selector20~4_combout\) # (((\U_FSM|Selector20~2_combout\ & \U_FSM|Selector20~5_combout\)) # (!\U_FSM|Selector20~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|Selector20~4_combout\,
	datab => \U_FSM|Selector20~2_combout\,
	datac => \U_FSM|Selector20~3_combout\,
	datad => \U_FSM|Selector20~5_combout\,
	combout => \U_FSM|Selector20~6_combout\);

-- Location: LCCOMB_X41_Y27_N8
\U_FSM|Selector19~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|Selector19~2_combout\ = (\U_FSM|Selector20~6_combout\ & (\U_FSM|Selector20~8_combout\ & (\U_FSM|Selector19~1_combout\))) # (!\U_FSM|Selector20~6_combout\ & (((\U_FSM|current_state.WRITE_BURST~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|Selector20~8_combout\,
	datab => \U_FSM|Selector19~1_combout\,
	datac => \U_FSM|current_state.WRITE_BURST~q\,
	datad => \U_FSM|Selector20~6_combout\,
	combout => \U_FSM|Selector19~2_combout\);

-- Location: FF_X41_Y27_N9
\U_FSM|current_state.WRITE_BURST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FSM|Selector19~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FSM|current_state.WRITE_BURST~q\);

-- Location: LCCOMB_X41_Y27_N0
\U_FSM|burst_cnt[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|burst_cnt[0]~0_combout\ = (!\U_FSM|current_state.REQ_BUS~q\ & ((!\U_FIFO|Equal0~0_combout\) # (!\U_FSM|current_state.READ_BURST~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FSM|current_state.READ_BURST~q\,
	datac => \U_FSM|current_state.REQ_BUS~q\,
	datad => \U_FIFO|Equal0~0_combout\,
	combout => \U_FSM|burst_cnt[0]~0_combout\);

-- Location: LCCOMB_X41_Y27_N18
\U_FSM|burst_cnt[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|burst_cnt[0]~1_combout\ = (\master_ready~input_o\ & (((\U_FSM|current_state.WRITE_BURST~q\ & \U_FIFO|Equal1~0_combout\)) # (!\U_FSM|burst_cnt[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_ready~input_o\,
	datab => \U_FSM|current_state.WRITE_BURST~q\,
	datac => \U_FIFO|Equal1~0_combout\,
	datad => \U_FSM|burst_cnt[0]~0_combout\,
	combout => \U_FSM|burst_cnt[0]~1_combout\);

-- Location: FF_X41_Y27_N17
\U_FSM|burst_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FSM|Selector24~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \U_FSM|burst_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FSM|burst_cnt\(0));

-- Location: LCCOMB_X41_Y27_N14
\U_FSM|Selector23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|Selector23~0_combout\ = (!\U_FSM|current_state.REQ_BUS~q\ & (\U_FSM|burst_cnt\(0) $ (\U_FSM|burst_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FSM|burst_cnt\(0),
	datac => \U_FSM|burst_cnt\(1),
	datad => \U_FSM|current_state.REQ_BUS~q\,
	combout => \U_FSM|Selector23~0_combout\);

-- Location: FF_X41_Y27_N15
\U_FSM|burst_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FSM|Selector23~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \U_FSM|burst_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FSM|burst_cnt\(1));

-- Location: LCCOMB_X38_Y27_N18
\U_FSM|Selector22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|Selector22~0_combout\ = (\U_FSM|burst_cnt\(0) & ((\U_FSM|burst_cnt\(2) & ((!\U_FSM|burst_cnt\(1)))) # (!\U_FSM|burst_cnt\(2) & (!\U_FSM|current_state.READ_BURST~q\ & \U_FSM|burst_cnt\(1))))) # (!\U_FSM|burst_cnt\(0) & (\U_FSM|burst_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|burst_cnt\(0),
	datab => \U_FSM|burst_cnt\(2),
	datac => \U_FSM|current_state.READ_BURST~q\,
	datad => \U_FSM|burst_cnt\(1),
	combout => \U_FSM|Selector22~0_combout\);

-- Location: LCCOMB_X41_Y27_N10
\U_FSM|Selector22~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|Selector22~1_combout\ = (!\U_FSM|current_state.REQ_BUS~q\ & \U_FSM|Selector22~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|current_state.REQ_BUS~q\,
	datad => \U_FSM|Selector22~0_combout\,
	combout => \U_FSM|Selector22~1_combout\);

-- Location: FF_X41_Y27_N11
\U_FSM|burst_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FSM|Selector22~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \U_FSM|burst_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FSM|burst_cnt\(2));

-- Location: LCCOMB_X41_Y27_N4
\U_FSM|Selector20~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|Selector20~2_combout\ = (!\U_FSM|burst_cnt\(2) & (\U_FSM|burst_cnt\(1) & (\master_ready~input_o\ & \U_FSM|burst_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|burst_cnt\(2),
	datab => \U_FSM|burst_cnt\(1),
	datac => \master_ready~input_o\,
	datad => \U_FSM|burst_cnt\(0),
	combout => \U_FSM|Selector20~2_combout\);

-- Location: LCCOMB_X41_Y27_N22
\U_FSM|Selector20~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|Selector20~8_combout\ = (!\U_FSM|current_state.CHECK_COUNT~q\ & (\U_FSM|Selector20~2_combout\ & !\U_FSM|current_state.DONE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FSM|current_state.CHECK_COUNT~q\,
	datac => \U_FSM|Selector20~2_combout\,
	datad => \U_FSM|current_state.DONE~q\,
	combout => \U_FSM|Selector20~8_combout\);

-- Location: LCCOMB_X41_Y27_N28
\U_FSM|Selector20~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|Selector20~7_combout\ = (\U_FIFO|Equal1~0_combout\ & (\U_FSM|Selector20~8_combout\ & (\U_FSM|current_state.WRITE_BURST~q\ & \U_FSM|Selector20~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|Equal1~0_combout\,
	datab => \U_FSM|Selector20~8_combout\,
	datac => \U_FSM|current_state.WRITE_BURST~q\,
	datad => \U_FSM|Selector20~6_combout\,
	combout => \U_FSM|Selector20~7_combout\);

-- Location: FF_X41_Y27_N29
\U_FSM|current_state.CHECK_COUNT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FSM|Selector20~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FSM|current_state.CHECK_COUNT~q\);

-- Location: LCCOMB_X37_Y28_N2
\U_FSM|rem_len[13]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|rem_len[13]~44_combout\ = (reg_ctrl(0) & (((\U_FSM|current_state.CHECK_COUNT~q\ & \U_FSM|LessThan0~4_combout\)) # (!\U_FSM|current_state.IDLE~q\))) # (!reg_ctrl(0) & (((\U_FSM|current_state.CHECK_COUNT~q\ & \U_FSM|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_ctrl(0),
	datab => \U_FSM|current_state.IDLE~q\,
	datac => \U_FSM|current_state.CHECK_COUNT~q\,
	datad => \U_FSM|LessThan0~4_combout\,
	combout => \U_FSM|rem_len[13]~44_combout\);

-- Location: FF_X37_Y28_N5
\U_FSM|rem_len[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FSM|rem_len[2]~16_combout\,
	asdata => reg_len(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U_FSM|ALT_INV_current_state.CHECK_COUNT~q\,
	ena => \U_FSM|rem_len[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FSM|rem_len\(2));

-- Location: LCCOMB_X37_Y28_N6
\U_FSM|rem_len[3]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|rem_len[3]~18_combout\ = (\U_FSM|rem_len\(3) & (\U_FSM|rem_len[2]~17\ & VCC)) # (!\U_FSM|rem_len\(3) & (!\U_FSM|rem_len[2]~17\))
-- \U_FSM|rem_len[3]~19\ = CARRY((!\U_FSM|rem_len\(3) & !\U_FSM|rem_len[2]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|rem_len\(3),
	datad => VCC,
	cin => \U_FSM|rem_len[2]~17\,
	combout => \U_FSM|rem_len[3]~18_combout\,
	cout => \U_FSM|rem_len[3]~19\);

-- Location: IOIBUF_X41_Y41_N8
\system_data[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => system_data(3),
	o => \system_data[3]~input_o\);

-- Location: LCCOMB_X41_Y28_N8
\reg_len[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_len[3]~feeder_combout\ = \system_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[3]~input_o\,
	combout => \reg_len[3]~feeder_combout\);

-- Location: FF_X41_Y28_N9
\reg_len[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_len[3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Mux64~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_len(3));

-- Location: FF_X37_Y28_N7
\U_FSM|rem_len[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FSM|rem_len[3]~18_combout\,
	asdata => reg_len(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U_FSM|ALT_INV_current_state.CHECK_COUNT~q\,
	ena => \U_FSM|rem_len[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FSM|rem_len\(3));

-- Location: LCCOMB_X37_Y28_N8
\U_FSM|rem_len[4]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|rem_len[4]~20_combout\ = (\U_FSM|rem_len\(4) & ((GND) # (!\U_FSM|rem_len[3]~19\))) # (!\U_FSM|rem_len\(4) & (\U_FSM|rem_len[3]~19\ $ (GND)))
-- \U_FSM|rem_len[4]~21\ = CARRY((\U_FSM|rem_len\(4)) # (!\U_FSM|rem_len[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FSM|rem_len\(4),
	datad => VCC,
	cin => \U_FSM|rem_len[3]~19\,
	combout => \U_FSM|rem_len[4]~20_combout\,
	cout => \U_FSM|rem_len[4]~21\);

-- Location: IOIBUF_X46_Y0_N15
\system_data[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => system_data(4),
	o => \system_data[4]~input_o\);

-- Location: LCCOMB_X41_Y28_N12
\reg_len[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_len[4]~feeder_combout\ = \system_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[4]~input_o\,
	combout => \reg_len[4]~feeder_combout\);

-- Location: FF_X41_Y28_N13
\reg_len[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_len[4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Mux64~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_len(4));

-- Location: FF_X37_Y28_N9
\U_FSM|rem_len[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FSM|rem_len[4]~20_combout\,
	asdata => reg_len(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U_FSM|ALT_INV_current_state.CHECK_COUNT~q\,
	ena => \U_FSM|rem_len[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FSM|rem_len\(4));

-- Location: LCCOMB_X37_Y28_N10
\U_FSM|rem_len[5]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|rem_len[5]~22_combout\ = (\U_FSM|rem_len\(5) & (\U_FSM|rem_len[4]~21\ & VCC)) # (!\U_FSM|rem_len\(5) & (!\U_FSM|rem_len[4]~21\))
-- \U_FSM|rem_len[5]~23\ = CARRY((!\U_FSM|rem_len\(5) & !\U_FSM|rem_len[4]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|rem_len\(5),
	datad => VCC,
	cin => \U_FSM|rem_len[4]~21\,
	combout => \U_FSM|rem_len[5]~22_combout\,
	cout => \U_FSM|rem_len[5]~23\);

-- Location: IOIBUF_X52_Y25_N8
\system_data[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => system_data(5),
	o => \system_data[5]~input_o\);

-- Location: FF_X41_Y28_N31
\reg_len[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[5]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux64~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_len(5));

-- Location: FF_X37_Y28_N11
\U_FSM|rem_len[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FSM|rem_len[5]~22_combout\,
	asdata => reg_len(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U_FSM|ALT_INV_current_state.CHECK_COUNT~q\,
	ena => \U_FSM|rem_len[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FSM|rem_len\(5));

-- Location: LCCOMB_X37_Y28_N12
\U_FSM|rem_len[6]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|rem_len[6]~24_combout\ = (\U_FSM|rem_len\(6) & ((GND) # (!\U_FSM|rem_len[5]~23\))) # (!\U_FSM|rem_len\(6) & (\U_FSM|rem_len[5]~23\ $ (GND)))
-- \U_FSM|rem_len[6]~25\ = CARRY((\U_FSM|rem_len\(6)) # (!\U_FSM|rem_len[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|rem_len\(6),
	datad => VCC,
	cin => \U_FSM|rem_len[5]~23\,
	combout => \U_FSM|rem_len[6]~24_combout\,
	cout => \U_FSM|rem_len[6]~25\);

-- Location: IOIBUF_X46_Y41_N22
\system_data[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => system_data(6),
	o => \system_data[6]~input_o\);

-- Location: LCCOMB_X41_Y28_N28
\reg_len[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_len[6]~feeder_combout\ = \system_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[6]~input_o\,
	combout => \reg_len[6]~feeder_combout\);

-- Location: FF_X41_Y28_N29
\reg_len[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_len[6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Mux64~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_len(6));

-- Location: FF_X37_Y28_N13
\U_FSM|rem_len[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FSM|rem_len[6]~24_combout\,
	asdata => reg_len(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U_FSM|ALT_INV_current_state.CHECK_COUNT~q\,
	ena => \U_FSM|rem_len[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FSM|rem_len\(6));

-- Location: LCCOMB_X37_Y28_N14
\U_FSM|rem_len[7]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|rem_len[7]~26_combout\ = (\U_FSM|rem_len\(7) & (\U_FSM|rem_len[6]~25\ & VCC)) # (!\U_FSM|rem_len\(7) & (!\U_FSM|rem_len[6]~25\))
-- \U_FSM|rem_len[7]~27\ = CARRY((!\U_FSM|rem_len\(7) & !\U_FSM|rem_len[6]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FSM|rem_len\(7),
	datad => VCC,
	cin => \U_FSM|rem_len[6]~25\,
	combout => \U_FSM|rem_len[7]~26_combout\,
	cout => \U_FSM|rem_len[7]~27\);

-- Location: IOIBUF_X46_Y41_N8
\system_data[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => system_data(7),
	o => \system_data[7]~input_o\);

-- Location: FF_X41_Y28_N19
\reg_len[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[7]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux64~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_len(7));

-- Location: FF_X37_Y28_N15
\U_FSM|rem_len[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FSM|rem_len[7]~26_combout\,
	asdata => reg_len(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U_FSM|ALT_INV_current_state.CHECK_COUNT~q\,
	ena => \U_FSM|rem_len[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FSM|rem_len\(7));

-- Location: LCCOMB_X37_Y28_N16
\U_FSM|rem_len[8]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|rem_len[8]~28_combout\ = (\U_FSM|rem_len\(8) & ((GND) # (!\U_FSM|rem_len[7]~27\))) # (!\U_FSM|rem_len\(8) & (\U_FSM|rem_len[7]~27\ $ (GND)))
-- \U_FSM|rem_len[8]~29\ = CARRY((\U_FSM|rem_len\(8)) # (!\U_FSM|rem_len[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FSM|rem_len\(8),
	datad => VCC,
	cin => \U_FSM|rem_len[7]~27\,
	combout => \U_FSM|rem_len[8]~28_combout\,
	cout => \U_FSM|rem_len[8]~29\);

-- Location: IOIBUF_X52_Y28_N1
\system_data[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => system_data(8),
	o => \system_data[8]~input_o\);

-- Location: FF_X41_Y28_N1
\reg_len[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[8]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux64~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_len(8));

-- Location: FF_X37_Y28_N17
\U_FSM|rem_len[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FSM|rem_len[8]~28_combout\,
	asdata => reg_len(8),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U_FSM|ALT_INV_current_state.CHECK_COUNT~q\,
	ena => \U_FSM|rem_len[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FSM|rem_len\(8));

-- Location: LCCOMB_X37_Y28_N18
\U_FSM|rem_len[9]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|rem_len[9]~30_combout\ = (\U_FSM|rem_len\(9) & (\U_FSM|rem_len[8]~29\ & VCC)) # (!\U_FSM|rem_len\(9) & (!\U_FSM|rem_len[8]~29\))
-- \U_FSM|rem_len[9]~31\ = CARRY((!\U_FSM|rem_len\(9) & !\U_FSM|rem_len[8]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FSM|rem_len\(9),
	datad => VCC,
	cin => \U_FSM|rem_len[8]~29\,
	combout => \U_FSM|rem_len[9]~30_combout\,
	cout => \U_FSM|rem_len[9]~31\);

-- Location: IOIBUF_X41_Y41_N22
\system_data[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => system_data(9),
	o => \system_data[9]~input_o\);

-- Location: LCCOMB_X41_Y28_N10
\reg_len[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_len[9]~feeder_combout\ = \system_data[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[9]~input_o\,
	combout => \reg_len[9]~feeder_combout\);

-- Location: FF_X41_Y28_N11
\reg_len[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_len[9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Mux64~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_len(9));

-- Location: FF_X37_Y28_N19
\U_FSM|rem_len[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FSM|rem_len[9]~30_combout\,
	asdata => reg_len(9),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U_FSM|ALT_INV_current_state.CHECK_COUNT~q\,
	ena => \U_FSM|rem_len[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FSM|rem_len\(9));

-- Location: LCCOMB_X37_Y28_N20
\U_FSM|rem_len[10]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|rem_len[10]~32_combout\ = (\U_FSM|rem_len\(10) & ((GND) # (!\U_FSM|rem_len[9]~31\))) # (!\U_FSM|rem_len\(10) & (\U_FSM|rem_len[9]~31\ $ (GND)))
-- \U_FSM|rem_len[10]~33\ = CARRY((\U_FSM|rem_len\(10)) # (!\U_FSM|rem_len[9]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FSM|rem_len\(10),
	datad => VCC,
	cin => \U_FSM|rem_len[9]~31\,
	combout => \U_FSM|rem_len[10]~32_combout\,
	cout => \U_FSM|rem_len[10]~33\);

-- Location: IOIBUF_X52_Y31_N8
\system_data[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => system_data(10),
	o => \system_data[10]~input_o\);

-- Location: LCCOMB_X41_Y28_N24
\reg_len[10]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_len[10]~feeder_combout\ = \system_data[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[10]~input_o\,
	combout => \reg_len[10]~feeder_combout\);

-- Location: FF_X41_Y28_N25
\reg_len[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_len[10]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Mux64~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_len(10));

-- Location: FF_X37_Y28_N21
\U_FSM|rem_len[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FSM|rem_len[10]~32_combout\,
	asdata => reg_len(10),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U_FSM|ALT_INV_current_state.CHECK_COUNT~q\,
	ena => \U_FSM|rem_len[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FSM|rem_len\(10));

-- Location: LCCOMB_X37_Y28_N22
\U_FSM|rem_len[11]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|rem_len[11]~34_combout\ = (\U_FSM|rem_len\(11) & (\U_FSM|rem_len[10]~33\ & VCC)) # (!\U_FSM|rem_len\(11) & (!\U_FSM|rem_len[10]~33\))
-- \U_FSM|rem_len[11]~35\ = CARRY((!\U_FSM|rem_len\(11) & !\U_FSM|rem_len[10]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|rem_len\(11),
	datad => VCC,
	cin => \U_FSM|rem_len[10]~33\,
	combout => \U_FSM|rem_len[11]~34_combout\,
	cout => \U_FSM|rem_len[11]~35\);

-- Location: IOIBUF_X52_Y25_N1
\system_data[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => system_data(11),
	o => \system_data[11]~input_o\);

-- Location: FF_X41_Y28_N27
\reg_len[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[11]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux64~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_len(11));

-- Location: FF_X37_Y28_N23
\U_FSM|rem_len[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FSM|rem_len[11]~34_combout\,
	asdata => reg_len(11),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U_FSM|ALT_INV_current_state.CHECK_COUNT~q\,
	ena => \U_FSM|rem_len[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FSM|rem_len\(11));

-- Location: LCCOMB_X37_Y28_N24
\U_FSM|rem_len[12]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|rem_len[12]~36_combout\ = (\U_FSM|rem_len\(12) & ((GND) # (!\U_FSM|rem_len[11]~35\))) # (!\U_FSM|rem_len\(12) & (\U_FSM|rem_len[11]~35\ $ (GND)))
-- \U_FSM|rem_len[12]~37\ = CARRY((\U_FSM|rem_len\(12)) # (!\U_FSM|rem_len[11]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FSM|rem_len\(12),
	datad => VCC,
	cin => \U_FSM|rem_len[11]~35\,
	combout => \U_FSM|rem_len[12]~36_combout\,
	cout => \U_FSM|rem_len[12]~37\);

-- Location: IOIBUF_X52_Y27_N8
\system_data[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => system_data(12),
	o => \system_data[12]~input_o\);

-- Location: LCCOMB_X41_Y28_N16
\reg_len[12]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_len[12]~feeder_combout\ = \system_data[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[12]~input_o\,
	combout => \reg_len[12]~feeder_combout\);

-- Location: FF_X41_Y28_N17
\reg_len[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_len[12]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Mux64~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_len(12));

-- Location: FF_X37_Y28_N25
\U_FSM|rem_len[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FSM|rem_len[12]~36_combout\,
	asdata => reg_len(12),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U_FSM|ALT_INV_current_state.CHECK_COUNT~q\,
	ena => \U_FSM|rem_len[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FSM|rem_len\(12));

-- Location: LCCOMB_X37_Y28_N26
\U_FSM|rem_len[13]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|rem_len[13]~38_combout\ = (\U_FSM|rem_len\(13) & (\U_FSM|rem_len[12]~37\ & VCC)) # (!\U_FSM|rem_len\(13) & (!\U_FSM|rem_len[12]~37\))
-- \U_FSM|rem_len[13]~39\ = CARRY((!\U_FSM|rem_len\(13) & !\U_FSM|rem_len[12]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|rem_len\(13),
	datad => VCC,
	cin => \U_FSM|rem_len[12]~37\,
	combout => \U_FSM|rem_len[13]~38_combout\,
	cout => \U_FSM|rem_len[13]~39\);

-- Location: IOIBUF_X52_Y19_N1
\system_data[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => system_data(13),
	o => \system_data[13]~input_o\);

-- Location: LCCOMB_X41_Y28_N14
\reg_len[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_len[13]~feeder_combout\ = \system_data[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[13]~input_o\,
	combout => \reg_len[13]~feeder_combout\);

-- Location: FF_X41_Y28_N15
\reg_len[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_len[13]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Mux64~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_len(13));

-- Location: FF_X37_Y28_N27
\U_FSM|rem_len[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FSM|rem_len[13]~38_combout\,
	asdata => reg_len(13),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U_FSM|ALT_INV_current_state.CHECK_COUNT~q\,
	ena => \U_FSM|rem_len[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FSM|rem_len\(13));

-- Location: LCCOMB_X37_Y28_N28
\U_FSM|rem_len[14]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|rem_len[14]~40_combout\ = (\U_FSM|rem_len\(14) & ((GND) # (!\U_FSM|rem_len[13]~39\))) # (!\U_FSM|rem_len\(14) & (\U_FSM|rem_len[13]~39\ $ (GND)))
-- \U_FSM|rem_len[14]~41\ = CARRY((\U_FSM|rem_len\(14)) # (!\U_FSM|rem_len[13]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FSM|rem_len\(14),
	datad => VCC,
	cin => \U_FSM|rem_len[13]~39\,
	combout => \U_FSM|rem_len[14]~40_combout\,
	cout => \U_FSM|rem_len[14]~41\);

-- Location: IOIBUF_X52_Y30_N8
\system_data[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => system_data(14),
	o => \system_data[14]~input_o\);

-- Location: LCCOMB_X41_Y28_N4
\reg_len[14]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_len[14]~feeder_combout\ = \system_data[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[14]~input_o\,
	combout => \reg_len[14]~feeder_combout\);

-- Location: FF_X41_Y28_N5
\reg_len[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_len[14]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Mux64~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_len(14));

-- Location: FF_X37_Y28_N29
\U_FSM|rem_len[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FSM|rem_len[14]~40_combout\,
	asdata => reg_len(14),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U_FSM|ALT_INV_current_state.CHECK_COUNT~q\,
	ena => \U_FSM|rem_len[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FSM|rem_len\(14));

-- Location: LCCOMB_X37_Y28_N30
\U_FSM|rem_len[15]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|rem_len[15]~42_combout\ = \U_FSM|rem_len\(15) $ (!\U_FSM|rem_len[14]~41\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|rem_len\(15),
	cin => \U_FSM|rem_len[14]~41\,
	combout => \U_FSM|rem_len[15]~42_combout\);

-- Location: IOIBUF_X52_Y30_N1
\system_data[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => system_data(15),
	o => \system_data[15]~input_o\);

-- Location: LCCOMB_X41_Y28_N2
\reg_len[15]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_len[15]~feeder_combout\ = \system_data[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[15]~input_o\,
	combout => \reg_len[15]~feeder_combout\);

-- Location: FF_X41_Y28_N3
\reg_len[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_len[15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Mux64~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_len(15));

-- Location: FF_X37_Y28_N31
\U_FSM|rem_len[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FSM|rem_len[15]~42_combout\,
	asdata => reg_len(15),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \U_FSM|ALT_INV_current_state.CHECK_COUNT~q\,
	ena => \U_FSM|rem_len[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FSM|rem_len\(15));

-- Location: LCCOMB_X38_Y28_N4
\U_FSM|LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|LessThan0~3_combout\ = (\U_FSM|rem_len\(13)) # ((\U_FSM|rem_len\(15)) # ((\U_FSM|rem_len\(12)) # (\U_FSM|rem_len\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|rem_len\(13),
	datab => \U_FSM|rem_len\(15),
	datac => \U_FSM|rem_len\(12),
	datad => \U_FSM|rem_len\(14),
	combout => \U_FSM|LessThan0~3_combout\);

-- Location: LCCOMB_X36_Y28_N6
\U_FSM|LessThan0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|LessThan0~2_combout\ = (\U_FSM|rem_len\(10)) # ((\U_FSM|rem_len\(9)) # ((\U_FSM|rem_len\(11)) # (\U_FSM|rem_len\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|rem_len\(10),
	datab => \U_FSM|rem_len\(9),
	datac => \U_FSM|rem_len\(11),
	datad => \U_FSM|rem_len\(8),
	combout => \U_FSM|LessThan0~2_combout\);

-- Location: LCCOMB_X36_Y28_N16
\U_FSM|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|LessThan0~1_combout\ = (\U_FSM|rem_len\(5)) # ((\U_FSM|rem_len\(6)) # ((\U_FSM|rem_len\(4)) # (\U_FSM|rem_len\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|rem_len\(5),
	datab => \U_FSM|rem_len\(6),
	datac => \U_FSM|rem_len\(4),
	datad => \U_FSM|rem_len\(7),
	combout => \U_FSM|LessThan0~1_combout\);

-- Location: IOIBUF_X41_Y41_N1
\system_data[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => system_data(1),
	o => \system_data[1]~input_o\);

-- Location: FF_X41_Y28_N21
\reg_len[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux64~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_len(1));

-- Location: LCCOMB_X38_Y28_N12
\U_FSM|rem_len[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|rem_len[1]~feeder_combout\ = reg_len(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg_len(1),
	combout => \U_FSM|rem_len[1]~feeder_combout\);

-- Location: FF_X38_Y28_N13
\U_FSM|rem_len[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FSM|rem_len[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \U_FSM|Selector21~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FSM|rem_len\(1));

-- Location: LCCOMB_X41_Y28_N6
\reg_len[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_len[0]~feeder_combout\ = \system_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[0]~input_o\,
	combout => \reg_len[0]~feeder_combout\);

-- Location: FF_X41_Y28_N7
\reg_len[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_len[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Mux64~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_len(0));

-- Location: FF_X38_Y28_N7
\U_FSM|rem_len[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => reg_len(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_FSM|Selector21~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FSM|rem_len\(0));

-- Location: LCCOMB_X38_Y28_N6
\U_FSM|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|LessThan0~0_combout\ = (\U_FSM|rem_len\(3)) # ((\U_FSM|rem_len\(2) & ((\U_FSM|rem_len\(1)) # (\U_FSM|rem_len\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|rem_len\(1),
	datab => \U_FSM|rem_len\(2),
	datac => \U_FSM|rem_len\(0),
	datad => \U_FSM|rem_len\(3),
	combout => \U_FSM|LessThan0~0_combout\);

-- Location: LCCOMB_X37_Y28_N0
\U_FSM|LessThan0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|LessThan0~4_combout\ = (\U_FSM|LessThan0~3_combout\) # ((\U_FSM|LessThan0~2_combout\) # ((\U_FSM|LessThan0~1_combout\) # (\U_FSM|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|LessThan0~3_combout\,
	datab => \U_FSM|LessThan0~2_combout\,
	datac => \U_FSM|LessThan0~1_combout\,
	datad => \U_FSM|LessThan0~0_combout\,
	combout => \U_FSM|LessThan0~4_combout\);

-- Location: LCCOMB_X38_Y27_N22
\U_FSM|Selector21~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|Selector21~2_combout\ = (!\U_FSM|LessThan0~4_combout\ & \U_FSM|current_state.CHECK_COUNT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_FSM|LessThan0~4_combout\,
	datad => \U_FSM|current_state.CHECK_COUNT~q\,
	combout => \U_FSM|Selector21~2_combout\);

-- Location: FF_X38_Y27_N23
\U_FSM|current_state.DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FSM|Selector21~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FSM|current_state.DONE~q\);

-- Location: LCCOMB_X38_Y27_N20
\U_FSM|Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|Selector0~0_combout\ = (\U_FSM|current_state.IDLE~q\ & (!\U_FSM|current_state.DONE~q\ & ((\U_FSM|dma_busy~q\)))) # (!\U_FSM|current_state.IDLE~q\ & (((reg_ctrl(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|current_state.DONE~q\,
	datab => reg_ctrl(0),
	datac => \U_FSM|dma_busy~q\,
	datad => \U_FSM|current_state.IDLE~q\,
	combout => \U_FSM|Selector0~0_combout\);

-- Location: FF_X38_Y27_N21
\U_FSM|dma_busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FSM|Selector0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FSM|dma_busy~q\);

-- Location: LCCOMB_X48_Y25_N4
\reg_ctrl~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_ctrl~0_combout\ = (\cpu_addr[0]~input_o\ & (\cpu_write_en~input_o\ & \cpu_addr[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_addr[0]~input_o\,
	datac => \cpu_write_en~input_o\,
	datad => \cpu_addr[1]~input_o\,
	combout => \reg_ctrl~0_combout\);

-- Location: LCCOMB_X38_Y27_N2
\reg_ctrl~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_ctrl~1_combout\ = (!\U_FSM|dma_busy~q\ & ((\reg_ctrl~0_combout\ & (\system_data[0]~input_o\)) # (!\reg_ctrl~0_combout\ & ((reg_ctrl(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_data[0]~input_o\,
	datab => \U_FSM|dma_busy~q\,
	datac => reg_ctrl(0),
	datad => \reg_ctrl~0_combout\,
	combout => \reg_ctrl~1_combout\);

-- Location: FF_X38_Y27_N3
\reg_ctrl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_ctrl~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_ctrl(0));

-- Location: LCCOMB_X38_Y27_N4
\U_FSM|Selector21~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|Selector21~3_combout\ = (reg_ctrl(0) & !\U_FSM|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_ctrl(0),
	datad => \U_FSM|current_state.IDLE~q\,
	combout => \U_FSM|Selector21~3_combout\);

-- Location: LCCOMB_X38_Y27_N16
\U_FSM|Selector17~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|Selector17~1_combout\ = (\U_FSM|current_state.CHECK_COUNT~q\ & (((\U_FSM|LessThan0~4_combout\)))) # (!\U_FSM|current_state.CHECK_COUNT~q\ & ((\U_FSM|Selector17~0_combout\) # ((\U_FSM|Selector21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|Selector17~0_combout\,
	datab => \U_FSM|Selector21~3_combout\,
	datac => \U_FSM|LessThan0~4_combout\,
	datad => \U_FSM|current_state.CHECK_COUNT~q\,
	combout => \U_FSM|Selector17~1_combout\);

-- Location: FF_X38_Y27_N17
\U_FSM|current_state.REQ_BUS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FSM|Selector17~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FSM|current_state.REQ_BUS~q\);

-- Location: LCCOMB_X41_Y27_N6
\U_FSM|Selector18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|Selector18~0_combout\ = (!\U_FSM|burst_cnt\(2) & (\U_FSM|burst_cnt\(0) & (\U_FSM|burst_cnt\(1) & \U_FIFO|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|burst_cnt\(2),
	datab => \U_FSM|burst_cnt\(0),
	datac => \U_FSM|burst_cnt\(1),
	datad => \U_FIFO|Equal0~0_combout\,
	combout => \U_FSM|Selector18~0_combout\);

-- Location: LCCOMB_X41_Y27_N20
\U_FSM|Selector18~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|Selector18~1_combout\ = (\master_ready~input_o\ & ((\U_FSM|current_state.REQ_BUS~q\) # ((\U_FSM|current_state.READ_BURST~q\ & !\U_FSM|Selector18~0_combout\)))) # (!\master_ready~input_o\ & (((\U_FSM|current_state.READ_BURST~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_ready~input_o\,
	datab => \U_FSM|current_state.REQ_BUS~q\,
	datac => \U_FSM|current_state.READ_BURST~q\,
	datad => \U_FSM|Selector18~0_combout\,
	combout => \U_FSM|Selector18~1_combout\);

-- Location: FF_X41_Y27_N21
\U_FSM|current_state.READ_BURST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FSM|Selector18~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FSM|current_state.READ_BURST~q\);

-- Location: LCCOMB_X41_Y27_N26
\U_FSM|mem_read~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FSM|mem_read~0_combout\ = (\U_FSM|current_state.READ_BURST~q\ & (((!\U_FSM|Selector20~2_combout\ & \U_FIFO|Equal0~0_combout\)))) # (!\U_FSM|current_state.READ_BURST~q\ & (\U_FSM|mem_read~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|mem_read~q\,
	datab => \U_FSM|current_state.READ_BURST~q\,
	datac => \U_FSM|Selector20~2_combout\,
	datad => \U_FIFO|Equal0~0_combout\,
	combout => \U_FSM|mem_read~0_combout\);

-- Location: FF_X43_Y27_N9
\U_FSM|mem_read\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_FSM|mem_read~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FSM|mem_read~q\);

-- Location: LCCOMB_X43_Y27_N22
\U_FIFO|process_0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|process_0~0_combout\ = (\U_FSM|mem_read~q\ & !\U_FIFO|count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FSM|mem_read~q\,
	datad => \U_FIFO|count\(3),
	combout => \U_FIFO|process_0~0_combout\);

-- Location: LCCOMB_X43_Y27_N30
\U_FIFO|count[3]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|count[3]~12_combout\ = \U_FIFO|process_0~0_combout\ $ (\U_FIFO|count[2]~11\ $ (!\U_FIFO|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|process_0~0_combout\,
	datad => \U_FIFO|count\(3),
	cin => \U_FIFO|count[2]~11\,
	combout => \U_FIFO|count[3]~12_combout\);

-- Location: FF_X43_Y27_N31
\U_FIFO|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FIFO|count[3]~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \U_FIFO|count[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|count\(3));

-- Location: LCCOMB_X42_Y27_N30
\U_FIFO|Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|Equal1~0_combout\ = (\U_FIFO|count\(3)) # ((\U_FIFO|count\(2)) # ((\U_FIFO|count\(0)) # (\U_FIFO|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|count\(3),
	datab => \U_FIFO|count\(2),
	datac => \U_FIFO|count\(0),
	datad => \U_FIFO|count\(1),
	combout => \U_FIFO|Equal1~0_combout\);

-- Location: LCCOMB_X42_Y27_N28
\U_FIFO|read_ptr[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|read_ptr[0]~0_combout\ = \U_FIFO|read_ptr\(0) $ (((\U_FIFO|Equal1~0_combout\ & \U_FSM|mem_write~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|Equal1~0_combout\,
	datac => \U_FIFO|read_ptr\(0),
	datad => \U_FSM|mem_write~q\,
	combout => \U_FIFO|read_ptr[0]~0_combout\);

-- Location: FF_X42_Y27_N29
\U_FIFO|read_ptr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FIFO|read_ptr[0]~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|read_ptr\(0));

-- Location: LCCOMB_X41_Y27_N30
\U_FIFO|read_ptr[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|read_ptr[1]~1_combout\ = \U_FIFO|read_ptr\(1) $ (((\U_FIFO|Equal1~0_combout\ & (\U_FSM|mem_write~q\ & \U_FIFO|read_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|Equal1~0_combout\,
	datab => \U_FSM|mem_write~q\,
	datac => \U_FIFO|read_ptr\(1),
	datad => \U_FIFO|read_ptr\(0),
	combout => \U_FIFO|read_ptr[1]~1_combout\);

-- Location: FF_X41_Y27_N31
\U_FIFO|read_ptr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FIFO|read_ptr[1]~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|read_ptr\(1));

-- Location: LCCOMB_X42_Y25_N0
\U_FIFO|fifo_mem~68feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~68feeder_combout\ = \system_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[0]~input_o\,
	combout => \U_FIFO|fifo_mem~68feeder_combout\);

-- Location: LCCOMB_X42_Y27_N26
\U_FIFO|write_ptr[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|write_ptr[0]~0_combout\ = \U_FIFO|write_ptr\(0) $ (((!\U_FIFO|count\(3) & \U_FSM|mem_read~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|count\(3),
	datab => \U_FSM|mem_read~q\,
	datad => \U_FIFO|write_ptr\(0),
	combout => \U_FIFO|write_ptr[0]~0_combout\);

-- Location: FF_X43_Y27_N23
\U_FIFO|write_ptr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_FIFO|write_ptr[0]~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|write_ptr\(0));

-- Location: LCCOMB_X42_Y27_N16
\U_FIFO|write_ptr[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|write_ptr[1]~2_combout\ = \U_FIFO|write_ptr\(1) $ (((\U_FSM|mem_read~q\ & (!\U_FIFO|count\(3) & \U_FIFO|write_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|write_ptr\(1),
	datab => \U_FSM|mem_read~q\,
	datac => \U_FIFO|count\(3),
	datad => \U_FIFO|write_ptr\(0),
	combout => \U_FIFO|write_ptr[1]~2_combout\);

-- Location: FF_X43_Y27_N5
\U_FIFO|write_ptr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_FIFO|write_ptr[1]~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|write_ptr\(1));

-- Location: LCCOMB_X43_Y27_N16
\U_FIFO|write_ptr[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|write_ptr[2]~1_combout\ = \U_FIFO|write_ptr\(2) $ (((\U_FIFO|process_0~0_combout\ & (\U_FIFO|write_ptr\(1) & \U_FIFO|write_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|process_0~0_combout\,
	datab => \U_FIFO|write_ptr\(1),
	datac => \U_FIFO|write_ptr\(2),
	datad => \U_FIFO|write_ptr\(0),
	combout => \U_FIFO|write_ptr[2]~1_combout\);

-- Location: FF_X43_Y27_N17
\U_FIFO|write_ptr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FIFO|write_ptr[2]~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|write_ptr\(2));

-- Location: LCCOMB_X43_Y27_N6
\U_FIFO|fifo_mem~457\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~457_combout\ = (!\reset~input_o\ & (\U_FSM|mem_read~q\ & (!\U_FIFO|count\(3) & !\U_FIFO|write_ptr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \U_FSM|mem_read~q\,
	datac => \U_FIFO|count\(3),
	datad => \U_FIFO|write_ptr\(2),
	combout => \U_FIFO|fifo_mem~457_combout\);

-- Location: LCCOMB_X43_Y27_N2
\U_FIFO|fifo_mem~459\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~459_combout\ = (\U_FIFO|write_ptr\(0) & (!\U_FIFO|write_ptr\(1) & \U_FIFO|fifo_mem~457_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FIFO|write_ptr\(0),
	datac => \U_FIFO|write_ptr\(1),
	datad => \U_FIFO|fifo_mem~457_combout\,
	combout => \U_FIFO|fifo_mem~459_combout\);

-- Location: FF_X42_Y25_N1
\U_FIFO|fifo_mem~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FIFO|fifo_mem~68feeder_combout\,
	ena => \U_FIFO|fifo_mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~68_q\);

-- Location: LCCOMB_X43_Y27_N12
\U_FIFO|fifo_mem~460\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~460_combout\ = (!\U_FIFO|write_ptr\(0) & (!\U_FIFO|write_ptr\(1) & \U_FIFO|fifo_mem~457_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FIFO|write_ptr\(0),
	datac => \U_FIFO|write_ptr\(1),
	datad => \U_FIFO|fifo_mem~457_combout\,
	combout => \U_FIFO|fifo_mem~460_combout\);

-- Location: FF_X42_Y25_N3
\U_FIFO|fifo_mem~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[0]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~36_q\);

-- Location: LCCOMB_X42_Y25_N2
\U_FIFO|fifo_mem~294\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~294_combout\ = (\U_FIFO|read_ptr\(1) & (((\U_FIFO|read_ptr\(0))))) # (!\U_FIFO|read_ptr\(1) & ((\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~68_q\)) # (!\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~36_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(1),
	datab => \U_FIFO|fifo_mem~68_q\,
	datac => \U_FIFO|fifo_mem~36_q\,
	datad => \U_FIFO|read_ptr\(0),
	combout => \U_FIFO|fifo_mem~294_combout\);

-- Location: LCCOMB_X43_Y27_N14
\U_FIFO|fifo_mem~461\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~461_combout\ = (\U_FIFO|write_ptr\(0) & (\U_FIFO|write_ptr\(1) & \U_FIFO|fifo_mem~457_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FIFO|write_ptr\(0),
	datac => \U_FIFO|write_ptr\(1),
	datad => \U_FIFO|fifo_mem~457_combout\,
	combout => \U_FIFO|fifo_mem~461_combout\);

-- Location: FF_X42_Y26_N23
\U_FIFO|fifo_mem~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[0]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~132_q\);

-- Location: LCCOMB_X43_Y27_N0
\U_FIFO|fifo_mem~458\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~458_combout\ = (!\U_FIFO|write_ptr\(0) & (\U_FIFO|write_ptr\(1) & \U_FIFO|fifo_mem~457_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FIFO|write_ptr\(0),
	datac => \U_FIFO|write_ptr\(1),
	datad => \U_FIFO|fifo_mem~457_combout\,
	combout => \U_FIFO|fifo_mem~458_combout\);

-- Location: FF_X42_Y26_N21
\U_FIFO|fifo_mem~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[0]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~100_q\);

-- Location: LCCOMB_X42_Y26_N22
\U_FIFO|fifo_mem~295\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~295_combout\ = (\U_FIFO|fifo_mem~294_combout\ & (((\U_FIFO|fifo_mem~132_q\)) # (!\U_FIFO|read_ptr\(1)))) # (!\U_FIFO|fifo_mem~294_combout\ & (\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~100_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~294_combout\,
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~132_q\,
	datad => \U_FIFO|fifo_mem~100_q\,
	combout => \U_FIFO|fifo_mem~295_combout\);

-- Location: LCCOMB_X41_Y27_N12
\U_FIFO|read_ptr[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|read_ptr[2]~2_combout\ = (\U_FIFO|read_ptr\(0) & (\U_FSM|mem_write~q\ & (\U_FIFO|Equal1~0_combout\ & \U_FIFO|read_ptr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FSM|mem_write~q\,
	datac => \U_FIFO|Equal1~0_combout\,
	datad => \U_FIFO|read_ptr\(1),
	combout => \U_FIFO|read_ptr[2]~2_combout\);

-- Location: LCCOMB_X42_Y27_N6
\U_FIFO|read_ptr[2]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|read_ptr[2]~3_combout\ = \U_FIFO|read_ptr\(2) $ (\U_FIFO|read_ptr[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_FIFO|read_ptr\(2),
	datad => \U_FIFO|read_ptr[2]~2_combout\,
	combout => \U_FIFO|read_ptr[2]~3_combout\);

-- Location: FF_X42_Y27_N7
\U_FIFO|read_ptr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FIFO|read_ptr[2]~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|read_ptr\(2));

-- Location: LCCOMB_X43_Y27_N18
\U_FIFO|fifo_mem~452\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~452_combout\ = (!\U_FIFO|count\(3) & (!\reset~input_o\ & (\U_FSM|mem_read~q\ & \U_FIFO|write_ptr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|count\(3),
	datab => \reset~input_o\,
	datac => \U_FSM|mem_read~q\,
	datad => \U_FIFO|write_ptr\(2),
	combout => \U_FIFO|fifo_mem~452_combout\);

-- Location: LCCOMB_X43_Y27_N4
\U_FIFO|fifo_mem~453\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~453_combout\ = (\U_FIFO|write_ptr\(0) & (!\U_FIFO|write_ptr\(1) & \U_FIFO|fifo_mem~452_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FIFO|write_ptr\(0),
	datac => \U_FIFO|write_ptr\(1),
	datad => \U_FIFO|fifo_mem~452_combout\,
	combout => \U_FIFO|fifo_mem~453_combout\);

-- Location: FF_X43_Y26_N25
\U_FIFO|fifo_mem~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[0]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~196_q\);

-- Location: LCCOMB_X43_Y27_N8
\U_FIFO|fifo_mem~456\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~456_combout\ = (\U_FIFO|write_ptr\(0) & (\U_FIFO|write_ptr\(1) & \U_FIFO|fifo_mem~452_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|write_ptr\(0),
	datab => \U_FIFO|write_ptr\(1),
	datad => \U_FIFO|fifo_mem~452_combout\,
	combout => \U_FIFO|fifo_mem~456_combout\);

-- Location: FF_X43_Y26_N27
\U_FIFO|fifo_mem~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[0]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~260_q\);

-- Location: LCCOMB_X43_Y27_N20
\U_FIFO|fifo_mem~455\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~455_combout\ = (!\U_FIFO|write_ptr\(0) & (!\U_FIFO|write_ptr\(1) & \U_FIFO|fifo_mem~452_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FIFO|write_ptr\(0),
	datac => \U_FIFO|write_ptr\(1),
	datad => \U_FIFO|fifo_mem~452_combout\,
	combout => \U_FIFO|fifo_mem~455_combout\);

-- Location: FF_X46_Y26_N7
\U_FIFO|fifo_mem~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[0]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~164_q\);

-- Location: LCCOMB_X43_Y27_N10
\U_FIFO|fifo_mem~454\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~454_combout\ = (!\U_FIFO|write_ptr\(0) & (\U_FIFO|write_ptr\(1) & \U_FIFO|fifo_mem~452_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FIFO|write_ptr\(0),
	datac => \U_FIFO|write_ptr\(1),
	datad => \U_FIFO|fifo_mem~452_combout\,
	combout => \U_FIFO|fifo_mem~454_combout\);

-- Location: FF_X46_Y26_N1
\U_FIFO|fifo_mem~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[0]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~228_q\);

-- Location: LCCOMB_X46_Y26_N6
\U_FIFO|fifo_mem~292\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~292_combout\ = (\U_FIFO|read_ptr\(1) & ((\U_FIFO|read_ptr\(0)) # ((\U_FIFO|fifo_mem~228_q\)))) # (!\U_FIFO|read_ptr\(1) & (!\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~164_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(1),
	datab => \U_FIFO|read_ptr\(0),
	datac => \U_FIFO|fifo_mem~164_q\,
	datad => \U_FIFO|fifo_mem~228_q\,
	combout => \U_FIFO|fifo_mem~292_combout\);

-- Location: LCCOMB_X43_Y26_N26
\U_FIFO|fifo_mem~293\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~293_combout\ = (\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~292_combout\ & ((\U_FIFO|fifo_mem~260_q\))) # (!\U_FIFO|fifo_mem~292_combout\ & (\U_FIFO|fifo_mem~196_q\)))) # (!\U_FIFO|read_ptr\(0) & (((\U_FIFO|fifo_mem~292_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|fifo_mem~196_q\,
	datac => \U_FIFO|fifo_mem~260_q\,
	datad => \U_FIFO|fifo_mem~292_combout\,
	combout => \U_FIFO|fifo_mem~293_combout\);

-- Location: LCCOMB_X42_Y26_N28
\U_FIFO|fifo_mem~296\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~296_combout\ = (\U_FIFO|read_ptr\(2) & ((\U_FIFO|fifo_mem~293_combout\))) # (!\U_FIFO|read_ptr\(2) & (\U_FIFO|fifo_mem~295_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~295_combout\,
	datab => \U_FIFO|read_ptr\(2),
	datad => \U_FIFO|fifo_mem~293_combout\,
	combout => \U_FIFO|fifo_mem~296_combout\);

-- Location: FF_X39_Y27_N21
\U_FIFO|fifo_mem~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[1]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~69_q\);

-- Location: FF_X39_Y27_N31
\U_FIFO|fifo_mem~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[1]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~37_q\);

-- Location: LCCOMB_X39_Y27_N30
\U_FIFO|fifo_mem~299\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~299_combout\ = (\U_FIFO|read_ptr\(1) & (((\U_FIFO|read_ptr\(0))))) # (!\U_FIFO|read_ptr\(1) & ((\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~69_q\)) # (!\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~37_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(1),
	datab => \U_FIFO|fifo_mem~69_q\,
	datac => \U_FIFO|fifo_mem~37_q\,
	datad => \U_FIFO|read_ptr\(0),
	combout => \U_FIFO|fifo_mem~299_combout\);

-- Location: FF_X42_Y26_N9
\U_FIFO|fifo_mem~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[1]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~133_q\);

-- Location: FF_X42_Y26_N3
\U_FIFO|fifo_mem~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[1]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~101_q\);

-- Location: LCCOMB_X42_Y26_N8
\U_FIFO|fifo_mem~300\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~300_combout\ = (\U_FIFO|fifo_mem~299_combout\ & (((\U_FIFO|fifo_mem~133_q\)) # (!\U_FIFO|read_ptr\(1)))) # (!\U_FIFO|fifo_mem~299_combout\ & (\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~101_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~299_combout\,
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~133_q\,
	datad => \U_FIFO|fifo_mem~101_q\,
	combout => \U_FIFO|fifo_mem~300_combout\);

-- Location: FF_X43_Y26_N1
\U_FIFO|fifo_mem~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[1]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~197_q\);

-- Location: FF_X43_Y26_N19
\U_FIFO|fifo_mem~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[1]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~261_q\);

-- Location: FF_X46_Y26_N9
\U_FIFO|fifo_mem~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[1]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~229_q\);

-- Location: FF_X46_Y26_N15
\U_FIFO|fifo_mem~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[1]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~165_q\);

-- Location: LCCOMB_X46_Y26_N14
\U_FIFO|fifo_mem~297\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~297_combout\ = (\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~229_q\) # ((\U_FIFO|read_ptr\(0))))) # (!\U_FIFO|read_ptr\(1) & (((\U_FIFO|fifo_mem~165_q\ & !\U_FIFO|read_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(1),
	datab => \U_FIFO|fifo_mem~229_q\,
	datac => \U_FIFO|fifo_mem~165_q\,
	datad => \U_FIFO|read_ptr\(0),
	combout => \U_FIFO|fifo_mem~297_combout\);

-- Location: LCCOMB_X43_Y26_N18
\U_FIFO|fifo_mem~298\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~298_combout\ = (\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~297_combout\ & ((\U_FIFO|fifo_mem~261_q\))) # (!\U_FIFO|fifo_mem~297_combout\ & (\U_FIFO|fifo_mem~197_q\)))) # (!\U_FIFO|read_ptr\(0) & (((\U_FIFO|fifo_mem~297_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|fifo_mem~197_q\,
	datac => \U_FIFO|fifo_mem~261_q\,
	datad => \U_FIFO|fifo_mem~297_combout\,
	combout => \U_FIFO|fifo_mem~298_combout\);

-- Location: LCCOMB_X42_Y26_N10
\U_FIFO|fifo_mem~301\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~301_combout\ = (\U_FIFO|read_ptr\(2) & ((\U_FIFO|fifo_mem~298_combout\))) # (!\U_FIFO|read_ptr\(2) & (\U_FIFO|fifo_mem~300_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~300_combout\,
	datab => \U_FIFO|read_ptr\(2),
	datad => \U_FIFO|fifo_mem~298_combout\,
	combout => \U_FIFO|fifo_mem~301_combout\);

-- Location: LCCOMB_X39_Y27_N24
\U_FIFO|fifo_mem~70feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~70feeder_combout\ = \system_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[2]~input_o\,
	combout => \U_FIFO|fifo_mem~70feeder_combout\);

-- Location: FF_X39_Y27_N25
\U_FIFO|fifo_mem~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FIFO|fifo_mem~70feeder_combout\,
	ena => \U_FIFO|fifo_mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~70_q\);

-- Location: FF_X39_Y27_N11
\U_FIFO|fifo_mem~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[2]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~38_q\);

-- Location: LCCOMB_X39_Y27_N10
\U_FIFO|fifo_mem~304\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~304_combout\ = (\U_FIFO|read_ptr\(1) & (((\U_FIFO|read_ptr\(0))))) # (!\U_FIFO|read_ptr\(1) & ((\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~70_q\)) # (!\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~38_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(1),
	datab => \U_FIFO|fifo_mem~70_q\,
	datac => \U_FIFO|fifo_mem~38_q\,
	datad => \U_FIFO|read_ptr\(0),
	combout => \U_FIFO|fifo_mem~304_combout\);

-- Location: FF_X42_Y26_N5
\U_FIFO|fifo_mem~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[2]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~134_q\);

-- Location: FF_X42_Y26_N29
\U_FIFO|fifo_mem~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[2]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~102_q\);

-- Location: LCCOMB_X42_Y26_N4
\U_FIFO|fifo_mem~305\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~305_combout\ = (\U_FIFO|fifo_mem~304_combout\ & (((\U_FIFO|fifo_mem~134_q\)) # (!\U_FIFO|read_ptr\(1)))) # (!\U_FIFO|fifo_mem~304_combout\ & (\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~102_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~304_combout\,
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~134_q\,
	datad => \U_FIFO|fifo_mem~102_q\,
	combout => \U_FIFO|fifo_mem~305_combout\);

-- Location: FF_X46_Y26_N5
\U_FIFO|fifo_mem~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[2]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~230_q\);

-- Location: FF_X46_Y26_N11
\U_FIFO|fifo_mem~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[2]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~166_q\);

-- Location: LCCOMB_X46_Y26_N10
\U_FIFO|fifo_mem~302\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~302_combout\ = (\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~230_q\) # ((\U_FIFO|read_ptr\(0))))) # (!\U_FIFO|read_ptr\(1) & (((\U_FIFO|fifo_mem~166_q\ & !\U_FIFO|read_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(1),
	datab => \U_FIFO|fifo_mem~230_q\,
	datac => \U_FIFO|fifo_mem~166_q\,
	datad => \U_FIFO|read_ptr\(0),
	combout => \U_FIFO|fifo_mem~302_combout\);

-- Location: FF_X43_Y26_N11
\U_FIFO|fifo_mem~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[2]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~262_q\);

-- Location: FF_X43_Y26_N13
\U_FIFO|fifo_mem~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[2]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~198_q\);

-- Location: LCCOMB_X43_Y26_N10
\U_FIFO|fifo_mem~303\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~303_combout\ = (\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~302_combout\ & (\U_FIFO|fifo_mem~262_q\)) # (!\U_FIFO|fifo_mem~302_combout\ & ((\U_FIFO|fifo_mem~198_q\))))) # (!\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~302_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|fifo_mem~302_combout\,
	datac => \U_FIFO|fifo_mem~262_q\,
	datad => \U_FIFO|fifo_mem~198_q\,
	combout => \U_FIFO|fifo_mem~303_combout\);

-- Location: LCCOMB_X43_Y26_N12
\U_FIFO|fifo_mem~306\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~306_combout\ = (\U_FIFO|read_ptr\(2) & ((\U_FIFO|fifo_mem~303_combout\))) # (!\U_FIFO|read_ptr\(2) & (\U_FIFO|fifo_mem~305_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(2),
	datab => \U_FIFO|fifo_mem~305_combout\,
	datad => \U_FIFO|fifo_mem~303_combout\,
	combout => \U_FIFO|fifo_mem~306_combout\);

-- Location: FF_X41_Y26_N11
\U_FIFO|fifo_mem~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[3]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~39_q\);

-- Location: FF_X41_Y26_N1
\U_FIFO|fifo_mem~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[3]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~71_q\);

-- Location: LCCOMB_X41_Y26_N10
\U_FIFO|fifo_mem~309\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~309_combout\ = (\U_FIFO|read_ptr\(1) & (\U_FIFO|read_ptr\(0))) # (!\U_FIFO|read_ptr\(1) & ((\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~71_q\))) # (!\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~39_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(1),
	datab => \U_FIFO|read_ptr\(0),
	datac => \U_FIFO|fifo_mem~39_q\,
	datad => \U_FIFO|fifo_mem~71_q\,
	combout => \U_FIFO|fifo_mem~309_combout\);

-- Location: FF_X42_Y26_N25
\U_FIFO|fifo_mem~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[3]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~135_q\);

-- Location: FF_X42_Y26_N19
\U_FIFO|fifo_mem~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[3]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~103_q\);

-- Location: LCCOMB_X42_Y26_N24
\U_FIFO|fifo_mem~310\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~310_combout\ = (\U_FIFO|fifo_mem~309_combout\ & (((\U_FIFO|fifo_mem~135_q\)) # (!\U_FIFO|read_ptr\(1)))) # (!\U_FIFO|fifo_mem~309_combout\ & (\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~103_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~309_combout\,
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~135_q\,
	datad => \U_FIFO|fifo_mem~103_q\,
	combout => \U_FIFO|fifo_mem~310_combout\);

-- Location: LCCOMB_X43_Y26_N16
\U_FIFO|fifo_mem~199feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~199feeder_combout\ = \system_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[3]~input_o\,
	combout => \U_FIFO|fifo_mem~199feeder_combout\);

-- Location: FF_X43_Y26_N17
\U_FIFO|fifo_mem~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FIFO|fifo_mem~199feeder_combout\,
	ena => \U_FIFO|fifo_mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~199_q\);

-- Location: FF_X43_Y26_N3
\U_FIFO|fifo_mem~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[3]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~263_q\);

-- Location: FF_X46_Y26_N23
\U_FIFO|fifo_mem~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[3]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~167_q\);

-- Location: FF_X46_Y26_N17
\U_FIFO|fifo_mem~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[3]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~231_q\);

-- Location: LCCOMB_X46_Y26_N22
\U_FIFO|fifo_mem~307\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~307_combout\ = (\U_FIFO|read_ptr\(1) & ((\U_FIFO|read_ptr\(0)) # ((\U_FIFO|fifo_mem~231_q\)))) # (!\U_FIFO|read_ptr\(1) & (!\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~167_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(1),
	datab => \U_FIFO|read_ptr\(0),
	datac => \U_FIFO|fifo_mem~167_q\,
	datad => \U_FIFO|fifo_mem~231_q\,
	combout => \U_FIFO|fifo_mem~307_combout\);

-- Location: LCCOMB_X43_Y26_N2
\U_FIFO|fifo_mem~308\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~308_combout\ = (\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~307_combout\ & ((\U_FIFO|fifo_mem~263_q\))) # (!\U_FIFO|fifo_mem~307_combout\ & (\U_FIFO|fifo_mem~199_q\)))) # (!\U_FIFO|read_ptr\(0) & (((\U_FIFO|fifo_mem~307_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|fifo_mem~199_q\,
	datac => \U_FIFO|fifo_mem~263_q\,
	datad => \U_FIFO|fifo_mem~307_combout\,
	combout => \U_FIFO|fifo_mem~308_combout\);

-- Location: LCCOMB_X43_Y26_N0
\U_FIFO|fifo_mem~311\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~311_combout\ = (\U_FIFO|read_ptr\(2) & ((\U_FIFO|fifo_mem~308_combout\))) # (!\U_FIFO|read_ptr\(2) & (\U_FIFO|fifo_mem~310_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(2),
	datab => \U_FIFO|fifo_mem~310_combout\,
	datad => \U_FIFO|fifo_mem~308_combout\,
	combout => \U_FIFO|fifo_mem~311_combout\);

-- Location: FF_X43_Y26_N5
\U_FIFO|fifo_mem~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[4]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~200_q\);

-- Location: FF_X43_Y26_N23
\U_FIFO|fifo_mem~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[4]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~264_q\);

-- Location: FF_X46_Y26_N19
\U_FIFO|fifo_mem~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[4]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~168_q\);

-- Location: FF_X46_Y26_N29
\U_FIFO|fifo_mem~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[4]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~232_q\);

-- Location: LCCOMB_X46_Y26_N18
\U_FIFO|fifo_mem~312\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~312_combout\ = (\U_FIFO|read_ptr\(1) & ((\U_FIFO|read_ptr\(0)) # ((\U_FIFO|fifo_mem~232_q\)))) # (!\U_FIFO|read_ptr\(1) & (!\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~168_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(1),
	datab => \U_FIFO|read_ptr\(0),
	datac => \U_FIFO|fifo_mem~168_q\,
	datad => \U_FIFO|fifo_mem~232_q\,
	combout => \U_FIFO|fifo_mem~312_combout\);

-- Location: LCCOMB_X43_Y26_N22
\U_FIFO|fifo_mem~313\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~313_combout\ = (\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~312_combout\ & ((\U_FIFO|fifo_mem~264_q\))) # (!\U_FIFO|fifo_mem~312_combout\ & (\U_FIFO|fifo_mem~200_q\)))) # (!\U_FIFO|read_ptr\(0) & (((\U_FIFO|fifo_mem~312_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|fifo_mem~200_q\,
	datac => \U_FIFO|fifo_mem~264_q\,
	datad => \U_FIFO|fifo_mem~312_combout\,
	combout => \U_FIFO|fifo_mem~313_combout\);

-- Location: FF_X42_Y26_N11
\U_FIFO|fifo_mem~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[4]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~104_q\);

-- Location: FF_X42_Y26_N7
\U_FIFO|fifo_mem~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[4]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~136_q\);

-- Location: LCCOMB_X39_Y27_N12
\U_FIFO|fifo_mem~72feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~72feeder_combout\ = \system_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[4]~input_o\,
	combout => \U_FIFO|fifo_mem~72feeder_combout\);

-- Location: FF_X39_Y27_N13
\U_FIFO|fifo_mem~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FIFO|fifo_mem~72feeder_combout\,
	ena => \U_FIFO|fifo_mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~72_q\);

-- Location: FF_X39_Y27_N3
\U_FIFO|fifo_mem~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[4]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~40_q\);

-- Location: LCCOMB_X39_Y27_N2
\U_FIFO|fifo_mem~314\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~314_combout\ = (\U_FIFO|read_ptr\(1) & (((\U_FIFO|read_ptr\(0))))) # (!\U_FIFO|read_ptr\(1) & ((\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~72_q\)) # (!\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~40_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(1),
	datab => \U_FIFO|fifo_mem~72_q\,
	datac => \U_FIFO|fifo_mem~40_q\,
	datad => \U_FIFO|read_ptr\(0),
	combout => \U_FIFO|fifo_mem~314_combout\);

-- Location: LCCOMB_X42_Y26_N6
\U_FIFO|fifo_mem~315\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~315_combout\ = (\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~314_combout\ & ((\U_FIFO|fifo_mem~136_q\))) # (!\U_FIFO|fifo_mem~314_combout\ & (\U_FIFO|fifo_mem~104_q\)))) # (!\U_FIFO|read_ptr\(1) & (((\U_FIFO|fifo_mem~314_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~104_q\,
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~136_q\,
	datad => \U_FIFO|fifo_mem~314_combout\,
	combout => \U_FIFO|fifo_mem~315_combout\);

-- Location: LCCOMB_X43_Y26_N4
\U_FIFO|fifo_mem~316\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~316_combout\ = (\U_FIFO|read_ptr\(2) & (\U_FIFO|fifo_mem~313_combout\)) # (!\U_FIFO|read_ptr\(2) & ((\U_FIFO|fifo_mem~315_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~313_combout\,
	datab => \U_FIFO|fifo_mem~315_combout\,
	datad => \U_FIFO|read_ptr\(2),
	combout => \U_FIFO|fifo_mem~316_combout\);

-- Location: FF_X43_Y26_N21
\U_FIFO|fifo_mem~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[5]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~201_q\);

-- Location: FF_X43_Y26_N31
\U_FIFO|fifo_mem~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[5]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~265_q\);

-- Location: FF_X46_Y26_N31
\U_FIFO|fifo_mem~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[5]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~169_q\);

-- Location: FF_X46_Y26_N25
\U_FIFO|fifo_mem~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[5]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~233_q\);

-- Location: LCCOMB_X46_Y26_N30
\U_FIFO|fifo_mem~317\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~317_combout\ = (\U_FIFO|read_ptr\(1) & ((\U_FIFO|read_ptr\(0)) # ((\U_FIFO|fifo_mem~233_q\)))) # (!\U_FIFO|read_ptr\(1) & (!\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~169_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(1),
	datab => \U_FIFO|read_ptr\(0),
	datac => \U_FIFO|fifo_mem~169_q\,
	datad => \U_FIFO|fifo_mem~233_q\,
	combout => \U_FIFO|fifo_mem~317_combout\);

-- Location: LCCOMB_X43_Y26_N30
\U_FIFO|fifo_mem~318\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~318_combout\ = (\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~317_combout\ & ((\U_FIFO|fifo_mem~265_q\))) # (!\U_FIFO|fifo_mem~317_combout\ & (\U_FIFO|fifo_mem~201_q\)))) # (!\U_FIFO|read_ptr\(0) & (((\U_FIFO|fifo_mem~317_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|fifo_mem~201_q\,
	datac => \U_FIFO|fifo_mem~265_q\,
	datad => \U_FIFO|fifo_mem~317_combout\,
	combout => \U_FIFO|fifo_mem~318_combout\);

-- Location: FF_X39_Y27_N5
\U_FIFO|fifo_mem~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[5]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~73_q\);

-- Location: FF_X39_Y27_N19
\U_FIFO|fifo_mem~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[5]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~41_q\);

-- Location: LCCOMB_X39_Y27_N18
\U_FIFO|fifo_mem~319\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~319_combout\ = (\U_FIFO|read_ptr\(1) & (((\U_FIFO|read_ptr\(0))))) # (!\U_FIFO|read_ptr\(1) & ((\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~73_q\)) # (!\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~41_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(1),
	datab => \U_FIFO|fifo_mem~73_q\,
	datac => \U_FIFO|fifo_mem~41_q\,
	datad => \U_FIFO|read_ptr\(0),
	combout => \U_FIFO|fifo_mem~319_combout\);

-- Location: FF_X43_Y25_N11
\U_FIFO|fifo_mem~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[5]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~137_q\);

-- Location: FF_X43_Y25_N1
\U_FIFO|fifo_mem~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[5]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~105_q\);

-- Location: LCCOMB_X43_Y25_N10
\U_FIFO|fifo_mem~320\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~320_combout\ = (\U_FIFO|fifo_mem~319_combout\ & (((\U_FIFO|fifo_mem~137_q\)) # (!\U_FIFO|read_ptr\(1)))) # (!\U_FIFO|fifo_mem~319_combout\ & (\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~105_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~319_combout\,
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~137_q\,
	datad => \U_FIFO|fifo_mem~105_q\,
	combout => \U_FIFO|fifo_mem~320_combout\);

-- Location: LCCOMB_X43_Y25_N20
\U_FIFO|fifo_mem~321\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~321_combout\ = (\U_FIFO|read_ptr\(2) & (\U_FIFO|fifo_mem~318_combout\)) # (!\U_FIFO|read_ptr\(2) & ((\U_FIFO|fifo_mem~320_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(2),
	datac => \U_FIFO|fifo_mem~318_combout\,
	datad => \U_FIFO|fifo_mem~320_combout\,
	combout => \U_FIFO|fifo_mem~321_combout\);

-- Location: FF_X39_Y27_N9
\U_FIFO|fifo_mem~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[6]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~74_q\);

-- Location: FF_X39_Y27_N23
\U_FIFO|fifo_mem~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[6]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~42_q\);

-- Location: LCCOMB_X39_Y27_N22
\U_FIFO|fifo_mem~324\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~324_combout\ = (\U_FIFO|read_ptr\(1) & (((\U_FIFO|read_ptr\(0))))) # (!\U_FIFO|read_ptr\(1) & ((\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~74_q\)) # (!\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~42_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(1),
	datab => \U_FIFO|fifo_mem~74_q\,
	datac => \U_FIFO|fifo_mem~42_q\,
	datad => \U_FIFO|read_ptr\(0),
	combout => \U_FIFO|fifo_mem~324_combout\);

-- Location: FF_X42_Y26_N15
\U_FIFO|fifo_mem~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[6]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~138_q\);

-- Location: FF_X42_Y26_N17
\U_FIFO|fifo_mem~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[6]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~106_q\);

-- Location: LCCOMB_X42_Y26_N14
\U_FIFO|fifo_mem~325\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~325_combout\ = (\U_FIFO|fifo_mem~324_combout\ & (((\U_FIFO|fifo_mem~138_q\)) # (!\U_FIFO|read_ptr\(1)))) # (!\U_FIFO|fifo_mem~324_combout\ & (\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~106_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~324_combout\,
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~138_q\,
	datad => \U_FIFO|fifo_mem~106_q\,
	combout => \U_FIFO|fifo_mem~325_combout\);

-- Location: FF_X46_Y26_N27
\U_FIFO|fifo_mem~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[6]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~170_q\);

-- Location: FF_X46_Y26_N21
\U_FIFO|fifo_mem~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[6]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~234_q\);

-- Location: LCCOMB_X46_Y26_N26
\U_FIFO|fifo_mem~322\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~322_combout\ = (\U_FIFO|read_ptr\(1) & ((\U_FIFO|read_ptr\(0)) # ((\U_FIFO|fifo_mem~234_q\)))) # (!\U_FIFO|read_ptr\(1) & (!\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~170_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(1),
	datab => \U_FIFO|read_ptr\(0),
	datac => \U_FIFO|fifo_mem~170_q\,
	datad => \U_FIFO|fifo_mem~234_q\,
	combout => \U_FIFO|fifo_mem~322_combout\);

-- Location: FF_X43_Y26_N7
\U_FIFO|fifo_mem~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[6]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~266_q\);

-- Location: FF_X43_Y26_N29
\U_FIFO|fifo_mem~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[6]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~202_q\);

-- Location: LCCOMB_X43_Y26_N6
\U_FIFO|fifo_mem~323\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~323_combout\ = (\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~322_combout\ & (\U_FIFO|fifo_mem~266_q\)) # (!\U_FIFO|fifo_mem~322_combout\ & ((\U_FIFO|fifo_mem~202_q\))))) # (!\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~322_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|fifo_mem~322_combout\,
	datac => \U_FIFO|fifo_mem~266_q\,
	datad => \U_FIFO|fifo_mem~202_q\,
	combout => \U_FIFO|fifo_mem~323_combout\);

-- Location: LCCOMB_X43_Y26_N28
\U_FIFO|fifo_mem~326\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~326_combout\ = (\U_FIFO|read_ptr\(2) & ((\U_FIFO|fifo_mem~323_combout\))) # (!\U_FIFO|read_ptr\(2) & (\U_FIFO|fifo_mem~325_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(2),
	datab => \U_FIFO|fifo_mem~325_combout\,
	datad => \U_FIFO|fifo_mem~323_combout\,
	combout => \U_FIFO|fifo_mem~326_combout\);

-- Location: LCCOMB_X39_Y27_N0
\U_FIFO|fifo_mem~75feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~75feeder_combout\ = \system_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[7]~input_o\,
	combout => \U_FIFO|fifo_mem~75feeder_combout\);

-- Location: FF_X39_Y27_N1
\U_FIFO|fifo_mem~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FIFO|fifo_mem~75feeder_combout\,
	ena => \U_FIFO|fifo_mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~75_q\);

-- Location: FF_X39_Y27_N7
\U_FIFO|fifo_mem~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[7]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~43_q\);

-- Location: LCCOMB_X39_Y27_N6
\U_FIFO|fifo_mem~329\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~329_combout\ = (\U_FIFO|read_ptr\(1) & (((\U_FIFO|read_ptr\(0))))) # (!\U_FIFO|read_ptr\(1) & ((\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~75_q\)) # (!\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~43_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(1),
	datab => \U_FIFO|fifo_mem~75_q\,
	datac => \U_FIFO|fifo_mem~43_q\,
	datad => \U_FIFO|read_ptr\(0),
	combout => \U_FIFO|fifo_mem~329_combout\);

-- Location: FF_X46_Y27_N5
\U_FIFO|fifo_mem~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[7]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~107_q\);

-- Location: FF_X46_Y27_N31
\U_FIFO|fifo_mem~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[7]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~139_q\);

-- Location: LCCOMB_X46_Y27_N30
\U_FIFO|fifo_mem~330\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~330_combout\ = (\U_FIFO|fifo_mem~329_combout\ & (((\U_FIFO|fifo_mem~139_q\) # (!\U_FIFO|read_ptr\(1))))) # (!\U_FIFO|fifo_mem~329_combout\ & (\U_FIFO|fifo_mem~107_q\ & ((\U_FIFO|read_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~329_combout\,
	datab => \U_FIFO|fifo_mem~107_q\,
	datac => \U_FIFO|fifo_mem~139_q\,
	datad => \U_FIFO|read_ptr\(1),
	combout => \U_FIFO|fifo_mem~330_combout\);

-- Location: FF_X44_Y28_N1
\U_FIFO|fifo_mem~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[7]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~203_q\);

-- Location: FF_X44_Y28_N31
\U_FIFO|fifo_mem~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[7]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~267_q\);

-- Location: FF_X48_Y27_N3
\U_FIFO|fifo_mem~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[7]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~171_q\);

-- Location: LCCOMB_X48_Y27_N24
\U_FIFO|fifo_mem~235feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~235feeder_combout\ = \system_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[7]~input_o\,
	combout => \U_FIFO|fifo_mem~235feeder_combout\);

-- Location: FF_X48_Y27_N25
\U_FIFO|fifo_mem~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FIFO|fifo_mem~235feeder_combout\,
	ena => \U_FIFO|fifo_mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~235_q\);

-- Location: LCCOMB_X48_Y27_N2
\U_FIFO|fifo_mem~327\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~327_combout\ = (\U_FIFO|read_ptr\(0) & (\U_FIFO|read_ptr\(1))) # (!\U_FIFO|read_ptr\(0) & ((\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~235_q\))) # (!\U_FIFO|read_ptr\(1) & (\U_FIFO|fifo_mem~171_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~171_q\,
	datad => \U_FIFO|fifo_mem~235_q\,
	combout => \U_FIFO|fifo_mem~327_combout\);

-- Location: LCCOMB_X44_Y28_N30
\U_FIFO|fifo_mem~328\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~328_combout\ = (\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~327_combout\ & ((\U_FIFO|fifo_mem~267_q\))) # (!\U_FIFO|fifo_mem~327_combout\ & (\U_FIFO|fifo_mem~203_q\)))) # (!\U_FIFO|read_ptr\(0) & (((\U_FIFO|fifo_mem~327_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|fifo_mem~203_q\,
	datac => \U_FIFO|fifo_mem~267_q\,
	datad => \U_FIFO|fifo_mem~327_combout\,
	combout => \U_FIFO|fifo_mem~328_combout\);

-- Location: LCCOMB_X46_Y27_N8
\U_FIFO|fifo_mem~331\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~331_combout\ = (\U_FIFO|read_ptr\(2) & ((\U_FIFO|fifo_mem~328_combout\))) # (!\U_FIFO|read_ptr\(2) & (\U_FIFO|fifo_mem~330_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~330_combout\,
	datab => \U_FIFO|read_ptr\(2),
	datac => \U_FIFO|fifo_mem~328_combout\,
	combout => \U_FIFO|fifo_mem~331_combout\);

-- Location: FF_X39_Y27_N17
\U_FIFO|fifo_mem~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[8]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~76_q\);

-- Location: FF_X39_Y27_N27
\U_FIFO|fifo_mem~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[8]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~44_q\);

-- Location: LCCOMB_X39_Y27_N26
\U_FIFO|fifo_mem~334\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~334_combout\ = (\U_FIFO|read_ptr\(1) & (((\U_FIFO|read_ptr\(0))))) # (!\U_FIFO|read_ptr\(1) & ((\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~76_q\)) # (!\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~44_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(1),
	datab => \U_FIFO|fifo_mem~76_q\,
	datac => \U_FIFO|fifo_mem~44_q\,
	datad => \U_FIFO|read_ptr\(0),
	combout => \U_FIFO|fifo_mem~334_combout\);

-- Location: FF_X42_Y26_N27
\U_FIFO|fifo_mem~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[8]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~140_q\);

-- Location: LCCOMB_X42_Y26_N0
\U_FIFO|fifo_mem~108feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~108feeder_combout\ = \system_data[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[8]~input_o\,
	combout => \U_FIFO|fifo_mem~108feeder_combout\);

-- Location: FF_X42_Y26_N1
\U_FIFO|fifo_mem~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FIFO|fifo_mem~108feeder_combout\,
	ena => \U_FIFO|fifo_mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~108_q\);

-- Location: LCCOMB_X42_Y26_N26
\U_FIFO|fifo_mem~335\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~335_combout\ = (\U_FIFO|fifo_mem~334_combout\ & (((\U_FIFO|fifo_mem~140_q\)) # (!\U_FIFO|read_ptr\(1)))) # (!\U_FIFO|fifo_mem~334_combout\ & (\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~108_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~334_combout\,
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~140_q\,
	datad => \U_FIFO|fifo_mem~108_q\,
	combout => \U_FIFO|fifo_mem~335_combout\);

-- Location: FF_X48_Y27_N31
\U_FIFO|fifo_mem~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[8]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~172_q\);

-- Location: FF_X48_Y27_N1
\U_FIFO|fifo_mem~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[8]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~236_q\);

-- Location: LCCOMB_X48_Y27_N30
\U_FIFO|fifo_mem~332\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~332_combout\ = (\U_FIFO|read_ptr\(0) & (\U_FIFO|read_ptr\(1))) # (!\U_FIFO|read_ptr\(0) & ((\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~236_q\))) # (!\U_FIFO|read_ptr\(1) & (\U_FIFO|fifo_mem~172_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~172_q\,
	datad => \U_FIFO|fifo_mem~236_q\,
	combout => \U_FIFO|fifo_mem~332_combout\);

-- Location: FF_X44_Y28_N3
\U_FIFO|fifo_mem~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[8]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~268_q\);

-- Location: FF_X44_Y28_N13
\U_FIFO|fifo_mem~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[8]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~204_q\);

-- Location: LCCOMB_X44_Y28_N2
\U_FIFO|fifo_mem~333\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~333_combout\ = (\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~332_combout\ & (\U_FIFO|fifo_mem~268_q\)) # (!\U_FIFO|fifo_mem~332_combout\ & ((\U_FIFO|fifo_mem~204_q\))))) # (!\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~332_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|fifo_mem~332_combout\,
	datac => \U_FIFO|fifo_mem~268_q\,
	datad => \U_FIFO|fifo_mem~204_q\,
	combout => \U_FIFO|fifo_mem~333_combout\);

-- Location: LCCOMB_X44_Y28_N20
\U_FIFO|fifo_mem~336\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~336_combout\ = (\U_FIFO|read_ptr\(2) & ((\U_FIFO|fifo_mem~333_combout\))) # (!\U_FIFO|read_ptr\(2) & (\U_FIFO|fifo_mem~335_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(2),
	datac => \U_FIFO|fifo_mem~335_combout\,
	datad => \U_FIFO|fifo_mem~333_combout\,
	combout => \U_FIFO|fifo_mem~336_combout\);

-- Location: FF_X42_Y26_N13
\U_FIFO|fifo_mem~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[9]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~109_q\);

-- Location: FF_X42_Y26_N31
\U_FIFO|fifo_mem~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[9]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~141_q\);

-- Location: FF_X39_Y27_N29
\U_FIFO|fifo_mem~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[9]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~77_q\);

-- Location: FF_X39_Y27_N15
\U_FIFO|fifo_mem~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[9]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~45_q\);

-- Location: LCCOMB_X39_Y27_N14
\U_FIFO|fifo_mem~339\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~339_combout\ = (\U_FIFO|read_ptr\(1) & (((\U_FIFO|read_ptr\(0))))) # (!\U_FIFO|read_ptr\(1) & ((\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~77_q\)) # (!\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~45_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(1),
	datab => \U_FIFO|fifo_mem~77_q\,
	datac => \U_FIFO|fifo_mem~45_q\,
	datad => \U_FIFO|read_ptr\(0),
	combout => \U_FIFO|fifo_mem~339_combout\);

-- Location: LCCOMB_X42_Y26_N30
\U_FIFO|fifo_mem~340\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~340_combout\ = (\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~339_combout\ & ((\U_FIFO|fifo_mem~141_q\))) # (!\U_FIFO|fifo_mem~339_combout\ & (\U_FIFO|fifo_mem~109_q\)))) # (!\U_FIFO|read_ptr\(1) & (((\U_FIFO|fifo_mem~339_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~109_q\,
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~141_q\,
	datad => \U_FIFO|fifo_mem~339_combout\,
	combout => \U_FIFO|fifo_mem~340_combout\);

-- Location: FF_X44_Y28_N23
\U_FIFO|fifo_mem~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[9]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~205_q\);

-- Location: FF_X48_Y27_N9
\U_FIFO|fifo_mem~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[9]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~237_q\);

-- Location: FF_X48_Y27_N7
\U_FIFO|fifo_mem~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[9]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~173_q\);

-- Location: LCCOMB_X48_Y27_N6
\U_FIFO|fifo_mem~337\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~337_combout\ = (\U_FIFO|read_ptr\(0) & (((\U_FIFO|read_ptr\(1))))) # (!\U_FIFO|read_ptr\(0) & ((\U_FIFO|read_ptr\(1) & (\U_FIFO|fifo_mem~237_q\)) # (!\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~173_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|fifo_mem~237_q\,
	datac => \U_FIFO|fifo_mem~173_q\,
	datad => \U_FIFO|read_ptr\(1),
	combout => \U_FIFO|fifo_mem~337_combout\);

-- Location: FF_X44_Y28_N17
\U_FIFO|fifo_mem~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[9]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~269_q\);

-- Location: LCCOMB_X44_Y28_N16
\U_FIFO|fifo_mem~338\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~338_combout\ = (\U_FIFO|fifo_mem~337_combout\ & (((\U_FIFO|fifo_mem~269_q\) # (!\U_FIFO|read_ptr\(0))))) # (!\U_FIFO|fifo_mem~337_combout\ & (\U_FIFO|fifo_mem~205_q\ & ((\U_FIFO|read_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~205_q\,
	datab => \U_FIFO|fifo_mem~337_combout\,
	datac => \U_FIFO|fifo_mem~269_q\,
	datad => \U_FIFO|read_ptr\(0),
	combout => \U_FIFO|fifo_mem~338_combout\);

-- Location: LCCOMB_X44_Y28_N6
\U_FIFO|fifo_mem~341\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~341_combout\ = (\U_FIFO|read_ptr\(2) & ((\U_FIFO|fifo_mem~338_combout\))) # (!\U_FIFO|read_ptr\(2) & (\U_FIFO|fifo_mem~340_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(2),
	datab => \U_FIFO|fifo_mem~340_combout\,
	datad => \U_FIFO|fifo_mem~338_combout\,
	combout => \U_FIFO|fifo_mem~341_combout\);

-- Location: FF_X42_Y25_N13
\U_FIFO|fifo_mem~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[10]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~78_q\);

-- Location: FF_X42_Y25_N15
\U_FIFO|fifo_mem~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[10]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~46_q\);

-- Location: LCCOMB_X42_Y25_N14
\U_FIFO|fifo_mem~344\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~344_combout\ = (\U_FIFO|read_ptr\(1) & (((\U_FIFO|read_ptr\(0))))) # (!\U_FIFO|read_ptr\(1) & ((\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~78_q\)) # (!\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~46_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~78_q\,
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~46_q\,
	datad => \U_FIFO|read_ptr\(0),
	combout => \U_FIFO|fifo_mem~344_combout\);

-- Location: FF_X43_Y25_N25
\U_FIFO|fifo_mem~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[10]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~142_q\);

-- Location: FF_X43_Y25_N7
\U_FIFO|fifo_mem~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[10]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~110_q\);

-- Location: LCCOMB_X43_Y25_N24
\U_FIFO|fifo_mem~345\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~345_combout\ = (\U_FIFO|fifo_mem~344_combout\ & (((\U_FIFO|fifo_mem~142_q\)) # (!\U_FIFO|read_ptr\(1)))) # (!\U_FIFO|fifo_mem~344_combout\ & (\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~110_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~344_combout\,
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~142_q\,
	datad => \U_FIFO|fifo_mem~110_q\,
	combout => \U_FIFO|fifo_mem~345_combout\);

-- Location: LCCOMB_X48_Y27_N4
\U_FIFO|fifo_mem~238feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~238feeder_combout\ = \system_data[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[10]~input_o\,
	combout => \U_FIFO|fifo_mem~238feeder_combout\);

-- Location: FF_X48_Y27_N5
\U_FIFO|fifo_mem~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FIFO|fifo_mem~238feeder_combout\,
	ena => \U_FIFO|fifo_mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~238_q\);

-- Location: FF_X48_Y27_N23
\U_FIFO|fifo_mem~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[10]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~174_q\);

-- Location: LCCOMB_X48_Y27_N22
\U_FIFO|fifo_mem~342\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~342_combout\ = (\U_FIFO|read_ptr\(0) & (((\U_FIFO|read_ptr\(1))))) # (!\U_FIFO|read_ptr\(0) & ((\U_FIFO|read_ptr\(1) & (\U_FIFO|fifo_mem~238_q\)) # (!\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~174_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|fifo_mem~238_q\,
	datac => \U_FIFO|fifo_mem~174_q\,
	datad => \U_FIFO|read_ptr\(1),
	combout => \U_FIFO|fifo_mem~342_combout\);

-- Location: FF_X44_Y27_N3
\U_FIFO|fifo_mem~270\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[10]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~270_q\);

-- Location: FF_X44_Y27_N1
\U_FIFO|fifo_mem~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[10]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~206_q\);

-- Location: LCCOMB_X44_Y27_N2
\U_FIFO|fifo_mem~343\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~343_combout\ = (\U_FIFO|fifo_mem~342_combout\ & (((\U_FIFO|fifo_mem~270_q\)) # (!\U_FIFO|read_ptr\(0)))) # (!\U_FIFO|fifo_mem~342_combout\ & (\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~206_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~342_combout\,
	datab => \U_FIFO|read_ptr\(0),
	datac => \U_FIFO|fifo_mem~270_q\,
	datad => \U_FIFO|fifo_mem~206_q\,
	combout => \U_FIFO|fifo_mem~343_combout\);

-- Location: LCCOMB_X44_Y27_N16
\U_FIFO|fifo_mem~346\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~346_combout\ = (\U_FIFO|read_ptr\(2) & ((\U_FIFO|fifo_mem~343_combout\))) # (!\U_FIFO|read_ptr\(2) & (\U_FIFO|fifo_mem~345_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(2),
	datab => \U_FIFO|fifo_mem~345_combout\,
	datad => \U_FIFO|fifo_mem~343_combout\,
	combout => \U_FIFO|fifo_mem~346_combout\);

-- Location: FF_X42_Y25_N17
\U_FIFO|fifo_mem~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[11]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~79_q\);

-- Location: FF_X42_Y25_N11
\U_FIFO|fifo_mem~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[11]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~47_q\);

-- Location: LCCOMB_X42_Y25_N10
\U_FIFO|fifo_mem~349\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~349_combout\ = (\U_FIFO|read_ptr\(1) & (((\U_FIFO|read_ptr\(0))))) # (!\U_FIFO|read_ptr\(1) & ((\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~79_q\)) # (!\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~47_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~79_q\,
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~47_q\,
	datad => \U_FIFO|read_ptr\(0),
	combout => \U_FIFO|fifo_mem~349_combout\);

-- Location: FF_X43_Y25_N13
\U_FIFO|fifo_mem~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[11]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~143_q\);

-- Location: FF_X43_Y25_N3
\U_FIFO|fifo_mem~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[11]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~111_q\);

-- Location: LCCOMB_X43_Y25_N12
\U_FIFO|fifo_mem~350\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~350_combout\ = (\U_FIFO|fifo_mem~349_combout\ & (((\U_FIFO|fifo_mem~143_q\)) # (!\U_FIFO|read_ptr\(1)))) # (!\U_FIFO|fifo_mem~349_combout\ & (\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~111_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~349_combout\,
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~143_q\,
	datad => \U_FIFO|fifo_mem~111_q\,
	combout => \U_FIFO|fifo_mem~350_combout\);

-- Location: FF_X47_Y27_N17
\U_FIFO|fifo_mem~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[11]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~207_q\);

-- Location: FF_X44_Y27_N15
\U_FIFO|fifo_mem~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[11]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~271_q\);

-- Location: FF_X48_Y27_N19
\U_FIFO|fifo_mem~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[11]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~175_q\);

-- Location: FF_X48_Y27_N13
\U_FIFO|fifo_mem~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[11]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~239_q\);

-- Location: LCCOMB_X48_Y27_N18
\U_FIFO|fifo_mem~347\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~347_combout\ = (\U_FIFO|read_ptr\(0) & (\U_FIFO|read_ptr\(1))) # (!\U_FIFO|read_ptr\(0) & ((\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~239_q\))) # (!\U_FIFO|read_ptr\(1) & (\U_FIFO|fifo_mem~175_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~175_q\,
	datad => \U_FIFO|fifo_mem~239_q\,
	combout => \U_FIFO|fifo_mem~347_combout\);

-- Location: LCCOMB_X44_Y27_N14
\U_FIFO|fifo_mem~348\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~348_combout\ = (\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~347_combout\ & ((\U_FIFO|fifo_mem~271_q\))) # (!\U_FIFO|fifo_mem~347_combout\ & (\U_FIFO|fifo_mem~207_q\)))) # (!\U_FIFO|read_ptr\(0) & (((\U_FIFO|fifo_mem~347_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~207_q\,
	datab => \U_FIFO|read_ptr\(0),
	datac => \U_FIFO|fifo_mem~271_q\,
	datad => \U_FIFO|fifo_mem~347_combout\,
	combout => \U_FIFO|fifo_mem~348_combout\);

-- Location: LCCOMB_X43_Y25_N26
\U_FIFO|fifo_mem~351\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~351_combout\ = (\U_FIFO|read_ptr\(2) & ((\U_FIFO|fifo_mem~348_combout\))) # (!\U_FIFO|read_ptr\(2) & (\U_FIFO|fifo_mem~350_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~350_combout\,
	datab => \U_FIFO|read_ptr\(2),
	datad => \U_FIFO|fifo_mem~348_combout\,
	combout => \U_FIFO|fifo_mem~351_combout\);

-- Location: LCCOMB_X44_Y27_N28
\U_FIFO|fifo_mem~208feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~208feeder_combout\ = \system_data[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[12]~input_o\,
	combout => \U_FIFO|fifo_mem~208feeder_combout\);

-- Location: FF_X44_Y27_N29
\U_FIFO|fifo_mem~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FIFO|fifo_mem~208feeder_combout\,
	ena => \U_FIFO|fifo_mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~208_q\);

-- Location: FF_X47_Y27_N27
\U_FIFO|fifo_mem~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[12]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~272_q\);

-- Location: FF_X48_Y27_N27
\U_FIFO|fifo_mem~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[12]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~176_q\);

-- Location: FF_X48_Y27_N29
\U_FIFO|fifo_mem~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[12]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~240_q\);

-- Location: LCCOMB_X48_Y27_N26
\U_FIFO|fifo_mem~352\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~352_combout\ = (\U_FIFO|read_ptr\(0) & (\U_FIFO|read_ptr\(1))) # (!\U_FIFO|read_ptr\(0) & ((\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~240_q\))) # (!\U_FIFO|read_ptr\(1) & (\U_FIFO|fifo_mem~176_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~176_q\,
	datad => \U_FIFO|fifo_mem~240_q\,
	combout => \U_FIFO|fifo_mem~352_combout\);

-- Location: LCCOMB_X47_Y27_N26
\U_FIFO|fifo_mem~353\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~353_combout\ = (\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~352_combout\ & ((\U_FIFO|fifo_mem~272_q\))) # (!\U_FIFO|fifo_mem~352_combout\ & (\U_FIFO|fifo_mem~208_q\)))) # (!\U_FIFO|read_ptr\(0) & (((\U_FIFO|fifo_mem~352_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|fifo_mem~208_q\,
	datac => \U_FIFO|fifo_mem~272_q\,
	datad => \U_FIFO|fifo_mem~352_combout\,
	combout => \U_FIFO|fifo_mem~353_combout\);

-- Location: FF_X42_Y25_N29
\U_FIFO|fifo_mem~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[12]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~80_q\);

-- Location: FF_X42_Y25_N27
\U_FIFO|fifo_mem~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[12]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~48_q\);

-- Location: LCCOMB_X42_Y25_N26
\U_FIFO|fifo_mem~354\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~354_combout\ = (\U_FIFO|read_ptr\(1) & (((\U_FIFO|read_ptr\(0))))) # (!\U_FIFO|read_ptr\(1) & ((\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~80_q\)) # (!\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~48_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(1),
	datab => \U_FIFO|fifo_mem~80_q\,
	datac => \U_FIFO|fifo_mem~48_q\,
	datad => \U_FIFO|read_ptr\(0),
	combout => \U_FIFO|fifo_mem~354_combout\);

-- Location: FF_X43_Y25_N19
\U_FIFO|fifo_mem~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[12]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~144_q\);

-- Location: FF_X43_Y25_N29
\U_FIFO|fifo_mem~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[12]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~112_q\);

-- Location: LCCOMB_X43_Y25_N18
\U_FIFO|fifo_mem~355\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~355_combout\ = (\U_FIFO|fifo_mem~354_combout\ & (((\U_FIFO|fifo_mem~144_q\)) # (!\U_FIFO|read_ptr\(1)))) # (!\U_FIFO|fifo_mem~354_combout\ & (\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~112_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~354_combout\,
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~144_q\,
	datad => \U_FIFO|fifo_mem~112_q\,
	combout => \U_FIFO|fifo_mem~355_combout\);

-- Location: LCCOMB_X44_Y27_N22
\U_FIFO|fifo_mem~356\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~356_combout\ = (\U_FIFO|read_ptr\(2) & (\U_FIFO|fifo_mem~353_combout\)) # (!\U_FIFO|read_ptr\(2) & ((\U_FIFO|fifo_mem~355_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(2),
	datab => \U_FIFO|fifo_mem~353_combout\,
	datad => \U_FIFO|fifo_mem~355_combout\,
	combout => \U_FIFO|fifo_mem~356_combout\);

-- Location: FF_X44_Y27_N23
\U_FIFO|fifo_mem~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[13]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~209_q\);

-- Location: FF_X44_Y27_N5
\U_FIFO|fifo_mem~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[13]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~273_q\);

-- Location: FF_X48_Y27_N15
\U_FIFO|fifo_mem~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[13]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~177_q\);

-- Location: LCCOMB_X48_Y27_N20
\U_FIFO|fifo_mem~241feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~241feeder_combout\ = \system_data[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[13]~input_o\,
	combout => \U_FIFO|fifo_mem~241feeder_combout\);

-- Location: FF_X48_Y27_N21
\U_FIFO|fifo_mem~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FIFO|fifo_mem~241feeder_combout\,
	ena => \U_FIFO|fifo_mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~241_q\);

-- Location: LCCOMB_X48_Y27_N14
\U_FIFO|fifo_mem~357\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~357_combout\ = (\U_FIFO|read_ptr\(0) & (\U_FIFO|read_ptr\(1))) # (!\U_FIFO|read_ptr\(0) & ((\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~241_q\))) # (!\U_FIFO|read_ptr\(1) & (\U_FIFO|fifo_mem~177_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~177_q\,
	datad => \U_FIFO|fifo_mem~241_q\,
	combout => \U_FIFO|fifo_mem~357_combout\);

-- Location: LCCOMB_X44_Y27_N4
\U_FIFO|fifo_mem~358\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~358_combout\ = (\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~357_combout\ & ((\U_FIFO|fifo_mem~273_q\))) # (!\U_FIFO|fifo_mem~357_combout\ & (\U_FIFO|fifo_mem~209_q\)))) # (!\U_FIFO|read_ptr\(0) & (((\U_FIFO|fifo_mem~357_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~209_q\,
	datab => \U_FIFO|read_ptr\(0),
	datac => \U_FIFO|fifo_mem~273_q\,
	datad => \U_FIFO|fifo_mem~357_combout\,
	combout => \U_FIFO|fifo_mem~358_combout\);

-- Location: FF_X44_Y24_N9
\U_FIFO|fifo_mem~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[13]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~81_q\);

-- Location: FF_X44_Y24_N11
\U_FIFO|fifo_mem~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[13]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~49_q\);

-- Location: LCCOMB_X44_Y24_N10
\U_FIFO|fifo_mem~359\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~359_combout\ = (\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~81_q\) # ((\U_FIFO|read_ptr\(1))))) # (!\U_FIFO|read_ptr\(0) & (((\U_FIFO|fifo_mem~49_q\ & !\U_FIFO|read_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|fifo_mem~81_q\,
	datac => \U_FIFO|fifo_mem~49_q\,
	datad => \U_FIFO|read_ptr\(1),
	combout => \U_FIFO|fifo_mem~359_combout\);

-- Location: FF_X46_Y27_N1
\U_FIFO|fifo_mem~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[13]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~145_q\);

-- Location: FF_X46_Y27_N19
\U_FIFO|fifo_mem~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[13]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~113_q\);

-- Location: LCCOMB_X46_Y27_N0
\U_FIFO|fifo_mem~360\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~360_combout\ = (\U_FIFO|fifo_mem~359_combout\ & (((\U_FIFO|fifo_mem~145_q\)) # (!\U_FIFO|read_ptr\(1)))) # (!\U_FIFO|fifo_mem~359_combout\ & (\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~113_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~359_combout\,
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~145_q\,
	datad => \U_FIFO|fifo_mem~113_q\,
	combout => \U_FIFO|fifo_mem~360_combout\);

-- Location: LCCOMB_X44_Y27_N0
\U_FIFO|fifo_mem~361\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~361_combout\ = (\U_FIFO|read_ptr\(2) & (\U_FIFO|fifo_mem~358_combout\)) # (!\U_FIFO|read_ptr\(2) & ((\U_FIFO|fifo_mem~360_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(2),
	datab => \U_FIFO|fifo_mem~358_combout\,
	datad => \U_FIFO|fifo_mem~360_combout\,
	combout => \U_FIFO|fifo_mem~361_combout\);

-- Location: FF_X47_Y26_N29
\U_FIFO|fifo_mem~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[14]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~242_q\);

-- Location: FF_X47_Y26_N23
\U_FIFO|fifo_mem~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[14]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~178_q\);

-- Location: LCCOMB_X47_Y26_N22
\U_FIFO|fifo_mem~362\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~362_combout\ = (\U_FIFO|read_ptr\(0) & (((\U_FIFO|read_ptr\(1))))) # (!\U_FIFO|read_ptr\(0) & ((\U_FIFO|read_ptr\(1) & (\U_FIFO|fifo_mem~242_q\)) # (!\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~178_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|fifo_mem~242_q\,
	datac => \U_FIFO|fifo_mem~178_q\,
	datad => \U_FIFO|read_ptr\(1),
	combout => \U_FIFO|fifo_mem~362_combout\);

-- Location: FF_X44_Y27_N9
\U_FIFO|fifo_mem~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[14]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~274_q\);

-- Location: FF_X44_Y27_N11
\U_FIFO|fifo_mem~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[14]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~210_q\);

-- Location: LCCOMB_X44_Y27_N8
\U_FIFO|fifo_mem~363\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~363_combout\ = (\U_FIFO|fifo_mem~362_combout\ & (((\U_FIFO|fifo_mem~274_q\)) # (!\U_FIFO|read_ptr\(0)))) # (!\U_FIFO|fifo_mem~362_combout\ & (\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~210_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~362_combout\,
	datab => \U_FIFO|read_ptr\(0),
	datac => \U_FIFO|fifo_mem~274_q\,
	datad => \U_FIFO|fifo_mem~210_q\,
	combout => \U_FIFO|fifo_mem~363_combout\);

-- Location: FF_X44_Y24_N31
\U_FIFO|fifo_mem~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[14]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~50_q\);

-- Location: FF_X44_Y24_N29
\U_FIFO|fifo_mem~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[14]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~82_q\);

-- Location: LCCOMB_X44_Y24_N30
\U_FIFO|fifo_mem~364\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~364_combout\ = (\U_FIFO|read_ptr\(0) & ((\U_FIFO|read_ptr\(1)) # ((\U_FIFO|fifo_mem~82_q\)))) # (!\U_FIFO|read_ptr\(0) & (!\U_FIFO|read_ptr\(1) & (\U_FIFO|fifo_mem~50_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~50_q\,
	datad => \U_FIFO|fifo_mem~82_q\,
	combout => \U_FIFO|fifo_mem~364_combout\);

-- Location: FF_X43_Y24_N5
\U_FIFO|fifo_mem~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[14]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~114_q\);

-- Location: FF_X43_Y24_N19
\U_FIFO|fifo_mem~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[14]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~146_q\);

-- Location: LCCOMB_X43_Y24_N18
\U_FIFO|fifo_mem~365\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~365_combout\ = (\U_FIFO|fifo_mem~364_combout\ & (((\U_FIFO|fifo_mem~146_q\) # (!\U_FIFO|read_ptr\(1))))) # (!\U_FIFO|fifo_mem~364_combout\ & (\U_FIFO|fifo_mem~114_q\ & ((\U_FIFO|read_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~364_combout\,
	datab => \U_FIFO|fifo_mem~114_q\,
	datac => \U_FIFO|fifo_mem~146_q\,
	datad => \U_FIFO|read_ptr\(1),
	combout => \U_FIFO|fifo_mem~365_combout\);

-- Location: LCCOMB_X44_Y27_N10
\U_FIFO|fifo_mem~366\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~366_combout\ = (\U_FIFO|read_ptr\(2) & (\U_FIFO|fifo_mem~363_combout\)) # (!\U_FIFO|read_ptr\(2) & ((\U_FIFO|fifo_mem~365_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(2),
	datab => \U_FIFO|fifo_mem~363_combout\,
	datad => \U_FIFO|fifo_mem~365_combout\,
	combout => \U_FIFO|fifo_mem~366_combout\);

-- Location: FF_X43_Y24_N13
\U_FIFO|fifo_mem~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[15]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~115_q\);

-- Location: FF_X43_Y24_N7
\U_FIFO|fifo_mem~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[15]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~147_q\);

-- Location: FF_X44_Y24_N21
\U_FIFO|fifo_mem~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[15]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~83_q\);

-- Location: FF_X44_Y24_N27
\U_FIFO|fifo_mem~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[15]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~51_q\);

-- Location: LCCOMB_X44_Y24_N26
\U_FIFO|fifo_mem~369\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~369_combout\ = (\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~83_q\) # ((\U_FIFO|read_ptr\(1))))) # (!\U_FIFO|read_ptr\(0) & (((\U_FIFO|fifo_mem~51_q\ & !\U_FIFO|read_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|fifo_mem~83_q\,
	datac => \U_FIFO|fifo_mem~51_q\,
	datad => \U_FIFO|read_ptr\(1),
	combout => \U_FIFO|fifo_mem~369_combout\);

-- Location: LCCOMB_X43_Y24_N6
\U_FIFO|fifo_mem~370\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~370_combout\ = (\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~369_combout\ & ((\U_FIFO|fifo_mem~147_q\))) # (!\U_FIFO|fifo_mem~369_combout\ & (\U_FIFO|fifo_mem~115_q\)))) # (!\U_FIFO|read_ptr\(1) & (((\U_FIFO|fifo_mem~369_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~115_q\,
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~147_q\,
	datad => \U_FIFO|fifo_mem~369_combout\,
	combout => \U_FIFO|fifo_mem~370_combout\);

-- Location: FF_X44_Y27_N7
\U_FIFO|fifo_mem~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[15]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~211_q\);

-- Location: FF_X44_Y27_N21
\U_FIFO|fifo_mem~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[15]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~275_q\);

-- Location: FF_X47_Y26_N21
\U_FIFO|fifo_mem~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[15]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~243_q\);

-- Location: FF_X47_Y26_N19
\U_FIFO|fifo_mem~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[15]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~179_q\);

-- Location: LCCOMB_X47_Y26_N18
\U_FIFO|fifo_mem~367\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~367_combout\ = (\U_FIFO|read_ptr\(0) & (((\U_FIFO|read_ptr\(1))))) # (!\U_FIFO|read_ptr\(0) & ((\U_FIFO|read_ptr\(1) & (\U_FIFO|fifo_mem~243_q\)) # (!\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~179_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|fifo_mem~243_q\,
	datac => \U_FIFO|fifo_mem~179_q\,
	datad => \U_FIFO|read_ptr\(1),
	combout => \U_FIFO|fifo_mem~367_combout\);

-- Location: LCCOMB_X44_Y27_N20
\U_FIFO|fifo_mem~368\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~368_combout\ = (\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~367_combout\ & ((\U_FIFO|fifo_mem~275_q\))) # (!\U_FIFO|fifo_mem~367_combout\ & (\U_FIFO|fifo_mem~211_q\)))) # (!\U_FIFO|read_ptr\(0) & (((\U_FIFO|fifo_mem~367_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~211_q\,
	datab => \U_FIFO|read_ptr\(0),
	datac => \U_FIFO|fifo_mem~275_q\,
	datad => \U_FIFO|fifo_mem~367_combout\,
	combout => \U_FIFO|fifo_mem~368_combout\);

-- Location: LCCOMB_X44_Y27_N6
\U_FIFO|fifo_mem~371\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~371_combout\ = (\U_FIFO|read_ptr\(2) & ((\U_FIFO|fifo_mem~368_combout\))) # (!\U_FIFO|read_ptr\(2) & (\U_FIFO|fifo_mem~370_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(2),
	datab => \U_FIFO|fifo_mem~370_combout\,
	datad => \U_FIFO|fifo_mem~368_combout\,
	combout => \U_FIFO|fifo_mem~371_combout\);

-- Location: IOIBUF_X46_Y0_N8
\system_data[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => system_data(16),
	o => \system_data[16]~input_o\);

-- Location: FF_X47_Y26_N13
\U_FIFO|fifo_mem~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[16]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~244_q\);

-- Location: FF_X47_Y26_N27
\U_FIFO|fifo_mem~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[16]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~180_q\);

-- Location: LCCOMB_X47_Y26_N26
\U_FIFO|fifo_mem~372\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~372_combout\ = (\U_FIFO|read_ptr\(0) & (((\U_FIFO|read_ptr\(1))))) # (!\U_FIFO|read_ptr\(0) & ((\U_FIFO|read_ptr\(1) & (\U_FIFO|fifo_mem~244_q\)) # (!\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~180_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~244_q\,
	datab => \U_FIFO|read_ptr\(0),
	datac => \U_FIFO|fifo_mem~180_q\,
	datad => \U_FIFO|read_ptr\(1),
	combout => \U_FIFO|fifo_mem~372_combout\);

-- Location: FF_X47_Y27_N3
\U_FIFO|fifo_mem~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[16]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~276_q\);

-- Location: FF_X47_Y27_N29
\U_FIFO|fifo_mem~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[16]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~212_q\);

-- Location: LCCOMB_X47_Y27_N2
\U_FIFO|fifo_mem~373\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~373_combout\ = (\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~372_combout\ & (\U_FIFO|fifo_mem~276_q\)) # (!\U_FIFO|fifo_mem~372_combout\ & ((\U_FIFO|fifo_mem~212_q\))))) # (!\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~372_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|fifo_mem~372_combout\,
	datac => \U_FIFO|fifo_mem~276_q\,
	datad => \U_FIFO|fifo_mem~212_q\,
	combout => \U_FIFO|fifo_mem~373_combout\);

-- Location: FF_X44_Y24_N3
\U_FIFO|fifo_mem~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[16]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~52_q\);

-- Location: LCCOMB_X44_Y24_N12
\U_FIFO|fifo_mem~84feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~84feeder_combout\ = \system_data[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[16]~input_o\,
	combout => \U_FIFO|fifo_mem~84feeder_combout\);

-- Location: FF_X44_Y24_N13
\U_FIFO|fifo_mem~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FIFO|fifo_mem~84feeder_combout\,
	ena => \U_FIFO|fifo_mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~84_q\);

-- Location: LCCOMB_X44_Y24_N2
\U_FIFO|fifo_mem~374\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~374_combout\ = (\U_FIFO|read_ptr\(0) & ((\U_FIFO|read_ptr\(1)) # ((\U_FIFO|fifo_mem~84_q\)))) # (!\U_FIFO|read_ptr\(0) & (!\U_FIFO|read_ptr\(1) & (\U_FIFO|fifo_mem~52_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~52_q\,
	datad => \U_FIFO|fifo_mem~84_q\,
	combout => \U_FIFO|fifo_mem~374_combout\);

-- Location: LCCOMB_X46_Y27_N14
\U_FIFO|fifo_mem~116feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~116feeder_combout\ = \system_data[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[16]~input_o\,
	combout => \U_FIFO|fifo_mem~116feeder_combout\);

-- Location: FF_X46_Y27_N15
\U_FIFO|fifo_mem~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FIFO|fifo_mem~116feeder_combout\,
	ena => \U_FIFO|fifo_mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~116_q\);

-- Location: FF_X46_Y27_N25
\U_FIFO|fifo_mem~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[16]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~148_q\);

-- Location: LCCOMB_X46_Y27_N24
\U_FIFO|fifo_mem~375\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~375_combout\ = (\U_FIFO|fifo_mem~374_combout\ & (((\U_FIFO|fifo_mem~148_q\) # (!\U_FIFO|read_ptr\(1))))) # (!\U_FIFO|fifo_mem~374_combout\ & (\U_FIFO|fifo_mem~116_q\ & ((\U_FIFO|read_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~374_combout\,
	datab => \U_FIFO|fifo_mem~116_q\,
	datac => \U_FIFO|fifo_mem~148_q\,
	datad => \U_FIFO|read_ptr\(1),
	combout => \U_FIFO|fifo_mem~375_combout\);

-- Location: LCCOMB_X47_Y27_N28
\U_FIFO|fifo_mem~376\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~376_combout\ = (\U_FIFO|read_ptr\(2) & (\U_FIFO|fifo_mem~373_combout\)) # (!\U_FIFO|read_ptr\(2) & ((\U_FIFO|fifo_mem~375_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(2),
	datab => \U_FIFO|fifo_mem~373_combout\,
	datad => \U_FIFO|fifo_mem~375_combout\,
	combout => \U_FIFO|fifo_mem~376_combout\);

-- Location: IOIBUF_X52_Y18_N8
\system_data[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => system_data(17),
	o => \system_data[17]~input_o\);

-- Location: FF_X44_Y24_N23
\U_FIFO|fifo_mem~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[17]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~53_q\);

-- Location: FF_X44_Y24_N25
\U_FIFO|fifo_mem~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[17]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~85_q\);

-- Location: LCCOMB_X44_Y24_N22
\U_FIFO|fifo_mem~379\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~379_combout\ = (\U_FIFO|read_ptr\(0) & ((\U_FIFO|read_ptr\(1)) # ((\U_FIFO|fifo_mem~85_q\)))) # (!\U_FIFO|read_ptr\(0) & (!\U_FIFO|read_ptr\(1) & (\U_FIFO|fifo_mem~53_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~53_q\,
	datad => \U_FIFO|fifo_mem~85_q\,
	combout => \U_FIFO|fifo_mem~379_combout\);

-- Location: LCCOMB_X43_Y25_N16
\U_FIFO|fifo_mem~117feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~117feeder_combout\ = \system_data[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[17]~input_o\,
	combout => \U_FIFO|fifo_mem~117feeder_combout\);

-- Location: FF_X43_Y25_N17
\U_FIFO|fifo_mem~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FIFO|fifo_mem~117feeder_combout\,
	ena => \U_FIFO|fifo_mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~117_q\);

-- Location: FF_X43_Y25_N31
\U_FIFO|fifo_mem~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[17]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~149_q\);

-- Location: LCCOMB_X43_Y25_N30
\U_FIFO|fifo_mem~380\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~380_combout\ = (\U_FIFO|fifo_mem~379_combout\ & (((\U_FIFO|fifo_mem~149_q\) # (!\U_FIFO|read_ptr\(1))))) # (!\U_FIFO|fifo_mem~379_combout\ & (\U_FIFO|fifo_mem~117_q\ & ((\U_FIFO|read_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~379_combout\,
	datab => \U_FIFO|fifo_mem~117_q\,
	datac => \U_FIFO|fifo_mem~149_q\,
	datad => \U_FIFO|read_ptr\(1),
	combout => \U_FIFO|fifo_mem~380_combout\);

-- Location: FF_X47_Y26_N9
\U_FIFO|fifo_mem~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[17]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~245_q\);

-- Location: FF_X47_Y26_N31
\U_FIFO|fifo_mem~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[17]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~181_q\);

-- Location: LCCOMB_X47_Y26_N30
\U_FIFO|fifo_mem~377\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~377_combout\ = (\U_FIFO|read_ptr\(0) & (((\U_FIFO|read_ptr\(1))))) # (!\U_FIFO|read_ptr\(0) & ((\U_FIFO|read_ptr\(1) & (\U_FIFO|fifo_mem~245_q\)) # (!\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~181_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|fifo_mem~245_q\,
	datac => \U_FIFO|fifo_mem~181_q\,
	datad => \U_FIFO|read_ptr\(1),
	combout => \U_FIFO|fifo_mem~377_combout\);

-- Location: FF_X47_Y27_N23
\U_FIFO|fifo_mem~277\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[17]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~277_q\);

-- Location: FF_X47_Y27_N13
\U_FIFO|fifo_mem~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[17]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~213_q\);

-- Location: LCCOMB_X47_Y27_N22
\U_FIFO|fifo_mem~378\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~378_combout\ = (\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~377_combout\ & (\U_FIFO|fifo_mem~277_q\)) # (!\U_FIFO|fifo_mem~377_combout\ & ((\U_FIFO|fifo_mem~213_q\))))) # (!\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~377_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|fifo_mem~377_combout\,
	datac => \U_FIFO|fifo_mem~277_q\,
	datad => \U_FIFO|fifo_mem~213_q\,
	combout => \U_FIFO|fifo_mem~378_combout\);

-- Location: LCCOMB_X46_Y25_N0
\U_FIFO|fifo_mem~381\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~381_combout\ = (\U_FIFO|read_ptr\(2) & ((\U_FIFO|fifo_mem~378_combout\))) # (!\U_FIFO|read_ptr\(2) & (\U_FIFO|fifo_mem~380_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~380_combout\,
	datac => \U_FIFO|read_ptr\(2),
	datad => \U_FIFO|fifo_mem~378_combout\,
	combout => \U_FIFO|fifo_mem~381_combout\);

-- Location: IOIBUF_X52_Y27_N1
\system_data[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => system_data(18),
	o => \system_data[18]~input_o\);

-- Location: FF_X46_Y27_N23
\U_FIFO|fifo_mem~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[18]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~118_q\);

-- Location: FF_X46_Y27_N13
\U_FIFO|fifo_mem~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[18]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~150_q\);

-- Location: FF_X44_Y24_N5
\U_FIFO|fifo_mem~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[18]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~86_q\);

-- Location: FF_X44_Y24_N15
\U_FIFO|fifo_mem~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[18]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~54_q\);

-- Location: LCCOMB_X44_Y24_N14
\U_FIFO|fifo_mem~384\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~384_combout\ = (\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~86_q\) # ((\U_FIFO|read_ptr\(1))))) # (!\U_FIFO|read_ptr\(0) & (((\U_FIFO|fifo_mem~54_q\ & !\U_FIFO|read_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|fifo_mem~86_q\,
	datac => \U_FIFO|fifo_mem~54_q\,
	datad => \U_FIFO|read_ptr\(1),
	combout => \U_FIFO|fifo_mem~384_combout\);

-- Location: LCCOMB_X46_Y27_N12
\U_FIFO|fifo_mem~385\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~385_combout\ = (\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~384_combout\ & ((\U_FIFO|fifo_mem~150_q\))) # (!\U_FIFO|fifo_mem~384_combout\ & (\U_FIFO|fifo_mem~118_q\)))) # (!\U_FIFO|read_ptr\(1) & (((\U_FIFO|fifo_mem~384_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~118_q\,
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~150_q\,
	datad => \U_FIFO|fifo_mem~384_combout\,
	combout => \U_FIFO|fifo_mem~385_combout\);

-- Location: FF_X47_Y27_N1
\U_FIFO|fifo_mem~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[18]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~214_q\);

-- Location: FF_X47_Y27_N7
\U_FIFO|fifo_mem~278\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[18]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~278_q\);

-- Location: FF_X47_Y26_N1
\U_FIFO|fifo_mem~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[18]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~246_q\);

-- Location: FF_X47_Y26_N7
\U_FIFO|fifo_mem~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[18]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~182_q\);

-- Location: LCCOMB_X47_Y26_N6
\U_FIFO|fifo_mem~382\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~382_combout\ = (\U_FIFO|read_ptr\(0) & (((\U_FIFO|read_ptr\(1))))) # (!\U_FIFO|read_ptr\(0) & ((\U_FIFO|read_ptr\(1) & (\U_FIFO|fifo_mem~246_q\)) # (!\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~182_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|fifo_mem~246_q\,
	datac => \U_FIFO|fifo_mem~182_q\,
	datad => \U_FIFO|read_ptr\(1),
	combout => \U_FIFO|fifo_mem~382_combout\);

-- Location: LCCOMB_X47_Y27_N6
\U_FIFO|fifo_mem~383\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~383_combout\ = (\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~382_combout\ & ((\U_FIFO|fifo_mem~278_q\))) # (!\U_FIFO|fifo_mem~382_combout\ & (\U_FIFO|fifo_mem~214_q\)))) # (!\U_FIFO|read_ptr\(0) & (((\U_FIFO|fifo_mem~382_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|fifo_mem~214_q\,
	datac => \U_FIFO|fifo_mem~278_q\,
	datad => \U_FIFO|fifo_mem~382_combout\,
	combout => \U_FIFO|fifo_mem~383_combout\);

-- Location: LCCOMB_X46_Y27_N22
\U_FIFO|fifo_mem~386\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~386_combout\ = (\U_FIFO|read_ptr\(2) & ((\U_FIFO|fifo_mem~383_combout\))) # (!\U_FIFO|read_ptr\(2) & (\U_FIFO|fifo_mem~385_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~385_combout\,
	datab => \U_FIFO|read_ptr\(2),
	datad => \U_FIFO|fifo_mem~383_combout\,
	combout => \U_FIFO|fifo_mem~386_combout\);

-- Location: IOIBUF_X52_Y32_N8
\system_data[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => system_data(19),
	o => \system_data[19]~input_o\);

-- Location: FF_X47_Y27_N21
\U_FIFO|fifo_mem~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[19]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~215_q\);

-- Location: FF_X47_Y27_N15
\U_FIFO|fifo_mem~279\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[19]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~279_q\);

-- Location: LCCOMB_X47_Y26_N24
\U_FIFO|fifo_mem~247feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~247feeder_combout\ = \system_data[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[19]~input_o\,
	combout => \U_FIFO|fifo_mem~247feeder_combout\);

-- Location: FF_X47_Y26_N25
\U_FIFO|fifo_mem~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FIFO|fifo_mem~247feeder_combout\,
	ena => \U_FIFO|fifo_mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~247_q\);

-- Location: FF_X47_Y26_N15
\U_FIFO|fifo_mem~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[19]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~183_q\);

-- Location: LCCOMB_X47_Y26_N14
\U_FIFO|fifo_mem~387\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~387_combout\ = (\U_FIFO|read_ptr\(0) & (((\U_FIFO|read_ptr\(1))))) # (!\U_FIFO|read_ptr\(0) & ((\U_FIFO|read_ptr\(1) & (\U_FIFO|fifo_mem~247_q\)) # (!\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~183_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|fifo_mem~247_q\,
	datac => \U_FIFO|fifo_mem~183_q\,
	datad => \U_FIFO|read_ptr\(1),
	combout => \U_FIFO|fifo_mem~387_combout\);

-- Location: LCCOMB_X47_Y27_N14
\U_FIFO|fifo_mem~388\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~388_combout\ = (\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~387_combout\ & ((\U_FIFO|fifo_mem~279_q\))) # (!\U_FIFO|fifo_mem~387_combout\ & (\U_FIFO|fifo_mem~215_q\)))) # (!\U_FIFO|read_ptr\(0) & (((\U_FIFO|fifo_mem~387_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|fifo_mem~215_q\,
	datac => \U_FIFO|fifo_mem~279_q\,
	datad => \U_FIFO|fifo_mem~387_combout\,
	combout => \U_FIFO|fifo_mem~388_combout\);

-- Location: FF_X44_Y24_N7
\U_FIFO|fifo_mem~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[19]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~55_q\);

-- Location: FF_X44_Y24_N17
\U_FIFO|fifo_mem~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[19]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~87_q\);

-- Location: LCCOMB_X44_Y24_N6
\U_FIFO|fifo_mem~389\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~389_combout\ = (\U_FIFO|read_ptr\(0) & ((\U_FIFO|read_ptr\(1)) # ((\U_FIFO|fifo_mem~87_q\)))) # (!\U_FIFO|read_ptr\(0) & (!\U_FIFO|read_ptr\(1) & (\U_FIFO|fifo_mem~55_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~55_q\,
	datad => \U_FIFO|fifo_mem~87_q\,
	combout => \U_FIFO|fifo_mem~389_combout\);

-- Location: FF_X43_Y24_N15
\U_FIFO|fifo_mem~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[19]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~151_q\);

-- Location: FF_X43_Y24_N1
\U_FIFO|fifo_mem~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[19]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~119_q\);

-- Location: LCCOMB_X43_Y24_N14
\U_FIFO|fifo_mem~390\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~390_combout\ = (\U_FIFO|fifo_mem~389_combout\ & (((\U_FIFO|fifo_mem~151_q\)) # (!\U_FIFO|read_ptr\(1)))) # (!\U_FIFO|fifo_mem~389_combout\ & (\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~119_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~389_combout\,
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~151_q\,
	datad => \U_FIFO|fifo_mem~119_q\,
	combout => \U_FIFO|fifo_mem~390_combout\);

-- Location: LCCOMB_X47_Y27_N20
\U_FIFO|fifo_mem~391\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~391_combout\ = (\U_FIFO|read_ptr\(2) & (\U_FIFO|fifo_mem~388_combout\)) # (!\U_FIFO|read_ptr\(2) & ((\U_FIFO|fifo_mem~390_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(2),
	datab => \U_FIFO|fifo_mem~388_combout\,
	datad => \U_FIFO|fifo_mem~390_combout\,
	combout => \U_FIFO|fifo_mem~391_combout\);

-- Location: IOIBUF_X52_Y23_N1
\system_data[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => system_data(20),
	o => \system_data[20]~input_o\);

-- Location: FF_X46_Y27_N27
\U_FIFO|fifo_mem~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[20]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~120_q\);

-- Location: FF_X46_Y27_N29
\U_FIFO|fifo_mem~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[20]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~152_q\);

-- Location: LCCOMB_X42_Y27_N8
\U_FIFO|fifo_mem~88feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~88feeder_combout\ = \system_data[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[20]~input_o\,
	combout => \U_FIFO|fifo_mem~88feeder_combout\);

-- Location: FF_X42_Y27_N9
\U_FIFO|fifo_mem~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FIFO|fifo_mem~88feeder_combout\,
	ena => \U_FIFO|fifo_mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~88_q\);

-- Location: FF_X42_Y25_N5
\U_FIFO|fifo_mem~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[20]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~56_q\);

-- Location: LCCOMB_X42_Y25_N4
\U_FIFO|fifo_mem~394\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~394_combout\ = (\U_FIFO|read_ptr\(1) & (((\U_FIFO|read_ptr\(0))))) # (!\U_FIFO|read_ptr\(1) & ((\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~88_q\)) # (!\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~56_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(1),
	datab => \U_FIFO|fifo_mem~88_q\,
	datac => \U_FIFO|fifo_mem~56_q\,
	datad => \U_FIFO|read_ptr\(0),
	combout => \U_FIFO|fifo_mem~394_combout\);

-- Location: LCCOMB_X46_Y27_N28
\U_FIFO|fifo_mem~395\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~395_combout\ = (\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~394_combout\ & ((\U_FIFO|fifo_mem~152_q\))) # (!\U_FIFO|fifo_mem~394_combout\ & (\U_FIFO|fifo_mem~120_q\)))) # (!\U_FIFO|read_ptr\(1) & (((\U_FIFO|fifo_mem~394_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~120_q\,
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~152_q\,
	datad => \U_FIFO|fifo_mem~394_combout\,
	combout => \U_FIFO|fifo_mem~395_combout\);

-- Location: FF_X47_Y27_N9
\U_FIFO|fifo_mem~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[20]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~216_q\);

-- Location: FF_X47_Y27_N11
\U_FIFO|fifo_mem~280\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[20]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~280_q\);

-- Location: FF_X47_Y26_N5
\U_FIFO|fifo_mem~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[20]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~248_q\);

-- Location: FF_X47_Y26_N11
\U_FIFO|fifo_mem~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[20]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~184_q\);

-- Location: LCCOMB_X47_Y26_N10
\U_FIFO|fifo_mem~392\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~392_combout\ = (\U_FIFO|read_ptr\(0) & (((\U_FIFO|read_ptr\(1))))) # (!\U_FIFO|read_ptr\(0) & ((\U_FIFO|read_ptr\(1) & (\U_FIFO|fifo_mem~248_q\)) # (!\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~184_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|fifo_mem~248_q\,
	datac => \U_FIFO|fifo_mem~184_q\,
	datad => \U_FIFO|read_ptr\(1),
	combout => \U_FIFO|fifo_mem~392_combout\);

-- Location: LCCOMB_X47_Y27_N10
\U_FIFO|fifo_mem~393\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~393_combout\ = (\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~392_combout\ & ((\U_FIFO|fifo_mem~280_q\))) # (!\U_FIFO|fifo_mem~392_combout\ & (\U_FIFO|fifo_mem~216_q\)))) # (!\U_FIFO|read_ptr\(0) & (((\U_FIFO|fifo_mem~392_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|fifo_mem~216_q\,
	datac => \U_FIFO|fifo_mem~280_q\,
	datad => \U_FIFO|fifo_mem~392_combout\,
	combout => \U_FIFO|fifo_mem~393_combout\);

-- Location: LCCOMB_X47_Y27_N8
\U_FIFO|fifo_mem~396\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~396_combout\ = (\U_FIFO|read_ptr\(2) & ((\U_FIFO|fifo_mem~393_combout\))) # (!\U_FIFO|read_ptr\(2) & (\U_FIFO|fifo_mem~395_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(2),
	datab => \U_FIFO|fifo_mem~395_combout\,
	datad => \U_FIFO|fifo_mem~393_combout\,
	combout => \U_FIFO|fifo_mem~396_combout\);

-- Location: IOIBUF_X52_Y32_N22
\system_data[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => system_data(21),
	o => \system_data[21]~input_o\);

-- Location: FF_X44_Y26_N11
\U_FIFO|fifo_mem~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[21]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~185_q\);

-- Location: FF_X44_Y26_N1
\U_FIFO|fifo_mem~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[21]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~249_q\);

-- Location: LCCOMB_X44_Y26_N10
\U_FIFO|fifo_mem~397\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~397_combout\ = (\U_FIFO|read_ptr\(1) & ((\U_FIFO|read_ptr\(0)) # ((\U_FIFO|fifo_mem~249_q\)))) # (!\U_FIFO|read_ptr\(1) & (!\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~185_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(1),
	datab => \U_FIFO|read_ptr\(0),
	datac => \U_FIFO|fifo_mem~185_q\,
	datad => \U_FIFO|fifo_mem~249_q\,
	combout => \U_FIFO|fifo_mem~397_combout\);

-- Location: FF_X44_Y27_N31
\U_FIFO|fifo_mem~281\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[21]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~281_q\);

-- Location: FF_X44_Y27_N17
\U_FIFO|fifo_mem~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[21]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~217_q\);

-- Location: LCCOMB_X44_Y27_N30
\U_FIFO|fifo_mem~398\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~398_combout\ = (\U_FIFO|fifo_mem~397_combout\ & (((\U_FIFO|fifo_mem~281_q\)) # (!\U_FIFO|read_ptr\(0)))) # (!\U_FIFO|fifo_mem~397_combout\ & (\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~217_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~397_combout\,
	datab => \U_FIFO|read_ptr\(0),
	datac => \U_FIFO|fifo_mem~281_q\,
	datad => \U_FIFO|fifo_mem~217_q\,
	combout => \U_FIFO|fifo_mem~398_combout\);

-- Location: FF_X42_Y27_N27
\U_FIFO|fifo_mem~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[21]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~89_q\);

-- Location: FF_X42_Y25_N19
\U_FIFO|fifo_mem~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[21]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~57_q\);

-- Location: LCCOMB_X42_Y25_N18
\U_FIFO|fifo_mem~399\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~399_combout\ = (\U_FIFO|read_ptr\(1) & (((\U_FIFO|read_ptr\(0))))) # (!\U_FIFO|read_ptr\(1) & ((\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~89_q\)) # (!\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~57_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(1),
	datab => \U_FIFO|fifo_mem~89_q\,
	datac => \U_FIFO|fifo_mem~57_q\,
	datad => \U_FIFO|read_ptr\(0),
	combout => \U_FIFO|fifo_mem~399_combout\);

-- Location: FF_X43_Y28_N7
\U_FIFO|fifo_mem~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[21]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~153_q\);

-- Location: FF_X43_Y28_N13
\U_FIFO|fifo_mem~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[21]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~121_q\);

-- Location: LCCOMB_X43_Y28_N6
\U_FIFO|fifo_mem~400\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~400_combout\ = (\U_FIFO|fifo_mem~399_combout\ & (((\U_FIFO|fifo_mem~153_q\)) # (!\U_FIFO|read_ptr\(1)))) # (!\U_FIFO|fifo_mem~399_combout\ & (\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~121_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~399_combout\,
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~153_q\,
	datad => \U_FIFO|fifo_mem~121_q\,
	combout => \U_FIFO|fifo_mem~400_combout\);

-- Location: LCCOMB_X43_Y28_N8
\U_FIFO|fifo_mem~401\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~401_combout\ = (\U_FIFO|read_ptr\(2) & (\U_FIFO|fifo_mem~398_combout\)) # (!\U_FIFO|read_ptr\(2) & ((\U_FIFO|fifo_mem~400_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(2),
	datab => \U_FIFO|fifo_mem~398_combout\,
	datad => \U_FIFO|fifo_mem~400_combout\,
	combout => \U_FIFO|fifo_mem~401_combout\);

-- Location: IOIBUF_X43_Y41_N8
\system_data[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => system_data(22),
	o => \system_data[22]~input_o\);

-- Location: FF_X43_Y28_N11
\U_FIFO|fifo_mem~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[22]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~122_q\);

-- Location: FF_X43_Y28_N29
\U_FIFO|fifo_mem~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[22]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~154_q\);

-- Location: LCCOMB_X42_Y25_N20
\U_FIFO|fifo_mem~90feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~90feeder_combout\ = \system_data[22]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[22]~input_o\,
	combout => \U_FIFO|fifo_mem~90feeder_combout\);

-- Location: FF_X42_Y25_N21
\U_FIFO|fifo_mem~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FIFO|fifo_mem~90feeder_combout\,
	ena => \U_FIFO|fifo_mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~90_q\);

-- Location: FF_X42_Y25_N23
\U_FIFO|fifo_mem~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[22]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~58_q\);

-- Location: LCCOMB_X42_Y25_N22
\U_FIFO|fifo_mem~404\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~404_combout\ = (\U_FIFO|read_ptr\(1) & (((\U_FIFO|read_ptr\(0))))) # (!\U_FIFO|read_ptr\(1) & ((\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~90_q\)) # (!\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~58_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~90_q\,
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~58_q\,
	datad => \U_FIFO|read_ptr\(0),
	combout => \U_FIFO|fifo_mem~404_combout\);

-- Location: LCCOMB_X43_Y28_N28
\U_FIFO|fifo_mem~405\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~405_combout\ = (\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~404_combout\ & ((\U_FIFO|fifo_mem~154_q\))) # (!\U_FIFO|fifo_mem~404_combout\ & (\U_FIFO|fifo_mem~122_q\)))) # (!\U_FIFO|read_ptr\(1) & (((\U_FIFO|fifo_mem~404_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~122_q\,
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~154_q\,
	datad => \U_FIFO|fifo_mem~404_combout\,
	combout => \U_FIFO|fifo_mem~405_combout\);

-- Location: FF_X44_Y26_N7
\U_FIFO|fifo_mem~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[22]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~186_q\);

-- Location: LCCOMB_X44_Y26_N12
\U_FIFO|fifo_mem~250feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~250feeder_combout\ = \system_data[22]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[22]~input_o\,
	combout => \U_FIFO|fifo_mem~250feeder_combout\);

-- Location: FF_X44_Y26_N13
\U_FIFO|fifo_mem~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FIFO|fifo_mem~250feeder_combout\,
	ena => \U_FIFO|fifo_mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~250_q\);

-- Location: LCCOMB_X44_Y26_N6
\U_FIFO|fifo_mem~402\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~402_combout\ = (\U_FIFO|read_ptr\(1) & ((\U_FIFO|read_ptr\(0)) # ((\U_FIFO|fifo_mem~250_q\)))) # (!\U_FIFO|read_ptr\(1) & (!\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~186_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(1),
	datab => \U_FIFO|read_ptr\(0),
	datac => \U_FIFO|fifo_mem~186_q\,
	datad => \U_FIFO|fifo_mem~250_q\,
	combout => \U_FIFO|fifo_mem~402_combout\);

-- Location: FF_X44_Y28_N5
\U_FIFO|fifo_mem~282\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[22]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~282_q\);

-- Location: FF_X44_Y28_N7
\U_FIFO|fifo_mem~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[22]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~218_q\);

-- Location: LCCOMB_X44_Y28_N4
\U_FIFO|fifo_mem~403\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~403_combout\ = (\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~402_combout\ & (\U_FIFO|fifo_mem~282_q\)) # (!\U_FIFO|fifo_mem~402_combout\ & ((\U_FIFO|fifo_mem~218_q\))))) # (!\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~402_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|fifo_mem~402_combout\,
	datac => \U_FIFO|fifo_mem~282_q\,
	datad => \U_FIFO|fifo_mem~218_q\,
	combout => \U_FIFO|fifo_mem~403_combout\);

-- Location: LCCOMB_X43_Y28_N2
\U_FIFO|fifo_mem~406\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~406_combout\ = (\U_FIFO|read_ptr\(2) & ((\U_FIFO|fifo_mem~403_combout\))) # (!\U_FIFO|read_ptr\(2) & (\U_FIFO|fifo_mem~405_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FIFO|fifo_mem~405_combout\,
	datac => \U_FIFO|read_ptr\(2),
	datad => \U_FIFO|fifo_mem~403_combout\,
	combout => \U_FIFO|fifo_mem~406_combout\);

-- Location: IOIBUF_X46_Y41_N1
\system_data[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => system_data(23),
	o => \system_data[23]~input_o\);

-- Location: LCCOMB_X46_Y26_N12
\U_FIFO|fifo_mem~251feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~251feeder_combout\ = \system_data[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[23]~input_o\,
	combout => \U_FIFO|fifo_mem~251feeder_combout\);

-- Location: FF_X46_Y26_N13
\U_FIFO|fifo_mem~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FIFO|fifo_mem~251feeder_combout\,
	ena => \U_FIFO|fifo_mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~251_q\);

-- Location: FF_X46_Y26_N3
\U_FIFO|fifo_mem~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[23]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~187_q\);

-- Location: LCCOMB_X46_Y26_N2
\U_FIFO|fifo_mem~407\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~407_combout\ = (\U_FIFO|read_ptr\(0) & (((\U_FIFO|read_ptr\(1))))) # (!\U_FIFO|read_ptr\(0) & ((\U_FIFO|read_ptr\(1) & (\U_FIFO|fifo_mem~251_q\)) # (!\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~187_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~251_q\,
	datab => \U_FIFO|read_ptr\(0),
	datac => \U_FIFO|fifo_mem~187_q\,
	datad => \U_FIFO|read_ptr\(1),
	combout => \U_FIFO|fifo_mem~407_combout\);

-- Location: FF_X44_Y28_N29
\U_FIFO|fifo_mem~283\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[23]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~283_q\);

-- Location: FF_X44_Y28_N11
\U_FIFO|fifo_mem~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[23]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~219_q\);

-- Location: LCCOMB_X44_Y28_N28
\U_FIFO|fifo_mem~408\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~408_combout\ = (\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~407_combout\ & (\U_FIFO|fifo_mem~283_q\)) # (!\U_FIFO|fifo_mem~407_combout\ & ((\U_FIFO|fifo_mem~219_q\))))) # (!\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~407_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|fifo_mem~407_combout\,
	datac => \U_FIFO|fifo_mem~283_q\,
	datad => \U_FIFO|fifo_mem~219_q\,
	combout => \U_FIFO|fifo_mem~408_combout\);

-- Location: FF_X44_Y24_N19
\U_FIFO|fifo_mem~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[23]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~59_q\);

-- Location: LCCOMB_X44_Y24_N0
\U_FIFO|fifo_mem~91feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~91feeder_combout\ = \system_data[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[23]~input_o\,
	combout => \U_FIFO|fifo_mem~91feeder_combout\);

-- Location: FF_X44_Y24_N1
\U_FIFO|fifo_mem~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FIFO|fifo_mem~91feeder_combout\,
	ena => \U_FIFO|fifo_mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~91_q\);

-- Location: LCCOMB_X44_Y24_N18
\U_FIFO|fifo_mem~409\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~409_combout\ = (\U_FIFO|read_ptr\(0) & ((\U_FIFO|read_ptr\(1)) # ((\U_FIFO|fifo_mem~91_q\)))) # (!\U_FIFO|read_ptr\(0) & (!\U_FIFO|read_ptr\(1) & (\U_FIFO|fifo_mem~59_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~59_q\,
	datad => \U_FIFO|fifo_mem~91_q\,
	combout => \U_FIFO|fifo_mem~409_combout\);

-- Location: FF_X46_Y27_N17
\U_FIFO|fifo_mem~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[23]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~155_q\);

-- Location: FF_X46_Y27_N11
\U_FIFO|fifo_mem~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[23]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~123_q\);

-- Location: LCCOMB_X46_Y27_N16
\U_FIFO|fifo_mem~410\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~410_combout\ = (\U_FIFO|fifo_mem~409_combout\ & (((\U_FIFO|fifo_mem~155_q\)) # (!\U_FIFO|read_ptr\(1)))) # (!\U_FIFO|fifo_mem~409_combout\ & (\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~123_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~409_combout\,
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~155_q\,
	datad => \U_FIFO|fifo_mem~123_q\,
	combout => \U_FIFO|fifo_mem~410_combout\);

-- Location: LCCOMB_X46_Y27_N10
\U_FIFO|fifo_mem~411\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~411_combout\ = (\U_FIFO|read_ptr\(2) & (\U_FIFO|fifo_mem~408_combout\)) # (!\U_FIFO|read_ptr\(2) & ((\U_FIFO|fifo_mem~410_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~408_combout\,
	datab => \U_FIFO|read_ptr\(2),
	datad => \U_FIFO|fifo_mem~410_combout\,
	combout => \U_FIFO|fifo_mem~411_combout\);

-- Location: IOIBUF_X52_Y32_N15
\system_data[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => system_data(24),
	o => \system_data[24]~input_o\);

-- Location: FF_X42_Y24_N13
\U_FIFO|fifo_mem~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[24]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~60_q\);

-- Location: LCCOMB_X42_Y27_N0
\U_FIFO|fifo_mem~92feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~92feeder_combout\ = \system_data[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[24]~input_o\,
	combout => \U_FIFO|fifo_mem~92feeder_combout\);

-- Location: FF_X42_Y27_N1
\U_FIFO|fifo_mem~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FIFO|fifo_mem~92feeder_combout\,
	ena => \U_FIFO|fifo_mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~92_q\);

-- Location: LCCOMB_X42_Y24_N12
\U_FIFO|fifo_mem~414\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~414_combout\ = (\U_FIFO|read_ptr\(0) & ((\U_FIFO|read_ptr\(1)) # ((\U_FIFO|fifo_mem~92_q\)))) # (!\U_FIFO|read_ptr\(0) & (!\U_FIFO|read_ptr\(1) & (\U_FIFO|fifo_mem~60_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~60_q\,
	datad => \U_FIFO|fifo_mem~92_q\,
	combout => \U_FIFO|fifo_mem~414_combout\);

-- Location: FF_X43_Y24_N23
\U_FIFO|fifo_mem~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[24]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~156_q\);

-- Location: FF_X43_Y24_N29
\U_FIFO|fifo_mem~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[24]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~124_q\);

-- Location: LCCOMB_X43_Y24_N22
\U_FIFO|fifo_mem~415\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~415_combout\ = (\U_FIFO|fifo_mem~414_combout\ & (((\U_FIFO|fifo_mem~156_q\)) # (!\U_FIFO|read_ptr\(1)))) # (!\U_FIFO|fifo_mem~414_combout\ & (\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~124_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~414_combout\,
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~156_q\,
	datad => \U_FIFO|fifo_mem~124_q\,
	combout => \U_FIFO|fifo_mem~415_combout\);

-- Location: FF_X48_Y27_N11
\U_FIFO|fifo_mem~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[24]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~188_q\);

-- Location: FF_X48_Y27_N17
\U_FIFO|fifo_mem~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[24]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~252_q\);

-- Location: LCCOMB_X48_Y27_N10
\U_FIFO|fifo_mem~412\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~412_combout\ = (\U_FIFO|read_ptr\(0) & (\U_FIFO|read_ptr\(1))) # (!\U_FIFO|read_ptr\(0) & ((\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~252_q\))) # (!\U_FIFO|read_ptr\(1) & (\U_FIFO|fifo_mem~188_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~188_q\,
	datad => \U_FIFO|fifo_mem~252_q\,
	combout => \U_FIFO|fifo_mem~412_combout\);

-- Location: FF_X44_Y27_N19
\U_FIFO|fifo_mem~284\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[24]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~284_q\);

-- Location: FF_X44_Y27_N25
\U_FIFO|fifo_mem~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[24]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~220_q\);

-- Location: LCCOMB_X44_Y27_N18
\U_FIFO|fifo_mem~413\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~413_combout\ = (\U_FIFO|fifo_mem~412_combout\ & (((\U_FIFO|fifo_mem~284_q\)) # (!\U_FIFO|read_ptr\(0)))) # (!\U_FIFO|fifo_mem~412_combout\ & (\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~220_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~412_combout\,
	datab => \U_FIFO|read_ptr\(0),
	datac => \U_FIFO|fifo_mem~284_q\,
	datad => \U_FIFO|fifo_mem~220_q\,
	combout => \U_FIFO|fifo_mem~413_combout\);

-- Location: LCCOMB_X43_Y24_N24
\U_FIFO|fifo_mem~416\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~416_combout\ = (\U_FIFO|read_ptr\(2) & ((\U_FIFO|fifo_mem~413_combout\))) # (!\U_FIFO|read_ptr\(2) & (\U_FIFO|fifo_mem~415_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FIFO|read_ptr\(2),
	datac => \U_FIFO|fifo_mem~415_combout\,
	datad => \U_FIFO|fifo_mem~413_combout\,
	combout => \U_FIFO|fifo_mem~416_combout\);

-- Location: IOIBUF_X52_Y23_N8
\system_data[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => system_data(25),
	o => \system_data[25]~input_o\);

-- Location: FF_X42_Y24_N25
\U_FIFO|fifo_mem~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[25]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~61_q\);

-- Location: FF_X42_Y24_N3
\U_FIFO|fifo_mem~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[25]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~93_q\);

-- Location: LCCOMB_X42_Y24_N24
\U_FIFO|fifo_mem~419\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~419_combout\ = (\U_FIFO|read_ptr\(0) & ((\U_FIFO|read_ptr\(1)) # ((\U_FIFO|fifo_mem~93_q\)))) # (!\U_FIFO|read_ptr\(0) & (!\U_FIFO|read_ptr\(1) & (\U_FIFO|fifo_mem~61_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~61_q\,
	datad => \U_FIFO|fifo_mem~93_q\,
	combout => \U_FIFO|fifo_mem~419_combout\);

-- Location: FF_X46_Y27_N21
\U_FIFO|fifo_mem~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[25]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~157_q\);

-- Location: FF_X46_Y27_N7
\U_FIFO|fifo_mem~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[25]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~125_q\);

-- Location: LCCOMB_X46_Y27_N20
\U_FIFO|fifo_mem~420\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~420_combout\ = (\U_FIFO|fifo_mem~419_combout\ & (((\U_FIFO|fifo_mem~157_q\)) # (!\U_FIFO|read_ptr\(1)))) # (!\U_FIFO|fifo_mem~419_combout\ & (\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~125_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~419_combout\,
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~157_q\,
	datad => \U_FIFO|fifo_mem~125_q\,
	combout => \U_FIFO|fifo_mem~420_combout\);

-- Location: FF_X47_Y27_N5
\U_FIFO|fifo_mem~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[25]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~221_q\);

-- Location: FF_X47_Y27_N19
\U_FIFO|fifo_mem~285\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[25]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~285_q\);

-- Location: FF_X47_Y26_N17
\U_FIFO|fifo_mem~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[25]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~253_q\);

-- Location: FF_X47_Y26_N3
\U_FIFO|fifo_mem~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[25]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~189_q\);

-- Location: LCCOMB_X47_Y26_N2
\U_FIFO|fifo_mem~417\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~417_combout\ = (\U_FIFO|read_ptr\(0) & (((\U_FIFO|read_ptr\(1))))) # (!\U_FIFO|read_ptr\(0) & ((\U_FIFO|read_ptr\(1) & (\U_FIFO|fifo_mem~253_q\)) # (!\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~189_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|fifo_mem~253_q\,
	datac => \U_FIFO|fifo_mem~189_q\,
	datad => \U_FIFO|read_ptr\(1),
	combout => \U_FIFO|fifo_mem~417_combout\);

-- Location: LCCOMB_X47_Y27_N18
\U_FIFO|fifo_mem~418\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~418_combout\ = (\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~417_combout\ & ((\U_FIFO|fifo_mem~285_q\))) # (!\U_FIFO|fifo_mem~417_combout\ & (\U_FIFO|fifo_mem~221_q\)))) # (!\U_FIFO|read_ptr\(0) & (((\U_FIFO|fifo_mem~417_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|fifo_mem~221_q\,
	datac => \U_FIFO|fifo_mem~285_q\,
	datad => \U_FIFO|fifo_mem~417_combout\,
	combout => \U_FIFO|fifo_mem~418_combout\);

-- Location: LCCOMB_X47_Y27_N4
\U_FIFO|fifo_mem~421\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~421_combout\ = (\U_FIFO|read_ptr\(2) & ((\U_FIFO|fifo_mem~418_combout\))) # (!\U_FIFO|read_ptr\(2) & (\U_FIFO|fifo_mem~420_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(2),
	datab => \U_FIFO|fifo_mem~420_combout\,
	datad => \U_FIFO|fifo_mem~418_combout\,
	combout => \U_FIFO|fifo_mem~421_combout\);

-- Location: IOIBUF_X43_Y41_N1
\system_data[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => system_data(26),
	o => \system_data[26]~input_o\);

-- Location: FF_X42_Y24_N17
\U_FIFO|fifo_mem~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[26]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~62_q\);

-- Location: FF_X42_Y24_N11
\U_FIFO|fifo_mem~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[26]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~94_q\);

-- Location: LCCOMB_X42_Y24_N16
\U_FIFO|fifo_mem~424\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~424_combout\ = (\U_FIFO|read_ptr\(0) & ((\U_FIFO|read_ptr\(1)) # ((\U_FIFO|fifo_mem~94_q\)))) # (!\U_FIFO|read_ptr\(0) & (!\U_FIFO|read_ptr\(1) & (\U_FIFO|fifo_mem~62_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~62_q\,
	datad => \U_FIFO|fifo_mem~94_q\,
	combout => \U_FIFO|fifo_mem~424_combout\);

-- Location: FF_X43_Y28_N15
\U_FIFO|fifo_mem~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[26]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~158_q\);

-- Location: FF_X43_Y28_N25
\U_FIFO|fifo_mem~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[26]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~126_q\);

-- Location: LCCOMB_X43_Y28_N14
\U_FIFO|fifo_mem~425\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~425_combout\ = (\U_FIFO|fifo_mem~424_combout\ & (((\U_FIFO|fifo_mem~158_q\)) # (!\U_FIFO|read_ptr\(1)))) # (!\U_FIFO|fifo_mem~424_combout\ & (\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~126_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~424_combout\,
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~158_q\,
	datad => \U_FIFO|fifo_mem~126_q\,
	combout => \U_FIFO|fifo_mem~425_combout\);

-- Location: FF_X44_Y26_N9
\U_FIFO|fifo_mem~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[26]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~254_q\);

-- Location: FF_X44_Y26_N19
\U_FIFO|fifo_mem~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[26]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~190_q\);

-- Location: LCCOMB_X44_Y26_N18
\U_FIFO|fifo_mem~422\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~422_combout\ = (\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~254_q\) # ((\U_FIFO|read_ptr\(0))))) # (!\U_FIFO|read_ptr\(1) & (((\U_FIFO|fifo_mem~190_q\ & !\U_FIFO|read_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(1),
	datab => \U_FIFO|fifo_mem~254_q\,
	datac => \U_FIFO|fifo_mem~190_q\,
	datad => \U_FIFO|read_ptr\(0),
	combout => \U_FIFO|fifo_mem~422_combout\);

-- Location: FF_X44_Y28_N25
\U_FIFO|fifo_mem~286\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[26]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~286_q\);

-- Location: LCCOMB_X44_Y28_N18
\U_FIFO|fifo_mem~222feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~222feeder_combout\ = \system_data[26]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[26]~input_o\,
	combout => \U_FIFO|fifo_mem~222feeder_combout\);

-- Location: FF_X44_Y28_N19
\U_FIFO|fifo_mem~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FIFO|fifo_mem~222feeder_combout\,
	ena => \U_FIFO|fifo_mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~222_q\);

-- Location: LCCOMB_X44_Y28_N24
\U_FIFO|fifo_mem~423\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~423_combout\ = (\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~422_combout\ & (\U_FIFO|fifo_mem~286_q\)) # (!\U_FIFO|fifo_mem~422_combout\ & ((\U_FIFO|fifo_mem~222_q\))))) # (!\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~422_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|fifo_mem~422_combout\,
	datac => \U_FIFO|fifo_mem~286_q\,
	datad => \U_FIFO|fifo_mem~222_q\,
	combout => \U_FIFO|fifo_mem~423_combout\);

-- Location: LCCOMB_X44_Y28_N26
\U_FIFO|fifo_mem~426\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~426_combout\ = (\U_FIFO|read_ptr\(2) & ((\U_FIFO|fifo_mem~423_combout\))) # (!\U_FIFO|read_ptr\(2) & (\U_FIFO|fifo_mem~425_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~425_combout\,
	datac => \U_FIFO|read_ptr\(2),
	datad => \U_FIFO|fifo_mem~423_combout\,
	combout => \U_FIFO|fifo_mem~426_combout\);

-- Location: IOIBUF_X52_Y31_N1
\system_data[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => system_data(27),
	o => \system_data[27]~input_o\);

-- Location: FF_X44_Y26_N3
\U_FIFO|fifo_mem~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[27]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~191_q\);

-- Location: FF_X44_Y26_N29
\U_FIFO|fifo_mem~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[27]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~255_q\);

-- Location: LCCOMB_X44_Y26_N2
\U_FIFO|fifo_mem~427\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~427_combout\ = (\U_FIFO|read_ptr\(1) & ((\U_FIFO|read_ptr\(0)) # ((\U_FIFO|fifo_mem~255_q\)))) # (!\U_FIFO|read_ptr\(1) & (!\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~191_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(1),
	datab => \U_FIFO|read_ptr\(0),
	datac => \U_FIFO|fifo_mem~191_q\,
	datad => \U_FIFO|fifo_mem~255_q\,
	combout => \U_FIFO|fifo_mem~427_combout\);

-- Location: FF_X47_Y27_N31
\U_FIFO|fifo_mem~287\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[27]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~287_q\);

-- Location: FF_X47_Y27_N25
\U_FIFO|fifo_mem~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[27]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~223_q\);

-- Location: LCCOMB_X47_Y27_N30
\U_FIFO|fifo_mem~428\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~428_combout\ = (\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~427_combout\ & (\U_FIFO|fifo_mem~287_q\)) # (!\U_FIFO|fifo_mem~427_combout\ & ((\U_FIFO|fifo_mem~223_q\))))) # (!\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~427_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|fifo_mem~427_combout\,
	datac => \U_FIFO|fifo_mem~287_q\,
	datad => \U_FIFO|fifo_mem~223_q\,
	combout => \U_FIFO|fifo_mem~428_combout\);

-- Location: FF_X42_Y25_N25
\U_FIFO|fifo_mem~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[27]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~63_q\);

-- Location: FF_X42_Y27_N23
\U_FIFO|fifo_mem~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[27]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~95_q\);

-- Location: LCCOMB_X42_Y25_N24
\U_FIFO|fifo_mem~429\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~429_combout\ = (\U_FIFO|read_ptr\(1) & (\U_FIFO|read_ptr\(0))) # (!\U_FIFO|read_ptr\(1) & ((\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~95_q\))) # (!\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~63_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(1),
	datab => \U_FIFO|read_ptr\(0),
	datac => \U_FIFO|fifo_mem~63_q\,
	datad => \U_FIFO|fifo_mem~95_q\,
	combout => \U_FIFO|fifo_mem~429_combout\);

-- Location: FF_X43_Y28_N31
\U_FIFO|fifo_mem~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[27]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~159_q\);

-- Location: FF_X43_Y28_N21
\U_FIFO|fifo_mem~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[27]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~127_q\);

-- Location: LCCOMB_X43_Y28_N30
\U_FIFO|fifo_mem~430\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~430_combout\ = (\U_FIFO|fifo_mem~429_combout\ & (((\U_FIFO|fifo_mem~159_q\)) # (!\U_FIFO|read_ptr\(1)))) # (!\U_FIFO|fifo_mem~429_combout\ & (\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~127_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~429_combout\,
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~159_q\,
	datad => \U_FIFO|fifo_mem~127_q\,
	combout => \U_FIFO|fifo_mem~430_combout\);

-- Location: LCCOMB_X47_Y27_N16
\U_FIFO|fifo_mem~431\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~431_combout\ = (\U_FIFO|read_ptr\(2) & (\U_FIFO|fifo_mem~428_combout\)) # (!\U_FIFO|read_ptr\(2) & ((\U_FIFO|fifo_mem~430_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(2),
	datab => \U_FIFO|fifo_mem~428_combout\,
	datad => \U_FIFO|fifo_mem~430_combout\,
	combout => \U_FIFO|fifo_mem~431_combout\);

-- Location: IOIBUF_X43_Y0_N8
\system_data[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => system_data(28),
	o => \system_data[28]~input_o\);

-- Location: FF_X43_Y24_N31
\U_FIFO|fifo_mem~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[28]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~128_q\);

-- Location: FF_X43_Y24_N9
\U_FIFO|fifo_mem~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[28]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~160_q\);

-- Location: FF_X42_Y27_N21
\U_FIFO|fifo_mem~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[28]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~96_q\);

-- Location: FF_X42_Y25_N31
\U_FIFO|fifo_mem~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[28]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~64_q\);

-- Location: LCCOMB_X42_Y25_N30
\U_FIFO|fifo_mem~434\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~434_combout\ = (\U_FIFO|read_ptr\(1) & (((\U_FIFO|read_ptr\(0))))) # (!\U_FIFO|read_ptr\(1) & ((\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~96_q\)) # (!\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~64_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(1),
	datab => \U_FIFO|fifo_mem~96_q\,
	datac => \U_FIFO|fifo_mem~64_q\,
	datad => \U_FIFO|read_ptr\(0),
	combout => \U_FIFO|fifo_mem~434_combout\);

-- Location: LCCOMB_X43_Y24_N8
\U_FIFO|fifo_mem~435\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~435_combout\ = (\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~434_combout\ & ((\U_FIFO|fifo_mem~160_q\))) # (!\U_FIFO|fifo_mem~434_combout\ & (\U_FIFO|fifo_mem~128_q\)))) # (!\U_FIFO|read_ptr\(1) & (((\U_FIFO|fifo_mem~434_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~128_q\,
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~160_q\,
	datad => \U_FIFO|fifo_mem~434_combout\,
	combout => \U_FIFO|fifo_mem~435_combout\);

-- Location: LCCOMB_X43_Y26_N8
\U_FIFO|fifo_mem~224feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~224feeder_combout\ = \system_data[28]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[28]~input_o\,
	combout => \U_FIFO|fifo_mem~224feeder_combout\);

-- Location: FF_X43_Y26_N9
\U_FIFO|fifo_mem~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FIFO|fifo_mem~224feeder_combout\,
	ena => \U_FIFO|fifo_mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~224_q\);

-- Location: FF_X43_Y26_N15
\U_FIFO|fifo_mem~288\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[28]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~288_q\);

-- Location: FF_X44_Y26_N23
\U_FIFO|fifo_mem~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[28]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~192_q\);

-- Location: FF_X44_Y26_N25
\U_FIFO|fifo_mem~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[28]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~256_q\);

-- Location: LCCOMB_X44_Y26_N22
\U_FIFO|fifo_mem~432\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~432_combout\ = (\U_FIFO|read_ptr\(1) & ((\U_FIFO|read_ptr\(0)) # ((\U_FIFO|fifo_mem~256_q\)))) # (!\U_FIFO|read_ptr\(1) & (!\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~192_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(1),
	datab => \U_FIFO|read_ptr\(0),
	datac => \U_FIFO|fifo_mem~192_q\,
	datad => \U_FIFO|fifo_mem~256_q\,
	combout => \U_FIFO|fifo_mem~432_combout\);

-- Location: LCCOMB_X43_Y26_N14
\U_FIFO|fifo_mem~433\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~433_combout\ = (\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~432_combout\ & ((\U_FIFO|fifo_mem~288_q\))) # (!\U_FIFO|fifo_mem~432_combout\ & (\U_FIFO|fifo_mem~224_q\)))) # (!\U_FIFO|read_ptr\(0) & (((\U_FIFO|fifo_mem~432_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|fifo_mem~224_q\,
	datac => \U_FIFO|fifo_mem~288_q\,
	datad => \U_FIFO|fifo_mem~432_combout\,
	combout => \U_FIFO|fifo_mem~433_combout\);

-- Location: LCCOMB_X43_Y24_N26
\U_FIFO|fifo_mem~436\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~436_combout\ = (\U_FIFO|read_ptr\(2) & ((\U_FIFO|fifo_mem~433_combout\))) # (!\U_FIFO|read_ptr\(2) & (\U_FIFO|fifo_mem~435_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FIFO|read_ptr\(2),
	datac => \U_FIFO|fifo_mem~435_combout\,
	datad => \U_FIFO|fifo_mem~433_combout\,
	combout => \U_FIFO|fifo_mem~436_combout\);

-- Location: IOIBUF_X41_Y41_N15
\system_data[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => system_data(29),
	o => \system_data[29]~input_o\);

-- Location: FF_X41_Y26_N15
\U_FIFO|fifo_mem~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[29]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~65_q\);

-- Location: LCCOMB_X41_Y26_N28
\U_FIFO|fifo_mem~97feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~97feeder_combout\ = \system_data[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[29]~input_o\,
	combout => \U_FIFO|fifo_mem~97feeder_combout\);

-- Location: FF_X41_Y26_N29
\U_FIFO|fifo_mem~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FIFO|fifo_mem~97feeder_combout\,
	ena => \U_FIFO|fifo_mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~97_q\);

-- Location: LCCOMB_X41_Y26_N14
\U_FIFO|fifo_mem~439\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~439_combout\ = (\U_FIFO|read_ptr\(1) & (\U_FIFO|read_ptr\(0))) # (!\U_FIFO|read_ptr\(1) & ((\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~97_q\))) # (!\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~65_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(1),
	datab => \U_FIFO|read_ptr\(0),
	datac => \U_FIFO|fifo_mem~65_q\,
	datad => \U_FIFO|fifo_mem~97_q\,
	combout => \U_FIFO|fifo_mem~439_combout\);

-- Location: FF_X43_Y24_N3
\U_FIFO|fifo_mem~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[29]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~161_q\);

-- Location: FF_X43_Y24_N17
\U_FIFO|fifo_mem~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[29]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~129_q\);

-- Location: LCCOMB_X43_Y24_N2
\U_FIFO|fifo_mem~440\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~440_combout\ = (\U_FIFO|fifo_mem~439_combout\ & (((\U_FIFO|fifo_mem~161_q\)) # (!\U_FIFO|read_ptr\(1)))) # (!\U_FIFO|fifo_mem~439_combout\ & (\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~129_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~439_combout\,
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~161_q\,
	datad => \U_FIFO|fifo_mem~129_q\,
	combout => \U_FIFO|fifo_mem~440_combout\);

-- Location: FF_X44_Y26_N31
\U_FIFO|fifo_mem~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[29]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~193_q\);

-- Location: FF_X44_Y26_N21
\U_FIFO|fifo_mem~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[29]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~257_q\);

-- Location: LCCOMB_X44_Y26_N30
\U_FIFO|fifo_mem~437\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~437_combout\ = (\U_FIFO|read_ptr\(1) & ((\U_FIFO|read_ptr\(0)) # ((\U_FIFO|fifo_mem~257_q\)))) # (!\U_FIFO|read_ptr\(1) & (!\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~193_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(1),
	datab => \U_FIFO|read_ptr\(0),
	datac => \U_FIFO|fifo_mem~193_q\,
	datad => \U_FIFO|fifo_mem~257_q\,
	combout => \U_FIFO|fifo_mem~437_combout\);

-- Location: FF_X44_Y25_N7
\U_FIFO|fifo_mem~289\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[29]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~289_q\);

-- Location: LCCOMB_X44_Y25_N12
\U_FIFO|fifo_mem~225feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~225feeder_combout\ = \system_data[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[29]~input_o\,
	combout => \U_FIFO|fifo_mem~225feeder_combout\);

-- Location: FF_X44_Y25_N13
\U_FIFO|fifo_mem~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FIFO|fifo_mem~225feeder_combout\,
	ena => \U_FIFO|fifo_mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~225_q\);

-- Location: LCCOMB_X44_Y25_N6
\U_FIFO|fifo_mem~438\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~438_combout\ = (\U_FIFO|fifo_mem~437_combout\ & (((\U_FIFO|fifo_mem~289_q\)) # (!\U_FIFO|read_ptr\(0)))) # (!\U_FIFO|fifo_mem~437_combout\ & (\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~225_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~437_combout\,
	datab => \U_FIFO|read_ptr\(0),
	datac => \U_FIFO|fifo_mem~289_q\,
	datad => \U_FIFO|fifo_mem~225_q\,
	combout => \U_FIFO|fifo_mem~438_combout\);

-- Location: LCCOMB_X43_Y25_N4
\U_FIFO|fifo_mem~441\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~441_combout\ = (\U_FIFO|read_ptr\(2) & ((\U_FIFO|fifo_mem~438_combout\))) # (!\U_FIFO|read_ptr\(2) & (\U_FIFO|fifo_mem~440_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(2),
	datab => \U_FIFO|fifo_mem~440_combout\,
	datad => \U_FIFO|fifo_mem~438_combout\,
	combout => \U_FIFO|fifo_mem~441_combout\);

-- Location: IOIBUF_X52_Y18_N1
\system_data[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => system_data(30),
	o => \system_data[30]~input_o\);

-- Location: LCCOMB_X44_Y25_N0
\U_FIFO|fifo_mem~226feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~226feeder_combout\ = \system_data[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[30]~input_o\,
	combout => \U_FIFO|fifo_mem~226feeder_combout\);

-- Location: FF_X44_Y25_N1
\U_FIFO|fifo_mem~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FIFO|fifo_mem~226feeder_combout\,
	ena => \U_FIFO|fifo_mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~226_q\);

-- Location: FF_X44_Y26_N5
\U_FIFO|fifo_mem~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[30]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~258_q\);

-- Location: FF_X44_Y26_N15
\U_FIFO|fifo_mem~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[30]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~194_q\);

-- Location: LCCOMB_X44_Y26_N14
\U_FIFO|fifo_mem~442\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~442_combout\ = (\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~258_q\) # ((\U_FIFO|read_ptr\(0))))) # (!\U_FIFO|read_ptr\(1) & (((\U_FIFO|fifo_mem~194_q\ & !\U_FIFO|read_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(1),
	datab => \U_FIFO|fifo_mem~258_q\,
	datac => \U_FIFO|fifo_mem~194_q\,
	datad => \U_FIFO|read_ptr\(0),
	combout => \U_FIFO|fifo_mem~442_combout\);

-- Location: LCCOMB_X44_Y25_N2
\U_FIFO|fifo_mem~290feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~290feeder_combout\ = \system_data[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[30]~input_o\,
	combout => \U_FIFO|fifo_mem~290feeder_combout\);

-- Location: FF_X44_Y25_N3
\U_FIFO|fifo_mem~290\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FIFO|fifo_mem~290feeder_combout\,
	ena => \U_FIFO|fifo_mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~290_q\);

-- Location: LCCOMB_X44_Y25_N8
\U_FIFO|fifo_mem~443\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~443_combout\ = (\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~442_combout\ & ((\U_FIFO|fifo_mem~290_q\))) # (!\U_FIFO|fifo_mem~442_combout\ & (\U_FIFO|fifo_mem~226_q\)))) # (!\U_FIFO|read_ptr\(0) & (((\U_FIFO|fifo_mem~442_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(0),
	datab => \U_FIFO|fifo_mem~226_q\,
	datac => \U_FIFO|fifo_mem~442_combout\,
	datad => \U_FIFO|fifo_mem~290_q\,
	combout => \U_FIFO|fifo_mem~443_combout\);

-- Location: LCCOMB_X42_Y27_N18
\U_FIFO|fifo_mem~98feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~98feeder_combout\ = \system_data[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[30]~input_o\,
	combout => \U_FIFO|fifo_mem~98feeder_combout\);

-- Location: FF_X42_Y27_N19
\U_FIFO|fifo_mem~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FIFO|fifo_mem~98feeder_combout\,
	ena => \U_FIFO|fifo_mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~98_q\);

-- Location: FF_X42_Y24_N15
\U_FIFO|fifo_mem~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[30]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~66_q\);

-- Location: LCCOMB_X42_Y24_N14
\U_FIFO|fifo_mem~444\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~444_combout\ = (\U_FIFO|read_ptr\(1) & (((\U_FIFO|read_ptr\(0))))) # (!\U_FIFO|read_ptr\(1) & ((\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~98_q\)) # (!\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~66_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~98_q\,
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~66_q\,
	datad => \U_FIFO|read_ptr\(0),
	combout => \U_FIFO|fifo_mem~444_combout\);

-- Location: FF_X43_Y24_N11
\U_FIFO|fifo_mem~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[30]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~162_q\);

-- Location: FF_X43_Y24_N21
\U_FIFO|fifo_mem~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[30]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~130_q\);

-- Location: LCCOMB_X43_Y24_N10
\U_FIFO|fifo_mem~445\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~445_combout\ = (\U_FIFO|fifo_mem~444_combout\ & (((\U_FIFO|fifo_mem~162_q\)) # (!\U_FIFO|read_ptr\(1)))) # (!\U_FIFO|fifo_mem~444_combout\ & (\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~130_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~444_combout\,
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~162_q\,
	datad => \U_FIFO|fifo_mem~130_q\,
	combout => \U_FIFO|fifo_mem~445_combout\);

-- Location: LCCOMB_X44_Y24_N4
\U_FIFO|fifo_mem~446\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~446_combout\ = (\U_FIFO|read_ptr\(2) & (\U_FIFO|fifo_mem~443_combout\)) # (!\U_FIFO|read_ptr\(2) & ((\U_FIFO|fifo_mem~445_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(2),
	datab => \U_FIFO|fifo_mem~443_combout\,
	datad => \U_FIFO|fifo_mem~445_combout\,
	combout => \U_FIFO|fifo_mem~446_combout\);

-- Location: IOIBUF_X52_Y28_N8
\system_data[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => system_data(31),
	o => \system_data[31]~input_o\);

-- Location: FF_X44_Y26_N27
\U_FIFO|fifo_mem~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[31]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~195_q\);

-- Location: LCCOMB_X44_Y26_N16
\U_FIFO|fifo_mem~259feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~259feeder_combout\ = \system_data[31]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[31]~input_o\,
	combout => \U_FIFO|fifo_mem~259feeder_combout\);

-- Location: FF_X44_Y26_N17
\U_FIFO|fifo_mem~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_FIFO|fifo_mem~259feeder_combout\,
	ena => \U_FIFO|fifo_mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~259_q\);

-- Location: LCCOMB_X44_Y26_N26
\U_FIFO|fifo_mem~447\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~447_combout\ = (\U_FIFO|read_ptr\(1) & ((\U_FIFO|read_ptr\(0)) # ((\U_FIFO|fifo_mem~259_q\)))) # (!\U_FIFO|read_ptr\(1) & (!\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~195_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(1),
	datab => \U_FIFO|read_ptr\(0),
	datac => \U_FIFO|fifo_mem~195_q\,
	datad => \U_FIFO|fifo_mem~259_q\,
	combout => \U_FIFO|fifo_mem~447_combout\);

-- Location: FF_X44_Y27_N27
\U_FIFO|fifo_mem~291\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[31]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~291_q\);

-- Location: FF_X44_Y27_N13
\U_FIFO|fifo_mem~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[31]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~227_q\);

-- Location: LCCOMB_X44_Y27_N26
\U_FIFO|fifo_mem~448\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~448_combout\ = (\U_FIFO|fifo_mem~447_combout\ & (((\U_FIFO|fifo_mem~291_q\)) # (!\U_FIFO|read_ptr\(0)))) # (!\U_FIFO|fifo_mem~447_combout\ & (\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~227_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~447_combout\,
	datab => \U_FIFO|read_ptr\(0),
	datac => \U_FIFO|fifo_mem~291_q\,
	datad => \U_FIFO|fifo_mem~227_q\,
	combout => \U_FIFO|fifo_mem~448_combout\);

-- Location: FF_X41_Y26_N23
\U_FIFO|fifo_mem~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[31]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~67_q\);

-- Location: FF_X41_Y26_N13
\U_FIFO|fifo_mem~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[31]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~99_q\);

-- Location: LCCOMB_X41_Y26_N22
\U_FIFO|fifo_mem~449\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~449_combout\ = (\U_FIFO|read_ptr\(1) & (\U_FIFO|read_ptr\(0))) # (!\U_FIFO|read_ptr\(1) & ((\U_FIFO|read_ptr\(0) & ((\U_FIFO|fifo_mem~99_q\))) # (!\U_FIFO|read_ptr\(0) & (\U_FIFO|fifo_mem~67_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(1),
	datab => \U_FIFO|read_ptr\(0),
	datac => \U_FIFO|fifo_mem~67_q\,
	datad => \U_FIFO|fifo_mem~99_q\,
	combout => \U_FIFO|fifo_mem~449_combout\);

-- Location: FF_X43_Y28_N23
\U_FIFO|fifo_mem~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[31]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~163_q\);

-- Location: FF_X43_Y28_N1
\U_FIFO|fifo_mem~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[31]~input_o\,
	sload => VCC,
	ena => \U_FIFO|fifo_mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FIFO|fifo_mem~131_q\);

-- Location: LCCOMB_X43_Y28_N22
\U_FIFO|fifo_mem~450\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~450_combout\ = (\U_FIFO|fifo_mem~449_combout\ & (((\U_FIFO|fifo_mem~163_q\)) # (!\U_FIFO|read_ptr\(1)))) # (!\U_FIFO|fifo_mem~449_combout\ & (\U_FIFO|read_ptr\(1) & ((\U_FIFO|fifo_mem~131_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|fifo_mem~449_combout\,
	datab => \U_FIFO|read_ptr\(1),
	datac => \U_FIFO|fifo_mem~163_q\,
	datad => \U_FIFO|fifo_mem~131_q\,
	combout => \U_FIFO|fifo_mem~450_combout\);

-- Location: LCCOMB_X43_Y28_N4
\U_FIFO|fifo_mem~451\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_FIFO|fifo_mem~451_combout\ = (\U_FIFO|read_ptr\(2) & (\U_FIFO|fifo_mem~448_combout\)) # (!\U_FIFO|read_ptr\(2) & ((\U_FIFO|fifo_mem~450_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FIFO|read_ptr\(2),
	datab => \U_FIFO|fifo_mem~448_combout\,
	datac => \U_FIFO|fifo_mem~450_combout\,
	combout => \U_FIFO|fifo_mem~451_combout\);

-- Location: LCCOMB_X48_Y25_N18
\Mux64~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux64~0_combout\ = (\cpu_addr[0]~input_o\ & (\cpu_write_en~input_o\ & !\cpu_addr[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_addr[0]~input_o\,
	datac => \cpu_write_en~input_o\,
	datad => \cpu_addr[1]~input_o\,
	combout => \Mux64~0_combout\);

-- Location: FF_X47_Y28_N3
\reg_dst_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_dst_addr(0));

-- Location: LCCOMB_X48_Y25_N24
\reg_src_addr[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_src_addr[0]~0_combout\ = (!\cpu_addr[0]~input_o\ & (\cpu_write_en~input_o\ & !\cpu_addr[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_addr[0]~input_o\,
	datac => \cpu_write_en~input_o\,
	datad => \cpu_addr[1]~input_o\,
	combout => \reg_src_addr[0]~0_combout\);

-- Location: FF_X47_Y28_N13
\reg_src_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \reg_src_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_src_addr(0));

-- Location: LCCOMB_X47_Y28_N2
\master_addr~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \master_addr~0_combout\ = (\U_FSM|mem_read~q\ & ((reg_src_addr(0)))) # (!\U_FSM|mem_read~q\ & (reg_dst_addr(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|mem_read~q\,
	datac => reg_dst_addr(0),
	datad => reg_src_addr(0),
	combout => \master_addr~0_combout\);

-- Location: FF_X48_Y26_N11
\reg_dst_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_dst_addr(1));

-- Location: LCCOMB_X48_Y26_N0
\reg_src_addr[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_src_addr[1]~feeder_combout\ = \system_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[1]~input_o\,
	combout => \reg_src_addr[1]~feeder_combout\);

-- Location: FF_X48_Y26_N1
\reg_src_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_src_addr[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \reg_src_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_src_addr(1));

-- Location: LCCOMB_X48_Y26_N10
\master_addr~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \master_addr~1_combout\ = (\U_FSM|mem_read~q\ & ((reg_src_addr(1)))) # (!\U_FSM|mem_read~q\ & (reg_dst_addr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|mem_read~q\,
	datac => reg_dst_addr(1),
	datad => reg_src_addr(1),
	combout => \master_addr~1_combout\);

-- Location: FF_X48_Y28_N27
\reg_dst_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_dst_addr(2));

-- Location: LCCOMB_X48_Y28_N28
\reg_src_addr[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_src_addr[2]~feeder_combout\ = \system_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[2]~input_o\,
	combout => \reg_src_addr[2]~feeder_combout\);

-- Location: FF_X48_Y28_N29
\reg_src_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_src_addr[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \reg_src_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_src_addr(2));

-- Location: LCCOMB_X48_Y28_N26
\master_addr~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \master_addr~2_combout\ = (\U_FSM|mem_read~q\ & ((reg_src_addr(2)))) # (!\U_FSM|mem_read~q\ & (reg_dst_addr(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|mem_read~q\,
	datac => reg_dst_addr(2),
	datad => reg_src_addr(2),
	combout => \master_addr~2_combout\);

-- Location: FF_X47_Y28_N7
\reg_dst_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_dst_addr(3));

-- Location: LCCOMB_X47_Y28_N0
\reg_src_addr[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_src_addr[3]~feeder_combout\ = \system_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[3]~input_o\,
	combout => \reg_src_addr[3]~feeder_combout\);

-- Location: FF_X47_Y28_N1
\reg_src_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_src_addr[3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \reg_src_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_src_addr(3));

-- Location: LCCOMB_X47_Y28_N6
\master_addr~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \master_addr~3_combout\ = (\U_FSM|mem_read~q\ & ((reg_src_addr(3)))) # (!\U_FSM|mem_read~q\ & (reg_dst_addr(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|mem_read~q\,
	datac => reg_dst_addr(3),
	datad => reg_src_addr(3),
	combout => \master_addr~3_combout\);

-- Location: FF_X47_Y28_N27
\reg_dst_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[4]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_dst_addr(4));

-- Location: FF_X47_Y28_N17
\reg_src_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[4]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \reg_src_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_src_addr(4));

-- Location: LCCOMB_X47_Y28_N26
\master_addr~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \master_addr~4_combout\ = (\U_FSM|mem_read~q\ & ((reg_src_addr(4)))) # (!\U_FSM|mem_read~q\ & (reg_dst_addr(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|mem_read~q\,
	datac => reg_dst_addr(4),
	datad => reg_src_addr(4),
	combout => \master_addr~4_combout\);

-- Location: FF_X47_Y28_N29
\reg_src_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[5]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \reg_src_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_src_addr(5));

-- Location: LCCOMB_X47_Y28_N10
\reg_dst_addr[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_dst_addr[5]~feeder_combout\ = \system_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[5]~input_o\,
	combout => \reg_dst_addr[5]~feeder_combout\);

-- Location: FF_X47_Y28_N11
\reg_dst_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_dst_addr[5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Mux64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_dst_addr(5));

-- Location: LCCOMB_X47_Y28_N28
\master_addr~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \master_addr~5_combout\ = (\U_FSM|mem_read~q\ & (reg_src_addr(5))) # (!\U_FSM|mem_read~q\ & ((reg_dst_addr(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|mem_read~q\,
	datac => reg_src_addr(5),
	datad => reg_dst_addr(5),
	combout => \master_addr~5_combout\);

-- Location: FF_X48_Y28_N7
\reg_dst_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[6]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_dst_addr(6));

-- Location: FF_X48_Y28_N13
\reg_src_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[6]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \reg_src_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_src_addr(6));

-- Location: LCCOMB_X48_Y28_N6
\master_addr~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \master_addr~6_combout\ = (\U_FSM|mem_read~q\ & ((reg_src_addr(6)))) # (!\U_FSM|mem_read~q\ & (reg_dst_addr(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|mem_read~q\,
	datac => reg_dst_addr(6),
	datad => reg_src_addr(6),
	combout => \master_addr~6_combout\);

-- Location: FF_X47_Y28_N9
\reg_src_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[7]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \reg_src_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_src_addr(7));

-- Location: LCCOMB_X47_Y28_N18
\reg_dst_addr[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_dst_addr[7]~feeder_combout\ = \system_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[7]~input_o\,
	combout => \reg_dst_addr[7]~feeder_combout\);

-- Location: FF_X47_Y28_N19
\reg_dst_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_dst_addr[7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Mux64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_dst_addr(7));

-- Location: LCCOMB_X47_Y28_N8
\master_addr~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \master_addr~7_combout\ = (\U_FSM|mem_read~q\ & (reg_src_addr(7))) # (!\U_FSM|mem_read~q\ & ((reg_dst_addr(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|mem_read~q\,
	datac => reg_src_addr(7),
	datad => reg_dst_addr(7),
	combout => \master_addr~7_combout\);

-- Location: FF_X48_Y28_N23
\reg_dst_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[8]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_dst_addr(8));

-- Location: FF_X48_Y28_N21
\reg_src_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[8]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \reg_src_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_src_addr(8));

-- Location: LCCOMB_X48_Y28_N22
\master_addr~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \master_addr~8_combout\ = (\U_FSM|mem_read~q\ & ((reg_src_addr(8)))) # (!\U_FSM|mem_read~q\ & (reg_dst_addr(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|mem_read~q\,
	datac => reg_dst_addr(8),
	datad => reg_src_addr(8),
	combout => \master_addr~8_combout\);

-- Location: FF_X47_Y28_N15
\reg_dst_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[9]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_dst_addr(9));

-- Location: FF_X47_Y28_N25
\reg_src_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[9]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \reg_src_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_src_addr(9));

-- Location: LCCOMB_X48_Y28_N4
\master_addr~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \master_addr~9_combout\ = (\U_FSM|mem_read~q\ & ((reg_src_addr(9)))) # (!\U_FSM|mem_read~q\ & (reg_dst_addr(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_dst_addr(9),
	datab => reg_src_addr(9),
	datad => \U_FSM|mem_read~q\,
	combout => \master_addr~9_combout\);

-- Location: FF_X47_Y28_N31
\reg_dst_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[10]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_dst_addr(10));

-- Location: FF_X47_Y28_N21
\reg_src_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[10]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \reg_src_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_src_addr(10));

-- Location: LCCOMB_X47_Y28_N30
\master_addr~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \master_addr~10_combout\ = (\U_FSM|mem_read~q\ & ((reg_src_addr(10)))) # (!\U_FSM|mem_read~q\ & (reg_dst_addr(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|mem_read~q\,
	datac => reg_dst_addr(10),
	datad => reg_src_addr(10),
	combout => \master_addr~10_combout\);

-- Location: FF_X48_Y28_N17
\reg_dst_addr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[11]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_dst_addr(11));

-- Location: LCCOMB_X48_Y28_N2
\reg_src_addr[11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_src_addr[11]~feeder_combout\ = \system_data[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[11]~input_o\,
	combout => \reg_src_addr[11]~feeder_combout\);

-- Location: FF_X48_Y28_N3
\reg_src_addr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_src_addr[11]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \reg_src_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_src_addr(11));

-- Location: LCCOMB_X48_Y28_N16
\master_addr~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \master_addr~11_combout\ = (\U_FSM|mem_read~q\ & ((reg_src_addr(11)))) # (!\U_FSM|mem_read~q\ & (reg_dst_addr(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|mem_read~q\,
	datac => reg_dst_addr(11),
	datad => reg_src_addr(11),
	combout => \master_addr~11_combout\);

-- Location: FF_X47_Y25_N11
\reg_dst_addr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[12]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_dst_addr(12));

-- Location: LCCOMB_X47_Y25_N0
\reg_src_addr[12]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_src_addr[12]~feeder_combout\ = \system_data[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[12]~input_o\,
	combout => \reg_src_addr[12]~feeder_combout\);

-- Location: FF_X47_Y25_N1
\reg_src_addr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_src_addr[12]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \reg_src_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_src_addr(12));

-- Location: LCCOMB_X47_Y25_N10
\master_addr~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \master_addr~12_combout\ = (\U_FSM|mem_read~q\ & ((reg_src_addr(12)))) # (!\U_FSM|mem_read~q\ & (reg_dst_addr(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FSM|mem_read~q\,
	datac => reg_dst_addr(12),
	datad => reg_src_addr(12),
	combout => \master_addr~12_combout\);

-- Location: FF_X47_Y25_N9
\reg_src_addr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[13]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \reg_src_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_src_addr(13));

-- Location: FF_X47_Y25_N19
\reg_dst_addr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[13]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_dst_addr(13));

-- Location: LCCOMB_X47_Y25_N18
\master_addr~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \master_addr~13_combout\ = (\U_FSM|mem_read~q\ & (reg_src_addr(13))) # (!\U_FSM|mem_read~q\ & ((reg_dst_addr(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_src_addr(13),
	datac => reg_dst_addr(13),
	datad => \U_FSM|mem_read~q\,
	combout => \master_addr~13_combout\);

-- Location: FF_X47_Y25_N5
\reg_src_addr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[14]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \reg_src_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_src_addr(14));

-- Location: FF_X47_Y25_N3
\reg_dst_addr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[14]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_dst_addr(14));

-- Location: LCCOMB_X47_Y25_N2
\master_addr~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \master_addr~14_combout\ = (\U_FSM|mem_read~q\ & (reg_src_addr(14))) # (!\U_FSM|mem_read~q\ & ((reg_dst_addr(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_src_addr(14),
	datac => reg_dst_addr(14),
	datad => \U_FSM|mem_read~q\,
	combout => \master_addr~14_combout\);

-- Location: FF_X47_Y25_N15
\reg_dst_addr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[15]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_dst_addr(15));

-- Location: LCCOMB_X47_Y25_N12
\reg_src_addr[15]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_src_addr[15]~feeder_combout\ = \system_data[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[15]~input_o\,
	combout => \reg_src_addr[15]~feeder_combout\);

-- Location: FF_X47_Y25_N13
\reg_src_addr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_src_addr[15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \reg_src_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_src_addr(15));

-- Location: LCCOMB_X47_Y25_N14
\master_addr~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \master_addr~15_combout\ = (\U_FSM|mem_read~q\ & ((reg_src_addr(15)))) # (!\U_FSM|mem_read~q\ & (reg_dst_addr(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FSM|mem_read~q\,
	datac => reg_dst_addr(15),
	datad => reg_src_addr(15),
	combout => \master_addr~15_combout\);

-- Location: FF_X47_Y25_N27
\reg_dst_addr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[16]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_dst_addr(16));

-- Location: FF_X47_Y25_N29
\reg_src_addr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[16]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \reg_src_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_src_addr(16));

-- Location: LCCOMB_X47_Y25_N26
\master_addr~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \master_addr~16_combout\ = (\U_FSM|mem_read~q\ & ((reg_src_addr(16)))) # (!\U_FSM|mem_read~q\ & (reg_dst_addr(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FSM|mem_read~q\,
	datac => reg_dst_addr(16),
	datad => reg_src_addr(16),
	combout => \master_addr~16_combout\);

-- Location: FF_X47_Y25_N23
\reg_dst_addr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[17]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_dst_addr(17));

-- Location: FF_X47_Y25_N25
\reg_src_addr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[17]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \reg_src_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_src_addr(17));

-- Location: LCCOMB_X47_Y25_N22
\master_addr~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \master_addr~17_combout\ = (\U_FSM|mem_read~q\ & ((reg_src_addr(17)))) # (!\U_FSM|mem_read~q\ & (reg_dst_addr(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FSM|mem_read~q\,
	datac => reg_dst_addr(17),
	datad => reg_src_addr(17),
	combout => \master_addr~17_combout\);

-- Location: FF_X47_Y25_N31
\reg_dst_addr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[18]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_dst_addr(18));

-- Location: LCCOMB_X47_Y25_N20
\reg_src_addr[18]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_src_addr[18]~feeder_combout\ = \system_data[18]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[18]~input_o\,
	combout => \reg_src_addr[18]~feeder_combout\);

-- Location: FF_X47_Y25_N21
\reg_src_addr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_src_addr[18]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \reg_src_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_src_addr(18));

-- Location: LCCOMB_X47_Y25_N30
\master_addr~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \master_addr~18_combout\ = (\U_FSM|mem_read~q\ & ((reg_src_addr(18)))) # (!\U_FSM|mem_read~q\ & (reg_dst_addr(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FSM|mem_read~q\,
	datac => reg_dst_addr(18),
	datad => reg_src_addr(18),
	combout => \master_addr~18_combout\);

-- Location: FF_X48_Y28_N15
\reg_src_addr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[19]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \reg_src_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_src_addr(19));

-- Location: FF_X48_Y28_N25
\reg_dst_addr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[19]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_dst_addr(19));

-- Location: LCCOMB_X48_Y28_N24
\master_addr~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \master_addr~19_combout\ = (\U_FSM|mem_read~q\ & (reg_src_addr(19))) # (!\U_FSM|mem_read~q\ & ((reg_dst_addr(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_src_addr(19),
	datac => reg_dst_addr(19),
	datad => \U_FSM|mem_read~q\,
	combout => \master_addr~19_combout\);

-- Location: FF_X47_Y25_N7
\reg_dst_addr[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[20]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_dst_addr(20));

-- Location: FF_X47_Y25_N17
\reg_src_addr[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[20]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \reg_src_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_src_addr(20));

-- Location: LCCOMB_X47_Y25_N6
\master_addr~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \master_addr~20_combout\ = (\U_FSM|mem_read~q\ & ((reg_src_addr(20)))) # (!\U_FSM|mem_read~q\ & (reg_dst_addr(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FSM|mem_read~q\,
	datac => reg_dst_addr(20),
	datad => reg_src_addr(20),
	combout => \master_addr~20_combout\);

-- Location: FF_X48_Y28_N9
\reg_dst_addr[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[21]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_dst_addr(21));

-- Location: FF_X48_Y28_N11
\reg_src_addr[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[21]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \reg_src_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_src_addr(21));

-- Location: LCCOMB_X48_Y28_N8
\master_addr~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \master_addr~21_combout\ = (\U_FSM|mem_read~q\ & ((reg_src_addr(21)))) # (!\U_FSM|mem_read~q\ & (reg_dst_addr(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|mem_read~q\,
	datac => reg_dst_addr(21),
	datad => reg_src_addr(21),
	combout => \master_addr~21_combout\);

-- Location: FF_X42_Y28_N11
\reg_dst_addr[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[22]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_dst_addr(22));

-- Location: FF_X42_Y28_N1
\reg_src_addr[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[22]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \reg_src_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_src_addr(22));

-- Location: LCCOMB_X42_Y28_N10
\master_addr~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \master_addr~22_combout\ = (\U_FSM|mem_read~q\ & ((reg_src_addr(22)))) # (!\U_FSM|mem_read~q\ & (reg_dst_addr(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FSM|mem_read~q\,
	datac => reg_dst_addr(22),
	datad => reg_src_addr(22),
	combout => \master_addr~22_combout\);

-- Location: LCCOMB_X42_Y28_N8
\reg_src_addr[23]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_src_addr[23]~feeder_combout\ = \system_data[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[23]~input_o\,
	combout => \reg_src_addr[23]~feeder_combout\);

-- Location: FF_X42_Y28_N9
\reg_src_addr[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_src_addr[23]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \reg_src_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_src_addr(23));

-- Location: FF_X42_Y28_N23
\reg_dst_addr[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[23]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_dst_addr(23));

-- Location: LCCOMB_X42_Y28_N22
\master_addr~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \master_addr~23_combout\ = (\U_FSM|mem_read~q\ & (reg_src_addr(23))) # (!\U_FSM|mem_read~q\ & ((reg_dst_addr(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_src_addr(23),
	datac => reg_dst_addr(23),
	datad => \U_FSM|mem_read~q\,
	combout => \master_addr~23_combout\);

-- Location: FF_X42_Y28_N5
\reg_src_addr[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[24]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \reg_src_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_src_addr(24));

-- Location: FF_X42_Y28_N27
\reg_dst_addr[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[24]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_dst_addr(24));

-- Location: LCCOMB_X42_Y28_N26
\master_addr~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \master_addr~24_combout\ = (\U_FSM|mem_read~q\ & (reg_src_addr(24))) # (!\U_FSM|mem_read~q\ & ((reg_dst_addr(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_src_addr(24),
	datac => reg_dst_addr(24),
	datad => \U_FSM|mem_read~q\,
	combout => \master_addr~24_combout\);

-- Location: FF_X42_Y28_N19
\reg_dst_addr[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[25]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_dst_addr(25));

-- Location: FF_X42_Y28_N13
\reg_src_addr[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[25]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \reg_src_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_src_addr(25));

-- Location: LCCOMB_X42_Y28_N18
\master_addr~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \master_addr~25_combout\ = (\U_FSM|mem_read~q\ & ((reg_src_addr(25)))) # (!\U_FSM|mem_read~q\ & (reg_dst_addr(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FSM|mem_read~q\,
	datac => reg_dst_addr(25),
	datad => reg_src_addr(25),
	combout => \master_addr~25_combout\);

-- Location: FF_X42_Y28_N31
\reg_dst_addr[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[26]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_dst_addr(26));

-- Location: LCCOMB_X42_Y28_N28
\reg_src_addr[26]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_src_addr[26]~feeder_combout\ = \system_data[26]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[26]~input_o\,
	combout => \reg_src_addr[26]~feeder_combout\);

-- Location: FF_X42_Y28_N29
\reg_src_addr[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_src_addr[26]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \reg_src_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_src_addr(26));

-- Location: LCCOMB_X42_Y28_N30
\master_addr~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \master_addr~26_combout\ = (\U_FSM|mem_read~q\ & ((reg_src_addr(26)))) # (!\U_FSM|mem_read~q\ & (reg_dst_addr(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FSM|mem_read~q\,
	datac => reg_dst_addr(26),
	datad => reg_src_addr(26),
	combout => \master_addr~26_combout\);

-- Location: FF_X42_Y28_N7
\reg_dst_addr[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[27]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_dst_addr(27));

-- Location: FF_X42_Y28_N25
\reg_src_addr[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[27]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \reg_src_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_src_addr(27));

-- Location: LCCOMB_X42_Y28_N6
\master_addr~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \master_addr~27_combout\ = (\U_FSM|mem_read~q\ & ((reg_src_addr(27)))) # (!\U_FSM|mem_read~q\ & (reg_dst_addr(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FSM|mem_read~q\,
	datac => reg_dst_addr(27),
	datad => reg_src_addr(27),
	combout => \master_addr~27_combout\);

-- Location: FF_X42_Y28_N3
\reg_dst_addr[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[28]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_dst_addr(28));

-- Location: LCCOMB_X42_Y28_N20
\reg_src_addr[28]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reg_src_addr[28]~feeder_combout\ = \system_data[28]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_data[28]~input_o\,
	combout => \reg_src_addr[28]~feeder_combout\);

-- Location: FF_X42_Y28_N21
\reg_src_addr[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_src_addr[28]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \reg_src_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_src_addr(28));

-- Location: LCCOMB_X42_Y28_N2
\master_addr~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \master_addr~28_combout\ = (\U_FSM|mem_read~q\ & ((reg_src_addr(28)))) # (!\U_FSM|mem_read~q\ & (reg_dst_addr(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FSM|mem_read~q\,
	datac => reg_dst_addr(28),
	datad => reg_src_addr(28),
	combout => \master_addr~28_combout\);

-- Location: FF_X42_Y28_N15
\reg_dst_addr[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[29]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_dst_addr(29));

-- Location: FF_X42_Y28_N17
\reg_src_addr[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[29]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \reg_src_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_src_addr(29));

-- Location: LCCOMB_X42_Y28_N14
\master_addr~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \master_addr~29_combout\ = (\U_FSM|mem_read~q\ & ((reg_src_addr(29)))) # (!\U_FSM|mem_read~q\ & (reg_dst_addr(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FSM|mem_read~q\,
	datac => reg_dst_addr(29),
	datad => reg_src_addr(29),
	combout => \master_addr~29_combout\);

-- Location: FF_X48_Y25_N31
\reg_dst_addr[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[30]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_dst_addr(30));

-- Location: FF_X48_Y25_N13
\reg_src_addr[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[30]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \reg_src_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_src_addr(30));

-- Location: LCCOMB_X48_Y25_N30
\master_addr~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \master_addr~30_combout\ = (\U_FSM|mem_read~q\ & ((reg_src_addr(30)))) # (!\U_FSM|mem_read~q\ & (reg_dst_addr(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|mem_read~q\,
	datac => reg_dst_addr(30),
	datad => reg_src_addr(30),
	combout => \master_addr~30_combout\);

-- Location: FF_X48_Y28_N1
\reg_dst_addr[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[31]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_dst_addr(31));

-- Location: FF_X48_Y28_N19
\reg_src_addr[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \system_data[31]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \reg_src_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_src_addr(31));

-- Location: LCCOMB_X48_Y28_N0
\master_addr~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \master_addr~31_combout\ = (\U_FSM|mem_read~q\ & ((reg_src_addr(31)))) # (!\U_FSM|mem_read~q\ & (reg_dst_addr(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|mem_read~q\,
	datac => reg_dst_addr(31),
	datad => reg_src_addr(31),
	combout => \master_addr~31_combout\);

-- Location: FF_X38_Y27_N9
\U_FSM|dma_done_irq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_FSM|current_state.DONE~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FSM|dma_done_irq~q\);

ww_master_addr(0) <= \master_addr[0]~output_o\;

ww_master_addr(1) <= \master_addr[1]~output_o\;

ww_master_addr(2) <= \master_addr[2]~output_o\;

ww_master_addr(3) <= \master_addr[3]~output_o\;

ww_master_addr(4) <= \master_addr[4]~output_o\;

ww_master_addr(5) <= \master_addr[5]~output_o\;

ww_master_addr(6) <= \master_addr[6]~output_o\;

ww_master_addr(7) <= \master_addr[7]~output_o\;

ww_master_addr(8) <= \master_addr[8]~output_o\;

ww_master_addr(9) <= \master_addr[9]~output_o\;

ww_master_addr(10) <= \master_addr[10]~output_o\;

ww_master_addr(11) <= \master_addr[11]~output_o\;

ww_master_addr(12) <= \master_addr[12]~output_o\;

ww_master_addr(13) <= \master_addr[13]~output_o\;

ww_master_addr(14) <= \master_addr[14]~output_o\;

ww_master_addr(15) <= \master_addr[15]~output_o\;

ww_master_addr(16) <= \master_addr[16]~output_o\;

ww_master_addr(17) <= \master_addr[17]~output_o\;

ww_master_addr(18) <= \master_addr[18]~output_o\;

ww_master_addr(19) <= \master_addr[19]~output_o\;

ww_master_addr(20) <= \master_addr[20]~output_o\;

ww_master_addr(21) <= \master_addr[21]~output_o\;

ww_master_addr(22) <= \master_addr[22]~output_o\;

ww_master_addr(23) <= \master_addr[23]~output_o\;

ww_master_addr(24) <= \master_addr[24]~output_o\;

ww_master_addr(25) <= \master_addr[25]~output_o\;

ww_master_addr(26) <= \master_addr[26]~output_o\;

ww_master_addr(27) <= \master_addr[27]~output_o\;

ww_master_addr(28) <= \master_addr[28]~output_o\;

ww_master_addr(29) <= \master_addr[29]~output_o\;

ww_master_addr(30) <= \master_addr[30]~output_o\;

ww_master_addr(31) <= \master_addr[31]~output_o\;

ww_master_rd <= \master_rd~output_o\;

ww_master_wr <= \master_wr~output_o\;

ww_dma_irq <= \dma_irq~output_o\;

system_data(0) <= \system_data[0]~output_o\;

system_data(1) <= \system_data[1]~output_o\;

system_data(2) <= \system_data[2]~output_o\;

system_data(3) <= \system_data[3]~output_o\;

system_data(4) <= \system_data[4]~output_o\;

system_data(5) <= \system_data[5]~output_o\;

system_data(6) <= \system_data[6]~output_o\;

system_data(7) <= \system_data[7]~output_o\;

system_data(8) <= \system_data[8]~output_o\;

system_data(9) <= \system_data[9]~output_o\;

system_data(10) <= \system_data[10]~output_o\;

system_data(11) <= \system_data[11]~output_o\;

system_data(12) <= \system_data[12]~output_o\;

system_data(13) <= \system_data[13]~output_o\;

system_data(14) <= \system_data[14]~output_o\;

system_data(15) <= \system_data[15]~output_o\;

system_data(16) <= \system_data[16]~output_o\;

system_data(17) <= \system_data[17]~output_o\;

system_data(18) <= \system_data[18]~output_o\;

system_data(19) <= \system_data[19]~output_o\;

system_data(20) <= \system_data[20]~output_o\;

system_data(21) <= \system_data[21]~output_o\;

system_data(22) <= \system_data[22]~output_o\;

system_data(23) <= \system_data[23]~output_o\;

system_data(24) <= \system_data[24]~output_o\;

system_data(25) <= \system_data[25]~output_o\;

system_data(26) <= \system_data[26]~output_o\;

system_data(27) <= \system_data[27]~output_o\;

system_data(28) <= \system_data[28]~output_o\;

system_data(29) <= \system_data[29]~output_o\;

system_data(30) <= \system_data[30]~output_o\;

system_data(31) <= \system_data[31]~output_o\;
END structure;


