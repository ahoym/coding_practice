# This helper method for reverser will reverse an individual word
def reverse_a_word(word)
i = 0   # Need an iterator to correspond to the first character
j = -1  # And an iterator to correspond to the last character
	
	# This loop swaps the characters starting from the outer ones
	#   to the inside. This goes on until the middle, word.length/2.
	#   Though odd number words will generate an integer, it still 
	#   works because the middle character would have just swapped
	#   with itself anyway!
	while i != word.length/2	
		word[i], word[j] = word[j], word[i]
		i += 1
		j -= 1
	end

word

end

def reverser(&str_block)
	words_arr = yield.split

	words_arr.each {|word| reverse_a_word(word) }.join(' ')

end

# --------------------------- Adder --------------------------

def adder(num = 1, &num_block)
	yield + num
end

# --------------------------- Repeater -----------------------

def repeater(num = 1, &block)

num.times do
  yield
end

end
