def is_prime(num)
  return true if num == 2

  return false if num < 2 || num % 2 == 0
  
  (3..(Math.sqrt(num)+1)).step(2) do |n|
    return false if num % n == 0
  end
  
  return true
end

def can_be_prime(num)
  digits = num.to_s.scan(/[0-9]/)

  digits.length.times do |i|
    temp.delete_at(i)


end
