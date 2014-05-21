# Print all anagrams of each word in a given list.
=begin 
describe "anagrams" do 
	describe "anagrams" do
		it "should print all anagrams in buckets"
			anagrams(['star','rats','ice','cie','arts']) = ['star','rats','arts']['ice','cie']
		end
	end
end

=end

def break_it_down(word)
	word.split(//).sort.join
end

def anagrams(list)
	temp = list
	display = []

	list.each do |word|
		next if display.flatten.include?(word)
		current = break_it_down(word)

		display << list.select do |word|
			current == break_it_down(word)
		end
	end

	display
end