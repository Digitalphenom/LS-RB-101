=begin
Write a method that takes a single String argument and returns a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase.

You may assume that words are any sequence of non-blank characters.

Explicit Requirements
- input: String
- output: String
- convert first character of each word to its uppercase equivalent and the rest of chars should be dowcased
- words are any sequence of non-blank characters meaning whitespaces are skipped

- What if there are non-alphateic type chars? you cant upcase a non alphabetic char so they must be skipped

Data Structures
If we utitlize an array we would need to first convert strings into an array of words => ["four", "score", "and", "seven"] then convert it back to a string

Algorithm
# seperate string by white space chars and convert to an array of substrings
# access each word and convert the first char to its uppercase equivalent
# convert array back into a string

=end

def word_cap(str)
  str.split.map { |word| word.capitalize }.join(" ")
en

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
