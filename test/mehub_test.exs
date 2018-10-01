defmodule MehubTest do
  use ExUnit.Case
  doctest Mehub

  test "mehub test" do
    assert :ok = Mehub.main(["-h"])
  end
end
