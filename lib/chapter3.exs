# Data type: Date
date = ~D[2022-07-08]
IO.puts(">>> Elixir Bootcamp <<<\n#{date}")
IO.puts("====================================================\n")
# ================ AND, OR Operators ===================
operator1 = fn -> IO.puts(true and true) end
operator2 = fn -> IO.puts(true or is_number("hello")) end
operator3 = fn -> IO.puts(true and is_atom(:bootcamp)) end

# ================ &&, || y ! Operators ===================
operator4 = fn -> IO.puts(1 || true) end
operator5 = fn -> IO.puts(false || 2022) end
operator6 = fn -> IO.puts(nil || 2022) end
operator7 = fn -> IO.puts(nil && 2022) end
operator8 = fn -> IO.puts(!false) end
operator9 = fn -> IO.puts(!nil) end

# ================ == === !== !=== Operators ===================
operator10 = fn -> IO.puts(10 == 10.0) end
operator11 = fn -> IO.puts(10 != 10.0) end
operator12 = fn -> IO.puts(10 === 10.0) end

IO.puts("================ AND, OR Operators ===================\n")
operator1.()
operator2.()
operator3.()
IO.puts("\n================ &&, || y ! Operators ===================\n")
operator4.()
operator5.()
operator6.()
operator7.()
operator8.()
operator9.()
IO.puts("\n================ == === !== !=== Operators ===================\n")
operator10.()
operator11.()
operator12.()
