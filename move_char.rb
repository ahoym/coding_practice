# Write code to move char to the next position with the minimum space req.

def move_char(str)
	str.delete(str[-1]).prepend (str[-1])
end