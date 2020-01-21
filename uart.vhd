library ieee ;
    use ieee.std_logic_1164.all ;
    use ieee.numeric_std.all ;

entity uart is 
	generic(delay:integer:=50000000/9600);
	port(byte:in std_logic_vector(7 downto 0);
		  clk_50mhz,start:in std_logic;
		  serial_out: out std_logic);
end entity;

architecture arch of uart is
	signal data: std_logic_vector(7 downto 0);
	signal index: integer range 0 to 15;
	signal prscl: integer range 0 to 5206;
begin	
	process(clk_50mhz)
	begin
		if(clk_50mhz='0') then 
			if(prscl<delay) then
				prscl<=prscl+1;
				if(prscl=delay/2) then
					if(index=0) then
						serial_out <='0';
						index<=index+1;
					elsif(index<9) then
						index<=index+1;
						serial_out <=data(index-1);
					else 
						serial_out <='1';
						if(start='1') then
							data<=byte;
							if(byte/=data and byte/=x"3F" and data/=x"F0") then 
								index<=0;
							end if;
						end if;
					end if;
				end if;
			else
				prscl<=0;
			end if;	
		end if;
	end process;
	
	process (byte)
	begin
	
	end process;

end arch;


--library ieee ;
--    use ieee.std_logic_1164.all ;
--    use ieee.numeric_std.all ;
--
--entity uart is 
--	port(byte:in std_logic_vector(7 downto 0);
--		  clk_50mhz,start:in std_logic;
--		  serial_out: out std_logic);
--end entity;
--
--architecture arch of uart is
--	signal index: integer range 0 to 15 :=0;
--	signal prscl: integer range 0 to 5206 :=0;
--begin	
--	process(byte)
--	begin
--		if(clk_50mhz='0') then 
--			if(prscl<5206) then
--				prscl<=prscl+1;
--				if(prscl=2603) then
--					if(index=0) then
--						serial_out <='0';
--						index<=index+1;
--					elsif(index<9) then
--						index<=index+1;
--						serial_out <=byte(index-1);
--					else 
--						serial_out <='1';
--						index<=0;
--					end if;
--				end if;
--			else
--				prscl<=0;
--			end if;	
--		end if;
--	end process;
--	
--	process () 
--
--end arch;