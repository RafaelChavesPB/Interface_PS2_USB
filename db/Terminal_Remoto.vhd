library ieee ;
    use ieee.std_logic_1164.all ;
    use ieee.numeric_std.all ;

entity Terminal_Remoto is
	generic(delay:integer:=10**5);
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
	signal start_sending: std_logic:='0';
	signal data:std_logic_vector(7 downto 0);
	signal buffer_uart:std_logic_vector(7 downto 0);
	signal ascii_code:std_logic_vector(7 downto 0);
	signal buffer_display_a:std_logic_vector(6 downto 0);
	signal buffer_display_b:std_logic_vector(6 downto 0);
	
	type state is (wait_make, wait_break, sending);
	signal current_state:state:=wait_make;
	
begin
	
	PS2_FPGA: data_receiver port map(serial_in,clk_ps2,ready,data);
	Decoder_A:hex_decoder_display port map (ascii_code(7 downto 4),buffer_display_a);
	Decoder_B:hex_decoder_display port map (ascii_code(3 downto 0),buffer_display_b);
	Decoder_ascii: ps2_decoder port map(buffer_uart, ascii_code);
	FPGA_RS232: uart port map(ascii_code,clk_50mhz,start_sending,serial_out);
	
	
	--Leds para Debug
	ledg(0)<='1' when current_state=wait_make else '0';
	ledg(1)<='1' when current_state=wait_break else '0';
	ledg(2)<='1' when current_state=sending else '0';
	
	--Maquina de Estado
	process(clk_50mhz)
		variable alt_ready:std_logic_vector(1 downto 0);
		variable count:integer range 0 to delay;
		variable flag:std_logic;
	begin
		if(clk_50mhz='0') then 
			alt_ready:= alt_ready(0) & ready;	
			if(alt_ready="01") then
			
				-- WAIT_MAKE
				if(current_state=wait_make and data/=x"F0") then
					current_state<=wait_break;
					buffer_uart<=data;
					flag:='0';
			
				-- WAIT_BREAK	
				elsif (current_state=wait_break) then
					if(flag='0') then
						display_a<=buffer_display_a;
						display_b<=buffer_display_b;
						flag:='1';
					else 
						current_state<=sending;
						start_sending<='1';
					end if;
				end if;
			end if;
			
			
			-- SENDING
			if(current_state=sending) then
				if(count<delay) then 
					if(count=delay/2) then 
						buffer_uart<=x"3F";
					end if;
					count:=count+1;
				else
					current_state<=wait_make;
					start_sending<='0';
					count:=0;
				end if;
			end if;
		end if;
	end process;
end arch; 