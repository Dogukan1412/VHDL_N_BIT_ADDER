library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity n_bit_toplayici is
generic(
n : integer := 4
);
  Port (
    giris_1 : in STD_LOGIC_VECTOR(N-1 TO 0);
    giris_2 : in STD_LOGIC_VECTOR(N-1 TO 0);
    elde_girisi : in STD_LOGIC;
    toplam : out STD_LOGIC_VECTOR(N-1 TO 0);
    elde : out STD_LOGIC
  );
end n_bit_toplayici;

architecture toplayici of n_bit_toplayici is

component tam_toplayici is
    Port ( giris_1 : in STD_LOGIC;
           giris_2 : in STD_LOGIC;
           elde_girisi : in STD_LOGIC;
           toplam : out STD_LOGIC;
           elde : out STD_LOGIC);
end component;

signal elde_tutucu : std_logic_vector(n downto 0);

begin

elde_tutucu(0) <= elde_girisi;
elde <= elde_tutucu(n);

tam_toplayici_gen : for i in 0 to n-1 generate
tam_toplayici_i: tam_toplayici
port map(
giris_1 => giris_1(i),
giris_2 => giris_2(i),
elde_girisi => elde_tutucu(i),
toplam => toplam(i),
elde => elde_tutucu(i+1)
);
end generate;

end toplayici;
