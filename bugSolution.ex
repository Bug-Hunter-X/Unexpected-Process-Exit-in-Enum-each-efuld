```elixir
list = [1, 2, 3, 4, 5]

result = Enum.reduce(list, {:ok, []}, fn x, acc ->
  case acc do
    {:ok, list} ->
      if x == 3 do
        {:error, :shutdown}
      else
        IO.puts(x)
        {:ok, [x | list]}
      end
    {:error, reason} ->
      {:error, reason}
  end
end)

case result do
  {:ok, final_list} -> IO.puts("Processed list: #{Enum.reverse(final_list)}")
  {:error, reason} -> IO.puts("Error: #{reason}")
end
```