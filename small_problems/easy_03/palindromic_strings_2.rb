def palindrome?(str)
  reversed = []
  (str.size-1).downto(0) do |idx|
    reversed << str[idx]
  end
  reversed.join == str
end

def real_palindrome?(str)
  str = str.downcase.delete("^a-zA-Z0-9")
  palindrome?(str)
end

p real_palindrome?('madam') 
p real_palindrome?('Madam')          # (case does not matter)
p real_palindrome?("Madam, I'm Adam")  # (only alphanumerics matter)
p real_palindrome?('356653') 
p real_palindrome?('356a653') 
p real_palindrome?('123ab321') 