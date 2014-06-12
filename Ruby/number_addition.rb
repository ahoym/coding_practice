# Write a program that accepts an input string that contains
#    numbers, takes those numbers, and adds them.

def NumberAddition(str)

  return str.scan(/\d+/).inject(0) {|sum,num| sum + num.to_i}
        
end