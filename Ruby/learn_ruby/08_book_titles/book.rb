class Book

	# This setter method is to set the book title to @title when a user
	#      types in @book.title = 'blah'. Doesn't show modifications,
	#      but when user calls @book.title it does.
	def title= (title)
		@title = capital_words(title)
	end

	def capital_word(word)
		no_no_words = %w{ the a an and in of} # Can add more
		no_no_words.include?(word) ? word : word.capitalize
	end

	def capital_words(string)
		string_array = string.split
		return_me = string_array.shift.capitalize # Always capitalize first word
		
		string_array.each {|word| return_me << ' ' + capital_word(word)}

		return_me
	end

	#Displays the modified title when user types @book.title
	def title
		@title
	end
end