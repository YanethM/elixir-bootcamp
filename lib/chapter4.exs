date = Date.utc_today()
IO.puts(">>> Pattern matching<<<\n#{date}")
IO.puts("=====================================================================\n")

IO.puts("\n=================>> Match operator with tuples <<=====================")

IO.puts(
  "Could show error when:\n>> The tuples have different sizes {a,b,c} = ['value1', value2]\n>> Comparing different types [] = {}"
)

IO.puts("\nExample 1:")
x = 1
1 = x
# 1 = 2 No match
IO.puts("'x' = #{1}\nIf we try to compare ^x = 2 the output should be MatchError")

# Example 1 with tuple
{a, b, c} = {"Javascript", " Python", " Elixir"}

IO.puts(
  "\nExample2: Destructuring a tuple\n The value of a is: #{a}\n The value of b is: #{b}\n The value of c is: #{c}"
)

# Example 2: tuple that starts with an atom
t = Time.utc_now()
{:bootcamp, result} = {:bootcamp, t.hour}
IO.puts("#{:bootcamp} #{result}")

# Example 3 with single list
IO.puts("\n=================>> Match operator with single list <<=====================\n")
[head | tail] = ["Javascript", "Python ", "Elixir"]
IO.puts("Head: #{head}, Tail: #{tail}")

# Example 4 insert comparing a element of the list using pin operator
bootcampPaths = [head | _] = ["Git", " Ruby on rails", " Elixir"]
IO.puts("\nExample3: Using pin operator '^'\n 1. Assignation bootcampPaths = [#{bootcampPaths}]")
IO.puts("\nHead: #{head}")
IO.puts(" 2. Match 1:\n[^x, path1, path2] = [#{bootcampPaths}] => ** (MatchError)")
IO.puts(" 3. Match 1:\n['path1', 'path2', 'path3'] = [#{bootcampPaths}] => ** (MatchError)")
IO.puts(" 4. Match 2:\n[path1, path2, path3] = [#{bootcampPaths}] => Is OK")
