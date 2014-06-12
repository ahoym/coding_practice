cats = [false]*100
i = 1

until i > cats.count
	(cats.count).times do |n|
		if (n+1) % i == 0
			cats[n] = !cats[n]
		end
	end
	i += 1
end

p cats