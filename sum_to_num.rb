# Given an input array, write an algorithm to print all possible combos
#   in the array that sum up to given input k



def sum_to_num(arr,num)
	can_sum_to_num = []
	i = 0

	while i < arr.length
		j = i + 1

		while j < arr.length
			if arr[i] + arr[j] == num
				can_sum_to_num << [arr[i],arr[j]]
			end
			j += 1
		end
		i += 1
	end

	can_sum_to_num

end