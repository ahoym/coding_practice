# Given an array of strings, find the element which is composed of the most number of other elements.

def best_stringI(list)
	list.sort!.reverse!
	best_string = ''
	most = 0
	i = 0

	while i < list.length
		current = list[i]
		count = 0
		j = 0

		while j < list.length
			count += 1 if list[i].include?(list[j])
			j += 1
		end

		if count > most
			most = count
			best_string = current
		end

		i += 1
	end

  best_string
end

# New solution.
def best_string(list)
  # opt_list = list.sort_by(&:length).reverse ------ Uses more space, but will DRY code.
  best_string = ''
  most_words = 0
  
  list.sort_by(&:length).reverse.each do |current_word|
    count = 0
    
    list.sort_by(&:length).reverse.each do |compare_word|
      next if compare_word.length == current_word.length
      
      count += 1 if current_word.include?(compare_word)
    end
    
    if count > most_words
      most_words = count
      best_string = current_word
    end
  end
  
  best_string
end
# === Notes for the above ===
# Below code will skip word if the first letter of the comparing word is not the same as its corresponding position in the current_word. Minor and optional optimization.
# next if compare_word[-compare_word.length] != curent_word[-compare_word.length]