# Write a program that will analyze a string. It should...
#    -- Remove spaces between words
#    -- Find the longest word in the string
#    -- Search and count the number of letters "e" in the string
#    -- Extract the number of integers in the string
#    -- Extract the number of doubles in the string
#    -- Extract the number of words in the string
#    -- Identify the number of sentences in the string.

# Helper method for counting doubles in the string.
def count_doubles(str)
	count = 1
	doubles = 0
	arr = str.split(//)

	(arr.length).times do |i|
		if arr[i+1] == arr[i]
			count += 1
			doubles += 1
		end
	end

	doubles
end

def str_analyzer(str)
	no_spaces = str.gsub(" ","")
	
	longest_word = ""
	str.split.each do |word|
		longest_word = word if word.length > longest_word.length
	end

	num_of_e = str.scan(/[e]/).length

	num_of_int = str.scan(/\d+/).length

	doubles = count_doubles(str)

	words_amount = str.split.length

	sentences_amount = str.scan(/\.|\?|\!/).length

	puts "The string with no spaces is #{no_spaces}"
	puts "The longest word in the string is #{longest_word}"
	puts "The number of e\'s in the string is #{num_of_e}"
	puts "The number of int\'s in the string is #{num_of_int}"
	puts "The number of doubles in the string is #{doubles}"
	puts "The number of words in the string is #{words_amount}"
	puts "The number of sentences in the string is #{sentences_amount}"


end