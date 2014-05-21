# Write three methods: add(), subtract(), sum()
# BONUS: multiply(), power(), factorial()

# Adding two numbers
def add(num1, num2)
	num1 + num2
end

# Subtracting two numbers
def subtract(num1, num2)
	num1 - num2
end

# Adding all numbers within an array
def sum(arr)
	arr.inject(0) {|sum, num| sum + num}
end

#------------------------- BONUS -------------------------------

# Multiplies numbers in an array
def multiply(arr)
	arr.inject {|product, num| product * num}
end

# Raises num1 to the power of num2
def power(num1, num2)
	num1 ** num2
end

# Factorial from a given number
def factorial(num)
	return 1 if num == 0
	factorial_sum = num # start with given number, and start the loop from num-1.

	(num-1).downto(1) do |num| 
	factorial_sum *= num 
	end
	
	factorial_sum
end
