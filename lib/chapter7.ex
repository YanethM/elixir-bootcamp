date = Date.utc_today()

IO.puts("                          >>> Elixir Bootcamp <<<")

IO.puts(
  "                       >>> Associative data structure <<<\n                               #{date}"
)

IO.puts(
  "==========================================================================================\n"
)

IO.puts(
  "============================== >> 1. Split() << ==========================================="
)

keywords = fn -> IO.puts(String.split("1,2,3", ",")) end
keywords2 = fn -> IO.puts(String.split("1, 2, 3", ", ")) end
keywords3 = fn -> IO.puts(String.split("1  2  3", " ", trim: true)) end

keywords.()
keywords2.()
keywords3.()

IO.puts(
  "\n============================== >> 2. Keyword List [] << ==================================="
)

[a: b] = [a: 20]
IO.puts(">>> [a: b] = [a: 20]\n     The value of b is: #{b}")

superheroFn = fn ->
  IO.puts(
    ">>> [{:superhero, 'Batman'}] == [superhero: 'Batman']\n     #{[{:superhero, "Batman"}] == [superhero: "Batman"]}"
  )
end

superheroFn.()

IO.puts(">>> Add to IronMan in the list using ++")

superheros = [
  superheroKey: "Capitan America",
  superheroKey: "Deadpool",
  superheroKey: "Hulk",
  superheroKey: "SpiderMan"
]

superherosAddFn = fn -> IO.inspect(superheros ++ [superheroKey: "IronMan"]) end
superherosAddFn.()

IO.puts(">>> Substract Hulk using --")

superherosSubstractFn = fn -> IO.inspect(superheros -- [superheroKey: "Hulk"]) end
superherosSubstractFn.()

searchValue = fn ->
  IO.puts(">>> Reading the value of a keyword: #{superheros[:superheroKey]}")
end

searchValue.()

IO.puts(
  "\n============================== >> 3. Maps %{key => value} << ==============================="
)

map1 = %{:user_name => "Yaneth", :profession => "Enginner"}
map2 = %{1 => "Enginner", :user_name => "Yaneth"}
IO.inspect(map1)
IO.inspect(map2)

IO.inspect(%{:user_name => user_name} = %{:user_name => "Yaneth", :profession => "Enginner"})
IO.inspect(user_name)

IO.puts("\n>>> get() function")

superheroeMap = fn ->
  Map.get(%{:superheroe => "Green Lantern", :superpower => "Fly"}, :superpower)
end

IO.puts(superheroeMap.())

IO.puts("\n>>> put() function")

superheroeMap2 = fn ->
  Map.put(%{:superheroe => "Green Lantern", :superpower => "Fly"}, :universe, "DC")
end

IO.inspect(superheroeMap2.())

IO.puts("\n>>> to_list() function")

superheroeMap3 = fn ->
  Map.to_list(%{:superheroe => "Green Lantern", :superpower => "Fly", :universe => "DC"})
end

IO.inspect(superheroeMap3.())

IO.puts("\n>>>Update a key's value")
map = %{:superheroe => "Green Lantern", :superpower => "Fly", :universe => "DC"}

superheroeMap4 = fn -> %{map | :superpower => "Ring of power"} end

IO.inspect(superheroeMap4.())

IO.puts("\n>>> Accessing the atom keys ")
IO.puts(map.superheroe <> " " <> map.superpower <> " " <> map.universe)

IO.puts(
  "\n============================== >> 4. Nested data structure << ==============================="
)

IO.puts("\n>>> Map contains list %{key: value [] }")

userslist = [
  user1: %{name: "John", age: 27, languages: ["Erlang", "Ruby", "Elixir"]},
  user2: %{name: "Mary", age: 29, languages: ["Elixir", "F#", "Clojure"]}
]

IO.puts("\n>>> Search a value for the key")
IO.puts(userslist[:user1].name)

IO.puts("\n>>> Update a value with the function put_in()")
userListUpdate = put_in(userslist[:user1].age, 31)
IO.puts("   Old value: #{userslist[:user1].age}")
IO.puts("   New value: #{userListUpdate[:user1].age}")

IO.puts("\n>>> Remove a value with the function List.delete()")
userListRemove =
  update_in(userslist[:user1].languages, fn languages -> List.delete(languages, "Ruby") end)
  IO.inspect(userListRemove)
