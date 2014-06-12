def no_repeats(year_start, year_end)
    years_array = []
    (year_start).upto(year_end) {|x| years_array << x if no_repeats?(x)==true}
    years_array
end


def no_repeats?(year)
	# .uniq deletes any repeated digits. If no digits were deleted 
	# 	through .uniq, it should be the same length sans .uniq
    return true if year.to_s.scan(/./).uniq == year.to_s.scan(/./)
    return false
end

no_repeats(1982,2100)