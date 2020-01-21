library ieee ;
    use ieee.std_logic_1164.all ;
    use ieee.numeric_std.all ;

entity data_receiver is 
	port (data_in, clk: in std_logic;
			ready: out std_logic;
			data_out: out std_logic_vector(7 downto 0));
end entity;

architecture arch of data_receiver is	
	signal reg: std_logic_vector(7 downto 0):=(others => '0');
	signal count: integer  range 0 to 15 := 0;
begin
	data_out<=reg;
	process(clk) 
	begin
		if(clk='0') then
			count<=count+1;
			if(count=0) then 
				reg<=(others =>'0');
				ready<='0';
			elsif(count<9) then
				reg<=data_in & reg(7 downto 1) ;
			elsif(count=10) then
				count<=0;
				ready<='1';
			end if;
		end if;
	end process;
end arch;