IO.puts("#{Date.utc_today()}")

defmodule Chapter10 do
  @moduledoc """
    This module contains enum functions
  """
  @framework_list1 ["Angular", "Vue", "React", "Ember", "Dojo"]
  @versions_list [1, 2, 3, 41, 3, -2]

  # Structure of a single-line function
  def path_bootcamp(path_name), do: IO.puts("Bootcamp " <> path_name)

  def show_list_content, do: Enum.each(@framework_list1, fn x -> IO.puts(x) end)

  # Function that squares the numbers in the list
  def enumerables do
    square_operation = fn x -> x * 2 end
    IO.inspect(Enum.map([2, 4, 6, 8], square_operation))
    IO.inspect(Enum.map(2..8, square_operation))
  end

  # Function that validates that all the elements of a list meet a condition
  def all_function do
    validation1 = fn framework -> String.length(framework) > 2 end
    IO.inspect(Enum.all?(@framework_list1, validation1))

    validation2 = fn framework -> String.length(framework) == 2 end
    IO.inspect(Enum.all?(@framework_list1, validation2))
  end

  # Function that validates that all the elements of a list meet a condition
  def any_function do
    verify_value = fn x -> String.contains?(x, "React") end
    IO.inspect(Enum.any?(@framework_list1, verify_value))
  end

  def chunk_every_function do
    IO.inspect(Enum.chunk_every(@framework_list1, 2))
    IO.inspect(Enum.chunk_by(@framework_list1, fn x -> String.length(x) end))
  end

  def min_and_max do
    IO.inspect(Enum.min(@versions_list))
    IO.inspect(Enum.max(@versions_list))
  end
end

defmodule EnumPartTwo do
  @versions_list [1, 2, 3, 41, 3, -2]
  @framework_list1 ["Angular", "Vue", "React", "Ember", "Dojo"]

  # Function that returns even numbers
  def filter_function do
    rem_operation = fn x -> rem(x, 2) == 0 end
    IO.inspect(Enum.filter(@versions_list, rem_operation))
  end

  def reduce_function do
    accumulator_version = fn item_value, acc -> item_value + acc end
    accumulator_framework = fn item_value, acc -> item_value <> acc end

    # without accumulator
    IO.inspect(Enum.reduce(@versions_list, accumulator_version))
    # with accumulator
    IO.inspect(Enum.reduce(@versions_list, 10, accumulator_version))
    IO.inspect(Enum.reduce(@framework_list1, "Ember", accumulator_framework))
  end

  def sort_enum, do: IO.inspect(Enum.sort(@versions_list))
end

# Function calls section
Chapter10.enumerables()
Chapter10.show_list_content()
Chapter10.path_bootcamp("Elixir")
Chapter10.all_function()
Chapter10.any_function()
Chapter10.chunk_every_function()
Chapter10.min_and_max()

EnumPartTwo.filter_function()
EnumPartTwo.reduce_function()
EnumPartTwo.sort_enum()
