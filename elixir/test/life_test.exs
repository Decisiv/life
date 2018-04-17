defmodule LifeTest do
  use ExUnit.Case
  doctest Life

  import Life

  describe "&Life.next_tick/1" do

    test "block" do
      {x, o} = {true, false}

      grid = [
        o, o, o, o, o,
        o, x, x, o, o,
        o, x, x, o, o,
        o, o, o, o, o,
        o, o, o, o, o,
      ]

      assert_next_tick(grid, grid)
    end

    test "blinker" do
      {x, o} = {true, false}

      grid1 = [
        o, o, o, o, o,
        o, o, x, o, o,
        o, o, x, o, o,
        o, o, x, o, o,
        o, o, o, o, o,
      ]

      grid2 = [
        o, o, o, o, o,
        o, o, o, o, o,
        o, x, x, x, o,
        o, o, o, o, o,
        o, o, o, o, o,
      ]

      assert_next_tick(grid1, grid2)
      assert_next_tick(grid2, grid1)
    end

    test "beacon" do
      {x, o} = {true, false}

      grid1 = [
        o, o, o, o, o,
        o, x, x, o, o,
        o, x, x, o, o,
        o, o, o, x, x,
        o, o, o, x, x,
      ]

      grid2 = [
        o, o, o, o, o,
        o, x, x, o, o,
        o, x, o, o, o,
        o, o, o, o, x,
        o, o, o, x, x,
      ]

      assert_next_tick(grid1, grid2)
      assert_next_tick(grid2, grid1)
    end
  end

  def assert_next_tick(grid, expected_grid) do
    new_grid = next_tick(grid)
    if (new_grid != expected_grid) do
      raise ExUnit.AssertionError,
        expr: unquote("next_tick(grid)"),
        message: """
        Origial Grid:
        #{format grid}

        Expected Next Tick To Be:
        #{format(expected_grid)}

        Got:
        #{format(new_grid)}
        """
    end
  end
end
