#Trying out Fizzbuzzzzz
=begin
(1..100).each do |n|
	if (n % 3 == 0) && (n %5 == 0)
		n = 'FizzBuzz'
	elsif (n % 3 == 0)
		n = 'Fizz'
	elsif (n % 5 == 0)
		n = 'Buzz'
	end

	puts n
end 
=end

=begin ------------ Using functions ------------------------
def fizzbuzz?(num)
	case
		when num % 15 == 0 then "FizzBuzz"
		when num % 3 == 0 then "Fizz"
		when num % 5 == 0 then "Buzz"
		else num
	end
end

def fizzbuzz_to(limit)
(1..limit).each do |num|
	puts fizzbuzz?(num)
end
end

fizzbuzz_to(100)
=end

=begin
(1..100).each do |n|
	case
		when n % 15 == 0 then puts "FizzBuzz"
		when n % 3 == 0 then puts "Fizz"
		when n % 5 == 0 then puts "Buzz"
		else puts n
	end
end
=end

=begin
(1..100).each do |num|
	message = ""
	message << "fizz" if num%3 == 0
	message << "buzz" if num%5 == 0
	message << num.to_s if message.length == 0
	puts message
  end
=end

  puts (1..100).map {|i|
	f = i % 3 == 0 ? 'Fizz' : nil
	b = i % 5 == 0 ? 'Buzz' : nil
	f || b ? "#{ f }#{ b }" : i
  }