# Write a program that takes an array of numbers and determines its mean
#   and its mode. If they are equal, return 1. If not, return 0.

def MeanMode(arr)
  mode = 0
  count = 0
  arr.each do |i| 
    if arr.count(i) > count 
      mode = i 
      count = arr.count(i)
    end
  end
  puts mode
  
  mean = (arr.inject(0) {|sum,num| sum + num} ) / arr.length
  puts mean

  return (mode == mean ? 1 : 0)
         
end