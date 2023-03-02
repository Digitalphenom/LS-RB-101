def leading_substrings(str)
  accu = []
  size =  str.size
  count = 0

  until count == size
    accu << str.dup
    str.chop!
    count += 1
  end
  accu.reverse
end

def substrings(str)
  result = []
  (0..str.size).each do |start_indx|
    current_sub = str[start_indx..-1]
    result += leading_substrings(current_sub)
  end
   p result
end

# revised solution 3/2/23
def substrings(str)
  result = []
  count = 0

  until count == (str.length)
    result << leading_substrings(str[count..-1])
    count += 1
  end

  result.map { |group|  group }.flatten
end

substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
