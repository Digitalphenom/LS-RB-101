# this is a more procedural approach to solving this problem..
def palindrome?(str)
  reversed = []
  chars = str.chars
  count = str.size
  loop do
    count -= 1
    reversed << chars[count]
    break if count == 0
  end
  joined = reversed.join("")
  joined == str
  #str == str.reverse
end

p palindrome?("madam")
p palindrome?("Madam")
p palindrome?("madam i'm adam")
p palindrome?('356653')

# a more direct way to solve it is like this:
def palindrome?(str)
  str == str.reverse ? true : false
end
