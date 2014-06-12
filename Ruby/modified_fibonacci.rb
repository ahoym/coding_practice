# Given any two numbers as input, print out all Fibonacci Numbers within that range.
=begin
describe "fibonacci" do
	it "should return 112" do
		fib_range(111,113) = 112 (1,1,2)
	end
end	

Other examples are 121224(12,12,24) and 252550 (25, 25, 50)
	
=end

def fibonacci_number?(num)
	x = num.to_s.length / 3
	num1 = num.to_s.slice(0, x)
	num2 = num.to_s.slice(x, x)
	sum = num.to_s.slice((x * 2),(num.to_s.length - x * 2))
	return num1.to_i + num2.to_i == sum.to_i ? true : false
end

def fib_range(low,high)
	(low..high).each do |num|
		puts num if fibonacci_number?(num)
	end
end

