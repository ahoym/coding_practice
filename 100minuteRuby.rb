require 'date'

class PersonalChef

	def make_toast(color)
		if color.nil?
			puts "How am I supposed to make nothingness toast?"
		else
			puts "\n Making your toast #{color}! \n "
		end
		return self
	end

	def make_eggs(quantity)
		quantity.times do 
			puts "\n Making an egg. \n "
		end
		puts "\n Made you #{quantity} eggs! \n "
		return self
	end

	def make_milkshake(flavor)
		puts "\n Making your #{flavor} milkshake! \n "
		return self
	end

	def good_morning
		today = Date.today.strftime("%A")
		day_of_year = Date.today.yday
		puts "\n Happy #{today}, it's the #{day_of_year} day of 2013! \n "
	end

	def gameplan(meals)
		meals.each do |meal|
			puts "\n We'll have #{meal}... \n "
		end

		all_meals = meals.join(", ")
		puts "\n In summary: #{all_meals} \n "
		return self
	end

	def inventory
		produce = {apples: 3, oranges: 1, carrots: 12}
		produce.each do |item, quantity|
			puts "\n There are #{quantity} #{item} in the fridge. \n "
		end
		return self
	end

	def water_status(minutes)
		if minutes < 7
			puts "\n The water is not boiling yet. \n "
		elsif minutes == 7
			puts "\n It's just barely boiling. \n "
		elsif minutes == 8
			puts "\n It's boiling! \n "
		else
			puts "\n Hot! Hot! Hot! \n "
		end
		return self
	end

end

class Butler

	def open_door(which)
		puts "\n Opening #{which} door! \n "
	end

end


=begin ---------------- String Stuff --------------------------
puts "Malcolm".length
puts "Lai".length
puts "Ahoy".length
puts "Malcolm".delete('l')
puts "hello".gsub("ll","y yo")
puts "hey yoo".gsub("y yoo","llo just to you")
=end
