defmodule Math do
  @moduledoc """
    Provides math-related functions.
  """
  @doc """
    Calculates the sum of two numbers.
  """
  def sum(a, b), do: a + b
end

defmodule MyServer do
  @initial_state %{host: "127.0.0.1", port: 3456}
  IO.inspect @initial_state
end

defmodule MyServer do
  @my_data 14
  def first_data, do: @my_data
  @my_data 13
  def second_data, do: @my_data
end


def some_function, do: do_something_with(example())
def another_function, do: do_something_else_with(example())
defp example, do: @example
