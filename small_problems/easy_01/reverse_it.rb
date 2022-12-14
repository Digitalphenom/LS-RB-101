require "pry"

# my solution
def reverse_sentence(word)
  word = word.split.reverse
  word.join(" ")
end

#ls
def reverse_sentence(word)
  word.split.reverse.join(" ")
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''