date = Date.utc_today()
IO.puts("=====================================================================")
IO.puts(">>> Elixir Bootcamp <<<")

IO.puts(">>> Control Flow Structure<<<\n#{date}")

IO.puts("=====================================================================\n")

IO.puts("1. CASE EXAMPLES")


# Variables declaration
x = 2
cherry_pie = true


# Example 1: Number, text
case {18, "Hello"} do
  {3, "World"} -> IO.puts("{3, World} match with {18, Hello}")
  {18, "Hello"} -> IO.puts("{18, Hello} match with {18, Hello}")
end

# Example 2: Tree numbers
case {1, 2, 3} do
  {4, 5, 6} -> IO.puts("{4, 5, 6} no match with {1, 2, 3}")
  _ -> IO.puts("_ match any value")
end

case {1, 2, 3} do
  {4, 5, 6} -> IO.puts("{4, 5, 6} no match with {1, 2, 3}")
  {1, ^x, 3} -> IO.puts("{1, ^x, 3} match with {1, 2, 3}")
  _ -> IO.puts("_ match any value")
end

# Example 3: Atom, text
case {:ok, "Hello World"} do
  {:error} -> IO.puts("{:error} no match with {:ok, Hello World}")
  _ -> IO.puts("_ catch all")
end

case {:ok, "Hello World"} do
  {:ok, result} -> IO.puts(result)
  {:error} -> IO.puts("{:error} no match with {:ok, Hello World}")
  _ -> IO.puts("_ catch all")
end

# Example 4: case with conditionals
case {1, 2, 3} do
  {1, ^x, 3} when x > 0 -> IO.puts("{1, ^x, 3} match with {1, 2, 3}")
  _ -> IO.puts("_ match any value")
end

case true do

  ^cherry_pie -> IO.puts("^cherry_pie match with cherry_pie")
  true -> IO.puts("true match with cherry_pie")


# Examples using cond
IO.puts("\n2. COND EXAMPLES")

cond do
  2 + 2 == 10 ->
    IO.puts("Not is true")

  2 + 2 != 10 ->
    IO.puts("This is true")
end

cond do
  2 + 2 == 10 ->
    IO.puts("Not is true")

  2 + 2 != 4 ->
    IO.puts("This is true")

  true ->
    IO.puts("None of the conditions is true")
end

# Examples using if and unless
IO.puts("\n3. IF AND UNLESS EXAMPLES")
if true do
  IO.puts("This works!")
end

if true do
  IO.puts("This works!")
else
  IO.puts("This will never be seen")
end

IO.puts("1. VARIABLE SCOPING IN IF AND UNLESS STRUCTURE")

IO.puts(x)

if true do
  x + 1
end

IO.puts(x)
