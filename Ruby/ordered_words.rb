

def ordered_words(word)
	# Word is split by only letters. If the word is the same with and sans
	# 	.sort, then it is ordered.
   if word.scan(/[a-z]/).sort == word.scan(/[a-z]/)
        true 
   else 
       return false
end
end

ordered_words("zma")