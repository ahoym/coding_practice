class RPNCalculator

	def initialize
		@math_me = [] # All numbers and operations are added to this array
		@answer = nil # The answer returned by value
		@operations = '+','-','*','/' # For comparison, later in the code
		@op_count = 0 # This counter is used to stop an important loop in def value
	end

	def push(num)
		@math_me.push(num.to_f) # numbers are converted to floats for correct division
	end	

	def value
		i = 0
	    until @op_count == 0 # Runs the code until there are no more operations in the array.
			
	    	# The array @math_me is cycled through until it finds a math operator. The case
	    	#   statement then takes this operator and performs the appropriate arithmetic. It
	    	#   then deletes the operator and the numbers used, and inserts the "answer" back into
	    	#   @math_me for further calculations. It also corresponds to the returned value.
			if @operations.include?(@math_me[i]) 
				case @math_me[i]
					when '+' then @answer = @math_me[i-1] + @math_me[i-2]
					when '-' then @answer = @math_me[i-2] - @math_me[i-1]
					when '*' then @answer = @math_me[i-1] * @math_me[i-2]
					when '/' then @answer = @math_me[i-2] / @math_me[i-1]
				end
				@math_me.delete_at(i)
				@math_me.delete_at(i-1)
				@math_me.delete_at(i-2)
				@math_me.insert(i-2,@answer)
				@op_count -= 1
				i = 0
			end
			i += 1
		end
		@answer
	end

	# This method, though not required, is to clear the answer in case a new
	#    calculation is desired.
	def clear
		@answer = nil
	end

	def plus
		if @math_me.count < 2   # Can't do operations on only one number!
			raise "calculator is empty"
		else
			@math_me << '+'
			@op_count += 1
		end
	end

	def minus
		if @math_me.count < 2
			raise "calculator is empty"
		else
			@math_me << '-'
			@op_count += 1
		end
	end

	def times
		if @math_me.count < 2
			raise "calculator is empty"
		else
			@math_me << '*'
			@op_count += 1
		end
	end

	def divide
		if @math_me.count < 2
			raise "calculator is empty"
		else
			@math_me << '/'
			@op_count += 1
		end
	end

# ----------------------------------- Extra Credit ---------------------------------------------
	def tokens(str)
		# split up the string, if an element is an operator it is converted to a symbol
		str.split(' ').map do |element|
			if @operations.include?(element)
				element.to_sym
			else
				element.to_f
			end
		end
	end

	def evaluate(str)
		clear
		# This loop is similar to tokenize, but does not convert operations to symbols.
		#    This is because the operations must be StringType to work in the case statement
		#    in def value. @op_count is set through scanning the number of operators in the string.
		@math_me = str.split(' ').map do |element|
			if @operations.include?(element)
				element
			else 
				element.to_f
			end
		end
		@op_count = str.scan(/[-+*\/]/).length
		value
	end
end
