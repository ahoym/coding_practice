def ordered_vowel_words(str)
    str.split.select{|w| ordered_vowel_word?(w) == true}.join(" ")
end

def ordered_vowel_word?(word)
	# All vowels from the word are taken and compared. If the vowel order
	# 	are the same with and sans .sort, the word has ordered vowels.
   if word.scan(/[aeiou]/).sort == word.scan(/[aeiou]/)
        true 
   else 
       return false
end
end

ordered_vowel_words("This is a test of the function. Weyman. Malcolm.")