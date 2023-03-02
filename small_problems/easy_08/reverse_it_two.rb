
# take a string of words
# return a new string with words reversed

def reverse_words(str)
  str.split.map do |word|
    if word.size > 5
      word.reverse 
    else
      word
    end
  end.join(" ")
end

reverse_words("professional Launch School is cool")