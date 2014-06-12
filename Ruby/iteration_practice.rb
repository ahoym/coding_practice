#finds a number that is greater than 250 and divisible by 7
i = 0
until (i > 250) && (i % 7 == 0)
	i +=1
end 

puts "found it: #{i}"

#prints out all factors for each of the numbers 1 through 100
def get_factors(n)
	i = 1
	factors = []
	
	while i <= n
		factors << i if n % i == 0
		i += 1
	end
	
	print factors
end

def factors_for_range(num1, num2)
    (num1..num2).each {|x| puts get_factors(x)}
end

factors_for_range(1,100)


