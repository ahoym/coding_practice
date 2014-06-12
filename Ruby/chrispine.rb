=begin ---------------- Numbers -----------------------
puts hours_in_a_year = 24 * 7 * 4 * 12
puts minutes_in_a_decade = hours_in_a_year * 10 * 60
puts seconds_old = hours_in_a_year * 23 * 3600
puts 0
puts (1031 * 10**6) / 60 / 60 / 24 / 365
=end

=begin ----------------- Stringy Stuff --------------------
puts "What is your first name?"
first_name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts "Why hello there #{first_name} #{middle_name} #{last_name}!"


puts "What is your favorite number?"
number = gets.chomp
puts "You know what's bigger and better? #{number.to_i + 1}!!!"


def angry_boss(string)
	puts "WHADDAYAMEAN \"#{string.upcase}\" ?!? YOU'RE FIRED!!"
end

lineWidth = 40
puts "Table of Contents/".center lineWidth
puts "Chapter 1: Numbers".ljust(lineWidth/2) + "page 1".rjust(lineWidth/2)
puts "Chapter 2: Letters".ljust(lineWidth/2) + "page 72".rjust(lineWidth/2)
puts "Chapter 3: Variables".ljust(lineWidth/2) + "page 118".rjust(lineWidth/2)

=end

=begin -------------------- Flow Control -------------------------------
99.downto(0) do |x|
	puts "#{x} bottles of beer on the wall..."
	puts "#{x} bottles of beer on the wall, take one down pass it around"
	puts "#{x-1} bottles of beer on the wall"
end

str = ''
until str == 'BYE'
	puts "What do you want to say to your grandma?"
	str = gets.chomp

	if (str != str.upcase)
		puts "HUH?! SPEAK UP, SONNY!"
		
	elsif str == str.upcase
		puts "NO, NOT SINCE " + rand(1930..1950).to_s + "!"
		
	end
end

def leap_years(starting,ending)

	starting.upto(ending) do |year|
		puts year if year % 4 == 0 && year % 400 != 0
	end
end

=end

=begin ------------------------- Array and Iterators ---------------
def alphabetical_order(list)

	return list.sort
end

------------------------------ .sort using Bubble Sort -------------------
def alphabetical_sort(arr)
	sorted = false
	until sorted
		sorted = true
		
		#(list.count).times do |n|
		#	if (n-1 < list.count) && (list[n-1] > list[n])
		#		list[n-1] , list[n] = list[n] , list[n-1]
		#		false		
		#	end
		#end
		(arr.count-1).times do |x|

			#if the following loop occurs, the array is not yet sorted
			if arr[x] > arr[x+1]
				arr.insert(x,arr.delete_at(x+1))
				sorted = false
			end
		end

	end
	arr
end

def alphabetical_sort(arr)
(0...arr.count).each do |i|
	current_value = arr[i]
	j = i -1
		while j >= 0 && arr[j] > current_value
			arr[j+1] = arr[j]
			j -= 1
		end
	arr[j+1] = current_value
	end
	print arr
end


lineWidth = 40
array = ["Table of Contents","Chapter 1: Numbers","page 1",
		"Chapter 2: Letters","page 72","Chapter 3: Variables","page 118"]
puts array[0].center lineWidth
puts array[1].ljust(lineWidth/2) + array[2].rjust(lineWidth/2)
puts array[3].ljust(lineWidth/2) + array[4].rjust(lineWidth/2)
puts array[5].ljust(lineWidth/2) + array[6].rjust(lineWidth/2)


def ask (question)
	goodAnswer = false
	
	until goodAnswer
		puts question
		reply = gets.chomp.downcase

		if (reply == 'yes' || reply == 'no')
			goodAnswer = true
			if reply == 'yes'
				answer = true
			elsif reply == 'no'
				answer = false
			end
		else
				puts 'Answer yes or no, please.'
		end
	end

	answer
end

def englishNumber (number)
	return "Please enter a number that isn\'t negative." if number < 0
	return 'zero' if number == 0

	numString = ''

	onesPlace = %w{one two three four five six seven eight nine}
	tensPlace = %w{ten twenty thirty forty fifty sixty seventy eighty ninety}
	teens = %w{eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen}
	left = number

