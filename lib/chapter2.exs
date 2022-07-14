# Data type: Date
date = ~D[2022-07-08]
IO.puts(">>> Elixir Bootcamp <<<\n#{date}")
IO.puts("====================================================\n")

# Data type: String
message = "Hi " <> "Juan"
number_practice = String.upcase("first")
message2 = "#{message},\nThis is the #{number_practice} practice in Elixir"
IO.puts("#{message2}\n\n==========================================\n")

# Data type: Booleans
IO.puts(">> False is boolean? #{is_boolean(false)}")
IO.puts(">> 31 is integer? #{is_integer(31)}")
IO.puts(">> 167 is float? #{is_float(167)}")
IO.puts(">> 0x1F is number? #{is_number(0x1F)}")

IO.puts("\n==========================================\n")

# Atoms
IO.puts("Is true == :true? #{true == true}")
IO.puts("Is :bootcamp == :bootcamp? #{:bootcamp == :bootcamp}")
IO.puts("Is :bootcamp == :true? #{:bootcamp == true}")
IO.puts("\n==========================================\n")
