row = []

(1..12).each do |i|
	temp = []
	(1..12).each do |n|
		temp << n*i 
	end
	row << temp
end

p row