date = Date.utc_today()

IO.puts(
  "========================================================================================="
)

IO.puts(">>> Elixir Bootcamp <<<")

IO.puts(">>> Unicode and Code Points<<<\n     #{date}")

IO.puts(
  "=========================================================================================\n"
)

string = "Elixir path"
user_name = "Yaneth MejΓ­a"

IO.puts(
  "\n================= String.length(), byte_size() ========================="
)

IO.puts(?Y)
IO.puts("#{string} has #{String.length(string)} characters and uses #{byte_size(string)} bytes")

IO.puts(
  "#{user_name} has #{String.length(user_name)} characters and uses #{byte_size(user_name)} bytes"
)


IO.puts(
  "\n========================= Graphemes using emojis ========================================"
)

String.codepoints("π©βπ")
IO.puts("Graphemes of the firefighter emoji#{String.graphemes("π©βπ")}")

IO.puts(
  "\n========================== to_string(), to_charlist() ==================================="
)

<<head, rest::binary>> = user_name
IO.puts("Head of the word: #{head} rest of the word: #{rest}")
IO.puts("user_name to_charlist => #{to_charlist(user_name)}")
IO.puts(":ok to_string => #{to_string(:ok)}")

IO.puts(
  "\n========================= Concatenation ================================================"
)

IO.puts(
  "String binary concatenation\n>> This is not OK =>'character1 ' <> 'character2'\n>> This is OK =>'character1 ' ++ 'character2'\n>> This is OK => string1 <> string2"
)
