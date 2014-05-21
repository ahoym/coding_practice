# Write a program that determines whether an input string is a palindrome.
#    It should not include any puncutation. 

def Palindrome(str)

  forwards = str.scan(/\w/).join
  backwards = forwards.reverse
  # code goes here
  return (forwards == backwards ? true : false)

end