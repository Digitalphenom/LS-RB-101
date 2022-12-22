
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