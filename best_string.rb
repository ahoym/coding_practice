# Given an array of strings, find the string which is made up of the max number of other strings contained in the same array.

def best_string(list)
	list.sort!.reverse!
	best_string = ''
	most = 0
	i = 0

	while i < list.length
		current = list[i]
		count = 0
		j = i + 1

		while j < list.length
			count += 1 if list[i].include?(list[j])
			j += 1
		end

		if count > most
			most = count
			best_string = current
		end

		i += 1
	end

	puts "The best string is #{best_string} which contains #{most} other strings"

end