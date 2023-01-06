def word(words)
  regex_match = []
  result = []

  words.each { |word| regex_match << /\A[#{word}]*\z/ }

  regex_match.each do |match|
    0.upto(words.size - 1) do |i|
      result << words[i] if words[i].match?(match)
    end
  end
  p result.uniq
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

  word(words)
  # given an array of word matches
  # return a nested ordered array of anagram words
  # anagrams are words that have the exact letters in different order.

  # iterate through words and assign each a regex expression and assign to var => [/demo/]
  # iterate through words and check for regexp match?(matches)
  # count total amount of different words that match
  # create total matched words value in nested array => [[],[],[]]
  # iterate through words if match insert to array.
