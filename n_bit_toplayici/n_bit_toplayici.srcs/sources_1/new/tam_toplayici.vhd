library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tam_toplayici is
    Port ( giris_1 : in STD_LOGIC;
           giris_2 : in STD_LOGIC;
           elde_girisi : in STD_LOGIC;
           toplam : out STD_LOGIC;
           elde : out STD_LOGIC);
end tam_toplayici;

architecture Behavioral of tam_toplayici is

component yarim_toplayici is
    Port ( giris_1 : in STD_LOGIC;
           giris_2 : in STD_LOGIC;
           toplam : out STD_LOGIC;
           elde : out STD_LOGIC);
end component;

signal ilk_toplam : std_logic;
signal ilk_elde : std_logic;
signal ikinci_elde : std_logic;

begin

ilk_yarim_toplayici: yarim_toplayici
port map(
giris_1 => giris_1,
giris_2 => giris_2,
toplam => ilk_toplam,
elde => ilk_elde
);

ikinci_yarim_toplayici: yarim_toplayici
port map(
giris_1 => ilk_toplam,
giris_2 => elde_girisi,
toplam => toplam,
elde => ikinci_elde
);

elde <= ilk_elde or ikinci_elde;

end Behavioral;
