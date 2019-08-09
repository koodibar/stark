defmodule StarkTest do
  use ExUnit.Case
  doctest Stark

  test "greets the world" do
    assert Stark.hello() == :world
  end
end
