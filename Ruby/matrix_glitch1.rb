# Given numbers 1 to n, find a and b such that:
# 			a <= b * 10 && b <= a * 10
# The set should contain numbers which are violating these
# conditions with each other.

def wtf(n)
set = []

	(1..n).each do |a|
		(2..n).each do |b|
			if a > 10* b || b > 10*a
				set << [a,b]
			end
		end
	end

	set
end