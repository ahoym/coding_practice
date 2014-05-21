# Given a string containing letters, '+', and '=', create a program that will
#     etermine whether an input string is valid or not. Valid cases contain
#     letters that are sandwiched between '+'

def SimpleSymbols(str)
	status = false
	i = 0

	while i < str.length-1
		if ((str[i] =~ /[a-z]/).nil? == false) && (i != 0 && str[i-1] == '+') && (str[i+1] == '+')
			status = true
		elsif ((str[i] =~ /[a-z]/).nil? == false) && (str[i-1] != '+') || (str[i+1] != '+')
			status = false
		end
        i += 1
	end

	return status
   
end