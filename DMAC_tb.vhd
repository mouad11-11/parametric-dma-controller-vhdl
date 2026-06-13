library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DMAC_tb is
end entity DMAC_tb;

architecture sim of DMAC_tb is
    -- Timing Constants
    constant CLK_PERIOD : time := 20 ns;

    -- Internal Signals
    signal clk            : std_logic := '0';
    signal reset          : std_logic := '1';
    signal cpu_addr       : std_logic_vector(1 downto 0) := (others => '0');
    signal cpu_write_en   : std_logic := '0';
    signal system_data    : std_logic_vector(31 downto 0) := (others => 'Z');
    signal master_addr    : std_logic_vector(31 downto 0);
    signal master_rd      : std_logic;
    signal master_wr      : std_logic;
    signal master_ready   : std_logic := '0';
    signal dma_irq        : std_logic;

begin
    -- 50MHz Clock Generation
    clk <= not clk after (CLK_PERIOD / 2);

    -- Device Under Test (DUT)
    DUT: entity work.DMAC
        port map (
            clk           => clk,
            reset         => reset,
            cpu_addr      => cpu_addr,
            cpu_write_en  => cpu_write_en,
            system_data   => system_data,
            master_addr   => master_addr,
            master_rd     => master_rd,
            master_wr     => master_wr,
            master_ready  => master_ready,
            dma_irq       => dma_irq
        );

    -----------------------------------------------------------
    -- Memory Model: Drives data only during DMA Reads
    -----------------------------------------------------------
    -- Ensures the TB only drives the bus when the DMA is reading
    system_data <= X"ABCD1234" when (master_rd = '1' and master_ready = '1') else (others => 'Z');

    -----------------------------------------------------------
    -- Stimulus Process
    -----------------------------------------------------------
    Test_Proc: process
    begin
        -- System Reset
        reset <= '1';
        wait for 40 ns;
        reset <= '0';
        wait until rising_edge(clk);

        -- Step 1: Program Source Address
        cpu_addr <= "00";
        system_data <= X"00001000"; 
        cpu_write_en <= '1';
        wait until rising_edge(clk);
        
        -- Step 2: Program Destination Address
        cpu_addr <= "01";
        system_data <= X"00002000";
        wait until rising_edge(clk);

        -- Step 3: Program Transfer Length
        cpu_addr <= "10";
        system_data <= X"00000008"; 
        wait until rising_edge(clk);

        -- Step 4: Trigger Start Bit
        cpu_addr <= "11";
        system_data <= X"00000001"; 
        wait until rising_edge(clk);
        
        -- Handover: CPU releases control of the bus
        cpu_write_en <= '0';
        system_data <= (others => 'Z'); 

        -----------------------------------------------------------
        -- Step 5: FIXED Master Handshake Loop
        -----------------------------------------------------------
        -- We must assert master_ready to let the FSM exit REQ_BUS
        while dma_irq = '0' loop
            -- Provide the 'Bus Grant' while FSM is requesting or busy
            master_ready <= '1'; 
            
            wait until rising_edge(clk);
            
            -- Safety exit to avoid driving ready after IRQ fires
            if dma_irq = '1' then
                exit;
            end if;
        end loop;
        
        -- Cleanup
        master_ready <= '0';
        wait for 100 ns;
        report "DMA Simulation Successfully Finished: IRQ Received";
        std.env.stop;
    end process;

end architecture;