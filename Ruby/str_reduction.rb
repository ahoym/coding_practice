require 'benchmark'
# "cab" => "cc" || "bb"
# "bcab" => "aab" => "ac" => "b"
#  

def str_reduce(blah)
	replace_with_a = "(bc|cb)"
	replace_with_b = "(ac|ca)"
	replace_with_c = "(ab|ba)"
	hsh = {
		"(bc|cb)" => "a",
		"(ac|ca)" => "b",
		"(ab|ba)" => "c"
	}
	rotation = [replace_with_a,replace_with_b,replace_with_c]

	rotation.permutation(3).to_a.map do |shit|
		str = blah.dup
		while str.split(//).uniq.length > 1
			str = str.gsub(/#{shit[0]}/,hsh[shit[0]]).gsub(/#{shit[1]}/,hsh[shit[1]]).gsub(/#{shit[2]}/,hsh[shit[2]])
		end
		str.length
	end.min
end

# ================== Will Carr's =======================
def string_reduction(string)   
    array = string.split('')
    while array.uniq.length > 1      
        i = 0 
        while (i < array.length - 1) 
            if (array[i] != array[i+1] && (((array.count(array[i]) != 1) || (array.count(array[i+1]) != 1)) || (array.length < 4)))           
                case (array[i].each_byte.first + array[i+1].each_byte.first - 96*2) 
                when 3
                    array[i+1] = "c"
                    array.delete_at(i)
                when 4
                    array[i+1] = "b"
                    array.delete_at(i)
                when 5
                    array[i+1] = "a"
                    array.delete_at(i)
                end
            end
            i += 1
        end        
    end   
   return array.length
end


iterations = 100_000
Benchmark.bm do |bm|
	bm.report("Will Carr's solution") do
		iterations.times do
			string_reduction('abcabcabcabcabcabcabcabcabc')
		end
	end

	bm.report("Malcolm Ahoy's solution") do
		iterations.times do
			str_reduce('abcabcabcabcabcabcabcabcabc')
		end
	end
end

