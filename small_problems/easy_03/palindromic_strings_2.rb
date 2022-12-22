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
  joined
  joined == str
end

def real_palindrome?(str)
  str = str.downcase.gsub(/[^a-zA-Z0-9]/, "")
  str
  palindrome?(str)
end

p real_palindrome?('madam') 
p real_palindrome?('Madam')          # (case does not matter)
p real_palindrome?("Madam, I'm Adam")  # (only alphanumerics matter)
p real_palindrome?('356653') 
p real_palindrome?('356a653') 
p real_palindrome?('123ab321') 