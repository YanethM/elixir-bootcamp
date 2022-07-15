# iex> raise MyError
# iex> raise MyError, message: "custom message"

defmodule MyError do
  defexception message: "default message"
end

File.read("Chapter12")
File.write("Chapter12", "hello world")
File.read("Chapter12")

case File.read("Chapter12") do
  {:ok, body} -> IO.puts("Success: #{body}")
  {:error, reason} -> IO.puts("Error: #{reason}")
end

try do
  Enum.each(-50..50, fn x ->
    if rem(x, 13) == 0, do: throw(x)
  end)

  "Got nothing"
catch
  x -> "Got #{x}"
end

Enum.find(-50..50, &(rem(&1, 13) == 0))
{:ok, file} = File.open("Chapter12", [:utf8, :write])

try do
  IO.write(file, "olá")
  raise "oops, something went wrong"
after
  File.close(file)
end
