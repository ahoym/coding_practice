def word_unscrambler(word,dict)
    dict.select {|w| w if w.scan(/./).sort == word.scan(/./).sort}
end

word_unscrambler("cat",["tic","toc","tac","toe"])