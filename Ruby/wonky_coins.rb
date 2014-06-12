def wonky_coins(n)
    return 1 if n == 0
    
wonky_coins(n/2) + wonky_coins(n/3) + wonky_coins(n/4)    
end

wonky_coins(0)