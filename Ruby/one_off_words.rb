=begin
Given a word, and a list of words, return only words from the 
list that are 1 letter off from the given word.

eg,
one_off_words('loot', ['tool, 'loop', 'toot']) => 
=end


def one_off_words(word,list)
    errors = 0 #errors to see how many discrepencies there are.
    letters = word.scan(/\w/)
    return_words = []
    
    list.each do |w|
        temp = w.scan(/\w/)
        (temp.count).times do |i|
            # Checks every element of both words. Errors are accumulated
            #   if a specific element from both differ.
            errors += 1 if letters[i] != temp[i]
        end
        
        # If there are more than 1 discrepency, it is not returned.
        #   eg, 'loot' vs 'tool' would have 2 errors.
        return_words << w if errors == 1
        errors = 0
    end    
    
    p return_words
end

one_off_words('loot',['tool','loop','toot'])