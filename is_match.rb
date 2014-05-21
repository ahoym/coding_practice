# Given a regular expression with characters a-z, '*', '.'
#    Find the if that string can match another string with characters a-z
#    '*' can delete the character before it, and '.' can match whatever character
#    Ex:
=begin

describe "is match" do
	describe "isMatch" do
		it "should return true" do
			isMatch("a*","") = true
		end

		it "should return false" do
			isMatch(".","") = false
		end

		it "should return true" do
			isMatch("ab*","a") = true
		end

		it "should return true" do
			isMatch("a.","ab") = true
		end

		it "should return true" do
			isMatch("a","a") = true
		end
	end
end

=end

def isMatch(str1,str2)

# Scan for special cases, enter into a case statement. Scan puts the 
#   operators into an array so arr[0] is required to extract the string.
arr = str1.scan(/\*|\./)
	case arr[0]
		when nil
			return (str2 == str1) ? true : false
		when "*"
			return (str2 == str1 || str2 == str1[0...-2]) ? true : false
		when "."
			# String1 with the '.' must equal str2. This statemement is necessary
			#   because the ternary operator compares the letters of both strings
			#   up to the character before str1's '.' Without the statement, would
			#   get a false 'true'
			return false if str1.length - 1 == str2.length
			return (str2 == str1 || str2[0..(str1.length-2)] == str1[0..-2]) ? true : false
		else
			return false
	end

end
