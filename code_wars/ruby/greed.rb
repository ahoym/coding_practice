=begin
Greed is a dice game played with five six-sided dice. Your mission, should 
you choose to accept it, is to score a throw according to these rules. You 
will always be given an array with five six-sided dice values.

 Three 1's => 1000 points
 Three 6's =>  600 points
 Three 5's =>  500 points
 Three 4's =>  400 points
 Three 3's =>  300 points
 Three 2's =>  200 points
 One   1   =>  100 points
 One   5   =>   50 point

 A single die can only be counted once in each roll. For example, a "5" can
  only count as part of a triplet (contributing to the 500 points) or as a 
  single 50 points, but not both in the same roll.

Example scoring
 Throw       Score
 ---------   ------------------
 5 1 3 4 1   50 + 2 * 100 = 250
 1 1 1 3 1   1000 + 100 = 1100
 2 4 4 5 4   400 + 50 = 450

=end

def score( dice )
  score = 0
  numbers = Hash.new(0)
  dice.each {|e| numbers[e] += 1 }
  numbers.delete(0)

  (numbers[10] = numbers[1]; numbers.delete(1)) if numbers.key?(1) == true
    
  numbers.each do |k,v| 
    (score += k*100; v -= 3) if v >= 3
	score += v*k*10 if v > 0 && (k == 10 || k == 5)		
   end

  score
end


