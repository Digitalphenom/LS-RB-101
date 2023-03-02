# original answer can be simplified to 
def repeater(str)
  str.chars.map { |char| char * 2}.join
end

def repeater(str)
  repeater = ""
  start_index = 0
  count = 0

  return "" if str.empty?
  loop do
    2.times do |i|
      repeater += str[start_index]
    end
    start_index += 1
    break if start_index == str.size
  end
  repeater
end

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

# take a string 
# return a new string with each character repeated 2 times

# create a new repeater variable
# iterate through string chars, for every char add 2 times to repeater variable.b

#----------(LS)--------------

def repeater(string)
  result = ''
  string.each_char do |char|
    result << char << char
  end
  result
end
