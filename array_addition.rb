# Write a program that takes the largest number in a set and determines
#   whether any combination of numbers in the set can sum to that number.
#   -- eg, ArrayAddition([3,5,-1,8,12,24]) = true
#   -- eg, ArrayAddition([2,5,8,4]) = false

# Polynomial time complexity O(n**3) and linear space complexity O(n). Better way to do this without built in ruby methods?
def array_addition(arr)
  return false if arr.length < 2
  max = arr.max
  seen = []

  # i is the base of where a potential combination will occur.
  (0...arr.length).each do |i|
    next if arr[i] == max
    test = arr[i]
    combo = [] << arr[i]
    
    # j and k are 'slow' and 'fast' iterators, respectively.
    (0...arr.length).each do |j|
      next if arr[i] == max
      (0...arr.length).each do |k|
        next if arr[i] == max
        next if j == k || i == k
        combo << arr[k]
        test += arr[k]
        if test == max
          print combo
          return true
        end 
      end

      seen << combo
      combo = [] << arr[i]
      test = arr[i]
    end
  end

  false
end

# ------------------ Using .combination -----------------

def ArrayAdditionI(arr)
  nmax = arr.max
  ar = 2.upto(arr.size).flat_map do |n|
  arr.combination(n).to_a
  end
  p ar 
  ar.each do |x| 
    return true if x.inject(:+) == nmax
  end

  false
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

  end
end

# ---------------
