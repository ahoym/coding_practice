def max_subsum(arr)
	subsum = []
	value = 0

	arr.length.times do |i|
	    compare = 0
		(i..arr.length-1).each do |j|
			compare += arr[j]
		end
		if value < compare
		    value = compare
		    subsum = [i, arr.count-1] 
		end
	end	

	subsum
end