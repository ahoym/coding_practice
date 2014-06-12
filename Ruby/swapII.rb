# Write a program that swapcases and swaps numbers if they encompass
#   letters (without spaces!)

def SwapII(str)
  str = str.swapcase!
  c = 0
  
  while c < str.length
    valid = true
    if str[c] =~ /[0-9]/ && c < str.length-1
      i = c + 1
      until str[i] =~ /[0-9]/ || i == str.length
        if str[i] == ' ' || i == str.length-1
          c = i
          valid = false
          break
        else
          i += 1
        end
      end
      (str[i], str[c] = str[c], str[i]) if valid == true
    end
    c += 1
  end
  
  return str 
         
end