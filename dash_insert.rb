# Write a program that takes a number and returns a string
#   with a dash ('-') in between consecutive odd numbers.

def DashInsert(num)
  return_me = ''
  
  (num.to_s.length).times do |n|
    return_me << num.to_s[n]
    if num.to_s[n].to_i % 2 == 1 && num.to_s[n+1].to_i % 2 == 1
      return_me << '-'
    end
  end
  
  return_me
end