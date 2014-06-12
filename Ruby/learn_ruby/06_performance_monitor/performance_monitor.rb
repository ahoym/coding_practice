def measure(num = 1, &block)
time_trials = []

	num.times do 
		start = Time.now
		yield
		finish = Time.now
		diff = finish - start
		time_trials << diff
	end

elapsed_time = (time_trials.inject(0) {|sum, n| sum + n} ) / num

end