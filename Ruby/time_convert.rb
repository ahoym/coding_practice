# Write a program that takes a given number, num, and converts it to
#      hours and minutes in the format "hours:min". eg, 63 => '1:3'

def time_convert(num)
	time_str = ''
	time_str << (num / 60).to_s + ':'
	time_str << (num & 60)

	return time_str

end