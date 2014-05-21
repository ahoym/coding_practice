$indents = 0
def log (str1, str2, &block)

	puts ' '*$indents << str1
	$indents += 3
	a = block.call
	$indents -=3
	puts ' '*$indents << str2 << a.to_s
end

log "Beginning \"outer block\"...","... \"outer block\" finished, returning: " do
	
 	x = true

	log "Beginning \"some little block\"...","...\"some little block\" finished, returning: " do
		x = 0
	
		log "Just TESTING THIS!","COOL, CARRY ON: " do
			x = 50
		end
		x = 5 
	end

	log "Beginning \"yet another block\"... ", "...\"yet another block\" finished, returning: " do
		x = ''
		x =  'I like Thai foood!' 
		
	end

	x = false

end