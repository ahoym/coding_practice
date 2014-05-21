def bubble_sort(arr)
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

bubble_sort([1,2,3,4,1,5,16,1,3,9])