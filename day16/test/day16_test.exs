defmodule Day16Test do
  use ExUnit.Case
  doctest Machine

  test "part one example" do
    assert Day16.part1(example_part1()) == 1
  end

  test "part one real data" do
    assert Day16.part1(input_part1()) == 677
  end

  test "part two real data" do
    assert Day16.part2(input_part1(), input_part2()) == 540
  end

  defp example_part1() do
  """
  Before: [3, 2, 1, 1]
  9 2 1 2
  After:  [3, 2, 2, 1]
  """
  |> String.trim
  |> String.split("\n")
  end

  defp input_part1 do
    'input1.txt'
    |> File.read!
    |> String.trim
    |> String.split("\n", trim: true)
  end

  defp input_part2 do
    'input2.txt'
    |> File.read!
    |> String.trim
    |> String.split("\n", trim: true)
  end

end
