class OrangeTree
	def initialize
		@height = 0
		@age = 0	
		@orange_count = 12 # When orange tree is old enough, start with this number of fruit.
		@wasting_oranges = false # For clearing the tree after a year.
		puts "\n You've planted a new orange tree! \n "
	end

	def height
		puts "\n Your orange tree is now " + @height.to_s + " meters tall! \n "
	end

	def oneYearPasses
		@age += 1
		@height += 3

		if @orange_count > 0 && @age > 4
			puts "\n #{@orange_count} oranges have rotten... \n "
		elsif @orange_count == 0 && @age > 4
			puts "\n You used all of the oranges! How resourceful! \n "
		elsif @age == 4
			puts "\n Your orange tree now has fruit! \n "
		end

		@orange_count = 12 + @age
		puts "\n Your orange tree is now " + @age.to_s + " years old! \n "
	end

	def countTheOranges
		puts "\n There are #{oranges_count()} oranges in the tree! \n "
	end

	def pickAnOrange
		if @age <= 3
			puts "\n There aren't any! Your tree isn't old enough to bear fruit! \n "
		else	
			puts "\n How many oranges do you want to pick? \n "
			number = gets.chomp
			if number.to_i > @orange_count
				puts "\n There aren't that many oranges on there! \n "
			else
				@orange_count -= number.to_i
				puts "\n You picked #{number} oranges! Yum! \n "
				puts "\n There are #{@orange_count} oranges left on the tree. \n "
			end
		end		
	end

private

	def oranges_count
		if @age > 3
			return @orange_count
			@orange_count += 1
		else
			puts "\n Your tree isn't old enough to bear fruit yet! \n "	
			return 0		
		end		
	end

	def orange_decrease
		if @wasting_oranges == true
			if @orange_count > 0
				puts "\n #{@orange_count} oranges have rotten... \n "
			else
				puts "\n You used all of the oranges! How resourceful! \n "
			end
			@orange_count = 12
		end		
	end

end