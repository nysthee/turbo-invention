defmodule TailRecursionPractice do
  # Calculates the length of a list
  def list_len(list) do
    do_list_len(0, list)
  end

  defp do_list_len(current_length, []) do
    current_length
  end

  defp do_list_len(current_length, [_|tail]) do
    new_length = current_length + 1
    do_list_len(new_length, tail)
  end

  # Returns a list of numbers in a given range
  def range(from, to) do
    do_range([to], to-from)
  end

  defp do_range(result, 0) do
    result
  end

  defp do_range(result, remaining_steps) do
    remaining_steps = remaining_steps - 1
    new_value = List.first(result) - 1
    result = [new_value | result]
    do_range(result, remaining_steps)
  end

  # Return only possitive values from a given list
  def positive(list) do
    do_positive([], list)
  end

  defp do_positive(current_list, []) do
    current_list
  end

  defp do_positive(current_list, [head | tail]) do
    current_list =
      case head > 0 do
        true -> [head | current_list]
        false -> current_list
      end
    do_positive(current_list , tail)
  end
end
