
def letter_count(str)
    letters = Hash.new(0)
    str.scan(/\w/).each{|w| letters[w] += 1}
    puts letters
end

letter_count("hello this is a test of the function")