# ----------------- Trillions --------------------
	rest = left/1000000000000
	left = left - rest*1000000000000
	if rest > 0
		trillions = englishNumber(rest)
		numString = numString + trillions + ' trillion'

		if left > 0
			numString = numString + ' '
		end
	end

# ------------------ Billions ---------------------
	rest = left/1000000000
	left = left - rest*1000000000
	if rest > 0
		billions = englishNumber(rest)
		numString = numString + billions + ' billion'

		if left > 0
			numString = numString + ' '
		end
	end

# ------------------- Millions ------------------
	rest = left/1000000
	left = left - rest*1000000
	if rest > 0
		millions = englishNumber(rest)
		numString = numString + millions + ' million'

		if left > 0
			numString = numString + ' '
		end
	end

# ------------------- Thousands ------------------
	rest = left/1000
	left = left - rest*1000
	if rest > 0
		thousands = englishNumber(rest)
		numString = numString + thousands + ' thousand'

		if left > 0
			numString = numString + ' '
		end
	end

# ------------------- Hundreds ------------------
	rest = left/100
	left = left - rest*100
	if rest > 0
		hundreds = englishNumber(rest)
		numString = numString + hundreds + ' hundred'

		if left > 0
			numString = numString + ' '
		end
	end

# ------------------- Tens ------------------	
	rest = left/10
	left = left - rest*10
	if rest > 0
		if rest == 1 && left > 0
			numString = numString + teens[left-1]
			left = 0
		else 
			numString = numString + tensPlace[rest-1]	
		end			

		if left > 0
			numString = numString + '-'
		end	
	end

#-------------------- Ones --------------------
	rest = left
	left = 0

	if rest > 0 
		numString = numString + onesPlace[rest-1]
	end

	numString

end

def weddingNumber (number)
	return "Please enter a number that isn\'t negative." if number < 0
	return 'zero' if number == 0

	numString = ''

	onesPlace = %w{one two three four five six seven eight nine}
	tensPlace = %w{ten twenty thirty forty fifty sixty seventy eighty ninety}
	teens = %w{eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen}
	left = number

# ----------------- Trillions --------------------
	rest = left/1000000000000
	left = left - rest*1000000000000
	if rest > 0
		trillions = englishNumber(rest)
		numString = numString + trillions + ' trillion'

		if left > 0
			numString = numString + ' and '
		end
	end

# ------------------ Billions ---------------------
	rest = left/1000000000
	left = left - rest*1000000000
	if rest > 0
		billions = englishNumber(rest)
		numString = numString + billions + ' billion'

		if left > 0
			numString = numString + ' and'
		end
	end

# ------------------- Millions ------------------
	rest = left/1000000
	left = left - rest*1000000
	if rest > 0
		millions = englishNumber(rest)
		numString = numString + millions + ' million'

		if left > 0
			numString = numString + ' and '
		end
	end

# ------------------- Thousands ------------------
	rest = left/1000
	left = left - rest*1000
	if rest > 0
		thousands = englishNumber(rest)
		numString = numString + thousands + ' thousand'

		if left > 0
			numString = numString + ' and '
		end
	end

# ------------------- Hundreds ------------------
	rest = left/100
	left = left - rest*100
	if rest > 0
		hundreds = englishNumber(rest)
		numString = numString + hundreds + ' hundred'

		if left > 0
			numString = numString + ' and '
		end
	end

# ------------------- Tens ------------------	
	rest = left/10
	left = left - rest*10
	if rest > 0
		if rest == 1 && left > 0
			numString = numString + teens[left-1]
			left = 0
		else 
			numString = numString + tensPlace[rest-1]	
		end			

		if left > 0
			numString = numString + ' and '
		end	
	end

#-------------------- Ones --------------------
	rest = left
	left = 0

	if rest > 0 
		numString = numString + onesPlace[rest-1]
	end

	numString

end

def song(num)
	(num).downto(0) do |n|
		puts englishNumber(n) + " bottles of beer on the wall..."
	end
end

=end

