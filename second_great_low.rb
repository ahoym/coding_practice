# Write a program that finds the second highest and second lowest numbers.
#    Return them as a string containing the 2nd lowest and 2nd greatest, resp.
#    -- eg, [1, 42, 42, 100] => "42 42"
#    -- eg, [90, 4] => "4 90"
#    -- eg, [100, 200, 3, 400, 5, 1] => "3 200"

def SecondGreatLow(arr)

  max = arr.max
  min = arr.min
  string_it = ''
  
  if arr.length > 2
    arr.delete(max)
    arr.delete(min)
  end
  
  string_it = arr.min.to_s + ' ' + arr.max.to_s
  
  return string_it
         
end