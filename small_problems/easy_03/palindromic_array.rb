def palindrome_array?(str)
  reversed = []
  chars = str
  count = str.size
  loop do
    count -= 1
    reversed << chars[count]
    break if count == 0
  end
  reversed == str
end

p palindrome_array?(['madam']) == true
p palindrome_array?(['Madam']) == false          # (case matters)
p palindrome_array?(["madam i'm adam"]) == false # (all characters matter)
p palindrome_array?(['356653']) == true