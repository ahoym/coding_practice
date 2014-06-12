#You have an array of length n, containing values of 0 to n - 1.
#   Tell me if there exists a duplicate (boolean)

# Using an assigned variable for the boolean.
def any_duplicates?(arr)
  # This is the old way that I did
  # boolean = false
  # arr.each do |element|
  #   if arr.count(element) > 1
  #     boolean = true
  #     break
  #   end
  # end
  # boolean

  # Another way to do the same thing, more succinct than above
  # arr.each do |element|
  #   return true if arr.count(element) > 1
  # end
  # false
  
  # Can't get shorter than this
  arr.any? { |element| arr.count(element) > 1 }
end

# Creating a key, value relationship between numbers and frequencies, 
#    then checking if all values equal to 1.
def any_duplicate_nums?(arr)
	n = arr.length
	counts = Hash.new(0)

	arr.each do |element|
		counts[element] += 1
	end

  !counts.values.all? { |x| x == 1 }
  #or counts.values.any? { |x| x != 1 }
end