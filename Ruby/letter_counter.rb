# Write a program that determines the word with the largest number of
#    repeated letters (does not have to be consecutive). eg, "Today is 
#    the greatest day ever!" should return greatest because it has 2 e's
#    (and 2 t's). Return the first word with the greatest number of letters,
#    and if there are no repeated letters, return -1


def greatest_num_letters(word)
  letters = word.split(//)
  max = 0
  letters.each { |l| max = letters.count(l) if letters.count(l) > max }
  
  return max
end

def LetterCount(str)
  words_arr = str.split(' ')
  it_is = ''
  max = 0
  
  words_arr.each do |word|
    if greatest_num_letters(word) > max
      it_is = word
      max = greatest_num_letters(word)
    end
  end
  
  return -1 if max == 1
  return it_is
         
end