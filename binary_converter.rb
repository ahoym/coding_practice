# Write a program that converts a string of binary numbers to decimal form.
#   -- eg, '011' => '3'
#   --     '100101' => '37' 

def binary_converter(str)
  decimal = 0

  (str.length).times do |n|
    if str[n] == '1'
      decimal += 2**(str.length-1-n)
    end
  end

  decimal       
end