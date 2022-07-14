date = Date.utc_today()
IO.puts(" Associative data structure <<<\n#{date}")

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
IO.puts("[a: b] = [a: 20] =>The value of b is: #{b}")

superheroFn = fn ->
  IO.puts(
    "[{:superhero, 'Batman'}] == [superhero: 'Batman'] => #{[{:superhero, "Batman"}] == [superhero: "Batman"]}"
  )
end

superheroFn.()

IO.puts("Add to IronMan in the list using ++")

superheros = [
  superheroKey: "Capitan America",
  superheroKey: "Deadpool",
  superheroKey: "Hulk",
  superheroKey: "SpiderMan"
]

superherosAddFn = fn -> superheros ++ [superheroKey: "IronMan"] end
superherosAddFn.()

IO.puts("Substract Hulk using --")

superherosSubstractFn = fn -> superheros -- [superheroKey: "Hulk"] end
superherosSubstractFn.()

searchValue = fn ->
  IO.puts("Reading the value of a keyword: #{superheros[:superheroKey]}")
end

searchValue.()

IO.puts(
  "\n============================== >> 3. Maps %{key => value} << ==============================="
)

map1 = %{:user_name => "Yaneth", :profession => "Enginner"}
map2 = %{1 => "Enginner", :user_name => "Yaneth"}

%{:user_name => user_name} = %{:user_name => "Yaneth", :profession => "Enginner"})
user_name

IO.puts("\nget() function")

superheroeMap = fn ->
  Map.get(%{:superheroe => "Green Lantern", :superpower => "Fly"}, :superpower)
end

IO.puts(superheroeMap.())

IO.puts("\nput() function")

superheroeMap2 = fn ->
  Map.put(%{:superheroe => "Green Lantern", :superpower => "Fly"}, :universe, "DC")
end

superheroeMap2.()

IO.puts("\nto_list() function")

superheroeMap3 = fn ->
  Map.to_list(%{:superheroe => "Green Lantern", :superpower => "Fly", :universe => "DC"})
end

superheroeMap3.()

IO.puts("\nUpdate a key's value")
map = %{:superheroe => "Green Lantern", :superpower => "Fly", :universe => "DC"}

superheroeMap4 = fn -> %{map | :superpower => "Ring of power"} end

superheroeMap4.()

IO.puts("\n Accessing the atom keys ")
IO.puts(map.superheroe <> " " <> map.superpower <> " " <> map.universe)

IO.puts(
  "\n============================== >> 4. Nested data structure << ==============================="
)

IO.puts("\n Map contains list %{key: value [] }")

userslist = [
  user1: %{name: "John", age: 27, languages: ["Erlang", "Ruby", "Elixir"]},
  user2: %{name: "Mary", age: 29, languages: ["Elixir", "F#", "Clojure"]}
]

IO.puts("\n Search a value for the key")
IO.puts(userslist[:user1].name)

IO.puts("\n Update a value with the function put_in()")
userListUpdate = put_in(userslist[:user1].age, 31)
IO.puts("   Old value: #{userslist[:user1].age}")
IO.puts("   New value: #{userListUpdate[:user1].age}")

IO.puts("\n Remove a value with the function List.delete()")

# function List.delete() receives the element to be deleted
deleteElement = fn languages -> List.delete(languages, "Ruby") end

# function update_in() receives two params, the key to be modified and the element to be deleted
userListRemove = update_in(userslist[:user1].languages, deleteElement)

