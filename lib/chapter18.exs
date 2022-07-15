#iex> "foo" =~ regex
#iex> "bar" =~ regex

regex = ~r/foo|bar/
"HELLO" =~ ~r/hello/

#La i permite no distinguir entre mayusculas y minuscula
"HELLO" =~ ~r/hello/i

# ~s identificar comillas dobles
~s(this is a string with "double" quotes, not 'single' ones)

# ~c comillas simples
~s(this is a string with "double" quotes, not 'single' ones)

# ~w parlabras separadas por espacios en blanco
~w(foo bar bat)

# sigilo ~w modificadores (c -> caracteres, s -> cadenas, a-> átomas)
~w(foo bar bat)a

#~s ~S para interpolación de caracteres
~s(String with escape codes \x26 #{"inter" <> "polation"})
# Output: ~S(String without escape codes \x26 without #{interpolation})
~S(String without escape codes \x26 without #{interpolation})
# Output: "String without escape codes \\x26 without \#{interpolation}"

# Tres comillas dobles o simples
~s"""
"""

#iex> d.day
#iex> d.month
#iex> d.year
d = ~D[2022-07-15]

#iex> minute
#iex> time_zone

dt = ~U[2022-07-15 10:00:03Z]
%DateTime{minute: minute, time_zone: time_zone} = dt


#Sigilo que devuelve un num entero
#iex> import MySigils
#iex> ~i(13)
#iex> ~i(42)n

defmodule MySigils do
  def sigil_i(string, []), do: String.to_integer(string)
  def sigil_i(string, [?n]), do: -String.to_integer(string)
end
