
# Take in a string
# split words to an array
# - make sure its each word not each character ie [Oh] not [o,h]
# iterate through each (word) and swap the first and last index (transformation)
# join the string, including original spaces
# return a string with where the first and last letters of each word are reversed

# can this problem be solved with my existing knowledge?
# The most difficult part of this problem is accessing the first and last index of each word during iteration and swaping them.

def swap(word)
  words = word.split
  dup = word.split
  count = 0

  loop do
     words[count][0], words[count][-1] = dup[count][-1], dup[count][0]
     count += 1
     break if count == words.size
  end
  words.join(" ")
end

 swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
 swap('Abcde') == 'ebcdA'
 swap('a') == 'a'
 swap('Sdrick ente')