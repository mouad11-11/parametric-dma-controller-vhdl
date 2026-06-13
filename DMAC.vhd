library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DMAC is
    port (
        clk           : in    std_logic;
        reset         : in    std_logic;
        cpu_addr      : in    std_logic_vector(1 downto 0); 
        cpu_write_en  : in    std_logic;
        system_data   : inout std_logic_vector(31 downto 0);
        master_addr   : out   std_logic_vector(31 downto 0);
        master_rd     : out   std_logic;
        master_wr     : out   std_logic;
        master_ready  : in    std_logic;
        dma_irq       : out   std_logic
    );
end entity DMAC;

architecture structural of DMAC is
    signal reg_src_addr  : unsigned(31 downto 0);
    signal reg_dst_addr  : unsigned(31 downto 0);
    signal reg_len       : unsigned(15 downto 0);
    signal reg_ctrl      : std_logic_vector(7 downto 0);

    signal s_bus_req       : std_logic;
    signal s_mem_rd        : std_logic;
    signal s_mem_wr        : std_logic;
    signal s_fifo_full     : std_logic;
    signal s_fifo_empty    : std_logic;
    signal s_fifo_data_out : std_logic_vector(31 downto 0);
    signal s_dma_busy      : std_logic;
    signal internal_data   : std_logic_vector(31 downto 0);

    component dma_fsm is
        generic ( BURST_SIZE : integer := 4 );
        port (
            clk, reset      : in  std_logic;
            start_transfer  : in  std_logic;
            total_len       : in  unsigned(15 downto 0);
            bus_req         : out std_logic;
            bus_grant       : in  std_logic;
            mem_read        : out std_logic;
            mem_write       : out std_logic;
            mem_ready       : in  std_logic;
            fifo_full       : in  std_logic;
            fifo_empty      : in  std_logic;
            dma_busy        : out std_logic;
            dma_done_irq    : out std_logic
        );
    end component;

    component dma_fifo is
        generic ( DATA_WIDTH : integer := 32; FIFO_DEPTH : integer := 8 );
        port (
            clk, reset : in  std_logic;
            write_en   : in  std_logic;
            data_in    : in  std_logic_vector(31 downto 0);
            full       : out std_logic;
            read_en    : in  std_logic;
            data_out   : out std_logic_vector(31 downto 0);
            empty      : out std_logic
        );
    end component;

begin
    process(clk, reset)
    begin
        if reset = '1' then
            reg_src_addr <= (others => '0');
            reg_dst_addr <= (others => '0');
            reg_len      <= (others => '0');
            reg_ctrl     <= (others => '0');
        elsif rising_edge(clk) then
            if cpu_write_en = '1' then
                case cpu_addr is
                    when "00" => reg_src_addr <= unsigned(system_data);
                    when "01" => reg_dst_addr <= unsigned(system_data);
                    when "10" => reg_len      <= unsigned(system_data(15 downto 0));
                    when "11" => reg_ctrl     <= system_data(7 downto 0);
                    when others => null;
                end case;
            end if;
            if s_dma_busy = '1' then
                reg_ctrl(0) <= '0';
            end if;
        end if;
    end process;

    system_data <= s_fifo_data_out when (s_mem_wr = '1') else (others => 'Z');
    internal_data <= system_data;

    U_FSM : dma_fsm 
        port map (
            clk => clk, reset => reset, start_transfer => reg_ctrl(0),
            total_len => reg_len, bus_req => s_bus_req, bus_grant => master_ready,
            mem_read => s_mem_rd, mem_write => s_mem_wr, mem_ready => master_ready,
            fifo_full => s_fifo_full, fifo_empty => s_fifo_empty,
            dma_busy => s_dma_busy, dma_done_irq => dma_irq
        );

    U_FIFO : dma_fifo 
        port map (
            clk => clk, reset => reset, write_en => s_mem_rd,
            data_in => internal_data, full => s_fifo_full,
            read_en => s_mem_wr, data_out => s_fifo_data_out, empty => s_fifo_empty
        );

    master_addr <= std_logic_vector(reg_src_addr) when s_mem_rd = '1' else std_logic_vector(reg_dst_addr);
    master_rd   <= s_mem_rd;
    master_wr   <= s_mem_wr;
end architecture structural;