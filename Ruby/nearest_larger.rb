def nearest_larger(arr,idx)
    diff = 1
    loop do
        left = idx - diff
        right = idx + diff
        
        if (left >= 0) && (arr[left] > arr[idx])
            return left
        elsif (right <= arr.length) && (arr[right] > arr[idx])
            return right
        elsif (right > arr.length) || (left < 0)
            return nil
        end
    end
    
    diff += 1
end

nearest_larger([4,2,3,8],0)