# Given an array whose each element represents the height of the tower,
#     find the amount of water collected between towers. Each tower has
#     a width of 1. For example:
=begin 

describe "rain_towers" do
	it "should find the amount collected in a 'well'" do
		rain_towers([1,5,3,7,2]) = 2
	end
end

=end

def rain_towers(array)
	collected_rain = 0

	array.size.times do |i|
		next if i + 1 < array.size && array[i+1] > array[i]
		break if i + 1 == array.size && array[i-1] > array[i]
		tower1 = array[i]
		shorter_towers = []
		compare = 0
		j = i + 1

		until j == array.size || array[j] >= tower1
			if j == array.size-1 && array[j] < tower1
				break
			else
				shorter_towers << array[j]
			end

			j += 1
		end

		break if shorter_towers.empty?
		
		compare = (tower1*shorter_towers.length) - shorter_towers.inject(:+)
		if compare > collected_rain
			collected_rain = compare
		end
	end

	collected_rain
end

