# Write a  program that converts a number (0-255) to its hexadecimal
#   form. eg, 255 => FF

@color_hash = {
  0 => '0',
  1 => '1',
  2 => '2',
  3 => '3',
  4 => '4',
  5 => '5',
  6 => '6',
  7 => '7',
  8 => '8',
  9 => '9',
  10 => 'A',
  11 => 'B',
  12 => 'C', 
  13 => 'D', 
  14 => 'E', 
  15 => 'F'
}

def rgb(r, g, b)
  return hexdec(r) + hexdec(g) + hexdec(b)
end

def hexdec(var)
	return @color_hash[var/16] + @color_hash[var%16]
end

# ------------- CHEESE -------------------

def rgbII(*args)
  "%02X%02X%02X" % args.map {|n| ([0,([n,255].min)]).max }
end