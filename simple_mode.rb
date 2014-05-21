# Write a program that analyzes an array and determines which number
#    appears the most frequently (the mode). If more than one number
#    has the same highest mode, report the first one. If there is no
#    highest mode, return -1


# This program is a little overthought. It reports the most frequent number,
#    but if more than one number shares the high mode, it reports -1.
#    To revert it to the simpler version take out just_checking and the .all? 
def SimpleMode(arr)
  just_checking = []
  max = 0
  freq_num = 0
  
  arr.length.times do |i|
    just_checking << arr.count(arr[i]) if arr.index(arr[i]) <= i
    if arr.count(arr[i]) > max
      max = arr.count(arr[i])
      freq_num = arr[i]
    end
  end
  

  return -1 if just_checking.all? do |i| 
    ((test = [] << i)*arr.length) == just_checking
  end
  
  # code goes here
  return freq_num 
         
end