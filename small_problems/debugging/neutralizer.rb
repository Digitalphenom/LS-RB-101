# We wrote a neutralize method that removes negative words from sentences. However, it fails to remove all of them. What exactly happens?

#  we are manipulating the array while were iterating through it. This causes the index's to skip. We can fix this by duplicating the array that `words` references


def neutralize(sentence)
  words = sentence.split(' ') 
  temp_arr = words.dup

  temp_arr.each do |word|
    words.delete(word) if negative?(word)
  end

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.