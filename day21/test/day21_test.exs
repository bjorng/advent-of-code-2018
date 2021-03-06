defmodule Day21Test do
  use ExUnit.Case
  doctest Machine

  test "part one: decompile" do
    assert Day21.decompile_program(input()) == :ok
  end

  test "part one: run" do
    assert Day21.part1(input(), 12446070) == 12446070
  end

  test "part two" do
    assert Day21.part2(input()) == 13928239
  end

  defp input do
    """
    #ip 4
    seti 123 0 5
    bani 5 456 5
    eqri 5 72 5
    addr 5 4 4
    seti 0 0 4
    seti 0 6 5
    bori 5 65536 1
    seti 4591209 6 5
    bani 1 255 3
    addr 5 3 5
    bani 5 16777215 5
    muli 5 65899 5
    bani 5 16777215 5
    gtir 256 1 3
    addr 3 4 4
    addi 4 1 4
    seti 27 7 4
    seti 0 0 3
    addi 3 1 2
    muli 2 256 2
    gtrr 2 1 2
    addr 2 4 4
    addi 4 1 4
    seti 25 4 4
    addi 3 1 3
    seti 17 0 4
    setr 3 4 1
    seti 7 2 4
    eqrr 5 0 3
    addr 3 4 4
    seti 5 1 4
    """
    |> String.trim
    |> String.split("\n")
  end
end
