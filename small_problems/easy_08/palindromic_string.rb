def substrings(string)
  result = []
  start_position = 0
  loop do
    # iterate through strings from 0 to 4
    # string size count starts from 1 so you -1
    0.upto(string.size - 1) do |index|
      # assign the current iteration to result starting from 0 to index
      # ["a"], ["ab"], ["abc"]
      result << string[start_position..index]
    end
    # increment start position and repeat
    start_position += 1
    break if start_position > (string.size)    
  end
  #remove empty elements
  result.reject(&:empty?)
end

def palindromes(str)
  result = substrings(str)
  palindromic = []

  result.each do |char|
    if char.length > 1 && char.reverse == char
      palindromic << char
    end
  end
  palindromic
end

# take a string
# return an array with all substring that are palindromic charactrers
# in the same order as they are encountered.

# iterate through each split char run conditional test on characters that contain 2 or more. test by reversing to find a match



 palindromes('abcd') == []
 palindromes('madam') == ['madam', 'ada']
 palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
 palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]