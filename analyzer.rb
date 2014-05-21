stopwords = w%{the a by on for of are with just but and to my I has some in}
line_count = 0
File.open("text.txt").each {|line| line_count += 1}
lines = File.readlines("text.txt")
text = lines.join

#Number of characters, words, sentences, paragraphs, and non-fluff words.
character_count = text.size
character_count_no_spaces = text.gsub(/\s+/,'').length
word_count = text.scan(/\w+/).length
sentence_count = text.scan(/\.|\?|!/).length
paragraph_count = text.scan(/\n\n/).length
good_words = text.scan(/\w+/).select{|w| !text.include?(stopwords)}
good_percentage = ((good_words.to_f /word_count.to_f)*100).to_i

#Summary through sorting by sentence length, splitting into thirds
#   by that length, and taking the middle length words.

sorted_sentences = text.gsub(/\s+/,' ').split.split(/\.|\?|!/).sort_by {|sentence| sentence.length}
one_third = sorted_sentences.length / 3
ideal_sentences = sorted_sentences.slice(one_third,one_third+1)
ideal_sentences = ideal_sentences.select {|sentence| sentence =~ /is|are/}


puts "#{{line_count} lines"
puts "#{character_count} characters"
puts "#{character_count_no_spaces} characters (excluding spaces)"
puts "#{word_count} words"
puts "#{sentence_count} sentences"
puts "#{paragraph_count} paragraphs"
puts "#{setence_count / paragragh_count} sentences per paragraph (average)"
puts "#{word_count / sentence_count} words per sentence (average)"
puts "#{good_percentage}% of words are non-fluff words"
puts "Summary:\n\n" + ideal_sentences.join(". ")
puts "--- End of Analysis ---"