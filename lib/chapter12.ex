IO.puts("Chapter 12: IO and the file system")
IO.puts(:stderr, "err")
IO.gets("Do you want continue to file system section yes or no? ")
{:ok, file} = File.open("Chapter12", [:write])
IO.binwrite(file, "Writing in the txt")
IO.write(file, "is anybody out there")
{:error, :terminated}
IO.inspect(File.read!("Chapter12"))
File.close(file)
