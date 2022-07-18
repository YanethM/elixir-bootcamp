IO.inspect
Enum.map(fn x -> x * 2 end)
IO.inspect
Enum.sum
IO.inspect

defmodule Example do
  def double_sum(x, y) do
    hard_work(x, y)
  end

  defp hard_work(x, y) do
    x = 2 * x
    y = 2 * y

    x + y
  end
end
