defmodule User do
<<<<<<< HEAD
  @doc """
  commands:
  iex> %User{}
  iex> %User{name: "Yaneth"}
  iex> yaneth.age
  iex> jhon = %{yaneth | name: "Jhon"}
  iex> is_map(yaneth)
  iex> yaneth.__struct__
  iex> yaneth = %User{}
  iex> yaneth = Map.put(%User{}, :name, "Yaneth")
  iex> yaneth = Map.merge(yaneth,%User{name: Jhon})
  iex> Map.keys(yaneth)
  """
  defstruct name: "Yaneth", age: 31
end

defmodule UserNil do
  @doc """
  commands:
  iex> %UserNil{}
  """
  defstruct [:email, name: "Yaneth", age: 31]
end

defmodule Car do
  @doc """
  iex> Car.__struct__
  """
  @enforce_keys [:make]
  defstruct [:model, make: "Mazda"]
=======
  defstruct name: "John", age: 27
>>>>>>> 6ff3eac (Delete file chapter13.exs)
end
