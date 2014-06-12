wrong_hash = { :a => "banana", :b => "cabbage", 
	:c => "dental_floss", :d => "eel_sushi"}

hash = wrong_hash.invert
puts hash.each { |k,v| hash[k] = v.next}.invert
