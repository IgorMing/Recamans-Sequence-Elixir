defmodule Recaman do
	defp calculate(map, i, n) when i >= n do
		map
	end
	
	defp calculate(map, i, n) do
		case map[i-1] - i > 0 do
			true -> Map.put_new(map, i, map[i-1] - i)
			_ -> Map.put_new(map, i, map[i-1] + i)
		end
		calculate map, i+1, n
	end

	defp calculate(map, n) do
		calculate map, 1, n 
	end

	def recaman 0 do
		calculate([], 0) 
	end
	
	def recaman 1 do
		calculate [1], 1
	end

	def recaman x do
		calculate %{1 => 1}, x
	end
end
