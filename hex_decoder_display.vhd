library ieee ;
    use ieee.std_logic_1164.all ;
    use ieee.numeric_std.all ;

entity hex_decoder_display is
    port(code:in std_logic_vector(3 downto 0);
         display:out std_logic_vector(6 downto 0));
end hex_decoder_display; 

architecture arch of hex_decoder_display is
begin  
    with code select
        display<=  "0000001" when x"0", -- 0
                    "1001111" when x"1", -- 1
                    "0010010" when x"2", -- 2
                    "0000110" when x"3", -- 3
                    "1001100" when x"4", -- 4
                    "0100100" when x"5", -- 5
                    "0100000" when x"6", -- 6
                    "0001111" when x"7", -- 7
                    "0000000" when x"8", -- 8
                    "0001100" when x"9", -- 9
                    "0001000" when x"A", -- a
                    "1100000" when x"B", -- b
                    "0110001" when x"C", -- c
                    "1000010" when x"D", -- d
                    "0110000" when x"E", -- e
						  "0111000" when x"F"; -- f
end architecture ;