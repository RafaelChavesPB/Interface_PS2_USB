library ieee ;
    use ieee.std_logic_1164.all ;
    use ieee.numeric_std.all ;

entity testbench is
end testbench ; 

architecture arch of testbench is
    component Terminal_Remoto is
        port (data_in, clk: in std_logic;
              ready: out std_logic;
              data_out: out std_logic_vector(7 downto 0));
    end component;
    signal data_test:std_logic_vector(10 downto 0):= "01010111100";
    signal data_test2:std_logic_vector(10 downto 0):= "01011100100";
    signal data_in:std_logic:='0';
    signal clk:std_logic:='1';
    signal ready:std_logic:='0';
    signal data_out: std_logic_vector(7 downto 0):=(others=>'0');
begin

    dut: Terminal_Remoto port map(data_in,clk,ready,data_out);

    process
    begin
        wait for 5 ns; 
        for i in 10 downto 0 loop
            clk<='1';
            data_in<=data_test(i);
            wait for 5 ns;
            clk<='0';
            wait for 5 ns;
        end loop;
        clk<='1';
        wait for 40 ns;
        for i in 10 downto 0 loop
            clk<='1';
            data_in<=data_test2(i);
            wait for 5 ns;
            clk<='0';
            wait for 5 ns;
        end loop;
        wait for 40 ns;
        wait;
    end process;

end architecture ;