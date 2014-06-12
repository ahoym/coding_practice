=begin 
	I need a function that takes the name of the movie to look up and 
the width of the letter grid, and computes the key presses that are needed
to enter the string onto the grid. The output should be a string with...
			'u' = up
			'd' = down
			'l' = left
			'r' = right
			'!' = select
For example, with a grid width of 5,
	a b c d e
	f g h i j
	k l m n o
	p q r s t
	u v w x y
	z
the movie "up" would be "dddd!u!"
=end

def form_grid(num)
	alphabet = %w{ a b c d e f g h i j k l m n o p q r s t u v w x y z}
	height = 26/num
	grid = []

	(height+1).times do |row|
		grid << alphabet.slice!(0,num)
	end

	return grid
end

def find_coords(name,num)
	grid = form_grid(num)
	letter_array = name.split(//)
	coords = []
	
	letter_array.each do |letter|
		i = 0

		while i < grid.count
			if grid[i].include?(letter)		
				j = 0
				while grid[i][j] != letter
					j += 1
				end

				coords << [i,j]
			end
			i += 1
		end
	end

	return coords
end

def convert_coords(coords)
	str = ''
	ud_position = 0
	lr_position = 0

	coords.each do |coord|
		ud_dir = ud_position - coord[0]
		lr_dir = lr_position - coord[1]

		until ud_dir == 0
			if ud_dir > 0
				str << 'u'
				ud_dir -=1
			elsif ud_dir < 0
				str << 'd'
				ud_dir += 1
			end
		end

		until lr_dir == 0
			if lr_dir > 0
				str << 'l'
				lr_dir -=1
			elsif lr_dir < 0
				str << 'r'
				lr_dir += 1
			end
		end

		str << '!'

		ud_position = coord[0]
		lr_position = coord[1]
	end

	return str	
end

def find_movie(name,num)
	coords = find_coords(name,num)
	grid = form_grid(num)
	select = convert_coords(coords)

	puts "The resulting grid is: \n #{grid}"
	puts "The coordinates of the movie name letters are #{coords}"
	puts "To get there, do the following selection: #{select}"
	
end