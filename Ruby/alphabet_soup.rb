# Write a program that takes an input string and alphabetizes it. Do not include
#    any punctuation.

def alphabet_soup(str)
  raise StandardError if [",", ".", "!", "?", "'"].any? { |punctuation| str.include?(punctuation) }

	str.scan(/\w/).sort.join
end