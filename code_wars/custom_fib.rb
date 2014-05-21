=begin
digits = Enumerator.new do |y|
  i = 0
  loop do
    y.yield i
    i += 1
  end
end

puts digits.take_while {|n| n < 13 }
=end

fib = Enumerator.new do |y|
  j ||= 0
  i ||= 1
  loop do
	y.yield i
	i = i + j   
  	y.yield j
  	j = i
  end
end

puts fib.take_while {|n| n < 100 }