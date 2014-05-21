def common_substrings(str1, str2)
	letters = str1.split(//)
	n = letters.count 
	str1_substrings = []
	i = 0

	# Finds all substrings of str1
	while i < n
		(letters.count).times {|x| str1_substrings << letters[0..x].join}
		letters.shift
		i += 1
	end 

	# Checks for the longest substrings from str1, that is in str2
	longest = ''
	str1_substrings.each do |w| 
		if str2.include?(w) 
			longest = (w.length > longest.length ? w : longest)
		end
	end

	longest
end

def common_substringsI(str1,str2)
  longest = ''
  str1.length.times do |i|
    j = i+1
    while j < str1.length
      if str2.include?(str1[i..j])
        longest = (j-i > longest.length ? str1[i..j] : longest)
      end
      j += 1
    end
  end
  longest
end

def common_substringsII(str1, str2)
  str1_substrings = []
  str1.length.times { |i| str1_substrings += str1.split(//).each_cons(i+1).to_a.map(&:join) }
  str1_substrings.reverse.each {|s| return s if str2.include?(s)}
  return ""
end

p common_substringsI("zooglensuck","lenscrafter")
p common_substrings("abc","xyz")