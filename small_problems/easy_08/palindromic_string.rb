
# substrings
# 1) iterate through strings from 0 to 4, string size count starts from 1 so you -1
# 2) assign the current iteration to result starting from 0 to index => ["a"], ["ab"], ["abc"]
# 3) increment start position and repeat
# 4) remove empty elements

def substrings(string)
  result = []
  start_position = 0
  loop do
    0.upto(string.size - 1) do |index|
      result << string[start_position..index]
    end
    start_position += 1
    break if start_position > (string.size)    
  end
  result.reject(&:empty?)
end
# refined solution
def palindromes(str)
  result = substrings(str)
  palindromic = []

  result.select { |char| char if char.length > 1 && char.reverse == char}
end

palindromes('abcd')
palindromes('madam')
palindromes('hello-madam-did-madam-goodbye')
palindromes('knitting cassettes')