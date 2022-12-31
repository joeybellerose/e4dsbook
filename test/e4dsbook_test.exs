defmodule E4dsbookTest do
  use ExUnit.Case
  doctest E4dsbook

  test "greets the world" do
    assert E4dsbook.hello() == :world
  end
end
