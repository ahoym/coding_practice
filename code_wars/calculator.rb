class Calculator
  def evaluate(string)
    return string.to_i if (string=~/[*+\-\/]/).nil?
    arr = string.split(' ')
    until arr.include?("\/") == false && arr.include?("*") == false
      scanned = arr.index {|e| e == "*" || e == "\/"}
      if arr[scanned] == "\/"
        i = arr.index("\/")
        mod = arr[i-1].to_i / arr[i+1].to_i
        arr.delete_at(i-1)
        arr.delete_at(i-1)
        arr[i-1] = mod
      else
        i = arr.index("*")
        mod = arr[i-1].to_i * arr[i+1].to_i
        arr.delete_at(i-1)
        arr.delete_at(i-1)
        arr[i-1] = mod
      end
    end

    until arr.include?("\+") == false && arr.include?("\-") == false
      scanned = arr.index {|e| e == "\+" || e == "\-"}
      if arr[scanned] == "\+"
        i = arr.index("\+")
        mod = arr[i-1].to_i + arr[i+1].to_i
        arr.delete_at(i-1)
        arr.delete_at(i-1)
        arr[i-1] = mod
      else
        i = arr.index("\-")
        mod = arr[i-1].to_i - arr[i+1].to_i
        arr.delete_at(i-1)
        arr.delete_at(i-1)
        arr[i-1] = mod
      end
    end
    return arr[0]
end
end


class Calculator
  def evaluate(string)
    s = string.dup
    while s.match(/[*\/]/)
      s.sub!(/(-?\d+) ([*\/]) (-?\d+)/) { |m| $2 == '*' ? $1.to_i * $3.to_i : $1.to_i / $3.to_i }
    end
    while s.match(/ [+-] /)
      s.sub!(/(-?\d+) ([+-]) (-?\d+)/) { |m| $2 == '+' ? $1.to_i + $3.to_i : $1.to_i - $3.to_i }
    end
    s.to_i
  end
end

