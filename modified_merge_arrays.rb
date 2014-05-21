def merge_arrays(array1,array2)
	array1_count = array1.length - 1
	array2_count = array2.length - 1
	combined = array1.length + array2.length - 1

	while array1_count >= 0 && array2_count >= 0
		if array1[array1_count] > array2[array2_count]
			array2[combined] = array1[array1_count]
			array1_count -= 1
			combined -=1
		else
			array2[combined] = array2[array2_count]
			array2_count -= 1
			combined -= 1
		end

	end


	if array1_count == 0
		array2[array1_count] = array1[array1_count]
		array1_count -= 1
	end
	
	array2
end