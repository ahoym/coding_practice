# Write a program that takes an input string and alphabetizes it. Do not include
#    any punctuation.

def alphabet_soup(str)

	str = str.scan(/\w/).sort.join

	return str
end