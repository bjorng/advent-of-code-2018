defmodule Day19Test do
  use ExUnit.Case
  doctest Machine

  test "part one, example" do
    assert Day19.part1(example1()) == {6, 5, 6, 0, 0, 9}
  end

  test "part one, real data" do
    assert Day19.part1(input()) == {1302, 1026, 1026, 1025, 1, 256}
  end

  test "part two real data" do
    assert Day19.part2(input()) == {13083798, 10551426, 10551426, 10551425, 1, 256}
  end

  defp example1() do
    """
    #ip 0
    seti 5 0 1
    seti 6 0 2
    addi 0 1 0
    addr 1 2 3
    setr 1 0 0
    seti 8 0 4
    seti 9 0 5
    """
    |> String.trim
    |> String.split("\n")
  end

  defp input do
    """
    #ip 5
    addi 5 16 5
    seti 1 3 1
    seti 1 1 2
    mulr 1 2 4
    eqrr 4 3 4
    addr 4 5 5
    addi 5 1 5
    addr 1 0 0
    addi 2 1 2
    gtrr 2 3 4
    addr 5 4 5
    seti 2 4 5
    addi 1 1 1
    gtrr 1 3 4
    addr 4 5 5
    seti 1 5 5
    mulr 5 5 5
    addi 3 2 3
    mulr 3 3 3
    mulr 5 3 3
    muli 3 11 3
    addi 4 8 4
    mulr 4 5 4
    addi 4 13 4
    addr 3 4 3
    addr 5 0 5
    seti 0 8 5
    setr 5 3 4
    mulr 4 5 4
    addr 5 4 4
    mulr 5 4 4
    muli 4 14 4
    mulr 4 5 4
    addr 3 4 3
    seti 0 8 0
    seti 0 4 5
    """
    |> String.trim
    |> String.split("\n")
  end
end
