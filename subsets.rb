def subsets(arr)
	n = arr.count # need constant number for i to iterate to
	output = []
	i = 0

	while i < n
		into_output = []
		(arr.count).times do |x|
			# Can start from element 0 because it is shifted every element.
			#   0 to x ensures combination of first element until the last. 
			into_output << arr[0..x]
		end

		output << into_output
		arr.shift
		i += 1

	end 

    output

end
