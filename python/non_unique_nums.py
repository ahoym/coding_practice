'''
Write a function that given an array, returns an array with all NON-duplicates removed.
eg,


non_unique_nums([1, 2, 3, 1, 4]) #=> [1, 3, 1, 3]
'''

def non_unique_nums(arr):
  dups = []
  
  for el in arr:
    if arr.count(el) > 1:
      dups.append(el)
  
  return dups


def non_unique_numsII(arr):
  return [el for el in data if data.count(el) > 1]

