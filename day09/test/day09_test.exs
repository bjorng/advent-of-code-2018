defmodule Day09Test do
  use ExUnit.Case

  test "part one example" do
    assert Day09.part1(9, 25) == 32
    assert Day09.part1(10, 1618) == 8317
    assert Day09.part1(13, 7999) == 146373
    assert Day09.part1(17, 1104) == 2764
    assert Day09.part1(21, 6111) == 54718
    assert Day09.part1(30, 5807) == 37305
    assert Day09.part1(412, 71646*100) == 3562722971
  end

end
