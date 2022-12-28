def crunch(str)
prev_char = ""
result = ""
count = 0
loop do
  return result if str.empty?
  if str[count] != prev_char
    result += str[count]
    prev_char = str[count]
  end
  count += 1
  break if count == str.length
end
  result
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

# take in a string

# scan each string character
# if a consecutive character is included more than 1 time, delete it
# else leave alone

# return a string without consercutive duplicate characters

# test
# make a duplicate and use it to test against
# my initial solution was considering solutions that were to complicated.
# the trick to this method is assigning the end value to a new string and testing against the previous character.
# these two can be easily implemented with simple assignment and re-assignment without the need of using an array collection.
