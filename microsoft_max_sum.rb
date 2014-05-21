# Without copying the original, and in one loop, find the start and end
#   index of a range in an array that will yield the max sum
=begin 

describe "microsoft_max_sum" do
	it "should return return the largest sum" do
		microsoft_max_sum([5,6,-4,3]) = 0,1
	end

	it "should only be one loop" do
		microsoft_max_sum([8,9,-6,0,3,9]) = 0,5
	end
end

=end

def microsoft_max_sum(array)
	max_sum = 0
	pair = []

	(array.length).times do |i|
		j = i + 1
		while j < array.length
			compare = array[i..j].inject(:+)	
			if compare > max_sum
				max_sum = compare 
				pair = [i,j]
			end

			j += 1
		end
		i += 1
	end

	puts "The biggest sum range within the array is #{pair} with a sum of #{max_sum}"
end
