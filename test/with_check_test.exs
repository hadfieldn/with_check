defmodule WithCheckTest do
  use ExUnit.Case

  test "with` without an else returns the unmatched value" do
    value = "foo"

    result =
      with "bar" <- value do
        :ok
      end

    assert result == value
  end

  test "`with` with an else raises an error for unmatched values" do
    assert_raise WithClauseError, "no with clause matching: \"foo\"", fn ->
      value = "foo"

      with "bar" <- value do
        :ok
      else
        "baz" -> :error
      end

      IO.puts("We never get here.")
    end
  end
end
