# reversing a str with a loop
def palindrome?(str)
  reversed = []
  (str.size-1).downto(0) do |idx|
    reversed << str[idx]
  end
  reversed.join == str
end

p palindrome?("madam")
p palindrome?("Madam")
p palindrome?("madam i'm adam")
p palindrome?('356653')

