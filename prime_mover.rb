# Write a program that gives the num prime number. eg, 9 = 23.
=begin
def PrimeMover(num)

  return 2 if num == 1
  num_prime = 1
  it_is = 0
  i = 3
  
  until num_prime == num   
    j = 3
    prime = true

    while i > j
      if i % j == 0
      	prime = false
        break
      end
      j += 2
    end

    if prime == true
    	num_prime += 1
    	it_is = i
    end

    i += 2
  end
         
   it_is
end
=end

# ----------------------------- A VERY efficient method of doing this ----

# If the number is less than 2 or even, it is obviously not a prime number.
#    This is placed in the beginning to maximize efficiency.
#    -- Checking only the odd numbers for primes. SMART!
#    -- Square roots the num to lower the numbers it checks. SMART!
def is_prime(num)
  return false if num < 2 || (num % 2 == 0)
  limit = Math.sqrt(num)+1

  (3..limit).step(2) do |n|
    return false if num % n == 0
  end

  return true
end

def prime_mover(num)
  i_primes = 1
  tempNum = 1

  until i_primes == num
    tempNum += 2
    i_primes += 1 if is_prime(tempNum)
  end

  tempNum = 2 if num == 1
  puts  "The #{num} prime number is: #{tempNum}"

end