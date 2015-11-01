def search_substr( fullText, searchText, allowOverlap = true )
  return 0 if searchText.empty?
  return fullText.scan(searchText).size if allowOverlap == false
  i = fullText.index(searchText,0)
  return 0 if i.nil
  count = 1 # first instance found above
  until fullText.index(searchText,i+1).nil?
  	next_one = fullText.index(searchText,i+1)
  	i += 1
  	count += 1 if next_one == i
  end
  return count
end

# REGEX MASTAAAAAAA =====================
def search_substrI( fullText, searchText, allowOverlap = true )
  if searchText == ''
    0
  else
    fullText.scan(allowOverlap ? (/(?=(#{searchText}))/) : searchText).size
  end
end