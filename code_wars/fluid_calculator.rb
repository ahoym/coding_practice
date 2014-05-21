class Calc
@@queue = []
@return_var
  
  def one
    @@queue.length+1 == 3 ?  (@return_var = eval(@@queue.join<<"1"); @@queue.clear; @return_var) : (@@queue << '1'; self)
  end

  def two
    @@queue.length+1 == 3 ? (@return_var = eval(@@queue.join<<"2"); @@queue.clear; @return_var) : (@@queue << '2'; self)
  end
  
  def three
    @@queue.length+1 == 3 ? (@return_var = eval(@@queue.join<<"3"); @@queue.clear; @return_var) : (@@queue << '3'; self)
  end
  
  def four
    @@queue.length+1 == 3 ? (@return_var = eval(@@queue.join<<"4"); @@queue.clear; @return_var) : (@@queue << '4'; self)
  end
  
  def five
    @@queue.length+1 == 3 ? (@return_var = eval(@@queue.join<<"5"); @@queue.clear; @return_var) : (@@queue << '5'; self)
  end
  
  def six
    @@queue.length+1 == 3 ? (@return_var = eval(@@queue.join<<"6"); @@queue.clear; @return_var) : (@@queue << '6'; self)
  end
  
  def seven
    @@queue.length+1 == 3 ? (@return_var = eval(@@queue.join<<"7"); @@queue.clear; @return_var) : (@@queue << '7'; self)
  end
  
  def eight
    @@queue.length+1 == 3 ? (@return_var = eval(@@queue.join<<"8"); @@queue.clear; @return_var) : (@@queue << '8'; self)
  end
  
  def nine
    @@queue.length+1 == 3 ? (@return_var = eval(@@queue.join<<"9"); @@queue.clear; @return_var) : (@@queue << '9'; self)
  end

  def plus
    @@queue << '+'
    self
  end
  
  def minus
    @@queue << '-'
    self
  end
  
  def times
    @@queue << '*'
    self
  end
 
  def divided_by
    @@queue << '/'
    self
  end
end

p Calc.new.four.plus.five
p Calc.new.one.plus.one