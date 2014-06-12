# Write a program that divides a two numbers, num1 by num2, and produces
#   the answer as a string with numbers in comma form. 
#   -- eg, 123456789 / 10000 => 12345 => '12,345'


# Converts the answer to a string, every third number adds a comma. Does 
#    this by...
#    -- Checks if the character is a ','. If not, a value is added to the counter.
#    -- Once the counter reaches 3, a comma is added. The counter is then reset.
  def DivisionStringified(num1,num2)
  ans = (num1/num2).to_s
  
  return ans if ans.length < 4

  num_count = 0
  i = -1
  while i > (-ans.length)
    if ans[i] != ','
      num_count += 1
      if num_count == 3
        ans.insert(i-1,',')
        num_count = 0
      end
    end
    i -= 1
  end  

  return ans  

end


# Takes the string, converts it to an array, and inserts ',' at the 
#    appropriate index
def DivisionStringifiedII(num1,num2)
  ans = (num1 / num2).to_s
  return ans if ans.length < 4

  str_array = ans.split(//)
  len = str_array.length
  index = 1

  while len-1-3*index >= 0
    str_array.insert(len-3*index,',')
    index += 1
  end

  return str_array.join

end

# Clean method that takes the answer, and groups up 1000s by modulusing
#    the answer by 1000, and then joining the groups with a ','
def DivisionStringifiedIII(num1,num2)
  ans = (num1 / num2)
  groups_arr = []

  while ans > 0
    groups_arr << (ans%1000).to_s
    ans /= 1000
  end

  return groups_arr.reverse.join(',')
end