defmodule MehubTest do
  use ExUnit.Case
  doctest Mehub

  test "greets the world" do
    assert Mehub.hello() == :world
  end
end
