# ========== Description ===========
# Write a program that determines whether a sequence of numbers (array) is
#    "Arithmetic" or "Geometric". It is arithmetic if the step is addition/subtraction
#    and it is geometric if the step is multiplication/division.
# ==================================

# Takes a test segment that is at least 1/3 of the given array.
# The + 2 at the end of (arr.length/3)+2 ensures the test sample is at least
# 3 numbers long. Doesn't work if there are ninja numbers inside the seq.
def ArithGeo(arr)

  test = arr.slice(0,(arr.length/3)+2)+ arr.slice(-3,(arr.length/3)+2)
  arith1 = (test[2] - test[1]) == (test[1] - test[0])
  arith2 = (test[-1] - test[-2]) == (test[-2] - test[-3])
  geo1 = (test[2] / test[1]) == (test[1] / test[0])
  geo2 = (test[-1] / test[-2]) == (test[-2] / test[-3])
  
  if arith1 == true && arith2 == true && (test[-1] - test[-2]) == (test[1] - test[0]) 
    return "Arithmetic"
  elsif geo1 == true && geo2 == true && (test[-1]/test[-2]) == (test[1] / test[0])
    return "Geometric"
  else
    return -1
  end
    
  # code goes here
  return arr 
         
end

# ------------------------ New and Clean. Iterates through all numbers to 
#       prevent ninja numbers.

def arith_geo(arr)
  return -1 if arr.length < 2
  alist = []
  glist = []
  (1...arr.length).each do |n| 
    alist << arr[n] - arr[n - 1]
    glist << arr[n] / arr[n - 1]
  end
  
  return "Arithmetic" if alist.all? { |diff| diff != 0 && diff == arr[1] - arr[0] }
  return "Geometric" if glist.all? { |quot| quot == arr[1] / arr[0] }

  -1       
end
