def median(data):
  if len(data) % 2 != 0:
      median = sorted(data)[len(data) // 2]
  else:
      median = (sorted(data)[len(data) // 2] + sorted(data)[len(data) // 2 - 1]) / 2.0

  return median
      
# print median([1, 2, 3, 4, 5])
# print median([1, 2, 3, 4, 5, 6])