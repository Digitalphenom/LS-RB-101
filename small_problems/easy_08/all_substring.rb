require 'pry'


def word_finder(group)
  save = []
  group.each_char do |char|
      save << char.dup
      char.chop!
    end
  save
end

def substrings(str)
  result = []
  sub_s = []
  str.each_char do |_|
    result << str.dup
    str.slice!(0) if str.size > 1
  end
  result.each do |group|

    sub_s << word_finder(group)
  end
   sub_s
end

substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

# def leading_substrings(string)
#   result = []
#   0.upto(string.size - 1) do |index|
#     result << string[0..index]
#   end
#   result
# end
