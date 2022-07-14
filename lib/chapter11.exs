defmodule SpawnAndTaskModule do
  @moduledoc """
    Functions for process
  """
  @date Date.utc_today()

  def current_date_process do
    pin = spawn(fn -> IO.puts(@date) end)
    pin
    Process.alive?(pin)
    # Task.start provides functions like Task.async and Task.await
    pin2 = Task.start(fn -> IO.puts("Hello, World!") end)
    pin2
  end

  def send_receive_msg do
    send(self(), {:hello, "bootcamp second week"})
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



{:ok, pid} = Agent.start_link(fn -> %{} end)
Agent.update(pid, fn map -> Map.put(map, :hello, :world) end)
Agent.get(pid, fn map -> Map.get(map, :hello) end)


IO.puts("send and receive msg")
SpawnAndTaskModule.current_date_process()
SpawnAndTaskModule.send_receive_msg()

IO.puts("link a process with another process")
LinkedProcessModule.function_spawn_link()
