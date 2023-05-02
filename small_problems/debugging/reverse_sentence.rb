
def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words = reversed_words + [words[i]]
    i += 1
  end

  reversed_words.join(' ')
end

# The method raised a typeError because line 8 tried to concatenate a String and Array, which you cant do. The solution is to wrap words[i] in brackets.

p reverse_sentence('how are you doing')
# output: 'doing you are how'

loop

put puts

