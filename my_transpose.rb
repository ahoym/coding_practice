
# Method that outputs the correct array, but empties the original array.
def my_transpose(array)

b = [] #b is the new returned transposed multi-dimensional array
c = [] #c is a ghetto way of holding array values to put into b
n = array[0].length #need unchanging condition for while loop
i = 0

	while i <= n
		#c holds all first values of every array in a
		array.each {|x| c << x.shift}
		#c is duplicated to prevent overwrite in b. Then it is cleared
		# 	to put the next set of values into b.
		b << c.dup
		c.clear
		i += 1
	end

# .compact! to get rid of nils and .select elements which are not empty
# 		(makes everything stylistically neater)
b.each(&:compact!).select{|x| x.empty? == false}

end

# Method that does not alter the original array. 11/9

def my_transpose(arr)
  new_arr = []
  n = arr[0].length

  n.times do |i|
    column_r = []
    (arr.length).times do |j|
      column_r << arr[j][i]
    end
    new_arr << column_r
  end

  return new_arr
end
