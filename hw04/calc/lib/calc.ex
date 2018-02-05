defmodule Calc do
  @moduledoc """
  Documentation for Calc.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Calc.hello
      :world

  """
  def eval(input) do
    input_list = String.split(input)
    first_number = String.to_integer(List.first(input_list))
    last_number = String.to_integer(List.last(input_list))
    cond do
      Enum.member?(input_list, "+") -> add(first_number, last_number)
      Enum.member?(input_list, "-") -> sub(first_number, last_number)
      Enum.member?(input_list, "*") -> mult(first_number, last_number)
      Enum.member?(input_list, "/") -> divi(first_number, last_number)
    end
  end

  def add(first, last) do
    first + last
  end

  def sub(first, last) do
    first - last
  end

  def mult(first, last) do
    first * last
  end

  def divi(first, last) do
    first / last
  end

  def main() do
    input = IO.gets "Please enter an arithmetic formula (e.g. 5 + 6): "
    answer = Calc.eval(input)
    IO.puts answer
    main()
  end

end
