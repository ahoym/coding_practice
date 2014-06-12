# This first method converts an individual word to pig latin.
def pig_latin_word(word)
	vowels = %w{a e i o u}
	notables = ['th','ch','sh','thr','sch','qu',
				'squ','br','tr','chr','cr','st'] # Can add others. 
	return_word = ''

	# Checks if the word starts with a vowel or one of the notables
	#   and acts accordingly.
	case
		when vowels.include?(word.downcase[0]) 
			return_word = word + 'ay'
		when notables.include?(word.downcase[0..2]) #for three consonant phenome
			return_word = word[3..-1] + word[0..2] + 'ay'
		when notables.include?(word.downcase[0..1]) #for two consonant phenome
			return_word = word[2..-1] + word[0..1] + 'ay'
		else
			return_word = word[1..-1] + word[0] + 'ay'
	end

	punct = return_word.scan(/\.|\?|\,|!/)[0] # Scans for punctuation attached to word.
	return_word = return_word.delete(punct) + punct if punct.nil? == false # Deletes any punctuation and re-attaches to the end.
	return_word = return_word.downcase.capitalize if word == word.capitalize # This retains any capitalized words
    return_word
end

#This method converts the entire sentence to pig latin.
def translate(str)
	sentence = ''
	str.split.each {|word| sentence << pig_latin_word(word) + ' '}
	sentence.strip
end
