# Write a class, RomanNUmerals, that converts a given number, year, and converts it to
#   roman numerals. eg,
#   -- RomanNumerals.to_roman(1990) => MCMXC
#   -- RomanNumerals.to_roman(1666) => MDCLXVI

class RomanNumerals

@@roman_numerals = {
  1000 => 'M',
	900 => 'CM',
	500 => 'D',
	400 => 'CD',
	100 => 'C',
	90 => 'XC',
	50 => 'L',
	40 => 'XL',
	10 => 'X',
	9 => 'IX',
	5 => 'V',
	4 => 'IV',
	1 => 'I'
}

	def self.to_roman(year)  
		roman_numbers = @@roman_numerals.keys
		str = ""
		roman_numbers.each do |number|
			str << (@@roman_numerals[number]*(year/number))
			year %= number
		end
		return str
	end

	def self.from_roman(roman_numerals)
		year = 0
		split = roman_numerals.split(//)
		i = 0

		while i < split.length
			if @@roman_numerals.has_value?(split[i..i+1].join)
				year += @@roman_numerals.key(split[i..i+1].join)
				i += 2
			else
				year += @@roman_numerals.key(split[i])
				i += 1
			end
		end
		return year
	end

end


# ================= Another method to do from_roman ==========
def solution(roman)
  mapping = {
    'M' => 1000,
    'D' => 500,
    'C' => 100,
    'L' => 50,
    'X' => 10,
    'V' => 5,
    'I' => 1,
  }

  digits = roman.scan(/.{1}/).reverse.map{|d| mapping[d]}
  digits.map.with_index {|d, i| digits[i.zero? ? i : i - 1] > d ? -d : d}.inject(:+)
end

# ================== My second attempt at from_roman =============
def solution(roman)
  roman_numerals = {
    "M" => 1000,
    "D" => 500,
    "C" => 100,
    "L" => 50,
    "X" => 10,
    "V" => 5,
    "I" => 1,
  }
  year = 0
  digits = roman.split(//).map { |i| roman_numerals[i] }
  digits.each_with_index do |d,i|
    year += digits[i.zero? || i == digits.length-1 ? i : i+1] > digits[i] ?  -d : d
  end
  year
end