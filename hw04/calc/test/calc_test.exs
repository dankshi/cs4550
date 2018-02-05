defmodule CalcTest do
  use ExUnit.Case
  doctest Calc

  test "add1" do
    assert Calc.eval("5 + 5") == 10
  end
  
  test "add2" do
    assert Calc.eval("38 + 25") == 63
  end

  test "add3" do
    assert Calc.eval("0 + 3") == 3
  end

  test "sub1" do
    assert Calc.eval("90 - 5") == 85
  end

  test "sub2" do
    assert Calc.eval("44 - 5") == 39
  end

  test "sub3" do
    assert Calc.eval("690 - 123") == 567
  end

  test "mult1" do
    assert Calc.eval("5 * 5") == 25
  end

  test "mult2" do
    assert Calc.eval("50 * 3") == 150
  end

  test "mult3" do
    assert Calc.eval("2 * 5") == 10
  end

  test "div1" do
    assert Calc.eval("22 / 11") == 2
  end

  test "div2" do
    assert Calc.eval("35 / 5") == 7
  end

  test "div3" do
    assert Calc.eval("50 / 10") == 5
  end
end
