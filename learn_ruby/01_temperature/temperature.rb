# Write two methods, ftoc and ctof to convert fahrenheit to celsius
#       and vice-versa.
# NOTE: 1 F = 5/9 C 

def ftoc(fahrenheit)
	celsius = (5.0/9.0)*(fahrenheit.to_f-32)

end

def ctof(celsius)
	fahrenheit = ((9.0/5.0)*celsius.to_f) + 32
end