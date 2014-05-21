# Write a program that prints out a given array, list, into an ordered
#   condensed list. Consecutive numbers will be displayed as low-high.
#  eg, -- solution[-6,-3,-2,-1,0,1,3,4,5,7,8,9,10,11,14,15,17,18,19,20]
#          will == "-6,-3-1,3-5,7-11,14,15,17-20"

def solution(list)
	list.sort!
	str = ''
	i = 0
	while i < list.size
		if (list[i..(i+2)] != [list[i],list[i]+1,list[i]+2]) || i == list.size-1
			str << "#{list[i]},"
			i += 1
			next
		end
		low = list[i]
		while list[i+1] == list[i]+1 && i+1 <= list.size-1
			max = list[i+1]
			i += 1
		end
		i += 1
		str << "#{low}-#{max},"
	end
	str[0..-2]
end

#==========================================================================
def solution list
  array = [[list.first]]
  list[1..-1].each { |x| array.last[-1] +  1 == x ? array.last << x : array << [x] }
  array.map{ |x| x.size > 2 ? "#{x[0]}-#{x[-1]}" : x.join(',') }.join(',')
end

#============================================================================
def solution(list)
  res = [[list.first]]
  list[1..-1].each do |num|
    res.last[-1].succ == num ? res.last << num : res << [num]
  end
  res.map!{ |r| r.size > 2 ? ["#{r.first}-#{r.last}"] : r }
  res.flatten.join(',')
end

def solution(list)
  lis = ""
  for x in 0...list.length
    if list[x+1] == list[x] + 1 && list[x - 1] == list[x] - 1 
      next
    elsif list[x+1] != list[x] + 1 || list[x + 2] != list[x] + 2
      lis += list[x].to_s + ","
    else
        lis += list[x].to_s 
        lis += "-" if list[x + 2] == list[x] + 2
    end
end
    lis[0..-2]
end