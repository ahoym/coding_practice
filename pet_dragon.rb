class Dragon
  
  def initialize name
    @name = name
    @asleep = false
    @stuffInBelly     = 10  #  He's full.
    @stuffInIntestine =  0  #  He doesn't need to go.
    
    puts @name + ' is born.'
    dispatch()
  end

  def dispatch
    puts "\n What would you like to do with #{@name}? \n "
    puts "feed"
    puts "walk"
    puts "putToBed"
    puts "toss"
    puts "rock"
    puts "Type as exactly as shown!"
    input = gets.chomp

    case input
        when 'feed' then feed()
        when 'walk' then walk()
        when 'putToBed' then putToBed()
        when 'toss' then toss()
        when 'rock' then rock()
        else 
          puts "That's not an option"
          dispatch()
    end
  end

  def feed
    puts "\n You feed " + @name + ". \n "
    @stuffInBelly = 10
    passageOfTime
    dispatch()
  end
  
  def walk
    puts "\n You walk " + @name + ". \n"
    @stuffInIntestine = 0
    passageOfTime
    dispatch()
  end
  
  def putToBed
    puts "\nYou put " + @name + " to bed. \n "
    @asleep = true
    3.times do
      if @asleep
        passageOfTime
      end
      if @asleep
        puts "\n" + @name + " snores, filling the room with smoke. \n "
      end
    end
    if @asleep
      @asleep = false
      puts "\n" + @name + " wakes up slowly. \n "
    end
    dispatch()
  end
  
  def toss
    puts "\n You toss " + @name + " up into the air."
    puts "He giggles, which singes your eyebrows. \n "
    passageOfTime
    dispatch()
  end
  
  def rock
    puts "\n You rock " + @name + " gently. \n "
    @asleep = true
    puts "\n He briefly dozes off... \n "
    passageOfTime
    if @asleep
      @asleep = false
      puts "...but wakes when you stop. \n "
    end
    dispatch()
  end
  
  private
  
  #  "private" means that the methods defined here are
  #  methods internal to the object.  (You can feed
  #  your dragon, but you can't ask him if he's hungry.)
  
  def hungry?
    #  Method names can end with "?".
    #  Usually, we only do this if the method
    #  returns true or false, like this:
    @stuffInBelly <= 2
  end
  
  def poopy?
    @stuffInIntestine >= 8
  end
  
  def passageOfTime
    if @stuffInBelly > 0
      #  Move food from belly to intestine.
      @stuffInBelly     = @stuffInBelly     - 1
      @stuffInIntestine = @stuffInIntestine + 1
    else  #  Our dragon is starving!
      if @asleep
        @asleep = false
        puts "\n He wakes up suddenly! \n"
      end
      puts "\n" + @name + " is starving!  In desperation, he ate YOU! \n "
      exit  #  This quits the program.
    end
    
    if @stuffInIntestine >= 10
      @stuffInIntestine = 0
      puts "\n Whoops!  " + @name + " had an accident... \n"
    end
    
    if hungry?
      if @asleep
        @asleep = false
        puts "\n He wakes up suddenly! \n "
      end
      puts "\n" + @name + "\'s stomach grumbles... \n"
    end
    
    if poopy?
      if @asleep
        @asleep = false
        puts "\n He wakes up suddenly! \n"
      end
      puts "\n" + @name + " does the potty dance... \n"
    end
  end
  
end