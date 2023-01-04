
def leading_substrings(str)
  accu = []
  size =  str.size
  count = 0

  until count == size
    accu << str.dup
    str.chop!
    count += 1
  end
  p accu.reverse
end

# ls solution

def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
