# Write a program that produces a flat array of the values of a pascal's
#    triangle of the nth degree.

def pascalsTriangle(n)
	# NOTE if using arr = Array.new(n,[]), all [] are the same object.
	arr = Array.new(n)
	
	n.times do |i|
		arr[i] = []
		(i+1).times do |j|
			(arr[i] << 1; next) if j == 0 || j == i
			arr[i] << (arr[i-1][j] + arr[i-1][j-1])
		end
	end

	arr.flatten
end

# Using Recursion
def pascalsTriangle(n)
  return [1] if n == 1
  
  prev = pascalsTriangle(n - 1)  
  prev + [1] + (n - 2).times.map { |i| prev[-n + i + 1] + prev[-n + i + 2] } + [1]
end