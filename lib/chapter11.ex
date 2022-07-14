defmodule SpawnAndTaskModule do
  @moduledoc """
    Functions for process
  """
  @date Date.utc_today()

  def current_date_process do
    pin = spawn(fn -> IO.puts(@date) end)
    IO.inspect(pin)
    IO.inspect(Process.alive?(pin))
    # Task.start provides functions like Task.async and Task.await
    pin2 = Task.start(fn -> IO.puts("Hello, World!") end)
    IO.inspect(pin2)
  end

  def send_receive_msg do
    IO.inspect(send(self(), {:hello, "bootcamp second week"}))
    # doesn't works: flush()

    receive do
      {:hello, _msg} -> IO.puts("won't match type")
      {:hello, msg} -> IO.puts(msg)
    end

    receive do
      {:hello, msg} -> IO.puts(msg)
      {:hello, _msg} -> IO.puts("won't match type")
    after
      3_000 -> "After 3s..."
    end
  end
end

defmodule ErrorModule do
  defexception message: "testing error in process with spawn_link"
end

defmodule LinkedProcessModule do
  self()
  def function_spawn_link, do: spawn_link(fn -> raise ErrorModule end)
end

# This module doesn't works
defmodule StateModule do
  def start_link do

    Task.start_link(fn -> loop(%{}) end)
  end

  defp loop(receive_map) do
    receive do
      {:get, key, caller} ->
        send(caller, Map.get(receive_map, key))
        loop(receive_map)

      {:put, key, value} ->
        loop(Map.put(receive_map, key, value))
    end
  end
end

IO.puts("send and receive msg")
SpawnAndTaskModule.current_date_process()
SpawnAndTaskModule.send_receive_msg()

IO.puts("link a process with another process")
LinkedProcessModule.function_spawn_link()

{:ok, pid} = StateModule.start_link()
send(pid, {:get, :hello, self()})
send(pid, {:put, :hello, :world})
{:ok, pid} = Agent.start_link(fn -> %{} end)
Agent.update(pid, fn map -> Map.put(map, :hello, :world) end)
Agent.get(pid, fn map -> Map.get(map, :hello) end)
