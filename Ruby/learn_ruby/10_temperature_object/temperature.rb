class Temperature	
attr_accessor :options

	def initialize(options)
		# Determines if option is f or c. An @option is "tagged" with the
		#    value to help determine what equation to use in the functions.
		if options.keys[0] == :f
			@num = options[:f].to_f
			@f = true
		elsif options.keys[0] == :c 
			@num = options[:c].to_f
			@c = true
		end
	end

	def in_celsius
		if @f == true
			self.class.ftoc(@num)
		elsif @c == true
			@num
		end
	end

	def in_fahrenheit
		if @c == true
			self.class.ctof(@num) 
		elsif @f == true
			@num
		end
	end

# ------------ Factory Method ------------------
	def self.from_celsius(num)
		new(:c=>num)
	end

	def self.from_fahrenheit(num)
		new(:f=>num)
	end

# ------------- Bonus ----------------------------
	def self.ftoc(num)
		celsius = (5.0/9.0)*(num.to_f-32)

	end

	def self.ctof(num)
		fahrenheit = ((9.0/5.0)*num.to_f) + 32
	end

end

class Celsius < Temperature

	def initialize(num)
		@c = true
		@num = num
	end

end

class Fahrenheit < Temperature

	def initialize(num)
		@f = true
		@num = num
	end

end
