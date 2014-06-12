# Finds the longest word in a sentence, ignores punctuation and displays the 
#   first large word if there is a tie.

def longest_word(str)
	longest = ''
	str.scan(/\w+/).each do |word|
		longest = word if word.length > longest.length
	end

	longest
end