def solution(a)
  deepest = -1
  i = 0
 
  while i < a.length - 2
    j = i + 1
 
    if a[j] >= a[i]
      i += 1
      next
    end
 
    p = i
 
    until j >= a.length - 1 || a[j + 1] > a[j]
      break if a[j + 1] == a[j]
      j += 1
    end
    if a[j + 1] == a[j]
      q = j
      i += 1
      next
    end
    break if a[j + 1].nil?
    q = j

 
    k = j + 1
    until k >= a.length - 1 || a[k + 1] < a[k]
      break if a[k + 1] == a[k]
      k += 1
    end
    r = k

    current_deepest = [a[p] - a[q], a[r] - a[q]].min
    deepest = current_deepest if current_deepest > deepest
 
    i = k
  end
 
  deepest 
end

p solution([0, 1, 3, -2, 0, 1, 0, -3, 2, 3])      # => 4. Example1
p solution([0, 1, 3, -2, 3, 1, 0, -3, 4, 6])      # => 6. Example2
p solution([3, 2, 1, 3])                          # => 2. Simple
p solution([0, 0, 0, 0, 0, 0, 0])                 # => -1. No desc/asc
p solution([5, 4, 3, 2, 1, 1, 1])                 # => -1. No asc
p solution([1, 2, 3, 4, 5, 5, 5])                 # => -1. No desc
p solution([1, 2, 3, 4, 5, 5, 1])                 # => -1. Mountain
p solution([1, 5, 4, 3, 2, 1, 0])                 # => -1. Mountain
p solution([])                                    # => -1. Not enough args
p solution([1])                                   # => -1. Not enough args
p solution([1, 2])                                # => -1. Not enough args/no desc
p solution([2, 1])                                # => -1. Not enough args/no asc
p solution([5, 4, 3, 2, 1, 1, 5])                 # => -1. Valley - not 'strictly desc/asc'
p solution([5, 4, 3, 2, 1, 1, 1, 5])              # => -1. Deep Valley - " " " 
p solution([-1, -2, -3, -2, -1])                  # => 2. Testing negatives
p solution([5, 4, 3, 2, 1, 4, -10, 2, 3])         # => 13. Example3
p solution([5, 4, 3, 2, 1, 2, 3, -10, 4])         # => 13. Example4
p solution([5, 0, 6, -1, 6])                      # => 7. W-Shape
p solution([1, 2, 3, 4, 3, 3, 4, 3, 2, 1])        # -> -1. Volcano - not 'strictly desc/asc'
p solution([100, 20, 20, 19, 100])                # => 1. 'strictly descending'
p solution([100, 19, 20, 20, 100])                # => 1. 'strictly ascending'
