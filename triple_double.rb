# Write a program that accepts two input numbers, num1 and num2,
#   and determines whether num1 has 3 consecutive numbers and
#   num2 has 2 of the same consecutive numbers. If both conditions are true,
#   return 1, or else return 0

def valid(num, in_a_row)
  count = 1
  valid_nums = []
  
  (num.to_s.length).times do |c|
    valid_nums << num.to_s[c] if count == in_a_row
    if num.to_s[c+1] != num.to_s[c]
      count = 0
    end
    count += 1
  end
  
  return valid_nums
end

def TripleDouble(num1,num2)
  
  triples = valid(num1, 3)
  doubles = valid(num2, 2)

  triples.each {|n| return 1 if doubles.include?(n) }
  
  return 0
end