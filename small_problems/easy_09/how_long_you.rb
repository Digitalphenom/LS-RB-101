def word_lengths(str)
  split_str = str.split
  array = 
  split_str.each_with_object([]) do |word, array|
    array << word + " " + word.size.to_s
  end
  array
end

word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]
word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]
word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]
word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]
word_lengths("") == []


#-----------(LS)------------------------
def word_lengths(string)
  string.split.map { |word| "#{word} #{word.length}" }
end

# 2/23/23
# pass in a string sentence
# return a split array with word count for each word 

# STRATEGY
# take str and split it into an array of words, iterate through words and determine length, insert length next to each word. return array.

# OBJECTIVES
# define arr variable and assign split array.
# iterate through words for each word insert word.length
#   a) use map to iterate through words that way you can return the new array with inserted values
# return array

def word_lengths(str)
  arr = str.split
  arr.map { |word| word + " " + word.size.to_s }
end