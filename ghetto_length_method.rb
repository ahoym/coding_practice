# Find the length of a string without using the .length or related commands

def length(str)
	count = 0
	str.split(//).each { count += 1}
	count
end

