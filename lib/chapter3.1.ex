# Data type: Date
date = ~D[2022-07-08]
IO.puts(">>> Elixir Bootcamp <<<\n#{date}")
IO.puts("====================================================\n")
# Anonymous functions
num1 = 10
num2 = 13.6
IO.puts("===================Anonymous functions==================\n")

# Function 1: Add function
add_function = fn num1, num2 -> IO.puts("The result of the sum is >>> #{num1 + num2}") end
add_function.(num1, num2)

# Function 2: Division function
div_function = fn num3, num4 ->
  IO.puts("The result of dividing #{num3} and #{num4} is >>> #{div(num3, num4)}")
end

div_function.(6, 4)

# Function 2: Division remainder function
rem_function = fn num3, num4 ->
  IO.puts("The result of the remainder division is >>> #{rem(num3, num4)}")
end

rem_function.(6, 4)

rounded_function = fn -> IO.puts("The whole number of rounding #{num1} is >>> #{round(num1)}") end
rounded_function.()

trunc_function = fn -> IO.puts("The whole number of rounding #{num1} is >>> #{trunc(num1)}") end
trunc_function.()

IO.puts("\n=======================LinkedList===================\n")

programming_language_list1 = ["Javascript", " Python", " Elixir"]
programming_language_list2 = [" Scala", " Lisp", " Clojure", " Scheme"]
remove_language = [" Lisp", " Clojure"]
linked_list_push = fn -> programming_language_list1 ++ programming_language_list2 end
linked_list_remove = fn -> linked_list_push.() -- remove_language end
IO.puts(linked_list_push.())
IO.puts(linked_list_remove.())
IO.puts("First element >>> #{hd(linked_list_push.())} <<<")
IO.puts("Elements in the actual lista >>> #{tl(linked_list_push.())} <<<")
IO.puts("Elements list >>> [104, 101, 108, 108, 111] ASCII>>> #{[104, 101, 108, 108, 111]}")

IO.puts("\n========================Tuples======================\n")
programming_language_tuple = {"Javascript", " Python", " Elixir"}
IO.puts("Number of elements of the tuple: #{tuple_size(programming_language_tuple)}")

# ========================Read file contents===========================
# The next line doesn't works with IO.puts()
IO.puts("\n=================Read file contents=================\n")

IO.inspect(put_elem(programming_language_tuple, 1, "Ruby on Rails"))
file_content = File.read("./public/file.txt")
IO.inspect(file_content)
