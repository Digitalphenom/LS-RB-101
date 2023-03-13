# take a string with word numbers
# return the same string with word numbers transformed into theyre string number equivalent => five : 5

# STRATEGY
# create a hash number map with word digit equivalents. iterate through string argument by words, if word matches hash key, replace with value else next. return string

# Objectives
# 1) create hash map
# 2) turn string argument into array of words.
# 3) iterate through array and test for match
# 4) turn array back into string and return final output

def word_to_digit(str)
  number_map = {"one" =>"1",
                "two" => "2",
                "three" => "3",
                "four" => "4",
                "five" => "5",
                "six" => "6",
                "seven" => "7",
                "eight" => "8",
                "nine" => "9",
                "zero" => "0" }
  arr = str.split(/(\.|\s)/)
  p arr
   arr.map do |word|
     number_map.key?(word) ? number_map[word] : word
   end.join("")
end

p  word_to_digit('Please call me at five five five one two three four. Thanks.')# == 'Please call me at 5 5 5 1 2 3 4. Thanks.'