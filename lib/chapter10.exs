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
    Enum.map([2, 4, 6, 8], square_operation)
    Enum.map(2..8, square_operation)
  end

  # Function that validates that all the elements of a list meet a condition
  def all_function do
    validation1 = fn framework -> String.length(framework) > 2 end
    Enum.all?(@framework_list1, validation1)

    validation2 = fn framework -> String.length(framework) == 2 end
    Enum.all?(@framework_list1, validation2)
  end

  # Function that validates that all the elements of a list meet a condition
  def any_function do
    verify_value = fn x -> String.contains?(x, "React") end
    Enum.any?(@framework_list1, verify_value)
  end

  def chunk_every_function do
    Enum.chunk_every(@framework_list1, 2)
    Enum.chunk_by(@framework_list1, fn x -> String.length(x) end))
  end

  def min_and_max do
    Enum.min(@versions_list)
    Enum.max(@versions_list)
  end
end

defmodule EnumSecondPart do
  @versions_list [1, 2, 3, 41, 3, -2]
  @framework_list1 ["Angular", "Vue", "React", "Ember", "Dojo"]

  # Function that returns even numbers
  def filter_function do
    rem_operation = fn x -> rem(x, 2) == 0 end
    Enum.filter(@versions_list, rem_operation)
  end

  def reduce_function do
    accumulator_version = fn item_value, acc -> item_value + acc end
    accumulator_framework = fn item_value, acc -> item_value <> acc end

    # without accumulator
    Enum.reduce(@versions_list, accumulator_version)
    # with accumulator
    Enum.reduce(@versions_list, 10, accumulator_version)
    Enum.reduce(@framework_list1, "Ember", accumulator_framework)
  end

  def desc_sort_enum, do: Enum.sort(@versions_list, :desc)
  def asc_sort_enum, do: Enum.sort(@versions_list, :asc)

  def sort_custom_enum do
    descending_order = fn x, y -> x[:value] > y[:value] end
    Enum.sort([%{:value => 21}, %{:value => 34}], descending_order)
  end

  def unique_value, do: Enum.uniq(@versions_list)

  def eliminate_coordinated do
    map_list = [%{x: 1, y: 1}, %{x: 2, y: 1}, %{x: 3, y: 3}, %{x: 2, y: 3}]
    Enum.uniq_by(map_list, fn coord -> coord.y end)
  end
end

defmodule EnumThirdPart do
  @versions_list [1, 2, 3, 41, 3, -2]

  def sum_function do
    sum3 = fn number -> number+3 end
    Enum.map(@versions_list, sum3)
  end

  def sum_capture_operator do
    sum3 =&(&1 + 3)
    Enum.map(@versions_list, sum3)
  end
end

# Function calls section
Chapter10.enumerables()
Chapter10.show_list_content()
Chapter10.path_bootcamp("Elixir")
Chapter10.all_function()
Chapter10.any_function()
Chapter10.chunk_every_function()
Chapter10.min_and_max()

EnumSecondPart.filter_function()
EnumSecondPart.reduce_function()
EnumSecondPart.desc_sort_enum()
EnumSecondPart.asc_sort_enum()
EnumSecondPart.sort_custom_enum()
EnumSecondPart.unique_value()
EnumSecondPart.eliminate_coordinated()

EnumThirdPart.sum_function()
EnumThirdPart.sum_capture_operator()
