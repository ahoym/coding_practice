def ipsBetween(start, ending)
	ending = conversion(ending) 
	starting = conversion(start) 
	convert = []
	sum = 0

	(ending.count).times do |n|
		convert << ending[n] - starting[n]
	end

	convert.reverse!
	(convert.count).times { |i| sum += convert[i]+(255*i) if convert[i] != 0}
	print convert
	sum
end

def conversion(ip)
  values = ip.split('.').map{|i| i.to_i}
end