defmodule ListFilter do
  def call(list), do: odd_numbers(list)

  defp odd_numbers(list) do
    list
    |> Enum.count(fn value -> 
        is_number(value) && is_odd(value)  
       end)
  end

  defp is_odd(num), do: rem(num, 2) != 0 
end
