class Array

	def sum
		inject(0) {|sum, number| sum + number}
	end

	# Does not alter the original array, produces a new one
	def square
		new_array = []
		each {|num| new_array << num*num}
		new_array
	end

	# Alters the original array
	def square!
		map! {|num| num*num}
	end


end