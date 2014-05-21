=begin
	Given a map of words and their translations, generate a list of all 
	possible unique combinations of translations, sorted lexically.
=end


def possibilities(words)
  words.keys.each do |key|
  	words[key].sort!
  	combinations = []
  	(words[key].size).times do |i|
  		combinations += words[key].combination(i+1).to_a
  	end
  	words[key] = combinations.sort
  end

  words
end

# =====================================================================
def possibilities(words)
  words.reduce({}) {|result, (word, translations) | result[word] = permute(translations); result }
end

def permute(list)
  (1..list.size).reduce([]) {|result, size| list.combination(size).map(&:sort) + result}.sort
end

# =====================================================================
def possibilities(words)
  Hash[words.map { |k,v|
    [k, v.sort.repeated_combination(v.size).map(&:uniq).uniq.sort]
  }]
end

# ========================================================================
def possibilities(words)
  hash = {}
  words.each do |k,v|
    hash[k] = []
    (0...v.size).each do |i|
      (i...v.size).each do |j|
        hash[k] << v[i..j].sort
      end
      (i+2...v.size).each do |h|
        hash[k] <<  [v[i],v[h]].sort
      end
    end
    hash[k].sort_by!{|x| x.join('')}
  end
  hash
end