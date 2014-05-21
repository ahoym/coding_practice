=begin ***  *** 
# Given an array of both + and - integers, rearrange the elements such that
#   the + and - integers are placed alternatively. Should be in-place and
#   order of elements should not change.
=end

def status(num)
	if num >= 0 
		return true
	else
		return false
	end
end

def alternate_int(arr)
	i = 0

	while i < arr.length
	j = i + 1

		while j < arr.length
			if status(arr[j]) == !status(arr[i])
				arr.insert(i+1,arr.delete(arr[j]))
				break
			end
		j += 1
		end

		i += 1
	end

	arr
end