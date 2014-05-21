# Write a program that takes the largest number in a set and determines
#   whether any combination of numbers in the set can sum to that number.
#   -- eg, ArrayAddition([3,5,-1,8,12,24]) = true
#   -- eg, ArrayAddition([2,5,8,4]) = false

def ArrayAddition(arr)
  max = arr.delete(arr.max)
  seen = []

  (0...arr.length).each do |i|
    test = arr[i]
    combo = [] << arr[i]

    (0...arr.length).each do |j|

      (0...arr.length).each do |k|
        next if j == k || i == k
        combo << arr[k]
        test += arr[k]
        if test == max
          print seen
          return true
        end 
      end

      seen << combo
      combo = [] << arr[i]
      test = arr[i]
    end
  end

  print seen
  return false
end

# ------------------ Using .combination -----------------

def ArrayAdditionI(arr)
  nmax = arr.max
  ar = 2.upto(arr.size).flat_map do |n|
  arr.combination(n).to_a
  end
  p ar 
  ar.each do |x| if x.inject(:+) == nmax
                    return 'true'
    end
  end
  # code goes here
  return 'false'
         
end

#-------------------------

def combinations(array)
  m = array.length
  blah = []
  (1...2**m).map do | n |
    print n
    blah << (0...m).select do | i | 
      n[i] == 1
    end

    print blah
  end

end