library ieee ;
    use ieee.std_logic_1164.all ;
    use ieee.numeric_std.all ;

entity ps2_decoder is
    port (key_code: in std_logic_vector(7 downto 0); 
          ascii_code: out std_logic_vector(7 downto 0));
end ps2_decoder ; 

architecture arch of ps2_decoder is
begin
    with key_code select
        ascii_code<= x"61" when x"1C" , -- a
                     x"62" when x"32" , -- b
                     x"63" when x"21" , -- c
                     x"64" when x"23" , -- d
                     x"65" when x"24" , -- e 
                     x"66" when x"2B" , -- f
                     x"67" when x"34" , -- g
                     x"68" when x"33" , -- h
                     x"69" when x"43" , -- i
                     x"6A" when x"3B" , -- j
                     x"6B" when x"42" , -- k 
                     x"6C" when x"4B" , -- l
                     x"6D" when x"3A" , -- m
                     x"6E" when x"31" , -- n
                     x"6F" when x"44" , -- o
                     x"70" when x"4D" , -- p
                     x"71" when x"15" , -- q
                     x"72" when x"2D" , -- r
                     x"73" when x"1B" , -- s
                     x"74" when x"2C" , -- t
                     x"75" when x"3C" , -- u
                     x"76" when x"2A" , -- v
                     x"77" when x"1D" , -- w
                     x"78" when x"22" , -- x
                     x"79" when x"35" , -- y
                     x"7A" when x"1A" , -- z
                     x"30" when x"45" , -- 0
                     x"31" when x"16" , -- 1
                     x"32" when x"1E" , -- 2
                     x"33" when x"26" , -- 3
                     x"34" when x"25" , -- 4
                     x"35" when x"2E" , -- 5
                     x"36" when x"36" , -- 6
                     x"37" when x"3D" , -- 7
                     x"38" when x"3E" , -- 8
                     x"39" when x"46" , -- 9
                     x"20" when x"29", -- space
                     x"F0" when x"F0", -- Break
                     x"3F" when others; -- ?
end architecture ;