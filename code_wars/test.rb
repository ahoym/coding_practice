class SantaClaus
	def say_ho_ho_ho
		"ho ho ho"
	end

	def distribute_gifts
		"hands out gifts"
	end

	def go_down_the_chimney
		"Whoosh"
	end

end


class DummySantaClaus

	def distribute_gifts
		"hands out gifts"
	end

	def method1
	end

	def say_ho_ho_ho
		"ho ho ho"
	end

	def go_down_the_chimney
		"Whoosh"
	end
end

def is_santa_clausable(obj)
  (obj.class.instance_methods - Object.methods).sort & [:say_ho_ho_ho,:distribute_gifts,:go_down_the_chimney] == [:say_ho_ho_ho,:distribute_gifts,:go_down_the_chimney].sort
end

#def is_santa_clausable(obj)
#  (obj.class.instance_methods - Object.methods).sort == [:say_ho_ho_ho,:distribute_gifts,:go_down_the_chimney].sort
#end

p is_santa_clausable(SantaClaus.new)
p is_santa_clausable(DummySantaClaus.new)
