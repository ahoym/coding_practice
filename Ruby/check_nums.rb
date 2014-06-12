# Given two numbers, num1 and num2, return true if num2 is greater than num1
#         false otherwise, and -1 if they are equal.

def num_check(num1, num2)

	blah = (num2 > num1 ? true : false)
	blah = '-1' if num1 == num2

	return blah

end

# Solution - 06/07/2014
def check_nums(num1 = nil, num2 = nil)
  raise ArgumentError if num2.nil? || num1.nil?
  return -1 if num1 == num2
  
  num2 > num1
end