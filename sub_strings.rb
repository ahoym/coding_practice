def sub_strings(str)
	letters = str.split(//)
	n = letters.count # need constant number for i to iterate to
	output = []
	i = 0

	while i < n
		(letters.count).times {|x|
			# Can start from element 0 because it is shifted every letter.
			#   0 to x ensures combination of first letter until the last. 
			output << letters[0..x].join}

		letters.shift
		i += 1
	end 

	puts output

end

sub_strings("hello")