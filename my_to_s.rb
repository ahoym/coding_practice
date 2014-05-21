
DIGIT_CONVERSION = {
0 => '0',
1 => '1',
2 => '2',
3 => '3',
4 => '4',
5 => '5',
6 => '6',
7 => '7',
8 => '8',
9 => '9'
}

def num_to_s(num, base)
	x =[]
    n = 0
    
    # Creates an n for next loop. 
    while base**(n+1) <= num
        n+=1
    end
    
    until n < 0
    	# % 10 to produce a single number
	    a = (num / base**n) % 10
		x << DIGIT_CONVERSION[a]

		# Reassign num lacking its previous digit (already converted)
		num = (num % base**n)
		n -= 1
	end

	x.join('')
end

num_to_s(123,10)
num_to_s(6,2)

