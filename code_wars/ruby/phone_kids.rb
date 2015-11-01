class Mother
@subclasses = []

	def self.inherted(subclass)
		@subclasses << subclass
	end

	def phone
		"here!"
	end

	def self.phone_kids
		@subclasses.each(&:phone)
	end

end