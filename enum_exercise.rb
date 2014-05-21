def multiply_by_two(array)
	return array.map{|x| x*2}
end


def median(array)
	array.count % 2 == 1 ? array[array.count/2.0 -0.5] : 
	(array[array.count/2.0 +0.5] + array[array.count/2.0 -0.5])/2.0
	
end

def concatenate(array)
    array.inject {|result, word| result + " " + word} 
end

