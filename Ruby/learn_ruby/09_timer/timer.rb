class Timer

	def seconds(sec = 0)
 		@sec = sec
	end

	def seconds= (sec)
		@sec = sec
	end

	def time_string
		break_it_down(@sec)
 		return padded(@hours)<<':'<<padded(@minutes)<<":"<<padded(@sec)
 	end

	def break_it_down(num)
		@hours = num / 3600
		@minutes = num >= 3600 ? (num % 3600 / 60) : (num / 60) # 'true' statement takes the remainder of the hour and converts to minutes
		@sec = num - @hours*3600 - @minutes*60
	end


	def padded(num)
		str = num.to_s.length > 1 ? num.to_s : '0' << num.to_s
	end

end