defmodule ErlzTest do
  use ExUnit.Case
  doctest Erlz

  test "greets the world" do
    assert Erlz.hello() == :world
  end
end
