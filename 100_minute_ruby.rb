require 'date'

class PersonalChef

	def make_toast(color = nil)
		if color.nil? || color.strip.empty?
			puts "How am I supposed to make nothingness toast?"
		else
			puts "Making your toast #{color}!"
		end
		return self
	end

	def make_eggs(quantity = nil)
    if quantity.is_a?(Integer)
  		quantity.times do
  		  puts "Making an egg."
  		end
  		puts "Made you #{quantity} eggs!"
    else
      puts "That's not a number, boss!"
    end
		return self  
	end

	def make_milkshake(flavor = nil)
		if flavor.is_a?(String)
      puts "Making your #{flavor} milkshake!"
    else
      puts "That's not a milkshake flavor I can make!"
    end
		return self
	end

	def good_morning
		today = Date.today.strftime("%A")
		day_of_year = Date.today.yday
		puts "Happy #{today}, it's the #{day_of_year} day of 2013!"
	end

	def gameplan(meals)
		meals.each do |meal|
			puts "We'll have #{meal}..."
		end

		all_meals = meals.join(", ")
		puts "In summary: #{all_meals} "
		return self
	end

	def inventory
		produce = {apples: 3, oranges: 1, carrots: 12}
		produce.each do |item, quantity|
			puts "There are #{quantity} #{item} in the fridge."
		end
		return self
	end

	def water_status(minutes)
		if minutes < 7
			puts "The water is not boiling yet."
		elsif minutes == 7
			puts "It's just barely boiling."
		elsif minutes == 8
			puts "It's boiling!"
		else
			puts "Hot! Hot! Hot!"
		end
		return self
	end

end

class Butler

	def open_door(which)
		puts "Opening #{which} door!"
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
