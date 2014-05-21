def encrypt(str)
 array = []
 count = 1
 
 str_split = str.split(//)

(str_split.count).times do |x|

	# If the string switches to a different letter, restart count.
	# Adding element to the array in this loop ensures
	# 	that each letter will be paired with the final count.
    if str_split[x] != str_split[x+1]
    array << [str_split[x], count]
    count = 0
    end
    count += 1
end
    
    p array
end


encrypt('aaabbccddddeefffaaabbbcc')
