defmodule AdrenalineSharedTest do
  use ExUnit.Case
  doctest AdrenalineShared

  test "greets the world" do
    assert AdrenalineShared.hello() == :world
  end
end
