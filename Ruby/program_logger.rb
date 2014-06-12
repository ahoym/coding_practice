def log (str1, str2, &block)

	puts str1
	a = block.call
	puts str2 + a.to_s

end

log 'aaaaaaaaaa','aaaaaaaaaa: ' do
	log 'bbbbbbb','bbbbbbb: ' do
		x = 'FINALLLYYYYYY'
	end
	log 'ccccccc','ccccccc: ' do
		x = 'FFFFUUUUUUUUU THIS' 
	end
	x = 'SHIIIIT'
end