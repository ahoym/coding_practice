=begin
Problem Statement

9 is a Kaprekar number since 
9 ^ 2 = 81 and 8 + 1 = 9

297 is also Kaprekar number since 
297 ^ 2 = 88209 and 88 + 209 = 297.

In short, for a Kaprekar number k with n-digits, if you square it and add the right n digits to the left n or n-1 digits, the resultant sum is k. 
Find if a given number is a Kaprekar number.
=end

def kaprekar?(k)
  n = k.to_s.length
  answer = (k*k).to_s
  test1 = answer[0...n].to_i + answer[-n..-1].to_i
  test2 = answer[0...(n-1)].to_i + answer[-n..-1].to_i
   
  return ((test1 == k) || (test2 == k)) ? true : false
    
end