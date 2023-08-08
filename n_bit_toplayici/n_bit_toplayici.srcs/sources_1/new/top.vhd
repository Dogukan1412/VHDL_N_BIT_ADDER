
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity top is
    generic(
        n : integer := 8
    );
    Port ( swtch : in STD_LOGIC_VECTOR (15 downto 0);
           bton_led : in STD_LOGIC;
           led : out STD_LOGIC_VECTOR (8 downto 0));
end top;

architecture Behavioral of top is

component n_bit_toplayici is
generic(
n : integer := 8
);
  Port (
    giris_1 : in STD_LOGIC_VECTOR(N-1 TO 0);
    giris_2 : in STD_LOGIC_VECTOR(N-1 TO 0);
    elde_girisi : in STD_LOGIC;
    toplam : out STD_LOGIC_VECTOR(N-1 TO 0);
    elde : out STD_LOGIC
  );
end component;
        
begin

n_bit_toplayici_i : n_bit_toplayici
generic map(
n => n
)
  Port map(
    giris_1 => swtch(7 downto 0),
    giris_2 => swtch(15 downto 8),
    elde_girisi => bton_led,
    toplam => led(7 downto 0),
    elde => led(8)
  );

end Behavioral;
