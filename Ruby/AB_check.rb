# Write a program that analyzes a string and returns true if the letters
#   'a' and 'b' are separated by exactly 3 (character) spaces.

def ab_check(str)
  str_arr = str.downcase.split(//)
  str_status = false
  
  str_arr.count.times do |i|
    if (str_arr[i] == 'a' && str_arr[i + 4] == 'b') || (str_arr[i] == 'b' && str_arr[i + 4] == 'a')
      str_status = true
    end
  end
  
  str_status       
end