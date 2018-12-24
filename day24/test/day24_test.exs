defmodule Day24Test do
  use ExUnit.Case
  doctest Day24

  test "part one, examples" do
    assert Day24.part1(example1()) == {:infection, 5216}
  end

  test "part one, real input" do
    assert Day24.part1(input()) == {:infection, 21891}
  end

  test "part two, examples" do
    assert Day24.part1(example1(), 1570) == {:immune_system, 51}
    assert Day24.part1(input(), 22) == {:stalemate, {599, 7047}}
    assert Day24.part1(input(), 82) == {:immune_system, 7058}
  end

  test "part two, real data" do
    # The answer is 7058, obtained with boost 82.
    assert Day24.part2(input()) == {7058, 82}
  end

  defp example1 do
    """
    Immune System:
    17 units each with 5390 hit points (weak to radiation, bludgeoning) with an attack that does 4507 fire damage at initiative 2
    989 units each with 1274 hit points (immune to fire; weak to bludgeoning, slashing) with an attack that does 25 slashing damage at initiative 3

    Infection:
    801 units each with 4706 hit points (weak to radiation) with an attack that does 116 bludgeoning damage at initiative 1
    4485 units each with 2961 hit points (immune to radiation; weak to fire, cold) with an attack that does 12 slashing damage at initiative 4
    """
    |> String.split("\n", trim: true)
  end

  defp input do
    """
    Immune System:
    4445 units each with 10125 hit points (immune to radiation) with an attack that does 20 cold damage at initiative 16
    722 units each with 9484 hit points with an attack that does 130 bludgeoning damage at initiative 6
    1767 units each with 5757 hit points (weak to fire, radiation) with an attack that does 27 radiation damage at initiative 4
    1472 units each with 7155 hit points (weak to slashing, bludgeoning) with an attack that does 42 radiation damage at initiative 20
    2610 units each with 5083 hit points (weak to slashing, fire) with an attack that does 14 fire damage at initiative 17
    442 units each with 1918 hit points with an attack that does 35 fire damage at initiative 8
    2593 units each with 1755 hit points (immune to bludgeoning, radiation, fire) with an attack that does 6 slashing damage at initiative 13
    6111 units each with 1395 hit points (weak to bludgeoning; immune to radiation, fire) with an attack that does 1 slashing damage at initiative 14
    231 units each with 3038 hit points (immune to radiation) with an attack that does 128 cold damage at initiative 15
    3091 units each with 6684 hit points (weak to radiation; immune to slashing) with an attack that does 17 cold damage at initiative 19

    Infection:
    1929 units each with 13168 hit points (weak to bludgeoning) with an attack that does 13 fire damage at initiative 7
    2143 units each with 14262 hit points (immune to radiation) with an attack that does 12 fire damage at initiative 10
    1380 units each with 20450 hit points (weak to slashing, radiation; immune to bludgeoning, fire) with an attack that does 28 cold damage at initiative 12
    4914 units each with 6963 hit points (weak to slashing; immune to fire) with an attack that does 2 cold damage at initiative 11
    1481 units each with 14192 hit points (weak to slashing, fire; immune to radiation) with an attack that does 17 bludgeoning damage at initiative 3
    58 units each with 40282 hit points (weak to cold, slashing) with an attack that does 1346 radiation damage at initiative 9
    2268 units each with 30049 hit points (immune to cold, slashing, radiation) with an attack that does 24 radiation damage at initiative 5
    3562 units each with 22067 hit points with an attack that does 9 fire damage at initiative 18
    4874 units each with 37620 hit points (immune to bludgeoning; weak to cold) with an attack that does 13 bludgeoning damage at initiative 1
    4378 units each with 32200 hit points (weak to cold) with an attack that does 10 bludgeoning damage at initiative 2
    """
    |> String.split("\n", trim: true)
  end
end
