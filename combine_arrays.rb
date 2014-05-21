def combine_arrays(arr1,arr2)
	arr = arr1 + arr2
	sorted = false
	
	until sorted
		sorted = true
		(arr.count-1).times do |x|

			#if the following loop occurs, the array is not yet sorted
			if arr[x] > arr[x+1]
				arr.insert(x,arr.delete_at(x+1))
				sorted = false
			end
		end
	end

	print arr
end
