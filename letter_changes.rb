# Takes a string, increments all letters once, and capitalizes all vowels
=begin
def LetterChanges(str)

	str.scan(/\w+/).map do |word|
		word = word.split(//).map do |letter|
			letter.next!
			if 'aeiou'.include?(letter)
				letter.capitalize!
			else
				letter
			end
		end.join
	end.join(' ')
end
=end

def LetterChanges(str)

	new = ''
	str.each_char.each do |char|
		if (char =~ /[a-z]/)
			char.next!
			if 'aeiou'.include?(char)
				new << char.capitalize!
			else
				new << char
			end
		else
			new << char
		end
	end

	new
end