# Given an array of characters, replace the characters which occur
#   continuously with the character and number of times it occured.
=begin 
describe "define_array" do
	it "should define the characters" do
		define_array(w%{A A A A B C C D D D}) = A4BC2D3
	end
end

=end

def define_array(array)	
	definition = ''
	count = 1

	(array.length).times do |i|
		definition << "#{array[i]}" if !definition.include?(array[i])

		if array[i+1] != array[i]
			next if count == 1
			definition << "#{count}"
			count = 0
		end

		count += 1
	end

	definition

end