defmodule RecursionPractice do
  # Calculates the length of a list
  def list_len([]) do: 0

  defp list_len(current_length, [_|tail]) do
    1 + list_len(tail)
  end


  # Returns a list of numbers in a given range
  def range(from, to) when from > to do
    []
  end

  def range(from, to) do
    [from | range(from + 1, to)]
  end


  # Return only possitive values from a given list
  def positive([]), do: []

  def positive([head | tail]) when head > 0 do
    [head | positive(tail)]
  end

  def positive([_ | tail]) do
    positive(tail)
  end
end
