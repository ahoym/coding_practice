# This program finds the factorial of a given number, num

def first_factorial(num)
	sum = 1
	num.downto(1) do |n|
		sum *= n
	end

	sum
end