# Write a program that analyzes a string and determines the number of times
#    a letter successively appears in the string.

def RunLength(str)

  	i = 0
	count = 1
	return_str = ''

	while i <= str.length-1
		if str[i+1] != str[i] || i == str.length-1
			return_str << count.to_s + str[i]
			# In coderbyte, have to split up the above into two concats
			count = 0
		end
		count += 1
		i += 1
	end

	return_str
 
         
end