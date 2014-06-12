# Checks if any elements in the array will sum to zero.

def two_sum(array)
    i = 0
    j = array.length
    sums_to_zero = []
    
    while i < j
        # Extract digit first digit, checks it will sum to 0 with anything.
        test = array.shift
            array.map {|d| sums_to_zero << [test,d] if (test + d == 0)}
        i += 1
    end

    # Check to see if the resulting array has any sums.
    if sums_to_zero.empty? == true
        puts "There are no pairs within the array that sum to zero."
    else
        puts "These pairs within the array can sum to zero:"
        sums_to_zero
    end
end

two_sum([1,2,3,4,4,5])