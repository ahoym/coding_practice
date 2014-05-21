# A number is "valid" if it produces unique numbers when multiplied within
#   itself. Example
=begin
	
describe "uniq_num" do
	describe "uniq_num" 
	it "should return false" do
		uniq_num(1248) = 1,2,4,8,2,8,32,8,64,64
	end
end

Therefore it is false because the resulting numbers are not unique.
=end

def uniq_num(num)
	num_array = num.to_s.split(//).collect {|n| n.to_i}
	num_set = [];
	i = 1

	while i <= num_array.length
		j = 0
		while j < num_array.length && j + i <= num_array.length
			temp = num_array.slice(j,i)
			num_set << temp.inject(1) {|product,num| product*num}
			j += 1
		end
		i += 1
	end

	verify = num_set.uniq.length == num_set.length ? true : false

	puts "The resulting set is #{num_set},
	 thus making the number #{num}, #{verify}"

end
