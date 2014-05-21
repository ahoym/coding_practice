CIPHER = {
"A" => 0,"B" => 1,"C" => 2,"D" => 3,"E" => 4,"F" => 5,"G" => 6,"H" => 7,
"I" => 8,"J" => 9,"K" => 10,"L" => 11,"M" => 12,"N" => 13,"O" => 14,
"P" => 15,"Q" => 16,"R" => 17,"S" => 18,"T" => 19,"U" => 20,"V" => 21,
"W" => 22,"X" => 23,"Y" => 24,"Z" => 25
}

# For reconversion from numbers to letters
RE_CIPHER = CIPHER.invert

# % 26 so the latter alphabet can be converted to A, B, C, etc.
def word_cipher(word,n)
	word.scan(/\w/).map{|letter| RE_CIPHER[(CIPHER[letter] + 26 + n) % 26]}.join("")
end

def caesar_cipher(string, n)
    puts string.upcase.split.map{|word| word_cipher(word, n)}.join(" ")
end

def caesar_cipher(str, shift)
  str.split(//).inject('') { |coded,i| coded += (i == " " ? " " : (shift.times{i = i.next[-1] }; i)) }
end

p caesar_cipher("abc",3)
p caesar_cipher("aaa", 11)
p caesar_cipher("zzz", 1)
p caesar_cipher("catz hatz", 2)
pcaesar_cipher('hello this is a test of the function. wxyz.', 3)


	