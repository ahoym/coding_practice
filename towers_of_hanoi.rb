pole1 = [5,4,3,2,1]
pole2 = []
pole3 = []
choice1 = []
choice2 = []
    
# Winning condition is to move the stack to another pole.
until (pole2 == [5,4,3,2,1]) || (pole3 == [5,4,3,2,1])

puts "Which pole would you like to take from? (1,2,3)"
input = gets.chomp
    
    case input
        when "1" then choice1 = pole1
        when "2" then choice1 = pole2
        when "3" then choice1 = pole3
        else puts "That's not one of the poles!"
             puts 
            redo 
    end
    # Checks if the initial pole chosen has anything on it.
    if choice1.empty? 
        puts "There's nothing on that pole!"
        puts 
        redo
    end
            
            
puts "Which pole would you like to place it?"
input2 = gets.chomp
    
    case input2
        when "1" 
            choice2 = pole1
            if choice2.empty?
                pole1 << choice1.pop
            elsif choice2.last < choice1.last
            puts "You can't put a bigger disc on a smaller disc!"
            puts
            else
                pole1 << choice1.pop
            end
            puts "Pole1 : #{pole1}"
            puts "Pole2 : #{pole2}"
            puts "Pole3 : #{pole3}"
        when "2" 
            choice2 = pole2
            if choice2.empty?
                pole2 << choice1.pop
            elsif choice2.last < choice1.last
            puts "You can't put a bigger disc on a smaller disc!"
            puts
            else
                pole2 << choice1.pop
            end
            puts "Pole1 : #{pole1}"
            puts "Pole2 : #{pole2}"
            puts "Pole3 : #{pole3}"
        when "3" 
            choice2 = pole3
            if choice2.empty?
                pole3 << choice1.pop
            elsif choice2.last < choice1.last
            puts "You can't put a bigger disc on a smaller disc!"
            puts
            else
                pole3 << choice1.pop
            end
            puts "Pole1 : #{pole1}"
            puts "Pole2 : #{pole2}"
            puts "Pole3 : #{pole3}"
        else puts "That's not one of the poles!"
            puts
            redo
    end
end 
puts "Nicely done!"

