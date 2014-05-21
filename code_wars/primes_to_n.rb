# Efficiency
def prime(n)
  return [] if n < 2
  primes = [2]  
  (3..n).step(2) {|n| primes << n if is_prime(n) }
  primes
end

def is_prime(n)
	return false if n.even?
  limit = Math.sqrt(n)+1
    (3..limit).step(2) do |num|
      return false if n % num == 0
    end

  return true
end

#Elegant
def primeI(n)
  list = (2..n).to_a
  list.each{ |i| list.delete_if{ |j| j > i && j % i == 0 } }
end

def primeII(n)
    (2..n).reject do |i|
      (2...i).any?{|o| i % o == 0}
    end
  end