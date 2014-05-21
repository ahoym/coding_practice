# Flattened keys
=begin
unflat = {
  id: 1, 
  info: { 
    name: 'example', 
    more_info: {
      count: 1
    }
  }
}
=end 
# flat equals {id: 1, info_name: 'example', info_more_info_count: 1}
class Hash
	def flattened_keys
		until self.values.all?{|e| e.class != Hash}
		new_hash = {}
		self.each do |k,v|
			next if v.class != Hash

			v.each do |name, value|
				if name.class == String
					new_hash["#{k.to_s}_#{name.to_s}"] = value
				else
					new_hash["#{k.to_s}_#{name.to_s}".to_sym] = value
				end
				v.delete(name)
			end

			self.delete(k)
		end
		self.merge!(new_hash)
		end
		p self
	end
end

a = {a: 1, "b" => {c: 2, "d" => 3, e: {"f"=> nil}}}
#a = {a: {"b"=>1}}
a.flattened_keys