# Write a program that determines if an input string, str, is a palindrome
#    disregarding any punctuation marks.

def PalindromeTwo(str)

  letters_only = str.downcase.split(//).select { |w| w =~ /[a-z]/ }
  return (letters_only == letters_only.reverse) ? true : false
  
end