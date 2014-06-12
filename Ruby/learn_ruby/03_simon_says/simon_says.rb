# Simon says program

# Returns the string that is input
def echo(str)
	str
end

# CAPSES THE STRING THAT IS INPUT
def shout(str)
	str.upcase
end

# Returns the string that is input, n number of times
def repeat(str, num = 2)
	str + (' ' + str)*(num-1)
	#Alternatively, ((str+' ')*num).strip
end

# Returns the n number of characters of the input string
def start_of_word(str, num)
	str[0..(num-1)]
end

# Returns the first word of a string
def first_word(str)
	str.split(' ').shift
	#str.scan(/\w+/).shift if you count hyphenated words as one word.
end

#Capitalizes 
def titleize(str)
	little_words = %w{the and over}
	str_array = str.split 
	str = str_array.shift.capitalize #Automatically capitalizes the first word and stores it.
	
	# If the word is not black listed in little_words, it will be caps'ed
	#    and added to the returning string.
	str_array = str_array.map do |word| 
	    str << (little_words.include?(word) ? (' ' + word) : (' ' + word.capitalize))
    end
    
	str

end