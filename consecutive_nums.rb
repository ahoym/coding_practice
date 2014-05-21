
# Sorts the input array, then subtracts each element by the previous element,
#   then subtracts 1 to find the numbers in between the two affected elements.
def Consecutive(arr)
  temp = arr.sort!
  nums_needed = 0

  (1...(temp.length)).each do |i|
    nums_needed += ((temp[i]).abs - (temp[i-1]).abs - 1)
  end
  
  return nums_needed
         
end

# Takes the minimum and maximum of the array, then using those as the limits
#   of a range, a counter is added to every number between the limits if the 
#   number, i, is not in the array.
def ConsecutiveII(arr)
  count = 0

  ((arr.min)..(arr.max)).each do |i|
    count += 1 if !arr.include?(i)
  end

  return count

end