def top_3_words(text)
  frequencies = Hash.new(0)
  text.downcase.scan(/[a-z']+/).each {|word| frequencies[word] += 1}
  frequencies.delete_if {|k,v| k == "'"}
  frequencies = frequencies.sort_by {|k,v| v}.reverse
  ans = []
  3.times { ans << frequencies.shift }
  p ans.compact.map{|x| x[0]}
  
end

def top_3_words(text)
  # Build a hash of { word => count }
  occurrences_hash = Hash.new(0)
  text.scan(/[a-z']+/i) do |word|
    occurrences_hash[word.downcase] += 1 if word.match /[a-z]/i
  end

  occurrences_hash.
    sort_by(&:last).  # Sort by the word-count pairs by count,
    last(3).          # Take the last 3,
    reverse.          # Reverse it so it ends up in the correct order,
    map(&:first)      # And take only the words.
end

def top_3_words(text)
  count = Hash.new { 0 }
  text.scan(/\w+'*\w*/) { |word| count[word.downcase] += 1 }
  count.map{|k,v| [-v,k]}.sort.first(3).map(&:last)
end