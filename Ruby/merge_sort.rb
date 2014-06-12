
# Cleaner way for def merge
def merge(left=[],right=[])
	a = []
	until left.empty? || right.empty?
		a << (left.first < right.first ? left.shift : right.shift)
	end
	left.empty? ? (a << right.shift until right.empty?) : (a << left.shift until left.empty?)
	return a
end

def merge_sort(arr)
	sarr = arr.each_slice(1).to_a

	until sarr.length == 1
		sarr.each_slice(2).to_a.each do |slice| 
			sarr << (slice[1].nil? ? merge(slice[0]) : merge(slice[0],slice[1]))
		end
		sarr.delete_if{|e| e.empty?}
	end
	sarr.flatten!
end

=begin ------ Shows each individual step of the iteration -----------
def test
	a = [1,3,5,7,9,8,6,4,2,10]
	c = a.each_slice(1).to_a #=> [[1,3],[5,7],[8,9],[4,6],[2,10]]

	print c
	puts
	puts
	c.each_slice(2).to_a.each do |slice| 
		c << (slice[1].nil? ? merge(slice[0]) : merge(slice[0],slice[1]))
	end
	print c.delete_if{|e| e.empty?}
	puts
	puts
	
	c.each_slice(2).to_a.each do |slice| 
		c << (slice[1].nil? ? merge(slice[0]) : merge(slice[0],slice[1]))
	end
	print c.delete_if{|e| e.empty?}
	puts
	puts

	c.each_slice(2).to_a.each do |slice| 
		c << (slice[1].nil? ? merge(slice[0]) : merge(slice[0],slice[1]))
	end
	print c.delete_if{|e| e.empty?}
	puts
	puts

	c.each_slice(2).to_a.each do |slice| 
		c << (slice[1].nil? ? merge(slice[0]) : merge(slice[0],slice[1]))
	end
	print c.delete_if{|e| e.empty?}
	puts
	puts

	c.each_slice(2).to_a.each do |slice| 
		c << (slice[1].nil? ? merge(slice[0]) : merge(slice[0],slice[1]))
	end
	print c.delete_if{|e| e.empty?}
	puts
	puts
end

#================== Old def merge method. A lot of clutter =============
def merge(left=[], right=[])
	a = []
	until left.empty? && right.empty?
		if left.empty? || right.empty?
			left.empty? ? (a << right.shift until right.empty?) : (a << left.shift until left.empty?)
			next
		end
		a << (left.first < right.first ? left.shift : right.shift)
	end
	return a
end

=end
