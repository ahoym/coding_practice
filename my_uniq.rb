# practice doing a my_uniq method. 


# Method that creates a new array, uniques, and returns that. 
#    This method is also how .uniq would return.
def my_uniq(array)
    uniques = []
    array.select{|i| uniques << i unless uniques.include?(i)}
end

# Another method, directly changes arr
def my_uniq(arr)
  arr.each do |i|
    arr.insert(arr.index(i), arr.delete(i)) if arr.count(i) > 1
  end

  return arr
end