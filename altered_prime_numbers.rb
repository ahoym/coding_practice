=begin 
***** A spin on finding prime numbers ******
Print all pairs(sets) of prime numbers (p,q) such that
  				p*q <= n where n is a given number.
=end 

# Method that checks if the input number is a prime number
def prime_num?(num)
	prime_num = true

	(num-1).downto(2) do |n|
		prime_num = false if num % n == 0
	end

	prime_num
end

# Method that finds all prime numbers up to the input number n
def prime_nums_of_range(n)
	prime_nums_to_n = []

	(1..n).each do |num|
		prime_nums_to_n << num if prime_num?(num)
	end

	prime_nums_to_n
end

# Method that finds valid pairs from the range of prime numbers produced by prim_nums_of_range(n)
def alt_prime_num(n)
	prime_nums = prime_nums_of_range(n)
	valid_pairs = []
	i = 0

	while i < prime_nums.length
		j = i + 1

		while j < prime_nums.length
			valid_pairs << [prime_nums[i],prime_nums[j]] if prime_nums[i]*prime_nums[j] <= n
			j += 1
		end

		i += 1
	end

	valid_pairs
end
