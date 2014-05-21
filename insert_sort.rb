=begin ---------------- Ghetto Insertion Sort ------------------------

def insert_sort(arr)
	i = 0
	while i < arr.count
		current_value = arr[i]
		j = i - 1
		while j >= 0 && arr[j] > current_value
			arr[i] = arr[j]
			i -= 1
			j -= 1
		end

		arr[j+1] = current_value
		i+=1
	end

	print arr
end

=end


def insert_sort(arr)
(0...arr.count).each do |i|
	current_value = arr[i]
	j = i -1
		while j >= 0 && arr[j] > current_value
			arr[j+1] = arr[j]
			j -= 1
		end
	arr[j+1] = current_value
	end
	print arr
end

insert_sort([1,6,2,3,4,1,7,1,23,6,90,1])