defmodule ModuleOne do

  def actual_date do

    IO.puts(">>> Elixir Bootcamp <<<")

    IO.puts(">>> Module and functions <<<\n#{Date.utc_today()}")
  end

  def verify_value?(0) do
    true
  end

  def verify_value?(x) when is_integer(x) do
    false
  end
end


ModuleOne.actual_date()
IO.puts("\n________________________________________________________________________________")
IO.puts("Module: ModuleOne\nFunctions: actual_date(), verify_value()")
IO.puts("________________________________________________________________________________")

IO.puts("#{ModuleOne.verify_value?(0)}")
IO.puts("#{ModuleOne.verify_value?(1)}")

defmodule ModuleTwo do

  def verify_value?(0), do: true
  def verify_value?(x) when is_integer(x), do: false
  def verify_value?(x) when is_list(x), do: false

end

IO.puts("\n________________________________________________________________________________")
IO.puts("Module: ModuleTwo\nFunction and guards")
IO.puts("________________________________________________________________________________")

IO.puts("#{ModuleTwo.verify_value?(0)}")
IO.puts("#{ModuleTwo.verify_value?(10)}")
IO.puts("#{ModuleTwo.verify_value?([1, 2, 3])}")

defmodule ModuleThree do
  def join(a, b, sep \\ " ") do
    IO.puts("Concatenate text with a special character")
    a <> sep <> b
  end

  def dowork(x \\ "hello") do
    x
  end
end

IO.puts("\n________________________________________________________________________________")
IO.puts("Module: ModuleThree\nFunction: join() and dowork()")
IO.puts("________________________________________________________________________________")
IO.puts("#{Concat.join("Elixir", "path", "_")}")
IO.puts("#{Concat.dowork(132)}")

IO.puts("\n________________________________________________________________________________")
IO.puts("Anonymous functions")
IO.puts("________________________________________________________________________________")

add = &+/2
IO.puts("#{add.(1, 2)}")

fun = &(&1 + 1)
IO.puts("#{fun.(1)}")

fun2 = &"Hello #{&1}"
IO.puts("#{fun2.("morning")}")
