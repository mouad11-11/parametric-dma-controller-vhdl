library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dma_fsm is
    generic (
        BURST_SIZE : integer := 4
    );
    port (
        clk            : in  std_logic;
        reset          : in  std_logic;
        start_transfer : in  std_logic;
        total_len      : in  unsigned(15 downto 0);
        bus_req        : out std_logic;
        bus_grant      : in  std_logic;
        mem_read       : out std_logic;
        mem_write      : out std_logic;
        mem_ready      : in  std_logic; 
        fifo_full      : in  std_logic;
        fifo_empty     : in  std_logic;
        dma_busy       : out std_logic;
        dma_done_irq   : out std_logic
    );
end entity dma_fsm;

architecture verified of dma_fsm is
    type state_type is (IDLE, REQ_BUS, READ_BURST, WRITE_BURST, CHECK_COUNT, DONE);
    signal current_state : state_type;
    signal rem_len       : unsigned(15 downto 0);
    signal burst_cnt     : integer range 0 to BURST_SIZE; -- New counter
begin

    

    process(clk, reset)
    begin
        if reset = '1' then
            current_state <= IDLE;
            rem_len       <= (others => '0');
            burst_cnt     <= 0;
            bus_req       <= '0';
            mem_read      <= '0';
            mem_write     <= '0';
            dma_busy      <= '0';
            dma_done_irq  <= '0';
        elsif rising_edge(clk) then
            -- Default Outputs
            dma_done_irq <= '0';
            
            case current_state is
                when IDLE =>
                    dma_busy <= '0';
                    bus_req  <= '0';
                    if start_transfer = '1' then
                        rem_len       <= total_len;
                        current_state <= REQ_BUS;
                        dma_busy      <= '1';
                    end if;

                when REQ_BUS =>
                    bus_req <= '1';
                    if bus_grant = '1' then
                        burst_cnt     <= 0;
                        current_state <= READ_BURST;
                    end if;

                when READ_BURST =>
                    if fifo_full = '0' then
                        mem_read <= '1';
                        if mem_ready = '1' then
                            burst_cnt <= burst_cnt + 1;
                            if burst_cnt = BURST_SIZE - 1 then
                                mem_read      <= '0';
                                burst_cnt     <= 0;
                                current_state <= WRITE_BURST;
                            end if;
                        end if;
                    else
                        mem_read <= '0'; -- Pause if FIFO is full unexpectedly
                    end if;

                when WRITE_BURST =>
                    if fifo_empty = '0' then
                        mem_write <= '1';
                        if mem_ready = '1' then
                            burst_cnt <= burst_cnt + 1;
                            if burst_cnt = BURST_SIZE - 1 then
                                mem_write     <= '0';
                                current_state <= CHECK_COUNT;
                            end if;
                        end if;
                    else
                        mem_write <= '0';
                    end if;

                when CHECK_COUNT =>
                    if rem_len <= BURST_SIZE then
                        current_state <= DONE;
                    else
                        rem_len       <= rem_len - BURST_SIZE;
                        current_state <= REQ_BUS;
                    end if;

                when DONE =>
                    bus_req      <= '0';
                    dma_done_irq <= '1';
                    dma_busy     <= '0';
                    current_state <= IDLE;

                when others =>
                    current_state <= IDLE;
            end case;
        end if;
    end process;
end architecture;