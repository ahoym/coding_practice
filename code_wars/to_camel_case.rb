def to_camel_case(str)
	words = str.split(/[-_ ]/)
	result_str = words[0]

	(1..(words.length-1)).each { |i| result_str << words[i].capitalize }

	result_str	
end

# This method finds dashes, underscores, and space + \w. $1 => first instance
def to_camel_case(str)
  str.gsub(/[-_](\w)/) { $1.upcase }
end

def to_camel_case(str)
  str.split(/-|_/).each_with_index { |el, i| el.capitalize! unless i == 0 }.join
end