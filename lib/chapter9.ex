defmodule Chapter9 do
  def print_multiple_times(msn, n) when n > 0 do
    IO.puts(msn)
    print_multiple_times(msn, n - 1)
  end

  def print_multiple_times(_msn, 0) do
    :ok
  end
end

Chapter9.print_multiple_times("Hello!", 4)
Chapter9.print_multiple_times("Bye!", 0)

defmodule Math do
  def sum_list([head | tail], accumulator) do
    sum_list(tail, head + accumulator)
  end

  def sum_list([], accumulator) do
    accumulator
  end
end

IO.puts("       >>> Reduce algorithm\n       Double all of the values in the list")

defmodule Math do
  def double_each([head | tail]) do
    [head * 2 | double_each(tail)]
  end

  def double_each([]) do
    []
  end
end

IO.puts("       >>> Enum module\n       Enum.reduce()")
IO.puts("         #{Math.double_each([1, 2, 3])}")
IO.puts("         #{Enum.reduce([1, 2, 3], 0, fn(x, acc) -> x + acc end)}")
IO.puts("       Enum.map()")
IO.puts("         #{Enum.map([12, 22, 31], fn(x) -> x * 2 end)}")
