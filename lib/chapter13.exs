defmodule Math do
  def some_function do
    import List, only: [duplicate: 2]
    duplicate(:ok, 10)
  end
end
ExUnit.start()
defmodule AssertionTest do
  use ExUnit.Case, async: true
  test "always pass" do
    assert true
  end
end
