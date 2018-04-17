defmodule Life do
  @moduledoc """
  Documentation for Life.
  """

  def next_tick(grid) do
    grid
  end

  def print(grid) do
    grid
    |> format
    |> IO.puts
  end

  def format(grid) do
    grid
    |> Enum.map(&format_cell/1)
    |> Enum.chunk_every(5)
    |> Enum.map(&Enum.join(&1, " "))
    |> Enum.join("\n")
  end

  defp format_cell(true), do: "X"
  defp format_cell(false), do: "_"
end
