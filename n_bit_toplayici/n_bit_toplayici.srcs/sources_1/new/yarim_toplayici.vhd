
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity yarim_toplayici is
    Port ( giris_1 : in STD_LOGIC;
           giris_2 : in STD_LOGIC;
           toplam : out STD_LOGIC;
           elde : out STD_LOGIC);
end yarim_toplayici;

architecture Behavioral of yarim_toplayici is

begin
    toplam <= giris_1 xor giris_2;
    elde <= giris_1 and giris_2;

end Behavioral;
