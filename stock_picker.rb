stocks = [45,23,32,46,57,20,60]

def stock_picker(arr)

	diff = 0
	profit = []
	i = 0

	while i < arr.length
		value = arr[i]
		j = 1

		while j < arr.length
			compare = arr[j]
			if compare - value > diff && j > i
				diff = compare - value
				profit = [i,j]
			end

			j += 1
		end

		i += 1
	end

	diff
	profit
end

def stock_pickerII(arr)

	biggest_profit = 0
	most_profitable_days = []

	(0...arr.length).each do |i|
		(i...arr.length).each do |j|
			if arr[j] - arr[i] > biggest_profit
				most_profitable_days = [i,j]
				biggest_profit = arr[j] - arr[i]
			end
		end
	end

	most_profitable_days
end