
range1 = [0,4]
range2 = [3,8]

def overlap(range1, range2)
    
r1_min = range1[0]
r1_max = range1[1]

r2_min = range2[0]
r2_max = range2[1]

print r1_only = r2_min < r1_max ? [r1_min, r2_min] : [r1_min, r1_max] 
puts
print both = r2_min > r1_max ? puts("The ranges do not overlap!") : [r2_min, r1_max]
puts
print r2_only = r2_min < r1_max ? [r1_max, r2_max] : [r2_min, r2_max]
puts

end

overlap(range1,range2)




