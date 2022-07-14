defmodule Math do
  def some_function do
    import List, only: [duplicate: 2]
    duplicate(:ok, 10)
  end
end


defmodule AssertionTest do
  use ExUnit.Case, async: true
  test "always pass" do
    assert true
  end
end

defmodule Example do
  use Feature, option: :value
end

defmodule Example do
  require Feature
  Feature.__using__(option: :value)
end
IO.in
