library ieee ;
    use ieee.std_logic_1164.all ;
    use ieee.numeric_std.all ;

entity Terminal_Remoto is
	generic(num:integer:=10**6);
	port(serial_in,clk_ps2,clk_50mhz:in std_logic;
		  display_a:buffer std_logic_vector(6 downto 0);
		  display_b:buffer std_logic_vector(6 downto 0);
		  serial_out: out std_logic;
		  ledg:out std_logic_vector(7 downto 0)
	);
end entity;


architecture arch of Terminal_Remoto is
	component data_receiver is
		port (data_in, clk: in std_logic;
        ready: out std_logic;
        data_out: out std_logic_vector(7 downto 0));
	end component;
	
	component hex_decoder_display is
		port(code:in std_logic_vector(3 downto 0);
			  display:out std_logic_vector(6 downto 0));
	end component;
	
	component ps2_decoder is
		port(key_code: in std_logic_vector(7 downto 0); 
           ascii_code: out std_logic_vector(7 downto 0));
	end component;
	
	component uart is 
		port(byte:in std_logic_vector(7 downto 0);
				clk_50mhz,start:in std_logic;
				serial_out: out std_logic);
	end component;

	signal ready:std_logic:='0';
	signal start: std_logic:='0';
	signal data:std_logic_vector(7 downto 0);
	signal ascii_code:std_logic_vector(7 downto 0);
	signal temp_a:std_logic_vector(6 downto 0);
	signal temp_b:std_logic_vector(6 downto 0);
	type state is (wait_data, wait_f0, sending);
	signal current_state:state:=wait_data;
begin

	ledg(0)<='1' when current_state=wait_data else '0';
	ledg(1)<='1' when current_state=wait_f0 else '0';
	ledg(2)<='1' when current_state=sending else '0';
	
	
	
	process(clk_50mhz)
		variable alt_ready:std_logic_vector(1 downto 0):="00";
		variable delay:integer range 0 to num:=0;
	begin
		if(clk_50mhz='0') then 
			alt_ready:= alt_ready(0) & ready;	
			if(alt_ready="01") then 				
				if(current_state=wait_data and data/=x"F0") then
					current_state<=wait_f0;
				elsif (current_state=wait_f0 and data=x"F0") then
					current_state<=sending;
					start<='1';
				end if;
			end if;
			if(current_state=sending) then
					if(delay<num) then 
						delay:=delay+1;
					else
						display_a<=temp_a;
						display_b<=temp_b;
						current_state<=wait_data;
						start<='0';
						delay:=0;
					end if;
				end if;
		end if;
	end process;
		
	ps2: data_receiver port map(serial_in,clk_ps2,ready,data);
	decA:hex_decoder_display port map (ascii_code(7 downto 4),temp_a);
	decB:hex_decoder_display port map (ascii_code(3 downto 0),temp_b);
	ascii: ps2_decoder port map(data, ascii_code);
	serial: uart port map(ascii_code,clk_50mhz,start,serial_out);
	
	end arch; 