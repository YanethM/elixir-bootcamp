defprotocol Utility do
  @spec type(t) :: String.t()
  def type(value)
end

Enum.map([1, 2, 3], fn x -> x * 2 end)
Enum.reduce(1..3, 0, fn x, acc -> x + acc end)
defimpl Utility, for: BitString do
  def type(_value), do: "string"
end

defimpl Utility, for: Integer do
  def type(_value), do: "integer"
end


defprotocol Size do
  @doc "Calculates the size (and not the length!) of a data structure"
  def size(data)
end

defimpl Size, for: BitString do
  def size(string), do: byte_size(string)
end

defimpl Size, for: Map do
  def size(map), do: map_size(map)
end

defimpl Size, for: Tuple do
  def size(tuple), do: tuple_size(tuple)
end
