class Dictionary

	def initialize
		@entries = {}
	end
	
	def add(entry)
		if entry.class == String 
			@entries[entry] = nil
		else
			@entries.merge!(entry)
		end
	end

	# Compares the letters of find_me and each entry. If they match, it is returned.
	def find(find_me)
		return @entries if @entries.nil?
		n = find_me.length - 1
		@entries.select {|k,v| find_me == k[0..n]}
	end	

	def include?(word)
		return nil if @entries.nil? 
		@entries.include?(word)
	end

	def keywords
		@entries.keys.sort
	end

	def entries
		@entries
	end

	def printable
		str = ''
		keywords.each {|key| str << "[#{key}] \""+@entries[key]+"\"\n"}
		str.strip
	end

end