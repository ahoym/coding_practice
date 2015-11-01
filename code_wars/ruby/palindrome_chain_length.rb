# Write a program that determines whether a number is a palindrome. If not,
#    take the number and add its palindrome to it and determine if that is
#    is a palindrome. Do this step until a palindrome is found, and return
#    the number of steps required to reach the palindrome. eg,
#    -- palindrome_chain_length(87) = 4

# Original, 11/29
def palindrome?(num)
  num.to_s.reverse == num.to_s ? true : false
end

def add_palindrome(num)
	num + num.to_s.reverse.to_i
end

def palindrome_chain_length(n)
 	steps ||= 0
 	
 	while palindrome?(n) == false
 		steps += 1
 		n = add_palindrome(n)
 	end

 	return steps
end

# Method using recursion
def palindrome_chain_length(n)
  s = n.to_s
  rs = s.reverse
  s == rs ? 0 : 1 + palindrome_chain_length(n + rs.to_i)
end